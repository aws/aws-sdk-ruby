# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class DBSecurityGroup

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
    alias :db_security_group_name :name

    # Provides the AWS ID of the owner of a specific DB security group.
    # @return [String]
    def owner_id
      data[:owner_id]
    end

    # Provides the description of the DB security group.
    # @return [String]
    def db_security_group_description
      data[:db_security_group_description]
    end

    # Provides the VpcId of the DB security group.
    # @return [String]
    def vpc_id
      data[:vpc_id]
    end

    # Contains a list of EC2SecurityGroup elements.
    # @return [Array<Types::EC2SecurityGroup>]
    def ec2_security_groups
      data[:ec2_security_groups]
    end

    # Contains a list of IPRange elements.
    # @return [Array<Types::IPRange>]
    def ip_ranges
      data[:ip_ranges]
    end

    # The Amazon Resource Name (ARN) for the DB security group.
    # @return [String]
    def db_security_group_arn
      data[:db_security_group_arn]
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {DBSecurityGroup}.
    # Returns `self` making it possible to chain methods.
    #
    #     db_security_group.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_db_security_groups(db_security_group_name: @name)
      @data = resp.db_security_groups[0]
      self
    end
    alias :reload :load

    # @return [Types::DBSecurityGroup]
    #   Returns the data for this {DBSecurityGroup}. Calls
    #   {Client#describe_db_security_groups} if {#data_loaded?} is `false`.
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

    # @deprecated Use [Aws::RDS::Client] #wait_until instead
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
    #   dbsecuritygroup = db_security_group.authorize_ingress({
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_id: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidrip
    #   The IP range to authorize.
    # @option options [String] :ec2_security_group_name
    #   Name of the EC2 security group to authorize. For VPC DB security
    #   groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    # @option options [String] :ec2_security_group_id
    #   Id of the EC2 security group to authorize. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   `EC2SecurityGroupOwnerId` and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    # @option options [String] :ec2_security_group_owner_id
    #   AWS account number of the owner of the EC2 security group specified in
    #   the `EC2SecurityGroupName` parameter. The AWS Access Key ID is not an
    #   acceptable value. For VPC DB security groups, `EC2SecurityGroupId`
    #   must be provided. Otherwise, `EC2SecurityGroupOwnerId` and either
    #   `EC2SecurityGroupName` or `EC2SecurityGroupId` must be provided.
    # @return [DBSecurityGroup]
    def authorize_ingress(options = {})
      options = options.merge(db_security_group_name: @name)
      resp = @client.authorize_db_security_group_ingress(options)
      DBSecurityGroup.new(
        name: resp.data.db_security_group.db_security_group_name,
        data: resp.data.db_security_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   dbsecuritygroup = db_security_group.create({
    #     db_security_group_description: "String", # required
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :db_security_group_description
    #   The description for the DB security group.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags. For more information, see [Tagging Amazon RDS
    #   Resources][1] in the *Amazon RDS User Guide.*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Tagging.html
    # @return [DBSecurityGroup]
    def create(options = {})
      options = options.merge(db_security_group_name: @name)
      resp = @client.create_db_security_group(options)
      DBSecurityGroup.new(
        name: resp.data.db_security_group.db_security_group_name,
        data: resp.data.db_security_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   db_security_group.delete()
    # @param [Hash] options ({})
    # @return [EmptyStructure]
    def delete(options = {})
      options = options.merge(db_security_group_name: @name)
      resp = @client.delete_db_security_group(options)
      resp.data
    end

    # @example Request syntax with placeholder values
    #
    #   dbsecuritygroup = db_security_group.revoke_ingress({
    #     cidrip: "String",
    #     ec2_security_group_name: "String",
    #     ec2_security_group_id: "String",
    #     ec2_security_group_owner_id: "String",
    #   })
    # @param [Hash] options ({})
    # @option options [String] :cidrip
    #   The IP range to revoke access from. Must be a valid CIDR range. If
    #   `CIDRIP` is specified, `EC2SecurityGroupName`, `EC2SecurityGroupId`
    #   and `EC2SecurityGroupOwnerId` can't be provided.
    # @option options [String] :ec2_security_group_name
    #   The name of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    # @option options [String] :ec2_security_group_id
    #   The id of the EC2 security group to revoke access from. For VPC DB
    #   security groups, `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    # @option options [String] :ec2_security_group_owner_id
    #   The AWS Account Number of the owner of the EC2 security group
    #   specified in the `EC2SecurityGroupName` parameter. The AWS Access Key
    #   ID is not an acceptable value. For VPC DB security groups,
    #   `EC2SecurityGroupId` must be provided. Otherwise,
    #   EC2SecurityGroupOwnerId and either `EC2SecurityGroupName` or
    #   `EC2SecurityGroupId` must be provided.
    # @return [DBSecurityGroup]
    def revoke_ingress(options = {})
      options = options.merge(db_security_group_name: @name)
      resp = @client.revoke_db_security_group_ingress(options)
      DBSecurityGroup.new(
        name: resp.data.db_security_group.db_security_group_name,
        data: resp.data.db_security_group,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_security_group.subscribe_to({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to add a
    #   source identifier to.
    # @return [EventSubscription]
    def subscribe_to(options = {})
      options = options.merge(source_identifier: @name)
      resp = @client.add_source_identifier_to_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = db_security_group.unsubscribe_from({
    #     subscription_name: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :subscription_name
    #   The name of the RDS event notification subscription you want to remove
    #   a source identifier from.
    # @return [EventSubscription]
    def unsubscribe_from(options = {})
      options = options.merge(source_identifier: @name)
      resp = @client.remove_source_identifier_from_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @!group Associations

    # @example Request syntax with placeholder values
    #
    #   events = db_security_group.events({
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     duration: 1,
    #     event_categories: ["String"],
    #     filters: [
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [Time,DateTime,Date,Integer,String] :start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Time,DateTime,Date,Integer,String] :end_time
    #   The end of the time interval for which to retrieve events, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: 2009-07-08T18:00Z
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    # @option options [Integer] :duration
    #   The number of minutes to retrieve events for.
    #
    #   Default: 60
    # @option options [Array<String>] :event_categories
    #   A list of event categories that trigger notifications for a event
    #   notification subscription.
    # @option options [Array<Types::Filter>] :filters
    #   This parameter is not currently supported.
    # @return [Event::Collection]
    def events(options = {})
      batches = Enumerator.new do |y|
        options = options.merge(
          source_type: "db-security-group",
          source_identifier: @name
        )
        resp = @client.describe_events(options)
        resp.each_page do |page|
          batch = []
          page.data.events.each do |e|
            batch << Event.new(
              source_id: e.source_identifier,
              date: e.date,
              data: e,
              client: @client
            )
          end
          y.yield(batch)
        end
      end
      Event::Collection.new(batches)
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
