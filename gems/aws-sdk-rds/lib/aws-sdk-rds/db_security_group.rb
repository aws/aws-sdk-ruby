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
      data.owner_id
    end

    # Provides the description of the DB security group.
    # @return [String]
    def db_security_group_description
      data.db_security_group_description
    end

    # Provides the VpcId of the DB security group.
    # @return [String]
    def vpc_id
      data.vpc_id
    end

    # Contains a list of EC2SecurityGroup elements.
    # @return [Array<Types::EC2SecurityGroup>]
    def ec2_security_groups
      data.ec2_security_groups
    end

    # Contains a list of IPRange elements.
    # @return [Array<Types::IPRange>]
    def ip_ranges
      data.ip_ranges
    end

    # The Amazon Resource Name (ARN) for the DB security group.
    # @return [String]
    def db_security_group_arn
      data.db_security_group_arn
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
    #   A list of tags.
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
    #   and `EC2SecurityGroupOwnerId` cannot be provided.
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
