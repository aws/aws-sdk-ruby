# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module DatabaseMigrationService
    module Types

      # Describes a quota for an AWS account, for example, the number of
      # replication instances allowed.
      class AccountQuota < Aws::Structure.new(
        :account_quota_name,
        :used,
        :max)

        # @!attribute [rw] account_quota_name
        #   The name of the AWS DMS quota for this AWS account.
        #   @return [String]

        # @!attribute [rw] used
        #   The amount currently used toward the quota maximum.
        #   @return [Integer]

        # @!attribute [rw] max
        #   The maximum allowed value for the quota.
        #   @return [Integer]

      end

      # @note When making an API call, pass AddTagsToResourceMessage
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
      class AddTagsToResourceMessage < Aws::Structure.new(
        :resource_arn,
        :tags)

        # @!attribute [rw] resource_arn
        #   The Amazon Resource Name (ARN) of the AWS DMS resource the tag is to
        #   be added to. AWS DMS resources include a replication instance,
        #   endpoint, and a replication task.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tag to be assigned to the DMS resource.
        #   @return [Array<Types::Tag>]

      end

      class AddTagsToResourceResponse < Aws::EmptyStructure; end

      class AvailabilityZone < Aws::Structure.new(
        :name)

        # @!attribute [rw] name
        #   The name of the availability zone.
        #   @return [String]

      end

      # The SSL certificate that can be used to encrypt connections between
      # the endpoints and the replication instance.
      class Certificate < Aws::Structure.new(
        :certificate_identifier,
        :certificate_creation_date,
        :certificate_pem,
        :certificate_arn,
        :certificate_owner,
        :valid_from_date,
        :valid_to_date,
        :signing_algorithm,
        :key_length)

        # @!attribute [rw] certificate_identifier
        #   The customer-assigned name of the certificate. Valid characters are
        #   \[A-z\_0-9\].
        #   @return [String]

        # @!attribute [rw] certificate_creation_date
        #   the date the certificate was created.
        #   @return [Time]

        # @!attribute [rw] certificate_pem
        #   The contents of the .pem X.509 certificate file.
        #   @return [String]

        # @!attribute [rw] certificate_arn
        #   The Amazon Resource Name (ARN) for the certificate.
        #   @return [String]

        # @!attribute [rw] certificate_owner
        #   The owner of the certificate.
        #   @return [String]

        # @!attribute [rw] valid_from_date
        #   The beginning date the certificate is valid.
        #   @return [Time]

        # @!attribute [rw] valid_to_date
        #   the final date the certificate is valid.
        #   @return [Time]

        # @!attribute [rw] signing_algorithm
        #   The signing algorithm for the certificate.
        #   @return [String]

        # @!attribute [rw] key_length
        #   The key length of the cryptographic algorithm being used.
        #   @return [Integer]

      end

      class Connection < Aws::Structure.new(
        :replication_instance_arn,
        :endpoint_arn,
        :status,
        :last_failure_message,
        :endpoint_identifier,
        :replication_instance_identifier)

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] status
        #   The connection status.
        #   @return [String]

        # @!attribute [rw] last_failure_message
        #   The error message when the connection last failed.
        #   @return [String]

        # @!attribute [rw] endpoint_identifier
        #   The identifier of the endpoint. Identifiers must begin with a
        #   letter; must contain only ASCII letters, digits, and hyphens; and
        #   must not end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] replication_instance_identifier
        #   The replication instance identifier. This parameter is stored as a
        #   lowercase string.
        #   @return [String]

      end

      # @note When making an API call, pass CreateEndpointMessage
      #   data as a hash:
      #
      #       {
      #         endpoint_identifier: "String", # required
      #         endpoint_type: "source", # required, accepts source, target
      #         engine_name: "String", # required
      #         username: "String", # required
      #         password: "SecretString", # required
      #         server_name: "String", # required
      #         port: 1, # required
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
      #       }
      class CreateEndpointMessage < Aws::Structure.new(
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
        :ssl_mode)

        # @!attribute [rw] endpoint_identifier
        #   The database endpoint identifier. Identifiers must begin with a
        #   letter; must contain only ASCII letters, digits, and hyphens; and
        #   must not end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] endpoint_type
        #   The type of endpoint.
        #   @return [String]

        # @!attribute [rw] engine_name
        #   The type of engine for the endpoint. Valid values include MYSQL,
        #   ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, and SQLSERVER.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name to be used to login to the endpoint database.
        #   @return [String]

        # @!attribute [rw] password
        #   The password to be used to login to the endpoint database.
        #   @return [String]

        # @!attribute [rw] server_name
        #   The name of the server where the endpoint database resides.
        #   @return [String]

        # @!attribute [rw] port
        #   The port used by the endpoint database.
        #   @return [Integer]

        # @!attribute [rw] database_name
        #   The name of the endpoint database.
        #   @return [String]

        # @!attribute [rw] extra_connection_attributes
        #   Additional attributes associated with the connection.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier that will be used to encrypt the connection
        #   parameters. If you do not specify a value for the KmsKeyId
        #   parameter, then AWS DMS will use your default encryption key. AWS
        #   KMS creates the default encryption key for your AWS account. Your
        #   AWS account has a different default encryption key for each AWS
        #   region.
        #   @return [String]

        # @!attribute [rw] tags
        #   Tags to be added to the endpoint.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] certificate_arn
        #   The Amazon Resource Number (ARN) for the certificate.
        #   @return [String]

        # @!attribute [rw] ssl_mode
        #   The SSL mode to use for the SSL connection.
        #
        #   SSL mode can be one of four values: none, require, verify-ca,
        #   verify-full.
        #
        #   The default value is none.
        #   @return [String]

      end

      class CreateEndpointResponse < Aws::Structure.new(
        :endpoint)

        # @!attribute [rw] endpoint
        #   The endpoint that was created.
        #   @return [Types::Endpoint]

      end

      # @note When making an API call, pass CreateReplicationInstanceMessage
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
      class CreateReplicationInstanceMessage < Aws::Structure.new(
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

        # @!attribute [rw] allocated_storage
        #   The amount of storage (in gigabytes) to be initially allocated for
        #   the replication instance.
        #   @return [Integer]

        # @!attribute [rw] replication_instance_class
        #   The compute and memory capacity of the replication instance as
        #   specified by the replication instance class.
        #
        #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
        #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
        #   dms.c4.4xlarge `
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   Specifies the VPC security group to be used with the replication
        #   instance. The VPC security group must work with the VPC containing
        #   the replication instance.
        #   @return [Array<String>]

        # @!attribute [rw] availability_zone
        #   The EC2 Availability Zone that the replication instance will be
        #   created in.
        #
        #   Default: A random, system-chosen Availability Zone in the
        #   endpoint\'s region.
        #
        #   Example: `us-east-1d`
        #   @return [String]

        # @!attribute [rw] replication_subnet_group_identifier
        #   A subnet group to associate with the replication instance.
        #   @return [String]

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

        # @!attribute [rw] multi_az
        #   Specifies if the replication instance is a Multi-AZ deployment. You
        #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
        #   parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The engine version number of the replication instance.
        #   @return [String]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor engine upgrades will be applied automatically
        #   to the replication instance during the maintenance window.
        #
        #   Default: `true`
        #   @return [Boolean]

        # @!attribute [rw] tags
        #   Tags to be associated with the replication instance.
        #   @return [Array<Types::Tag>]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier that will be used to encrypt the content on
        #   the replication instance. If you do not specify a value for the
        #   KmsKeyId parameter, then AWS DMS will use your default encryption
        #   key. AWS KMS creates the default encryption key for your AWS
        #   account. Your AWS account has a different default encryption key for
        #   each AWS region.
        #   @return [String]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the replication instance. A
        #   value of `true` represents an instance with a public IP address. A
        #   value of `false` represents an instance with a private IP address.
        #   The default value is `true`.
        #   @return [Boolean]

      end

      class CreateReplicationInstanceResponse < Aws::Structure.new(
        :replication_instance)

        # @!attribute [rw] replication_instance
        #   The replication instance that was created.
        #   @return [Types::ReplicationInstance]

      end

      # @note When making an API call, pass CreateReplicationSubnetGroupMessage
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
      class CreateReplicationSubnetGroupMessage < Aws::Structure.new(
        :replication_subnet_group_identifier,
        :replication_subnet_group_description,
        :subnet_ids,
        :tags)

        # @!attribute [rw] replication_subnet_group_identifier
        #   The name for the replication subnet group. This value is stored as a
        #   lowercase string.
        #
        #   Constraints: Must contain no more than 255 alphanumeric characters,
        #   periods, spaces, underscores, or hyphens. Must not be \"default\".
        #
        #   Example: `mySubnetgroup`
        #   @return [String]

        # @!attribute [rw] replication_subnet_group_description
        #   The description for the subnet group.
        #   @return [String]

        # @!attribute [rw] subnet_ids
        #   The EC2 subnet IDs for the subnet group.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   The tag to be assigned to the subnet group.
        #   @return [Array<Types::Tag>]

      end

      class CreateReplicationSubnetGroupResponse < Aws::Structure.new(
        :replication_subnet_group)

        # @!attribute [rw] replication_subnet_group
        #   The replication subnet group that was created.
        #   @return [Types::ReplicationSubnetGroup]

      end

      # @note When making an API call, pass CreateReplicationTaskMessage
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
      #         tags: [
      #           {
      #             key: "String",
      #             value: "String",
      #           },
      #         ],
      #       }
      class CreateReplicationTaskMessage < Aws::Structure.new(
        :replication_task_identifier,
        :source_endpoint_arn,
        :target_endpoint_arn,
        :replication_instance_arn,
        :migration_type,
        :table_mappings,
        :replication_task_settings,
        :cdc_start_time,
        :tags)

        # @!attribute [rw] replication_task_identifier
        #   The replication task identifier.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] source_endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] target_endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] migration_type
        #   The migration type.
        #   @return [String]

        # @!attribute [rw] table_mappings
        #   The path of the JSON file that contains the table mappings. Preceed
        #   the path with \"file://\".
        #
        #   For example, --table-mappings file://mappingfile.json
        #   @return [String]

        # @!attribute [rw] replication_task_settings
        #   Settings for the task, such as target metadata settings.
        #   @return [String]

        # @!attribute [rw] cdc_start_time
        #   The start time for the Change Data Capture (CDC) operation.
        #   @return [Time]

        # @!attribute [rw] tags
        #   Tags to be added to the replication instance.
        #   @return [Array<Types::Tag>]

      end

      class CreateReplicationTaskResponse < Aws::Structure.new(
        :replication_task)

        # @!attribute [rw] replication_task
        #   The replication task that was created.
        #   @return [Types::ReplicationTask]

      end

      # @note When making an API call, pass DeleteCertificateMessage
      #   data as a hash:
      #
      #       {
      #         certificate_arn: "String", # required
      #       }
      class DeleteCertificateMessage < Aws::Structure.new(
        :certificate_arn)

        # @!attribute [rw] certificate_arn
        #   the Amazon Resource Name (ARN) of the deleted certificate.
        #   @return [String]

      end

      class DeleteCertificateResponse < Aws::Structure.new(
        :certificate)

        # @!attribute [rw] certificate
        #   The SSL certificate.
        #   @return [Types::Certificate]

      end

      # @note When making an API call, pass DeleteEndpointMessage
      #   data as a hash:
      #
      #       {
      #         endpoint_arn: "String", # required
      #       }
      class DeleteEndpointMessage < Aws::Structure.new(
        :endpoint_arn)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

      end

      class DeleteEndpointResponse < Aws::Structure.new(
        :endpoint)

        # @!attribute [rw] endpoint
        #   The endpoint that was deleted.
        #   @return [Types::Endpoint]

      end

      # @note When making an API call, pass DeleteReplicationInstanceMessage
      #   data as a hash:
      #
      #       {
      #         replication_instance_arn: "String", # required
      #       }
      class DeleteReplicationInstanceMessage < Aws::Structure.new(
        :replication_instance_arn)

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance to be
        #   deleted.
        #   @return [String]

      end

      class DeleteReplicationInstanceResponse < Aws::Structure.new(
        :replication_instance)

        # @!attribute [rw] replication_instance
        #   The replication instance that was deleted.
        #   @return [Types::ReplicationInstance]

      end

      # @note When making an API call, pass DeleteReplicationSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         replication_subnet_group_identifier: "String", # required
      #       }
      class DeleteReplicationSubnetGroupMessage < Aws::Structure.new(
        :replication_subnet_group_identifier)

        # @!attribute [rw] replication_subnet_group_identifier
        #   The subnet group name of the replication instance.
        #   @return [String]

      end

      class DeleteReplicationSubnetGroupResponse < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteReplicationTaskMessage
      #   data as a hash:
      #
      #       {
      #         replication_task_arn: "String", # required
      #       }
      class DeleteReplicationTaskMessage < Aws::Structure.new(
        :replication_task_arn)

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Name (ARN) of the replication task to be
        #   deleted.
        #   @return [String]

      end

      class DeleteReplicationTaskResponse < Aws::Structure.new(
        :replication_task)

        # @!attribute [rw] replication_task
        #   The deleted replication task.
        #   @return [Types::ReplicationTask]

      end

      # @api private
      class DescribeAccountAttributesMessage < Aws::EmptyStructure; end

      class DescribeAccountAttributesResponse < Aws::Structure.new(
        :account_quotas)

        # @!attribute [rw] account_quotas
        #   Account quota information.
        #   @return [Array<Types::AccountQuota>]

      end

      # @note When making an API call, pass DescribeCertificatesMessage
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
      class DescribeCertificatesMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the certificate described in the form of
        #   key-value pairs.
        #   @return [Array<Types::Filter>]

        # @!attribute [rw] max_records
        #   The maximum number of records to include in the response. If more
        #   records exist than the specified `MaxRecords` value, a pagination
        #   token called a marker is included in the response so that the
        #   remaining results can be retrieved.
        #
        #   Default: 10
        #   @return [Integer]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeCertificatesResponse < Aws::Structure.new(
        :marker,
        :certificates)

        # @!attribute [rw] marker
        #   The pagination token.
        #   @return [String]

        # @!attribute [rw] certificates
        #   The SSL certificates associated with the replication instance.
        #   @return [Array<Types::Certificate>]

      end

      # @note When making an API call, pass DescribeConnectionsMessage
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
      class DescribeConnectionsMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   The filters applied to the connection.
        #
        #   Valid filter names: endpoint-arn \| replication-instance-arn
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeConnectionsResponse < Aws::Structure.new(
        :marker,
        :connections)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] connections
        #   A description of the connections.
        #   @return [Array<Types::Connection>]

      end

      # @note When making an API call, pass DescribeEndpointTypesMessage
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
      class DescribeEndpointTypesMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the describe action.
        #
        #   Valid filter names: engine-name \| endpoint-type
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeEndpointTypesResponse < Aws::Structure.new(
        :marker,
        :supported_endpoint_types)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] supported_endpoint_types
        #   The type of endpoints that are supported.
        #   @return [Array<Types::SupportedEndpointType>]

      end

      # @note When making an API call, pass DescribeEndpointsMessage
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
      class DescribeEndpointsMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the describe action.
        #
        #   Valid filter names: endpoint-arn \| endpoint-type \| endpoint-id \|
        #   engine-name
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeEndpointsResponse < Aws::Structure.new(
        :marker,
        :endpoints)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] endpoints
        #   Endpoint description.
        #   @return [Array<Types::Endpoint>]

      end

      # @note When making an API call, pass DescribeOrderableReplicationInstancesMessage
      #   data as a hash:
      #
      #       {
      #         max_records: 1,
      #         marker: "String",
      #       }
      class DescribeOrderableReplicationInstancesMessage < Aws::Structure.new(
        :max_records,
        :marker)

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeOrderableReplicationInstancesResponse < Aws::Structure.new(
        :orderable_replication_instances,
        :marker)

        # @!attribute [rw] orderable_replication_instances
        #   The order-able replication instances available.
        #   @return [Array<Types::OrderableReplicationInstance>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeRefreshSchemasStatusMessage
      #   data as a hash:
      #
      #       {
      #         endpoint_arn: "String", # required
      #       }
      class DescribeRefreshSchemasStatusMessage < Aws::Structure.new(
        :endpoint_arn)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

      end

      class DescribeRefreshSchemasStatusResponse < Aws::Structure.new(
        :refresh_schemas_status)

        # @!attribute [rw] refresh_schemas_status
        #   The status of the schema.
        #   @return [Types::RefreshSchemasStatus]

      end

      # @note When making an API call, pass DescribeReplicationInstancesMessage
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
      class DescribeReplicationInstancesMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the describe action.
        #
        #   Valid filter names: replication-instance-arn \|
        #   replication-instance-id \| replication-instance-class \|
        #   engine-version
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeReplicationInstancesResponse < Aws::Structure.new(
        :marker,
        :replication_instances)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] replication_instances
        #   The replication instances described.
        #   @return [Array<Types::ReplicationInstance>]

      end

      # @note When making an API call, pass DescribeReplicationSubnetGroupsMessage
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
      class DescribeReplicationSubnetGroupsMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the describe action.
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeReplicationSubnetGroupsResponse < Aws::Structure.new(
        :marker,
        :replication_subnet_groups)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] replication_subnet_groups
        #   A description of the replication subnet groups.
        #   @return [Array<Types::ReplicationSubnetGroup>]

      end

      # @note When making an API call, pass DescribeReplicationTasksMessage
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
      class DescribeReplicationTasksMessage < Aws::Structure.new(
        :filters,
        :max_records,
        :marker)

        # @!attribute [rw] filters
        #   Filters applied to the describe action.
        #
        #   Valid filter names: replication-task-arn \| replication-task-id \|
        #   migration-type \| endpoint-arn \| replication-instance-arn
        #   @return [Array<Types::Filter>]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeReplicationTasksResponse < Aws::Structure.new(
        :marker,
        :replication_tasks)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] replication_tasks
        #   A description of the replication tasks.
        #   @return [Array<Types::ReplicationTask>]

      end

      # @note When making an API call, pass DescribeSchemasMessage
      #   data as a hash:
      #
      #       {
      #         endpoint_arn: "String", # required
      #         max_records: 1,
      #         marker: "String",
      #       }
      class DescribeSchemasMessage < Aws::Structure.new(
        :endpoint_arn,
        :max_records,
        :marker)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeSchemasResponse < Aws::Structure.new(
        :marker,
        :schemas)

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

        # @!attribute [rw] schemas
        #   The described schema.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass DescribeTableStatisticsMessage
      #   data as a hash:
      #
      #       {
      #         replication_task_arn: "String", # required
      #         max_records: 1,
      #         marker: "String",
      #       }
      class DescribeTableStatisticsMessage < Aws::Structure.new(
        :replication_task_arn,
        :max_records,
        :marker)

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Name (ARN) of the replication task.
        #   @return [String]

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

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class DescribeTableStatisticsResponse < Aws::Structure.new(
        :replication_task_arn,
        :table_statistics,
        :marker)

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Name (ARN) of the replication task.
        #   @return [String]

        # @!attribute [rw] table_statistics
        #   The table statistics.
        #   @return [Array<Types::TableStatistics>]

        # @!attribute [rw] marker
        #   An optional pagination token provided by a previous request. If this
        #   parameter is specified, the response includes only records beyond
        #   the marker, up to the value specified by `MaxRecords`.
        #   @return [String]

      end

      class Endpoint < Aws::Structure.new(
        :endpoint_identifier,
        :endpoint_type,
        :engine_name,
        :username,
        :server_name,
        :port,
        :database_name,
        :extra_connection_attributes,
        :status,
        :kms_key_id,
        :endpoint_arn,
        :certificate_arn,
        :ssl_mode)

        # @!attribute [rw] endpoint_identifier
        #   The database endpoint identifier. Identifiers must begin with a
        #   letter; must contain only ASCII letters, digits, and hyphens; and
        #   must not end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] endpoint_type
        #   The type of endpoint.
        #   @return [String]

        # @!attribute [rw] engine_name
        #   The database engine name.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name used to connect to the endpoint.
        #   @return [String]

        # @!attribute [rw] server_name
        #   The name of the server at the endpoint.
        #   @return [String]

        # @!attribute [rw] port
        #   The port value used to access the endpoint.
        #   @return [Integer]

        # @!attribute [rw] database_name
        #   The name of the database at the endpoint.
        #   @return [String]

        # @!attribute [rw] extra_connection_attributes
        #   Additional connection attributes used to connect to the endpoint.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the endpoint.
        #   @return [String]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier that will be used to encrypt the connection
        #   parameters. If you do not specify a value for the KmsKeyId
        #   parameter, then AWS DMS will use your default encryption key. AWS
        #   KMS creates the default encryption key for your AWS account. Your
        #   AWS account has a different default encryption key for each AWS
        #   region.
        #   @return [String]

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] certificate_arn
        #   The Amazon Resource Name (ARN) used for SSL connection to the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] ssl_mode
        #   The SSL mode used to connect to the endpoint.
        #
        #   SSL mode can be one of four values: none, require, verify-ca,
        #   verify-full.
        #
        #   The default value is none.
        #   @return [String]

      end

      # @note When making an API call, pass Filter
      #   data as a hash:
      #
      #       {
      #         name: "String", # required
      #         values: ["String"], # required
      #       }
      class Filter < Aws::Structure.new(
        :name,
        :values)

        # @!attribute [rw] name
        #   The name of the filter.
        #   @return [String]

        # @!attribute [rw] values
        #   The filter value.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass ImportCertificateMessage
      #   data as a hash:
      #
      #       {
      #         certificate_identifier: "String", # required
      #         certificate_pem: "String",
      #       }
      class ImportCertificateMessage < Aws::Structure.new(
        :certificate_identifier,
        :certificate_pem)

        # @!attribute [rw] certificate_identifier
        #   The customer-assigned name of the certificate. Valid characters are
        #   \[A-z\_0-9\].
        #   @return [String]

        # @!attribute [rw] certificate_pem
        #   The contents of the .pem X.509 certificate file.
        #   @return [String]

      end

      class ImportCertificateResponse < Aws::Structure.new(
        :certificate)

        # @!attribute [rw] certificate
        #   The certificate to be uploaded.
        #   @return [Types::Certificate]

      end

      # @note When making an API call, pass ListTagsForResourceMessage
      #   data as a hash:
      #
      #       {
      #         resource_arn: "String", # required
      #       }
      class ListTagsForResourceMessage < Aws::Structure.new(
        :resource_arn)

        # @!attribute [rw] resource_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   AWS DMS resource.
        #   @return [String]

      end

      class ListTagsForResourceResponse < Aws::Structure.new(
        :tag_list)

        # @!attribute [rw] tag_list
        #   A list of tags for the resource.
        #   @return [Array<Types::Tag>]

      end

      # @note When making an API call, pass ModifyEndpointMessage
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
      #       }
      class ModifyEndpointMessage < Aws::Structure.new(
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
        :ssl_mode)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] endpoint_identifier
        #   The database endpoint identifier. Identifiers must begin with a
        #   letter; must contain only ASCII letters, digits, and hyphens; and
        #   must not end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] endpoint_type
        #   The type of endpoint.
        #   @return [String]

        # @!attribute [rw] engine_name
        #   The type of engine for the endpoint. Valid values include MYSQL,
        #   ORACLE, POSTGRES, MARIADB, AURORA, REDSHIFT, and SQLSERVER.
        #   @return [String]

        # @!attribute [rw] username
        #   The user name to be used to login to the endpoint database.
        #   @return [String]

        # @!attribute [rw] password
        #   The password to be used to login to the endpoint database.
        #   @return [String]

        # @!attribute [rw] server_name
        #   The name of the server where the endpoint database resides.
        #   @return [String]

        # @!attribute [rw] port
        #   The port used by the endpoint database.
        #   @return [Integer]

        # @!attribute [rw] database_name
        #   The name of the endpoint database.
        #   @return [String]

        # @!attribute [rw] extra_connection_attributes
        #   Additional attributes associated with the connection.
        #   @return [String]

        # @!attribute [rw] certificate_arn
        #   The Amazon Resource Name (ARN) of the certificate used for SSL
        #   connection.
        #   @return [String]

        # @!attribute [rw] ssl_mode
        #   The SSL mode to be used.
        #
        #   SSL mode can be one of four values: none, require, verify-ca,
        #   verify-full.
        #
        #   The default value is none.
        #   @return [String]

      end

      class ModifyEndpointResponse < Aws::Structure.new(
        :endpoint)

        # @!attribute [rw] endpoint
        #   The modified endpoint.
        #   @return [Types::Endpoint]

      end

      # @note When making an API call, pass ModifyReplicationInstanceMessage
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
      class ModifyReplicationInstanceMessage < Aws::Structure.new(
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

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   The amount of storage (in gigabytes) to be allocated for the
        #   replication instance.
        #   @return [Integer]

        # @!attribute [rw] apply_immediately
        #   Indicates whether the changes should be applied immediately or
        #   during the next maintenance window.
        #   @return [Boolean]

        # @!attribute [rw] replication_instance_class
        #   The compute and memory capacity of the replication instance.
        #
        #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
        #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
        #   dms.c4.4xlarge `
        #   @return [String]

        # @!attribute [rw] vpc_security_group_ids
        #   Specifies the VPC security group to be used with the replication
        #   instance. The VPC security group must work with the VPC containing
        #   the replication instance.
        #   @return [Array<String>]

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

        # @!attribute [rw] multi_az
        #   Specifies if the replication instance is a Multi-AZ deployment. You
        #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
        #   parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The engine version number of the replication instance.
        #   @return [String]

        # @!attribute [rw] allow_major_version_upgrade
        #   Indicates that major version upgrades are allowed. Changing this
        #   parameter does not result in an outage and the change is
        #   asynchronously applied as soon as possible.
        #
        #   Constraints: This parameter must be set to true when specifying a
        #   value for the `EngineVersion` parameter that is a different major
        #   version than the replication instance\'s current version.
        #   @return [Boolean]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Indicates that minor version upgrades will be applied automatically
        #   to the replication instance during the maintenance window. Changing
        #   this parameter does not result in an outage except in the following
        #   case and the change is asynchronously applied as soon as possible.
        #   An outage will result if this parameter is set to `true` during the
        #   maintenance window, and a newer minor version is available, and AWS
        #   DMS has enabled auto patching for that engine version.
        #   @return [Boolean]

        # @!attribute [rw] replication_instance_identifier
        #   The replication instance identifier. This parameter is stored as a
        #   lowercase string.
        #   @return [String]

      end

      class ModifyReplicationInstanceResponse < Aws::Structure.new(
        :replication_instance)

        # @!attribute [rw] replication_instance
        #   The modified replication instance.
        #   @return [Types::ReplicationInstance]

      end

      # @note When making an API call, pass ModifyReplicationSubnetGroupMessage
      #   data as a hash:
      #
      #       {
      #         replication_subnet_group_identifier: "String", # required
      #         replication_subnet_group_description: "String",
      #         subnet_ids: ["String"], # required
      #       }
      class ModifyReplicationSubnetGroupMessage < Aws::Structure.new(
        :replication_subnet_group_identifier,
        :replication_subnet_group_description,
        :subnet_ids)

        # @!attribute [rw] replication_subnet_group_identifier
        #   The name of the replication instance subnet group.
        #   @return [String]

        # @!attribute [rw] replication_subnet_group_description
        #   The description of the replication instance subnet group.
        #   @return [String]

        # @!attribute [rw] subnet_ids
        #   A list of subnet IDs.
        #   @return [Array<String>]

      end

      class ModifyReplicationSubnetGroupResponse < Aws::Structure.new(
        :replication_subnet_group)

        # @!attribute [rw] replication_subnet_group
        #   The modified replication subnet group.
        #   @return [Types::ReplicationSubnetGroup]

      end

      class OrderableReplicationInstance < Aws::Structure.new(
        :engine_version,
        :replication_instance_class,
        :storage_type,
        :min_allocated_storage,
        :max_allocated_storage,
        :default_allocated_storage,
        :included_allocated_storage)

        # @!attribute [rw] engine_version
        #   The version of the replication engine.
        #   @return [String]

        # @!attribute [rw] replication_instance_class
        #   The compute and memory capacity of the replication instance.
        #
        #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
        #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
        #   dms.c4.4xlarge `
        #   @return [String]

        # @!attribute [rw] storage_type
        #   The type of storage used by the replication instance.
        #   @return [String]

        # @!attribute [rw] min_allocated_storage
        #   The minimum amount of storage (in gigabytes) that can be allocated
        #   for the replication instance.
        #   @return [Integer]

        # @!attribute [rw] max_allocated_storage
        #   The minimum amount of storage (in gigabytes) that can be allocated
        #   for the replication instance.
        #   @return [Integer]

        # @!attribute [rw] default_allocated_storage
        #   The default amount of storage (in gigabytes) that is allocated for
        #   the replication instance.
        #   @return [Integer]

        # @!attribute [rw] included_allocated_storage
        #   The amount of storage (in gigabytes) that is allocated for the
        #   replication instance.
        #   @return [Integer]

      end

      # @note When making an API call, pass RefreshSchemasMessage
      #   data as a hash:
      #
      #       {
      #         endpoint_arn: "String", # required
      #         replication_instance_arn: "String", # required
      #       }
      class RefreshSchemasMessage < Aws::Structure.new(
        :endpoint_arn,
        :replication_instance_arn)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

      end

      class RefreshSchemasResponse < Aws::Structure.new(
        :refresh_schemas_status)

        # @!attribute [rw] refresh_schemas_status
        #   The status of the refreshed schema.
        #   @return [Types::RefreshSchemasStatus]

      end

      class RefreshSchemasStatus < Aws::Structure.new(
        :endpoint_arn,
        :replication_instance_arn,
        :status,
        :last_refresh_date,
        :last_failure_message)

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the schema.
        #   @return [String]

        # @!attribute [rw] last_refresh_date
        #   The date the schema was last refreshed.
        #   @return [Time]

        # @!attribute [rw] last_failure_message
        #   The last failure message for the schema.
        #   @return [String]

      end

      # @note When making an API call, pass RemoveTagsFromResourceMessage
      #   data as a hash:
      #
      #       {
      #         resource_arn: "String", # required
      #         tag_keys: ["String"], # required
      #       }
      class RemoveTagsFromResourceMessage < Aws::Structure.new(
        :resource_arn,
        :tag_keys)

        # @!attribute [rw] resource_arn
        #   &gt;The Amazon Resource Name (ARN) of the AWS DMS resource the tag
        #   is to be removed from.
        #   @return [String]

        # @!attribute [rw] tag_keys
        #   The tag key (name) of the tag to be removed.
        #   @return [Array<String>]

      end

      class RemoveTagsFromResourceResponse < Aws::EmptyStructure; end

      class ReplicationInstance < Aws::Structure.new(
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
        :publicly_accessible)

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

        # @!attribute [rw] replication_instance_class
        #   The compute and memory capacity of the replication instance.
        #
        #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
        #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
        #   dms.c4.4xlarge `
        #   @return [String]

        # @!attribute [rw] replication_instance_status
        #   The status of the replication instance.
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   The amount of storage (in gigabytes) that is allocated for the
        #   replication instance.
        #   @return [Integer]

        # @!attribute [rw] instance_create_time
        #   The time the replication instance was created.
        #   @return [Time]

        # @!attribute [rw] vpc_security_groups
        #   The VPC security group for the instance.
        #   @return [Array<Types::VpcSecurityGroupMembership>]

        # @!attribute [rw] availability_zone
        #   The Availability Zone for the instance.
        #   @return [String]

        # @!attribute [rw] replication_subnet_group
        #   The subnet group for the replication instance.
        #   @return [Types::ReplicationSubnetGroup]

        # @!attribute [rw] preferred_maintenance_window
        #   The maintenance window times for the replication instance.
        #   @return [String]

        # @!attribute [rw] pending_modified_values
        #   The pending modification values.
        #   @return [Types::ReplicationPendingModifiedValues]

        # @!attribute [rw] multi_az
        #   Specifies if the replication instance is a Multi-AZ deployment. You
        #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
        #   parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The engine version number of the replication instance.
        #   @return [String]

        # @!attribute [rw] auto_minor_version_upgrade
        #   Boolean value indicating if minor version upgrades will be
        #   automatically applied to the instance.
        #   @return [Boolean]

        # @!attribute [rw] kms_key_id
        #   The KMS key identifier that is used to encrypt the content on the
        #   replication instance. If you do not specify a value for the KmsKeyId
        #   parameter, then AWS DMS will use your default encryption key. AWS
        #   KMS creates the default encryption key for your AWS account. Your
        #   AWS account has a different default encryption key for each AWS
        #   region.
        #   @return [String]

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] replication_instance_public_ip_address
        #   The public IP address of the replication instance.
        #   @return [String]

        # @!attribute [rw] replication_instance_private_ip_address
        #   The private IP address of the replication instance.
        #   @return [String]

        # @!attribute [rw] replication_instance_public_ip_addresses
        #   The public IP address of the replication instance.
        #   @return [Array<String>]

        # @!attribute [rw] replication_instance_private_ip_addresses
        #   The private IP address of the replication instance.
        #   @return [Array<String>]

        # @!attribute [rw] publicly_accessible
        #   Specifies the accessibility options for the replication instance. A
        #   value of `true` represents an instance with a public IP address. A
        #   value of `false` represents an instance with a private IP address.
        #   The default value is `true`.
        #   @return [Boolean]

      end

      class ReplicationPendingModifiedValues < Aws::Structure.new(
        :replication_instance_class,
        :allocated_storage,
        :multi_az,
        :engine_version)

        # @!attribute [rw] replication_instance_class
        #   The compute and memory capacity of the replication instance.
        #
        #   Valid Values: `dms.t2.micro | dms.t2.small | dms.t2.medium |
        #   dms.t2.large | dms.c4.large | dms.c4.xlarge | dms.c4.2xlarge |
        #   dms.c4.4xlarge `
        #   @return [String]

        # @!attribute [rw] allocated_storage
        #   The amount of storage (in gigabytes) that is allocated for the
        #   replication instance.
        #   @return [Integer]

        # @!attribute [rw] multi_az
        #   Specifies if the replication instance is a Multi-AZ deployment. You
        #   cannot set the `AvailabilityZone` parameter if the Multi-AZ
        #   parameter is set to `true`.
        #   @return [Boolean]

        # @!attribute [rw] engine_version
        #   The engine version number of the replication instance.
        #   @return [String]

      end

      class ReplicationSubnetGroup < Aws::Structure.new(
        :replication_subnet_group_identifier,
        :replication_subnet_group_description,
        :vpc_id,
        :subnet_group_status,
        :subnets)

        # @!attribute [rw] replication_subnet_group_identifier
        #   The identifier of the replication instance subnet group.
        #   @return [String]

        # @!attribute [rw] replication_subnet_group_description
        #   The description of the replication subnet group.
        #   @return [String]

        # @!attribute [rw] vpc_id
        #   The ID of the VPC.
        #   @return [String]

        # @!attribute [rw] subnet_group_status
        #   The status of the subnet group.
        #   @return [String]

        # @!attribute [rw] subnets
        #   The subnets that are in the subnet group.
        #   @return [Array<Types::Subnet>]

      end

      class ReplicationTask < Aws::Structure.new(
        :replication_task_identifier,
        :source_endpoint_arn,
        :target_endpoint_arn,
        :replication_instance_arn,
        :migration_type,
        :table_mappings,
        :replication_task_settings,
        :status,
        :last_failure_message,
        :replication_task_creation_date,
        :replication_task_start_date,
        :replication_task_arn,
        :replication_task_stats)

        # @!attribute [rw] replication_task_identifier
        #   The replication task identifier.
        #
        #   Constraints:
        #
        #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
        #
        #   * First character must be a letter.
        #
        #   * Cannot end with a hyphen or contain two consecutive hyphens.
        #   @return [String]

        # @!attribute [rw] source_endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] target_endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] migration_type
        #   The type of migration.
        #   @return [String]

        # @!attribute [rw] table_mappings
        #   Table mappings specified in the task.
        #   @return [String]

        # @!attribute [rw] replication_task_settings
        #   The settings for the replication task.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the replication task.
        #   @return [String]

        # @!attribute [rw] last_failure_message
        #   The last error (failure) message generated for the replication
        #   instance.
        #   @return [String]

        # @!attribute [rw] replication_task_creation_date
        #   The date the replication task was created.
        #   @return [Time]

        # @!attribute [rw] replication_task_start_date
        #   The date the replication task is scheduled to start.
        #   @return [Time]

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Name (ARN) of the replication task.
        #   @return [String]

        # @!attribute [rw] replication_task_stats
        #   The statistics for the task, including elapsed time, tables loaded,
        #   and table errors.
        #   @return [Types::ReplicationTaskStats]

      end

      class ReplicationTaskStats < Aws::Structure.new(
        :full_load_progress_percent,
        :elapsed_time_millis,
        :tables_loaded,
        :tables_loading,
        :tables_queued,
        :tables_errored)

        # @!attribute [rw] full_load_progress_percent
        #   The percent complete for the full load migration task.
        #   @return [Integer]

        # @!attribute [rw] elapsed_time_millis
        #   The elapsed time of the task, in milliseconds.
        #   @return [Integer]

        # @!attribute [rw] tables_loaded
        #   The number of tables loaded for this task.
        #   @return [Integer]

        # @!attribute [rw] tables_loading
        #   The number of tables currently loading for this task.
        #   @return [Integer]

        # @!attribute [rw] tables_queued
        #   The number of tables queued for this task.
        #   @return [Integer]

        # @!attribute [rw] tables_errored
        #   The number of errors that have occurred during this task.
        #   @return [Integer]

      end

      # @note When making an API call, pass StartReplicationTaskMessage
      #   data as a hash:
      #
      #       {
      #         replication_task_arn: "String", # required
      #         start_replication_task_type: "start-replication", # required, accepts start-replication, resume-processing, reload-target
      #         cdc_start_time: Time.now,
      #       }
      class StartReplicationTaskMessage < Aws::Structure.new(
        :replication_task_arn,
        :start_replication_task_type,
        :cdc_start_time)

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Number (ARN) of the replication task to be
        #   started.
        #   @return [String]

        # @!attribute [rw] start_replication_task_type
        #   The type of replication task.
        #   @return [String]

        # @!attribute [rw] cdc_start_time
        #   The start time for the Change Data Capture (CDC) operation.
        #   @return [Time]

      end

      class StartReplicationTaskResponse < Aws::Structure.new(
        :replication_task)

        # @!attribute [rw] replication_task
        #   The replication task started.
        #   @return [Types::ReplicationTask]

      end

      # @note When making an API call, pass StopReplicationTaskMessage
      #   data as a hash:
      #
      #       {
      #         replication_task_arn: "String", # required
      #       }
      class StopReplicationTaskMessage < Aws::Structure.new(
        :replication_task_arn)

        # @!attribute [rw] replication_task_arn
        #   The Amazon Resource Number(ARN) of the replication task to be
        #   stopped.
        #   @return [String]

      end

      class StopReplicationTaskResponse < Aws::Structure.new(
        :replication_task)

        # @!attribute [rw] replication_task
        #   The replication task stopped.
        #   @return [Types::ReplicationTask]

      end

      class Subnet < Aws::Structure.new(
        :subnet_identifier,
        :subnet_availability_zone,
        :subnet_status)

        # @!attribute [rw] subnet_identifier
        #   The subnet identifier.
        #   @return [String]

        # @!attribute [rw] subnet_availability_zone
        #   The Availability Zone of the subnet.
        #   @return [Types::AvailabilityZone]

        # @!attribute [rw] subnet_status
        #   The status of the subnet.
        #   @return [String]

      end

      class SupportedEndpointType < Aws::Structure.new(
        :engine_name,
        :supports_cdc,
        :endpoint_type)

        # @!attribute [rw] engine_name
        #   The database engine name.
        #   @return [String]

        # @!attribute [rw] supports_cdc
        #   Indicates if Change Data Capture (CDC) is supported.
        #   @return [Boolean]

        # @!attribute [rw] endpoint_type
        #   The type of endpoint.
        #   @return [String]

      end

      class TableStatistics < Aws::Structure.new(
        :schema_name,
        :table_name,
        :inserts,
        :deletes,
        :updates,
        :ddls,
        :full_load_rows,
        :last_update_time,
        :table_state)

        # @!attribute [rw] schema_name
        #   The schema name.
        #   @return [String]

        # @!attribute [rw] table_name
        #   The name of the table.
        #   @return [String]

        # @!attribute [rw] inserts
        #   The number of insert actions performed on a table.
        #   @return [Integer]

        # @!attribute [rw] deletes
        #   The number of delete actions performed on a table.
        #   @return [Integer]

        # @!attribute [rw] updates
        #   The number of update actions performed on a table.
        #   @return [Integer]

        # @!attribute [rw] ddls
        #   The Data Definition Language (DDL) used to build and modify the
        #   structure of your tables.
        #   @return [Integer]

        # @!attribute [rw] full_load_rows
        #   The number of rows added during the Full Load operation.
        #   @return [Integer]

        # @!attribute [rw] last_update_time
        #   The last time the table was updated.
        #   @return [Time]

        # @!attribute [rw] table_state
        #   The state of the table.
        #   @return [String]

      end

      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "String",
      #         value: "String",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   A key is the required name of the tag. The string value can be from
        #   1 to 128 Unicode characters in length and cannot be prefixed with
        #   \"aws:\" or \"dms:\". The string can only contain only the set of
        #   Unicode letters, digits, white-space, \'\_\', \'.\', \'/\', \'=\',
        #   \'+\', \'-\' (Java regex:
        #   \"^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$\").
        #   @return [String]

        # @!attribute [rw] value
        #   A value is the optional value of the tag. The string value can be
        #   from 1 to 256 Unicode characters in length and cannot be prefixed
        #   with \"aws:\" or \"dms:\". The string can only contain only the set
        #   of Unicode letters, digits, white-space, \'\_\', \'.\', \'/\',
        #   \'=\', \'+\', \'-\' (Java regex:
        #   \"^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]\*)$\").
        #   @return [String]

      end

      # @note When making an API call, pass TestConnectionMessage
      #   data as a hash:
      #
      #       {
      #         replication_instance_arn: "String", # required
      #         endpoint_arn: "String", # required
      #       }
      class TestConnectionMessage < Aws::Structure.new(
        :replication_instance_arn,
        :endpoint_arn)

        # @!attribute [rw] replication_instance_arn
        #   The Amazon Resource Name (ARN) of the replication instance.
        #   @return [String]

        # @!attribute [rw] endpoint_arn
        #   The Amazon Resource Name (ARN) string that uniquely identifies the
        #   endpoint.
        #   @return [String]

      end

      class TestConnectionResponse < Aws::Structure.new(
        :connection)

        # @!attribute [rw] connection
        #   The connection tested.
        #   @return [Types::Connection]

      end

      class VpcSecurityGroupMembership < Aws::Structure.new(
        :vpc_security_group_id,
        :status)

        # @!attribute [rw] vpc_security_group_id
        #   The VPC security group Id.
        #   @return [String]

        # @!attribute [rw] status
        #   The status of the VPC security group.
        #   @return [String]

      end

    end
  end
end
