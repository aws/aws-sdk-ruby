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

require 'net/http'
require 'net/https'
require 'thread'
require 'logger'

module AWS
  module Core
    module Http

      def self.patch_net_http_100_continue!
        if RUBY_VERSION >= '2.0'
          Net::HTTP.send(:include, Expect100Continue20)
        elsif RUBY_VERSION >= '1.9.3'
          Net::HTTP.send(:include, Expect100Continue19)
        else
          msg = "Expect 100-continue not supported in Ruby < 1.9.3"
          raise NotImplementedError, msg
        end
        Net::HTTP.send(:alias_method, :old_transport_request, :transport_request)
        Net::HTTP.send(:alias_method, :transport_request, :new_transport_request)
      end

      # @api private
      module Expect100Continue19
        def new_transport_request(req)
          begin_transport req
          res = catch(:response) {
            req.exec @socket, @curr_http_version, edit_path(req.path)
            begin
              res = Net::HTTPResponse.read_new(@socket)
            end while res.kind_of?(Net::HTTPContinue)
            res
          }
          res.reading_body(@socket, req.response_body_permitted?) {
            yield res if block_given?
          }
          end_transport req, res
          res
        rescue => exception
          D "Conn close because of error #{exception}"
          @socket.close if @socket and not @socket.closed?
          raise exception
        end
      end

      # @api private
      module Expect100Continue20
        def new_transport_request(req)
          count = 0
          begin
            begin_transport req
            res = catch(:response) {
              req.exec @socket, @curr_http_version, edit_path(req.path)
              begin
                res = Net::HTTPResponse.read_new(@socket)
                res.decode_content = req.decode_content
              end while res.kind_of?(Net::HTTPContinue)

              res.uri = req.uri

              res
            }
            res.reading_body(@socket, req.response_body_permitted?) {
              yield res if block_given?
            }
          rescue Net::OpenTimeout
            raise
          rescue Net::ReadTimeout, IOError, EOFError,
                 Errno::ECONNRESET, Errno::ECONNABORTED, Errno::EPIPE,
                 # avoid a dependency on OpenSSL
                 defined?(OpenSSL::SSL) ? OpenSSL::SSL::SSLError : IOError,
                 Timeout::Error => exception
            if count == 0 && IDEMPOTENT_METHODS_.include?(req.method)
              count += 1
              @socket.close if @socket and not @socket.closed?
              D "Conn close because of error #{exception}, and retry"
              retry
            end
            D "Conn close because of error #{exception}"
            @socket.close if @socket and not @socket.closed?
            raise
          end

        end
      end

    end
  end
end
