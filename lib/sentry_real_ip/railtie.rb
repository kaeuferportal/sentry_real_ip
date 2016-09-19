module SentryRealIp
  class Railtie < Rails::Railtie
    initializer 'sentry_real_ip.use_middleware' do |app|
      app.middleware.use SentryRealIp::Middleware
    end
  end
end
