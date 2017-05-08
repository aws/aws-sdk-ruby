# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2
  class KeyPairInfo

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

    # If you used CreateKeyPair to create the key pair, this is the SHA-1
    # digest of the DER encoded private key. If you used ImportKeyPair to
    # provide AWS the public key, this is the MD5 public key fingerprint as
    # specified in section 4 of RFC4716.
    # @return [String]
    def key_fingerprint
      data.key_fingerprint
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {KeyPairInfo}.
    # Returns `self` making it possible to chain methods.
    #
    #     key_pair_info.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_key_pairs(key_names: [@name])
      @data = resp.key_pairs[0]
      self
    end
    alias :reload :load

    # @return [Types::KeyPairInfo]
    #   Returns the data for this {KeyPairInfo}. Calls
    #   {Client#describe_key_pairs} if {#data_loaded?} is `false`.
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

    # @example Request syntax with placeholder values
    #
    #   key_pair_info.delete({
    #     dry_run: false,
    #   })
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

    class Collection < Aws::Resources::Collection; end
  end
end
