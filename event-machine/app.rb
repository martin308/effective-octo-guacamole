require 'eventmachine'
require "bugsnag-em"
Bugsnag.configure do |config|
  config.api_key = "d0d195886c30e03d8e5f7c884f62f0b9"
end
EventMachine.run do
  puts "starting EventMachine at #{Time.now}"
  EM.add_timer(2) do
    puts "Hello world"
    puts "stopping EventMachine at #{Time.now}"
    raise "nope"
    EM.stop
  end
end
