lib_directory = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift(lib_directory) unless $LOAD_PATH.include?(lib_directory)

require 'sentry_real_ip/middleware'
require 'sentry_real_ip/version'
