# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DatabaseMigrationService
  module Types

    # Describes a quota for an AWS account, for example, the number of
    # replication instances allowed.
    #
    # @!attribute [rw] account_quota_name
    #   The name of the AWS DMS quota for this AWS account.
    #   @return [String]
    #
    # @!attribute [rw] used
    #   The amount currently used toward the quota maximum.
    #   @return [Integer]
    #
    # @!attribute [rw] max
    #   The maximum allowed value for the quota.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AccountQuota AWS API Documentation
    #
    class AccountQuota < Struct.new(
      :account_quota_name,
      :used,
      :max)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddTagsToResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: [ # required
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to
    #   be added to. AWS DMS resources include a replication instance,
    #   endpoint, and a replication task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tag to be assigned to the DMS resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_arn,
      :tags)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResourceResponse AWS API Documentation
    #
    class AddTagsToResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the availability zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      include Aws::Structure
    end

    # The SSL certificate that can be used to encrypt connections between
    # the endpoints and the replication instance.
    #
    # @!attribute [rw] certificate_identifier
    #   The customer-assigned name of the certificate. Valid characters are
    #   A-z and 0-9.
    #   @return [String]
    #
    # @!attribute [rw] certificate_creation_date
    #   The date that the certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] certificate_pem
    #   The contents of the .pem X.509 certificate file for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_wallet
    #   The location of the imported Oracle Wallet certificate for use with
    #   SSL.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_owner
    #   The owner of the certificate.
    #   @return [String]
    #
    # @!attribute [rw] valid_from_date
    #   The beginning date that the certificate is valid.
    #   @return [Time]
    #
    # @!attribute [rw] valid_to_date
    #   The final date that the certificate is valid.
    #   @return [Time]
    #
    # @!attribute [rw] signing_algorithm
    #   The signing algorithm for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] key_length
    #   The key length of the cryptographic algorithm being used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Certificate AWS API Documentation
    #
    class Certificate < Struct.new(
      :certificate_identifier,
      :certificate_creation_date,
      :certificate_pem,
      :certificate_wallet,
      :certificate_arn,
      :certificate_owner,
      :valid_from_date,
      :valid_to_date,
      :signing_algorithm,
      :key_length)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The connection status.
    #   @return [String]
    #
    # @!attribute [rw] last_failure_message
    #   The error message when the connection last failed.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_identifier
    #   The identifier of the endpoint. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and
    #   must not end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Connection AWS API Documentation
    #
    class Connection < Struct.new(
      :replication_instance_arn,
      :endpoint_arn,
      :status,
      :last_failure_message,
      :endpoint_identifier,
      :replication_instance_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEndpointMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_identifier: "String", # required
    #         endpoint_type: "source", # required, accepts source, target
    #         engine_name: "String", # required
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         extra_connection_attributes: "String",
    #         kms_key_id: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         certificate_arn: "String",
    #         ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         dynamo_db_settings: {
    #           service_access_role_arn: "String", # required
    #         },
    #         s3_settings: {
    #           service_access_role_arn: "String",
    #           external_table_definition: "String",
    #           csv_row_delimiter: "String",
    #           csv_delimiter: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           compression_type: "none", # accepts none, gzip
    #         },
    #         dms_transfer_settings: {
    #           service_access_role_arn: "String",
    #           bucket_name: "String",
    #         },
    #         mongo_db_settings: {
    #           username: "String",
    #           password: "SecretString",
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           auth_type: "no", # accepts no, password
    #           auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #           nesting_level: "none", # accepts none, one
    #           extract_doc_id: "String",
    #           docs_to_investigate: "String",
    #           auth_source: "String",
    #           kms_key_id: "String",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and
    #   must not end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, dynamodb,
    #   mongodb, and sqlserver.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name to be used to login to the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to be used to login to the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server where the endpoint database resides.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port used by the endpoint database.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] extra_connection_attributes
    #   Additional attributes associated with the connection.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that will be used to encrypt the connection
    #   parameters. If you do not specify a value for the KmsKeyId
    #   parameter, then AWS DMS will use your default encryption key. AWS
    #   KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode to use for the SSL connection.
    #
    #   SSL mode can be one of four values: none, require, verify-ca,
    #   verify-full.
    #
    #   The default value is none.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role you want
    #   to use to create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   more information about the available settings, see the **Using
    #   Object Mapping to Migrate Data to DynamoDB** section at [ Using an
    #   Amazon DynamoDB Database as a Target for AWS Database Migration
    #   Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see the **Extra Connection
    #   Attributes** section at [ Using Amazon S3 as a Target for AWS
    #   Database Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings in JSON format for the DMS Transfer type source
    #   endpoint.
    #
    #   Attributes include:
    #
    #   * serviceAccessRoleArn - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * bucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress
    #     the target files. Set to NONE (the default) or do not use to leave
    #     the files uncompressed.
    #
    #   Shorthand syntax: ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string
    #
    #   JSON syntax:
    #
    #   \\\{ "ServiceAccessRoleArn": "string", "BucketName":
    #   "string", "CompressionType": "none"\|"gzip" \\}
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the **Configuration
    #   Properties When Using MongoDB as a Source for AWS Database Migration
    #   Service** section at [ Using MongoDB as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #   @return [Types::MongoDbSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEndpointMessage AWS API Documentation
    #
    class CreateEndpointMessage < Struct.new(
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :kms_key_id,
      :tags,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint that was created.
    #   @return [Types::Endpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEndpointResponse AWS API Documentation
    #
    class CreateEndpointResponse < Struct.new(
      :endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String", # required
    #         source_type: "String",
    #         event_categories: ["String"],
    #         source_ids: ["String"],
    #         enabled: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the AWS DMS event notification subscription.
    #
    #   Constraints: The name must be less than 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create
    #   a topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates the events. For example,
    #   if you want to be notified of events generated by a replication
    #   instance, you set this parameter to `replication-instance`. If this
    #   value is not specified, all events are returned.
    #
    #   Valid values: replication-instance \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. You can see a list of the categories for a given
    #   source type by calling the **DescribeEventCategories** action or in
    #   the topic [ Working with Events and Notifications][1] in the AWS
    #   Database Migration Service User Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   The list of identifiers of the event sources for which events will
    #   be returned. If not specified, then all sources are included in the
    #   response. An identifier must begin with a letter and must contain
    #   only ASCII letters, digits, and hyphens; it cannot end with a hyphen
    #   or contain two consecutive hyphens.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription, or
    #   set to **false** to create the subscription but not activate it.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A tag to be attached to the event subscription.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEventSubscriptionMessage AWS API Documentation
    #
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   The event subscription that was created.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateEventSubscriptionResponse AWS API Documentation
    #
    class CreateEventSubscriptionResponse < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationInstanceMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_identifier: "String", # required
    #         allocated_storage: 1,
    #         replication_instance_class: "String", # required
    #         vpc_security_group_ids: ["String"],
    #         availability_zone: "String",
    #         replication_subnet_group_identifier: "String",
    #         preferred_maintenance_window: "String",
    #         multi_az: false,
    #         engine_version: "String",
    #         auto_minor_version_upgrade: false,
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         publicly_accessible: false,
    #       }
    #
    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `myrepinstance`
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to be initially allocated for
    #   the replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance as
    #   specified by the replication instance class.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing
    #   the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone that the replication instance will be
    #   created in.
    #
    #   Default: A random, system-chosen Availability Zone in the
    #   endpoint's region.
    #
    #   Example: `us-east-1d`
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_identifier
    #   A subnet group to associate with the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur, in
    #   Universal Coordinated Time (UTC).
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block
    #   of time per region, occurring on a random day of the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor engine upgrades will be applied automatically
    #   to the replication instance during the maintenance window.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   Tags to be associated with the replication instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that will be used to encrypt the content on
    #   the replication instance. If you do not specify a value for the
    #   KmsKeyId parameter, then AWS DMS will use your default encryption
    #   key. AWS KMS creates the default encryption key for your AWS
    #   account. Your AWS account has a different default encryption key for
    #   each AWS region.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the replication instance. A
    #   value of `true` represents an instance with a public IP address. A
    #   value of `false` represents an instance with a private IP address.
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationInstanceMessage AWS API Documentation
    #
    class CreateReplicationInstanceMessage < Struct.new(
      :replication_instance_identifier,
      :allocated_storage,
      :replication_instance_class,
      :vpc_security_group_ids,
      :availability_zone,
      :replication_subnet_group_identifier,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :tags,
      :kms_key_id,
      :publicly_accessible)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance
    #   The replication instance that was created.
    #   @return [Types::ReplicationInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationInstanceResponse AWS API Documentation
    #
    class CreateReplicationInstanceResponse < Struct.new(
      :replication_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_subnet_group_identifier: "String", # required
    #         replication_subnet_group_description: "String", # required
    #         subnet_ids: ["String"], # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replication_subnet_group_identifier
    #   The name for the replication subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, spaces, underscores, or hyphens. Must not be "default".
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   The description for the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   The EC2 subnet IDs for the subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   The tag to be assigned to the subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroupMessage AWS API Documentation
    #
    class CreateReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group
    #   The replication subnet group that was created.
    #   @return [Types::ReplicationSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroupResponse AWS API Documentation
    #
    class CreateReplicationSubnetGroupResponse < Struct.new(
      :replication_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateReplicationTaskMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_identifier: "String", # required
    #         source_endpoint_arn: "String", # required
    #         target_endpoint_arn: "String", # required
    #         replication_instance_arn: "String", # required
    #         migration_type: "full-load", # required, accepts full-load, cdc, full-load-and-cdc
    #         table_mappings: "String", # required
    #         replication_task_settings: "String",
    #         cdc_start_time: Time.now,
    #         cdc_start_position: "String",
    #         cdc_stop_position: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   The migration type.
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with "file://".
    #   When working with the DMS API, provide the JSON as the parameter
    #   value.
    #
    #   For example, --table-mappings file://mappingfile.json
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   Settings for the task, such as target metadata settings. For a
    #   complete list of task settings, see [Task Settings for AWS Database
    #   Migration Service Tasks][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want
    #   a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when
    #   you want a CDC operation to start. Specifying both values results in
    #   an error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags to be added to the replication instance.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationTaskMessage AWS API Documentation
    #
    class CreateReplicationTaskMessage < Struct.new(
      :replication_task_identifier,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_instance_arn,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The replication task that was created.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationTaskResponse AWS API Documentation
    #
    class CreateReplicationTaskResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteCertificateMessage
    #   data as a hash:
    #
    #       {
    #         certificate_arn: "String", # required
    #       }
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the deleted certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificateMessage AWS API Documentation
    #
    class DeleteCertificateMessage < Struct.new(
      :certificate_arn)
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The Secure Sockets Layer (SSL) certificate.
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificateResponse AWS API Documentation
    #
    class DeleteCertificateResponse < Struct.new(
      :certificate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEndpointMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpointMessage AWS API Documentation
    #
    class DeleteEndpointMessage < Struct.new(
      :endpoint_arn)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The endpoint that was deleted.
    #   @return [Types::Endpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpointResponse AWS API Documentation
    #
    class DeleteEndpointResponse < Struct.new(
      :endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the DMS event notification subscription to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   The event subscription that was deleted.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscriptionResponse AWS API Documentation
    #
    class DeleteEventSubscriptionResponse < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteReplicationInstanceMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstanceMessage AWS API Documentation
    #
    class DeleteReplicationInstanceMessage < Struct.new(
      :replication_instance_arn)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance
    #   The replication instance that was deleted.
    #   @return [Types::ReplicationInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstanceResponse AWS API Documentation
    #
    class DeleteReplicationInstanceResponse < Struct.new(
      :replication_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteReplicationSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_subnet_group_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] replication_subnet_group_identifier
    #   The subnet group name of the replication instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroupMessage AWS API Documentation
    #
    class DeleteReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroupResponse AWS API Documentation
    #
    class DeleteReplicationSubnetGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReplicationTaskMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskMessage AWS API Documentation
    #
    class DeleteReplicationTaskMessage < Struct.new(
      :replication_task_arn)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The deleted replication task.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskResponse AWS API Documentation
    #
    class DeleteReplicationTaskResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributesMessage AWS API Documentation
    #
    class DescribeAccountAttributesMessage < Aws::EmptyStructure; end

    # @!attribute [rw] account_quotas
    #   Account quota information.
    #   @return [Array<Types::AccountQuota>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributesResponse AWS API Documentation
    #
    class DescribeAccountAttributesResponse < Struct.new(
      :account_quotas)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeCertificatesMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the certificate described in the form of
    #   key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 10
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeCertificatesMessage AWS API Documentation
    #
    class DescribeCertificatesMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   The pagination token.
    #   @return [String]
    #
    # @!attribute [rw] certificates
    #   The Secure Sockets Layer (SSL) certificates associated with the
    #   replication instance.
    #   @return [Array<Types::Certificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeCertificatesResponse AWS API Documentation
    #
    class DescribeCertificatesResponse < Struct.new(
      :marker,
      :certificates)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeConnectionsMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   The filters applied to the connection.
    #
    #   Valid filter names: endpoint-arn \| replication-instance-arn
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConnectionsMessage AWS API Documentation
    #
    class DescribeConnectionsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] connections
    #   A description of the connections.
    #   @return [Array<Types::Connection>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConnectionsResponse AWS API Documentation
    #
    class DescribeConnectionsResponse < Struct.new(
      :marker,
      :connections)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointTypesMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: engine-name \| endpoint-type
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypesMessage AWS API Documentation
    #
    class DescribeEndpointTypesMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] supported_endpoint_types
    #   The type of endpoints that are supported.
    #   @return [Array<Types::SupportedEndpointType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypesResponse AWS API Documentation
    #
    class DescribeEndpointTypesResponse < Struct.new(
      :marker,
      :supported_endpoint_types)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointsMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \|
    #   engine-name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointsMessage AWS API Documentation
    #
    class DescribeEndpointsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] endpoints
    #   Endpoint description.
    #   @return [Array<Types::Endpoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointsResponse AWS API Documentation
    #
    class DescribeEndpointsResponse < Struct.new(
      :marker,
      :endpoints)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventCategoriesMessage
    #   data as a hash:
    #
    #       {
    #         source_type: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the action.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] event_category_group_list
    #   A list of event categories.
    #   @return [Array<Types::EventCategoryGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategoriesResponse AWS API Documentation
    #
    class DescribeEventCategoriesResponse < Struct.new(
      :event_category_group_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventSubscriptionsMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the AWS DMS event subscription to be described.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the action.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventSubscriptionsMessage AWS API Documentation
    #
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions_list
    #   A list of event subscriptions.
    #   @return [Array<Types::EventSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventSubscriptionsResponse AWS API Documentation
    #
    class DescribeEventSubscriptionsResponse < Struct.new(
      :marker,
      :event_subscriptions_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String",
    #         source_type: "replication-instance", # accepts replication-instance
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         event_categories: ["String"],
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source. An identifier must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens. It
    #   cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time for the events to be listed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for the events to be listed.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the events to be listed.
    #   @return [Integer]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters applied to the action.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The events described.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventsResponse AWS API Documentation
    #
    class DescribeEventsResponse < Struct.new(
      :marker,
      :events)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOrderableReplicationInstancesMessage
    #   data as a hash:
    #
    #       {
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeOrderableReplicationInstancesMessage AWS API Documentation
    #
    class DescribeOrderableReplicationInstancesMessage < Struct.new(
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] orderable_replication_instances
    #   The order-able replication instances available.
    #   @return [Array<Types::OrderableReplicationInstance>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeOrderableReplicationInstancesResponse AWS API Documentation
    #
    class DescribeOrderableReplicationInstancesResponse < Struct.new(
      :orderable_replication_instances,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRefreshSchemasStatusMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatusMessage AWS API Documentation
    #
    class DescribeRefreshSchemasStatusMessage < Struct.new(
      :endpoint_arn)
      include Aws::Structure
    end

    # @!attribute [rw] refresh_schemas_status
    #   The status of the schema.
    #   @return [Types::RefreshSchemasStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatusResponse AWS API Documentation
    #
    class DescribeRefreshSchemasStatusResponse < Struct.new(
      :refresh_schemas_status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationInstanceTaskLogsMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstanceTaskLogsMessage AWS API Documentation
    #
    class DescribeReplicationInstanceTaskLogsMessage < Struct.new(
      :replication_instance_arn,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_task_logs
    #   An array of replication task log metadata. Each member of the array
    #   contains the replication task name, ARN, and task log size (in
    #   bytes).
    #   @return [Array<Types::ReplicationInstanceTaskLog>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstanceTaskLogsResponse AWS API Documentation
    #
    class DescribeReplicationInstanceTaskLogsResponse < Struct.new(
      :replication_instance_arn,
      :replication_instance_task_logs,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationInstancesMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: replication-instance-arn \|
    #   replication-instance-id \| replication-instance-class \|
    #   engine-version
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstancesMessage AWS API Documentation
    #
    class DescribeReplicationInstancesMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_instances
    #   The replication instances described.
    #   @return [Array<Types::ReplicationInstance>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationInstancesResponse AWS API Documentation
    #
    class DescribeReplicationInstancesResponse < Struct.new(
      :marker,
      :replication_instances)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationSubnetGroupsMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe action.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationSubnetGroupsMessage AWS API Documentation
    #
    class DescribeReplicationSubnetGroupsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_groups
    #   A description of the replication subnet groups.
    #   @return [Array<Types::ReplicationSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationSubnetGroupsResponse AWS API Documentation
    #
    class DescribeReplicationSubnetGroupsResponse < Struct.new(
      :marker,
      :replication_subnet_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationTaskAssessmentResultsMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   \- The Amazon Resource Name (ARN) string that uniquely identifies the
    #   task. When this input parameter is specified the API will return
    #   only one result and ignore the values of the max-records and marker
    #   parameters.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentResultsMessage AWS API Documentation
    #
    class DescribeReplicationTaskAssessmentResultsMessage < Struct.new(
      :replication_task_arn,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   \- The Amazon S3 bucket where the task assessment report is located.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_assessment_results
    #   The task assessment report.
    #   @return [Array<Types::ReplicationTaskAssessmentResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentResultsResponse AWS API Documentation
    #
    class DescribeReplicationTaskAssessmentResultsResponse < Struct.new(
      :marker,
      :bucket_name,
      :replication_task_assessment_results)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReplicationTasksMessage
    #   data as a hash:
    #
    #       {
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe action.
    #
    #   Valid filter names: replication-task-arn \| replication-task-id \|
    #   migration-type \| endpoint-arn \| replication-instance-arn
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasksMessage AWS API Documentation
    #
    class DescribeReplicationTasksMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_tasks
    #   A description of the replication tasks.
    #   @return [Array<Types::ReplicationTask>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasksResponse AWS API Documentation
    #
    class DescribeReplicationTasksResponse < Struct.new(
      :marker,
      :replication_tasks)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeSchemasMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeSchemasMessage AWS API Documentation
    #
    class DescribeSchemasMessage < Struct.new(
      :endpoint_arn,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] schemas
    #   The described schema.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeSchemasResponse AWS API Documentation
    #
    class DescribeSchemasResponse < Struct.new(
      :marker,
      :schemas)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTableStatisticsMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #
    #   Default: 100
    #
    #   Constraints: Minimum 20, maximum 500.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the describe table statistics action.
    #
    #   Valid filter names: schema-name \| table-name \| table-state
    #
    #   A combination of filters creates an AND condition where each record
    #   matches all specified filters.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeTableStatisticsMessage AWS API Documentation
    #
    class DescribeTableStatisticsMessage < Struct.new(
      :replication_task_arn,
      :max_records,
      :marker,
      :filters)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] table_statistics
    #   The table statistics.
    #   @return [Array<Types::TableStatistics>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeTableStatisticsResponse AWS API Documentation
    #
    class DescribeTableStatisticsResponse < Struct.new(
      :replication_task_arn,
      :table_statistics,
      :marker)
      include Aws::Structure
    end

    # The settings in JSON format for the DMS Transfer type source endpoint.
    #
    # @note When making an API call, you may pass DmsTransferSettings
    #   data as a hash:
    #
    #       {
    #         service_access_role_arn: "String",
    #         bucket_name: "String",
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role that has permission to access the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket to use.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DmsTransferSettings AWS API Documentation
    #
    class DmsTransferSettings < Struct.new(
      :service_access_role_arn,
      :bucket_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DynamoDbSettings
    #   data as a hash:
    #
    #       {
    #         service_access_role_arn: "String", # required
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service access IAM role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DynamoDbSettings AWS API Documentation
    #
    class DynamoDbSettings < Struct.new(
      :service_access_role_arn)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and
    #   must not end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The database engine name. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase,
    #   dynamodb, mongodb, and sqlserver.
    #   @return [String]
    #
    # @!attribute [rw] engine_display_name
    #   The expanded name for the engine name. For example, if the
    #   `EngineName` parameter is "aurora," this value would be "Amazon
    #   Aurora MySQL."
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name used to connect to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server at the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value used to access the endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the database at the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] extra_connection_attributes
    #   Additional connection attributes used to connect to the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that will be used to encrypt the connection
    #   parameters. If you do not specify a value for the KmsKeyId
    #   parameter, then AWS DMS will use your default encryption key. AWS
    #   KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) used for SSL connection to the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the endpoint.
    #
    #   SSL mode can be one of four values: none, require, verify-ca,
    #   verify-full.
    #
    #   The default value is none.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service access IAM role.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   Value returned by a call to CreateEndpoint that can be used for
    #   cross-account validation. Use it on a subsequent call to
    #   CreateEndpoint to create the endpoint with a cross-account.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   The settings for the target DynamoDB database. For more information,
    #   see the `DynamoDBSettings` structure.
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   The settings for the S3 target endpoint. For more information, see
    #   the `S3Settings` structure.
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings in JSON format for the DMS Transfer type source
    #   endpoint.
    #
    #   Attributes include:
    #
    #   * serviceAccessRoleArn - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * bucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress
    #     the target files. Set to NONE (the default) or do not use to leave
    #     the files uncompressed.
    #
    #   Shorthand syntax: ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string
    #
    #   JSON syntax:
    #
    #   \\\{ "ServiceAccessRoleArn": "string", "BucketName":
    #   "string", "CompressionType": "none"\|"gzip" \\}
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   The settings for the MongoDB source endpoint. For more information,
    #   see the `MongoDbSettings` structure.
    #   @return [Types::MongoDbSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :engine_display_name,
      :username,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :status,
      :kms_key_id,
      :endpoint_arn,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :external_id,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings)
      include Aws::Structure
    end

    # @!attribute [rw] source_identifier
    #   The identifier of the event source. An identifier must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens; it
    #   cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Constraints:replication instance, endpoint, migration task
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| endpoint \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The event message.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The event categories available for the specified source type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] date
    #   The date of the event.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date)
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-server \|
    #   security-group \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a `SourceType` that you want to
    #   subscribe to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/EventCategoryGroup AWS API Documentation
    #
    class EventCategoryGroup < Struct.new(
      :source_type,
      :event_categories)
      include Aws::Structure
    end

    # @!attribute [rw] customer_aws_id
    #   The AWS customer account associated with the AWS DMS event
    #   notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] cust_subscription_id
    #   The AWS DMS event notification subscription Id.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The topic ARN of the AWS DMS event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the AWS DMS event notification subscription.
    #
    #   Constraints:
    #
    #   Can be one of the following: creating \| modifying \| deleting \|
    #   active \| no-permission \| topic-not-exist
    #
    #   The status "no-permission" indicates that AWS DMS no longer has
    #   permission to post to the SNS topic. The status "topic-not-exist"
    #   indicates that the topic was deleted after the subscription was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The time the RDS event notification subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-server \|
    #   security-group \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] source_ids_list
    #   A list of source Ids for the event subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories_list
    #   A lists of event categories.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   Boolean value that indicates if the event subscription is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/EventSubscription AWS API Documentation
    #
    class EventSubscription < Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :enabled)
      include Aws::Structure
    end

    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the filter.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter value.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ImportCertificateMessage
    #   data as a hash:
    #
    #       {
    #         certificate_identifier: "String", # required
    #         certificate_pem: "String",
    #         certificate_wallet: "data",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] certificate_identifier
    #   The customer-assigned name of the certificate. Valid characters are
    #   A-z and 0-9.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The contents of the .pem X.509 certificate file for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_wallet
    #   The location of the imported Oracle Wallet certificate for use with
    #   SSL.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the certificate.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificateMessage AWS API Documentation
    #
    class ImportCertificateMessage < Struct.new(
      :certificate_identifier,
      :certificate_pem,
      :certificate_wallet,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] certificate
    #   The certificate to be uploaded.
    #   @return [Types::Certificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificateResponse AWS API Documentation
    #
    class ImportCertificateResponse < Struct.new(
      :certificate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   AWS DMS resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   A list of tags for the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tag_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyEndpointMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #         endpoint_identifier: "String",
    #         endpoint_type: "source", # accepts source, target
    #         engine_name: "String",
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         extra_connection_attributes: "String",
    #         certificate_arn: "String",
    #         ssl_mode: "none", # accepts none, require, verify-ca, verify-full
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         dynamo_db_settings: {
    #           service_access_role_arn: "String", # required
    #         },
    #         s3_settings: {
    #           service_access_role_arn: "String",
    #           external_table_definition: "String",
    #           csv_row_delimiter: "String",
    #           csv_delimiter: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           compression_type: "none", # accepts none, gzip
    #         },
    #         dms_transfer_settings: {
    #           service_access_role_arn: "String",
    #           bucket_name: "String",
    #         },
    #         mongo_db_settings: {
    #           username: "String",
    #           password: "SecretString",
    #           server_name: "String",
    #           port: 1,
    #           database_name: "String",
    #           auth_type: "no", # accepts no, password
    #           auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #           nesting_level: "none", # accepts none, one
    #           extract_doc_id: "String",
    #           docs_to_investigate: "String",
    #           auth_source: "String",
    #           kms_key_id: "String",
    #         },
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter; must contain only ASCII letters, digits, and hyphens; and
    #   must not end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase,
    #   dynamodb, mongodb, and sqlserver.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name to be used to login to the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to be used to login to the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server where the endpoint database resides.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port used by the endpoint database.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] extra_connection_attributes
    #   Additional attributes associated with the connection. To reset this
    #   parameter, pass the empty string ("") as an argument.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode to be used.
    #
    #   SSL mode can be one of four values: none, require, verify-ca,
    #   verify-full.
    #
    #   The default value is none.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role you want
    #   to use to modify the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   more information about the available settings, see the **Using
    #   Object Mapping to Migrate Data to DynamoDB** section at [ Using an
    #   Amazon DynamoDB Database as a Target for AWS Database Migration
    #   Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target S3 endpoint. For more
    #   information about the available settings, see the **Extra Connection
    #   Attributes** section at [ Using Amazon S3 as a Target for AWS
    #   Database Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings in JSON format for the DMS Transfer type source
    #   endpoint.
    #
    #   Attributes include:
    #
    #   * serviceAccessRoleArn - The IAM role that has permission to access
    #     the Amazon S3 bucket.
    #
    #   * BucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress
    #     the target files. Set to NONE (the default) or do not use to leave
    #     the files uncompressed.
    #
    #   Shorthand syntax: ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string
    #
    #   JSON syntax:
    #
    #   \\\{ "ServiceAccessRoleArn": "string", "BucketName":
    #   "string", "CompressionType": "none"\|"gzip" \\}
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the **Configuration
    #   Properties When Using MongoDB as a Source for AWS Database Migration
    #   Service** section at [ Using Amazon S3 as a Target for AWS Database
    #   Migration Service][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #   @return [Types::MongoDbSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEndpointMessage AWS API Documentation
    #
    class ModifyEndpointMessage < Struct.new(
      :endpoint_arn,
      :endpoint_identifier,
      :endpoint_type,
      :engine_name,
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :extra_connection_attributes,
      :certificate_arn,
      :ssl_mode,
      :service_access_role_arn,
      :external_table_definition,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The modified endpoint.
    #   @return [Types::Endpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEndpointResponse AWS API Documentation
    #
    class ModifyEndpointResponse < Struct.new(
      :endpoint)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String",
    #         source_type: "String",
    #         event_categories: ["String"],
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the AWS DMS event notification subscription to be
    #   modified.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create
    #   a topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates the events you want to
    #   subscribe to.
    #
    #   Valid values: replication-instance \| migration-task
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. Use the `DescribeEventCategories` action to see a list
    #   of event categories.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to **true** to activate the subscription.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEventSubscriptionMessage AWS API Documentation
    #
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   The modified event subscription.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyEventSubscriptionResponse AWS API Documentation
    #
    class ModifyEventSubscriptionResponse < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyReplicationInstanceMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #         allocated_storage: 1,
    #         apply_immediately: false,
    #         replication_instance_class: "String",
    #         vpc_security_group_ids: ["String"],
    #         preferred_maintenance_window: "String",
    #         multi_az: false,
    #         engine_version: "String",
    #         allow_major_version_upgrade: false,
    #         auto_minor_version_upgrade: false,
    #         replication_instance_identifier: "String",
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) to be allocated for the
    #   replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] apply_immediately
    #   Indicates whether the changes should be applied immediately or
    #   during the next maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing
    #   the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, which might result in an outage. Changing this parameter does
    #   not result in an outage, except in the following situation, and the
    #   change is asynchronously applied as soon as possible. If moving this
    #   window to the current time, there must be at least 30 minutes
    #   between the current time and end of the window to ensure pending
    #   changes are applied.
    #
    #   Default: Uses existing setting
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter does not result in an outage and the change is
    #   asynchronously applied as soon as possible.
    #
    #   Constraints: This parameter must be set to true when specifying a
    #   value for the `EngineVersion` parameter that is a different major
    #   version than the replication instance's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Indicates that minor version upgrades will be applied automatically
    #   to the replication instance during the maintenance window. Changing
    #   this parameter does not result in an outage except in the following
    #   case and the change is asynchronously applied as soon as possible.
    #   An outage will result if this parameter is set to `true` during the
    #   maintenance window, and a newer minor version is available, and AWS
    #   DMS has enabled auto patching for that engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationInstanceMessage AWS API Documentation
    #
    class ModifyReplicationInstanceMessage < Struct.new(
      :replication_instance_arn,
      :allocated_storage,
      :apply_immediately,
      :replication_instance_class,
      :vpc_security_group_ids,
      :preferred_maintenance_window,
      :multi_az,
      :engine_version,
      :allow_major_version_upgrade,
      :auto_minor_version_upgrade,
      :replication_instance_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance
    #   The modified replication instance.
    #   @return [Types::ReplicationInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationInstanceResponse AWS API Documentation
    #
    class ModifyReplicationInstanceResponse < Struct.new(
      :replication_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyReplicationSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         replication_subnet_group_identifier: "String", # required
    #         replication_subnet_group_description: "String",
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] replication_subnet_group_identifier
    #   The name of the replication instance subnet group.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   The description of the replication instance subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnet IDs.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationSubnetGroupMessage AWS API Documentation
    #
    class ModifyReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group
    #   The modified replication subnet group.
    #   @return [Types::ReplicationSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationSubnetGroupResponse AWS API Documentation
    #
    class ModifyReplicationSubnetGroupResponse < Struct.new(
      :replication_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyReplicationTaskMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         replication_task_identifier: "String",
    #         migration_type: "full-load", # accepts full-load, cdc, full-load-and-cdc
    #         table_mappings: "String",
    #         replication_task_settings: "String",
    #         cdc_start_time: Time.now,
    #         cdc_start_position: "String",
    #         cdc_stop_position: "String",
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   The migration type.
    #
    #   Valid values: full-load \| cdc \| full-load-and-cdc
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with "file://".
    #   When working with the DMS API, provide the JSON as the parameter
    #   value.
    #
    #   For example, --table-mappings file://mappingfile.json
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   JSON file that contains settings for the task, such as target
    #   metadata settings.
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want
    #   a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when
    #   you want a CDC operation to start. Specifying both values results in
    #   an error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationTaskMessage AWS API Documentation
    #
    class ModifyReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :replication_task_identifier,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The replication task that was modified.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationTaskResponse AWS API Documentation
    #
    class ModifyReplicationTaskResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @note When making an API call, you may pass MongoDbSettings
    #   data as a hash:
    #
    #       {
    #         username: "String",
    #         password: "SecretString",
    #         server_name: "String",
    #         port: 1,
    #         database_name: "String",
    #         auth_type: "no", # accepts no, password
    #         auth_mechanism: "default", # accepts default, mongodb_cr, scram_sha_1
    #         nesting_level: "none", # accepts none, one
    #         extract_doc_id: "String",
    #         docs_to_investigate: "String",
    #         auth_source: "String",
    #         kms_key_id: "String",
    #       }
    #
    # @!attribute [rw] username
    #   The user name you use to access the MongoDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user account you use to access the MongoDB
    #   source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server on the MongoDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the MongoDB source endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the MongoDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type you use to access the MongoDB source
    #   endpoint.
    #
    #   Valid values: NO, PASSWORD
    #
    #   When NO is selected, user name and password parameters are not used
    #   and can be empty.
    #   @return [String]
    #
    # @!attribute [rw] auth_mechanism
    #   The authentication mechanism you use to access the MongoDB source
    #   endpoint.
    #
    #   Valid values: DEFAULT, MONGODB\_CR, SCRAM\_SHA\_1
    #
    #   DEFAULT – For MongoDB version 2.x, use MONGODB\_CR. For MongoDB
    #   version 3.x, use SCRAM\_SHA\_1. This attribute is not used when
    #   authType=No.
    #   @return [String]
    #
    # @!attribute [rw] nesting_level
    #   Specifies either document or table mode.
    #
    #   Valid values: NONE, ONE
    #
    #   Default value is NONE. Specify NONE to use document mode. Specify
    #   ONE to use table mode.
    #   @return [String]
    #
    # @!attribute [rw] extract_doc_id
    #   Specifies the document ID. Use this attribute when `NestingLevel` is
    #   set to NONE.
    #
    #   Default value is false.
    #   @return [String]
    #
    # @!attribute [rw] docs_to_investigate
    #   Indicates the number of documents to preview to determine the
    #   document organization. Use this attribute when `NestingLevel` is set
    #   to ONE.
    #
    #   Must be a positive value greater than 0. Default value is 1000.
    #   @return [String]
    #
    # @!attribute [rw] auth_source
    #   The MongoDB database name. This attribute is not used when
    #   `authType=NO`.
    #
    #   The default is admin.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that will be used to encrypt the connection
    #   parameters. If you do not specify a value for the KmsKeyId
    #   parameter, then AWS DMS will use your default encryption key. AWS
    #   KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MongoDbSettings AWS API Documentation
    #
    class MongoDbSettings < Struct.new(
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :auth_type,
      :auth_mechanism,
      :nesting_level,
      :extract_doc_id,
      :docs_to_investigate,
      :auth_source,
      :kms_key_id)
      include Aws::Structure
    end

    # @!attribute [rw] engine_version
    #   The version of the replication engine.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #   @return [String]
    #
    # @!attribute [rw] storage_type
    #   The type of storage used by the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] min_allocated_storage
    #   The minimum amount of storage (in gigabytes) that can be allocated
    #   for the replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] max_allocated_storage
    #   The minimum amount of storage (in gigabytes) that can be allocated
    #   for the replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] default_allocated_storage
    #   The default amount of storage (in gigabytes) that is allocated for
    #   the replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] included_allocated_storage
    #   The amount of storage (in gigabytes) that is allocated for the
    #   replication instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/OrderableReplicationInstance AWS API Documentation
    #
    class OrderableReplicationInstance < Struct.new(
      :engine_version,
      :replication_instance_class,
      :storage_type,
      :min_allocated_storage,
      :max_allocated_storage,
      :default_allocated_storage,
      :included_allocated_storage)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootReplicationInstanceMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #         force_failover: false,
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] force_failover
    #   If this parameter is `true`, the reboot is conducted through a
    #   Multi-AZ failover. (If the instance isn't configured for Multi-AZ,
    #   then you can't specify `true`.)
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstanceMessage AWS API Documentation
    #
    class RebootReplicationInstanceMessage < Struct.new(
      :replication_instance_arn,
      :force_failover)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance
    #   The replication instance that is being rebooted.
    #   @return [Types::ReplicationInstance]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstanceResponse AWS API Documentation
    #
    class RebootReplicationInstanceResponse < Struct.new(
      :replication_instance)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RefreshSchemasMessage
    #   data as a hash:
    #
    #       {
    #         endpoint_arn: "String", # required
    #         replication_instance_arn: "String", # required
    #       }
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemasMessage AWS API Documentation
    #
    class RefreshSchemasMessage < Struct.new(
      :endpoint_arn,
      :replication_instance_arn)
      include Aws::Structure
    end

    # @!attribute [rw] refresh_schemas_status
    #   The status of the refreshed schema.
    #   @return [Types::RefreshSchemasStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemasResponse AWS API Documentation
    #
    class RefreshSchemasResponse < Struct.new(
      :refresh_schemas_status)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the schema.
    #   @return [String]
    #
    # @!attribute [rw] last_refresh_date
    #   The date the schema was last refreshed.
    #   @return [Time]
    #
    # @!attribute [rw] last_failure_message
    #   The last failure message for the schema.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemasStatus AWS API Documentation
    #
    class RefreshSchemasStatus < Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      :status,
      :last_refresh_date,
      :last_failure_message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ReloadTablesMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         tables_to_reload: [ # required
    #           {
    #             schema_name: "String",
    #             table_name: "String",
    #           },
    #         ],
    #         reload_option: "data-reload", # accepts data-reload, validate-only
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] tables_to_reload
    #   The name and schema of the table to be reloaded.
    #   @return [Array<Types::TableToReload>]
    #
    # @!attribute [rw] reload_option
    #   Options for reload. Specify `data-reload` to reload the data and
    #   re-validate it if validation is enabled. Specify `validate-only` to
    #   re-validate the table. This option applies only when validation is
    #   enabled for the task.
    #
    #   Valid values: data-reload, validate-only
    #
    #   Default value is data-reload.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadTablesMessage AWS API Documentation
    #
    class ReloadTablesMessage < Struct.new(
      :replication_task_arn,
      :tables_to_reload,
      :reload_option)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadTablesResponse AWS API Documentation
    #
    class ReloadTablesResponse < Struct.new(
      :replication_task_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveTagsFromResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   &gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag
    #   is to be removed from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key (name) of the tag to be removed.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResourceMessage AWS API Documentation
    #
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_arn,
      :tag_keys)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResourceResponse AWS API Documentation
    #
    class RemoveTagsFromResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `myrepinstance`
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_status
    #   The status of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) that is allocated for the
    #   replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] instance_create_time
    #   The time the replication instance was created.
    #   @return [Time]
    #
    # @!attribute [rw] vpc_security_groups
    #   The VPC security group for the instance.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone for the instance.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group
    #   The subnet group for the replication instance.
    #   @return [Types::ReplicationSubnetGroup]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The maintenance window times for the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   The pending modification values.
    #   @return [Types::ReplicationPendingModifiedValues]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Boolean value indicating if minor version upgrades will be
    #   automatically applied to the instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that is used to encrypt the content on the
    #   replication instance. If you do not specify a value for the KmsKeyId
    #   parameter, then AWS DMS will use your default encryption key. AWS
    #   KMS creates the default encryption key for your AWS account. Your
    #   AWS account has a different default encryption key for each AWS
    #   region.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_public_ip_address
    #   The public IP address of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_private_ip_address
    #   The private IP address of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_public_ip_addresses
    #   The public IP address of the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_instance_private_ip_addresses
    #   The private IP address of the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the replication instance. A
    #   value of `true` represents an instance with a public IP address. A
    #   value of `false` represents an instance with a private IP address.
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] secondary_availability_zone
    #   The availability zone of the standby replication instance in a
    #   Multi-AZ deployment.
    #   @return [String]
    #
    # @!attribute [rw] free_until
    #   The expiration date of the free replication instance that is part of
    #   the Free DMS program.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationInstance AWS API Documentation
    #
    class ReplicationInstance < Struct.new(
      :replication_instance_identifier,
      :replication_instance_class,
      :replication_instance_status,
      :allocated_storage,
      :instance_create_time,
      :vpc_security_groups,
      :availability_zone,
      :replication_subnet_group,
      :preferred_maintenance_window,
      :pending_modified_values,
      :multi_az,
      :engine_version,
      :auto_minor_version_upgrade,
      :kms_key_id,
      :replication_instance_arn,
      :replication_instance_public_ip_address,
      :replication_instance_private_ip_address,
      :replication_instance_public_ip_addresses,
      :replication_instance_private_ip_addresses,
      :publicly_accessible,
      :secondary_availability_zone,
      :free_until)
      include Aws::Structure
    end

    # Contains metadata for a replication instance task log.
    #
    # @!attribute [rw] replication_task_name
    #   The name of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_task_log_size
    #   The size, in bytes, of the replication task log.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationInstanceTaskLog AWS API Documentation
    #
    class ReplicationInstanceTaskLog < Struct.new(
      :replication_task_name,
      :replication_task_arn,
      :replication_instance_task_log_size)
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance.
    #
    #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
    #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
    #   dms.c4.4xlarge `
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) that is allocated for the
    #   replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies if the replication instance is a Multi-AZ deployment. You
    #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationPendingModifiedValues AWS API Documentation
    #
    class ReplicationPendingModifiedValues < Struct.new(
      :replication_instance_class,
      :allocated_storage,
      :multi_az,
      :engine_version)
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group_identifier
    #   The identifier of the replication instance subnet group.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   The description of the replication subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The ID of the VPC.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   The status of the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   The subnets that are in the subnet group.
    #   @return [Array<Types::Subnet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationSubnetGroup AWS API Documentation
    #
    class ReplicationSubnetGroup < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_identifier
    #   The user-assigned replication task identifier or name.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   The type of migration.
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   Table mappings specified in the task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   The settings for the replication task.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] last_failure_message
    #   The last error (failure) message generated for the replication
    #   instance.
    #   @return [String]
    #
    # @!attribute [rw] stop_reason
    #   The reason the replication task was stopped.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_creation_date
    #   The date the replication task was created.
    #   @return [Time]
    #
    # @!attribute [rw] replication_task_start_date
    #   The date the replication task is scheduled to start.
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when
    #   you want a CDC operation to start. Specifying both values results in
    #   an error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #   @return [String]
    #
    # @!attribute [rw] recovery_checkpoint
    #   Indicates the last checkpoint that occurred during a change data
    #   capture (CDC) operation. You can provide this value to the
    #   `CdcStartPosition` parameter to start a CDC operation that begins at
    #   that checkpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_stats
    #   The statistics for the task, including elapsed time, tables loaded,
    #   and table errors.
    #   @return [Types::ReplicationTaskStats]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTask AWS API Documentation
    #
    class ReplicationTask < Struct.new(
      :replication_task_identifier,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_instance_arn,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :status,
      :last_failure_message,
      :stop_reason,
      :replication_task_creation_date,
      :replication_task_start_date,
      :cdc_start_position,
      :cdc_stop_position,
      :recovery_checkpoint,
      :replication_task_arn,
      :replication_task_stats)
      include Aws::Structure
    end

    # The task assessment report in JSON format.
    #
    # @!attribute [rw] replication_task_identifier
    #   The replication task identifier of the task on which the task
    #   assessment was run.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_last_assessment_date
    #   The date the task assessment was completed.
    #   @return [Time]
    #
    # @!attribute [rw] assessment_status
    #   The status of the task assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_results_file
    #   The file containing the results of the task assessment.
    #   @return [String]
    #
    # @!attribute [rw] assessment_results
    #   The task assessment results in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_url
    #   The URL of the S3 object containing the task assessment results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskAssessmentResult AWS API Documentation
    #
    class ReplicationTaskAssessmentResult < Struct.new(
      :replication_task_identifier,
      :replication_task_arn,
      :replication_task_last_assessment_date,
      :assessment_status,
      :assessment_results_file,
      :assessment_results,
      :s3_object_url)
      include Aws::Structure
    end

    # @!attribute [rw] full_load_progress_percent
    #   The percent complete for the full load migration task.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_millis
    #   The elapsed time of the task, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_loaded
    #   The number of tables loaded for this task.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_loading
    #   The number of tables currently loading for this task.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_queued
    #   The number of tables queued for this task.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_errored
    #   The number of errors that have occurred during this task.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskStats AWS API Documentation
    #
    class ReplicationTaskStats < Struct.new(
      :full_load_progress_percent,
      :elapsed_time_millis,
      :tables_loaded,
      :tables_loading,
      :tables_queued,
      :tables_errored)
      include Aws::Structure
    end

    # @note When making an API call, you may pass S3Settings
    #   data as a hash:
    #
    #       {
    #         service_access_role_arn: "String",
    #         external_table_definition: "String",
    #         csv_row_delimiter: "String",
    #         csv_delimiter: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         compression_type: "none", # accepts none, gzip
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service access IAM role.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] csv_row_delimiter
    #   The delimiter used to separate rows in the source files. The default
    #   is a carriage return (\\n).
    #   @return [String]
    #
    # @!attribute [rw] csv_delimiter
    #   The delimiter used to separate columns in the source files. The
    #   default is a comma.
    #   @return [String]
    #
    # @!attribute [rw] bucket_folder
    #   An optional parameter to set a folder name in the S3 bucket. If
    #   provided, tables are created in the path
    #   &lt;bucketFolder&gt;/&lt;schema\_name&gt;/&lt;table\_name&gt;/. If
    #   this parameter is not specified, then the path used is
    #   &lt;schema\_name&gt;/&lt;table\_name&gt;/.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   An optional parameter to use GZIP to compress the target files. Set
    #   to GZIP to compress the target files. Set to NONE (the default) or
    #   do not use to leave the files uncompressed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/S3Settings AWS API Documentation
    #
    class S3Settings < Struct.new(
      :service_access_role_arn,
      :external_table_definition,
      :csv_row_delimiter,
      :csv_delimiter,
      :bucket_folder,
      :bucket_name,
      :compression_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartReplicationTaskAssessmentMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentMessage AWS API Documentation
    #
    class StartReplicationTaskAssessmentMessage < Struct.new(
      :replication_task_arn)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The assessed replication task.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentResponse AWS API Documentation
    #
    class StartReplicationTaskAssessmentResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartReplicationTaskMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         start_replication_task_type: "start-replication", # required, accepts start-replication, resume-processing, reload-target
    #         cdc_start_time: Time.now,
    #         cdc_start_position: "String",
    #         cdc_stop_position: "String",
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] start_replication_task_type
    #   The type of replication task.
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either CdcStartTime or CdcStartPosition to specify when you want
    #   a CDC operation to start. Specifying both values results in an
    #   error.
    #
    #   Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either CdcStartPosition or CdcStartTime to specify when
    #   you want a CDC operation to start. Specifying both values results in
    #   an error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #
    #   Date Example: --cdc-start-position “2018-03-08T12:12:12”
    #
    #   Checkpoint Example: --cdc-start-position
    #   "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"
    #
    #   LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:3018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   3018-02-09T12:12:12 “
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskMessage AWS API Documentation
    #
    class StartReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :start_replication_task_type,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The replication task started.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskResponse AWS API Documentation
    #
    class StartReplicationTaskResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopReplicationTaskMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name(ARN) of the replication task to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTaskMessage AWS API Documentation
    #
    class StopReplicationTaskMessage < Struct.new(
      :replication_task_arn)
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The replication task stopped.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTaskResponse AWS API Documentation
    #
    class StopReplicationTaskResponse < Struct.new(
      :replication_task)
      include Aws::Structure
    end

    # @!attribute [rw] subnet_identifier
    #   The subnet identifier.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   The Availability Zone of the subnet.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   The status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      include Aws::Structure
    end

    # @!attribute [rw] engine_name
    #   The database engine name. Valid values, depending on the
    #   EndPointType, include mysql, oracle, postgres, mariadb, aurora,
    #   aurora-postgresql, redshift, s3, db2, azuredb, sybase, sybase,
    #   dynamodb, mongodb, and sqlserver.
    #   @return [String]
    #
    # @!attribute [rw] supports_cdc
    #   Indicates if Change Data Capture (CDC) is supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint.
    #   @return [String]
    #
    # @!attribute [rw] engine_display_name
    #   The expanded name for the engine name. For example, if the
    #   `EngineName` parameter is "aurora," this value would be "Amazon
    #   Aurora MySQL."
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SupportedEndpointType AWS API Documentation
    #
    class SupportedEndpointType < Struct.new(
      :engine_name,
      :supports_cdc,
      :endpoint_type,
      :engine_display_name)
      include Aws::Structure
    end

    # @!attribute [rw] schema_name
    #   The schema name.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The name of the table.
    #   @return [String]
    #
    # @!attribute [rw] inserts
    #   The number of insert actions performed on a table.
    #   @return [Integer]
    #
    # @!attribute [rw] deletes
    #   The number of delete actions performed on a table.
    #   @return [Integer]
    #
    # @!attribute [rw] updates
    #   The number of update actions performed on a table.
    #   @return [Integer]
    #
    # @!attribute [rw] ddls
    #   The Data Definition Language (DDL) used to build and modify the
    #   structure of your tables.
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_rows
    #   The number of rows added during the Full Load operation.
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_condtnl_chk_failed_rows
    #   The number of rows that failed conditional checks during the Full
    #   Load operation (valid only for DynamoDB as a target migrations).
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_error_rows
    #   The number of rows that failed to load during the Full Load
    #   operation (valid only for DynamoDB as a target migrations).
    #   @return [Integer]
    #
    # @!attribute [rw] last_update_time
    #   The last time the table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] table_state
    #   The state of the tables described.
    #
    #   Valid states: Table does not exist \| Before load \| Full load \|
    #   Table completed \| Table cancelled \| Table error \| Table all \|
    #   Table updates \| Table is being reloaded
    #   @return [String]
    #
    # @!attribute [rw] validation_pending_records
    #   The number of records that have yet to be validated.
    #   @return [Integer]
    #
    # @!attribute [rw] validation_failed_records
    #   The number of records that failed validation.
    #   @return [Integer]
    #
    # @!attribute [rw] validation_suspended_records
    #   The number of records that could not be validated.
    #   @return [Integer]
    #
    # @!attribute [rw] validation_state
    #   The validation state of the table.
    #
    #   The parameter can have the following values
    #
    #   * Not enabled—Validation is not enabled for the table in the
    #     migration task.
    #
    #   * Pending records—Some records in the table are waiting for
    #     validation.
    #
    #   * Mismatched records—Some records in the table do not match between
    #     the source and target.
    #
    #   * Suspended records—Some records in the table could not be
    #     validated.
    #
    #   * No primary key—The table could not be validated because it had no
    #     primary key.
    #
    #   * Table error—The table was not validated because it was in an error
    #     state and some data was not migrated.
    #
    #   * Validated—All rows in the table were validated. If the table is
    #     updated, the status can change from Validated.
    #
    #   * Error—The table could not be validated because of an unexpected
    #     error.
    #   @return [String]
    #
    # @!attribute [rw] validation_state_details
    #   Additional details about the state of validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TableStatistics AWS API Documentation
    #
    class TableStatistics < Struct.new(
      :schema_name,
      :table_name,
      :inserts,
      :deletes,
      :updates,
      :ddls,
      :full_load_rows,
      :full_load_condtnl_chk_failed_rows,
      :full_load_error_rows,
      :last_update_time,
      :table_state,
      :validation_pending_records,
      :validation_failed_records,
      :validation_suspended_records,
      :validation_state,
      :validation_state_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TableToReload
    #   data as a hash:
    #
    #       {
    #         schema_name: "String",
    #         table_name: "String",
    #       }
    #
    # @!attribute [rw] schema_name
    #   The schema name of the table to be reloaded.
    #   @return [String]
    #
    # @!attribute [rw] table_name
    #   The table name of the table to be reloaded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TableToReload AWS API Documentation
    #
    class TableToReload < Struct.new(
      :schema_name,
      :table_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be from
    #   1 to 128 Unicode characters in length and cannot be prefixed with
    #   "aws:" or "dms:". The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', '/', '=',
    #   '+', '-' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   from 1 to 256 Unicode characters in length and cannot be prefixed
    #   with "aws:" or "dms:". The string can only contain only the set
    #   of Unicode letters, digits, white-space, '\_', '.', '/',
    #   '=', '+', '-' (Java regex:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # @note When making an API call, you may pass TestConnectionMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #         endpoint_arn: "String", # required
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnectionMessage AWS API Documentation
    #
    class TestConnectionMessage < Struct.new(
      :replication_instance_arn,
      :endpoint_arn)
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The connection tested.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnectionResponse AWS API Documentation
    #
    class TestConnectionResponse < Struct.new(
      :connection)
      include Aws::Structure
    end

    # @!attribute [rw] vpc_security_group_id
    #   The VPC security group Id.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      include Aws::Structure
    end

  end
end
