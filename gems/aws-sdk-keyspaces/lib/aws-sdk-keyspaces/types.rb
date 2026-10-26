# frozen_string_literal: true

# This is generated code!

module Aws::Keyspaces
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient access permissions to perform this action. </p>
    # @!attribute message
    #   <p>You don't have the required permissions to perform this operation. Verify your IAM permissions and try again.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Keyspaces supports the <code>target tracking</code> auto scaling policy. With this policy, Amazon Keyspaces auto scaling ensures that the table's ratio of consumed to provisioned capacity stays at or near the target value that you specify. You define the target value as a percentage between 20 and 90.</p>
    # @!attribute target_tracking_scaling_policy_configuration
    #   <p>Auto scaling scales up capacity automatically when traffic exceeds this target utilization rate, and then back down when it falls below the target. A <code>double</code> between 20 and 90.</p>
    #   @return [Types::TargetTrackingScalingPolicyConfiguration]
    class AutoScalingPolicy < Struct.new(
      nil,
      :target_tracking_scaling_policy_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional auto scaling settings for a table with provisioned throughput capacity.</p> <p>To turn on auto scaling for a table in <code>throughputMode:PROVISIONED</code>, you must specify the following parameters. </p> <p>Configure the minimum and maximum capacity units. The auto scaling policy ensures that capacity never goes below the minimum or above the maximum range.</p> <ul> <li> <p> <code>minimumUnits</code>: The minimum level of throughput the table should always be ready to support. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p> </li> <li> <p> <code>maximumUnits</code>: The maximum level of throughput the table should always be ready to support. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p> </li> <li> <p> <code>scalingPolicy</code>: Amazon Keyspaces supports the <code>target tracking</code> scaling policy. The auto scaling target is the provisioned capacity of the table. </p> <ul> <li> <p> <code>targetTrackingScalingPolicyConfiguration</code>: To define the target tracking policy, you must define the target value. </p> <ul> <li> <p> <code>targetValue</code>: The target utilization rate of the table. Amazon Keyspaces auto scaling ensures that the ratio of consumed capacity to provisioned capacity stays at or near this value. You define <code>targetValue</code> as a percentage. A <code>double</code> between 20 and 90. (Required)</p> </li> <li> <p> <code>disableScaleIn</code>: A <code>boolean</code> that specifies if <code>scale-in</code> is disabled or enabled for the table. This parameter is disabled by default. To turn on <code>scale-in</code>, set the <code>boolean</code> value to <code>FALSE</code>. This means that capacity for a table can be automatically scaled down on your behalf. (Optional) </p> </li> <li> <p> <code>scaleInCooldown</code>: A cooldown period in seconds between scaling activities that lets the table stabilize before another scale in activity starts. If no value is provided, the default is 0. (Optional) </p> </li> <li> <p> <code>scaleOutCooldown</code>: A cooldown period in seconds between scaling activities that lets the table stabilize before another scale out activity starts. If no value is provided, the default is 0. (Optional) </p> </li> </ul> </li> </ul> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute auto_scaling_disabled
    #   <p>This optional parameter enables auto scaling for the table if set to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute minimum_units
    #   <p>The minimum level of throughput the table should always be ready to support. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p>
    #   @return [Integer]
    # @!attribute maximum_units
    #   <p>Manage costs by specifying the maximum amount of throughput to provision. The value must be between 1 and the max throughput per second quota for your account (40,000 by default).</p>
    #   @return [Integer]
    # @!attribute scaling_policy
    #   <p>Amazon Keyspaces supports the <code>target tracking</code> auto scaling policy. With this policy, Amazon Keyspaces auto scaling ensures that the table's ratio of consumed to provisioned capacity stays at or near the target value that you specify. You define the target value as a percentage between 20 and 90.</p>
    #   @return [Types::AutoScalingPolicy]
    class AutoScalingSettings < Struct.new(
      nil,
      :auto_scaling_disabled,
      :minimum_units,
      :maximum_units,
      :scaling_policy,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:auto_scaling_disabled] = false unless options.key?(:auto_scaling_disabled)
        super
      end
    end

    # <p>The optional auto scaling capacity settings for a table in provisioned capacity mode.</p>
    # @!attribute write_capacity_auto_scaling
    #   <p>The auto scaling settings for the table's write capacity.</p>
    #   @return [Types::AutoScalingSettings]
    # @!attribute read_capacity_auto_scaling
    #   <p>The auto scaling settings for the table's read capacity.</p>
    #   @return [Types::AutoScalingSettings]
    class AutoScalingSpecification < Struct.new(
      nil,
      :write_capacity_auto_scaling,
      :read_capacity_auto_scaling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Keyspaces has two read/write capacity modes for processing reads and writes on your tables: </p> <ul> <li> <p>On-demand (default)</p> </li> <li> <p>Provisioned</p> </li> </ul> <p>The read/write capacity mode that you choose controls how you are charged for read and write throughput and how table throughput capacity is managed.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute throughput_mode
    #   <p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute read_capacity_units
    #   <p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> <code>(RCUs)</code>.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> <code>(WCUs)</code>.</p>
    #   @return [Integer]
    class CapacitySpecification < Struct.new(
      nil,
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code>.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute throughput_mode
    #   <p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input. </p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute read_capacity_units
    #   <p>The throughput capacity specified for <code>read</code> operations defined in <code>read capacity units</code> <code>(RCUs)</code>.</p>
    #   @return [Integer]
    # @!attribute write_capacity_units
    #   <p>The throughput capacity specified for <code>write</code> operations defined in <code>write capacity units</code> <code>(WCUs)</code>.</p>
    #   @return [Integer]
    # @!attribute last_update_to_pay_per_request_timestamp
    #   <p>The timestamp of the last operation that changed the provisioned throughput capacity of a table.</p>
    #   @return [Time]
    class CapacitySpecificationSummary < Struct.new(
      nil,
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units,
      :last_update_to_pay_per_request_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for the CDC stream of a table. For more information about CDC streams, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cdc.html">Working with change data capture (CDC) streams in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute status
    #   <p>The status of the CDC stream. You can enable or disable a stream for a table.</p>
    #   @return [String]
    # @!attribute view_type
    #   <p>The view type specifies the changes Amazon Keyspaces records for each changed row in the stream. After you create the stream, you can't make changes to this selection. </p> <p>The options are:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags (key-value pairs) that you want to apply to the stream.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute propagate_tags
    #   <p>Specifies that the stream inherits the tags from the table.</p>
    #   @return [String]
    class CdcSpecification < Struct.new(
      nil,
      :status,
      :view_type,
      :tags,
      :propagate_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings of the CDC stream of the table. For more information about CDC streams, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cdc.html">Working with change data capture (CDC) streams in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute status
    #   <p>The status of the CDC stream. Specifies if the table has a CDC stream.</p>
    #   @return [String]
    # @!attribute view_type
    #   <p>The view type specifies the changes Amazon Keyspaces records for each changed row in the stream. This setting can't be changed, after the stream has been created. </p> <p>The options are:</p> <ul> <li> <p> <code>NEW_AND_OLD_IMAGES</code> - both versions of the row, before and after the change. This is the default.</p> </li> <li> <p> <code>NEW_IMAGE</code> - the version of the row after the change.</p> </li> <li> <p> <code>OLD_IMAGE</code> - the version of the row before the change.</p> </li> <li> <p> <code>KEYS_ONLY</code> - the partition and clustering keys of the row that was changed.</p> </li> </ul>
    #   @return [String]
    class CdcSpecificationSummary < Struct.new(
      nil,
      :status,
      :view_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client-side timestamp setting of the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps-how-it-works.html">How it works: Amazon Keyspaces client-side timestamps</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute status
    #   <p>Shows how to enable client-side timestamps settings for the specified table.</p>
    #   @return [String]
    class ClientSideTimestamps < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p>
    # @!attribute name
    #   <p>The name(s) of the clustering column(s).</p>
    #   @return [String]
    # @!attribute order_by
    #   <p>Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p>
    #   @return [String]
    class ClusteringKey < Struct.new(
      nil,
      :name,
      :order_by,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The names and data types of regular columns.</p>
    # @!attribute name
    #   <p>The name of the column.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The data type of the column. For a list of available data types, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [String]
    class ColumnDefinition < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An optional comment that describes the table.</p>
    # @!attribute message
    #   <p>An optional description of the table.</p>
    #   @return [String]
    class Comment < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Keyspaces couldn't complete the requested action. This error may occur if you try to perform an action and the same or a different action is already in progress, or if you try to create a resource that already exists. </p>
    # @!attribute message
    #   <p>The requested operation conflicts with the current state of the resource or another concurrent operation.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace to be created.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of key-value pair tags to be attached to the keyspace.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute replication_specification
    #   <p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> <li> <p> <code>regionList</code> - if the <code>replicationStrategy</code> is <code>MULTI_REGION</code>, the <code>regionList</code> requires the current Region and at least one additional Amazon Web Services Region where the keyspace is going to be replicated in.</p> </li> </ul>
    #   @return [Types::ReplicationSpecification]
    class CreateKeyspaceInput < Struct.new(
      nil,
      :keyspace_name,
      :tags,
      :replication_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class CreateKeyspaceOutput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is going to be created in.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute schema_definition
    #   <p>The <code>schemaDefinition</code> consists of the following parameters.</p> <p>For each column to be created:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul> <p>The primary key of the table consists of the following columns:</p> <ul> <li> <p> <code>partitionKeys</code> - The partition key can be a single column, or it can be a compound value composed of two or more columns. The partition key portion of the primary key is required and determines how Amazon Keyspaces stores your data.</p> </li> <li> <p> <code>name</code> - The name of each partition key column.</p> </li> <li> <p> <code>clusteringKeys</code> - The optional clustering column portion of your primary key determines how the data is clustered and sorted within each partition.</p> </li> <li> <p> <code>name</code> - The name of the clustering column. </p> </li> <li> <p> <code>orderBy</code> - Sets the ascendant (<code>ASC</code>) or descendant (<code>DESC</code>) order modifier.</p> <p>To define a column as static use <code>staticColumns</code> - Static columns store values that are shared by all rows in the same partition:</p> </li> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type.</p> </li> </ul>
    #   @return [Types::SchemaDefinition]
    # @!attribute comment
    #   <p>This parameter allows to enter a description of the table.</p>
    #   @return [Types::Comment]
    # @!attribute capacity_specification
    #   <p>Specifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::CapacitySpecification]
    # @!attribute encryption_specification
    #   <p>Specifies how the encryption key for encryption at rest is managed for the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input.</p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::EncryptionSpecification]
    # @!attribute point_in_time_recovery
    #   <p>Specifies if <code>pointInTimeRecovery</code> is enabled or disabled for the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::PointInTimeRecovery]
    # @!attribute ttl
    #   <p>Enables Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::TimeToLive]
    # @!attribute default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of key-value pair tags to be attached to the resource. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute client_side_timestamps
    #   <p> Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: "enabled"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>
    #   @return [Types::ClientSideTimestamps]
    # @!attribute auto_scaling_specification
    #   <p>The optional auto scaling settings for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity automatically on your behalf.</p> <p>Auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>By default, auto scaling is disabled for a table. </p>
    #   @return [Types::AutoScalingSpecification]
    # @!attribute replica_specifications
    #   <p>The optional Amazon Web Services Region specific settings of a multi-Region table. These settings overwrite the general settings of the table for the specified Region. </p> <p>For a multi-Region table in provisioned capacity mode, you can configure the table's read capacity differently for each Region's replica. The write capacity, however, remains synchronized between all replicas to ensure that there's enough capacity to replicate writes across all Regions. To define the read capacity for a table replica in a specific Region, you can do so by configuring the following parameters.</p> <ul> <li> <p> <code>region</code>: The Region where these settings are applied. (Required)</p> </li> <li> <p> <code>readCapacityUnits</code>: The provisioned read capacity units. (Optional)</p> </li> <li> <p> <code>readCapacityAutoScaling</code>: The read capacity auto scaling settings for the table. (Optional) </p> </li> </ul>
    #   @return [Array<Types::ReplicaSpecification>]
    # @!attribute cdc_specification
    #   <p>The CDC stream settings of the table.</p>
    #   @return [Types::CdcSpecification]
    # @!attribute warm_throughput_specification
    #   <p>Specifies the warm throughput settings for the table. Pre-warming a table helps you avoid capacity exceeded exceptions by pre-provisioning read and write capacity units to reduce cold start latency when your table receives traffic.</p> <p>For more information about pre-warming in Amazon Keyspaces, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/warm-throughput.html">Pre-warm a table in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::WarmThroughputSpecification]
    class CreateTableInput < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      :schema_definition,
      :comment,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :tags,
      :client_side_timestamps,
      :auto_scaling_specification,
      :replica_specifications,
      :cdc_specification,
      :warm_throughput_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class CreateTableOutput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace. </p>
    #   @return [String]
    # @!attribute type_name
    #   <p> The name of the user-defined type. </p> <p>UDT names must contain 48 characters or less, must begin with an alphabetic character, and can only contain alpha-numeric characters and underscores. Amazon Keyspaces converts upper case characters automatically into lower case characters. </p> <p>Alternatively, you can declare a UDT name in double quotes. When declaring a UDT name inside double quotes, Amazon Keyspaces preserves upper casing and allows special characters.</p> <p>You can also use double quotes as part of the name when you create the UDT, but you must escape each double quote character with an additional double quote character.</p>
    #   @return [String]
    # @!attribute field_definitions
    #   <p> The field definitions, consisting of names and types, that define this type. </p>
    #   @return [Array<Types::FieldDefinition>]
    class CreateTypeRequest < Struct.new(
      nil,
      :keyspace_name,
      :type_name,
      :field_definitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_arn
    #   <p> The unique identifier of the keyspace that contains the new type in the format of an Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute type_name
    #   <p> The formatted name of the user-defined type that was created. Note that Amazon Keyspaces requires the formatted name of the type for other operations, for example <code>GetType</code>. </p>
    #   @return [String]
    class CreateTypeResponse < Struct.new(
      nil,
      :keyspace_arn,
      :type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace to be deleted.</p>
    #   @return [String]
    class DeleteKeyspaceInput < Struct.new(
      nil,
      :keyspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteKeyspaceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace of the to be deleted table.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table to be deleted.</p>
    #   @return [String]
    class DeleteTableInput < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTableOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace of the to be deleted type. </p>
    #   @return [String]
    # @!attribute type_name
    #   <p> The name of the type to be deleted. </p>
    #   @return [String]
    class DeleteTypeRequest < Struct.new(
      nil,
      :keyspace_name,
      :type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_arn
    #   <p> The unique identifier of the keyspace from which the type was deleted in the format of an Amazon Resource Name (ARN). </p>
    #   @return [String]
    # @!attribute type_name
    #   <p> The name of the type that was deleted. </p>
    #   @return [String]
    class DeleteTypeResponse < Struct.new(
      nil,
      :keyspace_arn,
      :type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Keyspaces encrypts and decrypts the table data at rest transparently and integrates with Key Management Service for storing and managing the encryption key. You can choose one of the following KMS keys (KMS keys):</p> <ul> <li> <p>Amazon Web Services owned key - This is the default encryption type. The key is owned by Amazon Keyspaces (no additional charge). </p> </li> <li> <p>Customer managed key - This key is stored in your account and is created, owned, and managed by you. You have full control over the customer managed key (KMS charges apply).</p> </li> </ul> <p>For more information about encryption at rest in Amazon Keyspaces, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> <p>For more information about KMS, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">KMS management service concepts</a> in the <i>Key Management Service Developer Guide</i>.</p>
    # @!attribute type
    #   <p>The encryption option specified for the table. You can choose one of the following KMS keys (KMS keys):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute kms_key_identifier
    #   <p>The Amazon Resource Name (ARN) of the customer managed KMS key, for example <code>kms_key_identifier:ARN</code>.</p>
    #   @return [String]
    class EncryptionSpecification < Struct.new(
      nil,
      :type,
      :kms_key_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A field definition consists out of a name and a type. </p>
    # @!attribute name
    #   <p> The identifier. </p>
    #   @return [String]
    # @!attribute type
    #   <p> Any supported Cassandra data type, including collections and other user-defined types that are contained in the same keyspace. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html#cassandra-data-type">Cassandra data type support</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [String]
    class FieldDefinition < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    class GetKeyspaceInput < Struct.new(
      nil,
      :keyspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>Returns the ARN of the keyspace.</p>
    #   @return [String]
    # @!attribute replication_strategy
    #   <p> Returns the replication strategy of the keyspace. The options are <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>
    #   @return [String]
    # @!attribute replication_regions
    #   <p> If the <code>replicationStrategy</code> of the keyspace is <code>MULTI_REGION</code>, a list of replication Regions is returned. </p>
    #   @return [Array<String>]
    # @!attribute replication_group_statuses
    #   <p> A list of all Regions the keyspace is replicated in after the update keyspace operation and their status. </p>
    #   @return [Array<Types::ReplicationGroupStatus>]
    class GetKeyspaceOutput < Struct.new(
      nil,
      :keyspace_name,
      :resource_arn,
      :replication_strategy,
      :replication_regions,
      :replication_group_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableAutoScalingSettingsRequest < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the table.</p>
    #   @return [String]
    # @!attribute auto_scaling_specification
    #   <p>The auto scaling settings of the table.</p>
    #   @return [Types::AutoScalingSpecification]
    # @!attribute replica_specifications
    #   <p>The Amazon Web Services Region specific settings of a multi-Region table. Returns the settings for all Regions the table is replicated in.</p>
    #   @return [Array<Types::ReplicaAutoScalingSpecification>]
    class GetTableAutoScalingSettingsResponse < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      :resource_arn,
      :auto_scaling_specification,
      :replica_specifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    class GetTableInput < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the specified table is stored in.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the specified table.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the specified table.</p>
    #   @return [String]
    # @!attribute creation_timestamp
    #   <p>The creation timestamp of the specified table.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>The current status of the specified table.</p>
    #   @return [String]
    # @!attribute schema_definition
    #   <p>The schema definition of the specified table.</p>
    #   @return [Types::SchemaDefinition]
    # @!attribute capacity_specification
    #   <p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> </p> </li> </ul>
    #   @return [Types::CapacitySpecificationSummary]
    # @!attribute encryption_specification
    #   <p>The encryption settings of the specified table.</p>
    #   @return [Types::EncryptionSpecification]
    # @!attribute point_in_time_recovery
    #   <p>The point-in-time recovery status of the specified table.</p>
    #   @return [Types::PointInTimeRecoverySummary]
    # @!attribute ttl
    #   <p>The custom Time to Live settings of the specified table.</p>
    #   @return [Types::TimeToLive]
    # @!attribute default_time_to_live
    #   <p>The default Time to Live settings in seconds of the specified table.</p>
    #   @return [Integer]
    # @!attribute comment
    #   <p>The the description of the specified table.</p>
    #   @return [Types::Comment]
    # @!attribute client_side_timestamps
    #   <p> The client-side timestamps setting of the table.</p>
    #   @return [Types::ClientSideTimestamps]
    # @!attribute replica_specifications
    #   <p>Returns the Amazon Web Services Region specific settings of all Regions a multi-Region table is replicated in.</p>
    #   @return [Array<Types::ReplicaSpecificationSummary>]
    # @!attribute latest_stream_arn
    #   <p>The Amazon Resource Name (ARN) of the stream.</p>
    #   @return [String]
    # @!attribute cdc_specification
    #   <p>The CDC stream settings of the table.</p>
    #   @return [Types::CdcSpecificationSummary]
    # @!attribute warm_throughput_specification
    #   <p>The warm throughput settings for the table, including the current status and configured read and write capacity units.</p>
    #   @return [Types::WarmThroughputSpecificationSummary]
    class GetTableOutput < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      :resource_arn,
      :creation_timestamp,
      :status,
      :schema_definition,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :comment,
      :client_side_timestamps,
      :replica_specifications,
      :latest_stream_arn,
      :cdc_specification,
      :warm_throughput_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace that contains this type. </p>
    #   @return [String]
    # @!attribute type_name
    #   <p>The formatted name of the type. For example, if the name of the type was created without double quotes, Amazon Keyspaces saved the name in lower-case characters. If the name was created in double quotes, you must use double quotes to specify the type name. </p>
    #   @return [String]
    class GetTypeRequest < Struct.new(
      nil,
      :keyspace_name,
      :type_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace that contains this type. </p>
    #   @return [String]
    # @!attribute type_name
    #   <p> The name of the type. </p>
    #   @return [String]
    # @!attribute field_definitions
    #   <p> The names and types that define this type. </p>
    #   @return [Array<Types::FieldDefinition>]
    # @!attribute last_modified_timestamp
    #   <p> The timestamp that shows when this type was last modified. </p>
    #   @return [Time]
    # @!attribute status
    #   <p> The status of this type. </p>
    #   @return [String]
    # @!attribute direct_referring_tables
    #   <p> The tables that use this type. </p>
    #   @return [Array<String>]
    # @!attribute direct_parent_types
    #   <p> The types that use this type. </p>
    #   @return [Array<String>]
    # @!attribute max_nesting_depth
    #   <p> The level of nesting implemented for this type. </p>
    #   @return [Integer]
    # @!attribute keyspace_arn
    #   <p> The unique identifier of the keyspace that contains this type in the format of an Amazon Resource Name (ARN). </p>
    #   @return [String]
    class GetTypeResponse < Struct.new(
      nil,
      :keyspace_name,
      :type_name,
      :field_definitions,
      :last_modified_timestamp,
      :status,
      :direct_referring_tables,
      :direct_parent_types,
      :max_nesting_depth,
      :keyspace_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:max_nesting_depth] = 0 unless options.key?(:max_nesting_depth)
        super
      end
    end

    # <p>Amazon Keyspaces was unable to fully process this request because of an internal server error.</p>
    # @!attribute message
    #   <p>An internal service error occurred. Retry your request. If the problem persists, contact Amazon Web Services Support.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents the properties of a keyspace.</p>
    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute replication_strategy
    #   <p> This property specifies if a keyspace is a single Region keyspace or a multi-Region keyspace. The available values are <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>
    #   @return [String]
    # @!attribute replication_regions
    #   <p> If the <code>replicationStrategy</code> of the keyspace is <code>MULTI_REGION</code>, a list of replication Regions is returned. </p>
    #   @return [Array<String>]
    class KeyspaceSummary < Struct.new(
      nil,
      :keyspace_name,
      :resource_arn,
      :replication_strategy,
      :replication_regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of keyspaces to return in the output. If the total number of keyspaces available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListKeyspacesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #   @return [String]
    # @!attribute keyspaces
    #   <p>A list of keyspaces.</p>
    #   @return [Array<Types::KeyspaceSummary>]
    class ListKeyspacesOutput < Struct.new(
      nil,
      :next_token,
      :keyspaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of tables to return in the output. If the total number of tables available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    # @!attribute keyspace_name
    #   <p>The name of the keyspace.</p>
    #   @return [String]
    class ListTablesInput < Struct.new(
      nil,
      :next_token,
      :max_results,
      :keyspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #   @return [String]
    # @!attribute tables
    #   <p>A list of tables.</p>
    #   @return [Array<Types::TableSummary>]
    class ListTablesOutput < Struct.new(
      nil,
      :next_token,
      :tables,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The pagination token. To resume pagination, provide the <code>NextToken</code> value as argument of a subsequent API invocation.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of tags to return in the output. If the total number of tags available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation.</p>
    #   @return [Integer]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>A token to specify where to start paginating. This is the <code>NextToken</code> from a previously truncated response.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :next_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The total number of types to return in the output. If the total number of types available is more than the value specified, a <code>NextToken</code> is provided in the output. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>
    #   @return [Integer]
    # @!attribute keyspace_name
    #   <p> The name of the keyspace that contains the listed types. </p>
    #   @return [String]
    class ListTypesRequest < Struct.new(
      nil,
      :next_token,
      :max_results,
      :keyspace_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The pagination token. To resume pagination, provide the <code>NextToken</code> value as an argument of a subsequent API invocation. </p>
    #   @return [String]
    # @!attribute types
    #   <p> The list of types contained in the specified keyspace. </p>
    #   @return [Array<String>]
    class ListTypesResponse < Struct.new(
      nil,
      :next_token,
      :types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The partition key portion of the primary key is required and determines how Amazon Keyspaces stores the data. The partition key can be a single column, or it can be a compound value composed of two or more columns.</p>
    # @!attribute name
    #   <p>The name(s) of the partition key column(s).</p>
    #   @return [String]
    class PartitionKey < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Point-in-time recovery (PITR) helps protect your Amazon Keyspaces tables from accidental write or delete operations by providing you continuous backups of your table data.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute status
    #   <p>The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul>
    #   @return [String]
    class PointInTimeRecovery < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The point-in-time recovery status of the specified table.</p>
    # @!attribute status
    #   <p>Shows if point-in-time recovery is enabled or disabled for the specified table.</p>
    #   @return [String]
    # @!attribute earliest_restorable_timestamp
    #   <p>Specifies the earliest possible restore point of the table in ISO 8601 format.</p>
    #   @return [Time]
    class PointInTimeRecoverySummary < Struct.new(
      nil,
      :status,
      :earliest_restorable_timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The auto scaling settings of a multi-Region table in the specified Amazon Web Services Region.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute auto_scaling_specification
    #   <p>The auto scaling settings for a multi-Region table in the specified Amazon Web Services Region.</p>
    #   @return [Types::AutoScalingSpecification]
    class ReplicaAutoScalingSpecification < Struct.new(
      nil,
      :region,
      :auto_scaling_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services Region specific settings of a multi-Region table.</p> <p>For a multi-Region table, you can configure the table's read capacity differently per Amazon Web Services Region. You can do this by configuring the following parameters.</p> <ul> <li> <p> <code>region</code>: The Region where these settings are applied. (Required)</p> </li> <li> <p> <code>readCapacityUnits</code>: The provisioned read capacity units. (Optional)</p> </li> <li> <p> <code>readCapacityAutoScaling</code>: The read capacity auto scaling settings for the table. (Optional)</p> </li> </ul>
    # @!attribute region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute read_capacity_units
    #   <p>The provisioned read capacity units for the multi-Region table in the specified Amazon Web Services Region.</p>
    #   @return [Integer]
    # @!attribute read_capacity_auto_scaling
    #   <p>The read capacity auto scaling settings for the multi-Region table in the specified Amazon Web Services Region.</p>
    #   @return [Types::AutoScalingSettings]
    class ReplicaSpecification < Struct.new(
      nil,
      :region,
      :read_capacity_units,
      :read_capacity_auto_scaling,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Region-specific settings of a multi-Region table in the specified Amazon Web Services Region.</p> <p>If the multi-Region table is using provisioned capacity and has optional auto scaling policies configured, note that the Region specific summary returns both read and write capacity settings. But only Region specific read capacity settings can be configured for a multi-Region table. In a multi-Region table, your write capacity units will be synced across all Amazon Web Services Regions to ensure that there is enough capacity to replicate write events across Regions.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the multi-Region table in the specified Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute capacity_specification
    #   <p>The read/write throughput capacity mode for a table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code>.</p> </li> </ul> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::CapacitySpecificationSummary]
    # @!attribute warm_throughput_specification
    #   <p>The warm throughput settings for this replica, including the current status and configured read and write capacity units.</p>
    #   @return [Types::WarmThroughputSpecificationSummary]
    class ReplicaSpecificationSummary < Struct.new(
      nil,
      :region,
      :status,
      :capacity_specification,
      :warm_throughput_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> This shows the summary status of the keyspace after a new Amazon Web Services Region was added. </p>
    # @!attribute region
    #   <p> The name of the Region that was added to the keyspace. </p>
    #   @return [String]
    # @!attribute keyspace_status
    #   <p> The status of the keyspace. </p>
    #   @return [String]
    # @!attribute tables_replication_progress
    #   <p> This shows the replication progress of tables in the keyspace. The value is expressed as a percentage of the newly replicated tables with status <code>Active</code> compared to the total number of tables in the keyspace. </p>
    #   @return [String]
    class ReplicationGroupStatus < Struct.new(
      nil,
      :region,
      :keyspace_status,
      :tables_replication_progress,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>regionList</code> - the Amazon Web Services Regions where the keyspace is replicated in.</p> </li> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> </ul>
    # @!attribute replication_strategy
    #   <p> The <code>replicationStrategy</code> of a keyspace, the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>. </p>
    #   @return [String]
    # @!attribute region_list
    #   <p> The <code>regionList</code> contains the Amazon Web Services Regions where the keyspace is replicated in. </p>
    #   @return [Array<String>]
    class ReplicationSpecification < Struct.new(
      nil,
      :replication_strategy,
      :region_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation tried to access a keyspace, table, or type that doesn't exist. The resource might not be specified correctly, or its status might not be <code>ACTIVE</code>.</p>
    # @!attribute message
    #   <p>The specified resource was not found. Verify the resource identifier and ensure the resource exists and is in an ACTIVE state.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The unique identifier in the format of Amazon Resource Name (ARN) for the resource couldn't be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_keyspace_name
    #   <p>The keyspace name of the source table.</p>
    #   @return [String]
    # @!attribute source_table_name
    #   <p>The name of the source table.</p>
    #   @return [String]
    # @!attribute target_keyspace_name
    #   <p>The name of the target keyspace.</p>
    #   @return [String]
    # @!attribute target_table_name
    #   <p>The name of the target table.</p>
    #   @return [String]
    # @!attribute restore_timestamp
    #   <p>The restore timestamp in ISO 8601 format.</p>
    #   @return [Time]
    # @!attribute capacity_specification_override
    #   <p>Specifies the read/write throughput capacity mode for the target table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::CapacitySpecification]
    # @!attribute encryption_specification_override
    #   <p>Specifies the encryption settings for the target table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>type:AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::EncryptionSpecification]
    # @!attribute point_in_time_recovery_override
    #   <p>Specifies the <code>pointInTimeRecovery</code> settings for the target table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::PointInTimeRecovery]
    # @!attribute tags_override
    #   <p>A list of key-value pair tags to be attached to the restored table. </p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute auto_scaling_specification
    #   <p>The optional auto scaling settings for the restored table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::AutoScalingSpecification]
    # @!attribute replica_specifications
    #   <p>The optional Region specific settings of a multi-Regional table.</p>
    #   @return [Array<Types::ReplicaSpecification>]
    class RestoreTableInput < Struct.new(
      nil,
      :source_keyspace_name,
      :source_table_name,
      :target_keyspace_name,
      :target_table_name,
      :restore_timestamp,
      :capacity_specification_override,
      :encryption_specification_override,
      :point_in_time_recovery_override,
      :tags_override,
      :auto_scaling_specification,
      :replica_specifications,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute restored_table_arn
    #   <p>The Amazon Resource Name (ARN) of the restored table.</p>
    #   @return [String]
    class RestoreTableOutput < Struct.new(
      nil,
      :restored_table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes the schema of the table.</p>
    # @!attribute all_columns
    #   <p>The regular columns of the table.</p>
    #   @return [Array<Types::ColumnDefinition>]
    # @!attribute partition_keys
    #   <p>The columns that are part of the partition key of the table .</p>
    #   @return [Array<Types::PartitionKey>]
    # @!attribute clustering_keys
    #   <p>The columns that are part of the clustering key of the table.</p>
    #   @return [Array<Types::ClusteringKey>]
    # @!attribute static_columns
    #   <p>The columns that have been defined as <code>STATIC</code>. Static columns store values that are shared by all rows in the same partition.</p>
    #   @return [Array<Types::StaticColumn>]
    class SchemaDefinition < Struct.new(
      nil,
      :all_columns,
      :partition_keys,
      :clustering_keys,
      :static_columns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation exceeded the service quota for this resource. For more information on service quotas, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/quotas.html">Quotas</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute message
    #   <p>The requested operation would exceed the service quota for this resource. Review the service quotas and adjust your request accordingly.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The static columns of the table. Static columns store values that are shared by all rows in the same partition.</p>
    # @!attribute name
    #   <p>The name of the static column.</p>
    #   @return [String]
    class StaticColumn < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the name of the specified table, the keyspace it is stored in, and the unique identifier in the format of an Amazon Resource Name (ARN).</p>
    # @!attribute keyspace_name
    #   <p>The name of the keyspace that the table is stored in.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The unique identifier of the table in the format of an Amazon Resource Name (ARN).</p>
    #   @return [String]
    class TableSummary < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a tag. A tag is a key-value pair. You can add up to 50 tags to a single Amazon Keyspaces resource.</p> <p>Amazon Web Services-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. Amazon Web Services-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code> in the Cost Allocation Report. You cannot backdate the application of a tag.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html">Adding tags and labels to Amazon Keyspaces resources</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute key
    #   <p>The key of the tag. Tag keys are case sensitive. Each Amazon Keyspaces resource can only have up to one tag with the same key. If you try to add an existing tag (same key), the existing tag value will be updated to the new value.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag. Tag values are case-sensitive and can be null.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be assigned to the Amazon Keyspaces resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The auto scaling policy that scales a table based on the ratio of consumed to provisioned capacity.</p>
    # @!attribute disable_scale_in
    #   <p>Specifies if <code>scale-in</code> is enabled.</p> <p>When auto scaling automatically decreases capacity for a table, the table <i>scales in</i>. When scaling policies are set, they can't scale in the table lower than its minimum capacity.</p>
    #   @return [Boolean]
    # @!attribute scale_in_cooldown
    #   <p>Specifies a <code>scale-in</code> cool down period.</p> <p>A cooldown period in seconds between scaling activities that lets the table stabilize before another scaling activity starts. </p>
    #   @return [Integer]
    # @!attribute scale_out_cooldown
    #   <p>Specifies a scale out cool down period.</p> <p>A cooldown period in seconds between scaling activities that lets the table stabilize before another scaling activity starts. </p>
    #   @return [Integer]
    # @!attribute target_value
    #   <p>Specifies the target value for the target tracking auto scaling policy.</p> <p>Amazon Keyspaces auto scaling scales up capacity automatically when traffic exceeds this target utilization rate, and then back down when it falls below the target. This ensures that the ratio of consumed capacity to provisioned capacity stays at or near this value. You define <code>targetValue</code> as a percentage. A <code>double</code> between 20 and 90.</p>
    #   @return [Float]
    class TargetTrackingScalingPolicyConfiguration < Struct.new(
      nil,
      :disable_scale_in,
      :scale_in_cooldown,
      :scale_out_cooldown,
      :target_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:disable_scale_in] = false unless options.key?(:disable_scale_in)
        options[:scale_in_cooldown] = 0 unless options.key?(:scale_in_cooldown)
        options[:scale_out_cooldown] = 0 unless options.key?(:scale_out_cooldown)
        options[:target_value] = 0 unless options.key?(:target_value)
        super
      end
    end

    # <p>Enable custom Time to Live (TTL) settings for rows and columns without setting a TTL default for the specified table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_enabling">Enabling TTL on tables</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute status
    #   <p>Shows how to enable custom Time to Live (TTL) settings for the specified table.</p>
    #   @return [String]
    class TimeToLive < Struct.new(
      nil,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Keyspaces resource that the tags will be removed from. This value is an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of existing tags to be removed from the Amazon Keyspaces resource.</p>
    #   @return [Array<Types::Tag>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p> The name of the keyspace. </p>
    #   @return [String]
    # @!attribute replication_specification
    #   <p> The replication specification of the keyspace includes:</p> <ul> <li> <p> <code>regionList</code> - the Amazon Web Services Regions where the keyspace is replicated in.</p> </li> <li> <p> <code>replicationStrategy</code> - the required value is <code>SINGLE_REGION</code> or <code>MULTI_REGION</code>.</p> </li> </ul>
    #   @return [Types::ReplicationSpecification]
    # @!attribute client_side_timestamps
    #   <p>The client-side timestamp setting of the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps-how-it-works.html">How it works: Amazon Keyspaces client-side timestamps</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::ClientSideTimestamps]
    class UpdateKeyspaceRequest < Struct.new(
      nil,
      :keyspace_name,
      :replication_specification,
      :client_side_timestamps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The unique identifier of the keyspace in the format of an Amazon Resource Name (ARN). </p>
    #   @return [String]
    class UpdateKeyspaceResponse < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute keyspace_name
    #   <p>The name of the keyspace the specified table is stored in.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute add_columns
    #   <p>For each column to be added to the specified table:</p> <ul> <li> <p> <code>name</code> - The name of the column.</p> </li> <li> <p> <code>type</code> - An Amazon Keyspaces data type. For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types">Data types</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p> </li> </ul>
    #   @return [Array<Types::ColumnDefinition>]
    # @!attribute capacity_specification
    #   <p>Modifies the read/write throughput capacity mode for the table. The options are:</p> <ul> <li> <p> <code>throughputMode:PAY_PER_REQUEST</code> and </p> </li> <li> <p> <code>throughputMode:PROVISIONED</code> - Provisioned capacity mode requires <code>readCapacityUnits</code> and <code>writeCapacityUnits</code> as input.</p> </li> </ul> <p>The default is <code>throughput_mode:PAY_PER_REQUEST</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html">Read/write capacity modes</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::CapacitySpecification]
    # @!attribute encryption_specification
    #   <p>Modifies the encryption settings of the table. You can choose one of the following KMS key (KMS key):</p> <ul> <li> <p> <code>type:AWS_OWNED_KMS_KEY</code> - This key is owned by Amazon Keyspaces. </p> </li> <li> <p> <code>type:CUSTOMER_MANAGED_KMS_KEY</code> - This key is stored in your account and is created, owned, and managed by you. This option requires the <code>kms_key_identifier</code> of the KMS key in Amazon Resource Name (ARN) format as input. </p> </li> </ul> <p>The default is <code>AWS_OWNED_KMS_KEY</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html">Encryption at rest</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::EncryptionSpecification]
    # @!attribute point_in_time_recovery
    #   <p>Modifies the <code>pointInTimeRecovery</code> settings of the table. The options are:</p> <ul> <li> <p> <code>status=ENABLED</code> </p> </li> <li> <p> <code>status=DISABLED</code> </p> </li> </ul> <p>If it's not specified, the default is <code>status=DISABLED</code>.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html">Point-in-time recovery</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::PointInTimeRecovery]
    # @!attribute ttl
    #   <p>Modifies Time to Live custom settings for the table. The options are:</p> <ul> <li> <p> <code>status:enabled</code> </p> </li> <li> <p> <code>status:disabled</code> </p> </li> </ul> <p>The default is <code>status:disabled</code>. After <code>ttl</code> is enabled, you can't disable it for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html">Expiring data by using Amazon Keyspaces Time to Live (TTL)</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::TimeToLive]
    # @!attribute default_time_to_live
    #   <p>The default Time to Live setting in seconds for the table.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl">Setting the default TTL value for a table</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute client_side_timestamps
    #   <p>Enables client-side timestamps for the table. By default, the setting is disabled. You can enable client-side timestamps with the following option:</p> <ul> <li> <p> <code>status: "enabled"</code> </p> </li> </ul> <p>Once client-side timestamps are enabled for a table, this setting cannot be disabled.</p>
    #   @return [Types::ClientSideTimestamps]
    # @!attribute auto_scaling_specification
    #   <p>The optional auto scaling settings to update for a table in provisioned capacity mode. Specifies if the service can manage throughput capacity of a provisioned table automatically on your behalf. Amazon Keyspaces auto scaling helps you provision throughput capacity for variable workloads efficiently by increasing and decreasing your table's read and write capacity automatically in response to application traffic.</p> <p>If auto scaling is already enabled for the table, you can use <code>UpdateTable</code> to update the minimum and maximum values or the auto scaling policy settings independently.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/autoscaling.html">Managing throughput capacity automatically with Amazon Keyspaces auto scaling</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    #   @return [Types::AutoScalingSpecification]
    # @!attribute replica_specifications
    #   <p>The Region specific settings of a multi-Regional table.</p>
    #   @return [Array<Types::ReplicaSpecification>]
    # @!attribute cdc_specification
    #   <p>The CDC stream settings of the table.</p>
    #   @return [Types::CdcSpecification]
    # @!attribute warm_throughput_specification
    #   <p>Modifies the warm throughput settings for the table. You can update the read and write capacity units to adjust the pre-provisioned throughput.</p>
    #   @return [Types::WarmThroughputSpecification]
    class UpdateTableInput < Struct.new(
      nil,
      :keyspace_name,
      :table_name,
      :add_columns,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :client_side_timestamps,
      :auto_scaling_specification,
      :replica_specifications,
      :cdc_specification,
      :warm_throughput_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the modified table.</p>
    #   @return [String]
    class UpdateTableOutput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed due to an invalid or malformed request.</p>
    # @!attribute message
    #   <p>The request parameters are invalid or malformed. Review the API documentation and correct the request format.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the warm throughput settings for a table. Pre-warming a table by specifying warm throughput pre-provisions read and write capacity units to help avoid capacity exceeded exceptions and reduce latency when your table starts receiving traffic.</p> <p>For more information about pre-warming in Amazon Keyspaces, see <a href="https://docs.aws.amazon.com/keyspaces/latest/devguide/warm-throughput.html">Pre-warm a table in Amazon Keyspaces</a> in the <i>Amazon Keyspaces Developer Guide</i>.</p>
    # @!attribute read_units_per_second
    #   <p>The number of read capacity units per second to pre-warm the table for read capacity throughput. The minimum value is 1.</p>
    #   @return [Integer]
    # @!attribute write_units_per_second
    #   <p>The number of write capacity units per second to pre-warm the table for write capacity throughput. The minimum value is 1.</p>
    #   @return [Integer]
    class WarmThroughputSpecification < Struct.new(
      nil,
      :read_units_per_second,
      :write_units_per_second,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:read_units_per_second] = nil unless options.key?(:read_units_per_second)
        options[:write_units_per_second] = nil unless options.key?(:write_units_per_second)
        super
      end
    end

    # <p>Contains the current warm throughput settings for a table, including the configured capacity units and the current status of the warm throughput configuration.</p>
    # @!attribute read_units_per_second
    #   <p>The number of read capacity units per second currently configured for warm throughput.</p>
    #   @return [Integer]
    # @!attribute write_units_per_second
    #   <p>The number of write capacity units per second currently configured for warm throughput.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the warm throughput configuration. Valid values are <code>AVAILABLE</code> when the configuration is active, and <code>UPDATING</code> when changes are being applied.</p>
    #   @return [String]
    class WarmThroughputSpecificationSummary < Struct.new(
      nil,
      :read_units_per_second,
      :write_units_per_second,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
