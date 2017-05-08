# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class LoginProfile

    extend Aws::Deprecations

    # @overload def initialize(user_name, options = {})
    #   @param [String] user_name
    #   @option options [Client] :client
    # @overload def initialize(options = {})
    #   @option options [required, String] :user_name
    #   @option options [Client] :client
    def initialize(*args)
      options = Hash === args.last ? args.pop.dup : {}
      @user_name = extract_user_name(args, options)
      @data = options.delete(:data)
      @client = options.delete(:client) || Client.new(options)
    end

    # @!group Read-Only Attributes

    # @return [String]
    def user_name
      @user_name
    end

    # The date when the password for the user was created.
    # @return [Time]
    def create_date
      data.create_date
    end

    # Specifies whether the user is required to set a new password on next
    # sign-in.
    # @return [Boolean]
    def password_reset_required
      data.password_reset_required
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {LoginProfile}.
    # Returns `self` making it possible to chain methods.
    #
    #     login_profile.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_login_profile(user_name: @user_name)
      @data = resp.login_profile
      self
    end
    alias :reload :load

    # @return [Types::LoginProfile]
    #   Returns the data for this {LoginProfile}. Calls
    #   {Client#get_login_profile} if {#data_loaded?} is `false`.
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
    #   loginprofile = login_profile.create({
    #     password: "passwordType", # required
    #     password_reset_required: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :password
    #   The new password for the user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of almost any printable ASCII character from the
    #   space (\\u0020) through the end of the ASCII character range
    #   (\\u00FF). You can also include the tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D) characters. Although any of
    #   these characters are valid in a password, note that many tools, such
    #   as the AWS Management Console, might restrict the ability to enter
    #   certain characters because they have special meaning within that tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [Boolean] :password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    # @return [LoginProfile]
    def create(options = {})
      options = options.merge(user_name: @user_name)
      resp = @client.create_login_profile(options)
      LoginProfile.new(
        user_name: resp.data.login_profile.user_name,
        data: resp.data.login_profile,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   login_profile.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(user_name: @user_name)
      resp = @client.delete_login_profile(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   login_profile.update({
    #     password: "passwordType",
    #     password_reset_required: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :password
    #   The new password for the specified IAM user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of any printable ASCII character ranging from
    #   the space character (\\u0020) through end of the ASCII character range
    #   as well as the printable characters in the Basic Latin and Latin-1
    #   Supplement character set (through \\u00FF). It also includes the
    #   special characters tab (\\u0009), line feed (\\u000A), and carriage
    #   return (\\u000D). However, the format can be further restricted by the
    #   account administrator by setting a password policy on the AWS account.
    #   For more information, see UpdateAccountPasswordPolicy.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [Boolean] :password_reset_required
    #   Allows this new password to be used only once by requiring the
    #   specified IAM user to set a new password on next sign-in.
    # @return [EmptyStructure]
    def update(options = {})
      options = options.merge(user_name: @user_name)
      resp = @client.update_login_profile(options)
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
      { user_name: @user_name }
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

    class Collection < Aws::Resources::Collection; end
  end
end
