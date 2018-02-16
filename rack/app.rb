require 'rack'
require 'bugsnag'

Bugsnag.configure do |config|
  config.api_key = "d0d195886c30e03d8e5f7c884f62f0b9"
end

app = Rack::Builder.app do
  use Bugsnag::Rack
  run lambda { |env| raise "nope" }
end

Rack::Handler::WEBrick.run app
