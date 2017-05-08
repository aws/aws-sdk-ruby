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
      data.minimum_password_length
    end

    # Specifies whether to require symbols for IAM user passwords.
    # @return [Boolean]
    def require_symbols
      data.require_symbols
    end

    # Specifies whether to require numbers for IAM user passwords.
    # @return [Boolean]
    def require_numbers
      data.require_numbers
    end

    # Specifies whether to require uppercase characters for IAM user
    # passwords.
    # @return [Boolean]
    def require_uppercase_characters
      data.require_uppercase_characters
    end

    # Specifies whether to require lowercase characters for IAM user
    # passwords.
    # @return [Boolean]
    def require_lowercase_characters
      data.require_lowercase_characters
    end

    # Specifies whether IAM users are allowed to change their own password.
    # @return [Boolean]
    def allow_users_to_change_password
      data.allow_users_to_change_password
    end

    # Indicates whether passwords in the account expire. Returns true if
    # MaxPasswordAge is contains a value greater than 0. Returns false if
    # MaxPasswordAge is 0 or not present.
    # @return [Boolean]
    def expire_passwords
      data.expire_passwords
    end

    # The number of days that an IAM user password is valid.
    # @return [Integer]
    def max_password_age
      data.max_password_age
    end

    # Specifies the number of previous passwords that IAM users are
    # prevented from reusing.
    # @return [Integer]
    def password_reuse_prevention
      data.password_reuse_prevention
    end

    # Specifies whether IAM users are prevented from setting a new password
    # after their password has expired.
    # @return [Boolean]
    def hard_expiry
      data.hard_expiry
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
    #   Default value: 6
    # @option options [Boolean] :require_symbols
    #   Specifies whether IAM user passwords must contain at least one of the
    #   following non-alphanumeric characters:
    #
    #   ! @ # $ % ^ &amp;amp; * ( ) \_ + - = \[ \] \\\{ \\} \| '
    #
    #   Default value: false
    # @option options [Boolean] :require_numbers
    #   Specifies whether IAM user passwords must contain at least one numeric
    #   character (0 to 9).
    #
    #   Default value: false
    # @option options [Boolean] :require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character from the ISO basic Latin alphabet (A to Z).
    #
    #   Default value: false
    # @option options [Boolean] :require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character from the ISO basic Latin alphabet (a to z).
    #
    #   Default value: false
    # @option options [Boolean] :allow_users_to_change_password
    #   Allows all IAM users in your account to use the AWS Management Console
    #   to change their own passwords. For more information, see [Letting IAM
    #   Users Change Their Own Passwords][1] in the *IAM User Guide*.
    #
    #   Default value: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
    # @option options [Integer] :max_password_age
    #   The number of days that an IAM user password is valid. The default
    #   value of 0 means IAM user passwords never expire.
    #
    #   Default value: 0
    # @option options [Integer] :password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing. The default value of 0 means IAM users are not
    #   prevented from reusing previous passwords.
    #
    #   Default value: 0
    # @option options [Boolean] :hard_expiry
    #   Prevents IAM users from setting a new password after their password
    #   has expired.
    #
    #   Default value: false
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
