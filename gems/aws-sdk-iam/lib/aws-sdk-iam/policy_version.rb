# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class PolicyVersion

    extend Aws::Deprecations

    # @overload def initialize(arn, version_id, options = {})
    #   @param [String] arn
    #   @param [String] version_id
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :arn
    #   @option options [required, String] :version_id
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @arn = extract_arn(args, options)
      @version_id = extract_version_id(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def arn
      @arn
    end

    # @return [String]
    def version_id
      @version_id
    end

    # The policy document.
    #
    # The policy document is returned in the response to the
    # GetPolicyVersion and GetAccountAuthorizationDetails operations. It is
    # not returned in the response to the CreatePolicyVersion or
    # ListPolicyVersions operations.
    #
    # The policy document returned in this structure is URL-encoded
    # compliant with [RFC 3986][1]. You can use a URL decoding method to
    # convert the policy back to plain JSON text. For example, if you use
    # Java, you can use the `decode` method of the `java.net.URLDecoder`
    # utility class in the Java SDK. Other languages and SDKs provide
    # similar functionality.
    #
    #
    #
    # [1]: https://tools.ietf.org/html/rfc3986
    # @return [String]
    def document
      data[:document]
    end

    # Specifies whether the policy version is set as the policy's default
    # version.
    # @return [Boolean]
    def is_default_version
      data[:is_default_version]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the policy
    # version was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {PolicyVersion}.
    # Returns `self` making it possible to chain methods.
    #
    #     policy_version.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_policy_version(
        policy_arn: @arn,
        version_id: @version_id
      )
      @data = resp.policy_version
      self
    end
    alias :reload :load

    # @return [Types::PolicyVersion]
    #   Returns the data for this {PolicyVersion}. Calls
    #   {Client#get_policy_version} if {#data_loaded?} is `false`.
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
    #   policy_version.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(
        policy_arn: @arn,
        version_id: @version_id
      )
      resp = @client.delete_policy_version(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy_version.set_as_default()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def set_as_default(options = {})
      options = options.merge(
        policy_arn: @arn,
        version_id: @version_id
      )
      resp = @client.set_default_policy_version(options)
      resp.data
    end

    # @deprecated
    # @api private
    def identifiers
      {
        arn: @arn,
        version_id: @version_id
      }
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

    def extract_version_id(args, options)
      value = args[1] || options.delete(:version_id)
      case value
      when String then value
      when nil then raise ArgumentError, "missing required option :version_id"
      else
        msg = "expected :version_id to be a String, got #{value.class}"
        raise ArgumentError, msg
      end
    end

    class Collection < Aws::Resources::Collection; end
  end
end
