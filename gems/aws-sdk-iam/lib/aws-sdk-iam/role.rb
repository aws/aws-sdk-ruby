# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  class Role

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
    alias :role_name :name

    # The path to the role. For more information about paths, see [IAM
    # Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def path
      data[:path]
    end

    # The stable and unique string identifying the role. For more
    # information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    # guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def role_id
      data[:role_id]
    end

    # The Amazon Resource Name (ARN) specifying the role. For more
    # information about ARNs and how to use them in policies, see [IAM
    # Identifiers][1] in the *IAM User Guide* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    # @return [String]
    def arn
      data[:arn]
    end

    # The date and time, in [ISO 8601 date-time format][1], when the role
    # was created.
    #
    #
    #
    # [1]: http://www.iso.org/iso/iso8601
    # @return [Time]
    def create_date
      data[:create_date]
    end

    # The policy that grants an entity permission to assume the role.
    # @return [String]
    def assume_role_policy_document
      data[:assume_role_policy_document]
    end

    # A description of the role that you provide.
    # @return [String]
    def description
      data[:description]
    end

    # The maximum session duration (in seconds) for the specified role.
    # Anyone who uses the AWS CLI or API to assume the role can specify the
    # duration using the optional `DurationSeconds` API parameter or
    # `duration-seconds` CLI parameter.
    # @return [Integer]
    def max_session_duration
      data[:max_session_duration]
    end

    # The ARN of the policy used to set the permissions boundary for the
    # role.
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

    # Loads, or reloads {#data} for the current {Role}.
    # Returns `self` making it possible to chain methods.
    #
    #     role.reload.data
    #
    # @return [self]
    def load
      resp = @client.get_role(role_name: @name)
      @data = resp.role
      self
    end
    alias :reload :load

    # @return [Types::Role]
    #   Returns the data for this {Role}. Calls
    #   {Client#get_role} if {#data_loaded?} is `false`.
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
    #   role.attach_policy({
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
      options = options.merge(role_name: @name)
      resp = @client.attach_role_policy(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   role.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(role_name: @name)
      resp = @client.delete_role(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   role.detach_policy({
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
      options = options.merge(role_name: @name)
      resp = @client.detach_role_policy(options)
      resp.data
    end

    # @!group Associations

    # @return [AssumeRolePolicy]
    def assume_role_policy
      AssumeRolePolicy.new(
        role_name: @name,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   attached_policies = role.attached_policies({
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
        options = options.merge(role_name: @name)
        resp = @client.list_attached_role_policies(options)
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
    #   role.instance_profiles()
    # @param [Hash] options ({})
    # @return [InstanceProfile::Collection]
    def instance_profiles(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(role_name: @name)
        resp = @client.list_instance_profiles_for_role(options)
        resp.each_page do |page|
          batch = []
          page.data.instance_profiles.each do |i|
            batch << InstanceProfile.new(
              name: i.instance_profile_name,
              data: i,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      InstanceProfile::Collection.new(batches)
    end

    # @example Request syntax with placeholder values
    #
    #   role.policies()
    # @param [Hash] options ({})
    # @return [RolePolicy::Collection]
    def policies(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(role_name: @name)
        resp = @client.list_role_policies(options)
        resp.each_page do |page|
          batch = []
          page.data.policy_names.each do |p|
            batch << RolePolicy.new(
              role_name: @name,
              name: p,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      RolePolicy::Collection.new(batches)
    end

    # @param [String] name
    # @return [RolePolicy]
    def policy(name)
      RolePolicy.new(
        role_name: @name,
        name: name,
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
