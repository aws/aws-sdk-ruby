# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class CurrentUser

    extend Aws::Deprecations

    # @overload def initialize(options = {})
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # The path to the user. For more information about paths, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def path
      data[:path]
    end

    # The friendly name identifying the user.
    # @return [String]
    def user_name
      data[:user_name]
    end

    # The stable and unique string identifying the user. For more
    # information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    # guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def user_id
      data[:user_id]
    end

    # The Amazon Resource Name (ARN) that identifies the user. For more
    # information about ARNs and how to use ARNs in policies, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def arn
      data[:arn]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the user
    # was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the user's
    # password was last used to sign in to an AWS website. For a list of AWS
    # websites that capture a user's last sign-in time, see the [Credential
    # Reports][2] topic in the *Using IAM* guide. If a password is used more
    # than once in a five-minute span, only the first use is returned in
    # this field. If the field is null (no value) then it indicates that
    # they never signed in with a password. This can be because:
    #
    # * The user never had a password.
    #
    # * A password exists but has not been used since IAM started tracking
    #   this information on October 20th, 2014.
    #
    # A null does not mean that the user *never* had a password. Also, if
    # the user does not currently have a password, but had one in the past,
    # then this field contains the date and time the most recent password
    # was used.
    #
    # This value is returned only in the GetUser and ListUsers operations.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    # @return [Time]
    def password_last_used
      data[:password_last_used]
    end

    # The ARN of the policy used to set the permissions boundary for the
    # user.
    #
    # For more information about permissions boundaries, see [Permissions
    # Boundaries for IAM Identities ][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    # @return [Types::AttachedPermissionsBoundary]
    def permissions_boundary
      data[:permissions_boundary]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {CurrentUser}.
    # Returns `self` making it possible to chain methods.
    #
    #     current_user.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_user
      @data = resp.user
      self
    end
    alias :reload :load

    # @return [Types::User]
    #   Returns the data for this {CurrentUser}. Calls
    #   {Client#get_user} if {#data_loaded?} is `false`.
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

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   access_keys = current_user.access_keys({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the user.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [AccessKey::Collection]
    def access_keys(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_access_keys(options)
        resp.each_page do |page|
          batch = []
          page.data.access_key_metadata.each do |a|
            batch << AccessKey.new(
              user_name: a.user_name,
              id: a.access_key_id,
              data: a,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      AccessKey::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   mfa_devices = current_user.mfa_devices({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the user whose MFA devices you want to list.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [MfaDevice::Collection]
    def mfa_devices(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_mfa_devices(options)
        resp.each_page do |page|
          batch = []
          page.data.mfa_devices.each do |m|
            batch << MfaDevice.new(
              user_name: m.user_name,
              serial_number: m.serial_number,
              data: m,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      MfaDevice::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   signing_certificates = current_user.signing_certificates({
    #     user_name: "existingUserNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :user_name
    #   The name of the IAM user whose signing certificates you want to
    #   examine.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @return [SigningCertificate::Collection]
    def signing_certificates(options = {})
      batches = Enumerator.new do |y|
        resp = @client.list_signing_certificates(options)
        resp.each_page do |page|
          batch = []
          page.data.certificates.each do |c|
            batch << SigningCertificate.new(
              user_name: c.user_name,
              id: c.certificate_id,
              data: c,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      SigningCertificate::Collection.new(batches)
    end

    # @return [User, nil]
    def user
      if data[:user_name]
        User.new(
          name: data[:user_name],
          client: @client
        )
      else
        nil
      end
    end

    # @deprecated
    # @api private
    def identifiers
      {}
    end
    deprecated(:identifiers)

    class Collection < Aws::Resources::Collection; end
  end
end
