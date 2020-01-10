module Aws
  module Sigv2
    class Credentials

      # @option options [required, String] :access_key_id
      # @option options [required, String] :secret_access_key
      # @option options [String, nil] :session_token (nil)
      def initialize(options = {})
        if options[:access_key_id] && options[:secret_access_key]
          @access_key_id = options[:access_key_id]
          @secret_access_key = options[:secret_access_key]
          @session_token = options[:session_token]
        else
          msg = "expected both :access_key_id and :secret_access_key options"
          raise ArgumentError, msg
        end
      end

      # @return [String]
      attr_reader :access_key_id

      # @return [String]
      attr_reader :secret_access_key

      # @return [String, nil]
      attr_reader :session_token

    end

    # The default credential provider class.
    #
    #     StaticCredentialsProvider.new({
    #       access_key_id: 'akid',
    #       secret_access_key: 'secret',
    #     })
    #
    class StaticCredentialsProvider

      # @option options [Credentials] :credentials
      # @option options [String] :access_key_id
      # @option options [String] :secret_access_key
      # @option options [String] :session_token (nil)
      def initialize(options = {})
        @credentials = options[:credentials] ?
          options[:credentials] :
          Credentials.new(options)
      end

      # @return [Credentials]
      attr_reader :credentials

    end

  end
end
