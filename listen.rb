require './config/boot'

$bunny_queue.subscribe(block: false) do |delivery_info, metadata, payload|
  puts "Received #{payload}"
end

$running = true

at_exit do
  $running = false
  $bunny_connection.close
end

while $running
  sleep 1
end