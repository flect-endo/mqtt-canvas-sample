require 'mqtt'
require 'uri'

MQTT_HOST = "lite.mqtt.shiguredo.jp"
MQTT_USER = ENV['MQTT_USER']
MQTT_PASS = ENV['MQTT_PASS']

client = MQTT::Client.new(MQTT_HOST, username: MQTT_USER, password: MQTT_PASS)

# subscribe
Thread.new do
  sleep 1
  client.connect do |c|
    c.get("#{MQTT_USER}/#") do |topic, message|
      puts "#{topic}: #{message}"
    end
  end
end

# publish
client.connect do |c|
  loop do
    c.publish("#{MQTT_USER}/test", 'Hello, AAA')
    sleep 1
  end
end
