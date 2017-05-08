# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::RDS
  class EventSubscription

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
    alias :cust_subscription_id :name

    # The AWS customer account associated with the RDS event notification
    # subscription.
    # @return [String]
    def customer_aws_id
      data.customer_aws_id
    end

    # The topic ARN of the RDS event notification subscription.
    # @return [String]
    def sns_topic_arn
      data.sns_topic_arn
    end

    # The status of the RDS event notification subscription.
    #
    # Constraints:
    #
    # Can be one of the following: creating \| modifying \| deleting \|
    # active \| no-permission \| topic-not-exist
    #
    # The status "no-permission" indicates that RDS no longer has
    # permission to post to the SNS topic. The status "topic-not-exist"
    # indicates that the topic was deleted after the subscription was
    # created.
    # @return [String]
    def status
      data.status
    end

    # The time the RDS event notification subscription was created.
    # @return [String]
    def subscription_creation_time
      data.subscription_creation_time
    end

    # The source type for the RDS event notification subscription.
    # @return [String]
    def source_type
      data.source_type
    end

    # A list of source IDs for the RDS event notification subscription.
    # @return [Array<String>]
    def source_ids_list
      data.source_ids_list
    end

    # A list of event categories for the RDS event notification
    # subscription.
    # @return [Array<String>]
    def event_categories_list
      data.event_categories_list
    end

    # A Boolean value indicating if the subscription is enabled. True
    # indicates the subscription is enabled.
    # @return [Boolean]
    def enabled
      data.enabled
    end

    # The Amazon Resource Name (ARN) for the event subscription.
    # @return [String]
    def event_subscription_arn
      data.event_subscription_arn
    end

    # @!endgroup

    # @return [Client]
    def client
      @client
    end

    # Loads, or reloads {#data} for the current {EventSubscription}.
    # Returns `self` making it possible to chain methods.
    #
    #     event_subscription.reload.data
    #
    # @return [self]
    def load
      resp = @client.describe_event_subscriptions(subscription_name: @name)
      @data = resp.event_subscriptions_list[0]
      self
    end
    alias :reload :load

    # @return [Types::EventSubscription]
    #   Returns the data for this {EventSubscription}. Calls
    #   {Client#describe_event_subscriptions} if {#data_loaded?} is `false`.
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
    #   eventsubscription = event_subscription.add_subscriber({
    #     source_identifier: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :source_identifier
    #   The identifier of the event source to be added. An identifier must
    #   begin with a letter and must contain only ASCII letters, digits, and
    #   hyphens; it cannot end with a hyphen or contain two consecutive
    #   hyphens.
    #
    #   Constraints:
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    # @return [EventSubscription]
    def add_subscriber(options = {})
      options = options.merge(subscription_name: @name)
      resp = @client.add_source_identifier_to_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = event_subscription.create({
    #     sns_topic_arn: "String", # required
    #     source_type: "String",
    #     event_categories: ["String"],
    #     source_ids: ["String"],
    #     enabled: false,
    #     tags: [
    #       {
    #         key: "String",
    #         value: "String",
    #       },
    #     ],
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    # @option options [String] :source_type
    #   The type of source that will be generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: `db-instance` \| `db-cluster` \| `db-parameter-group` \|
    #   `db-security-group` \| `db-snapshot` \| `db-cluster-snapshot`
    # @option options [Array<String>] :event_categories
    #   A list of event categories for a SourceType that you want to subscribe
    #   to. You can see a list of the categories for a given SourceType in the
    #   [Events][1] topic in the Amazon RDS User Guide or by using the
    #   **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    # @option options [Array<String>] :source_ids
    #   The list of identifiers of the event sources for which events will be
    #   returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain only
    #   ASCII letters, digits, and hyphens; it cannot end with a hyphen or
    #   contain two consecutive hyphens.
    #
    #   Constraints:
    #
    #   * If SourceIds are supplied, SourceType must also be provided.
    #
    #   * If the source type is a DB instance, then a `DBInstanceIdentifier`
    #     must be supplied.
    #
    #   * If the source type is a DB security group, a `DBSecurityGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB parameter group, a `DBParameterGroupName`
    #     must be supplied.
    #
    #   * If the source type is a DB snapshot, a `DBSnapshotIdentifier` must
    #     be supplied.
    # @option options [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription, set to
    #   **false** to create the subscription but not active it.
    # @option options [Array<Types::Tag>] :tags
    #   A list of tags.
    # @return [EventSubscription]
    def create(options = {})
      options = options.merge(subscription_name: @name)
      resp = @client.create_event_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   event_subscription.delete()
    # @param [Hash] options ({})
    # @return [EventSubscription]
    def delete(options = {})
      options = options.merge(subscription_name: @name)
      resp = @client.delete_event_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = event_subscription.modify({
    #     sns_topic_arn: "String",
    #     source_type: "String",
    #     event_categories: ["String"],
    #     enabled: false,
    #   })
    # @param [Hash] options ({})
    # @option options [String] :sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic created for event
    #   notification. The ARN is created by Amazon SNS when you create a topic
    #   and subscribe to it.
    # @option options [String] :source_type
    #   The type of source that will be generating the events. For example, if
    #   you want to be notified of events generated by a DB instance, you
    #   would set this parameter to db-instance. if this value is not
    #   specified, all events are returned.
    #
    #   Valid values: db-instance \| db-parameter-group \| db-security-group
    #   \| db-snapshot
    # @option options [Array<String>] :event_categories
    #   A list of event categories for a SourceType that you want to subscribe
    #   to. You can see a list of the categories for a given SourceType in the
    #   [Events][1] topic in the Amazon RDS User Guide or by using the
    #   **DescribeEventCategories** action.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_Events.html
    # @option options [Boolean] :enabled
    #   A Boolean value; set to **true** to activate the subscription.
    # @return [EventSubscription]
    def modify(options = {})
      options = options.merge(subscription_name: @name)
      resp = @client.modify_event_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
        client: @client
      )
    end

    # @example Request syntax with placeholder values
    #
    #   eventsubscription = event_subscription.remove_subscriber({
    #     source_identifier: "String", # required
    #   })
    # @param [Hash] options ({})
    # @option options [required, String] :source_identifier
    #   The source identifier to be removed from the subscription, such as the
    #   **DB instance identifier** for a DB instance or the name of a security
    #   group.
    # @return [EventSubscription]
    def remove_subscriber(options = {})
      options = options.merge(subscription_name: @name)
      resp = @client.remove_source_identifier_from_subscription(options)
      EventSubscription.new(
        name: resp.data.event_subscription.cust_subscription_id,
        data: resp.data.event_subscription,
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
