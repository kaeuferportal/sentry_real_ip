require 'json'

module SentryRealIp
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      real_ip = determine_real_ip
      if real_ip
        user_context = { ip_address: real_ip }.merge(Raven.context.user)
        Raven.user_context(user_context)
      end
      @app.call(env)
    end

    private

    def determine_real_ip
      real_ip = env['HTTP_X_FORWARDED_FOR'] || env['HTTP_X_REAL_IP']
      real_ip.split(',').first.strip if real_ip && !real_ip.empty?
    end
  end
end
