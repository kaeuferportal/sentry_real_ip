# coding: utf-8
require './lib/sentry_real_ip/version'

Gem::Specification.new do |s|
  s.name        = 'sentry_real_ip'
  s.version     = SentryRealIp::VERSION
  s.email       = 'oss@kaeuferportal.de'
  s.summary     = 'Middleware to tell Sentry the real IP of our HTTP clients.'
  s.description = s.summary
  s.homepage    = 'https://github.com/kaeuferportal/sentry_real_ip'
  s.authors     = ['Beko Käuferportal GmbH']
  s.license     = 'MIT'
  s.files       = `git ls-files -z`.split("\x0")
                                   .reject do |f|
                                     f.match(%r{^(test|spec|features)/})
                                   end

  s.require_paths = ['lib']

  s.add_dependency 'sentry-raven', ['>= 1.2.0', '< 3']

  s.add_development_dependency 'rack', '~> 1.0'
  s.add_development_dependency 'rubocop', '~> 0.42'
end
