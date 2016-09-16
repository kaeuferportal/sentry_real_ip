require 'json'

module SentryRealIp
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      real_ip = env['HTTP_X_FORWARDED_FOR'] || env['HTTP_X_REAL_IP']
      if real_ip && !real_ip.empty?
        real_ip = real_ip.split(',').first.strip
        user_context = { ip_address: real_ip }.merge(Raven.context.user)
        Raven.user_context(user_context)
      end
      @app.call(env)
    end
  end
end
