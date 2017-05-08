# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class ServerCertificate

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

    # The meta information of the server certificate, such as its name,
    # path, ID, and ARN.
    # @return [Types::ServerCertificateMetadata]
    def server_certificate_metadata
      data.server_certificate_metadata
    end

    # The contents of the public key certificate.
    # @return [String]
    def certificate_body
      data.certificate_body
    end

    # The contents of the public key certificate chain.
    # @return [String]
    def certificate_chain
      data.certificate_chain
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {ServerCertificate}.
    # Returns `self` making it possible to chain methods.
    #
    #     server_certificate.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_server_certificate(server_certificate_name: @name)
      @data = resp.server_certificate
      self
    end
    alias :reload :load

    # @return [Types::ServerCertificate]
    #   Returns the data for this {ServerCertificate}. Calls
    #   {Client#get_server_certificate} if {#data_loaded?} is `false`.
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
    #   server_certificate.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(server_certificate_name: @name)
      resp = @client.delete_server_certificate(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   servercertificate = server_certificate.update({
    #     new_path: "pathType",
    #     new_server_certificate_name: "serverCertificateNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :new_path
    #   The new path for the server certificate. Include this only if you are
    #   updating the server certificate's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character (\\u007F),
    #   including most punctuation characters, digits, and upper and
    #   lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [String] :new_server_certificate_name
    #   The new name for the server certificate. Include this only if you are
    #   updating the server certificate's name. The name of the certificate
    #   cannot contain any spaces.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [ServerCertificate]
    def update(options = {})
      options = options.merge(server_certificate_name: @name)
      resp = @client.update_server_certificate(options)
      ServerCertificate.new(
        name: options[:new_server_certificate_name],
        client: @client
      )
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
