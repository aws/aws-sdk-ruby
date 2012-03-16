# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'thread'

module AWS
  module Core
    module Http
  
      # @private
      class CurbHandler

        def initialize
          @q = []
          @sem = Mutex.new
          @multi = Curl::Multi.new

          start_processor
        end

        def handle request, response
          raise "unsupport http reqest method: #{request.http_method}" unless
            ['GET', 'HEAD', 'PUT', 'POST', 'DELETE'].include? request.http_method
          @sem.synchronize do
            @q << [request, response, Thread.current]
            begin
             @processor.wakeup
            rescue ThreadError
              start_processor
            end
          end
          Thread.stop
          nil
        end

        # fills the Curl::Multi handle with the given array of queue
        # items, calling make_easy_handle on each one first
        private
        def fill_multi(items)
          items.each do |item|
            c = make_easy_handle(*item)
            @multi.add(c)
          end
        end

        # starts a background thread that waits for new items and
        # sends them through the Curl::Multi handle
        private
        def start_processor
          @processor = Thread.new do
            loop do
              items = nil
              @sem.synchronize do
                items = @q.slice!(0..-1)
              end
              unless items.empty?
                fill_multi(items)
                @multi.perform do
                  # curl is idle, so process more items if we can get them
                  # without blocking
                  if !@q.empty? && @sem.try_lock
                    begin
                      fill_multi(@q.slice!(0..-1))
                    ensure
                      @sem.unlock
                    end
                  end
                end
              end

              # wait for a new item to show up before continuing
              Thread.stop if @q.empty?
            end
          end
        end

        private
        def make_easy_handle request, response, thread = nil
  
          protocol = request.use_ssl? ? 'https' : 'http'
          url = "#{protocol}://#{request.host}:#{request.port}#{request.uri}"
  
          curl = Curl::Easy.new(url)
          # curl.verbose = true
          request.headers.each {|k, v| curl.headers[k] = v}

          if proxy = request.proxy_uri
            curl.proxy_url = proxy.to_s
            curl.proxy_port = proxy.port
          end

          curl.on_header {|header_data|
            if header_data =~ /:\s+/
              name, value = header_data.strip.split(/:\s+/, 2)
              response.headers[name] = value
            end
            header_data.length
          }

          case request.http_method
          when 'GET'
            # ....
          when 'HEAD'
            curl.head = true
          when 'PUT'
            curl.put_data = request.body || ''
          when 'POST'
            curl.headers['Content-Type'] = curl.headers['Content-Type'] || ''
            curl.post_body = request.body || ''
          when 'DELETE'
            curl.delete = true
          end

          curl.on_complete do
            response.body = curl.body_str
            response.status = curl.response_code
            thread.run if thread
          end

          curl
        end

      end
    end
  end
end
