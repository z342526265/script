# encoding: utf-8
require 'socket'
#require "pp"

host = 'www.baidu.com'     # The web server
port = 80                           # Default HTTP port
path = "/"                 # The file we want

# This is the HTTP request we send to fetch a file
request = "GET #{path} HTTP/1.0\r\n\r\n"

socket = TCPSocket.open(host,port)  # Connect to server
socket.print(request)               # Send request
response = socket.read              # Read complete response
# Split response at first blank line into headers and body
headers,body = response.split("\r\n\r\n", 2)
#p body
p body.encoding
#pp body.encode()

p body.force_encoding('gb2312').encode("utf-8")
#p body
p body
#p headers
#p body.encoding
