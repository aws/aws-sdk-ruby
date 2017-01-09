# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class Certificate

    extend Aws::Deprecations

    # @overload def initialize(id, options = {})
    #   @param [String] id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @id = extract_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def id
      @id
    end
    alias :certificate_identifier :id

    # The type of the certificate.
    # @return [String]
    def certificate_type
      data.certificate_type
    end

    # The thumbprint of the certificate.
    # @return [String]
    def thumbprint
      data.thumbprint
    end

    # The starting date from which the certificate is valid.
    # @return [Time]
    def valid_from
      data.valid_from
    end

    # The final date that the certificate continues to be valid.
    # @return [Time]
    def valid_till
      data.valid_till
    end

    # The Amazon Resource Name (ARN) for the certificate.
    # @return [String]
    def certificate_arn
      data.certificate_arn
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Certificate}.
    # Returns `self` making it possible to chain methods.
    #
    #     certificate.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_certificates(certificate_identifier: @id)
      @data = resp.certificates[0]
      self
    end
    alias :reload :load

    # @return [Types::Certificate]
    #   Returns the data for this {Certificate}. Calls
    #   {Client#describe_certificates} if {#data_loaded?} is `false`.
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

    # @deprecated
    # @api private
    def identifiers
      { id: @id }
    end
    deprecated(:identifiers)

    private

    def extract_id(args, options)
      value = args[0] || options.delete(:id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :id"
      else
        msg = "expected :id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
