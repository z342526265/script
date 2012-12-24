require 'socket'               # Get sockets from stdlib

server = TCPServer.open(2000)  # Socket to listen on port 2000
loop {
  Thread.start(server.accept) do |client|
    client.puts(Time.now.ctime) # Send the time to the client
    client.puts "Closing the connection. Bye!"
    client.close                # Disconnect from the client
  end
}