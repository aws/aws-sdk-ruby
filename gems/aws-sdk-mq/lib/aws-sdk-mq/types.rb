# frozen_string_literal: true

# This is generated code!

module Aws::Mq
  # This module contains the types returned by client operations.
  module Types

    # <p>Action required for a broker.</p>
    # @!attribute action_required_code
    #   <p>The code you can use to find instructions on the action required to resolve your broker issue.</p>
    #   @return [String]
    # @!attribute action_required_info
    #   <p>Information about the action required to resolve your broker issue.</p>
    #   @return [String]
    class ActionRequired < Struct.new(
      nil,
      :action_required_code,
      :action_required_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Name of the availability zone.</p>
    # @!attribute name
    #   <p>Id for the availability zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class BadRequestException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Types of broker engines.</p>
    # @!attribute engine_type
    #   <p>The broker's engine type.</p>
    #   @return [String]
    # @!attribute engine_versions
    #   <p>The list of engine versions.</p>
    #   @return [Array<Types::EngineVersion>]
    class BrokerEngineType < Struct.new(
      nil,
      :engine_type,
      :engine_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about all brokers.</p>
    # @!attribute console_url
    #   <p>The brokers web console URL.</p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>The broker's wire-level protocol endpoints.</p>
    #   @return [Array<String>]
    # @!attribute ip_address
    #   <p>The IP address of the Elastic Network Interface (ENI) attached to the broker. Does not apply to RabbitMQ brokers.</p>
    #   @return [String]
    class BrokerInstance < Struct.new(
      nil,
      :console_url,
      :endpoints,
      :ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Option for host instance type.</p>
    # @!attribute availability_zones
    #   <p>The list of available az.</p>
    #   @return [Array<Types::AvailabilityZone>]
    # @!attribute engine_type
    #   <p>The broker's engine type.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #   @return [String]
    # @!attribute supported_deployment_modes
    #   <p>The list of supported deployment modes.</p>
    #   @return [Array<String>]
    # @!attribute supported_engine_versions
    #   <p>The list of supported engine versions.</p>
    #   @return [Array<String>]
    class BrokerInstanceOption < Struct.new(
      nil,
      :availability_zones,
      :engine_type,
      :host_instance_type,
      :storage_type,
      :supported_deployment_modes,
      :supported_engine_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about all brokers.</p>
    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute broker_name
    #   <p>The broker's name. This value is unique in your Amazon Web Services account, 1-50 characters long, and containing only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #   @return [String]
    # @!attribute broker_state
    #   <p>The broker's status.</p>
    #   @return [String]
    # @!attribute created
    #   <p>The time when the broker was created.</p>
    #   @return [Time]
    # @!attribute deployment_mode
    #   <p>The broker's deployment mode.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>The type of broker engine.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #   @return [String]
    class BrokerSummary < Struct.new(
      nil,
      :broker_arn,
      :broker_id,
      :broker_name,
      :broker_state,
      :created,
      :deployment_mode,
      :engine_type,
      :host_instance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about all configurations.</p>
    # @!attribute arn
    #   <p>Required. The ARN of the configuration.</p>
    #   @return [String]
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Required. The description of the configuration.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For a list of supported engine versions, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>Required. The latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of all tags associated with this configuration.</p>
    #   @return [Hash<String, String>]
    class Configuration < Struct.new(
      nil,
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A list of information about the configuration.</p>
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>The revision number of the configuration.</p>
    #   @return [Integer]
    class ConfigurationId < Struct.new(
      nil,
      :id,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the specified configuration revision.</p>
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the configuration revision.</p>
    #   @return [String]
    # @!attribute revision
    #   <p>Required. The revision number of the configuration.</p>
    #   @return [Integer]
    class ConfigurationRevision < Struct.new(
      nil,
      :created,
      :description,
      :revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Broker configuration information</p>
    # @!attribute current
    #   <p>The broker's current configuration.</p>
    #   @return [Types::ConfigurationId]
    # @!attribute history
    #   <p>The history of configurations applied to the broker.</p>
    #   @return [Array<Types::ConfigurationId>]
    # @!attribute pending
    #   <p>The broker's pending configuration.</p>
    #   @return [Types::ConfigurationId]
    class Configurations < Struct.new(
      nil,
      :current,
      :history,
      :pending,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class ConflictException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a broker using the specified properties.</p>
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot. Set to true by default, if no value is specified.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>
    #   @return [Boolean]
    # @!attribute broker_name
    #   <p>Required. The broker's name. This value must be unique in your Amazon Web Services account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker names. Broker names are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker names are not intended to be used for private or sensitive data.</p></important>
    #   @return [String]
    # @!attribute configuration
    #   <p>A list of information about the configuration.</p>
    #   @return [Types::ConfigurationId]
    # @!attribute creator_request_id
    #   <p>The unique ID that the requester receives for the created broker. Amazon MQ passes your ID with the API action.</p> <note><p>We recommend using a Universally Unique Identifier (UUID) for the creatorRequestId. You may omit the creatorRequestId if your application doesn't require idempotency.</p></note>
    #   @return [String]
    # @!attribute deployment_mode
    #   <p>Required. The broker's deployment mode.</p>
    #   @return [String]
    # @!attribute encryption_options
    #   <p>Encryption options for the broker.</p>
    #   @return [Types::EncryptionOptions]
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>Required. The broker's instance type.</p>
    #   @return [String]
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #   @return [Types::LdapServerMetadataInput]
    # @!attribute logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #   @return [Types::Logs]
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #   @return [Types::WeeklyStartTime]
    # @!attribute publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets. Set to false by default, if no value is provided.</p>
    #   @return [Boolean]
    # @!attribute security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    #   @return [Array<String>]
    # @!attribute storage_size
    #   <p>The broker's storage size in GB.</p>
    #   @return [Integer]
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones. If you specify more than one subnet, the subnets must be in different Availability Zones. Amazon MQ will not be able to create VPC endpoints for your broker with multiple subnets in the same Availability Zone. A SINGLE_INSTANCE deployment requires one subnet (for example, the default subnet). An ACTIVE_STANDBY_MULTI_AZ Amazon MQ for ActiveMQ deployment requires two subnets. A CLUSTER_MULTI_AZ Amazon MQ for RabbitMQ deployment has no subnet requirements when deployed with public accessibility. Deployment without public accessibility requires at least one subnet.</p> <important><p>If you specify subnets in a <a href="https://docs.aws.amazon.com/vpc/latest/userguide/vpc-sharing.html">shared VPC</a> for a RabbitMQ broker, the associated VPC to which the specified subnets belong must be owned by your Amazon Web Services account. Amazon MQ will not be able to create VPC endpoints in VPCs that are not owned by your Amazon Web Services account.</p></important>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>Create tags when creating the broker.</p>
    #   @return [Hash<String, String>]
    # @!attribute users
    #   <p>The list of broker users (persons or applications) who can access queues and topics. For Amazon MQ for RabbitMQ brokers, an administrative user is required if using simple authentication and authorization. For brokers using OAuth2, this user is optional. When provided, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>
    #   @return [Array<Types::User>]
    # @!attribute data_replication_mode
    #   <p>Defines whether this broker is a part of a data replication pair.</p>
    #   @return [String]
    # @!attribute data_replication_primary_broker_arn
    #   <p>The Amazon Resource Name (ARN) of the primary broker that is used to replicate data from in a data replication pair, and is applied to the replica broker. Must be set when dataReplicationMode is set to CRDR.</p>
    #   @return [String]
    class CreateBrokerRequest < Struct.new(
      nil,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_name,
      :configuration,
      :creator_request_id,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :publicly_accessible,
      :security_groups,
      :storage_size,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      :data_replication_mode,
      :data_replication_primary_broker_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class CreateBrokerResponse < Struct.new(
      nil,
      :broker_arn,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a new configuration for the specified configuration name. Amazon MQ uses the default configuration (the engine type and version).</p>
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Create tags when creating the configuration.</p>
    #   @return [Hash<String, String>]
    class CreateConfigurationRequest < Struct.new(
      nil,
      :authentication_strategy,
      :engine_type,
      :engine_version,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Required. The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #   @return [String]
    class CreateConfigurationResponse < Struct.new(
      nil,
      :arn,
      :authentication_strategy,
      :created,
      :id,
      :latest_revision,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A map of the key-value pairs for the resource tag.</p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #   @return [Hash<String, String>]
    class CreateTagsRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a new ActiveMQ user.</p>
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user.</p>
    #   @return [Boolean]
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [Array<String>]
    # @!attribute password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    # @!attribute replication_user
    #   <p>Defines if this user is intended for CRDR replication purposes.</p>
    #   @return [Boolean]
    class CreateUserRequest < Struct.new(
      nil,
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateUserResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a broker in a data replication pair.</p>
    # @!attribute broker_id
    #   <p>Required. The unique broker id generated by Amazon MQ.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Required. The region of the broker.</p>
    #   @return [String]
    class DataReplicationCounterpart < Struct.new(
      nil,
      :broker_id,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The replication details of the data replication-enabled broker. Only returned if dataReplicationMode or pendingDataReplicationMode is set to CRDR.</p>
    # @!attribute data_replication_counterpart
    #   <p>Describes the replica/primary broker. Only returned if this broker is currently set as a primary or replica in the broker's dataReplicationRole property.</p>
    #   @return [Types::DataReplicationCounterpart]
    # @!attribute data_replication_role
    #   <p>Defines the role of this broker in a data replication pair. When a replica broker is promoted to primary, this role is interchanged.</p>
    #   @return [String]
    class DataReplicationMetadataOutput < Struct.new(
      nil,
      :data_replication_counterpart,
      :data_replication_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class DeleteBrokerRequest < Struct.new(
      nil,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class DeleteBrokerResponse < Struct.new(
      nil,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    class DeleteConfigurationRequest < Struct.new(
      nil,
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    class DeleteConfigurationResponse < Struct.new(
      nil,
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>An array of tag keys to delete</p>
    #   @return [Array<String>]
    class DeleteTagsRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    class DeleteUserRequest < Struct.new(
      nil,
      :broker_id,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteUserResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_type
    #   <p>Filter response by engine type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class DescribeBrokerEngineTypesRequest < Struct.new(
      nil,
      :engine_type,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_engine_types
    #   <p>List of available engine types and versions.</p>
    #   @return [Array<Types::BrokerEngineType>]
    # @!attribute max_results
    #   <p>Required. The maximum number of engine types that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class DescribeBrokerEngineTypesResponse < Struct.new(
      nil,
      :broker_engine_types,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute engine_type
    #   <p>Filter response by engine type.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>Filter response by host instance type.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>Filter response by storage type.</p>
    #   @return [String]
    class DescribeBrokerInstanceOptionsRequest < Struct.new(
      nil,
      :engine_type,
      :host_instance_type,
      :max_results,
      :next_token,
      :storage_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_instance_options
    #   <p>List of available broker instance options.</p>
    #   @return [Array<Types::BrokerInstanceOption>]
    # @!attribute max_results
    #   <p>Required. The maximum number of instance options that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class DescribeBrokerInstanceOptionsResponse < Struct.new(
      nil,
      :broker_instance_options,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class DescribeBrokerRequest < Struct.new(
      nil,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute actions_required
    #   <p>Actions required for a broker.</p>
    #   @return [Array<Types::ActionRequired>]
    # @!attribute authentication_strategy
    #   <p>The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p>
    #   @return [Boolean]
    # @!attribute broker_arn
    #   <p>The broker's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute broker_instances
    #   <p>A list of information about allocated brokers.</p>
    #   @return [Array<Types::BrokerInstance>]
    # @!attribute broker_name
    #   <p>The broker's name. This value must be unique in your Amazon Web Services account account, 1-50 characters long, must contain only letters, numbers, dashes, and underscores, and must not contain white spaces, brackets, wildcard characters, or special characters.</p>
    #   @return [String]
    # @!attribute broker_state
    #   <p>The broker's status.</p>
    #   @return [String]
    # @!attribute configurations
    #   <p>The list of all revisions for the specified configuration.</p>
    #   @return [Types::Configurations]
    # @!attribute created
    #   <p>The time when the broker was created.</p>
    #   @return [Time]
    # @!attribute deployment_mode
    #   <p>The broker's deployment mode.</p>
    #   @return [String]
    # @!attribute encryption_options
    #   <p>Encryption options for the broker.</p>
    #   @return [Types::EncryptionOptions]
    # @!attribute engine_type
    #   <p>The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The broker engine version. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>The broker's instance type.</p>
    #   @return [String]
    # @!attribute ldap_server_metadata
    #   <p>The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>
    #   @return [Types::LdapServerMetadataOutput]
    # @!attribute logs
    #   <p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>
    #   @return [Types::LogsSummary]
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #   @return [Types::WeeklyStartTime]
    # @!attribute pending_authentication_strategy
    #   <p>The authentication strategy that will be applied when the broker is rebooted. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute pending_engine_version
    #   <p>The broker engine version to upgrade to. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute pending_host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker instance types</a>.</p>
    #   @return [String]
    # @!attribute pending_ldap_server_metadata
    #   <p>The metadata of the LDAP server that will be used to authenticate and authorize connections to the broker after it is rebooted.</p>
    #   @return [Types::LdapServerMetadataOutput]
    # @!attribute pending_security_groups
    #   <p>The list of pending security groups to authorize connections to brokers.</p>
    #   @return [Array<String>]
    # @!attribute pending_storage_size
    #   <p>The pending storage size in GB, to be applied on the next broker restart.</p>
    #   @return [Integer]
    # @!attribute publicly_accessible
    #   <p>Enables connections from applications outside of the VPC that hosts the broker's subnets.</p>
    #   @return [Boolean]
    # @!attribute security_groups
    #   <p>The list of rules (1 minimum, 125 maximum) that authorize connections to brokers.</p>
    #   @return [Array<String>]
    # @!attribute storage_size
    #   <p>The broker's storage size in GB.</p>
    #   @return [Integer]
    # @!attribute storage_type
    #   <p>The broker's storage type.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The list of groups that define which subnets and IP ranges the broker can use from different Availability Zones.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The list of all tags associated with this broker.</p>
    #   @return [Hash<String, String>]
    # @!attribute users
    #   <p>The list of all broker usernames for the specified broker.</p>
    #   @return [Array<Types::UserSummary>]
    # @!attribute data_replication_metadata
    #   <p>The replication details of the data replication-enabled broker. Only returned if dataReplicationMode is set to CRDR.</p>
    #   @return [Types::DataReplicationMetadataOutput]
    # @!attribute data_replication_mode
    #   <p>Describes whether this broker is a part of a data replication pair.</p>
    #   @return [String]
    # @!attribute pending_data_replication_metadata
    #   <p>The pending replication details of the data replication-enabled broker. Only returned if pendingDataReplicationMode is set to CRDR.</p>
    #   @return [Types::DataReplicationMetadataOutput]
    # @!attribute pending_data_replication_mode
    #   <p>Describes whether this broker will be a part of a data replication pair after reboot.</p>
    #   @return [String]
    class DescribeBrokerResponse < Struct.new(
      nil,
      :actions_required,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_arn,
      :broker_id,
      :broker_instances,
      :broker_name,
      :broker_state,
      :configurations,
      :created,
      :deployment_mode,
      :encryption_options,
      :engine_type,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :pending_authentication_strategy,
      :pending_engine_version,
      :pending_host_instance_type,
      :pending_ldap_server_metadata,
      :pending_security_groups,
      :pending_storage_size,
      :publicly_accessible,
      :security_groups,
      :storage_size,
      :storage_type,
      :subnet_ids,
      :tags,
      :users,
      :data_replication_metadata,
      :data_replication_mode,
      :pending_data_replication_metadata,
      :pending_data_replication_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    class DescribeConfigurationRequest < Struct.new(
      nil,
      :configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>Required. The ARN of the configuration.</p>
    #   @return [String]
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy associated with the configuration. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Required. The date and time of the configuration revision.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>Required. The description of the configuration.</p>
    #   @return [String]
    # @!attribute engine_type
    #   <p>Required. The type of broker engine. Currently, Amazon MQ supports ACTIVEMQ and RABBITMQ.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The broker engine version. Defaults to the latest available version for the specified broker engine type. For a list of supported engine versions, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>Required. The latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>Required. The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of all tags associated with this configuration.</p>
    #   @return [Hash<String, String>]
    class DescribeConfigurationResponse < Struct.new(
      nil,
      :arn,
      :authentication_strategy,
      :created,
      :description,
      :engine_type,
      :engine_version,
      :id,
      :latest_revision,
      :name,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute configuration_revision
    #   <p>The revision of the configuration.</p>
    #   @return [String]
    class DescribeConfigurationRevisionRequest < Struct.new(
      nil,
      :configuration_id,
      :configuration_revision,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>Required. The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #   @return [Time]
    # @!attribute data
    #   <p>Amazon MQ for ActiveMQ: the base64-encoded XML configuration. Amazon MQ for RabbitMQ: base64-encoded Cuttlefish.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    class DescribeConfigurationRevisionResponse < Struct.new(
      nil,
      :configuration_id,
      :created,
      :data,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of resources that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class DescribeSharedResourcesRequest < Struct.new(
      nil,
      :broker_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    # @!attribute shared_resources
    #   <p>A list of resources shared to the broker.</p>
    #   @return [Array<Types::SharedResource>]
    class DescribeSharedResourcesResponse < Struct.new(
      nil,
      :next_token,
      :shared_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    class DescribeUserRequest < Struct.new(
      nil,
      :broker_id,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #   @return [Boolean]
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [Array<String>]
    # @!attribute pending
    #   <p>The status of the changes pending for the ActiveMQ user.</p>
    #   @return [Types::UserPendingChanges]
    # @!attribute username
    #   <p>Required. The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    # @!attribute replication_user
    #   <p>Describes whether the user is intended for data replication</p>
    #   @return [Boolean]
    class DescribeUserResponse < Struct.new(
      nil,
      :broker_id,
      :console_access,
      :groups,
      :pending,
      :username,
      :replication_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Encryption options for the broker.</p>
    # @!attribute kms_key_id
    #   <p>The customer master key (CMK) to use for the A KMS (KMS). This key is used to encrypt your data at rest. If not provided, Amazon MQ will use a default CMK to encrypt your data.</p>
    #   @return [String]
    # @!attribute use_aws_owned_key
    #   <p>Enables the use of an Amazon Web Services owned CMK using KMS (KMS). Set to true by default, if no value is provided, for example, for RabbitMQ brokers.</p>
    #   @return [Boolean]
    class EncryptionOptions < Struct.new(
      nil,
      :kms_key_id,
      :use_aws_owned_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Id of the engine version.</p>
    # @!attribute name
    #   <p>Id for the version.</p>
    #   @return [String]
    class EngineVersion < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class ForbiddenException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class InternalServerErrorException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p> <important><p>Does not apply to RabbitMQ brokers.</p></important>
    # @!attribute hosts
    #   <p>Specifies the location of the LDAP server such as Directory Service for Microsoft Active Directory. Optional failover server.</p>
    #   @return [Array<String>]
    # @!attribute role_base
    #   <p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
    #                     dc=example, dc=com.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>
    #   @return [String]
    # @!attribute role_search_matching
    #   <p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>
    #   @return [String]
    # @!attribute role_search_subtree
    #   <p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>
    #   @return [Boolean]
    # @!attribute service_account_password
    #   <p>Service account password. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #   @return [String]
    # @!attribute service_account_username
    #   <p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #   @return [String]
    # @!attribute user_base
    #   <p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
    #                     dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>
    #   @return [String]
    # @!attribute user_role_name
    #   <p>Specifies the name of the LDAP attribute for the user group membership.</p>
    #   @return [String]
    # @!attribute user_search_matching
    #   <p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #                     dc=com.</p>
    #   @return [String]
    # @!attribute user_search_subtree
    #   <p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>
    #   @return [Boolean]
    class LdapServerMetadataInput < Struct.new(
      nil,
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_password,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker.</p>
    # @!attribute hosts
    #   <p>Specifies the location of the LDAP server such as Directory Service for Microsoft Active Directory. Optional failover server.</p>
    #   @return [Array<String>]
    # @!attribute role_base
    #   <p>The distinguished name of the node in the directory information tree (DIT) to search for roles or groups. For example, ou=group, ou=corp, dc=corp,
    #                     dc=example, dc=com.</p>
    #   @return [String]
    # @!attribute role_name
    #   <p>Specifies the LDAP attribute that identifies the group name attribute in the object returned from the group membership query.</p>
    #   @return [String]
    # @!attribute role_search_matching
    #   <p>The LDAP search filter used to find roles within the roleBase. The distinguished name of the user matched by userSearchMatching is substituted into the {0} placeholder in the search filter. The client's username is substituted into the {1} placeholder. For example, if you set this option to (member=uid={1})for the user janedoe, the search filter becomes (member=uid=janedoe) after string substitution. It matches all role entries that have a member attribute equal to uid=janedoe under the subtree selected by the roleBase.</p>
    #   @return [String]
    # @!attribute role_search_subtree
    #   <p>The directory search scope for the role. If set to true, scope is to search the entire subtree.</p>
    #   @return [Boolean]
    # @!attribute service_account_username
    #   <p>Service account username. A service account is an account in your LDAP server that has access to initiate a connection. For example, cn=admin,dc=corp, dc=example,
    #                     dc=com.</p>
    #   @return [String]
    # @!attribute user_base
    #   <p>Select a particular subtree of the directory information tree (DIT) to search for user entries. The subtree is specified by a DN, which specifies the base node of the subtree. For example, by setting this option to ou=Users,ou=corp, dc=corp,
    #                     dc=example, dc=com, the search for user entries is restricted to the subtree beneath ou=Users, ou=corp, dc=corp, dc=example, dc=com.</p>
    #   @return [String]
    # @!attribute user_role_name
    #   <p>Specifies the name of the LDAP attribute for the user group membership.</p>
    #   @return [String]
    # @!attribute user_search_matching
    #   <p>The LDAP search filter used to find users within the userBase. The client's username is substituted into the {0} placeholder in the search filter. For example, if this option is set to (uid={0}) and the received username is janedoe, the search filter becomes (uid=janedoe) after string substitution. It will result in matching an entry like uid=janedoe, ou=Users,ou=corp, dc=corp, dc=example,
    #                  dc=com.</p>
    #   @return [String]
    # @!attribute user_search_subtree
    #   <p>The directory search scope for the user. If set to true, scope is to search the entire subtree.</p>
    #   @return [Boolean]
    class LdapServerMetadataOutput < Struct.new(
      nil,
      :hosts,
      :role_base,
      :role_name,
      :role_search_matching,
      :role_search_subtree,
      :service_account_username,
      :user_base,
      :user_role_name,
      :user_search_matching,
      :user_search_subtree,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListBrokersRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_summaries
    #   <p>A list of information about all brokers.</p>
    #   @return [Array<Types::BrokerSummary>]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListBrokersResponse < Struct.new(
      nil,
      :broker_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListConfigurationRevisionsRequest < Struct.new(
      nil,
      :configuration_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of configuration revisions that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    # @!attribute revisions
    #   <p>The list of all revisions for the specified configuration.</p>
    #   @return [Array<Types::ConfigurationRevision>]
    class ListConfigurationRevisionsResponse < Struct.new(
      nil,
      :configuration_id,
      :max_results,
      :next_token,
      :revisions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListConfigurationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>The list of all revisions for the specified configuration.</p>
    #   @return [Array<Types::Configuration>]
    # @!attribute max_results
    #   <p>The maximum number of configurations that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListConfigurationsResponse < Struct.new(
      nil,
      :configurations,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource tag.</p>
    #   @return [String]
    class ListTagsRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The key-value pair for the resource tag.</p>
    #   @return [Hash<String, String>]
    class ListTagsResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of brokers that Amazon MQ can return per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    class ListUsersRequest < Struct.new(
      nil,
      :broker_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Required. The maximum number of ActiveMQ users that can be returned per page (20 by default). This value must be an integer from 5 to 100.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token that specifies the next page of results Amazon MQ should return. To request the first page, leave nextToken empty.</p>
    #   @return [String]
    # @!attribute users
    #   <p>Required. The list of all ActiveMQ usernames for the specified broker. Does not apply to RabbitMQ brokers.</p>
    #   @return [Array<Types::UserSummary>]
    class ListUsersResponse < Struct.new(
      nil,
      :broker_id,
      :max_results,
      :next_token,
      :users,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of information about logs to be enabled for the specified broker.</p>
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged. Does not apply to RabbitMQ brokers.</p>
    #   @return [Boolean]
    # @!attribute general
    #   <p>Enables general logging.</p>
    #   @return [Boolean]
    class Logs < Struct.new(
      nil,
      :audit,
      :general,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of information about logs currently enabled and pending to be deployed for the specified broker.</p>
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>
    #   @return [Boolean]
    # @!attribute audit_log_group
    #   <p>The location of the CloudWatch Logs log group where audit logs are sent.</p>
    #   @return [String]
    # @!attribute general
    #   <p>Enables general logging.</p>
    #   @return [Boolean]
    # @!attribute general_log_group
    #   <p>The location of the CloudWatch Logs log group where general logs are sent.</p>
    #   @return [String]
    # @!attribute pending
    #   <p>The list of information about logs pending to be deployed for the specified broker.</p>
    #   @return [Types::PendingLogs]
    class LogsSummary < Struct.new(
      nil,
      :audit,
      :audit_log_group,
      :general,
      :general_log_group,
      :pending,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class NotFoundException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of information about logs to be enabled for the specified broker.</p>
    # @!attribute audit
    #   <p>Enables audit logging. Every user management action made using JMX or the ActiveMQ Web Console is logged.</p>
    #   @return [Boolean]
    # @!attribute general
    #   <p>Enables general logging.</p>
    #   @return [Boolean]
    class PendingLogs < Struct.new(
      nil,
      :audit,
      :general,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Promotes a data replication replica broker to the primary broker role.</p>
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The Promote mode requested. Note: Valid values for the parameter are SWITCHOVER, FAILOVER.</p>
    #   @return [String]
    class PromoteRequest < Struct.new(
      nil,
      :broker_id,
      :mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class PromoteResponse < Struct.new(
      nil,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    class RebootBrokerRequest < Struct.new(
      nil,
      :broker_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RebootBrokerResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns info about the resource share error after updating the broker.</p>
    # @!attribute error_code
    #   <p>The error code of the resource share.</p>
    #   @return [String]
    # @!attribute resource_share_arn
    #   <p>The ARN of the resource share.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the resource share.</p>
    #   @return [String]
    class ResourceShareError < Struct.new(
      nil,
      :error_code,
      :resource_share_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the configuration element or attribute that was sanitized in the configuration.</p>
    # @!attribute attribute_name
    #   <p>The name of the configuration attribute that has been sanitized.</p>
    #   @return [String]
    # @!attribute element_name
    #   <p>The name of the configuration element that has been sanitized.</p>
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for which the configuration elements or attributes were sanitized.</p>
    #   @return [String]
    class SanitizationWarning < Struct.new(
      nil,
      :attribute_name,
      :element_name,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Represents a resource that is shared with the broker, including its type, ARN, and current status.</p>
    # @!attribute dns_names
    #   <p>The DNS names accessible by the broker.</p>
    #   @return [Array<String>]
    # @!attribute error
    #   <p>Information on the error encountered by the resource.</p>
    #   @return [Types::SharedResourceError]
    # @!attribute resource_arn
    #   <p>The ARN of the shared resource.</p>
    #   @return [String]
    # @!attribute resource_share_arns
    #   <p>The resource share ARNs to which the resource belongs.</p>
    #   @return [Array<String>]
    # @!attribute status
    #   <p>The status of the shared resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of shared resource.</p>
    #   @return [String]
    class SharedResource < Struct.new(
      nil,
      :dns_names,
      :error,
      :resource_arn,
      :resource_share_arns,
      :status,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information on the error encountered by the resource.</p>
    # @!attribute code
    #   <p>The error code associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class SharedResourceError < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about an error.</p>
    # @!attribute error_attribute
    #   <p>The attribute which caused the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The explanation of the error.</p>
    #   @return [String]
    # @!attribute resource_share_errors
    #   <p>The list of resource share errors.</p>
    #   @return [Array<Types::ResourceShareError>]
    class UnauthorizedException < Struct.new(
      nil,
      :error_attribute,
      :message,
      :resource_share_errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the broker using the specified properties.</p>
    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p> <note><p>Must be set to true for ActiveMQ brokers version 5.18 and above and for RabbitMQ brokers version 3.13 and above.</p></note>
    #   @return [Boolean]
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>A list of information about the configuration.</p>
    #   @return [Types::ConfigurationId]
    # @!attribute engine_version
    #   <p>The broker engine version. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p> <note><p>When upgrading to ActiveMQ version 5.18 and above or RabbitMQ version 3.13 and above, you must have autoMinorVersionUpgrade set to true for the broker.</p></note>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker instance types</a>.</p>
    #   @return [String]
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #   @return [Types::LdapServerMetadataInput]
    # @!attribute logs
    #   <p>Enables Amazon CloudWatch logging for brokers.</p>
    #   @return [Types::Logs]
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #   @return [Types::WeeklyStartTime]
    # @!attribute resource_share_arns
    #   <p>The list of resource shares to update on the broker</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    #   @return [Array<String>]
    # @!attribute storage_size
    #   <p>The broker's storage size in GB.</p>
    #   @return [Integer]
    # @!attribute data_replication_mode
    #   <p>Defines whether this broker is a part of a data replication pair.</p>
    #   @return [String]
    class UpdateBrokerRequest < Struct.new(
      nil,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :resource_share_arns,
      :security_groups,
      :storage_size,
      :data_replication_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute authentication_strategy
    #   <p>Optional. The authentication strategy used to secure the broker. The default is SIMPLE.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Enables automatic upgrades to new patch versions for brokers as new versions are released and supported by Amazon MQ. Automatic upgrades occur during the scheduled maintenance window or after a manual broker reboot.</p>
    #   @return [Boolean]
    # @!attribute broker_id
    #   <p>Required. The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The ID of the updated configuration.</p>
    #   @return [Types::ConfigurationId]
    # @!attribute engine_version
    #   <p>The broker engine version to upgrade to. For more information, see the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/activemq-version-management.html">ActiveMQ version management</a> and the <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/rabbitmq-version-management.html">RabbitMQ version management</a> sections in the Amazon MQ Developer Guide.</p>
    #   @return [String]
    # @!attribute host_instance_type
    #   <p>The broker's host instance type to upgrade to. For a list of supported instance types, see <a href="https://docs.aws.amazon.com//amazon-mq/latest/developer-guide/broker.html#broker-instance-types">Broker instance types</a>.</p>
    #   @return [String]
    # @!attribute ldap_server_metadata
    #   <p>Optional. The metadata of the LDAP server used to authenticate and authorize connections to the broker. Does not apply to RabbitMQ brokers.</p>
    #   @return [Types::LdapServerMetadataOutput]
    # @!attribute logs
    #   <p>The list of information about logs to be enabled for the specified broker.</p>
    #   @return [Types::Logs]
    # @!attribute maintenance_window_start_time
    #   <p>The parameters that determine the WeeklyStartTime.</p>
    #   @return [Types::WeeklyStartTime]
    # @!attribute resource_share_arns
    #   <p>The pending broker's target list of resource shares</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The list of security groups (1 minimum, 5 maximum) that authorizes connections to brokers.</p>
    #   @return [Array<String>]
    # @!attribute data_replication_metadata
    #   <p>The replication details of the data replication-enabled broker. Only returned if dataReplicationMode is set to CRDR.</p>
    #   @return [Types::DataReplicationMetadataOutput]
    # @!attribute data_replication_mode
    #   <p>Describes whether this broker is a part of a data replication pair.</p>
    #   @return [String]
    # @!attribute pending_data_replication_metadata
    #   <p>The pending replication details of the data replication-enabled broker. Only returned if pendingDataReplicationMode is set to CRDR.</p>
    #   @return [Types::DataReplicationMetadataOutput]
    # @!attribute pending_data_replication_mode
    #   <p>Describes whether this broker will be a part of a data replication pair after reboot.</p>
    #   @return [String]
    # @!attribute storage_size
    #   <p>The broker's storage size in GB.</p>
    #   @return [Integer]
    class UpdateBrokerResponse < Struct.new(
      nil,
      :authentication_strategy,
      :auto_minor_version_upgrade,
      :broker_id,
      :configuration,
      :engine_version,
      :host_instance_type,
      :ldap_server_metadata,
      :logs,
      :maintenance_window_start_time,
      :resource_share_arns,
      :security_groups,
      :data_replication_metadata,
      :data_replication_mode,
      :pending_data_replication_metadata,
      :pending_data_replication_mode,
      :storage_size,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the specified configuration.</p>
    # @!attribute configuration_id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Amazon MQ for Active MQ: The base64-encoded XML configuration. Amazon MQ for RabbitMQ: the base64-encoded Cuttlefish configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the configuration.</p>
    #   @return [String]
    class UpdateConfigurationRequest < Struct.new(
      nil,
      :configuration_id,
      :data,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the configuration.</p>
    #   @return [String]
    # @!attribute created
    #   <p>Required. The date and time of the configuration.</p>
    #   @return [Time]
    # @!attribute id
    #   <p>The unique ID that Amazon MQ generates for the configuration.</p>
    #   @return [String]
    # @!attribute latest_revision
    #   <p>The latest revision of the configuration.</p>
    #   @return [Types::ConfigurationRevision]
    # @!attribute name
    #   <p>The name of the configuration. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 1-150 characters long.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>The list of the first 20 warnings about the configuration elements or attributes that were sanitized.</p>
    #   @return [Array<Types::SanitizationWarning>]
    class UpdateConfigurationResponse < Struct.new(
      nil,
      :arn,
      :created,
      :id,
      :latest_revision,
      :name,
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Updates the information for an ActiveMQ user.</p>
    # @!attribute broker_id
    #   <p>The unique ID that Amazon MQ generates for the broker.</p>
    #   @return [String]
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #   @return [Boolean]
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [Array<String>]
    # @!attribute password
    #   <p>The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the ActiveMQ user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    # @!attribute replication_user
    #   <p>Defines whether the user is intended for data replication.</p>
    #   @return [Boolean]
    class UpdateUserRequest < Struct.new(
      nil,
      :broker_id,
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateUserResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A user associated with the broker. For Amazon MQ for RabbitMQ brokers, one and only one administrative user is accepted and created when a broker is first provisioned. All subsequent broker users are created by making RabbitMQ API calls directly to brokers or via the RabbitMQ web console.</p>
    # @!attribute console_access
    #   <p>Enables access to the ActiveMQ Web Console for the ActiveMQ user. Does not apply to RabbitMQ brokers.</p>
    #   @return [Boolean]
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long. Does not apply to RabbitMQ brokers.</p>
    #   @return [Array<String>]
    # @!attribute password
    #   <p>Required. The password of the user. This value must be at least 12 characters long, must contain at least 4 unique characters, and must not contain commas, colons, or equal signs (,:=).</p>
    #   @return [String]
    # @!attribute username
    #   <p>The username of the broker user. The following restrictions apply to broker usernames:</p> <ul><li><p>For Amazon MQ for ActiveMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p></li> <li><p>para>For Amazon MQ for RabbitMQ brokers, this value can contain only alphanumeric characters, dashes, periods, underscores (- . _). This value must not contain a tilde (~) character. Amazon MQ prohibts using guest as a valid usename. This value must be 2-100 characters long.</p></para></li></ul> <important><p>Do not add personally identifiable information (PII) or other confidential or sensitive information in broker usernames. Broker usernames are accessible to other Amazon Web Services services, including CloudWatch Logs. Broker usernames are not intended to be used for private or sensitive data.</p></important>
    #   @return [String]
    # @!attribute replication_user
    #   <p>Defines if this user is intended for CRDR replication purposes.</p>
    #   @return [Boolean]
    class User < Struct.new(
      nil,
      :console_access,
      :groups,
      :password,
      :username,
      :replication_user,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns information about the status of the changes pending for the ActiveMQ user.</p>
    # @!attribute console_access
    #   <p>Enables access to the the ActiveMQ Web Console for the ActiveMQ user.</p>
    #   @return [Boolean]
    # @!attribute groups
    #   <p>The list of groups (20 maximum) to which the ActiveMQ user belongs. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [Array<String>]
    # @!attribute pending_change
    #   <p>Required. The type of change pending for the ActiveMQ user.</p>
    #   @return [String]
    class UserPendingChanges < Struct.new(
      nil,
      :console_access,
      :groups,
      :pending_change,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns a list of all broker users. Does not apply to RabbitMQ brokers.</p>
    # @!attribute pending_change
    #   <p>The type of change pending for the broker user.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Required. The username of the broker user. This value can contain only alphanumeric characters, dashes, periods, underscores, and tildes (- . _ ~). This value must be 2-100 characters long.</p>
    #   @return [String]
    class UserSummary < Struct.new(
      nil,
      :pending_change,
      :username,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The scheduled time period relative to UTC during which Amazon MQ begins to apply pending updates or patches to the broker.</p>
    # @!attribute day_of_week
    #   <p>Required. The day of the week.</p>
    #   @return [String]
    # @!attribute time_of_day
    #   <p>Required. The time, in 24-hour format.</p>
    #   @return [String]
    # @!attribute time_zone
    #   <p>The time zone, UTC by default, in either the Country/City format, or the UTC offset format.</p>
    #   @return [String]
    class WeeklyStartTime < Struct.new(
      nil,
      :day_of_week,
      :time_of_day,
      :time_zone,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
