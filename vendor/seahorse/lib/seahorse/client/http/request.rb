require 'stringio'

module Seahorse
  module Client
    module Http
      class Request

        # @option options [Endpoint] :endpoint (nil)
        # @option options [String] :http_method ('GET')
        # @option options [Headers] :headers (Headers.new)
        # @option options [Body] :body (StringIO.new)
        def initialize(options = {})
          self.endpoint = options[:endpoint] if options[:endpoint]
          self.http_method = options[:http_method] || 'GET'
          self.headers = Headers.new(options[:headers] || {})
          self.headers['User-Agent'] ||= ua
          self.body = options[:body]
        end

        # @return [Endpoint, nil]
        attr_accessor :endpoint

        # @return [String] The HTTP request method, e.g. `GET`, `PUT`, etc.
        attr_accessor :http_method

        # @return [Headers] The hash of request headers.
        attr_accessor :headers

        # @return [IO]
        attr_reader :body

        def endpoint=(endpoint)
          @endpoint = Endpoint.new(endpoint)
        end

        # @return [String]
        def body_contents
          body.rewind
          contents = body.read
          body.rewind
          contents
        end

        # @param [#read, #size, #rewind] io
        def body=(io)
          @body = case io
            when nil then PlainStringIO.new('')
            when String then PlainStringIO.new(io)
            else io
          end
        end

        private

        # @return [String]
        def ua
          "Seahorse/#{Seahorse::VERSION}"
        end

      end
    end
  end
end
