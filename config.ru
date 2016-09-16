require './lib/sentry_real_ip'

use Rack::Lint
use SentryRealIp::Middleware
use Rack::Lint
run ->(_env) { [200, { 'Content-Type' => 'text/plain' }, ['Test App!']] }
