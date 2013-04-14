# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'json'
require 'time'

# This class provides a mock server that immitates the metada server
# on ec2 instances.  It is used to test consuming aws credentials
# from an iam instance profile.
class MockEC2MetadataServer

  def initialize options = {}
    @ip_address = options[:ip_address] || '127.0.0.1'
    @port = options[:port] || 8765
    @request_count = 0
    @tcp_server = TCPServer.new(ip_address, port)
    @threads = []
  end

  # @return [Array<Thread>]
  attr_reader :threads

  # @return [String]
  attr_reader :ip_address

  # @return [Integer]
  attr_reader :port

  # @private
  attr_accessor :request_count

  def start

    @threads << Thread.new do
      loop do
        @threads << Thread.start(@tcp_server.accept) do |socket|
          loop do

            uri = read_request(socket).split(/ /)[1]

            path = '/latest/meta-data/iam/security-credentials/'

            if uri == path

              respond(socket, "profile-name\n")

            elsif uri == "#{path}profile-name"

              @request_count += 1
              n = @request_count

              akid = "akid-#{n}"
              secret = "secret-#{n}"
              token = "token-#{n}"

              now = Time.now

              response = {}
              response['Code'] = 'Success'
              response['LastUpdated'] = (now - 1800).iso8601
              response['Type'] = 'AWS-HMAC'
              response['AccessKeyId'] = akid
              response['SecretAccessKey'] = secret
              response['Token'] = token
              response['Expiration'] = (now + 1800).iso8601

              respond(socket, JSON.pretty_generate(response))

            else

              respond_404(socket)

            end
          end
        end
      end
    end

  end

  def stop
    @tcp_server.close
    @threads.each(&:kill)
  end

  protected

  def respond_404 socket
    xml = '<?xml version="1.0" encoding="iso-8859-1"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
         "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
 <head>
  <title>404 - Not Found</title>
 </head>
 <body>
  <h1>404 - Not Found</h1>
 </body>
</html>'
    respond(socket, xml, :code => 404, :status => 'Not Found')
  end

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

  def respond socket, content, options = {}
    code = options[:code] || '200'
    status = options[:status] || 'OK'
    socket.write "HTTP/1.1 #{code} #{status}
Date: #{Time.now}
Content-Type: text/plain
Content-Length: #{content.size}

#{content}"
    socket.flush
  end

end
