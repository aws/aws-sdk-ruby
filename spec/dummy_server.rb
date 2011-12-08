# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'socket'
require 'net/http'

class DummyServer

  attr_reader :port

  attr_reader :address
  
  def initialize port
    @address = '127.0.0.1'
    @port = port.to_i
    @tcp_server = TCPServer.new(@address, @port)
    @socket_threads = []
    @sockets = []
    @fail_next = false
    reset_requests
  end

  def start
    server = self

     @loop_thread = Thread.new do
       loop do
          @socket_threads << Thread.start(@tcp_server.accept) do |socket|
            @sockets << socket
            loop do

              request = read_request(socket)

              server.requests << request

               if server.should_fail?
                 socket.shutdown
                 server.failed!
                 break
               end

              case request_uri(request)
              when /sleep\/(.+)/ then sleep($1.to_f)
              when /close/       then socket.shutdown
              end

              respond(socket, 'ok') unless socket.closed?

            end
          end  
       end 
     end

    h = Net::HTTP.new(@address, @port)
    h.start
    h.request(Net::HTTP::Get.new('/ping'))
    h.finish

  end

  def fail_next
    @fail_next = true
  end

  def stop
    @tcp_server.close
    @loop_thread.kill
    @socket_threads.each(&:kill)
  end

  def reset_requests
    @requests = []
  end

  def requests
    @requests
  end

  protected
  def should_fail?
    @fail_next == true
  end

  protected
  def failed!
    @fail_next = false
  end

  protected
  def request_uri request
    request.split(/ /)[1]
  end

  protected
  def read_request socket
    clength = 0
    request = ""
    while data = socket.gets
      request << data
      if data.index "Content-Length: "
        clength = data["Content-Length: ".length..data.length].to_i
      end
      break if data == "\r\n"
    end
    request << socket.read(clength) unless clength == 0
    request
  end

  protected
  def respond socket, content
    socket.write "HTTP/1.1 200 OK
Date: #{Time.now}
Content-Type: text/plain
Content-Length: 2

OK"
    socket.flush
  end

  class << self
    def start port, &block
      server = self.new(port)
      server.start
      if block_given?
        begin
          yield(server)
        ensure
          server.stop
        end
      else
        server
      end
    end
  end

end

# DummyServer.start(8000) do |server|
# 
#   h1 = Net::HTTP.new('127.0.0.1', 8000)
#   h1.set_debug_output($stdout)
#   h1.open_timeout = 1
#   h1.read_timeout = 5
#   h1.start
# 
#   h2 = Net::HTTP.new('127.0.0.1', 8000)
#   h2.set_debug_output($stdout)
#   h2.open_timeout = 1
#   h2.read_timeout = 5
#   h2.start
# 
#   h1.request(Net::HTTP::Get.new('/ping'))
#   h2.request(Net::HTTP::Get.new('/ping'))
#   h1.request(Net::HTTP::Get.new('/sleep/0.2'))
#   h2.request(Net::HTTP::Get.new('/sleep/0.2'))
#   h1.request(Net::HTTP::Get.new('/sleep/0.2'))
#   h2.request(Net::HTTP::Get.new('/sleep/0.2'))
# 
#   h1.finish
#   h2.finish
# 
# end
