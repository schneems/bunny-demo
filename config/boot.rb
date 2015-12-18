require "bunny"

$bunny_connection = Bunny.new(ENV['AMQP_URL'] || 'amqp://127.0.0.1:5672', automatically_recover: false )
$bunny_connection.start

$bunny_channel   = $bunny_connection.create_channel
$bunny_queue     = $bunny_channel.queue("bunny.examples.hello_world", :auto_delete => true)
$bunny_exchange  = $bunny_channel.default_exchange
