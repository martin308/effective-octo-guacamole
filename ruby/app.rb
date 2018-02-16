require "bugsnag"

Bugsnag.configure do |config|
  config.api_key = "APIKEY"
end

at_exit do
  if $!
    Bugsnag.notify($!)
  end
end

print "Hello world!\n"

raise "nope"
