# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Keyspaces
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Keyspaces has two read/write capacity modes for processing
    # reads and writes on your tables:
    #
    # * On-demand (default)
    #
    # * Provisioned
    #
    # The read/write capacity mode that you choose controls how you are
    # charged for read and write throughput and how table throughput
    # capacity is managed.
    #
    # For more information, see [Read/write capacity modes][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @!attribute [rw] throughput_mode
    #   The read/write throughput capacity mode for a table. The options
    #   are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #   @return [String]
    #
    # @!attribute [rw] read_capacity_units
    #   The throughput capacity specified for `read` operations defined in
    #   `read capacity units` `(RCUs)`.
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The throughput capacity specified for `write` operations defined in
    #   `write capacity units` `(WCUs)`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CapacitySpecification AWS API Documentation
    #
    class CapacitySpecification < Struct.new(
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The read/write throughput capacity mode for a table. The options are:
    #
    # * `throughputMode:PAY_PER_REQUEST` and
    #
    # * `throughputMode:PROVISIONED`.
    #
    # For more information, see [Read/write capacity modes][1] in the
    # *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #
    # @!attribute [rw] throughput_mode
    #   The read/write throughput capacity mode for a table. The options
    #   are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #   @return [String]
    #
    # @!attribute [rw] read_capacity_units
    #   The throughput capacity specified for `read` operations defined in
    #   `read capacity units` `(RCUs)`.
    #   @return [Integer]
    #
    # @!attribute [rw] write_capacity_units
    #   The throughput capacity specified for `write` operations defined in
    #   `write capacity units` `(WCUs)`.
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_to_pay_per_request_timestamp
    #   The timestamp of the last operation that changed the provisioned
    #   throughput capacity of a table.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CapacitySpecificationSummary AWS API Documentation
    #
    class CapacitySpecificationSummary < Struct.new(
      :throughput_mode,
      :read_capacity_units,
      :write_capacity_units,
      :last_update_to_pay_per_request_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client-side timestamp setting of the table.
    #
    # For more information, see [How it works: Amazon Keyspaces client-side
    # timestamps][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/client-side-timestamps-how-it-works.html
    #
    # @!attribute [rw] status
    #   Shows how to enable client-side timestamps settings for the
    #   specified table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ClientSideTimestamps AWS API Documentation
    #
    class ClientSideTimestamps < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The optional clustering column portion of your primary key determines
    # how the data is clustered and sorted within each partition.
    #
    # @!attribute [rw] name
    #   The name(s) of the clustering column(s).
    #   @return [String]
    #
    # @!attribute [rw] order_by
    #   Sets the ascendant (`ASC`) or descendant (`DESC`) order modifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ClusteringKey AWS API Documentation
    #
    class ClusteringKey < Struct.new(
      :name,
      :order_by)
      SENSITIVE = []
      include Aws::Structure
    end

    # The names and data types of regular columns.
    #
    # @!attribute [rw] name
    #   The name of the column.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The data type of the column. For a list of available data types, see
    #   [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ColumnDefinition AWS API Documentation
    #
    class ColumnDefinition < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An optional comment that describes the table.
    #
    # @!attribute [rw] message
    #   An optional description of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/Comment AWS API Documentation
    #
    class Comment < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Keyspaces could not complete the requested action. This error
    # may occur if you try to perform an action and the same or a different
    # action is already in progress, or if you try to create a resource that
    # already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace to be created.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of key-value pair tags to be attached to the keyspace.
    #
    #   For more information, see [Adding tags and labels to Amazon
    #   Keyspaces resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] replication_specification
    #   The replication specification of the keyspace includes:
    #
    #   * `replicationStrategy` - the required value is `SINGLE_REGION` or
    #     `MULTI_REGION`.
    #
    #   * `regionList` - if the `replicationStrategy` is `MULTI_REGION`, the
    #     `regionList` requires the current Region and at least one
    #     additional Amazon Web Services Region where the keyspace is going
    #     to be replicated in. The maximum number of supported replication
    #     Regions including the current Region is six.
    #   @return [Types::ReplicationSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateKeyspaceRequest AWS API Documentation
    #
    class CreateKeyspaceRequest < Struct.new(
      :keyspace_name,
      :tags,
      :replication_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier of the keyspace in the format of an Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateKeyspaceResponse AWS API Documentation
    #
    class CreateKeyspaceResponse < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace that the table is going to be created in.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   The `schemaDefinition` consists of the following parameters.
    #
    #   For each column to be created:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #   The primary key of the table consists of the following columns:
    #
    #   * `partitionKeys` - The partition key can be a single column, or it
    #     can be a compound value composed of two or more columns. The
    #     partition key portion of the primary key is required and
    #     determines how Amazon Keyspaces stores your data.
    #
    #   * `name` - The name of each partition key column.
    #
    #   * `clusteringKeys` - The optional clustering column portion of your
    #     primary key determines how the data is clustered and sorted within
    #     each partition.
    #
    #   * `name` - The name of the clustering column.
    #
    #   * `orderBy` - Sets the ascendant (`ASC`) or descendant (`DESC`)
    #     order modifier.
    #
    #     To define a column as static use `staticColumns` - Static columns
    #     store values that are shared by all rows in the same partition:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #   @return [Types::SchemaDefinition]
    #
    # @!attribute [rw] comment
    #   This parameter allows to enter a description of the table.
    #   @return [Types::Comment]
    #
    # @!attribute [rw] capacity_specification
    #   Specifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #   @return [Types::CapacitySpecification]
    #
    # @!attribute [rw] encryption_specification
    #   Specifies how the encryption key for encryption at rest is managed
    #   for the table. You can choose one of the following KMS key (KMS
    #   key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your
    #     account and is created, owned, and managed by you. This option
    #     requires the `kms_key_identifier` of the KMS key in Amazon
    #     Resource Name (ARN) format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #   @return [Types::EncryptionSpecification]
    #
    # @!attribute [rw] point_in_time_recovery
    #   Specifies if `pointInTimeRecovery` is enabled or disabled for the
    #   table. The options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #   @return [Types::PointInTimeRecovery]
    #
    # @!attribute [rw] ttl
    #   Enables Time to Live custom settings for the table. The options are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #   @return [Types::TimeToLive]
    #
    # @!attribute [rw] default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of key-value pair tags to be attached to the resource.
    #
    #   For more information, see [Adding tags and labels to Amazon
    #   Keyspaces resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the
    #   setting is disabled. You can enable client-side timestamps with the
    #   following option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #   @return [Types::ClientSideTimestamps]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateTableRequest AWS API Documentation
    #
    class CreateTableRequest < Struct.new(
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
      :client_side_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The unique identifier of the table in the format of an Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/CreateTableResponse AWS API Documentation
    #
    class CreateTableResponse < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteKeyspaceRequest AWS API Documentation
    #
    class DeleteKeyspaceRequest < Struct.new(
      :keyspace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteKeyspaceResponse AWS API Documentation
    #
    class DeleteKeyspaceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace of the to be deleted table.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteTableRequest AWS API Documentation
    #
    class DeleteTableRequest < Struct.new(
      :keyspace_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/DeleteTableResponse AWS API Documentation
    #
    class DeleteTableResponse < Aws::EmptyStructure; end

    # Amazon Keyspaces encrypts and decrypts the table data at rest
    # transparently and integrates with Key Management Service for storing
    # and managing the encryption key. You can choose one of the following
    # KMS keys (KMS keys):
    #
    # * Amazon Web Services owned key - This is the default encryption type.
    #   The key is owned by Amazon Keyspaces (no additional charge).
    #
    # * Customer managed key - This key is stored in your account and is
    #   created, owned, and managed by you. You have full control over the
    #   customer managed key (KMS charges apply).
    #
    # For more information about encryption at rest in Amazon Keyspaces, see
    # [Encryption at rest][1] in the *Amazon Keyspaces Developer Guide*.
    #
    # For more information about KMS, see [KMS management service
    # concepts][1] in the *Key Management Service Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #
    # @!attribute [rw] type
    #   The encryption option specified for the table. You can choose one of
    #   the following KMS keys (KMS keys):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your
    #     account and is created, owned, and managed by you. This option
    #     requires the `kms_key_identifier` of the KMS key in Amazon
    #     Resource Name (ARN) format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_identifier
    #   The Amazon Resource Name (ARN) of the customer managed KMS key, for
    #   example `kms_key_identifier:ARN`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/EncryptionSpecification AWS API Documentation
    #
    class EncryptionSpecification < Struct.new(
      :type,
      :kms_key_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetKeyspaceRequest AWS API Documentation
    #
    class GetKeyspaceRequest < Struct.new(
      :keyspace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   Returns the ARN of the keyspace.
    #   @return [String]
    #
    # @!attribute [rw] replication_strategy
    #   Returns the replication strategy of the keyspace. The options are
    #   `SINGLE_REGION` or `MULTI_REGION`.
    #   @return [String]
    #
    # @!attribute [rw] replication_regions
    #   If the `replicationStrategy` of the keyspace is `MULTI_REGION`, a
    #   list of replication Regions is returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetKeyspaceResponse AWS API Documentation
    #
    class GetKeyspaceResponse < Struct.new(
      :keyspace_name,
      :resource_arn,
      :replication_strategy,
      :replication_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace that the table is stored in.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetTableRequest AWS API Documentation
    #
    class GetTableRequest < Struct.new(
      :keyspace_name,
      :table_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace that the specified table is stored in.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the specified table.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the specified table.
    #   @return [String]
    #
    # @!attribute [rw] creation_timestamp
    #   The creation timestamp of the specified table.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The current status of the specified table.
    #   @return [String]
    #
    # @!attribute [rw] schema_definition
    #   The schema definition of the specified table.
    #   @return [Types::SchemaDefinition]
    #
    # @!attribute [rw] capacity_specification
    #   The read/write throughput capacity mode for a table. The options
    #   are:
    #
    #   * `throughputMode:PAY_PER_REQUEST`
    #
    #   * `throughputMode:PROVISIONED`
    #   @return [Types::CapacitySpecificationSummary]
    #
    # @!attribute [rw] encryption_specification
    #   The encryption settings of the specified table.
    #   @return [Types::EncryptionSpecification]
    #
    # @!attribute [rw] point_in_time_recovery
    #   The point-in-time recovery status of the specified table.
    #   @return [Types::PointInTimeRecoverySummary]
    #
    # @!attribute [rw] ttl
    #   The custom Time to Live settings of the specified table.
    #   @return [Types::TimeToLive]
    #
    # @!attribute [rw] default_time_to_live
    #   The default Time to Live settings in seconds of the specified table.
    #   @return [Integer]
    #
    # @!attribute [rw] comment
    #   The the description of the specified table.
    #   @return [Types::Comment]
    #
    # @!attribute [rw] client_side_timestamps
    #   The client-side timestamps setting of the table.
    #   @return [Types::ClientSideTimestamps]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/GetTableResponse AWS API Documentation
    #
    class GetTableResponse < Struct.new(
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
      :client_side_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Keyspaces was unable to fully process this request because of
    # an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Represents the properties of a keyspace.
    #
    # @!attribute [rw] keyspace_name
    #   The name of the keyspace.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The unique identifier of the keyspace in the format of an Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] replication_strategy
    #   This property specifies if a keyspace is a single Region keyspace or
    #   a multi-Region keyspace. The available values are `SINGLE_REGION` or
    #   `MULTI_REGION`.
    #   @return [String]
    #
    # @!attribute [rw] replication_regions
    #   If the `replicationStrategy` of the keyspace is `MULTI_REGION`, a
    #   list of replication Regions is returned.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/KeyspaceSummary AWS API Documentation
    #
    class KeyspaceSummary < Struct.new(
      :keyspace_name,
      :resource_arn,
      :replication_strategy,
      :replication_regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of keyspaces to return in the output. If the total
    #   number of keyspaces available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListKeyspacesRequest AWS API Documentation
    #
    class ListKeyspacesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the
    #   `NextToken` from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] keyspaces
    #   A list of keyspaces.
    #   @return [Array<Types::KeyspaceSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListKeyspacesResponse AWS API Documentation
    #
    class ListKeyspacesResponse < Struct.new(
      :next_token,
      :keyspaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as an argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of tables to return in the output. If the total
    #   number of tables available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @!attribute [rw] keyspace_name
    #   The name of the keyspace.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTablesRequest AWS API Documentation
    #
    class ListTablesRequest < Struct.new(
      :next_token,
      :max_results,
      :keyspace_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the
    #   `NextToken` from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] tables
    #   A list of tables.
    #   @return [Array<Types::TableSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTablesResponse AWS API Documentation
    #
    class ListTablesResponse < Struct.new(
      :next_token,
      :tables)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The pagination token. To resume pagination, provide the `NextToken`
    #   value as argument of a subsequent API invocation.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of tags to return in the output. If the total
    #   number of tags available is more than the value specified, a
    #   `NextToken` is provided in the output. To resume pagination, provide
    #   the `NextToken` value as an argument of a subsequent API invocation.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   A token to specify where to start paginating. This is the
    #   `NextToken` from a previously truncated response.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :next_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The partition key portion of the primary key is required and
    # determines how Amazon Keyspaces stores the data. The partition key can
    # be a single column, or it can be a compound value composed of two or
    # more columns.
    #
    # @!attribute [rw] name
    #   The name(s) of the partition key column(s).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/PartitionKey AWS API Documentation
    #
    class PartitionKey < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Point-in-time recovery (PITR) helps protect your Amazon Keyspaces
    # tables from accidental write or delete operations by providing you
    # continuous backups of your table data.
    #
    # For more information, see [Point-in-time recovery][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #
    # @!attribute [rw] status
    #   The options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/PointInTimeRecovery AWS API Documentation
    #
    class PointInTimeRecovery < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The point-in-time recovery status of the specified table.
    #
    # @!attribute [rw] status
    #   Shows if point-in-time recovery is enabled or disabled for the
    #   specified table.
    #   @return [String]
    #
    # @!attribute [rw] earliest_restorable_timestamp
    #   Specifies the earliest possible restore point of the table in ISO
    #   8601 format.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/PointInTimeRecoverySummary AWS API Documentation
    #
    class PointInTimeRecoverySummary < Struct.new(
      :status,
      :earliest_restorable_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The replication specification of the keyspace includes:
    #
    # * `regionList` - up to six Amazon Web Services Regions where the
    #   keyspace is replicated in.
    #
    # * `replicationStrategy` - the required value is `SINGLE_REGION` or
    #   `MULTI_REGION`.
    #
    # @!attribute [rw] replication_strategy
    #   The `replicationStrategy` of a keyspace, the required value is
    #   `SINGLE_REGION` or `MULTI_REGION`.
    #   @return [String]
    #
    # @!attribute [rw] region_list
    #   The `regionList` can contain up to six Amazon Web Services Regions
    #   where the keyspace is replicated in.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ReplicationSpecification AWS API Documentation
    #
    class ReplicationSpecification < Struct.new(
      :replication_strategy,
      :region_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation tried to access a keyspace or table that doesn't exist.
    # The resource might not be specified correctly, or its status might not
    # be `ACTIVE`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The unique identifier in the format of Amazon Resource Name (ARN),
    #   for the resource not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_keyspace_name
    #   The keyspace name of the source table.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table.
    #   @return [String]
    #
    # @!attribute [rw] target_keyspace_name
    #   The name of the target keyspace.
    #   @return [String]
    #
    # @!attribute [rw] target_table_name
    #   The name of the target table.
    #   @return [String]
    #
    # @!attribute [rw] restore_timestamp
    #   The restore timestamp in ISO 8601 format.
    #   @return [Time]
    #
    # @!attribute [rw] capacity_specification_override
    #   Specifies the read/write throughput capacity mode for the target
    #   table. The options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST`
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #   @return [Types::CapacitySpecification]
    #
    # @!attribute [rw] encryption_specification_override
    #   Specifies the encryption settings for the target table. You can
    #   choose one of the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your
    #     account and is created, owned, and managed by you. This option
    #     requires the `kms_key_identifier` of the KMS key in Amazon
    #     Resource Name (ARN) format as input.
    #
    #   The default is `type:AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #   @return [Types::EncryptionSpecification]
    #
    # @!attribute [rw] point_in_time_recovery_override
    #   Specifies the `pointInTimeRecovery` settings for the target table.
    #   The options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #   @return [Types::PointInTimeRecovery]
    #
    # @!attribute [rw] tags_override
    #   A list of key-value pair tags to be attached to the restored table.
    #
    #   For more information, see [Adding tags and labels to Amazon
    #   Keyspaces resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/RestoreTableRequest AWS API Documentation
    #
    class RestoreTableRequest < Struct.new(
      :source_keyspace_name,
      :source_table_name,
      :target_keyspace_name,
      :target_table_name,
      :restore_timestamp,
      :capacity_specification_override,
      :encryption_specification_override,
      :point_in_time_recovery_override,
      :tags_override)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] restored_table_arn
    #   The Amazon Resource Name (ARN) of the restored table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/RestoreTableResponse AWS API Documentation
    #
    class RestoreTableResponse < Struct.new(
      :restored_table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the schema of the table.
    #
    # @!attribute [rw] all_columns
    #   The regular columns of the table.
    #   @return [Array<Types::ColumnDefinition>]
    #
    # @!attribute [rw] partition_keys
    #   The columns that are part of the partition key of the table .
    #   @return [Array<Types::PartitionKey>]
    #
    # @!attribute [rw] clustering_keys
    #   The columns that are part of the clustering key of the table.
    #   @return [Array<Types::ClusteringKey>]
    #
    # @!attribute [rw] static_columns
    #   The columns that have been defined as `STATIC`. Static columns store
    #   values that are shared by all rows in the same partition.
    #   @return [Array<Types::StaticColumn>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/SchemaDefinition AWS API Documentation
    #
    class SchemaDefinition < Struct.new(
      :all_columns,
      :partition_keys,
      :clustering_keys,
      :static_columns)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation exceeded the service quota for this resource. For more
    # information on service quotas, see [Quotas][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/quotas.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The static columns of the table. Static columns store values that are
    # shared by all rows in the same partition.
    #
    # @!attribute [rw] name
    #   The name of the static column.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/StaticColumn AWS API Documentation
    #
    class StaticColumn < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the name of the specified table, the keyspace it is stored in,
    # and the unique identifier in the format of an Amazon Resource Name
    # (ARN).
    #
    # @!attribute [rw] keyspace_name
    #   The name of the keyspace that the table is stored in.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The unique identifier of the table in the format of an Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TableSummary AWS API Documentation
    #
    class TableSummary < Struct.new(
      :keyspace_name,
      :table_name,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a tag. A tag is a key-value pair. You can add up to 50 tags
    # to a single Amazon Keyspaces resource.
    #
    # Amazon Web Services-assigned tag names and values are automatically
    # assigned the `aws:` prefix, which the user cannot assign. Amazon Web
    # Services-assigned tag names do not count towards the tag limit of 50.
    # User-assigned tag names have the prefix `user:` in the Cost Allocation
    # Report. You cannot backdate the application of a tag.
    #
    # For more information, see [Adding tags and labels to Amazon Keyspaces
    # resources][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html
    #
    # @!attribute [rw] key
    #   The key of the tag. Tag keys are case sensitive. Each Amazon
    #   Keyspaces resource can only have up to one tag with the same key. If
    #   you try to add an existing tag (same key), the existing tag value
    #   will be updated to the new value.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the tag. Tag values are case-sensitive and can be null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Amazon Keyspaces resource to
    #   which to add tags.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be assigned to the Amazon Keyspaces resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Enable custom Time to Live (TTL) settings for rows and columns without
    # setting a TTL default for the specified table.
    #
    # For more information, see [Enabling TTL on tables][1] in the *Amazon
    # Keyspaces Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_enabling
    #
    # @!attribute [rw] status
    #   Shows how to enable custom Time to Live (TTL) settings for the
    #   specified table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/TimeToLive AWS API Documentation
    #
    class TimeToLive < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Keyspaces resource that the tags will be removed from.
    #   This value is an Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of existing tags to be removed from the Amazon Keyspaces
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] keyspace_name
    #   The name of the keyspace the specified table is stored in.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] add_columns
    #   For each column to be added to the specified table:
    #
    #   * `name` - The name of the column.
    #
    #   * `type` - An Amazon Keyspaces data type. For more information, see
    #     [Data types][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/cql.elements.html#cql.data-types
    #   @return [Array<Types::ColumnDefinition>]
    #
    # @!attribute [rw] capacity_specification
    #   Modifies the read/write throughput capacity mode for the table. The
    #   options are:
    #
    #   * `throughputMode:PAY_PER_REQUEST` and
    #
    #   * `throughputMode:PROVISIONED` - Provisioned capacity mode requires
    #     `readCapacityUnits` and `writeCapacityUnits` as input.
    #
    #   The default is `throughput_mode:PAY_PER_REQUEST`.
    #
    #   For more information, see [Read/write capacity modes][1] in the
    #   *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/ReadWriteCapacityMode.html
    #   @return [Types::CapacitySpecification]
    #
    # @!attribute [rw] encryption_specification
    #   Modifies the encryption settings of the table. You can choose one of
    #   the following KMS key (KMS key):
    #
    #   * `type:AWS_OWNED_KMS_KEY` - This key is owned by Amazon Keyspaces.
    #
    #   * `type:CUSTOMER_MANAGED_KMS_KEY` - This key is stored in your
    #     account and is created, owned, and managed by you. This option
    #     requires the `kms_key_identifier` of the KMS key in Amazon
    #     Resource Name (ARN) format as input.
    #
    #   The default is `AWS_OWNED_KMS_KEY`.
    #
    #   For more information, see [Encryption at rest][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/EncryptionAtRest.html
    #   @return [Types::EncryptionSpecification]
    #
    # @!attribute [rw] point_in_time_recovery
    #   Modifies the `pointInTimeRecovery` settings of the table. The
    #   options are:
    #
    #   * `status=ENABLED`
    #
    #   * `status=DISABLED`
    #
    #   If it's not specified, the default is `status=DISABLED`.
    #
    #   For more information, see [Point-in-time recovery][1] in the *Amazon
    #   Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery.html
    #   @return [Types::PointInTimeRecovery]
    #
    # @!attribute [rw] ttl
    #   Modifies Time to Live custom settings for the table. The options
    #   are:
    #
    #   * `status:enabled`
    #
    #   * `status:disabled`
    #
    #   The default is `status:disabled`. After `ttl` is enabled, you can't
    #   disable it for the table.
    #
    #   For more information, see [Expiring data by using Amazon Keyspaces
    #   Time to Live (TTL)][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL.html
    #   @return [Types::TimeToLive]
    #
    # @!attribute [rw] default_time_to_live
    #   The default Time to Live setting in seconds for the table.
    #
    #   For more information, see [Setting the default TTL value for a
    #   table][1] in the *Amazon Keyspaces Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/keyspaces/latest/devguide/TTL-how-it-works.html#ttl-howitworks_default_ttl
    #   @return [Integer]
    #
    # @!attribute [rw] client_side_timestamps
    #   Enables client-side timestamps for the table. By default, the
    #   setting is disabled. You can enable client-side timestamps with the
    #   following option:
    #
    #   * `status: "enabled"`
    #
    #   ^
    #
    #   Once client-side timestamps are enabled for a table, this setting
    #   cannot be disabled.
    #   @return [Types::ClientSideTimestamps]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UpdateTableRequest AWS API Documentation
    #
    class UpdateTableRequest < Struct.new(
      :keyspace_name,
      :table_name,
      :add_columns,
      :capacity_specification,
      :encryption_specification,
      :point_in_time_recovery,
      :ttl,
      :default_time_to_live,
      :client_side_timestamps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the modified table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/UpdateTableResponse AWS API Documentation
    #
    class UpdateTableResponse < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed due to an invalid or malformed request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/keyspaces-2022-02-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
