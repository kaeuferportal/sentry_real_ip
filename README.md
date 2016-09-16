# SentryRealIp

This gem provides a rack middleware that will enable Sentry
to see the real IP of the user causing an error.

You need this gem, if there is a proxy between the application server
and the user.

# Installation & Configuration

Include the gem in your application:

````ruby
gem 'sentry_real_ip', '~> 1.0', codevault: 'kaeuferportal/sentry_real_ip'
````

You will also need to tell your application to use the middleware,
the exact steps differ depending on the framework you are using.

## For Rails applications

In your `config/application.rb` add the following line:

````ruby
config.middleware.use SentryRealIp::Middleware
````

## For other applications (e.g. Sinatra)

In your `config.ru` add the following line before the `run` call:

````ruby
use Raven::Rack # you will usually already have this line
use SentryRealIp::Middleware
````
