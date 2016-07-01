# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module EC2
    class KeyPair

      extend Aws::Deprecations

      # @overload def initialize(name, options = {})
      #   @param [String] name
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :name
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @name = extract_name(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def name
        @name
      end
      alias :key_name :name

      # The SHA-1 digest of the DER encoded private key.
      # @return [String]
      def key_fingerprint
        data.key_fingerprint
      end

      # An unencrypted PEM encoded RSA private key.
      # @return [String]
      def key_material
        data.key_material
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # @raise [Errors::ResourceNotLoadable]
      # @api private
      def load
        msg = "#load is not implemented, data only available via enumeration"
        raise Errors::ResourceNotLoadable, msg
      end
      alias :reload :load

      # @raise [Errors::ResourceNotLoadableError] Raises when {#data_loaded?} is `false`.
      # @return [Types::KeyPair]
      #   Returns the data for this {KeyPair}.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [Boolean] :dry_run
      #   Checks whether you have the required permissions for the action,
      #   without actually making the request, and provides an error response.
      #   If you have the required permissions, the error response is
      #   `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(key_name: @name)
        resp = @client.delete_key_pair(options)
        resp.data
      end

      # @deprecated
      # @api private
      def identifiers
        { name: @name }
      end
      deprecated(:identifiers)

      private

      def extract_name(args, options)
        value = args[0] || options.delete(:name)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :name"
        else
          msg = "expected :name to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<KeyPair>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
