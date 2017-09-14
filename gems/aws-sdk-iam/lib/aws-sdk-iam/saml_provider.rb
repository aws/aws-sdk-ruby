# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class SamlProvider

    extend Aws::Deprecations

    # @overload def initialize(arn, options = {})
    #   @param [String] arn
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :arn
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @arn = extract_arn(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def arn
      @arn
    end

    # The XML metadata document that includes information about an identity
    # provider.
    # @return [String]
    def saml_metadata_document
      data[:saml_metadata_document]
    end

    # The date and time when the SAML provider was created.
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # The expiration date and time for the SAML provider.
    # @return [Time]
    def valid_until
      data[:valid_until]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {SamlProvider}.
    # Returns `self` making it possible to chain methods.
    #
    #     saml_provider.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_saml_provider(saml_provider_arn: @arn)
      @data = resp.data
      self
    end
    alias :reload :load

    # @return [Types::GetSAMLProviderResponse]
    #   Returns the data for this {SamlProvider}. Calls
    #   {Client#get_saml_provider} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::IAM::Client] #wait_until instead
    #
    # Waiter polls an API operation until a resource enters a desired
    # state.
    #
    # @note The waiting operation is performed on a copy. The original resource remains unchanged
    #
    # ## Basic Usage
    #
    # Waiter will polls until it is successful, it fails by
    # entering a terminal state, or until a maximum number of attempts
    # are made.
    #
    #     # polls in a loop until condition is true
    #     resource.wait_until(options) {|resource| condition}
    #
    # ## Example
    #
    #     instance.wait_until(max_attempts:10, delay:5) {|instance| instance.state.name == 'running' }
    #
    # ## Configuration
    #
    # You can configure the maximum number of polling attempts, and the
    # delay (in seconds) between each polling attempt. The waiting condition is set
    # by passing a block to {#wait_until}:
    #
    #     # poll for ~25 seconds
    #     resource.wait_until(max_attempts:5,delay:5) {|resource|...}
    #
    # ## Callbacks
    #
    # You can be notified before each polling attempt and before each
    # delay. If you throw `:success` or `:failure` from these callbacks,
    # it will terminate the waiter.
    #
    #     started_at = Time.now
    #     # poll for 1 hour, instead of a number of attempts
    #     proc = Proc.new do |attempts, response|
    #       throw :failure if Time.now - started_at > 3600
    #     end
    #
    #       # disable max attempts
    #     instance.wait_until(before_wait:proc, max_attempts:nil) {...}
    #
    # ## Handling Errors
    #
    # When a waiter is successful, it returns the Resource. When a waiter
    # fails, it raises an error.
    #
    #     begin
    #       resource.wait_until(...)
    #     rescue Aws::Waiters::Errors::WaiterFailed
    #       # resource did not enter the desired state in time
    #     end
    #
    #
    # @yield param [Resource] resource to be used in the waiting condition
    #
    # @raise [Aws::Waiters::Errors::FailureStateError] Raised when the waiter terminates
    #   because the waiter has entered a state that it will not transition
    #   out of, preventing success.
    #
    #   yet successful.
    #
    # @raise [Aws::Waiters::Errors::UnexpectedError] Raised when an error is encountered
    #   while polling for a resource that is not expected.
    #
    # @raise [NotImplementedError] Raised when the resource does not
    #
    # @option options [Integer] :max_attempts (10) Maximum number of
    # attempts
    # @option options [Integer] :delay (10) Delay between each
    # attempt in seconds
    # @option options [Proc] :before_attempt (nil) Callback
    # invoked before each attempt
    # @option options [Proc] :before_wait (nil) Callback
    # invoked before each wait
    # @return [Resource] if the waiter was successful
    def wait_until(options = {}, &block)
      self_copy = self.dup
      attempts = 0
      options[:max_attempts] = 10 unless options.key?(:max_attempts)
      options[:delay] ||= 10
      options[:poller] = Proc.new do
        attempts += 1
        if block.call(self_copy)
          [:success, self_copy]
        else
          self_copy.reload unless attempts == options[:max_attempts]
          :retry
        end
      end
      Aws::Waiters::Waiter.new(options).wait({})
    end

    # @!group Actions

    # @example Request syntax with placeholder values
    #
    #   saml_provider.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(saml_provider_arn: @arn)
      resp = @client.delete_saml_provider(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   saml_provider.update({
    #     saml_metadata_document: "SAMLMetadataDocumentType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that supports
    #   SAML 2.0. The document includes the issuer's name, expiration
    #   information, and keys that can be used to validate the SAML
    #   authentication response (assertions) that are received from the IdP.
    #   You must generate the metadata document using the identity management
    #   software that is used as your organization's IdP.
    # @return [Types::UpdateSAMLProviderResponse]
    def update(options = {})
      options = options.merge(saml_provider_arn: @arn)
      resp = @client.update_saml_provider(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      { arn: @arn }
    end
    deprecated(:identifiers)

    private

    def extract_arn(args, options)
      value = args[0] || options.delete(:arn)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :arn"
      else
        msg = "expected :arn to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
