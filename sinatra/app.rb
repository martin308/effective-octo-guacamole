require 'sinatra'
require 'bugsnag'

set :bind, '0.0.0.0'

Bugsnag.configure do |config|
  config.api_key = "APIKEY"
end

use Bugsnag::Rack

get '/' do
  raise "nope"
end
