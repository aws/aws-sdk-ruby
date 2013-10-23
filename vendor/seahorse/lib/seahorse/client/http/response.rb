module Seahorse
  module Client
    module Http
      class Response

        # @option options [Integer] :status_code (0)
        # @option options [Headers] :headers (Headers.new)
        # @option options [IO] :body (StringIO.new)
        def initialize(options = {})
          @status_code = options[:status_code] || 0
          @headers = options[:headers] || Headers.new
          @body = options[:body] || PlainStringIO.new
        end

        # @return [Integer] Returns `0` if the request failed to generate
        #   any response.
        attr_accessor :status_code

        # @return [Headers]
        attr_accessor :headers

        # @return [IO]
        attr_accessor :body

        # @param [#read, #size, #rewind] io
        def body=(io)
          @body = case io
            when nil then PlainStringIO.new('')
            when String then PlainStringIO.new(io)
            else io
          end
        end

        # @return [String]
        def body_contents
          body.rewind
          contents = body.read
          body.rewind
          contents
        end

      end
    end
  end
end
