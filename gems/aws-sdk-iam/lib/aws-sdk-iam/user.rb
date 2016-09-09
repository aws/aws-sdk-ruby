# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
module Aws
  module IAM
    class User

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
      alias :user_name :name

      # The path to the user. For more information about paths, see [IAM
      # Identifiers][1] in the *Using IAM* guide.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      # @return [String]
      def path
        data.path
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
        data.user_id
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
        data.arn
      end

      # The date and time, in [ISO 8601 date-time format][1], when the user
      # was created.
      #
      #
      #
      # [1]: http://www.iso.org/iso/iso8601
      # @return [Time]
      def create_date
        data.create_date
      end

      # The date and time, in [ISO 8601 date-time format][1], when the user\'s
      # password was last used to sign in to an AWS website. For a list of AWS
      # websites that capture a user\'s last sign-in time, see the [Credential
      # Reports][2] topic in the *Using IAM* guide. If a password is used more
      # than once in a five-minute span, only the first use is returned in
      # this field. This field is null (not present) when:
      #
      # * The user does not have a password
      #
      # * The password exists but has never been used (at least not since IAM
      #   started tracking this information on October 20th, 2014
      #
      # * there is no sign-in data associated with the user
      #
      # This value is returned only in the GetUser and ListUsers actions.
      #
      #
      #
      # [1]: http://www.iso.org/iso/iso8601
      # [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
      # @return [Time]
      def password_last_used
        data.password_last_used
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {User}.
      # Returns `self` making it possible to chain methods.
      #
      #     user.reload.data
      #
      # @return [self]
      def load
        resp = @client.get_user(user_name: @name)
        @data = resp.user
        self
      end
      alias :reload :load

      # @return [Types::User]
      #   Returns the data for this {User}. Calls
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

      # @return [Boolean]
      #   Returns `true` if the User exists.
      def exists?
        begin
          wait_until_exists(max_attempts: 1)
          true
        rescue Aws::Waiters::Errors::UnexpectedError => e
          raise e.error
        rescue Aws::Waiters::Errors::WaiterFailed
          false
        end
      end

      # @param options ({})
      # @option options [Integer] :max_attempts (20)
      # @option options [Float] :delay (1)
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      # @return [User]
      def wait_until_exists(options = {})
        waiter = Waiters::UserExists.new(options.merge(client: @client))
        yield_waiter_and_warn(waiter, &Proc.new) if block_given?
        waiter.wait(user_name: @name)
        User.new({
          name: @name,
          client: @client
        })
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @option options [required, String] :group_name
      #   The name of the group to update.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def add_group(options = {})
        options = options.merge(user_name: @name)
        resp = @client.add_user_to_group(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :policy_arn
      #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
      #
      #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1] in the *AWS General Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @return [EmptyStructure]
      def attach_policy(options = {})
        options = options.merge(user_name: @name)
        resp = @client.attach_user_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [String] :path
      #   The path for the user name. For more information about paths, see [IAM
      #   Identifiers][1] in the *IAM User Guide*.
      #
      #   This parameter is optional. If it is not included, it defaults to a
      #   slash (/).
      #
      #   The [regex pattern][2] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
      #   [2]: http://wikipedia.org/wiki/regex
      # @return [User]
      def create(options = {})
        options = options.merge(user_name: @name)
        resp = @client.create_user(options)
        User.new(
          name: options[:user_name],
          data: resp.data.user,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [AccessKeyPair]
      def create_access_key_pair(options = {})
        options = options.merge(user_name: @name)
        resp = @client.create_access_key(options)
        AccessKeyPair.new(
          user_name: @name,
          id: resp.data.access_key.access_key_id,
          secret: resp.data.access_key.secret_access_key,
          data: resp.data.access_key,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :password
      #   The new password for the user.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of almost any printable ASCII character from the space
      #   (\\u0020) through the end of the ASCII character range (\\u00FF). You
      #   can also include the tab (\\u0009), line feed (\\u000A), and carriage
      #   return (\\u000D) characters. Although any of these characters are
      #   valid in a password, note that many tools, such as the AWS Management
      #   Console, might restrict the ability to enter certain characters
      #   because they have special meaning within that tool.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [Boolean] :password_reset_required
      #   Specifies whether the user is required to set a new password on next
      #   sign-in.
      # @return [LoginProfile]
      def create_login_profile(options = {})
        options = options.merge(user_name: @name)
        resp = @client.create_login_profile(options)
        LoginProfile.new(
          user_name: resp.data.login_profile.user_name,
          data: resp.data.login_profile,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :policy_name
      #   The name of the policy document.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :policy_document
      #   The policy document.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of any printable ASCII character ranging from the space
      #   character (\\u0020) through end of the ASCII character range
      #   (\\u00FF). It also includes the special characters tab (\\u0009), line
      #   feed (\\u000A), and carriage return (\\u000D).
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [UserPolicy]
      def create_policy(options = {})
        options = options.merge(user_name: @name)
        resp = @client.put_user_policy(options)
        UserPolicy.new(
          user_name: @name,
          name: options[:policy_name],
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(user_name: @name)
        resp = @client.delete_user(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :policy_arn
      #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
      #
      #   For more information about ARNs, see [Amazon Resource Names (ARNs) and
      #   AWS Service Namespaces][1] in the *AWS General Reference*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
      # @return [EmptyStructure]
      def detach_policy(options = {})
        options = options.merge(user_name: @name)
        resp = @client.detach_user_policy(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [required, String] :serial_number
      #   The serial number that uniquely identifies the MFA device. For virtual
      #   MFA devices, the serial number is the device ARN.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =/:,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [required, String] :authentication_code_1
      #   An authentication code emitted by the device.
      #
      #   The format for this parameter is a string of 6 digits.
      # @option options [required, String] :authentication_code_2
      #   A subsequent authentication code emitted by the device.
      #
      #   The format for this parameter is a string of 6 digits.
      # @return [MfaDevice]
      def enable_mfa(options = {})
        options = options.merge(user_name: @name)
        resp = @client.enable_mfa_device(options)
        MfaDevice.new(
          user_name: @name,
          serial_number: options[:serial_number],
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @option options [required, String] :group_name
      #   The name of the group to update.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [EmptyStructure]
      def remove_group(options = {})
        options = options.merge(user_name: @name)
        resp = @client.remove_user_from_group(options)
        resp.data
      end

      # @param [Hash] options ({})
      # @option options [String] :new_path
      #   New path for the IAM user. Include this parameter only if you\'re
      #   changing the user\'s path.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @option options [String] :new_user_name
      #   New name for the user. Include this parameter only if you\'re changing
      #   the user\'s name.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of upper and lowercase alphanumeric characters with no
      #   spaces. You can also include any of the following characters: =,.@-
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [User]
      def update(options = {})
        options = options.merge(user_name: @name)
        resp = @client.update_user(options)
        User.new(
          name: options[:new_user_name],
          client: @client
        )
      end

      # @!group Associations

      # @param [String] id
      # @return [AccessKey]
      def access_key(id)
        AccessKey.new(
          user_name: @name,
          id: id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [AccessKey::Collection]
      def access_keys(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_access_keys(options)
          resp.each_page do |page|
            batch = []
            page.data.access_key_metadata.each do |a|
              batch << AccessKey.new(
                user_name: @name,
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

      # @param [Hash] options ({})
      # @option options [String] :path_prefix
      #   The path prefix for filtering the results. This parameter is optional.
      #   If it is not included, it defaults to a slash (/), listing all
      #   policies.
      #
      #   The [regex pattern][1] for this parameter is a string of characters
      #   consisting of either a forward slash (/) by itself or a string that
      #   must begin and end with forward slashes, containing any ASCII
      #   character from the ! (\\u0021) thru the DEL character (\\u007F),
      #   including most punctuation characters, digits, and upper and
      #   lowercased letters.
      #
      #
      #
      #   [1]: http://wikipedia.org/wiki/regex
      # @return [Policy::Collection]
      def attached_policies(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_attached_user_policies(options)
          resp.each_page do |page|
            batch = []
            page.data.attached_policies.each do |a|
              batch << Policy.new(
                arn: a.policy_arn,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Policy::Collection.new(batches)
      end

      # @param [Hash] options ({})
      # @return [Group::Collection]
      def groups(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_groups_for_user(options)
          resp.each_page do |page|
            batch = []
            page.data.groups.each do |g|
              batch << Group.new(
                name: g.group_name,
                data: g,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        Group::Collection.new(batches)
      end

      # @return [LoginProfile]
      def login_profile
        LoginProfile.new(
          user_name: @name,
          client: @client
        )
      end

      # @param [String] serial_number
      # @return [MfaDevice]
      def mfa_device(serial_number)
        MfaDevice.new(
          user_name: @name,
          serial_number: serial_number,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [MfaDevice::Collection]
      def mfa_devices(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_mfa_devices(options)
          resp.each_page do |page|
            batch = []
            page.data.mfa_devices.each do |m|
              batch << MfaDevice.new(
                user_name: @name,
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

      # @param [Hash] options ({})
      # @return [UserPolicy::Collection]
      def policies(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_user_policies(options)
          resp.each_page do |page|
            batch = []
            page.data.policy_names.each do |p|
              batch << UserPolicy.new(
                user_name: @name,
                name: p,
                client: @client
              )
            end
            y.yield(batch)
          end
        end
        UserPolicy::Collection.new(batches)
      end

      # @param [String] name
      # @return [UserPolicy]
      def policy(name)
        UserPolicy.new(
          user_name: @name,
          name: name,
          client: @client
        )
      end

      # @param [String] id
      # @return [SigningCertificate]
      def signing_certificate(id)
        SigningCertificate.new(
          user_name: @name,
          id: id,
          client: @client
        )
      end

      # @param [Hash] options ({})
      # @return [SigningCertificate::Collection]
      def signing_certificates(options = {})
        batches = Enumerator.new do |y|
          options = options.merge(user_name: @name)
          resp = @client.list_signing_certificates(options)
          resp.each_page do |page|
            batch = []
            page.data.certificates.each do |c|
              batch << SigningCertificate.new(
                user_name: @name,
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

      def yield_waiter_and_warn(waiter, &block)
        if !@waiter_block_warned
          msg = "pass options to configure the waiter; "
          msg << "yielding the waiter is deprecated"
          warn(msg)
          @waiter_block_warned = true
        end
        yield(waiter.waiter)
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<User>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end
