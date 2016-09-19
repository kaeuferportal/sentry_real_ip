[![Gem Version](https://badge.fury.io/rb/sentry_real_ip.svg)](https://badge.fury.io/rb/sentry_real_ip)
[![Code Climate](https://codeclimate.com/github/kaeuferportal/sentry_real_ip/badges/gpa.svg)](https://codeclimate.com/github/kaeuferportal/sentry_real_ip)

# SentryRealIp

This gem provides a rack middleware that will enable Sentry
to see the real IP of the user causing an error.

You need this gem, if there is a proxy between the application server
and the user.

# Installation & Configuration

Include the gem in your application:

````ruby
gem 'sentry_real_ip', '~> 1.1', codevault: 'kaeuferportal/sentry_real_ip'
````

Depending on your framework, you may also need to tell your application
to use the middleware of this gem. For Rails applications, it just works,
and you are done by adding it to the Gemfile. 

For other frameworks (e.g. Sinatra) you need to explicitly use the
middleware, e.g. in your `config.ru`, you can put this before the
call to `run`:

````ruby
use Raven::Rack # you will usually already have this line
use SentryRealIp::Middleware
````
