module Seahorse
  module Client
    class NetworkingError < StandardError

      def initialize(error, msg = nil)
        super(msg || error.message)
        set_backtrace(error.backtrace)
        @original_error = error
      end

      attr_reader :original_error

    end

    # Raised when sending initial headers and data failed
    # for event stream requests over Http2
    class Http2InitialRequestError < StandardError

      def initialize(error)
        @original_error = error
      end

      # @return [HTTP2::Error]
      attr_reader :original_error

    end

    # Raised when connection failed to initialize a new stream
    class Http2StreamInitializeError < StandardError

      def initialize(error)
        @original_error = error
      end

      # @return [HTTP2::Error]
      attr_reader :original_error

    end

    # Rasied when ALPN is unavailable for HTTP2
    class Http2NotSupportedError < StandardError; end
  end
end
