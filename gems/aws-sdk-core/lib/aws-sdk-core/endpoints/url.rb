module Aws
  module Endpoints
    # @api private
    class URL
      def initialize(url)
        uri = URI(url)
        @scheme = uri.scheme
        @authority = if uri.default_port == uri.port
                       uri.host
                     else
                       "#{uri.host}:#{uri.port}"
                     end
        @path = uri.path
        @normalized_path = uri.normalize.path
        @is_ip = false # TODO: how?
      end

      attr_reader :scheme
      attr_reader :authority
      attr_reader :path
      attr_reader :normalized_path
      attr_reader :is_ip
    end
  end
end
