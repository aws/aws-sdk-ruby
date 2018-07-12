# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class AccountPasswordPolicy

    extend Aws::Deprecations

    # @overload def initialize(options = {})
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # Minimum length to require for IAM user passwords.
    # @return [Integer]
    def minimum_password_length
      data[:minimum_password_length]
    end

    # Specifies whether to require symbols for IAM user passwords.
    # @return [Boolean]
    def require_symbols
      data[:require_symbols]
    end

    # Specifies whether to require numbers for IAM user passwords.
    # @return [Boolean]
    def require_numbers
      data[:require_numbers]
    end

    # Specifies whether to require uppercase characters for IAM user
    # passwords.
    # @return [Boolean]
    def require_uppercase_characters
      data[:require_uppercase_characters]
    end

    # Specifies whether to require lowercase characters for IAM user
    # passwords.
    # @return [Boolean]
    def require_lowercase_characters
      data[:require_lowercase_characters]
    end

    # Specifies whether IAM users are allowed to change their own password.
    # @return [Boolean]
    def allow_users_to_change_password
      data[:allow_users_to_change_password]
    end

    # Indicates whether passwords in the account expire. Returns true if
    # `MaxPasswordAge` contains a value greater than 0. Returns false if
    # MaxPasswordAge is 0 or not present.
    # @return [Boolean]
    def expire_passwords
      data[:expire_passwords]
    end

    # The number of days that an IAM user password is valid.
    # @return [Integer]
    def max_password_age
      data[:max_password_age]
    end

    # Specifies the number of previous passwords that IAM users are
    # prevented from reusing.
    # @return [Integer]
    def password_reuse_prevention
      data[:password_reuse_prevention]
    end

    # Specifies whether IAM users are prevented from setting a new password
    # after their password has expired.
    # @return [Boolean]
    def hard_expiry
      data[:hard_expiry]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {AccountPasswordPolicy}.
    # Returns `self` making it possible to chain methods.
    #
    #     account_password_policy.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_account_password_policy
      @data = resp.password_policy
      self
    end
    alias :reload :load

    # @return [Types::PasswordPolicy]
    #   Returns the data for this {AccountPasswordPolicy}. Calls
    #   {Client#get_account_password_policy} if {#data_loaded?} is `false`.
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
    #   account_password_policy.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      resp = @client.delete_account_password_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   account_password_policy.update({
    #     minimum_password_length: 1,
    #     require_symbols: false,
    #     require_numbers: false,
    #     require_uppercase_characters: false,
    #     require_lowercase_characters: false,
    #     allow_users_to_change_password: false,
    #     max_password_age: 1,
    #     password_reuse_prevention: 1,
    #     hard_expiry: false,
    #   })
    # @param [Hash] options ({})
    # @option options [Integer] :minimum_password_length
    #   The minimum number of characters allowed in an IAM user password.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `6`.
    # @option options [Boolean] :require_symbols
    #   Specifies whether IAM user passwords must contain at least one of the
    #   following non-alphanumeric characters:
    #
    #   ! @ # $ % ^ &amp; * ( ) \_ + - = \[ \] \\\{ \\} \| '
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do not
    #   require at least one symbol character.
    # @option options [Boolean] :require_numbers
    #   Specifies whether IAM user passwords must contain at least one numeric
    #   character (0 to 9).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do not
    #   require at least one numeric character.
    # @option options [Boolean] :require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character from the ISO basic Latin alphabet (A to Z).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do not
    #   require at least one uppercase character.
    # @option options [Boolean] :require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character from the ISO basic Latin alphabet (a to z).
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that passwords do not
    #   require at least one lowercase character.
    # @option options [Boolean] :allow_users_to_change_password
    #   Allows all IAM users in your account to use the AWS Management Console
    #   to change their own passwords. For more information, see [Letting IAM
    #   Users Change Their Own Passwords][1] in the *IAM User Guide*.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that IAM users in the
    #   account do not automatically have permissions to change their own
    #   password.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
    # @option options [Integer] :max_password_age
    #   The number of days that an IAM user password is valid.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `0`. The result is that IAM user passwords
    #   never expire.
    # @option options [Integer] :password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `0`. The result is that IAM users are not
    #   prevented from reusing previous passwords.
    # @option options [Boolean] :hard_expiry
    #   Prevents IAM users from setting a new password after their password
    #   has expired. The IAM user cannot be accessed until an administrator
    #   resets the password.
    #
    #   If you do not specify a value for this parameter, then the operation
    #   uses the default value of `false`. The result is that IAM users can
    #   change their passwords after they expire and continue to sign in as
    #   the user.
    # @return [EmptyStructure]
    def update(options = {})
      resp = @client.update_account_password_policy(options)
      resp.data
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
