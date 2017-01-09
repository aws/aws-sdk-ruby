# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class AccessKeyPair

    extend Aws::Deprecations

    # @overload def initialize(user_name, id, secret, options = {})
    #   @param [String] user_name
    #   @param [String] id
    #   @param [String] secret
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :user_name
    #   @option options [required, String] :id
    #   @option options [required, String] :secret
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @user_name = extract_user_name(args, options)
      @id = extract_id(args, options)
      @secret = extract_secret(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def user_name
      @user_name
    end

    # @return [String]
    def id
      @id
    end
    alias :access_key_id :id

    # @return [String]
    def secret
      @secret
    end
    alias :secret_access_key :secret

    # The status of the access key. `Active` means the key is valid for API
    # calls, while `Inactive` means it is not.
    # @return [String]
    def status
      data.status
    end

    # The date when the access key was created.
    # @return [Time]
    def create_date
      data.create_date
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # @raise [NotImplementedError]
    # @api private
    def load
      msg = "#load is not implemented, data only available via enumeration"
      raise NotImplementedError, msg
    end
    alias :reload :load

    # @raise [NotImplementedError] Raises when {#data_loaded?} is `false`.
    # @return [Types::AccessKey]
    #   Returns the data for this {AccessKeyPair}.
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
    #   access_key_pair.activate()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def activate(options = {})
      options = options.merge(
        user_name: @user_name,
        access_key_id: @id,
        status: "Active"
      )
      resp = @client.update_access_key(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   access_key_pair.deactivate()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def deactivate(options = {})
      options = options.merge(
        user_name: @user_name,
        access_key_id: @id,
        status: "Inactive"
      )
      resp = @client.update_access_key(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   access_key_pair.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        user_name: @user_name,
        access_key_id: @id
      )
      resp = @client.delete_access_key(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        user_name: @user_name,
        id: @id,
        secret: @secret
      }
    end
    deprecated(:identifiers)

    private

    def extract_user_name(args, options)
      value = args[0] || options.delete(:user_name)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :user_name"
      else
        msg = "expected :user_name to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_id(args, options)
      value = args[1] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    def extract_secret(args, options)
      value = args[2] || options.delete(:secret)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :secret"
      else
        msg = "expected :secret to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
