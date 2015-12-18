require './config/boot'

$bunny_exchange.publish("Hello!", :routing_key => $bunny_queue.name)
