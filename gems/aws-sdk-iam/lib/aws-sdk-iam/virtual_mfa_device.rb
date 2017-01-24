# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class VirtualMfaDevice

    extend Aws::Deprecations

    # @overload def initialize(serial_number, options = {})
    #   @param [String] serial_number
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :serial_number
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @serial_number = extract_serial_number(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def serial_number
      @serial_number
    end

    # The Base32 seed defined as specified in [RFC3548][1]. The
    # `Base32StringSeed` is Base64-encoded.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3548.txt
    # @return [String]
    def base_32_string_seed
      data.base_32_string_seed
    end

    # A QR code PNG image that encodes
    # `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String`
    # where `$virtualMFADeviceName` is one of the create call arguments,
    # `AccountName` is the user name if set (otherwise, the account ID
    # otherwise), and `Base32String` is the seed in Base32 format. The
    # `Base32String` value is Base64-encoded.
    # @return [String]
    def qr_code_png
      data.qr_code_png
    end

    # The date and time on which the virtual MFA device was enabled.
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
    # @return [Types::VirtualMFADevice]
    #   Returns the data for this {VirtualMfaDevice}.
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
    #   virtual_mfa_device.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(serial_number: @serial_number)
      resp = @client.delete_virtual_mfa_device(options)
      resp.data
    end

    # @!group Associations

    # @return [User, nil]
    def user
      if data.user.user_name
        User.new(
          name: data.user.user_name,
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      { serial_number: @serial_number }
    end
    deprecated(:identifiers)

    private

    def extract_serial_number(args, options)
      value = args[0] || options.delete(:serial_number)
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
