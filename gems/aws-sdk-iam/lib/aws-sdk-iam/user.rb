# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
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
      data[:path]
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

    # @param [Hash] options ({})
    # @return [Boolean]
    #   Returns `true` if the User exists.
    def exists?(options = {})
      begin
        wait_until_exists(options.merge(max_attempts: 1))
        true
      rescue Aws::Waiters::Errors::UnexpectedError => e
        raise e.error
      rescue Aws::Waiters::Errors::WaiterFailed
        false
      end
    end

    # @param [Hash] options ({})
    # @option options [Integer] :max_attempts (20)
    # @option options [Float] :delay (1)
    # @option options [Proc] :before_attempt
    # @option options [Proc] :before_wait
    # @return [User]
    def wait_until_exists(options = {})
      options, params = separate_params_and_options(options)
      waiter = Waiters::UserExists.new(options)
      yield_waiter_and_warn(waiter, &Proc.new) if block_given?
      waiter.wait(params.merge(user_name: @name))
      User.new({
        name: @name,
        client: @client
      })
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
    #   user.add_group({
    #     group_name: "groupNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
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

    # @example Request syntax with placeholder values
    #
    #   user.attach_policy({
    #     policy_arn: "arnType", # required
    #   })
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

    # @example Request syntax with placeholder values
    #
    #   user = user.create({
    #     path: "pathType",
    #     permissions_boundary: "arnType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :path
    #   The path for the user name. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This parameter allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (\\u0021) through the DEL
    #   character (\\u007F), including most punctuation characters, digits,
    #   and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    # @option options [String] :permissions_boundary
    #   The ARN of the policy that is used to set the permissions boundary for
    #   the user.
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

    # @example Request syntax with placeholder values
    #
    #   user.create_access_key_pair()
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

    # @example Request syntax with placeholder values
    #
    #   loginprofile = user.create_login_profile({
    #     password: "passwordType", # required
    #     password_reset_required: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :password
    #   The new password for the user.
    #
    #   The [regex pattern][1] that is used to validate this parameter is a
    #   string of characters. That string can include almost any printable
    #   ASCII character from the space (\\u0020) through the end of the ASCII
    #   character range (\\u00FF). You can also include the tab (\\u0009),
    #   line feed (\\u000A), and carriage return (\\u000D) characters. Any of
    #   these characters are valid in a password. However, many tools, such as
    #   the AWS Management Console, might restrict the ability to type certain
    #   characters because they have special meaning within that tool.
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

    # @example Request syntax with placeholder values
    #
    #   userpolicy = user.create_policy({
    #     policy_name: "policyNameType", # required
    #     policy_document: "policyDocumentType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [required, String] :policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string of
    #   characters consisting of the following:
    #
    #   * Any printable ASCII character ranging from the space character
    #     (\\u0020) through the end of the ASCII character range
    #
    #   * The printable characters in the Basic Latin and Latin-1 Supplement
    #     character set (through \\u00FF)
    #
    #   * The special characters tab (\\u0009), line feed (\\u000A), and
    #     carriage return (\\u000D)
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

    # @example Request syntax with placeholder values
    #
    #   user.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(user_name: @name)
      resp = @client.delete_user(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   user.detach_policy({
    #     policy_arn: "arnType", # required
    #   })
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

    # @example Request syntax with placeholder values
    #
    #   mfadevice = user.enable_mfa({
    #     serial_number: "serialNumberType", # required
    #     authentication_code_1: "authenticationCodeType", # required
    #     authentication_code_2: "authenticationCodeType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :serial_number
    #   The serial number that uniquely identifies the MFA device. For virtual
    #   MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [required, String] :authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a string of six digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit the
    #   request, the MFA device successfully associates with the user but the
    #   MFA device becomes out of sync. This happens because time-based
    #   one-time passwords (TOTP) expire after a short period of time. If this
    #   happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    # @option options [required, String] :authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a string of six digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit the
    #   request, the MFA device successfully associates with the user but the
    #   MFA device becomes out of sync. This happens because time-based
    #   one-time passwords (TOTP) expire after a short period of time. If this
    #   happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
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

    # @example Request syntax with placeholder values
    #
    #   user.remove_group({
    #     group_name: "groupNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
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

    # @example Request syntax with placeholder values
    #
    #   user = user.update({
    #     new_path: "pathType",
    #     new_user_name: "userNameType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :new_path
    #   New path for the IAM user. Include this parameter only if you're
    #   changing the user's path.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (\\u0021) through the DEL
    #   character (\\u007F), including most punctuation characters, digits,
    #   and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    # @option options [String] :new_user_name
    #   New name for the user. Include this parameter only if you're changing
    #   the user's name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following characters:
    #   \_+=,.@-
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

    # @example Request syntax with placeholder values
    #
    #   user.access_keys()
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

    # @example Request syntax with placeholder values
    #
    #   attached_policies = user.attached_policies({
    #     path_prefix: "policyPathType",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   policies.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes. In addition, it
    #   can contain any ASCII character from the ! (\\u0021) through the DEL
    #   character (\\u007F), including most punctuation characters, digits,
    #   and upper and lowercased letters.
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

    # @example Request syntax with placeholder values
    #
    #   user.groups()
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

    # @example Request syntax with placeholder values
    #
    #   user.mfa_devices()
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

    # @example Request syntax with placeholder values
    #
    #   user.policies()
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

    # @example Request syntax with placeholder values
    #
    #   user.signing_certificates()
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

    def separate_params_and_options(options)
      opts = Set.new([:client, :max_attempts, :delay, :before_attempt, :before_wait])
      waiter_opts = {}
      waiter_params = {}
      options.each_pair do |key, value|
        if opts.include?(key)
          waiter_opts[key] = value
        else
          waiter_params[key] = value
        end
      end
      waiter_opts[:client] ||= @client
      [waiter_opts, waiter_params]
    end

    class Collection < Aws::Resources::Collection; end
  end
end
