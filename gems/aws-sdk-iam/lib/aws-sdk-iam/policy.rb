# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class Policy

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

    # The friendly name (not ARN) identifying the policy.
    # @return [String]
    def policy_name
      data[:policy_name]
    end

    # The stable and unique string identifying the policy.
    #
    # For more information about IDs, see [IAM Identifiers][1] in the *Using
    # IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def policy_id
      data[:policy_id]
    end

    # The path to the policy.
    #
    # For more information about paths, see [IAM Identifiers][1] in the
    # *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def path
      data[:path]
    end

    # The identifier for the version of the policy that is set as the
    # default version.
    # @return [String]
    def default_version_id
      data[:default_version_id]
    end

    # The number of entities (users, groups, and roles) that the policy is
    # attached to.
    # @return [Integer]
    def attachment_count
      data[:attachment_count]
    end

    # The number of entities (users and roles) for which the policy is used
    # to set the permissions boundary.
    #
    # For more information about permissions boundaries, see [Permissions
    # Boundaries for IAM Identities ][1] in the *IAM User Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html
    # @return [Integer]
    def permissions_boundary_usage_count
      data[:permissions_boundary_usage_count]
    end

    # Specifies whether the policy can be attached to an IAM user, group, or
    # role.
    # @return [Boolean]
    def is_attachable
      data[:is_attachable]
    end

    # A friendly description of the policy.
    #
    # This element is included in the response to the GetPolicy operation.
    # It is not included in the response to the ListPolicies operation.
    # @return [String]
    def description
      data[:description]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the policy
    # was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the policy
    # was last updated.
    #
    # When a policy has only one version, this field contains the date and
    # time when the policy was created. When a policy has more than one
    # version, this field contains the date and time when the most recent
    # policy version was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def update_date
      data[:update_date]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {Policy}.
    # Returns `self` making it possible to chain methods.
    #
    #     policy.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_policy(policy_arn: @arn)
      @data = resp.policy
      self
    end
    alias :reload :load

    # @return [Types::Policy]
    #   Returns the data for this {Policy}. Calls
    #   {Client#get_policy} if {#data_loaded?} is `false`.
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
    #   policy.attach_group({
    #     group_name: "groupNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :group_name
    #   The name (friendly name, not ARN) of the group to attach the policy
    #   to.
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
    def attach_group(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.attach_group_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy.attach_role({
    #     role_name: "roleNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :role_name
    #   The name (friendly name, not ARN) of the role to attach the policy to.
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
    def attach_role(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.attach_role_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy.attach_user({
    #     user_name: "userNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :user_name
    #   The name (friendly name, not ARN) of the IAM user to attach the policy
    #   to.
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
    def attach_user(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.attach_user_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policyversion = policy.create_version({
    #     policy_document: "policyDocumentType", # required
    #     set_as_default: false,
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :policy_document
    #   The JSON policy document that you want to use as the content for this
    #   new version of the policy.
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
    # @option options [Boolean] :set_as_default
    #   Specifies whether to set this version as the policy's default
    #   version.
    #
    #   When this parameter is `true`, the new policy version becomes the
    #   operative version. That is, it becomes the version that is in effect
    #   for the IAM users, groups, and roles that the policy is attached to.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    # @return [PolicyVersion]
    def create_version(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.create_policy_version(options)
      PolicyVersion.new(
        arn: @arn,
        version_id: resp.data.policy_version.version_id,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   policy.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.delete_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy.detach_group({
    #     group_name: "groupNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :group_name
    #   The name (friendly name, not ARN) of the IAM group to detach the
    #   policy from.
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
    def detach_group(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.detach_group_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy.detach_role({
    #     role_name: "roleNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :role_name
    #   The name (friendly name, not ARN) of the IAM role to detach the policy
    #   from.
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
    def detach_role(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.detach_role_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   policy.detach_user({
    #     user_name: "userNameType", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :user_name
    #   The name (friendly name, not ARN) of the IAM user to detach the policy
    #   from.
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
    def detach_user(options = {})
      options = options.merge(policy_arn: @arn)
      resp = @client.detach_user_policy(options)
      resp.data
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   attached_groups = policy.attached_groups({
    #     path_prefix: "pathType",
    #     policy_usage_filter: "PermissionsPolicy", # accepts PermissionsPolicy, PermissionsBoundary
    #   })
    # @param [Hash] options ({})
    # @option options [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   entities.
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
    # @option options [String] :policy_usage_filter
    #   The policy usage method to use for filtering the results.
    #
    #   To list only permissions policies,
    #   set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the
    #   policies used to set permissions boundaries, set the value
    #   to `PermissionsBoundary`.
    #
    #   This parameter is optional. If it is not included, all policies are
    #   returned.
    # @return [Group::Collection]
    def attached_groups(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          policy_arn: @arn,
          entity_filter: "Group"
        )
        resp = @client.list_entities_for_policy(options)
        resp.each_page do |page|
          batch = []
          page.data.policy_groups.each do |p|
            batch << Group.new(
              name: p.group_name,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Group::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   attached_roles = policy.attached_roles({
    #     path_prefix: "pathType",
    #     policy_usage_filter: "PermissionsPolicy", # accepts PermissionsPolicy, PermissionsBoundary
    #   })
    # @param [Hash] options ({})
    # @option options [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   entities.
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
    # @option options [String] :policy_usage_filter
    #   The policy usage method to use for filtering the results.
    #
    #   To list only permissions policies,
    #   set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the
    #   policies used to set permissions boundaries, set the value
    #   to `PermissionsBoundary`.
    #
    #   This parameter is optional. If it is not included, all policies are
    #   returned.
    # @return [Role::Collection]
    def attached_roles(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          policy_arn: @arn,
          entity_filter: "Role"
        )
        resp = @client.list_entities_for_policy(options)
        resp.each_page do |page|
          batch = []
          page.data.policy_roles.each do |p|
            batch << Role.new(
              name: p.role_name,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Role::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   attached_users = policy.attached_users({
    #     path_prefix: "pathType",
    #     policy_usage_filter: "PermissionsPolicy", # accepts PermissionsPolicy, PermissionsBoundary
    #   })
    # @param [Hash] options ({})
    # @option options [String] :path_prefix
    #   The path prefix for filtering the results. This parameter is optional.
    #   If it is not included, it defaults to a slash (/), listing all
    #   entities.
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
    # @option options [String] :policy_usage_filter
    #   The policy usage method to use for filtering the results.
    #
    #   To list only permissions policies,
    #   set `PolicyUsageFilter` to `PermissionsPolicy`. To list only the
    #   policies used to set permissions boundaries, set the value
    #   to `PermissionsBoundary`.
    #
    #   This parameter is optional. If it is not included, all policies are
    #   returned.
    # @return [User::Collection]
    def attached_users(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          policy_arn: @arn,
          entity_filter: "User"
        )
        resp = @client.list_entities_for_policy(options)
        resp.each_page do |page|
          batch = []
          page.data.policy_users.each do |p|
            batch << User.new(
              name: p.user_name,
              data: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      User::Collection.new(batches)
    end

    # @return [PolicyVersion, nil]
    def default_version
      if data[:default_version_id]
        PolicyVersion.new(
          arn: @arn,
          version_id: data[:default_version_id],
          client: @client
        )
      else
        nil
      end
    end

    # @example Request syntax with placeholder values
    #
    #   policy.versions()
    # @param [Hash] options ({})
    # @return [PolicyVersion::Collection]
    def versions(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(policy_arn: @arn)
        resp = @client.list_policy_versions(options)
        resp.each_page do |page|
          batch = []
          page.data.versions.each do |v|
            batch << PolicyVersion.new(
              arn: @arn,
              version_id: v.version_id,
              data: v,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      PolicyVersion::Collection.new(batches)
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
