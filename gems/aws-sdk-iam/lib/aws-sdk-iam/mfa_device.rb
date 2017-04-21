# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class MfaDevice

    extend Aws::Deprecations

    # @overload def initialize(user_name, serial_number, options = {})
    #   @param [String] user_name
    #   @param [String] serial_number
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :user_name
    #   @option options [required, String] :serial_number
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @user_name = extract_user_name(args, options)
      @serial_number = extract_serial_number(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def user_name
      @user_name
    end

    # @return [String]
    def serial_number
      @serial_number
    end

    # The date when the MFA device was enabled for the user.
    # @return [Time]
    def enable_date
      data.enable_date
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
    # @return [Types::MFADevice]
    #   Returns the data for this {MfaDevice}.
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
    #   mfa_device.associate({
    #     authentication_code_1: "authenticationCodeType", # required
    #     authentication_code_2: "authenticationCodeType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit the
    #   request, the MFA device successfully associates with the user but the
    #   MFA device becomes out of sync. This happens because time-based
    #   one-time passwords (TOTP) expire after a short period of time. If this
    #   happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    # @option options [required, String] :authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit the
    #   request, the MFA device successfully associates with the user but the
    #   MFA device becomes out of sync. This happens because time-based
    #   one-time passwords (TOTP) expire after a short period of time. If this
    #   happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    # @return [EmptyStructure]
    def associate(options = {})
      options = options.merge(
        user_name: @user_name,
        serial_number: @serial_number
      )
      resp = @client.enable_mfa_device(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   mfa_device.disassociate()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def disassociate(options = {})
      options = options.merge(
        user_name: @user_name,
        serial_number: @serial_number
      )
      resp = @client.deactivate_mfa_device(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   mfa_device.resync({
    #     authentication_code_1: "authenticationCodeType", # required
    #     authentication_code_2: "authenticationCodeType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    # @option options [required, String] :authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    # @return [EmptyStructure]
    def resync(options = {})
      options = options.merge(
        user_name: @user_name,
        serial_number: @serial_number
      )
      resp = @client.resync_mfa_device(options)
      resp.data
    end

    # @!group Associations

    # @return [User]
    def user
      User.new(
        name: @user_name,
        client: @client
      )
    end

    # @deprecated
    # @api private
    def identifiers
      {
        user_name: @user_name,
        serial_number: @serial_number
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

    def extract_serial_number(args, options)
      value = args[1] || options.delete(:serial_number)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :serial_number"
      else
        msg = "expected :serial_number to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
