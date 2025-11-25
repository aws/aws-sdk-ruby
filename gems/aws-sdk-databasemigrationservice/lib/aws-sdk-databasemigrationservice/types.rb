# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DatabaseMigrationService
  module Types

    # DMS was denied access to the endpoint. Check that the role is
    # correctly configured.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AccessDeniedFault AWS API Documentation
    #
    class AccessDeniedFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a quota for an Amazon Web Services account, for example the
    # number of replication instances allowed.
    #
    # @!attribute [rw] account_quota_name
    #   The name of the DMS quota for this Amazon Web Services account.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a set of tags with an DMS resource.
    #
    # @!attribute [rw] resource_arn
    #   Identifies the DMS resource to which tags should be added. The value
    #   for this parameter is an Amazon Resource Name (ARN).
    #
    #   For DMS, you can tag a replication instance, an endpoint, or a
    #   replication task.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResourceMessage AWS API Documentation
    #
    class AddTagsToResourceMessage < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AddTagsToResourceResponse AWS API Documentation
    #
    class AddTagsToResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the DMS resource that the pending
    #   maintenance action applies to.
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
    #
    #   Valid values: `os-upgrade`, `system-update`, `db-upgrade`,
    #   `os-patch`
    #   @return [String]
    #
    # @!attribute [rw] opt_in_type
    #   A value that specifies the type of opt-in request, or undoes an
    #   opt-in request. You can't undo an opt-in request of type
    #   `immediate`.
    #
    #   Valid values:
    #
    #   * `immediate` - Apply the maintenance action immediately.
    #
    #   * `next-maintenance` - Apply the maintenance action during the next
    #     maintenance window for the resource.
    #
    #   * `undo-opt-in` - Cancel any existing `next-maintenance` opt-in
    #     requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ApplyPendingMaintenanceActionMessage AWS API Documentation
    #
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :replication_instance_arn,
      :apply_action,
      :opt_in_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_pending_maintenance_actions
    #   The DMS resource that the pending maintenance action will be applied
    #   to.
    #   @return [Types::ResourcePendingMaintenanceActions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ApplyPendingMaintenanceActionResponse AWS API Documentation
    #
    class ApplyPendingMaintenanceActionResponse < Struct.new(
      :resource_pending_maintenance_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of an Availability Zone for use during database migration.
    # `AvailabilityZone` is an optional parameter to the [
    # `CreateReplicationInstance` ][1] operation, and it’s value relates to
    # the Amazon Web Services Region of an endpoint. For example, the
    # availability zone of an endpoint in the us-east-1 region might be
    # us-east-1a, us-east-1b, us-east-1c, or us-east-1d.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html
    #
    # @!attribute [rw] name
    #   The name of the Availability Zone.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the errors that occurred during the
    # analysis of the source database.
    #
    # @!attribute [rw] database_id
    #   The identifier of the source database.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The information about the error.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The code of an error that occurred during the analysis of the source
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/BatchStartRecommendationsErrorEntry AWS API Documentation
    #
    class BatchStartRecommendationsErrorEntry < Struct.new(
      :database_id,
      :message,
      :code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data
    #   Provides information about source databases to analyze. After this
    #   analysis, Fleet Advisor recommends target engines for each source
    #   database.
    #   @return [Array<Types::StartRecommendationsRequestEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/BatchStartRecommendationsRequest AWS API Documentation
    #
    class BatchStartRecommendationsRequest < Struct.new(
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] error_entries
    #   A list with error details about the analysis of each source
    #   database.
    #   @return [Array<Types::BatchStartRecommendationsErrorEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/BatchStartRecommendationsResponse AWS API Documentation
    #
    class BatchStartRecommendationsResponse < Struct.new(
      :error_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] request_identifier
    #   The identifier for the metadata model conversion operation to
    #   cancel. This operation was initiated by
    #   StartMetadataModelConversion.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelMetadataModelConversionMessage AWS API Documentation
    #
    class CancelMetadataModelConversionMessage < Struct.new(
      :migration_project_identifier,
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request
    #   Provides information about a schema conversion action.
    #   @return [Types::SchemaConversionRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelMetadataModelConversionResponse AWS API Documentation
    #
    class CancelMetadataModelConversionResponse < Struct.new(
      :request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] request_identifier
    #   The identifier for the metadata model creation operation to cancel.
    #   This operation was initiated by `StartMetadataModelCreation`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelMetadataModelCreationMessage AWS API Documentation
    #
    class CancelMetadataModelCreationMessage < Struct.new(
      :migration_project_identifier,
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request
    #   Provides information about a schema conversion action.
    #   @return [Types::SchemaConversionRequest]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelMetadataModelCreationResponse AWS API Documentation
    #
    class CancelMetadataModelCreationResponse < Struct.new(
      :request)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_assessment_run_arn
    #   Amazon Resource Name (ARN) of the premigration assessment run to be
    #   canceled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelReplicationTaskAssessmentRunMessage AWS API Documentation
    #
    class CancelReplicationTaskAssessmentRunMessage < Struct.new(
      :replication_task_assessment_run_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_assessment_run
    #   The `ReplicationTaskAssessmentRun` object for the canceled
    #   assessment run.
    #   @return [Types::ReplicationTaskAssessmentRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CancelReplicationTaskAssessmentRunResponse AWS API Documentation
    #
    class CancelReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SSL certificate that can be used to encrypt connections between
    # the endpoints and the replication instance.
    #
    # @!attribute [rw] certificate_identifier
    #   A customer-assigned name for the certificate. Identifiers must begin
    #   with a letter and must contain only ASCII letters, digits, and
    #   hyphens. They can't end with a hyphen or contain two consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] certificate_creation_date
    #   The date that the certificate was created.
    #   @return [Time]
    #
    # @!attribute [rw] certificate_pem
    #   The contents of a `.pem` file, which contains an X.509 certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_wallet
    #   The location of an imported Oracle Wallet certificate for use with
    #   SSL. Example: `filebase64("${path.root}/rds-ca-2019-root.sso")`
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
    # @!attribute [rw] kms_key_id
    #   An KMS key identifier that is used to encrypt the certificate.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
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
      :key_length,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the last Fleet Advisor collector health check.
    #
    # @!attribute [rw] collector_status
    #   The status of the Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] local_collector_s3_access
    #   Whether the local collector can access its Amazon S3 bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] web_collector_s3_access
    #   Whether the web collector can access its Amazon S3 bucket.
    #   @return [Boolean]
    #
    # @!attribute [rw] web_collector_granted_role_based_access
    #   Whether the role that you provided when creating the Fleet Advisor
    #   collector has sufficient permissions to access the Fleet Advisor web
    #   collector.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CollectorHealthCheck AWS API Documentation
    #
    class CollectorHealthCheck < Struct.new(
      :collector_status,
      :local_collector_s3_access,
      :web_collector_s3_access,
      :web_collector_granted_role_based_access)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified collector doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CollectorNotFoundFault AWS API Documentation
    #
    class CollectorNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a Fleet Advisor collector.
    #
    # @!attribute [rw] collector_referenced_id
    #   The reference ID of the Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_name
    #   The name of the Fleet Advisor collector .
    #   @return [String]
    #
    # @!attribute [rw] collector_version
    #   The version of your Fleet Advisor collector, in semantic versioning
    #   format, for example `1.0.2`
    #   @return [String]
    #
    # @!attribute [rw] version_status
    #   Whether the collector version is up to date.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A summary description of the Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket that the Fleet Advisor collector uses to store
    #   inventory metadata.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role that grants permissions to access the specified Amazon
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] collector_health_check
    #   Describes the last Fleet Advisor collector health check.
    #   @return [Types::CollectorHealthCheck]
    #
    # @!attribute [rw] last_data_received
    #   The timestamp of the last time the collector received data, in the
    #   following format: `2022-01-24T19:04:02.596113Z`
    #   @return [String]
    #
    # @!attribute [rw] registered_date
    #   The timestamp when DMS registered the collector, in the following
    #   format: `2022-01-24T19:04:02.596113Z`
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The timestamp when you created the collector, in the following
    #   format: `2022-01-24T19:04:02.596113Z`
    #   @return [String]
    #
    # @!attribute [rw] modified_date
    #   The timestamp when DMS last modified the collector, in the following
    #   format: `2022-01-24T19:04:02.596113Z`
    #   @return [String]
    #
    # @!attribute [rw] inventory_data
    #   Describes a Fleet Advisor collector inventory.
    #   @return [Types::InventoryData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CollectorResponse AWS API Documentation
    #
    class CollectorResponse < Struct.new(
      :collector_referenced_id,
      :collector_name,
      :collector_version,
      :version_status,
      :description,
      :s3_bucket_name,
      :service_access_role_arn,
      :collector_health_check,
      :last_data_received,
      :registered_date,
      :created_date,
      :modified_date,
      :inventory_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Briefly describes a Fleet Advisor collector.
    #
    # @!attribute [rw] collector_referenced_id
    #   The reference ID of the Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_name
    #   The name of the Fleet Advisor collector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CollectorShortInfoResponse AWS API Documentation
    #
    class CollectorShortInfoResponse < Struct.new(
      :collector_referenced_id,
      :collector_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration parameters for provisioning an DMS Serverless
    # replication.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the DMS Serverless replication using
    #   this configuration will run. The default value is a random,
    #   system-chosen Availability Zone in the configuration's Amazon Web
    #   Services Region, for example, `"us-west-2"`. You can't set this
    #   parameter if the `MultiAZ` parameter is set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] dns_name_servers
    #   A list of custom DNS name servers supported for the DMS Serverless
    #   replication to access your source or target database. This list
    #   overrides the default name servers supported by the DMS Serverless
    #   replication. You can specify a comma-separated list of internet
    #   addresses for up to four DNS name servers. For example:
    #   `"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"`
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   An Key Management Service (KMS) key Amazon Resource Name (ARN) that
    #   is used to encrypt the data during DMS Serverless replication.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, DMS uses
    #   your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] max_capacity_units
    #   Specifies the maximum value of the DMS capacity units (DCUs) for
    #   which a given DMS Serverless replication can be provisioned. A
    #   single DCU is 2GB of RAM, with 1 DCU as the minimum value allowed.
    #   The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128,
    #   192, 256, and 384. So, the maximum value that you can specify for
    #   DMS Serverless is 384. The `MaxCapacityUnits` parameter is the only
    #   DCU parameter you are required to specify.
    #   @return [Integer]
    #
    # @!attribute [rw] min_capacity_units
    #   Specifies the minimum value of the DMS capacity units (DCUs) for
    #   which a given DMS Serverless replication can be provisioned. A
    #   single DCU is 2GB of RAM, with 1 DCU as the minimum value allowed.
    #   The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128,
    #   192, 256, and 384. So, the minimum DCU value that you can specify
    #   for DMS Serverless is 1. If you don't set this value, DMS sets this
    #   parameter to the minimum DCU value allowed, 1. If there is no
    #   current source activity, DMS scales down your replication until it
    #   reaches the value specified in `MinCapacityUnits`.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the DMS Serverless replication is a Multi-AZ
    #   deployment. You can't set the `AvailabilityZone` parameter if the
    #   `MultiAZ` parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range during which system maintenance can occur for
    #   the DMS Serverless replication, in Universal Coordinated Time (UTC).
    #   The format is `ddd:hh24:mi-ddd:hh24:mi`.
    #
    #   The default is a 30-minute window selected at random from an 8-hour
    #   block of time per Amazon Web Services Region. This maintenance
    #   occurs on a random day of the week. Valid values for days of the
    #   week include `Mon`, `Tue`, `Wed`, `Thu`, `Fri`, `Sat`, and `Sun`.
    #
    #   Constraints include a minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_id
    #   Specifies a subnet group identifier to associate with the DMS
    #   Serverless replication.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Specifies the virtual private cloud (VPC) security group to use with
    #   the DMS Serverless replication. The VPC security group must work
    #   with the VPC containing the replication.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ComputeConfig AWS API Documentation
    #
    class ComputeConfig < Struct.new(
      :availability_zone,
      :dns_name_servers,
      :kms_key_id,
      :max_capacity_units,
      :min_capacity_units,
      :multi_az,
      :preferred_maintenance_window,
      :replication_subnet_group_id,
      :vpc_security_group_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # Status of the connection between an endpoint and a replication
    # instance, including Amazon Resource Names (ARNs) and the last error
    # message issued.
    #
    # @!attribute [rw] replication_instance_arn
    #   The ARN of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_arn
    #   The ARN string that uniquely identifies the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The connection status. This parameter can return one of the
    #   following values:
    #
    #   * `"successful"`
    #
    #   * `"testing"`
    #
    #   * `"failed"`
    #
    #   * `"deleting"`
    #   @return [String]
    #
    # @!attribute [rw] last_failure_message
    #   The error message when the connection last failed.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_identifier
    #   The identifier of the endpoint. Identifiers must begin with a letter
    #   and must contain only ASCII letters, digits, and hyphens. They
    #   can't end with a hyphen or contain two consecutive hyphens.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration_name
    #   A user-friendly name for the data migration. Data migration names
    #   have the following constraints:
    #
    #   * Must begin with a letter, and can only contain ASCII letters,
    #     digits, and hyphens.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
    #
    #   * Length must be from 1 to 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_identifier
    #   An identifier for the migration project.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_type
    #   Specifies if the data migration is full-load only, change data
    #   capture (CDC) only, or full-load and CDC.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role that you
    #   want to use to create the data migration.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs
    #   Specifies whether to enable CloudWatch logs for the data migration.
    #   @return [Boolean]
    #
    # @!attribute [rw] source_data_settings
    #   Specifies information about the source data provider.
    #   @return [Array<Types::SourceDataSetting>]
    #
    # @!attribute [rw] target_data_settings
    #   Specifies information about the target data provider.
    #   @return [Array<Types::TargetDataSetting>]
    #
    # @!attribute [rw] number_of_jobs
    #   The number of parallel jobs that trigger parallel threads to unload
    #   the tables from the source, and then load them to the target.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the data migration.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] selection_rules
    #   An optional JSON string specifying what tables, views, and schemas
    #   to include or exclude from the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateDataMigrationMessage AWS API Documentation
    #
    class CreateDataMigrationMessage < Struct.new(
      :data_migration_name,
      :migration_project_identifier,
      :data_migration_type,
      :service_access_role_arn,
      :enable_cloudwatch_logs,
      :source_data_settings,
      :target_data_settings,
      :number_of_jobs,
      :tags,
      :selection_rules)
      SENSITIVE = [:selection_rules]
      include Aws::Structure
    end

    # @!attribute [rw] data_migration
    #   Information about the created data migration.
    #   @return [Types::DataMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateDataMigrationResponse AWS API Documentation
    #
    class CreateDataMigrationResponse < Struct.new(
      :data_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider_name
    #   A user-friendly name for the data provider.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The type of database engine for the data provider. Valid values
    #   include `"aurora"`, `"aurora-postgresql"`, `"mysql"`, `"oracle"`,
    #   `"postgres"`, `"sqlserver"`, `redshift`, `mariadb`, `mongodb`,
    #   `db2`, `db2-zos`, `docdb`, and `sybase`. A value of `"aurora"`
    #   represents Amazon Aurora MySQL-Compatible Edition.
    #   @return [String]
    #
    # @!attribute [rw] virtual
    #   Indicates whether the data provider is virtual.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   The settings in JSON format for a data provider.
    #   @return [Types::DataProviderSettings]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the data provider.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateDataProviderMessage AWS API Documentation
    #
    class CreateDataProviderMessage < Struct.new(
      :data_provider_name,
      :description,
      :engine,
      :virtual,
      :settings,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider
    #   The data provider that was created.
    #   @return [Types::DataProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateDataProviderResponse AWS API Documentation
    #
    class CreateDataProviderResponse < Struct.new(
      :data_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen, or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   `EndpointType` value, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"opensearch"`,
    #   `"redshift"`, `"s3"`, `"db2"`, `"db2-zos"`, `"azuredb"`, `"sybase"`,
    #   `"dynamodb"`, `"mongodb"`, `"kinesis"`, `"kafka"`,
    #   `"elasticsearch"`, `"docdb"`, `"sqlserver"`, `"neptune"`,
    #   `"babelfish"`, `redshift-serverless`, `aurora-serverless`,
    #   `aurora-postgresql-serverless`, `gcp-mysql`,
    #   `azure-sql-managed-instance`, `redis`, `dms-transfer`.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   The user name to be used to log in to the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password to be used to log in to the endpoint database.
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
    #   The name of the endpoint database. For a MySQL source or target
    #   endpoint, do not specify DatabaseName. To migrate to a specific
    #   database, use this setting and `targetDbType`.
    #   @return [String]
    #
    # @!attribute [rw] extra_connection_attributes
    #   Additional attributes associated with the connection. Each attribute
    #   is specified as a name-value pair associated by an equal sign (=).
    #   Multiple attributes are separated by a semicolon (;) with no
    #   additional white space. For information on the attributes available
    #   for connecting your source or target endpoint, see [Working with DMS
    #   Endpoints][1] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   An KMS key identifier that is used to encrypt the connection
    #   parameters for the endpoint.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the endpoint.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The Secure Sockets Layer (SSL) mode to use for the SSL connection.
    #   The default is `none`
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the service access role that you
    #   want to use to create the endpoint. The role must allow the
    #   `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   information about other available settings, see [Using Object
    #   Mapping to Migrate Data to DynamoDB][1] in the *Database Migration
    #   Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for DMS][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings in JSON format for the DMS transfer type of source
    #   endpoint.
    #
    #   Possible settings include the following:
    #
    #   * `ServiceAccessRoleArn` - The Amazon Resource Name (ARN) used by
    #     the service access IAM role. The role must allow the
    #     `iam:PassRole` action.
    #
    #   * `BucketName` - The name of the S3 bucket to use.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string,BucketName=string`
    #
    #   JSON syntax for these settings is as follows: `{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string", } `
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see [Endpoint
    #   configuration settings when using MongoDB as a source for Database
    #   Migration Service][1] in the *Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration
    #   @return [Types::MongoDbSettings]
    #
    # @!attribute [rw] kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using object mapping to migrate data to a Kinesis data stream][1]
    #   in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping
    #   @return [Types::KinesisSettings]
    #
    # @!attribute [rw] kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For
    #   more information about the available settings, see [Using object
    #   mapping to migrate data to a Kafka topic][1] in the *Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping
    #   @return [Types::KafkaSettings]
    #
    # @!attribute [rw] elasticsearch_settings
    #   Settings in JSON format for the target OpenSearch endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using OpenSearch as a Target for DMS][1] in the
    #   *Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #   @return [Types::ElasticsearchSettings]
    #
    # @!attribute [rw] neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a
    #   target][1] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings
    #   @return [Types::NeptuneSettings]
    #
    # @!attribute [rw] redshift_settings
    #   Provides information that defines an Amazon Redshift endpoint.
    #   @return [Types::RedshiftSettings]
    #
    # @!attribute [rw] postgre_sql_settings
    #   Settings in JSON format for the source and target PostgreSQL
    #   endpoint. For information about other available settings, see [Extra
    #   connection attributes when using PostgreSQL as a source for DMS][1]
    #   and [ Extra connection attributes when using PostgreSQL as a target
    #   for DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib
    #   @return [Types::PostgreSQLSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using MySQL as a source for DMS][1] and
    #   [Extra connection attributes when using a MySQL-compatible database
    #   as a target for DMS][2] in the *Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib
    #   @return [Types::MySQLSettings]
    #
    # @!attribute [rw] oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using Oracle as a source for DMS][1] and
    #   [ Extra connection attributes when using Oracle as a target for
    #   DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib
    #   @return [Types::OracleSettings]
    #
    # @!attribute [rw] sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using SAP ASE as a source for DMS][1] and
    #   [Extra connection attributes when using SAP ASE as a target for
    #   DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib
    #   @return [Types::SybaseSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL
    #   Server endpoint. For information about other available settings, see
    #   [Extra connection attributes when using SQL Server as a source for
    #   DMS][1] and [ Extra connection attributes when using SQL Server as a
    #   target for DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib
    #   @return [Types::MicrosoftSQLServerSettings]
    #
    # @!attribute [rw] ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for DMS][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib
    #   @return [Types::IBMDb2Settings]
    #
    # @!attribute [rw] resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two
    #   consecutive hyphens, and can only begin with a letter, such as
    #   `Example-App-ARN1`. For example, this value might result in the
    #   `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, DMS generates a default
    #   identifier value for the end of `EndpointArn`.
    #   @return [String]
    #
    # @!attribute [rw] doc_db_settings
    #   Provides information that defines a DocumentDB endpoint.
    #   @return [Types::DocDbSettings]
    #
    # @!attribute [rw] redis_settings
    #   Settings in JSON format for the target Redis endpoint.
    #   @return [Types::RedisSettings]
    #
    # @!attribute [rw] gcp_my_sql_settings
    #   Settings in JSON format for the source GCP MySQL endpoint.
    #   @return [Types::GcpMySQLSettings]
    #
    # @!attribute [rw] timestream_settings
    #   Settings in JSON format for the target Amazon Timestream endpoint.
    #   @return [Types::TimestreamSettings]
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
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db_2_settings,
      :resource_identifier,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      :timestream_settings)
      SENSITIVE = [:password]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the DMS event notification subscription. This name must
    #   be less than 255 characters.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create
    #   a topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates the events. For example, if
    #   you want to be notified of events generated by a replication
    #   instance, you set this parameter to `replication-instance`. If this
    #   value isn't specified, all events are returned.
    #
    #   Valid values: `replication-instance` \| `replication-task`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. For more information, see [Working with Events and
    #   Notifications][1] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   A list of identifiers for which DMS provides notification events.
    #
    #   If you don't specify a value, notifications are provided for all
    #   sources.
    #
    #   If you specify multiple values, they must be of the same type. For
    #   example, if you specify a database instance ID, then all of the
    #   other values must be database instance IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to `true` to activate the subscription, or set
    #   to `false` to create the subscription but not activate it.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the event subscription.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collector_name
    #   The name of your Fleet Advisor collector (for example,
    #   `sample-collector`).
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A summary description of your Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role that grants permissions to access the specified Amazon
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket that the Fleet Advisor collector uses to store
    #   inventory metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateFleetAdvisorCollectorRequest AWS API Documentation
    #
    class CreateFleetAdvisorCollectorRequest < Struct.new(
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collector_referenced_id
    #   The unique ID of the new Fleet Advisor collector, for example:
    #   `22fda70c-40d5-4acf-b233-a495bd8eb7f5`
    #   @return [String]
    #
    # @!attribute [rw] collector_name
    #   The name of the new Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A summary description of the Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role that grants permissions to access the specified Amazon
    #   S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The Amazon S3 bucket that the collector uses to store inventory
    #   metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateFleetAdvisorCollectorResponse AWS API Documentation
    #
    class CreateFleetAdvisorCollectorResponse < Struct.new(
      :collector_referenced_id,
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] availability_zone
    #   The Availability Zone where the instance profile will be created.
    #   The default value is a random, system-chosen Availability Zone in
    #   the Amazon Web Services Region where your data provider is created,
    #   for examplem `us-east-1d`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that is used to
    #   encrypt the connection parameters for the instance profile.
    #
    #   If you don't specify a value for the `KmsKeyArn` parameter, then
    #   DMS uses an Amazon Web Services owned encryption key to encrypt your
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the instance profile. A
    #   value of `true` represents an instance profile with a public IP
    #   address. A value of `false` represents an instance profile with a
    #   private IP address. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the instance profile.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] network_type
    #   Specifies the network type for the instance profile. A value of
    #   `IPV4` represents an instance profile with IPv4 network type and
    #   only supports IPv4 addressing. A value of `IPV6` represents an
    #   instance profile with IPv6 network type and only supports IPv6
    #   addressing. A value of `DUAL` represents an instance profile with
    #   dual network type that supports IPv4 and IPv6 addressing.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   A user-friendly name for the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_identifier
    #   A subnet group to associate with the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   Specifies the VPC security group names to be used with the instance
    #   profile. The VPC security group must work with the VPC containing
    #   the instance profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateInstanceProfileMessage AWS API Documentation
    #
    class CreateInstanceProfileMessage < Struct.new(
      :availability_zone,
      :kms_key_arn,
      :publicly_accessible,
      :tags,
      :network_type,
      :instance_profile_name,
      :description,
      :subnet_group_identifier,
      :vpc_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile
    #   The instance profile that was created.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateInstanceProfileResponse AWS API Documentation
    #
    class CreateInstanceProfileResponse < Struct.new(
      :instance_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_name
    #   A user-friendly name for the migration project.
    #   @return [String]
    #
    # @!attribute [rw] source_data_provider_descriptors
    #   Information about the source data provider, including the name, ARN,
    #   and Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    #
    # @!attribute [rw] target_data_provider_descriptors
    #   Information about the target data provider, including the name, ARN,
    #   and Amazon Web Services Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    #
    # @!attribute [rw] instance_profile_identifier
    #   The identifier of the associated instance profile. Identifiers must
    #   begin with a letter and must contain only ASCII letters, digits, and
    #   hyphens. They can't end with a hyphen, or contain two consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] transformation_rules
    #   The settings in JSON format for migration rules. Migration rules
    #   make it possible for you to change the object names according to the
    #   rules that you specify. For example, you can change an object name
    #   to lowercase or uppercase, add or remove a prefix or suffix, or
    #   rename objects.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the migration project.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the migration project.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] schema_conversion_application_attributes
    #   The schema conversion application attributes, including the Amazon
    #   S3 bucket name and Amazon S3 role ARN.
    #   @return [Types::SCApplicationAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateMigrationProjectMessage AWS API Documentation
    #
    class CreateMigrationProjectMessage < Struct.new(
      :migration_project_name,
      :source_data_provider_descriptors,
      :target_data_provider_descriptors,
      :instance_profile_identifier,
      :transformation_rules,
      :description,
      :tags,
      :schema_conversion_application_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project
    #   The migration project that was created.
    #   @return [Types::MigrationProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateMigrationProjectResponse AWS API Documentation
    #
    class CreateMigrationProjectResponse < Struct.new(
      :migration_project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_identifier
    #   A unique identifier that you want to use to create a
    #   `ReplicationConfigArn` that is returned as part of the output from
    #   this action. You can then pass this output `ReplicationConfigArn` as
    #   the value of the `ReplicationConfigArn` option for other actions to
    #   identify both DMS Serverless replications and replication
    #   configurations that you want those actions to operate on. For some
    #   actions, you can also use either this unique identifier or a
    #   corresponding ARN in action filters to identify the specific
    #   replication and replication configuration to operate on.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) of the source endpoint for this DMS
    #   Serverless replication configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name (ARN) of the target endpoint for this DMS
    #   serverless replication configuration.
    #   @return [String]
    #
    # @!attribute [rw] compute_config
    #   Configuration parameters for provisioning an DMS Serverless
    #   replication.
    #   @return [Types::ComputeConfig]
    #
    # @!attribute [rw] replication_type
    #   The type of DMS Serverless replication to provision using this
    #   replication configuration.
    #
    #   Possible values:
    #
    #   * `"full-load"`
    #
    #   * `"cdc"`
    #
    #   * `"full-load-and-cdc"`
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   JSON table mappings for DMS Serverless replications that are
    #   provisioned using this replication configuration. For more
    #   information, see [ Specifying table selection and transformations
    #   rules using JSON][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.html
    #   @return [String]
    #
    # @!attribute [rw] replication_settings
    #   Optional JSON settings for DMS Serverless replications that are
    #   provisioned using this replication configuration. For example, see [
    #   Change processing tuning settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html
    #   @return [String]
    #
    # @!attribute [rw] supplemental_settings
    #   Optional JSON settings for specifying supplemental data. For more
    #   information, see [ Specifying supplemental data for task
    #   settings][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   Optional unique value or name that you set for a given resource that
    #   can be used to construct an Amazon Resource Name (ARN) for that
    #   resource. For more information, see [ Fine-grained access control
    #   using resource names and tags][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more optional tags associated with resources used by the DMS
    #   Serverless replication. For more information, see [ Tagging
    #   resources in Database Migration Service][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tagging.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationConfigMessage AWS API Documentation
    #
    class CreateReplicationConfigMessage < Struct.new(
      :replication_config_identifier,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :compute_config,
      :replication_type,
      :table_mappings,
      :replication_settings,
      :supplemental_settings,
      :resource_identifier,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config
    #   Configuration parameters returned from the DMS Serverless
    #   replication after it is created.
    #   @return [Types::ReplicationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationConfigResponse AWS API Documentation
    #
    class CreateReplicationConfigResponse < Struct.new(
      :replication_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain 1-63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Can't end with a hyphen or contain two consecutive hyphens.
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
    #   defined for the specified replication instance class. For example to
    #   specify the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Choosing the right DMS
    #   replication instance][1]; and, [Selecting the best size for a
    #   replication instance][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_BestPractices.SizingReplicationInstance.html
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   Specifies the VPC security group to be used with the replication
    #   instance. The VPC security group must work with the VPC containing
    #   the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the replication instance will be
    #   created. The default value is a random, system-chosen Availability
    #   Zone in the endpoint's Amazon Web Services Region, for example:
    #   `us-east-1d`.
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
    #   of time per Amazon Web Services Region, occurring on a random day of
    #   the week.
    #
    #   Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun
    #
    #   Constraints: Minimum 30-minute window.
    #   @return [String]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #
    #   If an engine version number is not specified when a replication
    #   instance is created, the default is the latest engine version
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates whether minor engine upgrades are applied
    #   automatically to the replication instance during the maintenance
    #   window. This parameter defaults to `true`.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the replication instance.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   An KMS key identifier that is used to encrypt the data on the
    #   replication instance.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the replication instance. A
    #   value of `true` represents an instance with a public IP address. A
    #   value of `false` represents an instance with a private IP address.
    #   The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] dns_name_servers
    #   A list of custom DNS name servers supported for the replication
    #   instance to access your on-premise source or target database. This
    #   list overrides the default name servers supported by the replication
    #   instance. You can specify a comma-separated list of internet
    #   addresses for up to four on-premise DNS name servers. For example:
    #   `"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"`
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two
    #   consecutive hyphens, and can only begin with a letter, such as
    #   `Example-App-ARN1`. For example, this value might result in the
    #   `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, DMS generates a default
    #   identifier value for the end of `EndpointArn`.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The type of IP address protocol used by a replication instance, such
    #   as IPv4 only or Dual-stack that supports both IPv4 and IPv6
    #   addressing. IPv6 only is not yet supported.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_authentication_settings
    #   Specifies the settings required for kerberos authentication when
    #   creating the replication instance.
    #   @return [Types::KerberosAuthenticationSettings]
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
      :publicly_accessible,
      :dns_name_servers,
      :resource_identifier,
      :network_type,
      :kerberos_authentication_settings)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group_identifier
    #   The name for the replication subnet group. This value is stored as a
    #   lowercase string.
    #
    #   Constraints: Must contain no more than 255 alphanumeric characters,
    #   periods, underscores, or hyphens. Must not be "default".
    #
    #   Example: `mySubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   The description for the subnet group.
    #
    #   Constraints: This parameter Must not contain non-printable control
    #   characters.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   Two or more subnet IDs to be assigned to the subnet group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/CreateReplicationSubnetGroupMessage AWS API Documentation
    #
    class CreateReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_identifier
    #   An identifier for the replication task.
    #
    #   Constraints:
    #
    #   * Must contain 1-255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the source
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   An Amazon Resource Name (ARN) that uniquely identifies the target
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of a replication instance.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   The migration type. Valid values: `full-load` \| `cdc` \|
    #   `full-load-and-cdc`
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   The table mappings for the task, in JSON format. For more
    #   information, see [Using Table Mapping to Specify Task Settings][1]
    #   in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   Overall settings for the task, in JSON format. For more information,
    #   see [Specifying Task Settings for Database Migration Service
    #   Tasks][1] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html
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
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated
    #   with the source endpoint. You can verify this by setting the
    #   `slotName` extra connection attribute to the name of this logical
    #   replication slot. For more information, see [Extra Connection
    #   Attributes When Using PostgreSQL as a Source for DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position
    #   “commit\_time:2018-02-09T12:12:12“
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the replication task.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
    #   @return [String]
    #
    # @!attribute [rw] resource_identifier
    #   A friendly name for the resource identifier at the end of the
    #   `EndpointArn` response parameter that is returned in the created
    #   `Endpoint` object. The value for this parameter can have up to 31
    #   characters. It can contain only ASCII letters, digits, and hyphen
    #   ('-'). Also, it can't end with a hyphen or contain two
    #   consecutive hyphens, and can only begin with a letter, such as
    #   `Example-App-ARN1`. For example, this value might result in the
    #   `EndpointArn` value
    #   `arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1`. If you
    #   don't specify a `ResourceIdentifier` value, DMS generates a default
    #   identifier value for the end of `EndpointArn`.
    #   @return [String]
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
      :tags,
      :task_data,
      :resource_identifier)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # This object provides information about a DMS data migration.
    #
    # @!attribute [rw] data_migration_name
    #   The user-friendly name for the data migration.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_arn
    #   The Amazon Resource Name (ARN) that identifies this replication.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_create_time
    #   The UTC time when DMS created the data migration.
    #   @return [Time]
    #
    # @!attribute [rw] data_migration_start_time
    #   The UTC time when DMS started the data migration.
    #   @return [Time]
    #
    # @!attribute [rw] data_migration_end_time
    #   The UTC time when data migration ended.
    #   @return [Time]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role that the data migration uses to access Amazon Web
    #   Services resources.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_arn
    #   The Amazon Resource Name (ARN) of the data migration's associated
    #   migration project.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_type
    #   Specifies whether the data migration is full-load only, change data
    #   capture (CDC) only, or full-load and CDC.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_settings
    #   Specifies CloudWatch settings and selection rules for the data
    #   migration.
    #   @return [Types::DataMigrationSettings]
    #
    # @!attribute [rw] source_data_settings
    #   Specifies information about the data migration's source data
    #   provider.
    #   @return [Array<Types::SourceDataSetting>]
    #
    # @!attribute [rw] target_data_settings
    #   Specifies information about the data migration's target data
    #   provider.
    #   @return [Array<Types::TargetDataSetting>]
    #
    # @!attribute [rw] data_migration_statistics
    #   Provides information about the data migration's run, including
    #   start and stop time, latency, and data migration progress.
    #   @return [Types::DataMigrationStatistics]
    #
    # @!attribute [rw] data_migration_status
    #   The current status of the data migration.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_addresses
    #   The IP addresses of the endpoints for the data migration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] data_migration_cidr_blocks
    #   The CIDR blocks of the endpoints for the data migration.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_failure_message
    #   Information about the data migration's most recent error or
    #   failure.
    #   @return [String]
    #
    # @!attribute [rw] stop_reason
    #   The reason the data migration last stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataMigration AWS API Documentation
    #
    class DataMigration < Struct.new(
      :data_migration_name,
      :data_migration_arn,
      :data_migration_create_time,
      :data_migration_start_time,
      :data_migration_end_time,
      :service_access_role_arn,
      :migration_project_arn,
      :data_migration_type,
      :data_migration_settings,
      :source_data_settings,
      :target_data_settings,
      :data_migration_statistics,
      :data_migration_status,
      :public_ip_addresses,
      :data_migration_cidr_blocks,
      :last_failure_message,
      :stop_reason)
      SENSITIVE = [:public_ip_addresses]
      include Aws::Structure
    end

    # Options for configuring a data migration, including whether to enable
    # CloudWatch logs, and the selection rules to use to include or exclude
    # database objects from the migration.
    #
    # @!attribute [rw] number_of_jobs
    #   The number of parallel jobs that trigger parallel threads to unload
    #   the tables from the source, and then load them to the target.
    #   @return [Integer]
    #
    # @!attribute [rw] cloudwatch_logs_enabled
    #   Whether to enable CloudWatch logging for the data migration.
    #   @return [Boolean]
    #
    # @!attribute [rw] selection_rules
    #   A JSON-formatted string that defines what objects to include and
    #   exclude from the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataMigrationSettings AWS API Documentation
    #
    class DataMigrationSettings < Struct.new(
      :number_of_jobs,
      :cloudwatch_logs_enabled,
      :selection_rules)
      SENSITIVE = [:selection_rules]
      include Aws::Structure
    end

    # Information about the data migration run, including start and stop
    # time, latency, and migration progress.
    #
    # @!attribute [rw] tables_loaded
    #   The number of tables loaded in the current data migration run.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_millis
    #   The elapsed duration of the data migration run.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_loading
    #   The data migration's table loading progress.
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_percentage
    #   The data migration's progress in the full-load migration phase.
    #   @return [Integer]
    #
    # @!attribute [rw] cdc_latency
    #   The current latency of the change data capture (CDC) operation.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_queued
    #   The number of tables that are waiting for processing.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_errored
    #   The number of tables that DMS failed to process.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The time when the migration started.
    #   @return [Time]
    #
    # @!attribute [rw] stop_time
    #   The time when the migration stopped or failed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataMigrationStatistics AWS API Documentation
    #
    class DataMigrationStatistics < Struct.new(
      :tables_loaded,
      :elapsed_time_millis,
      :tables_loading,
      :full_load_percentage,
      :cdc_latency,
      :tables_queued,
      :tables_errored,
      :start_time,
      :stop_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a data provider.
    #
    # @!attribute [rw] data_provider_name
    #   The name of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] data_provider_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   data provider.
    #   @return [String]
    #
    # @!attribute [rw] data_provider_creation_time
    #   The time the data provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description of the data provider. Descriptions can have up to 31
    #   characters. A description can contain only ASCII letters, digits,
    #   and hyphens ('-'). Also, it can't end with a hyphen or contain
    #   two consecutive hyphens, and can only begin with a letter.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The type of database engine for the data provider. Valid values
    #   include `"aurora"`, `"aurora-postgresql"`, `"mysql"`, `"oracle"`,
    #   `"postgres"`, `"sqlserver"`, `redshift`, `mariadb`, `mongodb`,
    #   `db2`, `db2-zos`, `docdb`, and `sybase`. A value of `"aurora"`
    #   represents Amazon Aurora MySQL-Compatible Edition.
    #   @return [String]
    #
    # @!attribute [rw] virtual
    #   Indicates whether the data provider is virtual.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   The settings in JSON format for a data provider.
    #   @return [Types::DataProviderSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataProvider AWS API Documentation
    #
    class DataProvider < Struct.new(
      :data_provider_name,
      :data_provider_arn,
      :data_provider_creation_time,
      :description,
      :engine,
      :virtual,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a data provider.
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The identifier of the Amazon Web Services Secrets Manager Secret
    #   used to store access credentials for the data provider.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The ARN of the role used to access Amazon Web Services Secrets
    #   Manager.
    #   @return [String]
    #
    # @!attribute [rw] data_provider_name
    #   The user-friendly name of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] data_provider_arn
    #   The Amazon Resource Name (ARN) of the data provider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataProviderDescriptor AWS API Documentation
    #
    class DataProviderDescriptor < Struct.new(
      :secrets_manager_secret_id,
      :secrets_manager_access_role_arn,
      :data_provider_name,
      :data_provider_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a data provider.
    #
    # @!attribute [rw] data_provider_identifier
    #   The name or Amazon Resource Name (ARN) of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The identifier of the Amazon Web Services Secrets Manager Secret
    #   used to store access credentials for the data provider.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The ARN of the role used to access Amazon Web Services Secrets
    #   Manager.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataProviderDescriptorDefinition AWS API Documentation
    #
    class DataProviderDescriptorDefinition < Struct.new(
      :data_provider_identifier,
      :secrets_manager_secret_id,
      :secrets_manager_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a data provider.
    #
    # @note DataProviderSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DataProviderSettings is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DataProviderSettings corresponding to the set member.
    #
    # @!attribute [rw] redshift_settings
    #   Provides information that defines an Amazon Redshift data provider.
    #   @return [Types::RedshiftDataProviderSettings]
    #
    # @!attribute [rw] postgre_sql_settings
    #   Provides information that defines a PostgreSQL data provider.
    #   @return [Types::PostgreSqlDataProviderSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   Provides information that defines a MySQL data provider.
    #   @return [Types::MySqlDataProviderSettings]
    #
    # @!attribute [rw] oracle_settings
    #   Provides information that defines an Oracle data provider.
    #   @return [Types::OracleDataProviderSettings]
    #
    # @!attribute [rw] sybase_ase_settings
    #   Provides information that defines an SAP ASE data provider.
    #   @return [Types::SybaseAseDataProviderSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   Provides information that defines a Microsoft SQL Server data
    #   provider.
    #   @return [Types::MicrosoftSqlServerDataProviderSettings]
    #
    # @!attribute [rw] doc_db_settings
    #   Provides information that defines a DocumentDB data provider.
    #   @return [Types::DocDbDataProviderSettings]
    #
    # @!attribute [rw] maria_db_settings
    #   Provides information that defines a MariaDB data provider.
    #   @return [Types::MariaDbDataProviderSettings]
    #
    # @!attribute [rw] ibm_db_2_luw_settings
    #   Provides information that defines an IBM DB2 LUW data provider.
    #   @return [Types::IbmDb2LuwDataProviderSettings]
    #
    # @!attribute [rw] ibm_db_2z_os_settings
    #   Provides information that defines an IBM DB2 for z/OS data provider.
    #   @return [Types::IbmDb2zOsDataProviderSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Provides information that defines a MongoDB data provider.
    #   @return [Types::MongoDbDataProviderSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DataProviderSettings AWS API Documentation
    #
    class DataProviderSettings < Struct.new(
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_ase_settings,
      :microsoft_sql_server_settings,
      :doc_db_settings,
      :maria_db_settings,
      :ibm_db_2_luw_settings,
      :ibm_db_2z_os_settings,
      :mongo_db_settings,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RedshiftSettings < DataProviderSettings; end
      class PostgreSqlSettings < DataProviderSettings; end
      class MySqlSettings < DataProviderSettings; end
      class OracleSettings < DataProviderSettings; end
      class SybaseAseSettings < DataProviderSettings; end
      class MicrosoftSqlServerSettings < DataProviderSettings; end
      class DocDbSettings < DataProviderSettings; end
      class MariaDbSettings < DataProviderSettings; end
      class IbmDb2LuwSettings < DataProviderSettings; end
      class IbmDb2zOsSettings < DataProviderSettings; end
      class MongoDbSettings < DataProviderSettings; end
      class Unknown < DataProviderSettings; end
    end

    # Describes an inventory database instance for a Fleet Advisor
    # collector.
    #
    # @!attribute [rw] engine
    #   The database engine of a database in a Fleet Advisor collector
    #   inventory, for example `Microsoft SQL Server`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The database engine version of a database in a Fleet Advisor
    #   collector inventory, for example `2019`.
    #   @return [String]
    #
    # @!attribute [rw] engine_edition
    #   The database engine edition of a database in a Fleet Advisor
    #   collector inventory, for example `Express`.
    #   @return [String]
    #
    # @!attribute [rw] service_pack
    #   The service pack level of the database.
    #   @return [String]
    #
    # @!attribute [rw] support_level
    #   The support level of the database, for example `Mainstream support`.
    #   @return [String]
    #
    # @!attribute [rw] os_architecture
    #   The operating system architecture of the database.
    #   @return [Integer]
    #
    # @!attribute [rw] tooltip
    #   Information about the database engine software, for example
    #   `Mainstream support ends on November 14th, 2024`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DatabaseInstanceSoftwareDetailsResponse AWS API Documentation
    #
    class DatabaseInstanceSoftwareDetailsResponse < Struct.new(
      :engine,
      :engine_version,
      :engine_edition,
      :service_pack,
      :support_level,
      :os_architecture,
      :tooltip)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] database_id
    #   The ID of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] number_of_schemas
    #   The number of schemas in a Fleet Advisor collector inventory
    #   database.
    #   @return [Integer]
    #
    # @!attribute [rw] server
    #   The server name of a database in a Fleet Advisor collector
    #   inventory.
    #   @return [Types::ServerShortInfoResponse]
    #
    # @!attribute [rw] software_details
    #   The software details of a database in a Fleet Advisor collector
    #   inventory, such as database engine and version.
    #   @return [Types::DatabaseInstanceSoftwareDetailsResponse]
    #
    # @!attribute [rw] collectors
    #   A list of collectors associated with the database.
    #   @return [Array<Types::CollectorShortInfoResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DatabaseResponse AWS API Documentation
    #
    class DatabaseResponse < Struct.new(
      :database_id,
      :database_name,
      :ip_address,
      :number_of_schemas,
      :server,
      :software_details,
      :collectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a database in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] database_id
    #   The ID of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_ip_address
    #   The IP address of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_engine
    #   The database engine of a database in a Fleet Advisor collector
    #   inventory, for example `PostgreSQL`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DatabaseShortInfoResponse AWS API Documentation
    #
    class DatabaseShortInfoResponse < Struct.new(
      :database_id,
      :database_name,
      :database_ip_address,
      :database_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides error information about a schema conversion operation.
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DefaultErrorDetails AWS API Documentation
    #
    class DefaultErrorDetails < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCertificateMessage AWS API Documentation
    #
    class DeleteCertificateMessage < Struct.new(
      :certificate_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collector_referenced_id
    #   The reference ID of the Fleet Advisor collector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteCollectorRequest AWS API Documentation
    #
    class DeleteCollectorRequest < Struct.new(
      :collector_referenced_id)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteConnectionMessage AWS API Documentation
    #
    class DeleteConnectionMessage < Struct.new(
      :endpoint_arn,
      :replication_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connection
    #   The connection that is being deleted.
    #   @return [Types::Connection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteConnectionResponse AWS API Documentation
    #
    class DeleteConnectionResponse < Struct.new(
      :connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration_identifier
    #   The identifier (name or ARN) of the data migration to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteDataMigrationMessage AWS API Documentation
    #
    class DeleteDataMigrationMessage < Struct.new(
      :data_migration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration
    #   The deleted data migration.
    #   @return [Types::DataMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteDataMigrationResponse AWS API Documentation
    #
    class DeleteDataMigrationResponse < Struct.new(
      :data_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider_identifier
    #   The identifier of the data provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteDataProviderMessage AWS API Documentation
    #
    class DeleteDataProviderMessage < Struct.new(
      :data_provider_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider
    #   The data provider that was deleted.
    #   @return [Types::DataProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteDataProviderResponse AWS API Documentation
    #
    class DeleteDataProviderResponse < Struct.new(
      :data_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEndpointMessage AWS API Documentation
    #
    class DeleteEndpointMessage < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the DMS event notification subscription to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_ids
    #   The IDs of the Fleet Advisor collector databases to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteFleetAdvisorDatabasesRequest AWS API Documentation
    #
    class DeleteFleetAdvisorDatabasesRequest < Struct.new(
      :database_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_ids
    #   The IDs of the databases that the operation deleted.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteFleetAdvisorDatabasesResponse AWS API Documentation
    #
    class DeleteFleetAdvisorDatabasesResponse < Struct.new(
      :database_ids)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_identifier
    #   The identifier of the instance profile to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteInstanceProfileMessage AWS API Documentation
    #
    class DeleteInstanceProfileMessage < Struct.new(
      :instance_profile_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile
    #   The instance profile that was deleted.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteInstanceProfileResponse AWS API Documentation
    #
    class DeleteInstanceProfileResponse < Struct.new(
      :instance_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) of the migration project to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteMigrationProjectMessage AWS API Documentation
    #
    class DeleteMigrationProjectMessage < Struct.new(
      :migration_project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project
    #   The migration project that was deleted.
    #   @return [Types::MigrationProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteMigrationProjectResponse AWS API Documentation
    #
    class DeleteMigrationProjectResponse < Struct.new(
      :migration_project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The replication config to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationConfigMessage AWS API Documentation
    #
    class DeleteReplicationConfigMessage < Struct.new(
      :replication_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config
    #   Configuration parameters returned for the DMS Serverless replication
    #   after it is deleted.
    #   @return [Types::ReplicationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationConfigResponse AWS API Documentation
    #
    class DeleteReplicationConfigResponse < Struct.new(
      :replication_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationInstanceMessage AWS API Documentation
    #
    class DeleteReplicationInstanceMessage < Struct.new(
      :replication_instance_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group_identifier
    #   The subnet group name of the replication instance.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroupMessage AWS API Documentation
    #
    class DeleteReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroupResponse AWS API Documentation
    #
    class DeleteReplicationSubnetGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] replication_task_assessment_run_arn
    #   Amazon Resource Name (ARN) of the premigration assessment run to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskAssessmentRunMessage AWS API Documentation
    #
    class DeleteReplicationTaskAssessmentRunMessage < Struct.new(
      :replication_task_assessment_run_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_assessment_run
    #   The `ReplicationTaskAssessmentRun` object for the deleted assessment
    #   run.
    #   @return [Types::ReplicationTaskAssessmentRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskAssessmentRunResponse AWS API Documentation
    #
    class DeleteReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationTaskMessage AWS API Documentation
    #
    class DeleteReplicationTaskMessage < Struct.new(
      :replication_task_arn)
      SENSITIVE = []
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
      SENSITIVE = []
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
    # @!attribute [rw] unique_account_identifier
    #   A unique DMS identifier for an account in a particular Amazon Web
    #   Services Region. The value of this identifier has the following
    #   format: `c99999999999`. DMS uses this identifier to name artifacts.
    #   For example, DMS uses this identifier to name the default Amazon S3
    #   bucket for storing task assessment reports in a given Amazon Web
    #   Services Region. The format of this S3 bucket name is the following:
    #   `dms-AccountNumber-UniqueAccountIdentifier.` Here is an example name
    #   for this default S3 bucket: `dms-111122223333-c44445555666`.
    #
    #   <note markdown="1"> DMS supports the `UniqueAccountIdentifier` parameter in versions
    #   3.1.4 and later.
    #
    #    </note>
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeAccountAttributesResponse AWS API Documentation
    #
    class DescribeAccountAttributesResponse < Struct.new(
      :account_quotas,
      :unique_account_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   Amazon Resource Name (ARN) of a migration task on which you want to
    #   base the default list of individual assessments.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   ARN of a replication instance on which you want to base the default
    #   list of individual assessments.
    #   @return [String]
    #
    # @!attribute [rw] replication_config_arn
    #   Amazon Resource Name (ARN) of a serverless replication on which you
    #   want to base the default list of individual assessments.
    #   @return [String]
    #
    # @!attribute [rw] source_engine_name
    #   Name of a database engine that the specified replication instance
    #   supports as a source.
    #   @return [String]
    #
    # @!attribute [rw] target_engine_name
    #   Name of a database engine that the specified replication instance
    #   supports as a target.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   Name of the migration type that each provided individual assessment
    #   must support.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   Maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeApplicableIndividualAssessmentsMessage AWS API Documentation
    #
    class DescribeApplicableIndividualAssessmentsMessage < Struct.new(
      :replication_task_arn,
      :replication_instance_arn,
      :replication_config_arn,
      :source_engine_name,
      :target_engine_name,
      :migration_type,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] individual_assessment_names
    #   List of names for the individual assessments supported by the
    #   premigration assessment run that you start based on the specified
    #   request parameters. For more information on the available individual
    #   assessments, including compatibility with different migration task
    #   configurations, see [Working with premigration assessment runs][1]
    #   in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] marker
    #   Pagination token returned for you to pass to a subsequent request.
    #   If you pass this token as the `Marker` value in a subsequent
    #   request, the response includes only records beyond the marker, up to
    #   the value specified in the request by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeApplicableIndividualAssessmentsResponse AWS API Documentation
    #
    class DescribeApplicableIndividualAssessmentsResponse < Struct.new(
      :individual_assessment_names,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the certificates described in the form of
    #   key-value pairs. Valid values are `certificate-arn` and
    #   `certificate-id`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) for the schema conversion
    #   project to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConversionConfigurationMessage AWS API Documentation
    #
    class DescribeConversionConfigurationMessage < Struct.new(
      :migration_project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) for the schema conversion
    #   project.
    #   @return [String]
    #
    # @!attribute [rw] conversion_configuration
    #   The configuration parameters for the schema conversion project.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeConversionConfigurationResponse AWS API Documentation
    #
    class DescribeConversionConfigurationResponse < Struct.new(
      :migration_project_identifier,
      :conversion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the data migrations.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] without_settings
    #   An option to set to avoid returning information about settings. Use
    #   this to reduce overhead when setting information is too large. To
    #   use this option, choose `true`; otherwise, choose `false` (the
    #   default).
    #   @return [Boolean]
    #
    # @!attribute [rw] without_statistics
    #   An option to set to avoid returning information about statistics.
    #   Use this to reduce overhead when statistics information is too
    #   large. To use this option, choose `true`; otherwise, choose `false`
    #   (the default).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeDataMigrationsMessage AWS API Documentation
    #
    class DescribeDataMigrationsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      :without_settings,
      :without_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migrations
    #   Returns information about the data migrations used in the project.
    #   @return [Array<Types::DataMigration>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeDataMigrationsResponse AWS API Documentation
    #
    class DescribeDataMigrationsResponse < Struct.new(
      :data_migrations,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the data providers described in the form of
    #   key-value pairs.
    #
    #   Valid filter names and values: data-provider-identifier, data
    #   provider arn or name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeDataProvidersMessage AWS API Documentation
    #
    class DescribeDataProvidersMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] data_providers
    #   A description of data providers.
    #   @return [Array<Types::DataProvider>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeDataProvidersResponse AWS API Documentation
    #
    class DescribeDataProvidersResponse < Struct.new(
      :marker,
      :data_providers)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_name
    #   The database engine used for your source or target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointSettingsMessage AWS API Documentation
    #
    class DescribeEndpointSettingsMessage < Struct.new(
      :engine_name,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_settings
    #   Descriptions of the endpoint settings available for your source or
    #   target database engine.
    #   @return [Array<Types::EndpointSetting>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointSettingsResponse AWS API Documentation
    #
    class DescribeEndpointSettingsResponse < Struct.new(
      :marker,
      :endpoint_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the endpoint types.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] supported_endpoint_types
    #   The types of endpoints that are supported.
    #   @return [Array<Types::SupportedEndpointType>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEndpointTypesResponse AWS API Documentation
    #
    class DescribeEndpointTypesResponse < Struct.new(
      :marker,
      :supported_endpoint_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the endpoints.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEngineVersionsMessage AWS API Documentation
    #
    class DescribeEngineVersionsMessage < Struct.new(
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] engine_versions
    #   Returned `EngineVersion` objects that describe the replication
    #   instance engine versions used in the project.
    #   @return [Array<Types::EngineVersion>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEngineVersionsResponse AWS API Documentation
    #
    class DescribeEngineVersionsResponse < Struct.new(
      :engine_versions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_type
    #   The type of DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-task
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the event categories.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the DMS event subscription to be described.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to event subscriptions.
    #
    #   Valid filter names: `event-subscription-arn` \|
    #   `event-subscription-id`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_identifier
    #   The identifier of an event source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-task
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
    #   A list of event categories for the source type that you've chosen.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Filters applied to events. The only valid filter is
    #   `replication-instance-id`.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) for the migration project.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the extension pack associations described in the
    #   form of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeExtensionPackAssociationsMessage AWS API Documentation
    #
    class DescribeExtensionPackAssociationsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of extension pack associations for the specified
    #   migration project.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeExtensionPackAssociationsResponse AWS API Documentation
    #
    class DescribeExtensionPackAssociationsResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   If you specify any of the following filters, the output includes
    #   information for only those collectors that meet the filter criteria:
    #
    #   * `collector-referenced-id` – The ID of the collector agent, for
    #     example `d4610ac5-e323-4ad9-bc50-eaf7249dfe9d`.
    #
    #   * `collector-name` – The name of the collector agent.
    #
    #   An example is: `describe-fleet-advisor-collectors --filter
    #   Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   Sets the maximum number of records returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorCollectorsRequest AWS API Documentation
    #
    class DescribeFleetAdvisorCollectorsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collectors
    #   Provides descriptions of the Fleet Advisor collectors, including the
    #   collectors' name and ID, and the latest inventory data.
    #   @return [Array<Types::CollectorResponse>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorCollectorsResponse AWS API Documentation
    #
    class DescribeFleetAdvisorCollectorsResponse < Struct.new(
      :collectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   If you specify any of the following filters, the output includes
    #   information for only those databases that meet the filter criteria:
    #
    #   * `database-id` – The ID of the database.
    #
    #   * `database-name` – The name of the database.
    #
    #   * `database-engine` – The name of the database engine.
    #
    #   * `server-ip-address` – The IP address of the database server.
    #
    #   * `database-ip-address` – The IP address of the database.
    #
    #   * `collector-name` – The name of the associated Fleet Advisor
    #     collector.
    #
    #   An example is: `describe-fleet-advisor-databases --filter
    #   Name="database-id",Values="45"`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   Sets the maximum number of records returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorDatabasesRequest AWS API Documentation
    #
    class DescribeFleetAdvisorDatabasesRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] databases
    #   Provides descriptions of the Fleet Advisor collector databases,
    #   including the database's collector, ID, and name.
    #   @return [Array<Types::DatabaseResponse>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorDatabasesResponse AWS API Documentation
    #
    class DescribeFleetAdvisorDatabasesResponse < Struct.new(
      :databases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_records
    #   Sets the maximum number of records returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorLsaAnalysisRequest AWS API Documentation
    #
    class DescribeFleetAdvisorLsaAnalysisRequest < Struct.new(
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] analysis
    #   A list of `FleetAdvisorLsaAnalysisResponse` objects.
    #   @return [Array<Types::FleetAdvisorLsaAnalysisResponse>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorLsaAnalysisResponse AWS API Documentation
    #
    class DescribeFleetAdvisorLsaAnalysisResponse < Struct.new(
      :analysis,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   If you specify any of the following filters, the output includes
    #   information for only those schema objects that meet the filter
    #   criteria:
    #
    #   * `schema-id` – The ID of the schema, for example
    #     `d4610ac5-e323-4ad9-bc50-eaf7249dfe9d`.
    #
    #   ^
    #
    #   Example: `describe-fleet-advisor-schema-object-summary --filter
    #   Name="schema-id",Values="50"`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   End of support notice: On May 20, 2026, Amazon Web Services will end
    #   support for Amazon Web Services DMS Fleet Advisor;. After May 20,
    #   2026, you will no longer be able to access the Amazon Web Services
    #   DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor;
    #   resources. For more information, see [Amazon Web Services DMS Fleet
    #   Advisor end of support][1].
    #
    #   Sets the maximum number of records returned in the response.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorSchemaObjectSummaryRequest AWS API Documentation
    #
    class DescribeFleetAdvisorSchemaObjectSummaryRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_advisor_schema_objects
    #   A collection of `FleetAdvisorSchemaObjectResponse` objects.
    #   @return [Array<Types::FleetAdvisorSchemaObjectResponse>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorSchemaObjectSummaryResponse AWS API Documentation
    #
    class DescribeFleetAdvisorSchemaObjectSummaryResponse < Struct.new(
      :fleet_advisor_schema_objects,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   If you specify any of the following filters, the output includes
    #   information for only those schemas that meet the filter criteria:
    #
    #   * `complexity` – The schema's complexity, for example `Simple`.
    #
    #   * `database-id` – The ID of the schema's database.
    #
    #   * `database-ip-address` – The IP address of the schema's database.
    #
    #   * `database-name` – The name of the schema's database.
    #
    #   * `database-engine` – The name of the schema database's engine.
    #
    #   * `original-schema-name` – The name of the schema's database's
    #     main schema.
    #
    #   * `schema-id` – The ID of the schema, for example `15`.
    #
    #   * `schema-name` – The name of the schema.
    #
    #   * `server-ip-address` – The IP address of the schema database's
    #     server.
    #
    #   An example is: `describe-fleet-advisor-schemas --filter
    #   Name="schema-id",Values="50"`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   Sets the maximum number of records returned in the response.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorSchemasRequest AWS API Documentation
    #
    class DescribeFleetAdvisorSchemasRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] fleet_advisor_schemas
    #   A collection of `SchemaResponse` objects.
    #   @return [Array<Types::SchemaResponse>]
    #
    # @!attribute [rw] next_token
    #   If `NextToken` is returned, there are more results available. The
    #   value of `NextToken` is a unique pagination token for each page.
    #   Make the call again using the returned token to retrieve the next
    #   page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeFleetAdvisorSchemasResponse AWS API Documentation
    #
    class DescribeFleetAdvisorSchemasResponse < Struct.new(
      :fleet_advisor_schemas,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the instance profiles described in the form of
    #   key-value pairs.
    #
    #   Valid filter names and values: instance-profile-identifier, instance
    #   profile arn or name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeInstanceProfilesMessage AWS API Documentation
    #
    class DescribeInstanceProfilesMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] instance_profiles
    #   A description of instance profiles.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeInstanceProfilesResponse AWS API Documentation
    #
    class DescribeInstanceProfilesResponse < Struct.new(
      :marker,
      :instance_profiles)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) of the migration project.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the metadata model assessments described in the
    #   form of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelAssessmentsMessage AWS API Documentation
    #
    class DescribeMetadataModelAssessmentsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of metadata model assessments for the specified
    #   migration project.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelAssessmentsResponse AWS API Documentation
    #
    class DescribeMetadataModelAssessmentsResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] selection_rules
    #   The JSON string that specifies which metadata model's children to
    #   retrieve. Only one selection rule with "rule-action": "explicit"
    #   can be provided. For more information, see [Selection Rules][1] in
    #   the DMS User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.Selections.html
    #   @return [String]
    #
    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Specifies whether to retrieve metadata from the source or target
    #   tree. Valid values: SOURCE \| TARGET
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that indicates where the next
    #   page should start. If this parameter is specified, the response
    #   includes only records beyond the marker, up to the value specified
    #   by MaxRecords.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of metadata model children to include in the
    #   response. If more items exist than the specified MaxRecords value, a
    #   marker is included in the response so that the remaining results can
    #   be retrieved.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelChildrenMessage AWS API Documentation
    #
    class DescribeMetadataModelChildrenMessage < Struct.new(
      :selection_rules,
      :migration_project_identifier,
      :origin,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of metadata model children. If a marker is
    #   returned, there are more metadata model children available.
    #   @return [String]
    #
    # @!attribute [rw] metadata_model_children
    #   A list of child metadata models.
    #   @return [Array<Types::MetadataModelReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelChildrenResponse AWS API Documentation
    #
    class DescribeMetadataModelChildrenResponse < Struct.new(
      :marker,
      :metadata_model_children)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the metadata model conversions described in the
    #   form of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelConversionsMessage AWS API Documentation
    #
    class DescribeMetadataModelConversionsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of metadata model conversions.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelConversionsResponse AWS API Documentation
    #
    class DescribeMetadataModelConversionsResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the metadata model creation requests described in
    #   the form of key-value pairs. The supported filters are request-id
    #   and status.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of metadata model creation requests. If Marker
    #   is returned by a previous response, there are more metadata model
    #   creation requests available.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of metadata model creation requests to include in
    #   the response. If more requests exist than the specified MaxRecords
    #   value, a pagination token is provided in the response so that you
    #   can retrieve the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelCreationsMessage AWS API Documentation
    #
    class DescribeMetadataModelCreationsMessage < Struct.new(
      :filters,
      :marker,
      :max_records,
      :migration_project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of metadata model creation requests. If Marker
    #   is returned, there are more metadata model creation requests
    #   available.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A list of metadata model creation requests. The ExportSqlDetails
    #   field will never be populated for the DescribeMetadataModelCreations
    #   operation.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelCreationsResponse AWS API Documentation
    #
    class DescribeMetadataModelCreationsResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the metadata model exports described in the form
    #   of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelExportsAsScriptMessage AWS API Documentation
    #
    class DescribeMetadataModelExportsAsScriptMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of metadata model exports.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelExportsAsScriptResponse AWS API Documentation
    #
    class DescribeMetadataModelExportsAsScriptResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the metadata model exports described in the form
    #   of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelExportsToTargetMessage AWS API Documentation
    #
    class DescribeMetadataModelExportsToTargetMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of metadata model exports.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelExportsToTargetResponse AWS API Documentation
    #
    class DescribeMetadataModelExportsToTargetResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the metadata model imports described in the form
    #   of key-value pairs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   A paginated list of metadata model imports.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelImportsMessage AWS API Documentation
    #
    class DescribeMetadataModelImportsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] requests
    #   A paginated list of metadata model imports.
    #   @return [Array<Types::SchemaConversionRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelImportsResponse AWS API Documentation
    #
    class DescribeMetadataModelImportsResponse < Struct.new(
      :marker,
      :requests)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] selection_rules
    #   The JSON string that specifies which metadata model to retrieve.
    #   Only one selection rule with "rule-action": "explicit" can be
    #   provided. For more information, see [Selection Rules][1] in the DMS
    #   User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.Selections.html
    #   @return [String]
    #
    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Specifies whether to retrieve metadata from the source or target
    #   tree. Valid values: SOURCE \| TARGET
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelMessage AWS API Documentation
    #
    class DescribeMetadataModelMessage < Struct.new(
      :selection_rules,
      :migration_project_identifier,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] metadata_model_name
    #   The name of the metadata model.
    #   @return [String]
    #
    # @!attribute [rw] metadata_model_type
    #   The type of the metadata model.
    #   @return [String]
    #
    # @!attribute [rw] target_metadata_models
    #   A list of counterpart metadata models in the target. This field is
    #   populated only when Origin is SOURCE and after the object has been
    #   converted by DMS Schema Conversion.
    #   @return [Array<Types::MetadataModelReference>]
    #
    # @!attribute [rw] definition
    #   The SQL text of the metadata model. This field might not be
    #   populated for some metadata models.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMetadataModelResponse AWS API Documentation
    #
    class DescribeMetadataModelResponse < Struct.new(
      :metadata_model_name,
      :metadata_model_type,
      :target_metadata_models,
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the migration projects described in the form of
    #   key-value pairs.
    #
    #   Valid filter names and values:
    #
    #   * instance-profile-identifier, instance profile arn or name
    #
    #   * data-provider-identifier, data provider arn or name
    #
    #   * migration-project-identifier, migration project arn or name
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, DMS includes a
    #   pagination token in the response so that you can retrieve the
    #   remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMigrationProjectsMessage AWS API Documentation
    #
    class DescribeMigrationProjectsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `Marker` is returned by a previous response, there are more
    #   results available. The value of `Marker` is a unique pagination
    #   token for each page. To retrieve the next page, make the call again
    #   using the returned token and keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] migration_projects
    #   A description of migration projects.
    #   @return [Array<Types::MigrationProject>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeMigrationProjectsResponse AWS API Documentation
    #
    class DescribeMigrationProjectsResponse < Struct.new(
      :marker,
      :migration_projects)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribePendingMaintenanceActionsMessage AWS API Documentation
    #
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :replication_instance_arn,
      :filters,
      :marker,
      :max_records)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pending_maintenance_actions
    #   The pending maintenance action.
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribePendingMaintenanceActionsResponse AWS API Documentation
    #
    class DescribePendingMaintenanceActionsResponse < Struct.new(
      :pending_maintenance_actions,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the limitations described in the form of
    #   key-value pairs.
    #
    #   Valid filter names: `database-id` \| `engine-name`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, Fleet Advisor
    #   includes a pagination token in the response so that you can retrieve
    #   the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRecommendationLimitationsRequest AWS API Documentation
    #
    class DescribeRecommendationLimitationsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The unique pagination token returned for you to pass to a subsequent
    #   request. Fleet Advisor returns this token when the number of records
    #   in the response is greater than the `MaxRecords` value. To retrieve
    #   the next page, make the call again using the returned token and
    #   keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] limitations
    #   The list of limitations for recommendations of target Amazon Web
    #   Services engines.
    #   @return [Array<Types::Limitation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRecommendationLimitationsResponse AWS API Documentation
    #
    class DescribeRecommendationLimitationsResponse < Struct.new(
      :next_token,
      :limitations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the target engine recommendations described in
    #   the form of key-value pairs.
    #
    #   Valid filter names: `database-id` \| `engine-name`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, Fleet Advisor
    #   includes a pagination token in the response so that you can retrieve
    #   the remaining results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Specifies the unique pagination token that makes it possible to
    #   display the next page of results. If this parameter is specified,
    #   the response includes only records beyond the marker, up to the
    #   value specified by `MaxRecords`.
    #
    #   If `NextToken` is returned by a previous response, there are more
    #   results available. The value of `NextToken` is a unique pagination
    #   token for each page. Make the call again using the returned token to
    #   retrieve the next page. Keep all other arguments unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRecommendationsRequest AWS API Documentation
    #
    class DescribeRecommendationsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The unique pagination token returned for you to pass to a subsequent
    #   request. Fleet Advisor returns this token when the number of records
    #   in the response is greater than the `MaxRecords` value. To retrieve
    #   the next page, make the call again using the returned token and
    #   keeping all other arguments unchanged.
    #   @return [String]
    #
    # @!attribute [rw] recommendations
    #   The list of recommendations of target engines that Fleet Advisor
    #   created for the source database.
    #   @return [Array<Types::Recommendation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRecommendationsResponse AWS API Documentation
    #
    class DescribeRecommendationsResponse < Struct.new(
      :next_token,
      :recommendations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeRefreshSchemasStatusMessage AWS API Documentation
    #
    class DescribeRefreshSchemasStatusMessage < Struct.new(
      :endpoint_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the replication configs.
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationConfigsMessage AWS API Documentation
    #
    class DescribeReplicationConfigsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_configs
    #   Returned configuration parameters that describe each provisioned DMS
    #   Serverless replication.
    #   @return [Array<Types::ReplicationConfig>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationConfigsResponse AWS API Documentation
    #
    class DescribeReplicationConfigsResponse < Struct.new(
      :marker,
      :replication_configs)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to replication instances.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to replication subnet groups.
    #
    #   Valid filter names: replication-subnet-group-id
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The replication config to describe.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Filters applied to the replication table statistics.
    #   @return [Array<Types::Filter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTableStatisticsMessage AWS API Documentation
    #
    class DescribeReplicationTableStatisticsMessage < Struct.new(
      :replication_config_arn,
      :max_records,
      :marker,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication config.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_table_statistics
    #   Returns table statistics on the replication, including table name,
    #   rows inserted, rows updated, and rows deleted.
    #   @return [Array<Types::TableStatistics>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTableStatisticsResponse AWS API Documentation
    #
    class DescribeReplicationTableStatisticsResponse < Struct.new(
      :replication_config_arn,
      :marker,
      :replication_table_statistics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   task. When this input parameter is specified, the API returns only
    #   one result and ignore the values of the `MaxRecords` and `Marker`
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the premigration assessment runs described in the
    #   form of key-value pairs.
    #
    #   Valid filter names: `replication-task-assessment-run-arn`,
    #   `replication-task-arn`, `replication-instance-arn`, `status`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentRunsMessage AWS API Documentation
    #
    class DescribeReplicationTaskAssessmentRunsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A pagination token returned for you to pass to a subsequent request.
    #   If you pass this token as the `Marker` value in a subsequent
    #   request, the response includes only records beyond the marker, up to
    #   the value specified in the request by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_assessment_runs
    #   One or more premigration assessment runs as specified by `Filters`.
    #   @return [Array<Types::ReplicationTaskAssessmentRun>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskAssessmentRunsResponse AWS API Documentation
    #
    class DescribeReplicationTaskAssessmentRunsResponse < Struct.new(
      :marker,
      :replication_task_assessment_runs)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the individual assessments described in the form
    #   of key-value pairs.
    #
    #   Valid filter names: `replication-task-assessment-run-arn`,
    #   `replication-task-arn`, `status`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskIndividualAssessmentsMessage AWS API Documentation
    #
    class DescribeReplicationTaskIndividualAssessmentsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A pagination token returned for you to pass to a subsequent request.
    #   If you pass this token as the `Marker` value in a subsequent
    #   request, the response includes only records beyond the marker, up to
    #   the value specified in the request by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_individual_assessments
    #   One or more individual assessments as specified by `Filters`.
    #   @return [Array<Types::ReplicationTaskIndividualAssessment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTaskIndividualAssessmentsResponse AWS API Documentation
    #
    class DescribeReplicationTaskIndividualAssessmentsResponse < Struct.new(
      :marker,
      :replication_task_individual_assessments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to replication tasks.
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
    # @!attribute [rw] without_settings
    #   An option to set to avoid returning information about settings. Use
    #   this to reduce overhead when setting information is too large. To
    #   use this option, choose `true`; otherwise, choose `false` (the
    #   default).
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationTasksMessage AWS API Documentation
    #
    class DescribeReplicationTasksMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      :without_settings)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filters
    #   Filters applied to the replications.
    #
    #   Valid filter names: `replication-config-arn` \|
    #   `replication-config-id`
    #   @return [Array<Types::Filter>]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationsMessage AWS API Documentation
    #
    class DescribeReplicationsMessage < Struct.new(
      :filters,
      :max_records,
      :marker)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous request. If this
    #   parameter is specified, the response includes only records beyond
    #   the marker, up to the value specified by `MaxRecords`.
    #   @return [String]
    #
    # @!attribute [rw] replications
    #   The replication descriptions.
    #   @return [Array<Types::Replication>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DescribeReplicationsResponse AWS API Documentation
    #
    class DescribeReplicationsResponse < Struct.new(
      :marker,
      :replications)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   Filters applied to table statistics.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings in JSON format for the DMS Transfer type source endpoint.
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service access IAM role.
    #   The role must allow the `iam:PassRole` action.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a DocumentDB data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the source DocumentDB server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the DocumentDB data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the DocumentDB data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the DocumentDB data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DocDbDataProviderSettings AWS API Documentation
    #
    class DocDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a DocumentDB endpoint.
    #
    # @!attribute [rw] username
    #   The user name you use to access the DocumentDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The password for the user account you use to access the DocumentDB
    #   source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the server on the DocumentDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the DocumentDB source endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the DocumentDB source endpoint.
    #   @return [String]
    #
    # @!attribute [rw] nesting_level
    #   Specifies either document or table mode.
    #
    #   Default value is `"none"`. Specify `"none"` to use document mode.
    #   Specify `"one"` to use table mode.
    #   @return [String]
    #
    # @!attribute [rw] extract_doc_id
    #   Specifies the document ID. Use this setting when `NestingLevel` is
    #   set to `"none"`.
    #
    #   Default value is `"false"`.
    #   @return [Boolean]
    #
    # @!attribute [rw] docs_to_investigate
    #   Indicates the number of documents to preview to determine the
    #   document organization. Use this setting when `NestingLevel` is set
    #   to `"one"`.
    #
    #   Must be a positive value greater than `0`. Default value is `1000`.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that is used to encrypt the content on the
    #   replication instance. If you don't specify a value for the
    #   `KmsKeyId` parameter, then DMS uses your default encryption key. KMS
    #   creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   DocumentDB endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the DocumentDB endpoint
    #   connection details.
    #   @return [String]
    #
    # @!attribute [rw] use_update_look_up
    #   If `true`, DMS retrieves the entire document from the DocumentDB
    #   source during migration. This may cause a migration failure if the
    #   server response exceeds bandwidth limits. To fetch only updates and
    #   deletes during migration, set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] replicate_shard_collections
    #   If `true`, DMS replicates data to shard collections. DMS only uses
    #   this setting if the target endpoint is a DocumentDB elastic cluster.
    #
    #   When this setting is `true`, note the following:
    #
    #   * You must set `TargetTablePrepMode` to `nothing`.
    #
    #   * DMS automatically sets `useUpdateLookup` to `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DocDbSettings AWS API Documentation
    #
    class DocDbSettings < Struct.new(
      :username,
      :password,
      :server_name,
      :port,
      :database_name,
      :nesting_level,
      :extract_doc_id,
      :docs_to_investigate,
      :kms_key_id,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :use_update_look_up,
      :replicate_shard_collections)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides the Amazon Resource Name (ARN) of the Identity and Access
    # Management (IAM) role used to define an Amazon DynamoDB target
    # endpoint.
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service to access the IAM
    #   role. The role must allow the `iam:PassRole` action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DynamoDbSettings AWS API Documentation
    #
    class DynamoDbSettings < Struct.new(
      :service_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an OpenSearch endpoint.
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service to access the IAM
    #   role. The role must allow the `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_uri
    #   The endpoint for the OpenSearch cluster. DMS uses HTTPS if a
    #   transport protocol (http/https) is not specified.
    #   @return [String]
    #
    # @!attribute [rw] full_load_error_percentage
    #   The maximum percentage of records that can fail to be written before
    #   a full load operation stops.
    #
    #   To avoid early failure, this counter is only effective after 1000
    #   records are transferred. OpenSearch also has the concept of error
    #   monitoring during the last 10 minutes of an Observation Window. If
    #   transfer of all records fail in the last 10 minutes, the full load
    #   operation stops.
    #   @return [Integer]
    #
    # @!attribute [rw] error_retry_duration
    #   The maximum number of seconds for which DMS retries failed API
    #   requests to the OpenSearch cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] use_new_mapping_type
    #   Set this option to `true` for DMS to migrate documentation using the
    #   documentation type `_doc`. OpenSearch and an Elasticsearch cluster
    #   only support the \_doc documentation type in versions 7. x and
    #   later. The default value is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ElasticsearchSettings AWS API Documentation
    #
    class ElasticsearchSettings < Struct.new(
      :service_access_role_arn,
      :endpoint_uri,
      :full_load_error_percentage,
      :error_retry_duration,
      :use_new_mapping_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an endpoint of a database instance in response to operations
    # such as the following:
    #
    # * `CreateEndpoint`
    #
    # * `DescribeEndpoint`
    #
    # * `ModifyEndpoint`
    #
    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The database engine name. Valid values, depending on the
    #   EndpointType, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`,
    #   `"redshift-serverless"`, `"s3"`, `"db2"`, `"db2-zos"`, `"azuredb"`,
    #   `"sybase"`, `"dynamodb"`, `"mongodb"`, `"kinesis"`, `"kafka"`,
    #   `"elasticsearch"`, `"documentdb"`, `"sqlserver"`, `"neptune"`, and
    #   `"babelfish"`.
    #   @return [String]
    #
    # @!attribute [rw] engine_display_name
    #   The expanded name for the engine name. For example, if the
    #   `EngineName` parameter is "aurora", this value would be "Amazon
    #   Aurora MySQL".
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
    #   An KMS key identifier that is used to encrypt the connection
    #   parameters for the endpoint.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
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
    #   The SSL mode used to connect to the endpoint. The default value is
    #   `none`.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service to access the IAM
    #   role. The role must allow the `iam:PassRole` action.
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
    # @!attribute [rw] is_read_only
    #   Indicates whether the endpoint is read-only. When set to `true`,
    #   this endpoint is managed by DMS as part of a zero-ETL integration
    #   and cannot be modified or deleted directly. You can only modify or
    #   delete read-only endpoints through their associated zero-ETL
    #   integration.
    #   @return [Boolean]
    #
    # @!attribute [rw] dynamo_db_settings
    #   The settings for the DynamoDB target endpoint. For more information,
    #   see the `DynamoDBSettings` structure.
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   The settings for the S3 target endpoint. For more information, see
    #   the `S3Settings` structure.
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings for the DMS Transfer type source. For more information,
    #   see the DmsTransferSettings structure.
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   The settings for the MongoDB source endpoint. For more information,
    #   see the `MongoDbSettings` structure.
    #   @return [Types::MongoDbSettings]
    #
    # @!attribute [rw] kinesis_settings
    #   The settings for the Amazon Kinesis target endpoint. For more
    #   information, see the `KinesisSettings` structure.
    #   @return [Types::KinesisSettings]
    #
    # @!attribute [rw] kafka_settings
    #   The settings for the Apache Kafka target endpoint. For more
    #   information, see the `KafkaSettings` structure.
    #   @return [Types::KafkaSettings]
    #
    # @!attribute [rw] elasticsearch_settings
    #   The settings for the OpenSearch source endpoint. For more
    #   information, see the `ElasticsearchSettings` structure.
    #   @return [Types::ElasticsearchSettings]
    #
    # @!attribute [rw] neptune_settings
    #   The settings for the Amazon Neptune target endpoint. For more
    #   information, see the `NeptuneSettings` structure.
    #   @return [Types::NeptuneSettings]
    #
    # @!attribute [rw] redshift_settings
    #   Settings for the Amazon Redshift endpoint.
    #   @return [Types::RedshiftSettings]
    #
    # @!attribute [rw] postgre_sql_settings
    #   The settings for the PostgreSQL source and target endpoint. For more
    #   information, see the `PostgreSQLSettings` structure.
    #   @return [Types::PostgreSQLSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   The settings for the MySQL source and target endpoint. For more
    #   information, see the `MySQLSettings` structure.
    #   @return [Types::MySQLSettings]
    #
    # @!attribute [rw] oracle_settings
    #   The settings for the Oracle source and target endpoint. For more
    #   information, see the `OracleSettings` structure.
    #   @return [Types::OracleSettings]
    #
    # @!attribute [rw] sybase_settings
    #   The settings for the SAP ASE source and target endpoint. For more
    #   information, see the `SybaseSettings` structure.
    #   @return [Types::SybaseSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   The settings for the Microsoft SQL Server source and target
    #   endpoint. For more information, see the `MicrosoftSQLServerSettings`
    #   structure.
    #   @return [Types::MicrosoftSQLServerSettings]
    #
    # @!attribute [rw] ibm_db_2_settings
    #   The settings for the IBM Db2 LUW source endpoint. For more
    #   information, see the `IBMDb2Settings` structure.
    #   @return [Types::IBMDb2Settings]
    #
    # @!attribute [rw] doc_db_settings
    #   Provides information that defines a DocumentDB endpoint.
    #   @return [Types::DocDbSettings]
    #
    # @!attribute [rw] redis_settings
    #   The settings for the Redis target endpoint. For more information,
    #   see the `RedisSettings` structure.
    #   @return [Types::RedisSettings]
    #
    # @!attribute [rw] gcp_my_sql_settings
    #   Settings in JSON format for the source GCP MySQL endpoint.
    #   @return [Types::GcpMySQLSettings]
    #
    # @!attribute [rw] timestream_settings
    #   The settings for the Amazon Timestream target endpoint. For more
    #   information, see the `TimestreamSettings` structure.
    #   @return [Types::TimestreamSettings]
    #
    # @!attribute [rw] lakehouse_settings
    #   Settings in JSON format for the target Lakehouse endpoint. This
    #   parameter applies to endpoints that are automatically created by DMS
    #   for a Lakehouse data warehouse as part of a zero-ETL integration.
    #   @return [Types::LakehouseSettings]
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
      :is_read_only,
      :dynamo_db_settings,
      :s3_settings,
      :dms_transfer_settings,
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db_2_settings,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      :timestream_settings,
      :lakehouse_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Endpoint settings.
    #
    # @!attribute [rw] name
    #   The name that you want to give the endpoint settings.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] enum_values
    #   Enumerated values to use for this endpoint.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sensitive
    #   A value that marks this endpoint setting as sensitive.
    #   @return [Boolean]
    #
    # @!attribute [rw] units
    #   The unit of measure for this endpoint setting.
    #   @return [String]
    #
    # @!attribute [rw] applicability
    #   The relevance or validity of an endpoint setting for an engine name
    #   and its endpoint type.
    #   @return [String]
    #
    # @!attribute [rw] int_value_min
    #   The minimum value of an endpoint setting that is of type `int`.
    #   @return [Integer]
    #
    # @!attribute [rw] int_value_max
    #   The maximum value of an endpoint setting that is of type `int`.
    #   @return [Integer]
    #
    # @!attribute [rw] default_value
    #   The default value of the endpoint setting if no value is specified
    #   using `CreateEndpoint` or `ModifyEndpoint`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/EndpointSetting AWS API Documentation
    #
    class EndpointSetting < Struct.new(
      :name,
      :type,
      :enum_values,
      :sensitive,
      :units,
      :applicability,
      :int_value_min,
      :int_value_max,
      :default_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a replication instance version.
    #
    # @!attribute [rw] version
    #   The version number of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] lifecycle
    #   The lifecycle status of the replication instance version. Valid
    #   values are `DEPRECATED`, `DEFAULT_VERSION`, and `ACTIVE`.
    #   @return [String]
    #
    # @!attribute [rw] release_status
    #   The release status of the replication instance version.
    #   @return [String]
    #
    # @!attribute [rw] launch_date
    #   The date when the replication instance version became publicly
    #   available.
    #   @return [Time]
    #
    # @!attribute [rw] auto_upgrade_date
    #   The date when the replication instance will be automatically
    #   upgraded. This setting only applies if the `auto-minor-version`
    #   setting is enabled.
    #   @return [Time]
    #
    # @!attribute [rw] deprecation_date
    #   The date when the replication instance version will be deprecated
    #   and can no longer be requested.
    #   @return [Time]
    #
    # @!attribute [rw] force_upgrade_date
    #   The date when the replication instance will have a version upgrade
    #   forced.
    #   @return [Time]
    #
    # @!attribute [rw] available_upgrades
    #   The list of valid replication instance versions that you can upgrade
    #   to.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/EngineVersion AWS API Documentation
    #
    class EngineVersion < Struct.new(
      :version,
      :lifecycle,
      :release_status,
      :launch_date,
      :auto_upgrade_date,
      :deprecation_date,
      :force_upgrade_date,
      :available_upgrades)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides error information about a project.
    #
    # @note ErrorDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ErrorDetails corresponding to the set member.
    #
    # @!attribute [rw] default_error_details
    #   Error information about a project.
    #   @return [Types::DefaultErrorDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ErrorDetails AWS API Documentation
    #
    class ErrorDetails < Struct.new(
      :default_error_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DefaultErrorDetails < ErrorDetails; end
      class Unknown < ErrorDetails; end
    end

    # Describes an identifiable significant activity that affects a
    # replication instance or task. This object can provide the message, the
    # available event categories, the date and source of the event, and the
    # DMS resource type.
    #
    # @!attribute [rw] source_identifier
    #   The identifier of an event source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates events.
    #
    #   Valid values: replication-instance \| endpoint \| replication-task
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Lists categories of events subscribed to, and generated by, the
    # applicable DMS resource type. This data type appears in response to
    # the [ `DescribeEventCategories` ][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-server \|
    #   security-group \| replication-task
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories from a source type that you've chosen.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/EventCategoryGroup AWS API Documentation
    #
    class EventCategoryGroup < Struct.new(
      :source_type,
      :event_categories)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an event notification subscription created by the
    # `CreateEventSubscription` operation.
    #
    # @!attribute [rw] customer_aws_id
    #   The Amazon Web Services customer account associated with the DMS
    #   event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] cust_subscription_id
    #   The DMS event notification subscription Id.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The topic ARN of the DMS event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the DMS event notification subscription.
    #
    #   Constraints:
    #
    #   Can be one of the following: creating \| modifying \| deleting \|
    #   active \| no-permission \| topic-not-exist
    #
    #   The status "no-permission" indicates that DMS no longer has
    #   permission to post to the SNS topic. The status "topic-not-exist"
    #   indicates that the topic was deleted after the subscription was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The time the DMS event notification subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates events.
    #
    #   Valid values: replication-instance \| replication-server \|
    #   security-group \| replication-task
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to assess.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The name of the assessment file to create in your Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] assessment_report_types
    #   The file format of the assessment file.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ExportMetadataModelAssessmentMessage AWS API Documentation
    #
    class ExportMetadataModelAssessmentMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :file_name,
      :assessment_report_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] pdf_report
    #   The Amazon S3 details for an assessment exported in PDF format.
    #   @return [Types::ExportMetadataModelAssessmentResultEntry]
    #
    # @!attribute [rw] csv_report
    #   The Amazon S3 details for an assessment exported in CSV format.
    #   @return [Types::ExportMetadataModelAssessmentResultEntry]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ExportMetadataModelAssessmentResponse AWS API Documentation
    #
    class ExportMetadataModelAssessmentResponse < Struct.new(
      :pdf_report,
      :csv_report)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an exported metadata model assessment.
    #
    # @!attribute [rw] s3_object_key
    #   The object key for the object containing the exported metadata model
    #   assessment.
    #   @return [String]
    #
    # @!attribute [rw] object_url
    #   The URL for the object containing the exported metadata model
    #   assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ExportMetadataModelAssessmentResultEntry AWS API Documentation
    #
    class ExportMetadataModelAssessmentResultEntry < Struct.new(
      :s3_object_key,
      :object_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a metadata model assessment exported to
    # SQL.
    #
    # @!attribute [rw] s3_object_key
    #   The Amazon S3 object key for the object containing the exported
    #   metadata model assessment.
    #   @return [String]
    #
    # @!attribute [rw] object_url
    #   The URL for the object containing the exported metadata model
    #   assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ExportSqlDetails AWS API Documentation
    #
    class ExportSqlDetails < Struct.new(
      :s3_object_key,
      :object_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # A dependency threw an exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/FailedDependencyFault AWS API Documentation
    #
    class FailedDependencyFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies the name and value of a filter object. This filter is used
    # to limit the number and type of DMS objects that are returned for a
    # particular `Describe*` call or similar operation. Filters are used as
    # an optional parameter for certain API operations.
    #
    # @!attribute [rw] name
    #   The name of the filter as specified for a `Describe*` or similar
    #   operation.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The filter value, which can specify one or more values used to
    #   narrow the returned results.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Filter AWS API Documentation
    #
    class Filter < Struct.new(
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a large-scale assessment (LSA) analysis run by a Fleet
    # Advisor collector.
    #
    # @!attribute [rw] lsa_analysis_id
    #   The ID of an LSA analysis run by a Fleet Advisor collector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of an LSA analysis run by a Fleet Advisor collector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/FleetAdvisorLsaAnalysisResponse AWS API Documentation
    #
    class FleetAdvisorLsaAnalysisResponse < Struct.new(
      :lsa_analysis_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a schema object in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] schema_id
    #   The ID of a schema object in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] object_type
    #   The type of the schema object, as reported by the database engine.
    #   Examples include the following:
    #
    #   * `function`
    #
    #   * `trigger`
    #
    #   * `SYSTEM_TABLE`
    #
    #   * `QUEUE`
    #   @return [String]
    #
    # @!attribute [rw] number_of_objects
    #   The number of objects in a schema object in a Fleet Advisor
    #   collector inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] code_line_count
    #   The number of lines of code in a schema object in a Fleet Advisor
    #   collector inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size
    #   The size level of the code in a schema object in a Fleet Advisor
    #   collector inventory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/FleetAdvisorSchemaObjectResponse AWS API Documentation
    #
    class FleetAdvisorSchemaObjectResponse < Struct.new(
      :schema_id,
      :object_type,
      :number_of_objects,
      :code_line_count,
      :code_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings in JSON format for the source GCP MySQL endpoint.
    #
    # @!attribute [rw] after_connect_script
    #   Specifies a script to run immediately after DMS connects to the
    #   endpoint. The migration task continues running regardless if the SQL
    #   statement succeeds or fails.
    #
    #   For this parameter, provide the code of the script itself, not the
    #   name of a file containing the script.
    #   @return [String]
    #
    # @!attribute [rw] clean_source_metadata_on_mismatch
    #   Cleans and recreates table metadata information on the replication
    #   instance when a mismatch occurs. For example, in a situation where
    #   running an alter DDL on the table could result in different
    #   information about the table cached in the replication instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint. For a MySQL source or target
    #   endpoint, don't explicitly specify the database using the
    #   `DatabaseName` request parameter on either the `CreateEndpoint` or
    #   `ModifyEndpoint` API call. Specifying `DatabaseName` when you create
    #   or modify a MySQL endpoint replicates all the task tables to this
    #   single database. For MySQL endpoints, you specify the database only
    #   when you specify the schema in the table-mapping rules of the DMS
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] events_poll_interval
    #   Specifies how often to check the binary log for new changes/events
    #   when the database is idle. The default is five seconds.
    #
    #   Example: `eventsPollInterval=5;`
    #
    #   In the example, DMS checks for changes in the binary logs every five
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] target_db_type
    #   Specifies where to migrate source tables on the target, either to a
    #   single database or multiple databases.
    #
    #   Example: `targetDbType=MULTIPLE_DATABASES`
    #   @return [String]
    #
    # @!attribute [rw] max_file_size
    #   Specifies the maximum size (in KB) of any .csv file used to transfer
    #   data to a MySQL-compatible database.
    #
    #   Example: `maxFileSize=512`
    #   @return [Integer]
    #
    # @!attribute [rw] parallel_load_threads
    #   Improves performance when loading data into the MySQL-compatible
    #   target database. Specifies how many threads to use to load the data
    #   into the MySQL-compatible target database. Setting a large number of
    #   threads can have an adverse effect on database performance, because
    #   a separate connection is required for each thread. The default is
    #   one.
    #
    #   Example: `parallelLoadThreads=1`
    #   @return [Integer]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The MySQL host name.
    #   @return [String]
    #
    # @!attribute [rw] server_timezone
    #   Specifies the time zone for the source MySQL database.
    #
    #   Example: `serverTimezone=US/Pacific;`
    #
    #   Note: Do not enclose time zones in single quotes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret.` The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   MySQL endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the Database Migration Service
    #   User Guide.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the MySQL endpoint connection
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/GcpMySQLSettings AWS API Documentation
    #
    class GcpMySQLSettings < Struct.new(
      :after_connect_script,
      :clean_source_metadata_on_mismatch,
      :database_name,
      :events_poll_interval,
      :target_db_type,
      :max_file_size,
      :parallel_load_threads,
      :password,
      :port,
      :server_name,
      :server_timezone,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   The JSON string representing the source selection rules for
    #   conversion. Selection rules must contain only supported metadata
    #   model types. For more information, see Selection Rules in the DMS
    #   User Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/GetTargetSelectionRulesMessage AWS API Documentation
    #
    class GetTargetSelectionRulesMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] target_selection_rules
    #   The JSON string representing the counterpart selection rules in the
    #   target.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/GetTargetSelectionRulesResponse AWS API Documentation
    #
    class GetTargetSelectionRulesResponse < Struct.new(
      :target_selection_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an IBM Db2 LUW endpoint.
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port. The default value is 50000.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] set_data_capture_changes
    #   Enables ongoing replication (CDC) as a BOOLEAN value. The default is
    #   true.
    #   @return [Boolean]
    #
    # @!attribute [rw] current_lsn
    #   For ongoing replication (CDC), use CurrentLSN to specify a log
    #   sequence number (LSN) where you want the replication to start.
    #   @return [String]
    #
    # @!attribute [rw] max_k_bytes_per_read
    #   Maximum number of bytes per read, as a NUMBER value. The default is
    #   64 KB.
    #   @return [Integer]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   Db2 LUW endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the Db2 LUW endpoint connection
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] load_timeout
    #   The amount of time (in milliseconds) before DMS times out operations
    #   performed by DMS on the Db2 target. The default value is 1200 (20
    #   minutes).
    #   @return [Integer]
    #
    # @!attribute [rw] write_buffer_size
    #   The size (in KB) of the in-memory file write buffer used when
    #   generating .csv files on the local disk on the DMS replication
    #   instance. The default value is 1024 (1 MB).
    #   @return [Integer]
    #
    # @!attribute [rw] max_file_size
    #   Specifies the maximum size (in KB) of .csv files used to transfer
    #   data to Db2 LUW.
    #   @return [Integer]
    #
    # @!attribute [rw] keep_csv_files
    #   If true, DMS saves any .csv files to the Db2 LUW target that were
    #   used to replicate data. DMS uses these files for analysis and
    #   troubleshooting.
    #
    #   The default value is false.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/IBMDb2Settings AWS API Documentation
    #
    class IBMDb2Settings < Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :set_data_capture_changes,
      :current_lsn,
      :max_k_bytes_per_read,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :load_timeout,
      :write_buffer_size,
      :max_file_size,
      :keep_csv_files)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information about an IBM DB2 LUW data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the DB2 LUW server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the DB2 LUW data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the DB2 LUW data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the DB2 LUW data provider. The
    #   default value is `none`. Valid Values: `none` and `verify-ca`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/IbmDb2LuwDataProviderSettings AWS API Documentation
    #
    class IbmDb2LuwDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about an IBM DB2 for z/OS data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the DB2 for z/OS server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the DB2 for z/OS data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the DB2 for z/OS data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the DB2 for z/OS data provider. The
    #   default value is `none`. Valid Values: `none` and `verify-ca`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/IbmDb2zOsDataProviderSettings AWS API Documentation
    #
    class IbmDb2zOsDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] certificate_identifier
    #   A customer-assigned name for the certificate. Identifiers must begin
    #   with a letter and must contain only ASCII letters, digits, and
    #   hyphens. They can't end with a hyphen or contain two consecutive
    #   hyphens.
    #   @return [String]
    #
    # @!attribute [rw] certificate_pem
    #   The contents of a `.pem` file, which contains an X.509 certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_wallet
    #   The location of an imported Oracle Wallet certificate for use with
    #   SSL. Provide the name of a `.sso` file using the `fileb://` prefix.
    #   You can't provide the certificate inline.
    #
    #   Example: `filebase64("${path.root}/rds-ca-2019-root.sso")`
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags associated with the certificate.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   An KMS key identifier that is used to encrypt the certificate.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ImportCertificateMessage AWS API Documentation
    #
    class ImportCertificateMessage < Struct.new(
      :certificate_identifier,
      :certificate_pem,
      :certificate_wallet,
      :tags,
      :kms_key_id)
      SENSITIVE = [:certificate_pem]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an instance profile.
    #
    # @!attribute [rw] instance_profile_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   instance profile.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the instance profile runs.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that is used to
    #   encrypt the connection parameters for the instance profile.
    #
    #   If you don't specify a value for the `KmsKeyArn` parameter, then
    #   DMS uses an Amazon Web Services owned encryption key to encrypt your
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the instance profile. A
    #   value of `true` represents an instance profile with a public IP
    #   address. A value of `false` represents an instance profile with a
    #   private IP address. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_type
    #   Specifies the network type for the instance profile. A value of
    #   `IPV4` represents an instance profile with IPv4 network type and
    #   only supports IPv4 addressing. A value of `IPV6` represents an
    #   instance profile with IPv6 network type and only supports IPv6
    #   addressing. A value of `DUAL` represents an instance profile with
    #   dual network type that supports IPv4 and IPv6 addressing.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The user-friendly name for the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the instance profile. Descriptions can have up to
    #   31 characters. A description can contain only ASCII letters, digits,
    #   and hyphens ('-'). Also, it can't end with a hyphen or contain
    #   two consecutive hyphens, and can only begin with a letter.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_creation_time
    #   The time the instance profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] subnet_group_identifier
    #   The identifier of the subnet group that is associated with the
    #   instance profile.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   The VPC security groups that are used with the instance profile. The
    #   VPC security group must work with the VPC containing the instance
    #   profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InstanceProfile AWS API Documentation
    #
    class InstanceProfile < Struct.new(
      :instance_profile_arn,
      :availability_zone,
      :kms_key_arn,
      :publicly_accessible,
      :network_type,
      :instance_profile_name,
      :description,
      :instance_profile_creation_time,
      :subnet_group_identifier,
      :vpc_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # There are not enough resources allocated to the database migration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InsufficientResourceCapacityFault AWS API Documentation
    #
    class InsufficientResourceCapacityFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The certificate was not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InvalidCertificateFault AWS API Documentation
    #
    class InvalidCertificateFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action or operation requested isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InvalidOperationFault AWS API Documentation
    #
    class InvalidOperationFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource is in a state that prevents it from being used for
    # database migration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InvalidResourceStateFault AWS API Documentation
    #
    class InvalidResourceStateFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The subnet provided isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InvalidSubnet AWS API Documentation
    #
    class InvalidSubnet < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] number_of_databases
    #   The number of databases in the Fleet Advisor collector inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_schemas
    #   The number of schemas in the Fleet Advisor collector inventory.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/InventoryData AWS API Documentation
    #
    class InventoryData < Struct.new(
      :number_of_databases,
      :number_of_schemas)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ciphertext references a key that doesn't exist or that the DMS
    # account doesn't have access to.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSAccessDeniedFault AWS API Documentation
    #
    class KMSAccessDeniedFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified KMS key isn't enabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSDisabledFault AWS API Documentation
    #
    class KMSDisabledFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Key Management Service (KMS) error is preventing access to KMS.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSFault AWS API Documentation
    #
    class KMSFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The state of the specified KMS resource isn't valid for this request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSInvalidStateFault AWS API Documentation
    #
    class KMSInvalidStateFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # DMS cannot access the KMS key.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSKeyNotAccessibleFault AWS API Documentation
    #
    class KMSKeyNotAccessibleFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified KMS entity or resource can't be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSNotFoundFault AWS API Documentation
    #
    class KMSNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request triggered KMS request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KMSThrottlingFault AWS API Documentation
    #
    class KMSThrottlingFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes an Apache Kafka endpoint. This
    # information includes the output format of records applied to the
    # endpoint and details of transaction and control table data
    # information.
    #
    # @!attribute [rw] broker
    #   A comma-separated list of one or more broker locations in your Kafka
    #   cluster that host your Kafka instance. Specify each broker location
    #   in the form ` broker-hostname-or-ip:port `. For example,
    #   `"ec2-12-345-678-901.compute-1.amazonaws.com:2345"`. For more
    #   information and examples of specifying a list of broker locations,
    #   see [Using Apache Kafka as a target for Database Migration
    #   Service][1] in the *Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The topic to which you migrate the data. If you don't specify a
    #   topic, DMS specifies `"kafka-default-topic"` as the migration topic.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   The output format for the records created on the endpoint. The
    #   message format is `JSON` (default) or `JSON_UNFORMATTED` (a single
    #   line with no tab).
    #   @return [String]
    #
    # @!attribute [rw] include_transaction_details
    #   Provides detailed transaction information from the source database.
    #   This information includes a commit timestamp, a log position, and
    #   values for `transaction_id`, previous `transaction_id`, and
    #   `transaction_record_id` (the record offset within a transaction).
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_partition_value
    #   Shows the partition value within the Kafka message output unless the
    #   partition type is `schema-table-type`. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] partition_include_schema_table
    #   Prefixes schema and table names to partition values, when the
    #   partition type is `primary-key-type`. Doing this increases data
    #   distribution among Kafka partitions. For example, suppose that a
    #   SysBench schema has thousands of tables and each table has only
    #   limited range for a primary key. In this case, the same primary key
    #   is sent from thousands of tables to the same partition, which causes
    #   throttling. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_table_alter_operations
    #   Includes any data definition language (DDL) operations that change
    #   the table in the control data, such as `rename-table`, `drop-table`,
    #   `add-column`, `drop-column`, and `rename-column`. The default is
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_control_details
    #   Shows detailed control information for table definition, column
    #   definition, and table and column changes in the Kafka message
    #   output. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] message_max_bytes
    #   The maximum size in bytes for records created on the endpoint The
    #   default is 1,000,000.
    #   @return [Integer]
    #
    # @!attribute [rw] include_null_and_empty
    #   Include NULL and empty columns for records migrated to the endpoint.
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] security_protocol
    #   Set secure connection to a Kafka target endpoint using Transport
    #   Layer Security (TLS). Options include `ssl-encryption`,
    #   `ssl-authentication`, and `sasl-ssl`. `sasl-ssl` requires
    #   `SaslUsername` and `SaslPassword`.
    #   @return [String]
    #
    # @!attribute [rw] ssl_client_certificate_arn
    #   The Amazon Resource Name (ARN) of the client certificate used to
    #   securely connect to a Kafka target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ssl_client_key_arn
    #   The Amazon Resource Name (ARN) for the client private key used to
    #   securely connect to a Kafka target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ssl_client_key_password
    #   The password for the client private key used to securely connect to
    #   a Kafka target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ssl_ca_certificate_arn
    #   The Amazon Resource Name (ARN) for the private certificate authority
    #   (CA) cert that DMS uses to securely connect to your Kafka target
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] sasl_username
    #   The secure user name you created when you first set up your MSK
    #   cluster to validate a client identity and make an encrypted
    #   connection between server and client using SASL-SSL authentication.
    #   @return [String]
    #
    # @!attribute [rw] sasl_password
    #   The secure password you created when you first set up your MSK
    #   cluster to validate a client identity and make an encrypted
    #   connection between server and client using SASL-SSL authentication.
    #   @return [String]
    #
    # @!attribute [rw] no_hex_prefix
    #   Set this optional parameter to `true` to avoid adding a '0x'
    #   prefix to raw data in hexadecimal format. For example, by default,
    #   DMS adds a '0x' prefix to the LOB column type in hexadecimal
    #   format moving from an Oracle source to a Kafka target. Use the
    #   `NoHexPrefix` endpoint setting to enable migration of RAW data type
    #   columns without adding the '0x' prefix.
    #   @return [Boolean]
    #
    # @!attribute [rw] sasl_mechanism
    #   For SASL/SSL authentication, DMS supports the `SCRAM-SHA-512`
    #   mechanism by default. DMS versions 3.5.0 and later also support the
    #   `PLAIN` mechanism. To use the `PLAIN` mechanism, set this parameter
    #   to `PLAIN.`
    #   @return [String]
    #
    # @!attribute [rw] ssl_endpoint_identification_algorithm
    #   Sets hostname verification for the certificate. This setting is
    #   supported in DMS version 3.5.1 and later.
    #   @return [String]
    #
    # @!attribute [rw] use_large_integer_value
    #   Specifies using the large integer value with Kafka.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KafkaSettings AWS API Documentation
    #
    class KafkaSettings < Struct.new(
      :broker,
      :topic,
      :message_format,
      :include_transaction_details,
      :include_partition_value,
      :partition_include_schema_table,
      :include_table_alter_operations,
      :include_control_details,
      :message_max_bytes,
      :include_null_and_empty,
      :security_protocol,
      :ssl_client_certificate_arn,
      :ssl_client_key_arn,
      :ssl_client_key_password,
      :ssl_ca_certificate_arn,
      :sasl_username,
      :sasl_password,
      :no_hex_prefix,
      :sasl_mechanism,
      :ssl_endpoint_identification_algorithm,
      :use_large_integer_value)
      SENSITIVE = [:ssl_client_key_password, :sasl_password]
      include Aws::Structure
    end

    # Specifies the settings required for kerberos authentication when
    # creating the replication instance.
    #
    # @!attribute [rw] key_cache_secret_id
    #   Specifies the ID of the secret that stores the key cache file
    #   required for kerberos authentication.
    #   @return [String]
    #
    # @!attribute [rw] key_cache_secret_iam_arn
    #   Specifies the Amazon Resource Name (ARN) of the IAM role that grants
    #   Amazon Web Services DMS access to the secret containing key cache
    #   file for the kerberos authentication.
    #   @return [String]
    #
    # @!attribute [rw] krb_5_file_contents
    #   Specifies the contents of krb5 configuration file required for
    #   kerberos authentication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KerberosAuthenticationSettings AWS API Documentation
    #
    class KerberosAuthenticationSettings < Struct.new(
      :key_cache_secret_id,
      :key_cache_secret_iam_arn,
      :krb_5_file_contents)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes an Amazon Kinesis Data Stream
    # endpoint. This information includes the output format of records
    # applied to the endpoint and details of transaction and control table
    # data information.
    #
    # @!attribute [rw] stream_arn
    #   The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] message_format
    #   The output format for the records created on the endpoint. The
    #   message format is `JSON` (default) or `JSON_UNFORMATTED` (a single
    #   line with no tab).
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role that DMS uses to
    #   write to the Kinesis data stream. The role must allow the
    #   `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] include_transaction_details
    #   Provides detailed transaction information from the source database.
    #   This information includes a commit timestamp, a log position, and
    #   values for `transaction_id`, previous `transaction_id`, and
    #   `transaction_record_id` (the record offset within a transaction).
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_partition_value
    #   Shows the partition value within the Kinesis message output, unless
    #   the partition type is `schema-table-type`. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] partition_include_schema_table
    #   Prefixes schema and table names to partition values, when the
    #   partition type is `primary-key-type`. Doing this increases data
    #   distribution among Kinesis shards. For example, suppose that a
    #   SysBench schema has thousands of tables and each table has only
    #   limited range for a primary key. In this case, the same primary key
    #   is sent from thousands of tables to the same shard, which causes
    #   throttling. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_table_alter_operations
    #   Includes any data definition language (DDL) operations that change
    #   the table in the control data, such as `rename-table`, `drop-table`,
    #   `add-column`, `drop-column`, and `rename-column`. The default is
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_control_details
    #   Shows detailed control information for table definition, column
    #   definition, and table and column changes in the Kinesis message
    #   output. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_null_and_empty
    #   Include NULL and empty columns for records migrated to the endpoint.
    #   The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] no_hex_prefix
    #   Set this optional parameter to `true` to avoid adding a '0x'
    #   prefix to raw data in hexadecimal format. For example, by default,
    #   DMS adds a '0x' prefix to the LOB column type in hexadecimal
    #   format moving from an Oracle source to an Amazon Kinesis target. Use
    #   the `NoHexPrefix` endpoint setting to enable migration of RAW data
    #   type columns without adding the '0x' prefix.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_large_integer_value
    #   Specifies using the large integer value with Kinesis.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/KinesisSettings AWS API Documentation
    #
    class KinesisSettings < Struct.new(
      :stream_arn,
      :message_format,
      :service_access_role_arn,
      :include_transaction_details,
      :include_partition_value,
      :partition_include_schema_table,
      :include_table_alter_operations,
      :include_control_details,
      :include_null_and_empty,
      :no_hex_prefix,
      :use_large_integer_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a Lakehouse endpoint. This endpoint
    # type is used for zero-ETL integrations with Lakehouse data warehouses.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the Lakehouse resource that serves
    #   as the target for this endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/LakehouseSettings AWS API Documentation
    #
    class LakehouseSettings < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the limitations of target Amazon Web
    # Services engines.
    #
    # Your source database might include features that the target Amazon Web
    # Services engine doesn't support. Fleet Advisor lists these features
    # as limitations. You should consider these limitations during database
    # migration. For each limitation, Fleet Advisor recommends an action
    # that you can take to address or avoid this limitation.
    #
    # @!attribute [rw] database_id
    #   The identifier of the source database.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The name of the target engine that Fleet Advisor should use in the
    #   target engine recommendation. Valid values include
    #   `"rds-aurora-mysql"`, `"rds-aurora-postgresql"`, `"rds-mysql"`,
    #   `"rds-oracle"`, `"rds-sql-server"`, and `"rds-postgresql"`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the limitation. Describes unsupported database features,
    #   migration action items, and other limitations.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the limitation. Provides additional information
    #   about the limitation, and includes recommended actions that you can
    #   take to address or avoid this limitation.
    #   @return [String]
    #
    # @!attribute [rw] impact
    #   The impact of the limitation. You can use this parameter to
    #   prioritize limitations that you want to address. Valid values
    #   include `"Blocker"`, `"High"`, `"Medium"`, and `"Low"`.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the limitation, such as action required, upgrade
    #   required, and limited feature.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Limitation AWS API Documentation
    #
    class Limitation < Struct.new(
      :database_id,
      :engine_name,
      :name,
      :description,
      :impact,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   DMS resource to list tags for. This returns a list of keys (names of
    #   tags) created for the resource and their associated tag values.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn_list
    #   List of ARNs that identify multiple DMS resources that you want to
    #   list tags for. This returns a list of keys (tag names) and their
    #   associated tag values. It also returns each tag's associated
    #   `ResourceArn` value, which is the ARN of the resource for which each
    #   listed tag is created.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ListTagsForResourceMessage AWS API Documentation
    #
    class ListTagsForResourceMessage < Struct.new(
      :resource_arn,
      :resource_arn_list)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a MariaDB data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the MariaDB server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the MariaDB data provider
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the MariaDB data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MariaDbDataProviderSettings AWS API Documentation
    #
    class MariaDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of metadata model in JSON format. This object is a
    # Union. Only one member of this object can be specified or returned.
    #
    # @note MetadataModelProperties is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] statement_properties
    #   The properties of the statement.
    #   @return [Types::StatementProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MetadataModelProperties AWS API Documentation
    #
    class MetadataModelProperties < Struct.new(
      :statement_properties,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class StatementProperties < MetadataModelProperties; end
      class Unknown < MetadataModelProperties; end
    end

    # A reference to a metadata model, including its name and selection
    # rules for location identification.
    #
    # @!attribute [rw] metadata_model_name
    #   The name of the metadata model.
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   The JSON string representing metadata model location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MetadataModelReference AWS API Documentation
    #
    class MetadataModelReference < Struct.new(
      :metadata_model_name,
      :selection_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a Microsoft SQL Server endpoint.
    #
    # @!attribute [rw] port
    #   Endpoint TCP port.
    #   @return [Integer]
    #
    # @!attribute [rw] bcp_packet_size
    #   The maximum size of the packets (in bytes) used to transfer data
    #   using BCP.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] control_tables_file_group
    #   Specifies a file group for the DMS internal tables. When the
    #   replication task starts, all the internal DMS control tables
    #   (awsdms\_ apply\_exception, awsdms\_apply, awsdms\_changes) are
    #   created for the specified file group.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] query_single_always_on_node
    #   Cleans and recreates table metadata information on the replication
    #   instance when a mismatch occurs. An example is a situation where
    #   running an alter DDL statement on a table might result in different
    #   information about the table cached in the replication instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] read_backup_only
    #   When this attribute is set to `Y`, DMS only reads changes from
    #   transaction log backups and doesn't read from the active
    #   transaction log file during ongoing replication. Setting this
    #   parameter to `Y` enables you to control active transaction log file
    #   growth during full load and ongoing replication tasks. However, it
    #   can add some source latency to ongoing replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] safeguard_policy
    #   Use this attribute to minimize the need to access the backup log and
    #   enable DMS to prevent truncation using one of the following two
    #   methods.
    #
    #   *Start transactions in the database:* This is the default method.
    #   When this method is used, DMS prevents TLOG truncation by mimicking
    #   a transaction in the database. As long as such a transaction is
    #   open, changes that appear after the transaction started aren't
    #   truncated. If you need Microsoft Replication to be enabled in your
    #   database, then you must choose this method.
    #
    #   *Exclusively use sp\_repldone within a single task*: When this
    #   method is used, DMS reads the changes and then uses sp\_repldone to
    #   mark the TLOG transactions as ready for truncation. Although this
    #   method doesn't involve any transactional activities, it can only be
    #   used when Microsoft Replication isn't running. Also, when using
    #   this method, only one DMS task can access the database at any given
    #   time. Therefore, if you need to run parallel DMS tasks against the
    #   same database, use the default method.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint. For an Amazon RDS SQL
    #   Server instance, this is the output of [DescribeDBInstances][1], in
    #   the ` Endpoint.Address` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] use_bcp_full_load
    #   Use this to attribute to transfer data for full-load operations
    #   using BCP. When the target table contains an identity column that
    #   does not exist in the source table, you must disable the use BCP for
    #   loading table option.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_third_party_backup_device
    #   When this attribute is set to `Y`, DMS processes third-party
    #   transaction log backups if they are created in native format.
    #   @return [Boolean]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   SQL Server endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the SQL Server endpoint
    #   connection details.
    #   @return [String]
    #
    # @!attribute [rw] trim_space_in_char
    #   Use the `TrimSpaceInChar` source endpoint setting to right-trim data
    #   on CHAR and NCHAR data types during migration. Setting
    #   `TrimSpaceInChar` does not left-trim data. The default value is
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tlog_access_mode
    #   Indicates the mode used to fetch CDC data.
    #   @return [String]
    #
    # @!attribute [rw] force_lob_lookup
    #   Forces LOB lookup on inline LOB.
    #   @return [Boolean]
    #
    # @!attribute [rw] authentication_method
    #   Specifies the authentication method to be used with Microsoft SQL
    #   Server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MicrosoftSQLServerSettings AWS API Documentation
    #
    class MicrosoftSQLServerSettings < Struct.new(
      :port,
      :bcp_packet_size,
      :database_name,
      :control_tables_file_group,
      :password,
      :query_single_always_on_node,
      :read_backup_only,
      :safeguard_policy,
      :server_name,
      :username,
      :use_bcp_full_load,
      :use_third_party_backup_device,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :trim_space_in_char,
      :tlog_access_mode,
      :force_lob_lookup,
      :authentication_method)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information that defines a Microsoft SQL Server data
    # provider.
    #
    # @!attribute [rw] server_name
    #   The name of the Microsoft SQL Server server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the Microsoft SQL Server data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the Microsoft SQL Server data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the Microsoft SQL Server data
    #   provider. The default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MicrosoftSqlServerDataProviderSettings AWS API Documentation
    #
    class MicrosoftSqlServerDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a migration project.
    #
    # @!attribute [rw] migration_project_name
    #   The name of the migration project.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_arn
    #   The ARN string that uniquely identifies the migration project.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_creation_time
    #   The time when the migration project was created.
    #   @return [Time]
    #
    # @!attribute [rw] source_data_provider_descriptors
    #   Information about the source data provider, including the name or
    #   ARN, and Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptor>]
    #
    # @!attribute [rw] target_data_provider_descriptors
    #   Information about the target data provider, including the name or
    #   ARN, and Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptor>]
    #
    # @!attribute [rw] instance_profile_arn
    #   The Amazon Resource Name (ARN) of the instance profile for your
    #   migration project.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the associated instance profile.
    #   @return [String]
    #
    # @!attribute [rw] transformation_rules
    #   The settings in JSON format for migration rules. Migration rules
    #   make it possible for you to change the object names according to the
    #   rules that you specify. For example, you can change an object name
    #   to lowercase or uppercase, add or remove a prefix or suffix, or
    #   rename objects.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the migration project.
    #   @return [String]
    #
    # @!attribute [rw] schema_conversion_application_attributes
    #   The schema conversion application attributes, including the Amazon
    #   S3 bucket name and Amazon S3 role ARN.
    #   @return [Types::SCApplicationAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MigrationProject AWS API Documentation
    #
    class MigrationProject < Struct.new(
      :migration_project_name,
      :migration_project_arn,
      :migration_project_creation_time,
      :source_data_provider_descriptors,
      :target_data_provider_descriptors,
      :instance_profile_arn,
      :instance_profile_name,
      :transformation_rules,
      :description,
      :schema_conversion_application_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] conversion_configuration
    #   The new conversion configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyConversionConfigurationMessage AWS API Documentation
    #
    class ModifyConversionConfigurationMessage < Struct.new(
      :migration_project_identifier,
      :conversion_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The name or Amazon Resource Name (ARN) of the modified
    #   configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyConversionConfigurationResponse AWS API Documentation
    #
    class ModifyConversionConfigurationResponse < Struct.new(
      :migration_project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration_identifier
    #   The identifier (name or ARN) of the data migration to modify.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_name
    #   The new name for the data migration.
    #   @return [String]
    #
    # @!attribute [rw] enable_cloudwatch_logs
    #   Whether to enable Cloudwatch logs for the data migration.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_access_role_arn
    #   The new service access role ARN for the data migration.
    #   @return [String]
    #
    # @!attribute [rw] data_migration_type
    #   The new migration type for the data migration.
    #   @return [String]
    #
    # @!attribute [rw] source_data_settings
    #   The new information about the source data provider for the data
    #   migration.
    #   @return [Array<Types::SourceDataSetting>]
    #
    # @!attribute [rw] target_data_settings
    #   The new information about the target data provider for the data
    #   migration.
    #   @return [Array<Types::TargetDataSetting>]
    #
    # @!attribute [rw] number_of_jobs
    #   The number of parallel jobs that trigger parallel threads to unload
    #   the tables from the source, and then load them to the target.
    #   @return [Integer]
    #
    # @!attribute [rw] selection_rules
    #   A JSON-formatted string that defines what objects to include and
    #   exclude from the migration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyDataMigrationMessage AWS API Documentation
    #
    class ModifyDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      :data_migration_name,
      :enable_cloudwatch_logs,
      :service_access_role_arn,
      :data_migration_type,
      :source_data_settings,
      :target_data_settings,
      :number_of_jobs,
      :selection_rules)
      SENSITIVE = [:selection_rules]
      include Aws::Structure
    end

    # @!attribute [rw] data_migration
    #   Information about the modified data migration.
    #   @return [Types::DataMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyDataMigrationResponse AWS API Documentation
    #
    class ModifyDataMigrationResponse < Struct.new(
      :data_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider_identifier
    #   The identifier of the data provider. Identifiers must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen, or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] data_provider_name
    #   The name of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the data provider.
    #   @return [String]
    #
    # @!attribute [rw] engine
    #   The type of database engine for the data provider. Valid values
    #   include `"aurora"`, `"aurora-postgresql"`, `"mysql"`, `"oracle"`,
    #   `"postgres"`, `"sqlserver"`, `redshift`, `mariadb`, `mongodb`,
    #   `db2`, `db2-zos`, `docdb`, and `sybase`. A value of `"aurora"`
    #   represents Amazon Aurora MySQL-Compatible Edition.
    #   @return [String]
    #
    # @!attribute [rw] virtual
    #   Indicates whether the data provider is virtual.
    #   @return [Boolean]
    #
    # @!attribute [rw] exact_settings
    #   If this attribute is Y, the current call to `ModifyDataProvider`
    #   replaces all existing data provider settings with the exact settings
    #   that you specify in this call. If this attribute is N, the current
    #   call to `ModifyDataProvider` does two things:
    #
    #   * It replaces any data provider settings that already exist with new
    #     values, for settings with the same names.
    #
    #   * It creates new data provider settings that you specify in the
    #     call, for settings with different names.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   The settings in JSON format for a data provider.
    #   @return [Types::DataProviderSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyDataProviderMessage AWS API Documentation
    #
    class ModifyDataProviderMessage < Struct.new(
      :data_provider_identifier,
      :data_provider_name,
      :description,
      :engine,
      :virtual,
      :exact_settings,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_provider
    #   The data provider that was modified.
    #   @return [Types::DataProvider]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyDataProviderResponse AWS API Documentation
    #
    class ModifyDataProviderResponse < Struct.new(
      :data_provider)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_identifier
    #   The database endpoint identifier. Identifiers must begin with a
    #   letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The database engine name. Valid values, depending on the
    #   EndpointType, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`,
    #   `"s3"`, `"db2"`, `"db2-zos"`, `"azuredb"`, `"sybase"`, `"dynamodb"`,
    #   `"mongodb"`, `"kinesis"`, `"kafka"`, `"elasticsearch"`,
    #   `"documentdb"`, `"sqlserver"`, `"neptune"`, and `"babelfish"`.
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
    #   The name of the endpoint database. For a MySQL source or target
    #   endpoint, do not specify DatabaseName.
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
    #   The SSL mode used to connect to the endpoint. The default value is
    #   `none`.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) for the IAM role you want to use to
    #   modify the endpoint. The role must allow the `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   information about other available settings, see [Using Object
    #   Mapping to Migrate Data to DynamoDB][1] in the *Database Migration
    #   Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for DMS][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring
    #   @return [Types::S3Settings]
    #
    # @!attribute [rw] dms_transfer_settings
    #   The settings in JSON format for the DMS transfer type of source
    #   endpoint.
    #
    #   Attributes include the following:
    #
    #   * serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the
    #     service access IAM role. The role must allow the `iam:PassRole`
    #     action.
    #
    #   * BucketName - The name of the S3 bucket to use.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string ,BucketName=string`
    #
    #   JSON syntax for these settings is as follows: `{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string"} `
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the configuration
    #   properties section in [Endpoint configuration settings when using
    #   MongoDB as a source for Database Migration Service][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration
    #   @return [Types::MongoDbSettings]
    #
    # @!attribute [rw] kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using object mapping to migrate data to a Kinesis data stream][1]
    #   in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping
    #   @return [Types::KinesisSettings]
    #
    # @!attribute [rw] kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For
    #   more information about the available settings, see [Using object
    #   mapping to migrate data to a Kafka topic][1] in the *Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping
    #   @return [Types::KafkaSettings]
    #
    # @!attribute [rw] elasticsearch_settings
    #   Settings in JSON format for the target OpenSearch endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using OpenSearch as a Target for DMS][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #   @return [Types::ElasticsearchSettings]
    #
    # @!attribute [rw] neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   graph-mapping rules using Gremlin and R2RML for Amazon Neptune as a
    #   target][1] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings
    #   @return [Types::NeptuneSettings]
    #
    # @!attribute [rw] redshift_settings
    #   Provides information that defines an Amazon Redshift endpoint.
    #   @return [Types::RedshiftSettings]
    #
    # @!attribute [rw] postgre_sql_settings
    #   Settings in JSON format for the source and target PostgreSQL
    #   endpoint. For information about other available settings, see [Extra
    #   connection attributes when using PostgreSQL as a source for DMS][1]
    #   and [ Extra connection attributes when using PostgreSQL as a target
    #   for DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib
    #   @return [Types::PostgreSQLSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using MySQL as a source for DMS][1] and
    #   [Extra connection attributes when using a MySQL-compatible database
    #   as a target for DMS][2] in the *Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib
    #   @return [Types::MySQLSettings]
    #
    # @!attribute [rw] oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using Oracle as a source for DMS][1] and
    #   [ Extra connection attributes when using Oracle as a target for
    #   DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib
    #   @return [Types::OracleSettings]
    #
    # @!attribute [rw] sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using SAP ASE as a source for DMS][1] and
    #   [Extra connection attributes when using SAP ASE as a target for
    #   DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib
    #   @return [Types::SybaseSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL
    #   Server endpoint. For information about other available settings, see
    #   [Extra connection attributes when using SQL Server as a source for
    #   DMS][1] and [ Extra connection attributes when using SQL Server as a
    #   target for DMS][2] in the *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib
    #   @return [Types::MicrosoftSQLServerSettings]
    #
    # @!attribute [rw] ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for DMS][1] in the
    #   *Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib
    #   @return [Types::IBMDb2Settings]
    #
    # @!attribute [rw] doc_db_settings
    #   Settings in JSON format for the source DocumentDB endpoint. For more
    #   information about the available settings, see the configuration
    #   properties section in [ Using DocumentDB as a Target for Database
    #   Migration Service ][1] in the *Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html
    #   @return [Types::DocDbSettings]
    #
    # @!attribute [rw] redis_settings
    #   Settings in JSON format for the Redis target endpoint.
    #   @return [Types::RedisSettings]
    #
    # @!attribute [rw] exact_settings
    #   If this attribute is Y, the current call to `ModifyEndpoint`
    #   replaces all existing endpoint settings with the exact settings that
    #   you specify in this call. If this attribute is N, the current call
    #   to `ModifyEndpoint` does two things:
    #
    #   * It replaces any endpoint settings that already exist with new
    #     values, for settings with the same names.
    #
    #   * It creates new endpoint settings that you specify in the call, for
    #     settings with different names.
    #
    #   For example, if you call `create-endpoint ... --endpoint-settings
    #   '{"a":1}' ...`, the endpoint has the following endpoint settings:
    #   `'{"a":1}'`. If you then call `modify-endpoint ...
    #   --endpoint-settings '{"b":2}' ...` for the same endpoint, the
    #   endpoint has the following settings: `'{"a":1,"b":2}'`.
    #
    #   However, suppose that you follow this with a call to
    #   `modify-endpoint ... --endpoint-settings '{"b":2}' --exact-settings
    #   ...` for that same endpoint again. Then the endpoint has the
    #   following settings: `'{"b":2}'`. All existing settings are replaced
    #   with the exact settings that you specify.
    #   @return [Boolean]
    #
    # @!attribute [rw] gcp_my_sql_settings
    #   Settings in JSON format for the source GCP MySQL endpoint.
    #   @return [Types::GcpMySQLSettings]
    #
    # @!attribute [rw] timestream_settings
    #   Settings in JSON format for the target Amazon Timestream endpoint.
    #   @return [Types::TimestreamSettings]
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
      :mongo_db_settings,
      :kinesis_settings,
      :kafka_settings,
      :elasticsearch_settings,
      :neptune_settings,
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :sybase_settings,
      :microsoft_sql_server_settings,
      :ibm_db_2_settings,
      :doc_db_settings,
      :redis_settings,
      :exact_settings,
      :gcp_my_sql_settings,
      :timestream_settings)
      SENSITIVE = [:password]
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscription_name
    #   The name of the DMS event notification subscription to be modified.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic created for
    #   event notification. The ARN is created by Amazon SNS when you create
    #   a topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of DMS resource that generates the events you want to
    #   subscribe to.
    #
    #   Valid values: replication-instance \| replication-task
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile_identifier
    #   The identifier of the instance profile. Identifiers must begin with
    #   a letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen, or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the instance profile runs.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key that is used to
    #   encrypt the connection parameters for the instance profile.
    #
    #   If you don't specify a value for the `KmsKeyArn` parameter, then
    #   DMS uses an Amazon Web Services owned encryption key to encrypt your
    #   resources.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   Specifies the accessibility options for the instance profile. A
    #   value of `true` represents an instance profile with a public IP
    #   address. A value of `false` represents an instance profile with a
    #   private IP address. The default value is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] network_type
    #   Specifies the network type for the instance profile. A value of
    #   `IPV4` represents an instance profile with IPv4 network type and
    #   only supports IPv4 addressing. A value of `IPV6` represents an
    #   instance profile with IPv6 network type and only supports IPv6
    #   addressing. A value of `DUAL` represents an instance profile with
    #   dual network type that supports IPv4 and IPv6 addressing.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   A user-friendly name for the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description for the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_identifier
    #   A subnet group to associate with the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] vpc_security_groups
    #   Specifies the VPC security groups to be used with the instance
    #   profile. The VPC security group must work with the VPC containing
    #   the instance profile.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyInstanceProfileMessage AWS API Documentation
    #
    class ModifyInstanceProfileMessage < Struct.new(
      :instance_profile_identifier,
      :availability_zone,
      :kms_key_arn,
      :publicly_accessible,
      :network_type,
      :instance_profile_name,
      :description,
      :subnet_group_identifier,
      :vpc_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_profile
    #   The instance profile that was modified.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyInstanceProfileResponse AWS API Documentation
    #
    class ModifyInstanceProfileResponse < Struct.new(
      :instance_profile)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The identifier of the migration project. Identifiers must begin with
    #   a letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen, or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_name
    #   A user-friendly name for the migration project.
    #   @return [String]
    #
    # @!attribute [rw] source_data_provider_descriptors
    #   Information about the source data provider, including the name, ARN,
    #   and Amazon Web Services Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    #
    # @!attribute [rw] target_data_provider_descriptors
    #   Information about the target data provider, including the name, ARN,
    #   and Amazon Web Services Secrets Manager parameters.
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    #
    # @!attribute [rw] instance_profile_identifier
    #   The name or Amazon Resource Name (ARN) for the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] transformation_rules
    #   The settings in JSON format for migration rules. Migration rules
    #   make it possible for you to change the object names according to the
    #   rules that you specify. For example, you can change an object name
    #   to lowercase or uppercase, add or remove a prefix or suffix, or
    #   rename objects.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A user-friendly description of the migration project.
    #   @return [String]
    #
    # @!attribute [rw] schema_conversion_application_attributes
    #   The schema conversion application attributes, including the Amazon
    #   S3 bucket name and Amazon S3 role ARN.
    #   @return [Types::SCApplicationAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyMigrationProjectMessage AWS API Documentation
    #
    class ModifyMigrationProjectMessage < Struct.new(
      :migration_project_identifier,
      :migration_project_name,
      :source_data_provider_descriptors,
      :target_data_provider_descriptors,
      :instance_profile_identifier,
      :transformation_rules,
      :description,
      :schema_conversion_application_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project
    #   The migration project that was modified.
    #   @return [Types::MigrationProject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyMigrationProjectResponse AWS API Documentation
    #
    class ModifyMigrationProjectResponse < Struct.new(
      :migration_project)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication to modify.
    #   @return [String]
    #
    # @!attribute [rw] replication_config_identifier
    #   The new replication config to apply to the replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   The type of replication.
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   Table mappings specified in the replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_settings
    #   The settings for the replication.
    #   @return [String]
    #
    # @!attribute [rw] supplemental_settings
    #   Additional settings for the replication.
    #   @return [String]
    #
    # @!attribute [rw] compute_config
    #   Configuration parameters for provisioning an DMS Serverless
    #   replication.
    #   @return [Types::ComputeConfig]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) of the source endpoint for this DMS
    #   serverless replication configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name (ARN) of the target endpoint for this DMS
    #   serverless replication configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationConfigMessage AWS API Documentation
    #
    class ModifyReplicationConfigMessage < Struct.new(
      :replication_config_arn,
      :replication_config_identifier,
      :replication_type,
      :table_mappings,
      :replication_settings,
      :supplemental_settings,
      :compute_config,
      :source_endpoint_arn,
      :target_endpoint_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config
    #   Information about the serverless replication config that was
    #   modified.
    #   @return [Types::ReplicationConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ModifyReplicationConfigResponse AWS API Documentation
    #
    class ModifyReplicationConfigResponse < Struct.new(
      :replication_config)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   The compute and memory capacity of the replication instance as
    #   defined for the specified replication instance class. For example to
    #   specify the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   DMS replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
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
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #
    #   When modifying a major engine version of an instance, also set
    #   `AllowMajorVersionUpgrade` to `true`.
    #   @return [String]
    #
    # @!attribute [rw] allow_major_version_upgrade
    #   Indicates that major version upgrades are allowed. Changing this
    #   parameter does not result in an outage, and the change is
    #   asynchronously applied as soon as possible.
    #
    #   This parameter must be set to `true` when specifying a value for the
    #   `EngineVersion` parameter that is a different major version than the
    #   replication instance's current version.
    #   @return [Boolean]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   A value that indicates that minor version upgrades are applied
    #   automatically to the replication instance during the maintenance
    #   window. Changing this parameter doesn't result in an outage, except
    #   in the case described following. The change is asynchronously
    #   applied as soon as possible.
    #
    #   An outage does result if these factors apply:
    #
    #   * This parameter is set to `true` during the maintenance window.
    #
    #   * A newer minor version is available.
    #
    #   * DMS has enabled automatic patching for the given engine version.
    #   @return [Boolean]
    #
    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier. This parameter is stored as a
    #   lowercase string.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The type of IP address protocol used by a replication instance, such
    #   as IPv4 only or Dual-stack that supports both IPv4 and IPv6
    #   addressing. IPv6 only is not yet supported.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_authentication_settings
    #   Specifies the settings required for kerberos authentication when
    #   modifying a replication instance.
    #   @return [Types::KerberosAuthenticationSettings]
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
      :replication_instance_identifier,
      :network_type,
      :kerberos_authentication_settings)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_subnet_group_identifier
    #   The name of the replication instance subnet group.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   A description for the replication instance subnet group.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_identifier
    #   The replication task identifier.
    #
    #   Constraints:
    #
    #   * Must contain 1-255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] migration_type
    #   The migration type. Valid values: `full-load` \| `cdc` \|
    #   `full-load-and-cdc`
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   When using the CLI or boto3, provide the path of the JSON file that
    #   contains the table mappings. Precede the path with `file://`. For
    #   example, `--table-mappings file://mappingfile.json`. When working
    #   with the DMS API, provide the JSON as the parameter value.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   JSON file that contains settings for the task, such as task metadata
    #   settings.
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
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated
    #   with the source endpoint. You can verify this by setting the
    #   `slotName` extra connection attribute to the name of this logical
    #   replication slot. For more information, see [Extra Connection
    #   Attributes When Using PostgreSQL as a Source for DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position
    #   “commit\_time:2018-02-09T12:12:12“
    #   @return [String]
    #
    # @!attribute [rw] task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
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
      :cdc_stop_position,
      :task_data)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a MongoDB data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the MongoDB server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the MongoDB data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the MongoDB data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the MongoDB data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The authentication type for the database connection. Valid values
    #   are PASSWORD or NO.
    #   @return [String]
    #
    # @!attribute [rw] auth_source
    #   The MongoDB database name. This setting isn't used when `AuthType`
    #   is set to `"no"`.
    #
    #   The default is `"admin"`.
    #   @return [String]
    #
    # @!attribute [rw] auth_mechanism
    #   The authentication method for connecting to the data provider. Valid
    #   values are DEFAULT, MONGODB\_CR, or SCRAM\_SHA\_1.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MongoDbDataProviderSettings AWS API Documentation
    #
    class MongoDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :auth_type,
      :auth_source,
      :auth_mechanism)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a MongoDB endpoint.
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
    #   The name of the server on the MongoDB source endpoint. For MongoDB
    #   Atlas, provide the server name for any of the servers in the
    #   replication set.
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
    #   When when set to `"no"`, user name and password parameters are not
    #   used and can be empty.
    #   @return [String]
    #
    # @!attribute [rw] auth_mechanism
    #   The authentication mechanism you use to access the MongoDB source
    #   endpoint.
    #
    #   For the default value, in MongoDB version 2.x, `"default"` is
    #   `"mongodb_cr"`. For MongoDB version 3.x or later, `"default"` is
    #   `"scram_sha_1"`. This setting isn't used when `AuthType` is set to
    #   `"no"`.
    #   @return [String]
    #
    # @!attribute [rw] nesting_level
    #   Specifies either document or table mode.
    #
    #   Default value is `"none"`. Specify `"none"` to use document mode.
    #   Specify `"one"` to use table mode.
    #   @return [String]
    #
    # @!attribute [rw] extract_doc_id
    #   Specifies the document ID. Use this setting when `NestingLevel` is
    #   set to `"none"`.
    #
    #   Default value is `"false"`.
    #   @return [String]
    #
    # @!attribute [rw] docs_to_investigate
    #   Indicates the number of documents to preview to determine the
    #   document organization. Use this setting when `NestingLevel` is set
    #   to `"one"`.
    #
    #   Must be a positive value greater than `0`. Default value is `1000`.
    #   @return [String]
    #
    # @!attribute [rw] auth_source
    #   The MongoDB database name. This setting isn't used when `AuthType`
    #   is set to `"no"`.
    #
    #   The default is `"admin"`.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key identifier that is used to encrypt the content on the
    #   replication instance. If you don't specify a value for the
    #   `KmsKeyId` parameter, then DMS uses your default encryption key. KMS
    #   creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   MongoDB endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the MongoDB endpoint connection
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] use_update_look_up
    #   If `true`, DMS retrieves the entire document from the MongoDB source
    #   during migration. This may cause a migration failure if the server
    #   response exceeds bandwidth limits. To fetch only updates and deletes
    #   during migration, set this parameter to `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] replicate_shard_collections
    #   If `true`, DMS replicates data to shard collections. DMS only uses
    #   this setting if the target endpoint is a DocumentDB elastic cluster.
    #
    #   When this setting is `true`, note the following:
    #
    #   * You must set `TargetTablePrepMode` to `nothing`.
    #
    #   * DMS automatically sets `useUpdateLookup` to `false`.
    #   @return [Boolean]
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
      :kms_key_id,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :use_update_look_up,
      :replicate_shard_collections)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the task that you want to move.
    #   @return [String]
    #
    # @!attribute [rw] target_replication_instance_arn
    #   The ARN of the replication instance where you want to move the task
    #   to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MoveReplicationTaskMessage AWS API Documentation
    #
    class MoveReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :target_replication_instance_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task
    #   The replication task that was moved.
    #   @return [Types::ReplicationTask]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MoveReplicationTaskResponse AWS API Documentation
    #
    class MoveReplicationTaskResponse < Struct.new(
      :replication_task)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a MySQL endpoint.
    #
    # @!attribute [rw] after_connect_script
    #   Specifies a script to run immediately after DMS connects to the
    #   endpoint. The migration task continues running regardless if the SQL
    #   statement succeeds or fails.
    #
    #   For this parameter, provide the code of the script itself, not the
    #   name of a file containing the script.
    #   @return [String]
    #
    # @!attribute [rw] clean_source_metadata_on_mismatch
    #   Cleans and recreates table metadata information on the replication
    #   instance when a mismatch occurs. For example, in a situation where
    #   running an alter DDL on the table could result in different
    #   information about the table cached in the replication instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint. For a MySQL source or target
    #   endpoint, don't explicitly specify the database using the
    #   `DatabaseName` request parameter on either the `CreateEndpoint` or
    #   `ModifyEndpoint` API call. Specifying `DatabaseName` when you create
    #   or modify a MySQL endpoint replicates all the task tables to this
    #   single database. For MySQL endpoints, you specify the database only
    #   when you specify the schema in the table-mapping rules of the DMS
    #   task.
    #   @return [String]
    #
    # @!attribute [rw] events_poll_interval
    #   Specifies how often to check the binary log for new changes/events
    #   when the database is idle. The default is five seconds.
    #
    #   Example: `eventsPollInterval=5;`
    #
    #   In the example, DMS checks for changes in the binary logs every five
    #   seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] target_db_type
    #   Specifies where to migrate source tables on the target, either to a
    #   single database or multiple databases. If you specify
    #   `SPECIFIC_DATABASE`, specify the database name using the
    #   `DatabaseName` parameter of the `Endpoint` object.
    #
    #   Example: `targetDbType=MULTIPLE_DATABASES`
    #   @return [String]
    #
    # @!attribute [rw] max_file_size
    #   Specifies the maximum size (in KB) of any .csv file used to transfer
    #   data to a MySQL-compatible database.
    #
    #   Example: `maxFileSize=512`
    #   @return [Integer]
    #
    # @!attribute [rw] parallel_load_threads
    #   Improves performance when loading data into the MySQL-compatible
    #   target database. Specifies how many threads to use to load the data
    #   into the MySQL-compatible target database. Setting a large number of
    #   threads can have an adverse effect on database performance, because
    #   a separate connection is required for each thread. The default is
    #   one.
    #
    #   Example: `parallelLoadThreads=1`
    #   @return [Integer]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The host name of the endpoint database.
    #
    #   For an Amazon RDS MySQL instance, this is the output of
    #   [DescribeDBInstances][1], in the ` Endpoint.Address` field.
    #
    #   For an Aurora MySQL instance, this is the output of
    #   [DescribeDBClusters][2], in the `Endpoint` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html
    #   @return [String]
    #
    # @!attribute [rw] server_timezone
    #   Specifies the time zone for the source MySQL database.
    #
    #   Example: `serverTimezone=US/Pacific;`
    #
    #   Note: Do not enclose time zones in single quotes.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   MySQL endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the MySQL endpoint connection
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] execute_timeout
    #   Sets the client statement timeout (in seconds) for a MySQL source
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role you can use to authenticate when connecting to your
    #   endpoint. Ensure to include `iam:PassRole` and `rds-db:connect`
    #   actions in permission policy.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method
    #   This attribute allows you to specify the authentication method as
    #   "iam auth".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MySQLSettings AWS API Documentation
    #
    class MySQLSettings < Struct.new(
      :after_connect_script,
      :clean_source_metadata_on_mismatch,
      :database_name,
      :events_poll_interval,
      :target_db_type,
      :max_file_size,
      :parallel_load_threads,
      :password,
      :port,
      :server_name,
      :server_timezone,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :execute_timeout,
      :service_access_role_arn,
      :authentication_method)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information that defines a MySQL data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the MySQL server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the MySQL data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the MySQL data provider. The default
    #   value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MySqlDataProviderSettings AWS API Documentation
    #
    class MySqlDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Amazon Neptune endpoint.
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) of the service role that you created
    #   for the Neptune target endpoint. The role must allow the
    #   `iam:PassRole` action. For more information, see [Creating an IAM
    #   Service Role for Accessing Amazon Neptune as a Target][1] in the
    #   <i>Database Migration Service User Guide. </i>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket where DMS can temporarily store
    #   migrated graph data in .csv files before bulk-loading it to the
    #   Neptune target database. DMS maps the SQL source data to graph data
    #   before storing it in these .csv files.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_folder
    #   A folder path where you want DMS to store migrated graph data in the
    #   S3 bucket specified by `S3BucketName`
    #   @return [String]
    #
    # @!attribute [rw] error_retry_duration
    #   The number of milliseconds for DMS to wait to retry a bulk-load of
    #   migrated graph data to the Neptune target database before raising an
    #   error. The default is 250.
    #   @return [Integer]
    #
    # @!attribute [rw] max_file_size
    #   The maximum size in kilobytes of migrated graph data stored in a
    #   .csv file before DMS bulk-loads the data to the Neptune target
    #   database. The default is 1,048,576 KB. If the bulk load is
    #   successful, DMS clears the bucket, ready to store the next batch of
    #   migrated graph data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retry_count
    #   The number of times for DMS to retry a bulk load of migrated graph
    #   data to the Neptune target database before raising an error. The
    #   default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_auth_enabled
    #   If you want Identity and Access Management (IAM) authorization
    #   enabled for this endpoint, set this parameter to `true`. Then attach
    #   the appropriate IAM policy document to your service role specified
    #   by `ServiceAccessRoleArn`. The default is `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/NeptuneSettings AWS API Documentation
    #
    class NeptuneSettings < Struct.new(
      :service_access_role_arn,
      :s3_bucket_name,
      :s3_bucket_folder,
      :error_retry_duration,
      :max_file_size,
      :max_retry_count,
      :iam_auth_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Oracle data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the Oracle server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the Oracle data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the Oracle data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the Oracle data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] asm_server
    #   The address of your Oracle Automatic Storage Management (ASM)
    #   server. You can set this value from the `asm_server` value. You set
    #   `asm_server` as part of the extra connection attribute string to
    #   access an Oracle server with Binary Reader that uses ASM. For more
    #   information, see [Configuration for change data capture (CDC) on an
    #   Oracle source database][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_oracle_asm_secret_id
    #   The identifier of the secret in Secrets Manager that contains the
    #   Oracle ASM connection details.
    #
    #   Required only if your data provider uses the Oracle ASM server.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_oracle_asm_access_role_arn
    #   The ARN of the IAM role that provides access to the secret in
    #   Secrets Manager that contains the Oracle ASM connection details.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_security_db_encryption_secret_id
    #   The identifier of the secret in Secrets Manager that contains the
    #   transparent data encryption (TDE) password. DMS requires this
    #   password to access Oracle redo logs encrypted by TDE using Binary
    #   Reader.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_security_db_encryption_access_role_arn
    #   The ARN of the IAM role that provides access to the secret in
    #   Secrets Manager that contains the TDE password.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/OracleDataProviderSettings AWS API Documentation
    #
    class OracleDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :asm_server,
      :secrets_manager_oracle_asm_secret_id,
      :secrets_manager_oracle_asm_access_role_arn,
      :secrets_manager_security_db_encryption_secret_id,
      :secrets_manager_security_db_encryption_access_role_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Oracle endpoint.
    #
    # @!attribute [rw] add_supplemental_logging
    #   Set this attribute to set up table-level supplemental logging for
    #   the Oracle database. This attribute enables PRIMARY KEY supplemental
    #   logging on all tables selected for a migration task.
    #
    #   If you use this option, you still need to enable database-level
    #   supplemental logging.
    #   @return [Boolean]
    #
    # @!attribute [rw] archived_log_dest_id
    #   Specifies the ID of the destination for the archived redo logs. This
    #   value should be the same as a number in the dest\_id column of the
    #   v$archived\_log view. If you work with an additional redo log
    #   destination, use the `AdditionalArchivedLogDestId` option to specify
    #   the additional destination ID. Doing this improves performance by
    #   ensuring that the correct logs are accessed from the outset.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_archived_log_dest_id
    #   Set this attribute with `ArchivedLogDestId` in a primary/ standby
    #   setup. This attribute is useful in the case of a switchover. In this
    #   case, DMS needs to know which destination to get archive redo logs
    #   from to read changes. This need arises because the previous primary
    #   instance is now a standby instance after switchover.
    #
    #   Although DMS supports the use of the Oracle `RESETLOGS` option to
    #   open the database, never use `RESETLOGS` unless necessary. For
    #   additional information about `RESETLOGS`, see [RMAN Data Repair
    #   Concepts][1] in the *Oracle Database Backup and Recovery User's
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B
    #   @return [Integer]
    #
    # @!attribute [rw] extra_archived_log_dest_ids
    #   Specifies the IDs of one more destinations for one or more archived
    #   redo logs. These IDs are the values of the `dest_id` column in the
    #   `v$archived_log` view. Use this setting with the `archivedLogDestId`
    #   extra connection attribute in a primary-to-single setup or a
    #   primary-to-multiple-standby setup.
    #
    #   This setting is useful in a switchover when you use an Oracle Data
    #   Guard database as a source. In this case, DMS needs information
    #   about what destination to get archive redo logs from to read
    #   changes. DMS needs this because after the switchover the previous
    #   primary is a standby instance. For example, in a primary-to-single
    #   standby setup you might apply the following settings.
    #
    #   `archivedLogDestId=1; ExtraArchivedLogDestIds=[2]`
    #
    #   In a primary-to-multiple-standby setup, you might apply the
    #   following settings.
    #
    #   `archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]`
    #
    #   Although DMS supports the use of the Oracle `RESETLOGS` option to
    #   open the database, never use `RESETLOGS` unless it's necessary. For
    #   more information about `RESETLOGS`, see [ RMAN Data Repair
    #   Concepts][1] in the *Oracle Database Backup and Recovery User's
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] allow_select_nested_tables
    #   Set this attribute to `true` to enable replication of Oracle tables
    #   containing columns that are nested tables or defined types.
    #   @return [Boolean]
    #
    # @!attribute [rw] parallel_asm_read_threads
    #   Set this attribute to change the number of threads that DMS
    #   configures to perform a change data capture (CDC) load using Oracle
    #   Automatic Storage Management (ASM). You can specify an integer value
    #   between 2 (the default) and 8 (the maximum). Use this attribute
    #   together with the `readAheadBlocks` attribute.
    #   @return [Integer]
    #
    # @!attribute [rw] read_ahead_blocks
    #   Set this attribute to change the number of read-ahead blocks that
    #   DMS configures to perform a change data capture (CDC) load using
    #   Oracle Automatic Storage Management (ASM). You can specify an
    #   integer value between 1000 (the default) and 200,000 (the maximum).
    #   @return [Integer]
    #
    # @!attribute [rw] access_alternate_directly
    #   Set this attribute to `false` in order to use the Binary Reader to
    #   capture change data for an Amazon RDS for Oracle as the source. This
    #   tells the DMS instance to not access redo logs through any specified
    #   path prefix replacement using direct file access.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_alternate_folder_for_online
    #   Set this attribute to `true` in order to use the Binary Reader to
    #   capture change data for an Amazon RDS for Oracle as the source. This
    #   tells the DMS instance to use any specified prefix replacement to
    #   access all online redo logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] oracle_path_prefix
    #   Set this string attribute to the required value in order to use the
    #   Binary Reader to capture change data for an Amazon RDS for Oracle as
    #   the source. This value specifies the default Oracle root used to
    #   access the redo logs.
    #   @return [String]
    #
    # @!attribute [rw] use_path_prefix
    #   Set this string attribute to the required value in order to use the
    #   Binary Reader to capture change data for an Amazon RDS for Oracle as
    #   the source. This value specifies the path prefix used to replace the
    #   default Oracle root to access the redo logs.
    #   @return [String]
    #
    # @!attribute [rw] replace_path_prefix
    #   Set this attribute to true in order to use the Binary Reader to
    #   capture change data for an Amazon RDS for Oracle as the source. This
    #   setting tells DMS instance to replace the default Oracle root with
    #   the specified `usePathPrefix` setting to access the redo logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_homogenous_tablespace
    #   Set this attribute to enable homogenous tablespace replication and
    #   create existing tables or indexes under the same tablespace on the
    #   target.
    #   @return [Boolean]
    #
    # @!attribute [rw] direct_path_no_log
    #   When set to `true`, this attribute helps to increase the commit rate
    #   on the Oracle target database by writing directly to tables and not
    #   writing a trail to database logs.
    #   @return [Boolean]
    #
    # @!attribute [rw] archived_logs_only
    #   When this field is set to `True`, DMS only accesses the archived
    #   redo logs. If the archived redo logs are stored on Automatic Storage
    #   Management (ASM) only, the DMS user account needs to be granted ASM
    #   privileges.
    #   @return [Boolean]
    #
    # @!attribute [rw] asm_password
    #   For an Oracle source endpoint, your Oracle Automatic Storage
    #   Management (ASM) password. You can set this value from the `
    #   asm_user_password ` value. You set this value as part of the
    #   comma-separated value that you set to the `Password` request
    #   parameter when you create the endpoint to access transaction logs
    #   using Binary Reader. For more information, see [Configuration for
    #   change data capture (CDC) on an Oracle source database][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration
    #   @return [String]
    #
    # @!attribute [rw] asm_server
    #   For an Oracle source endpoint, your ASM server address. You can set
    #   this value from the `asm_server` value. You set `asm_server` as part
    #   of the extra connection attribute string to access an Oracle server
    #   with Binary Reader that uses ASM. For more information, see
    #   [Configuration for change data capture (CDC) on an Oracle source
    #   database][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration
    #   @return [String]
    #
    # @!attribute [rw] asm_user
    #   For an Oracle source endpoint, your ASM user name. You can set this
    #   value from the `asm_user` value. You set `asm_user` as part of the
    #   extra connection attribute string to access an Oracle server with
    #   Binary Reader that uses ASM. For more information, see
    #   [Configuration for change data capture (CDC) on an Oracle source
    #   database][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration
    #   @return [String]
    #
    # @!attribute [rw] char_length_semantics
    #   Specifies whether the length of a character column is in bytes or in
    #   characters. To indicate that the character column length is in
    #   characters, set this attribute to `CHAR`. Otherwise, the character
    #   column length is in bytes.
    #
    #   Example: `charLengthSemantics=CHAR;`
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] direct_path_parallel_load
    #   When set to `true`, this attribute specifies a parallel load when
    #   `useDirectPathFullLoad` is set to `Y`. This attribute also only
    #   applies when you use the DMS parallel load feature. Note that the
    #   target table cannot have any constraints or indexes.
    #   @return [Boolean]
    #
    # @!attribute [rw] fail_tasks_on_lob_truncation
    #   When set to `true`, this attribute causes a task to fail if the
    #   actual size of an LOB column is greater than the specified
    #   `LobMaxSize`.
    #
    #   If a task is set to limited LOB mode and this option is set to
    #   `true`, the task fails instead of truncating the LOB data.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_datatype_scale
    #   Specifies the number scale. You can select a scale up to 38, or you
    #   can select FLOAT. By default, the NUMBER data type is converted to
    #   precision 38, scale 10.
    #
    #   Example: `numberDataTypeScale=12`
    #   @return [Integer]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port.
    #   @return [Integer]
    #
    # @!attribute [rw] read_table_space_name
    #   When set to `true`, this attribute supports tablespace replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] retry_interval
    #   Specifies the number of seconds that the system waits before
    #   resending a query.
    #
    #   Example: `retryInterval=6;`
    #   @return [Integer]
    #
    # @!attribute [rw] security_db_encryption
    #   For an Oracle source endpoint, the transparent data encryption (TDE)
    #   password required by AWM DMS to access Oracle redo logs encrypted by
    #   TDE using Binary Reader. It is also the ` TDE_Password ` part of the
    #   comma-separated value you set to the `Password` request parameter
    #   when you create the endpoint. The `SecurityDbEncryptian` setting is
    #   related to this `SecurityDbEncryptionName` setting. For more
    #   information, see [ Supported encryption methods for using Oracle as
    #   a source for DMS ][1] in the *Database Migration Service User
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption
    #   @return [String]
    #
    # @!attribute [rw] security_db_encryption_name
    #   For an Oracle source endpoint, the name of a key used for the
    #   transparent data encryption (TDE) of the columns and tablespaces in
    #   an Oracle source database that is encrypted using TDE. The key value
    #   is the value of the `SecurityDbEncryption` setting. For more
    #   information on setting the key name value of
    #   `SecurityDbEncryptionName`, see the information and example for
    #   setting the `securityDbEncryptionName` extra connection attribute in
    #   [ Supported encryption methods for using Oracle as a source for DMS
    #   ][1] in the *Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
    #
    #   For an Amazon RDS Oracle instance, this is the output of
    #   [DescribeDBInstances][1], in the ` Endpoint.Address` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html
    #   @return [String]
    #
    # @!attribute [rw] spatial_data_option_to_geo_json_function_name
    #   Use this attribute to convert `SDO_GEOMETRY` to `GEOJSON` format. By
    #   default, DMS calls the `SDO2GEOJSON` custom function if present and
    #   accessible. Or you can create your own custom function that mimics
    #   the operation of `SDOGEOJSON` and set
    #   `SpatialDataOptionToGeoJsonFunctionName` to call it instead.
    #   @return [String]
    #
    # @!attribute [rw] standby_delay_time
    #   Use this attribute to specify a time in minutes for the delay in
    #   standby sync. If the source is an Oracle Active Data Guard standby
    #   database, use this attribute to specify the time lag between primary
    #   and standby databases.
    #
    #   In DMS, you can create an Oracle CDC task that uses an Active Data
    #   Guard standby instance as a source for replicating ongoing changes.
    #   Doing this eliminates the need to connect to an active database that
    #   might be in production.
    #   @return [Integer]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] use_b_file
    #   Set this attribute to True to capture change data using the Binary
    #   Reader utility. Set `UseLogminerReader` to False to set this
    #   attribute to True. To use Binary Reader with Amazon RDS for Oracle
    #   as the source, you set additional attributes. For more information
    #   about using this setting with Oracle Automatic Storage Management
    #   (ASM), see [ Using Oracle LogMiner or DMS Binary Reader for CDC][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC
    #   @return [Boolean]
    #
    # @!attribute [rw] use_direct_path_full_load
    #   Set this attribute to True to have DMS use a direct path full load.
    #   Specify this value to use the direct path protocol in the Oracle
    #   Call Interface (OCI). By using this OCI protocol, you can bulk-load
    #   Oracle target tables during a full load.
    #   @return [Boolean]
    #
    # @!attribute [rw] use_logminer_reader
    #   Set this attribute to True to capture change data using the Oracle
    #   LogMiner utility (the default). Set this attribute to False if you
    #   want to access the redo logs as a binary file. When you set
    #   `UseLogminerReader` to False, also set `UseBfile` to True. For more
    #   information on this setting and using Oracle ASM, see [ Using Oracle
    #   LogMiner or DMS Binary Reader for CDC][1] in the *DMS User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC
    #   @return [Boolean]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   Oracle endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the Oracle endpoint connection
    #   details.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_oracle_asm_access_role_arn
    #   Required only if your Oracle endpoint uses Automatic Storage
    #   Management (ASM). The full ARN of the IAM role that specifies DMS as
    #   the trusted entity and grants the required permissions to access the
    #   `SecretsManagerOracleAsmSecret`. This
    #   `SecretsManagerOracleAsmSecret` has the secret value that allows
    #   access to the Oracle ASM of the endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerOracleAsmSecretId`. Or you can specify clear-text
    #   values for `AsmUser`, `AsmPassword`, and `AsmServerName`. You can't
    #   specify both. For more information on creating this
    #   `SecretsManagerOracleAsmSecret` and the
    #   `SecretsManagerOracleAsmAccessRoleArn` and
    #   `SecretsManagerOracleAsmSecretId` required to access it, see [Using
    #   secrets to access Database Migration Service resources][1] in the
    #   *Database Migration Service User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_oracle_asm_secret_id
    #   Required only if your Oracle endpoint uses Automatic Storage
    #   Management (ASM). The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerOracleAsmSecret` that contains the Oracle ASM
    #   connection details for the Oracle endpoint.
    #   @return [String]
    #
    # @!attribute [rw] trim_space_in_char
    #   Use the `TrimSpaceInChar` source endpoint setting to trim data on
    #   CHAR and NCHAR data types during migration. The default value is
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] convert_timestamp_with_zone_to_utc
    #   When true, converts timestamps with the `timezone` datatype to their
    #   UTC value.
    #   @return [Boolean]
    #
    # @!attribute [rw] open_transaction_window
    #   The timeframe in minutes to check for open transactions for a
    #   CDC-only task.
    #
    #   You can specify an integer value between 0 (the default) and 240
    #   (the maximum).
    #
    #   <note markdown="1"> This parameter is only valid in DMS version 3.5.0 and later.
    #
    #    </note>
    #   @return [Integer]
    #
    # @!attribute [rw] authentication_method
    #   Specifies the authentication method to be used with Oracle.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/OracleSettings AWS API Documentation
    #
    class OracleSettings < Struct.new(
      :add_supplemental_logging,
      :archived_log_dest_id,
      :additional_archived_log_dest_id,
      :extra_archived_log_dest_ids,
      :allow_select_nested_tables,
      :parallel_asm_read_threads,
      :read_ahead_blocks,
      :access_alternate_directly,
      :use_alternate_folder_for_online,
      :oracle_path_prefix,
      :use_path_prefix,
      :replace_path_prefix,
      :enable_homogenous_tablespace,
      :direct_path_no_log,
      :archived_logs_only,
      :asm_password,
      :asm_server,
      :asm_user,
      :char_length_semantics,
      :database_name,
      :direct_path_parallel_load,
      :fail_tasks_on_lob_truncation,
      :number_datatype_scale,
      :password,
      :port,
      :read_table_space_name,
      :retry_interval,
      :security_db_encryption,
      :security_db_encryption_name,
      :server_name,
      :spatial_data_option_to_geo_json_function_name,
      :standby_delay_time,
      :username,
      :use_b_file,
      :use_direct_path_full_load,
      :use_logminer_reader,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :secrets_manager_oracle_asm_access_role_arn,
      :secrets_manager_oracle_asm_secret_id,
      :trim_space_in_char,
      :convert_timestamp_with_zone_to_utc,
      :open_transaction_window,
      :authentication_method)
      SENSITIVE = [:asm_password, :password, :security_db_encryption]
      include Aws::Structure
    end

    # In response to the `DescribeOrderableReplicationInstances` operation,
    # this object describes an available replication instance. This
    # description includes the replication instance's type, engine version,
    # and allocated storage.
    #
    # @!attribute [rw] engine_version
    #   The version of the replication engine.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance as
    #   defined for the specified replication instance class. For example to
    #   specify the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   DMS replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
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
    # @!attribute [rw] availability_zones
    #   List of Availability Zones for this replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] release_status
    #   The value returned when the specified `EngineVersion` of the
    #   replication instance is in Beta or test mode. This indicates some
    #   features might not work as expected.
    #
    #   <note markdown="1"> DMS supports the `ReleaseStatus` parameter in versions 3.1.4 and
    #   later.
    #
    #    </note>
    #   @return [String]
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
      :included_allocated_storage,
      :availability_zones,
      :release_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a maintenance action pending for an DMS resource, including
    # when and how it will be applied. This data type is a response element
    # to the `DescribePendingMaintenanceActions` operation.
    #
    # @!attribute [rw] action
    #   The type of pending maintenance action that is available for the
    #   resource.
    #   @return [String]
    #
    # @!attribute [rw] auto_applied_after_date
    #   The date of the maintenance window when the action is to be applied.
    #   The maintenance action is applied to the resource during its first
    #   maintenance window after this date. If this date is specified, any
    #   `next-maintenance` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] forced_apply_date
    #   The date when the maintenance action will be automatically applied.
    #   The maintenance action is applied to the resource on this date
    #   regardless of the maintenance window for the resource. If this date
    #   is specified, any `immediate` opt-in requests are ignored.
    #   @return [Time]
    #
    # @!attribute [rw] opt_in_status
    #   The type of opt-in request that has been received for the resource.
    #   @return [String]
    #
    # @!attribute [rw] current_apply_date
    #   The effective date when the pending maintenance action will be
    #   applied to the resource. This date takes into account opt-in
    #   requests received from the `ApplyPendingMaintenanceAction` API
    #   operation, and also the `AutoAppliedAfterDate` and `ForcedApplyDate`
    #   parameter values. This value is blank if an opt-in request has not
    #   been received and nothing has been specified for
    #   `AutoAppliedAfterDate` or `ForcedApplyDate`.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   A description providing more detail about the maintenance action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/PendingMaintenanceAction AWS API Documentation
    #
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a PostgreSQL endpoint.
    #
    # @!attribute [rw] after_connect_script
    #   For use with change data capture (CDC) only, this attribute has DMS
    #   bypass foreign keys and user triggers to reduce the time it takes to
    #   bulk load data.
    #
    #   Example: `afterConnectScript=SET session_replication_role='replica'`
    #   @return [String]
    #
    # @!attribute [rw] capture_ddls
    #   To capture DDL events, DMS creates various artifacts in the
    #   PostgreSQL database when the task starts. You can later remove these
    #   artifacts.
    #
    #   The default value is `true`.
    #
    #   If this value is set to `N`, you don't have to create tables or
    #   triggers on the source database.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_file_size
    #   Specifies the maximum size (in KB) of any .csv file used to transfer
    #   data to PostgreSQL.
    #
    #   The default value is 32,768 KB (32 MB).
    #
    #   Example: `maxFileSize=512`
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ddl_artifacts_schema
    #   The schema in which the operational DDL database artifacts are
    #   created.
    #
    #   The default value is `public`.
    #
    #   Example: `ddlArtifactsSchema=xyzddlschema;`
    #   @return [String]
    #
    # @!attribute [rw] execute_timeout
    #   Sets the client statement timeout for the PostgreSQL instance, in
    #   seconds. The default value is 60 seconds.
    #
    #   Example: `executeTimeout=100;`
    #   @return [Integer]
    #
    # @!attribute [rw] fail_tasks_on_lob_truncation
    #   When set to `true`, this value causes a task to fail if the actual
    #   size of a LOB column is greater than the specified `LobMaxSize`.
    #
    #   The default value is `false`.
    #
    #   If task is set to Limited LOB mode and this option is set to true,
    #   the task fails instead of truncating the LOB data.
    #   @return [Boolean]
    #
    # @!attribute [rw] heartbeat_enable
    #   The write-ahead log (WAL) heartbeat feature mimics a dummy
    #   transaction. By doing this, it prevents idle logical replication
    #   slots from holding onto old WAL logs, which can result in storage
    #   full situations on the source. This heartbeat keeps `restart_lsn`
    #   moving and prevents storage full scenarios.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] heartbeat_schema
    #   Sets the schema in which the heartbeat artifacts are created.
    #
    #   The default value is `public`.
    #   @return [String]
    #
    # @!attribute [rw] heartbeat_frequency
    #   Sets the WAL heartbeat frequency (in minutes).
    #
    #   The default value is 5 minutes.
    #   @return [Integer]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port. The default is 5432.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   The host name of the endpoint database.
    #
    #   For an Amazon RDS PostgreSQL instance, this is the output of
    #   [DescribeDBInstances][1], in the ` Endpoint.Address` field.
    #
    #   For an Aurora PostgreSQL instance, this is the output of
    #   [DescribeDBClusters][2], in the `Endpoint` field.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html
    #   [2]: https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   Sets the name of a previously created logical replication slot for a
    #   change data capture (CDC) load of the PostgreSQL source instance.
    #
    #   When used with the `CdcStartPosition` request parameter for the DMS
    #   API , this attribute also makes it possible to use native CDC start
    #   points. DMS verifies that the specified logical replication slot
    #   exists before starting the CDC load task. It also verifies that the
    #   task was created with a valid setting of `CdcStartPosition`. If the
    #   specified slot doesn't exist or the task doesn't have a valid
    #   `CdcStartPosition` setting, DMS raises an error.
    #
    #   For more information about setting the `CdcStartPosition` request
    #   parameter, see [Determining a CDC native start point][1] in the
    #   *Database Migration Service User Guide*. For more information about
    #   using `CdcStartPosition`, see [CreateReplicationTask][2],
    #   [StartReplicationTask][3], and [ModifyReplicationTask][4].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native
    #   [2]: https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html
    #   [3]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html
    #   [4]: https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html
    #   @return [String]
    #
    # @!attribute [rw] plugin_name
    #   Specifies the plugin to use to create a replication slot.
    #
    #   The default value is `pglogical`.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   PostgreSQL endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the PostgreSQL endpoint
    #   connection details.
    #   @return [String]
    #
    # @!attribute [rw] trim_space_in_char
    #   Use the `TrimSpaceInChar` source endpoint setting to trim data on
    #   CHAR and NCHAR data types during migration. The default value is
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_boolean_as_boolean
    #   When true, lets PostgreSQL migrate the boolean type as boolean. By
    #   default, PostgreSQL migrates booleans as `varchar(5)`. You must set
    #   this setting on both the source and target endpoints for it to take
    #   effect.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_jsonb_as_clob
    #   When true, DMS migrates JSONB values as CLOB.
    #
    #   The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] map_long_varchar_as
    #   Sets what datatype to map LONG values as.
    #
    #   The default value is `wstring`.
    #   @return [String]
    #
    # @!attribute [rw] database_mode
    #   Specifies the default behavior of the replication's handling of
    #   PostgreSQL- compatible endpoints that require some additional
    #   configuration, such as Babelfish endpoints.
    #   @return [String]
    #
    # @!attribute [rw] babelfish_database_name
    #   The Babelfish for Aurora PostgreSQL database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] disable_unicode_source_filter
    #   Disables the Unicode source filter with PostgreSQL, for values
    #   passed into the Selection rule filter on Source Endpoint column
    #   values. By default DMS performs source filter comparisons using a
    #   Unicode string which can cause look ups to ignore the indexes in the
    #   text columns and slow down migrations.
    #
    #   Unicode support should only be disabled when using a selection rule
    #   filter is on a text column in the Source database that is indexed.
    #   @return [Boolean]
    #
    # @!attribute [rw] service_access_role_arn
    #   The IAM role arn you can use to authenticate the connection to your
    #   endpoint. Ensure to include `iam:PassRole` and `rds-db:connect`
    #   actions in permission policy.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method
    #   This attribute allows you to specify the authentication method as
    #   "iam auth".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/PostgreSQLSettings AWS API Documentation
    #
    class PostgreSQLSettings < Struct.new(
      :after_connect_script,
      :capture_ddls,
      :max_file_size,
      :database_name,
      :ddl_artifacts_schema,
      :execute_timeout,
      :fail_tasks_on_lob_truncation,
      :heartbeat_enable,
      :heartbeat_schema,
      :heartbeat_frequency,
      :password,
      :port,
      :server_name,
      :username,
      :slot_name,
      :plugin_name,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :trim_space_in_char,
      :map_boolean_as_boolean,
      :map_jsonb_as_clob,
      :map_long_varchar_as,
      :database_mode,
      :babelfish_database_name,
      :disable_unicode_source_filter,
      :service_access_role_arn,
      :authentication_method)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information that defines a PostgreSQL data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the PostgreSQL server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the PostgreSQL data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the PostgreSQL data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the PostgreSQL data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/PostgreSqlDataProviderSettings AWS API Documentation
    #
    class PostgreSqlDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The results returned in `describe-replications` to display the results
    # of the premigration assessment from the replication configuration.
    #
    # @!attribute [rw] premigration_assessment_run_arn
    #   The Amazon Resource Name (ARN) of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] fail_on_assessment_failure
    #   A configurable setting you can set to `true` (the defualt setting)
    #   or `false`. Use this setting to to stop the replication from
    #   starting automatically if the assessment fails. This can help you
    #   evaluate the issue that is preventing the replication from running
    #   successfully.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   This describes the assessment run status. The status can be one of
    #   the following values:
    #
    #   * `cancelling`: The assessment run was canceled.
    #
    #   * `deleting`: The assessment run was deleted.
    #
    #   * `failed`: At least one individual assessment completed with a
    #     failed status.
    #
    #   * `error-provisioning`: An internal error occurred while resources
    #     were provisioned (during the `provisioning` status).
    #
    #   * `error-executing` An internal error occurred while individual
    #     assessments ran (during the `running` status).
    #
    #   * `invalid state`: The assessment run is in an unknown state.
    #
    #   * `passed`: All individual assessments have completed and none have
    #     a failed status.
    #
    #   * `provisioning`: The resources required to run individual
    #     assessments are being provisioned.
    #
    #   * `running`: Individual assessments are being run.
    #
    #   * `starting`: The assessment run is starting, but resources are not
    #     yet being provisioned for individual assessments.
    #
    #   * `warning`: At least one individual assessment completed with a
    #     warning status.
    #   @return [String]
    #
    # @!attribute [rw] premigration_assessment_run_creation_date
    #   The date which the assessment run was created.
    #   @return [Time]
    #
    # @!attribute [rw] assessment_progress
    #   The progress values reported by the `AssessmentProgress` response
    #   element.
    #   @return [Types::ReplicationTaskAssessmentRunProgress]
    #
    # @!attribute [rw] last_failure_message
    #   The last message generated by an individual assessment failure.
    #   @return [String]
    #
    # @!attribute [rw] result_location_bucket
    #   The Amazon S3 bucket that Database Migration Service Serverless
    #   created to store the results of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_folder
    #   The folder within an Amazon S3 bucket where you want Database
    #   Migration Service to store the results of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_encryption_mode
    #   The supported values are `SSE_KMS` and `SSE_S3`. If these values are
    #   not provided, then the files are not encrypted at rest. For more
    #   information, see [Creating Amazon Web Services KMS keys to encrypt
    #   Amazon S3 target objects][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys
    #   @return [String]
    #
    # @!attribute [rw] result_kms_key_arn
    #   The ARN of a custom KMS encryption key that you specify when you set
    #   `ResultEncryptionMode` to `SSE_KMS`.
    #   @return [String]
    #
    # @!attribute [rw] result_statistic
    #   The object containing the result statistics for a completed
    #   assessment run.
    #   @return [Types::ReplicationTaskAssessmentRunResultStatistic]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/PremigrationAssessmentStatus AWS API Documentation
    #
    class PremigrationAssessmentStatus < Struct.new(
      :premigration_assessment_run_arn,
      :fail_on_assessment_failure,
      :status,
      :premigration_assessment_run_creation_date,
      :assessment_progress,
      :last_failure_message,
      :result_location_bucket,
      :result_location_folder,
      :result_encryption_mode,
      :result_kms_key_arn,
      :result_statistic)
      SENSITIVE = []
      include Aws::Structure
    end

    # The database object that the schema conversion operation currently
    # uses.
    #
    # @!attribute [rw] name
    #   The name of the database object.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the database object. For example, a table, view,
    #   procedure, and so on.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of the data provider. This parameter can store one of the
    #   following values: `"SOURCE"` or `"TARGET"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ProcessedObject AWS API Documentation
    #
    class ProcessedObject < Struct.new(
      :name,
      :type,
      :endpoint_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the progress of the schema conversion
    # operation.
    #
    # @!attribute [rw] progress_percent
    #   The percent complete for the current step of the schema conversion
    #   operation.
    #   @return [Float]
    #
    # @!attribute [rw] total_objects
    #   The number of objects in this schema conversion operation.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_step
    #   The step of the schema conversion operation. This parameter can
    #   store one of the following values:
    #
    #   * `IN_PROGRESS` – The operation is running.
    #
    #   * `LOADING_METADATA` – Loads metadata from the source database.
    #
    #   * `COUNTING_OBJECTS` – Determines the number of objects involved in
    #     the operation.
    #
    #   * `ANALYZING` – Analyzes the source database objects.
    #
    #   * `CONVERTING` – Converts the source database objects to a format
    #     compatible with the target database.
    #
    #   * `APPLYING` – Applies the converted code to the target database.
    #
    #   * `FINISHED` – The operation completed successfully.
    #   @return [String]
    #
    # @!attribute [rw] processed_object
    #   The name of the database object that the schema conversion operation
    #   currently uses.
    #   @return [Types::ProcessedObject]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Progress AWS API Documentation
    #
    class Progress < Struct.new(
      :progress_percent,
      :total_objects,
      :progress_step,
      :processed_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about provisioning resources for an DMS serverless
    # replication.
    #
    # @!attribute [rw] provision_state
    #   The current provisioning state
    #   @return [String]
    #
    # @!attribute [rw] provisioned_capacity_units
    #   The number of capacity units the replication is using.
    #   @return [Integer]
    #
    # @!attribute [rw] date_provisioned
    #   The timestamp when DMS provisioned replication resources.
    #   @return [Time]
    #
    # @!attribute [rw] is_new_provisioning_available
    #   Whether the new provisioning is available to the replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] date_new_provisioning_data_available
    #   The timestamp when provisioning became available.
    #   @return [Time]
    #
    # @!attribute [rw] reason_for_new_provisioning_data
    #   A message describing the reason that DMS provisioned new resources
    #   for the serverless replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ProvisionData AWS API Documentation
    #
    class ProvisionData < Struct.new(
      :provision_state,
      :provisioned_capacity_units,
      :date_provisioned,
      :is_new_provisioning_available,
      :date_new_provisioning_data_available,
      :reason_for_new_provisioning_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes the configuration of the
    # recommended target engine on Amazon RDS.
    #
    # @!attribute [rw] engine_edition
    #   Describes the recommended target Amazon RDS engine edition.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Describes the recommended target Amazon RDS instance type.
    #   @return [String]
    #
    # @!attribute [rw] instance_vcpu
    #   Describes the number of virtual CPUs (vCPU) on the recommended
    #   Amazon RDS DB instance that meets your requirements.
    #   @return [Float]
    #
    # @!attribute [rw] instance_memory
    #   Describes the memory on the recommended Amazon RDS DB instance that
    #   meets your requirements.
    #   @return [Float]
    #
    # @!attribute [rw] storage_type
    #   Describes the storage type of the recommended Amazon RDS DB instance
    #   that meets your requirements.
    #
    #   Amazon RDS provides three storage types: General Purpose SSD (also
    #   known as gp2 and gp3), Provisioned IOPS SSD (also known as io1), and
    #   magnetic (also known as standard).
    #   @return [String]
    #
    # @!attribute [rw] storage_size
    #   Describes the storage size of the recommended Amazon RDS DB instance
    #   that meets your requirements.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_iops
    #   Describes the number of I/O operations completed each second (IOPS)
    #   on the recommended Amazon RDS DB instance that meets your
    #   requirements.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_option
    #   Describes the deployment option for the recommended Amazon RDS DB
    #   instance. The deployment options include Multi-AZ and Single-AZ
    #   deployments. Valid values include `"MULTI_AZ"` and `"SINGLE_AZ"`.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   Describes the recommended target Amazon RDS engine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RdsConfiguration AWS API Documentation
    #
    class RdsConfiguration < Struct.new(
      :engine_edition,
      :instance_type,
      :instance_vcpu,
      :instance_memory,
      :storage_type,
      :storage_size,
      :storage_iops,
      :deployment_option,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes a recommendation of a target
    # engine on Amazon RDS.
    #
    # @!attribute [rw] requirements_to_target
    #   Supplemental information about the requirements to the recommended
    #   target database on Amazon RDS.
    #   @return [Types::RdsRequirements]
    #
    # @!attribute [rw] target_configuration
    #   Supplemental information about the configuration of the recommended
    #   target database on Amazon RDS.
    #   @return [Types::RdsConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RdsRecommendation AWS API Documentation
    #
    class RdsRecommendation < Struct.new(
      :requirements_to_target,
      :target_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes the requirements to the target
    # engine on Amazon RDS.
    #
    # @!attribute [rw] engine_edition
    #   The required target Amazon RDS engine edition.
    #   @return [String]
    #
    # @!attribute [rw] instance_vcpu
    #   The required number of virtual CPUs (vCPU) on the Amazon RDS DB
    #   instance.
    #   @return [Float]
    #
    # @!attribute [rw] instance_memory
    #   The required memory on the Amazon RDS DB instance.
    #   @return [Float]
    #
    # @!attribute [rw] storage_size
    #   The required Amazon RDS DB instance storage size.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_iops
    #   The required number of I/O operations completed each second (IOPS)
    #   on your Amazon RDS DB instance.
    #   @return [Integer]
    #
    # @!attribute [rw] deployment_option
    #   The required deployment option for the Amazon RDS DB instance. Valid
    #   values include `"MULTI_AZ"` for Multi-AZ deployments and
    #   `"SINGLE_AZ"` for Single-AZ deployments.
    #   @return [String]
    #
    # @!attribute [rw] engine_version
    #   The required target Amazon RDS engine version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RdsRequirements AWS API Documentation
    #
    class RdsRequirements < Struct.new(
      :engine_edition,
      :instance_vcpu,
      :instance_memory,
      :storage_size,
      :storage_iops,
      :deployment_option,
      :engine_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] force_failover
    #   If this parameter is `true`, the reboot is conducted through a
    #   Multi-AZ failover. If the instance isn't configured for Multi-AZ,
    #   then you can't specify `true`. ( `--force-planned-failover` and
    #   `--force-failover` can't both be set to `true`.)
    #   @return [Boolean]
    #
    # @!attribute [rw] force_planned_failover
    #   If this parameter is `true`, the reboot is conducted through a
    #   planned Multi-AZ failover where resources are released and cleaned
    #   up prior to conducting the failover. If the instance isn''t
    #   configured for Multi-AZ, then you can't specify `true`. (
    #   `--force-planned-failover` and `--force-failover` can't both be set
    #   to `true`.)
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RebootReplicationInstanceMessage AWS API Documentation
    #
    class RebootReplicationInstanceMessage < Struct.new(
      :replication_instance_arn,
      :force_failover,
      :force_planned_failover)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes a recommendation of a target
    # engine.
    #
    # A *recommendation* is a set of possible Amazon Web Services target
    # engines that you can choose to migrate your source on-premises
    # database. In this set, Fleet Advisor suggests a single target engine
    # as the right sized migration destination. To determine this rightsized
    # migration destination, Fleet Advisor uses the inventory metadata and
    # metrics from data collector. You can use recommendations before the
    # start of migration to save costs and reduce risks.
    #
    # With recommendations, you can explore different target options and
    # compare metrics, so you can make an informed decision when you choose
    # the migration target.
    #
    # @!attribute [rw] database_id
    #   The identifier of the source database for which Fleet Advisor
    #   provided this recommendation.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The name of the target engine. Valid values include
    #   `"rds-aurora-mysql"`, `"rds-aurora-postgresql"`, `"rds-mysql"`,
    #   `"rds-oracle"`, `"rds-sql-server"`, and `"rds-postgresql"`.
    #   @return [String]
    #
    # @!attribute [rw] created_date
    #   The date when Fleet Advisor created the target engine
    #   recommendation.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the target engine recommendation. Valid values include
    #   `"alternate"`, `"in-progress"`, `"not-viable"`, and `"recommended"`.
    #   @return [String]
    #
    # @!attribute [rw] preferred
    #   Indicates that this target is the rightsized migration destination.
    #   @return [Boolean]
    #
    # @!attribute [rw] settings
    #   The settings in JSON format for the preferred target engine
    #   parameters. These parameters include capacity, resource utilization,
    #   and the usage type (production, development, or testing).
    #   @return [Types::RecommendationSettings]
    #
    # @!attribute [rw] data
    #   The recommendation of a target engine for the specified source
    #   database.
    #   @return [Types::RecommendationData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Recommendation AWS API Documentation
    #
    class Recommendation < Struct.new(
      :database_id,
      :engine_name,
      :created_date,
      :status,
      :preferred,
      :settings,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the target engine for the specified source
    # database.
    #
    # @!attribute [rw] rds_engine
    #   The recommendation of a target Amazon RDS database engine.
    #   @return [Types::RdsRecommendation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RecommendationData AWS API Documentation
    #
    class RecommendationData < Struct.new(
      :rds_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the required target engine settings.
    #
    # @!attribute [rw] instance_sizing_type
    #   The size of your target instance. Fleet Advisor calculates this
    #   value based on your data collection type, such as total capacity and
    #   resource utilization. Valid values include `"total-capacity"` and
    #   `"utilization"`.
    #   @return [String]
    #
    # @!attribute [rw] workload_type
    #   The deployment option for your target engine. For production
    #   databases, Fleet Advisor chooses Multi-AZ deployment. For
    #   development or test databases, Fleet Advisor chooses Single-AZ
    #   deployment. Valid values include `"development"` and `"production"`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RecommendationSettings AWS API Documentation
    #
    class RecommendationSettings < Struct.new(
      :instance_sizing_type,
      :workload_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a Redis target endpoint.
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Transmission Control Protocol (TCP) port for the endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] ssl_security_protocol
    #   The connection to a Redis target endpoint using Transport Layer
    #   Security (TLS). Valid values include `plaintext` and
    #   `ssl-encryption`. The default is `ssl-encryption`. The
    #   `ssl-encryption` option makes an encrypted connection. Optionally,
    #   you can identify an Amazon Resource Name (ARN) for an SSL
    #   certificate authority (CA) using the `SslCaCertificateArn `setting.
    #   If an ARN isn't given for a CA, DMS uses the Amazon root CA.
    #
    #   The `plaintext` option doesn't provide Transport Layer Security
    #   (TLS) encryption for traffic between endpoint and database.
    #   @return [String]
    #
    # @!attribute [rw] auth_type
    #   The type of authentication to perform when connecting to a Redis
    #   target. Options include `none`, `auth-token`, and `auth-role`. The
    #   `auth-token` option requires an `AuthPassword` value to be provided.
    #   The `auth-role` option requires `AuthUserName` and `AuthPassword`
    #   values to be provided.
    #   @return [String]
    #
    # @!attribute [rw] auth_user_name
    #   The user name provided with the `auth-role` option of the `AuthType`
    #   setting for a Redis target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] auth_password
    #   The password provided with the `auth-role` and `auth-token` options
    #   of the `AuthType` setting for a Redis target endpoint.
    #   @return [String]
    #
    # @!attribute [rw] ssl_ca_certificate_arn
    #   The Amazon Resource Name (ARN) for the certificate authority (CA)
    #   that DMS uses to connect to your Redis target endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RedisSettings AWS API Documentation
    #
    class RedisSettings < Struct.new(
      :server_name,
      :port,
      :ssl_security_protocol,
      :auth_type,
      :auth_user_name,
      :auth_password,
      :ssl_ca_certificate_arn)
      SENSITIVE = [:auth_password]
      include Aws::Structure
    end

    # Provides information that defines an Amazon Redshift data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the Amazon Redshift server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the Amazon Redshift data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the Amazon Redshift data provider.
    #   @return [String]
    #
    # @!attribute [rw] s3_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   accessing the user-defined schema.
    #   @return [String]
    #
    # @!attribute [rw] s3_access_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RedshiftDataProviderSettings AWS API Documentation
    #
    class RedshiftDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :s3_path,
      :s3_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Amazon Redshift endpoint.
    #
    # @!attribute [rw] accept_any_date
    #   A value that indicates to allow any date format, including invalid
    #   formats such as 00/00/00 00:00:00, to be loaded without generating
    #   an error. You can choose `true` or `false` (the default).
    #
    #   This parameter applies only to TIMESTAMP and DATE columns. Always
    #   use ACCEPTANYDATE with the DATEFORMAT parameter. If the date format
    #   for the data doesn't match the DATEFORMAT specification, Amazon
    #   Redshift inserts a NULL value into that field.
    #   @return [Boolean]
    #
    # @!attribute [rw] after_connect_script
    #   Code to run after connecting. This parameter should contain the code
    #   itself, not the name of a file containing the code.
    #   @return [String]
    #
    # @!attribute [rw] bucket_folder
    #   An S3 folder where the comma-separated-value (.csv) files are stored
    #   before being uploaded to the target Redshift cluster.
    #
    #   For full load mode, DMS converts source records into .csv files and
    #   loads them to the *BucketFolder/TableID* path. DMS uses the Redshift
    #   `COPY` command to upload the .csv files to the target table. The
    #   files are deleted once the `COPY` operation has finished. For more
    #   information, see [COPY][1] in the *Amazon Redshift Database
    #   Developer Guide*.
    #
    #   For change-data-capture (CDC) mode, DMS creates a *NetChanges*
    #   table, and loads the .csv files to this
    #   *BucketFolder/NetChangesTableID* path.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the intermediate S3 bucket used to store .csv files
    #   before uploading data to Redshift.
    #   @return [String]
    #
    # @!attribute [rw] case_sensitive_names
    #   If Amazon Redshift is configured to support case sensitive schema
    #   names, set `CaseSensitiveNames` to `true`. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] comp_update
    #   If you set `CompUpdate` to `true` Amazon Redshift applies automatic
    #   compression if the table is empty. This applies even if the table
    #   columns already have encodings other than `RAW`. If you set
    #   `CompUpdate` to `false`, automatic compression is disabled and
    #   existing column encodings aren't changed. The default is `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] connection_timeout
    #   A value that sets the amount of time to wait (in milliseconds)
    #   before timing out, beginning from when you initially establish a
    #   connection.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The name of the Amazon Redshift data warehouse (service) that you
    #   are working with.
    #   @return [String]
    #
    # @!attribute [rw] date_format
    #   The date format that you are using. Valid values are `auto`
    #   (case-sensitive), your date format string enclosed in quotes, or
    #   NULL. If this parameter is left unset (NULL), it defaults to a
    #   format of 'YYYY-MM-DD'. Using `auto` recognizes most strings, even
    #   some that aren't supported when you use a date format string.
    #
    #   If your date and time values use formats different from each other,
    #   set this to `auto`.
    #   @return [String]
    #
    # @!attribute [rw] empty_as_null
    #   A value that specifies whether DMS should migrate empty CHAR and
    #   VARCHAR fields as NULL. A value of `true` sets empty CHAR and
    #   VARCHAR fields to null. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] encryption_mode
    #   The type of server-side encryption that you want to use for your
    #   data. This encryption type is part of the endpoint settings or the
    #   extra connections attributes for Amazon S3. You can choose either
    #   `SSE_S3` (the default) or `SSE_KMS`.
    #
    #   <note markdown="1"> For the `ModifyEndpoint` operation, you can change the existing
    #   value of the `EncryptionMode` parameter from `SSE_KMS` to `SSE_S3`.
    #   But you can’t change the existing value from `SSE_S3` to `SSE_KMS`.
    #
    #    </note>
    #
    #   To use `SSE_S3`, create an Identity and Access Management (IAM) role
    #   with a policy that allows `"arn:aws:s3:::*"` to use the following
    #   actions: `"s3:PutObject", "s3:ListBucket"`
    #   @return [String]
    #
    # @!attribute [rw] explicit_ids
    #   This setting is only valid for a full-load migration task. Set
    #   `ExplicitIds` to `true` to have tables with `IDENTITY` columns
    #   override their auto-generated values with explicit values loaded
    #   from the source data files used to populate the tables. The default
    #   is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] file_transfer_upload_streams
    #   The number of threads used to upload a single file. This parameter
    #   accepts a value from 1 through 64. It defaults to 10.
    #
    #   The number of parallel streams used to upload a single .csv file to
    #   an S3 bucket using S3 Multipart Upload. For more information, see
    #   [Multipart upload overview][1].
    #
    #   `FileTransferUploadStreams` accepts a value from 1 through 64. It
    #   defaults to 10.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html
    #   @return [Integer]
    #
    # @!attribute [rw] load_timeout
    #   The amount of time to wait (in milliseconds) before timing out of
    #   operations performed by DMS on a Redshift cluster, such as Redshift
    #   COPY, INSERT, DELETE, and UPDATE.
    #   @return [Integer]
    #
    # @!attribute [rw] max_file_size
    #   The maximum size (in KB) of any .csv file used to load data on an S3
    #   bucket and transfer data to Amazon Redshift. It defaults to
    #   1048576KB (1 GB).
    #   @return [Integer]
    #
    # @!attribute [rw] password
    #   The password for the user named in the `username` property.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number for Amazon Redshift. The default value is 5439.
    #   @return [Integer]
    #
    # @!attribute [rw] remove_quotes
    #   A value that specifies to remove surrounding quotation marks from
    #   strings in the incoming data. All characters within the quotation
    #   marks, including delimiters, are retained. Choose `true` to remove
    #   quotation marks. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] replace_invalid_chars
    #   A list of characters that you want to replace. Use with
    #   `ReplaceChars`.
    #   @return [String]
    #
    # @!attribute [rw] replace_chars
    #   A value that specifies to replaces the invalid characters specified
    #   in `ReplaceInvalidChars`, substituting the specified characters
    #   instead. The default is `"?"`.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name of the Amazon Redshift cluster you are using.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role that has access to
    #   the Amazon Redshift service. The role must allow the `iam:PassRole`
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_kms_key_id
    #   The KMS key ID. If you are using `SSE_KMS` for the `EncryptionMode`,
    #   provide this key ID. The key that you use needs an attached policy
    #   that enables IAM user permissions and allows use of the key.
    #   @return [String]
    #
    # @!attribute [rw] time_format
    #   The time format that you want to use. Valid values are `auto`
    #   (case-sensitive), `'timeformat_string'`, `'epochsecs'`, or
    #   `'epochmillisecs'`. It defaults to 10. Using `auto` recognizes most
    #   strings, even some that aren't supported when you use a time format
    #   string.
    #
    #   If your date and time values use formats different from each other,
    #   set this parameter to `auto`.
    #   @return [String]
    #
    # @!attribute [rw] trim_blanks
    #   A value that specifies to remove the trailing white space characters
    #   from a VARCHAR string. This parameter applies only to columns with a
    #   VARCHAR data type. Choose `true` to remove unneeded white space. The
    #   default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] truncate_columns
    #   A value that specifies to truncate data in columns to the
    #   appropriate number of characters, so that the data fits in the
    #   column. This parameter applies only to columns with a VARCHAR or
    #   CHAR data type, and rows with a size of 4 MB or less. Choose `true`
    #   to truncate data. The default is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] username
    #   An Amazon Redshift user name for a registered user.
    #   @return [String]
    #
    # @!attribute [rw] write_buffer_size
    #   The size (in KB) of the in-memory file write buffer used when
    #   generating .csv files on the local disk at the DMS replication
    #   instance. The default value is 1000 (buffer size is 1000KB).
    #   @return [Integer]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   Amazon Redshift endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the Amazon Redshift endpoint
    #   connection details.
    #   @return [String]
    #
    # @!attribute [rw] map_boolean_as_boolean
    #   When true, lets Redshift migrate the boolean type as boolean. By
    #   default, Redshift migrates booleans as `varchar(1)`. You must set
    #   this setting on both the source and target endpoints for it to take
    #   effect.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RedshiftSettings AWS API Documentation
    #
    class RedshiftSettings < Struct.new(
      :accept_any_date,
      :after_connect_script,
      :bucket_folder,
      :bucket_name,
      :case_sensitive_names,
      :comp_update,
      :connection_timeout,
      :database_name,
      :date_format,
      :empty_as_null,
      :encryption_mode,
      :explicit_ids,
      :file_transfer_upload_streams,
      :load_timeout,
      :max_file_size,
      :password,
      :port,
      :remove_quotes,
      :replace_invalid_chars,
      :replace_chars,
      :server_name,
      :service_access_role_arn,
      :server_side_encryption_kms_key_id,
      :time_format,
      :trim_blanks,
      :truncate_columns,
      :username,
      :write_buffer_size,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      :map_boolean_as_boolean)
      SENSITIVE = [:password]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RefreshSchemasMessage AWS API Documentation
    #
    class RefreshSchemasMessage < Struct.new(
      :endpoint_arn,
      :replication_instance_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes status of a schema at an endpoint
    # specified by the `DescribeRefreshSchemaStatus` operation.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication config for which to
    #   reload tables.
    #   @return [String]
    #
    # @!attribute [rw] tables_to_reload
    #   The list of tables to reload.
    #   @return [Array<Types::TableToReload>]
    #
    # @!attribute [rw] reload_option
    #   Options for reload. Specify `data-reload` to reload the data and
    #   re-validate it if validation is enabled. Specify `validate-only` to
    #   re-validate the table. This option applies only when validation is
    #   enabled for the replication.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadReplicationTablesMessage AWS API Documentation
    #
    class ReloadReplicationTablesMessage < Struct.new(
      :replication_config_arn,
      :tables_to_reload,
      :reload_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication config for which to
    #   reload tables.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReloadReplicationTablesResponse AWS API Documentation
    #
    class ReloadReplicationTablesResponse < Struct.new(
      :replication_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Removes one or more tags from an DMS resource.
    #
    # @!attribute [rw] resource_arn
    #   An DMS resource from which you want to remove tag(s). The value for
    #   this parameter is an Amazon Resource Name (ARN).
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RemoveTagsFromResourceResponse AWS API Documentation
    #
    class RemoveTagsFromResourceResponse < Aws::EmptyStructure; end

    # Provides information that describes a serverless replication created
    # by the `CreateReplication` operation.
    #
    # @!attribute [rw] replication_config_identifier
    #   The identifier for the `ReplicationConfig` associated with the
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name for the `ReplicationConfig` associated with
    #   the replication.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name for an existing `Endpoint` the serverless
    #   replication uses for its data source.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name for an existing `Endpoint` the serverless
    #   replication uses for its data target.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   The type of the serverless replication.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the serverless replication.
    #   @return [String]
    #
    # @!attribute [rw] provision_data
    #   Information about provisioning resources for an DMS serverless
    #   replication.
    #   @return [Types::ProvisionData]
    #
    # @!attribute [rw] premigration_assessment_statuses
    #   The status output of premigration assessment in
    #   describe-replications.
    #   @return [Array<Types::PremigrationAssessmentStatus>]
    #
    # @!attribute [rw] stop_reason
    #   The reason the replication task was stopped. This response parameter
    #   can return one of the following values:
    #
    #   * `"Stop Reason NORMAL"`
    #
    #   * `"Stop Reason RECOVERABLE_ERROR"`
    #
    #   * `"Stop Reason FATAL_ERROR"`
    #
    #   * `"Stop Reason FULL_LOAD_ONLY_FINISHED"`
    #
    #   * `"Stop Reason STOPPED_AFTER_FULL_LOAD"` – Full load completed,
    #     with cached changes not applied
    #
    #   * `"Stop Reason STOPPED_AFTER_CACHED_EVENTS"` – Full load completed,
    #     with cached changes applied
    #
    #   * `"Stop Reason EXPRESS_LICENSE_LIMITS_REACHED"`
    #
    #   * `"Stop Reason STOPPED_AFTER_DDL_APPLY"` – User-defined stop task
    #     after DDL applied
    #
    #   * `"Stop Reason STOPPED_DUE_TO_LOW_MEMORY"`
    #
    #   * `"Stop Reason STOPPED_DUE_TO_LOW_DISK"`
    #
    #   * `"Stop Reason STOPPED_AT_SERVER_TIME"` – User-defined server time
    #     for stopping task
    #
    #   * `"Stop Reason STOPPED_AT_COMMIT_TIME"` – User-defined commit time
    #     for stopping task
    #
    #   * `"Stop Reason RECONFIGURATION_RESTART"`
    #
    #   * `"Stop Reason RECYCLE_TASK"`
    #   @return [String]
    #
    # @!attribute [rw] failure_messages
    #   Error and other information about why a serverless replication
    #   failed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_stats
    #   This object provides a collection of statistics about a serverless
    #   replication.
    #   @return [Types::ReplicationStats]
    #
    # @!attribute [rw] start_replication_type
    #   The type of replication to start.
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either `CdcStartTime` or `CdcStartPosition` to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either `CdcStartTime` or `CdcStartPosition` to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #   @return [String]
    #
    # @!attribute [rw] recovery_checkpoint
    #   Indicates the last checkpoint that occurred during a change data
    #   capture (CDC) operation. You can provide this value to the
    #   `CdcStartPosition` parameter to start a CDC operation that begins at
    #   that checkpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_create_time
    #   The time the serverless replication was created.
    #   @return [Time]
    #
    # @!attribute [rw] replication_update_time
    #   The time the serverless replication was updated.
    #   @return [Time]
    #
    # @!attribute [rw] replication_last_stop_time
    #   The timestamp when replication was last stopped.
    #   @return [Time]
    #
    # @!attribute [rw] replication_deprovision_time
    #   The timestamp when DMS will deprovision the replication.
    #   @return [Time]
    #
    # @!attribute [rw] is_read_only
    #   Indicates whether the serverless replication is read-only. When set
    #   to `true`, this replication is managed by DMS as part of a zero-ETL
    #   integration and cannot be modified or deleted directly. You can only
    #   modify or delete read-only replications through their associated
    #   zero-ETL integration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Replication AWS API Documentation
    #
    class Replication < Struct.new(
      :replication_config_identifier,
      :replication_config_arn,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_type,
      :status,
      :provision_data,
      :premigration_assessment_statuses,
      :stop_reason,
      :failure_messages,
      :replication_stats,
      :start_replication_type,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      :recovery_checkpoint,
      :replication_create_time,
      :replication_update_time,
      :replication_last_stop_time,
      :replication_deprovision_time,
      :is_read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object provides configuration information about a serverless
    # replication.
    #
    # @!attribute [rw] replication_config_identifier
    #   The identifier for the `ReplicationConfig` associated with the
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name (ARN) of this DMS Serverless replication
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) of the source endpoint for this DMS
    #   serverless replication configuration.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The Amazon Resource Name (ARN) of the target endpoint for this DMS
    #   serverless replication configuration.
    #   @return [String]
    #
    # @!attribute [rw] replication_type
    #   The type of the replication.
    #   @return [String]
    #
    # @!attribute [rw] compute_config
    #   Configuration parameters for provisioning an DMS serverless
    #   replication.
    #   @return [Types::ComputeConfig]
    #
    # @!attribute [rw] replication_settings
    #   Configuration parameters for an DMS serverless replication.
    #   @return [String]
    #
    # @!attribute [rw] supplemental_settings
    #   Additional parameters for an DMS serverless replication.
    #   @return [String]
    #
    # @!attribute [rw] table_mappings
    #   Table mappings specified in the replication.
    #   @return [String]
    #
    # @!attribute [rw] replication_config_create_time
    #   The time the serverless replication config was created.
    #   @return [Time]
    #
    # @!attribute [rw] replication_config_update_time
    #   The time the serverless replication config was updated.
    #   @return [Time]
    #
    # @!attribute [rw] is_read_only
    #   Indicates whether the replication configuration is read-only. When
    #   set to `true`, this replication configuration is managed by DMS as
    #   part of a zero-ETL integration and cannot be modified or deleted
    #   directly. You can only modify or delete read-only replication
    #   configurations through their associated zero-ETL integration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationConfig AWS API Documentation
    #
    class ReplicationConfig < Struct.new(
      :replication_config_identifier,
      :replication_config_arn,
      :source_endpoint_arn,
      :target_endpoint_arn,
      :replication_type,
      :compute_config,
      :replication_settings,
      :supplemental_settings,
      :table_mappings,
      :replication_config_create_time,
      :replication_config_update_time,
      :is_read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a replication instance.
    #
    # @!attribute [rw] replication_instance_identifier
    #   The replication instance identifier is a required parameter. This
    #   parameter is stored as a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain 1-63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   Example: `myrepinstance`
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance as
    #   defined for the specified replication instance class. It is a
    #   required parameter, although a default value is pre-selected in the
    #   DMS console.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   DMS replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_status
    #   The status of the replication instance. The possible return values
    #   include:
    #
    #   * `"available"`
    #
    #   * `"creating"`
    #
    #   * `"deleted"`
    #
    #   * `"deleting"`
    #
    #   * `"failed"`
    #
    #   * `"modifying"`
    #
    #   * `"upgrading"`
    #
    #   * `"rebooting"`
    #
    #   * `"resetting-master-credentials"`
    #
    #   * `"storage-full"`
    #
    #   * `"incompatible-credentials"`
    #
    #   * `"incompatible-network"`
    #
    #   * `"maintenance"`
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
    #   The maintenance window times for the replication instance. Any
    #   pending upgrades to the replication instance are performed during
    #   this time.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   The pending modification values.
    #   @return [Types::ReplicationPendingModifiedValues]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #
    #   If an engine version number is not specified when a replication
    #   instance is created, the default is the latest engine version
    #   available.
    #
    #   When modifying a major engine version of an instance, also set
    #   `AllowMajorVersionUpgrade` to `true`.
    #   @return [String]
    #
    # @!attribute [rw] auto_minor_version_upgrade
    #   Boolean value indicating if minor version upgrades will be
    #   automatically applied to the instance.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   An KMS key identifier that is used to encrypt the data on the
    #   replication instance.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then DMS
    #   uses your default encryption key.
    #
    #   KMS creates the default encryption key for your Amazon Web Services
    #   account. Your Amazon Web Services account has a different default
    #   encryption key for each Amazon Web Services Region.
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
    #   One or more public IP addresses for the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_instance_private_ip_addresses
    #   One or more private IP addresses for the replication instance.
    #   @return [Array<String>]
    #
    # @!attribute [rw] replication_instance_ipv_6_addresses
    #   One or more IPv6 addresses for the replication instance.
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
    #   The Availability Zone of the standby replication instance in a
    #   Multi-AZ deployment.
    #   @return [String]
    #
    # @!attribute [rw] free_until
    #   The expiration date of the free replication instance that is part of
    #   the Free DMS program.
    #   @return [Time]
    #
    # @!attribute [rw] dns_name_servers
    #   The DNS name servers supported for the replication instance to
    #   access your on-premise source or target database.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The type of IP address protocol used by a replication instance, such
    #   as IPv4 only or Dual-stack that supports both IPv4 and IPv6
    #   addressing. IPv6 only is not yet supported.
    #   @return [String]
    #
    # @!attribute [rw] kerberos_authentication_settings
    #   Specifies the settings required for kerberos authentication when
    #   replicating an instance.
    #   @return [Types::KerberosAuthenticationSettings]
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
      :replication_instance_ipv_6_addresses,
      :publicly_accessible,
      :secondary_availability_zone,
      :free_until,
      :dns_name_servers,
      :network_type,
      :kerberos_authentication_settings)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the values of pending modifications to a
    # replication instance. This data type is an object of the [
    # `ReplicationInstance` ][1] user-defined data type.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html
    #
    # @!attribute [rw] replication_instance_class
    #   The compute and memory capacity of the replication instance as
    #   defined for the specified replication instance class.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   DMS replication instance for your migration][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth
    #   @return [String]
    #
    # @!attribute [rw] allocated_storage
    #   The amount of storage (in gigabytes) that is allocated for the
    #   replication instance.
    #   @return [Integer]
    #
    # @!attribute [rw] multi_az
    #   Specifies whether the replication instance is a Multi-AZ deployment.
    #   You can't set the `AvailabilityZone` parameter if the Multi-AZ
    #   parameter is set to `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] engine_version
    #   The engine version number of the replication instance.
    #   @return [String]
    #
    # @!attribute [rw] network_type
    #   The type of IP address protocol used by a replication instance, such
    #   as IPv4 only or Dual-stack that supports both IPv4 and IPv6
    #   addressing. IPv6 only is not yet supported.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationPendingModifiedValues AWS API Documentation
    #
    class ReplicationPendingModifiedValues < Struct.new(
      :replication_instance_class,
      :allocated_storage,
      :multi_az,
      :engine_version,
      :network_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # This object provides a collection of statistics about a serverless
    # replication.
    #
    # @!attribute [rw] full_load_progress_percent
    #   The percent complete for the full load serverless replication.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_millis
    #   The elapsed time of the replication, in milliseconds.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_loaded
    #   The number of tables loaded for this replication.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_loading
    #   The number of tables currently loading for this replication.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_queued
    #   The number of tables queued for this replication.
    #   @return [Integer]
    #
    # @!attribute [rw] tables_errored
    #   The number of errors that have occured for this replication.
    #   @return [Integer]
    #
    # @!attribute [rw] fresh_start_date
    #   The date the replication was started either with a fresh start or a
    #   target reload.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The date the replication is scheduled to start.
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   The date the replication was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_start_date
    #   The date the replication full load was started.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_finish_date
    #   The date the replication full load was finished.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationStats AWS API Documentation
    #
    class ReplicationStats < Struct.new(
      :full_load_progress_percent,
      :elapsed_time_millis,
      :tables_loaded,
      :tables_loading,
      :tables_queued,
      :tables_errored,
      :fresh_start_date,
      :start_date,
      :stop_date,
      :full_load_start_date,
      :full_load_finish_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a subnet group in response to a request by the
    # `DescribeReplicationSubnetGroups` operation.
    #
    # @!attribute [rw] replication_subnet_group_identifier
    #   The identifier of the replication instance subnet group.
    #   @return [String]
    #
    # @!attribute [rw] replication_subnet_group_description
    #   A description for the replication subnet group.
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
    # @!attribute [rw] supported_network_types
    #   The IP addressing protocol supported by the subnet group. This is
    #   used by a replication instance with values such as IPv4 only or
    #   Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is
    #   not yet supported.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_read_only
    #   Indicates whether the replication subnet group is read-only. When
    #   set to `true`, this subnet group is managed by DMS as part of a
    #   zero-ETL integration and cannot be modified or deleted directly. You
    #   can only modify or delete read-only subnet groups through their
    #   associated zero-ETL integration.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationSubnetGroup AWS API Documentation
    #
    class ReplicationSubnetGroup < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :supported_network_types,
      :is_read_only)
      SENSITIVE = []
      include Aws::Structure
    end

    # The replication subnet group does not cover enough Availability Zones
    # (AZs). Edit the replication subnet group and add more AZs.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationSubnetGroupDoesNotCoverEnoughAZs AWS API Documentation
    #
    class ReplicationSubnetGroupDoesNotCoverEnoughAZs < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes a replication task created by the
    # `CreateReplicationTask` operation.
    #
    # @!attribute [rw] replication_task_identifier
    #   The user-assigned replication task identifier or name.
    #
    #   Constraints:
    #
    #   * Must contain 1-255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] source_endpoint_arn
    #   The Amazon Resource Name (ARN) that uniquely identifies the
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] target_endpoint_arn
    #   The ARN that uniquely identifies the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_arn
    #   The ARN of the replication instance.
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
    #   The status of the replication task. This response parameter can
    #   return one of the following values:
    #
    #   * `"moving"` – The task is being moved in response to running the [
    #     `MoveReplicationTask` ][1] operation.
    #
    #   * `"creating"` – The task is being created in response to running
    #     the [ `CreateReplicationTask` ][2] operation.
    #
    #   * `"deleting"` – The task is being deleted in response to running
    #     the [ `DeleteReplicationTask` ][3] operation.
    #
    #   * `"failed"` – The task failed to successfully complete the database
    #     migration in response to running the [ `StartReplicationTask` ][4]
    #     operation.
    #
    #   * `"failed-move"` – The task failed to move in response to running
    #     the [ `MoveReplicationTask` ][1] operation.
    #
    #   * `"modifying"` – The task definition is being modified in response
    #     to running the [ `ModifyReplicationTask` ][5] operation.
    #
    #   * `"ready"` – The task is in a `ready` state where it can respond to
    #     other task operations, such as [ `StartReplicationTask` ][4] or [
    #     `DeleteReplicationTask` ][3].
    #
    #   * `"running"` – The task is performing a database migration in
    #     response to running the [ `StartReplicationTask` ][4] operation.
    #
    #   * `"starting"` – The task is preparing to perform a database
    #     migration in response to running the [ `StartReplicationTask` ][4]
    #     operation.
    #
    #   * `"stopped"` – The task has stopped in response to running the [
    #     `StopReplicationTask` ][6] operation.
    #
    #   * `"stopping"` – The task is preparing to stop in response to
    #     running the [ `StopReplicationTask` ][6] operation.
    #
    #   * `"testing"` – The database migration specified for this task is
    #     being tested in response to running either the [
    #     `StartReplicationTaskAssessmentRun` ][7] or the [
    #     `StartReplicationTaskAssessment` ][8] operation.
    #
    #     <note markdown="1"> [ `StartReplicationTaskAssessmentRun` ][7] is an improved
    #     premigration task assessment operation. The [
    #     `StartReplicationTaskAssessment` ][8] operation assesses data type
    #     compatibility only between the source and target database of a
    #     given migration task. In contrast, [
    #     `StartReplicationTaskAssessmentRun` ][7] enables you to specify a
    #     variety of premigration task assessments in addition to data type
    #     compatibility. These assessments include ones for the validity of
    #     primary key definitions and likely issues with database migration
    #     performance, among others.
    #
    #      </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html
    #   [3]: https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html
    #   [4]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html
    #   [5]: https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html
    #   [6]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html
    #   [7]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html
    #   [8]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html
    #   @return [String]
    #
    # @!attribute [rw] last_failure_message
    #   The last error (failure) message generated for the replication task.
    #   @return [String]
    #
    # @!attribute [rw] stop_reason
    #   The reason the replication task was stopped. This response parameter
    #   can return one of the following values:
    #
    #   * `"Stop Reason NORMAL"` – The task completed successfully with no
    #     additional information returned.
    #
    #   * `"Stop Reason RECOVERABLE_ERROR"`
    #
    #   * `"Stop Reason FATAL_ERROR"`
    #
    #   * `"Stop Reason FULL_LOAD_ONLY_FINISHED"` – The task completed the
    #     full load phase. DMS applied cached changes if you set
    #     `StopTaskCachedChangesApplied` to `true`.
    #
    #   * `"Stop Reason STOPPED_AFTER_FULL_LOAD"` – Full load completed,
    #     with cached changes not applied
    #
    #   * `"Stop Reason STOPPED_AFTER_CACHED_EVENTS"` – Full load completed,
    #     with cached changes applied
    #
    #   * `"Stop Reason EXPRESS_LICENSE_LIMITS_REACHED"`
    #
    #   * `"Stop Reason STOPPED_AFTER_DDL_APPLY"` – User-defined stop task
    #     after DDL applied
    #
    #   * `"Stop Reason STOPPED_DUE_TO_LOW_MEMORY"`
    #
    #   * `"Stop Reason STOPPED_DUE_TO_LOW_DISK"`
    #
    #   * `"Stop Reason STOPPED_AT_SERVER_TIME"` – User-defined server time
    #     for stopping task
    #
    #   * `"Stop Reason STOPPED_AT_COMMIT_TIME"` – User-defined commit time
    #     for stopping task
    #
    #   * `"Stop Reason RECONFIGURATION_RESTART"`
    #
    #   * `"Stop Reason RECYCLE_TASK"`
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
    #   start. Use either `CdcStartPosition` or `CdcStartTime` to specify
    #   when you want the CDC operation to start. Specifying both values
    #   results in an error.
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
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position
    #   “commit\_time:2018-02-09T12:12:12“
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
    # @!attribute [rw] task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
    #   @return [String]
    #
    # @!attribute [rw] target_replication_instance_arn
    #   The ARN of the replication instance to which this task is moved in
    #   response to running the [ `MoveReplicationTask` ][1] operation.
    #   Otherwise, this response parameter isn't a member of the
    #   `ReplicationTask` object.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html
    #   @return [String]
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
      :replication_task_stats,
      :task_data,
      :target_replication_instance_arn)
      SENSITIVE = []
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
    #
    #   The response object only contains this field if you provide
    #   DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn
    #   in the request.
    #   @return [String]
    #
    # @!attribute [rw] s3_object_url
    #   The URL of the S3 object containing the task assessment results.
    #
    #   The response object only contains this field if you provide
    #   DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn
    #   in the request.
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
      SENSITIVE = [:s3_object_url]
      include Aws::Structure
    end

    # Provides information that describes a premigration assessment run that
    # you have started using the `StartReplicationTaskAssessmentRun`
    # operation.
    #
    # Some of the information appears based on other operations that can
    # return the `ReplicationTaskAssessmentRun` object.
    #
    # @!attribute [rw] replication_task_assessment_run_arn
    #   Amazon Resource Name (ARN) of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_arn
    #   ARN of the migration task associated with this premigration
    #   assessment run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Assessment run status.
    #
    #   This status can have one of the following values:
    #
    #   * `"cancelling"` – The assessment run was canceled by the
    #     `CancelReplicationTaskAssessmentRun` operation.
    #
    #   * `"deleting"` – The assessment run was deleted by the
    #     `DeleteReplicationTaskAssessmentRun` operation.
    #
    #   * `"failed"` – At least one individual assessment completed with a
    #     `failed` status.
    #
    #   * `"error-provisioning"` – An internal error occurred while
    #     resources were provisioned (during `provisioning` status).
    #
    #   * `"error-executing"` – An internal error occurred while individual
    #     assessments ran (during `running` status).
    #
    #   * `"invalid state"` – The assessment run is in an unknown state.
    #
    #   * `"passed"` – All individual assessments have completed, and none
    #     has a `failed` status.
    #
    #   * `"provisioning"` – Resources required to run individual
    #     assessments are being provisioned.
    #
    #   * `"running"` – Individual assessments are being run.
    #
    #   * `"starting"` – The assessment run is starting, but resources are
    #     not yet being provisioned for individual assessments.
    #
    #   * `"warning"` – At least one individual assessment completed with a
    #     `warning` status or all individual assessments were skipped
    #     (completed with a `skipped` status).
    #   @return [String]
    #
    # @!attribute [rw] replication_task_assessment_run_creation_date
    #   Date on which the assessment run was created using the
    #   `StartReplicationTaskAssessmentRun` operation.
    #   @return [Time]
    #
    # @!attribute [rw] assessment_progress
    #   Indication of the completion progress for the individual assessments
    #   specified to run.
    #   @return [Types::ReplicationTaskAssessmentRunProgress]
    #
    # @!attribute [rw] last_failure_message
    #   Last message generated by an individual assessment failure.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   ARN of the service role used to start the assessment run using the
    #   `StartReplicationTaskAssessmentRun` operation. The role must allow
    #   the `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] result_location_bucket
    #   Amazon S3 bucket where DMS stores the results of this assessment
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_folder
    #   Folder in an Amazon S3 bucket where DMS stores the results of this
    #   assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_encryption_mode
    #   Encryption mode used to encrypt the assessment run results.
    #   @return [String]
    #
    # @!attribute [rw] result_kms_key_arn
    #   ARN of the KMS encryption key used to encrypt the assessment run
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_name
    #   Unique name of the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] is_latest_task_assessment_run
    #   Indicates that the following PreflightAssessmentRun is the latest
    #   for the ReplicationTask. The status is either true or false.
    #   @return [Boolean]
    #
    # @!attribute [rw] result_statistic
    #   Result statistics for a completed assessment run, showing aggregated
    #   statistics of IndividualAssessments for how many assessments were
    #   passed, failed, or encountered issues such as errors or warnings.
    #   @return [Types::ReplicationTaskAssessmentRunResultStatistic]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskAssessmentRun AWS API Documentation
    #
    class ReplicationTaskAssessmentRun < Struct.new(
      :replication_task_assessment_run_arn,
      :replication_task_arn,
      :status,
      :replication_task_assessment_run_creation_date,
      :assessment_progress,
      :last_failure_message,
      :service_access_role_arn,
      :result_location_bucket,
      :result_location_folder,
      :result_encryption_mode,
      :result_kms_key_arn,
      :assessment_run_name,
      :is_latest_task_assessment_run,
      :result_statistic)
      SENSITIVE = []
      include Aws::Structure
    end

    # The progress values reported by the `AssessmentProgress` response
    # element.
    #
    # @!attribute [rw] individual_assessment_count
    #   The number of individual assessments that are specified to run.
    #   @return [Integer]
    #
    # @!attribute [rw] individual_assessment_completed_count
    #   The number of individual assessments that have completed,
    #   successfully or not.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskAssessmentRunProgress AWS API Documentation
    #
    class ReplicationTaskAssessmentRunProgress < Struct.new(
      :individual_assessment_count,
      :individual_assessment_completed_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing the result statistics for a completed assessment
    # run.
    #
    # @!attribute [rw] passed
    #   The number of individual assessments that successfully passed all
    #   checks in the assessment run.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   The number of individual assessments that failed to meet the
    #   criteria defined in the assessment run.
    #   @return [Integer]
    #
    # @!attribute [rw] error
    #   The number of individual assessments that encountered a critical
    #   error and could not complete properly.
    #   @return [Integer]
    #
    # @!attribute [rw] warning
    #   Indicates that the recent completed AssessmentRun triggered a
    #   warning.
    #   @return [Integer]
    #
    # @!attribute [rw] cancelled
    #   The number of individual assessments that were cancelled during the
    #   assessment run.
    #   @return [Integer]
    #
    # @!attribute [rw] skipped
    #   The number of individual assessments that were skipped during the
    #   assessment run.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskAssessmentRunResultStatistic AWS API Documentation
    #
    class ReplicationTaskAssessmentRunResultStatistic < Struct.new(
      :passed,
      :failed,
      :error,
      :warning,
      :cancelled,
      :skipped)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes an individual assessment from a
    # premigration assessment run.
    #
    # @!attribute [rw] replication_task_individual_assessment_arn
    #   Amazon Resource Name (ARN) of this individual assessment.
    #   @return [String]
    #
    # @!attribute [rw] replication_task_assessment_run_arn
    #   ARN of the premigration assessment run that is created to run this
    #   individual assessment.
    #   @return [String]
    #
    # @!attribute [rw] individual_assessment_name
    #   Name of this individual assessment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Individual assessment status.
    #
    #   This status can have one of the following values:
    #
    #   * `"cancelled"`
    #
    #   * `"error"`
    #
    #   * `"failed"`
    #
    #   * `"passed"`
    #
    #   * `"pending"`
    #
    #   * `"skipped"`
    #
    #   * `"running"`
    #   @return [String]
    #
    # @!attribute [rw] replication_task_individual_assessment_start_date
    #   Date when this individual assessment was started as part of running
    #   the `StartReplicationTaskAssessmentRun` operation.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskIndividualAssessment AWS API Documentation
    #
    class ReplicationTaskIndividualAssessment < Struct.new(
      :replication_task_individual_assessment_arn,
      :replication_task_assessment_run_arn,
      :individual_assessment_name,
      :status,
      :replication_task_individual_assessment_start_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # In response to a request by the `DescribeReplicationTasks` operation,
    # this object provides a collection of statistics about a replication
    # task.
    #
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
    # @!attribute [rw] fresh_start_date
    #   The date the replication task was started either with a fresh start
    #   or a target reload.
    #   @return [Time]
    #
    # @!attribute [rw] start_date
    #   The date the replication task was started either with a fresh start
    #   or a resume. For more information, see
    #   [StartReplicationTaskType][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType
    #   @return [Time]
    #
    # @!attribute [rw] stop_date
    #   The date the replication task was stopped.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_start_date
    #   The date the replication task full load was started.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_finish_date
    #   The date the replication task full load was completed.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationTaskStats AWS API Documentation
    #
    class ReplicationTaskStats < Struct.new(
      :full_load_progress_percent,
      :elapsed_time_millis,
      :tables_loaded,
      :tables_loading,
      :tables_queued,
      :tables_errored,
      :fresh_start_date,
      :start_date,
      :stop_date,
      :full_load_start_date,
      :full_load_finish_date)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource you are attempting to create already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ResourceAlreadyExistsFault AWS API Documentation
    #
    class ResourceAlreadyExistsFault < Struct.new(
      :message,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ResourceNotFoundFault AWS API Documentation
    #
    class ResourceNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Identifies an DMS resource and any pending actions for it.
    #
    # @!attribute [rw] resource_identifier
    #   The Amazon Resource Name (ARN) of the DMS resource that the pending
    #   maintenance action applies to. For information about creating an
    #   ARN, see [ Constructing an Amazon Resource Name (ARN) for DMS][1] in
    #   the DMS documentation.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html
    #   @return [String]
    #
    # @!attribute [rw] pending_maintenance_action_details
    #   Detailed information about the pending maintenance action.
    #   @return [Array<Types::PendingMaintenanceAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ResourcePendingMaintenanceActions AWS API Documentation
    #
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quota for this resource quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ResourceQuotaExceededFault AWS API Documentation
    #
    class ResourceQuotaExceededFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] lsa_analysis_id
    #   The ID of the LSA analysis run.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the LSA analysis, for example `COMPLETED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/RunFleetAdvisorLsaAnalysisResponse AWS API Documentation
    #
    class RunFleetAdvisorLsaAnalysisResponse < Struct.new(
      :lsa_analysis_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Insufficient privileges are preventing access to an Amazon S3 object.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/S3AccessDeniedFault AWS API Documentation
    #
    class S3AccessDeniedFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A specified Amazon S3 bucket, bucket folder, or other object can't be
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/S3ResourceNotFoundFault AWS API Documentation
    #
    class S3ResourceNotFoundFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Settings for exporting data to Amazon S3.
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service to access the IAM
    #   role. The role must allow the `iam:PassRole` action. It is a
    #   required parameter that enables DMS to write and read objects from
    #   an S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   Specifies how tables are defined in the S3 source files only.
    #   @return [String]
    #
    # @!attribute [rw] csv_row_delimiter
    #   The delimiter used to separate rows in the .csv file for both source
    #   and target. The default is a carriage return (`\n`).
    #   @return [String]
    #
    # @!attribute [rw] csv_delimiter
    #   The delimiter used to separate columns in the .csv file for both
    #   source and target. The default is a comma.
    #   @return [String]
    #
    # @!attribute [rw] bucket_folder
    #   An optional parameter to set a folder name in the S3 bucket. If
    #   provided, tables are created in the path `
    #   bucketFolder/schema_name/table_name/`. If this parameter isn't
    #   specified, then the path used is ` schema_name/table_name/`.
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] compression_type
    #   An optional parameter to use GZIP to compress the target files. Set
    #   to GZIP to compress the target files. Either set this parameter to
    #   NONE (the default) or don't use it to leave the files uncompressed.
    #   This parameter applies to both .csv and .parquet file formats.
    #   @return [String]
    #
    # @!attribute [rw] encryption_mode
    #   The type of server-side encryption that you want to use for your
    #   data. This encryption type is part of the endpoint settings or the
    #   extra connections attributes for Amazon S3. You can choose either
    #   `SSE_S3` (the default) or `SSE_KMS`.
    #
    #   <note markdown="1"> For the `ModifyEndpoint` operation, you can change the existing
    #   value of the `EncryptionMode` parameter from `SSE_KMS` to `SSE_S3`.
    #   But you can’t change the existing value from `SSE_S3` to `SSE_KMS`.
    #
    #    </note>
    #
    #   To use `SSE_S3`, you need an Identity and Access Management (IAM)
    #   role with permission to allow `"arn:aws:s3:::dms-*"` to use the
    #   following actions:
    #
    #   * `s3:CreateBucket`
    #
    #   * `s3:ListBucket`
    #
    #   * `s3:DeleteBucket`
    #
    #   * `s3:GetBucketLocation`
    #
    #   * `s3:GetObject`
    #
    #   * `s3:PutObject`
    #
    #   * `s3:DeleteObject`
    #
    #   * `s3:GetObjectVersion`
    #
    #   * `s3:GetBucketPolicy`
    #
    #   * `s3:PutBucketPolicy`
    #
    #   * `s3:DeleteBucketPolicy`
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_kms_key_id
    #   If you are using `SSE_KMS` for the `EncryptionMode`, provide the KMS
    #   key ID. The key that you use needs an attached policy that enables
    #   Identity and Access Management (IAM) user permissions and allows use
    #   of the key.
    #
    #   Here is a CLI example: `aws dms create-endpoint
    #   --endpoint-identifier value --endpoint-type target --engine-name s3
    #   --s3-settings
    #   ServiceAccessRoleArn=value,BucketFolder=value,BucketName=value,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=value
    #   `
    #   @return [String]
    #
    # @!attribute [rw] data_format
    #   The format of the data that you want to use for output. You can
    #   choose one of the following:
    #
    #   * `csv` : This is a row-based file format with comma-separated
    #     values (.csv).
    #
    #   * `parquet` : Apache Parquet (.parquet) is a columnar storage file
    #     format that features efficient compression and provides faster
    #     query response.
    #   @return [String]
    #
    # @!attribute [rw] encoding_type
    #   The type of encoding you are using:
    #
    #   * `RLE_DICTIONARY` uses a combination of bit-packing and run-length
    #     encoding to store repeated values more efficiently. This is the
    #     default.
    #
    #   * `PLAIN` doesn't use encoding at all. Values are stored as they
    #     are.
    #
    #   * `PLAIN_DICTIONARY` builds a dictionary of the values encountered
    #     in a given column. The dictionary is stored in a dictionary page
    #     for each column chunk.
    #   @return [String]
    #
    # @!attribute [rw] dict_page_size_limit
    #   The maximum size of an encoded dictionary page of a column. If the
    #   dictionary page exceeds this, this column is stored using an
    #   encoding type of `PLAIN`. This parameter defaults to 1024 * 1024
    #   bytes (1 MiB), the maximum size of a dictionary page before it
    #   reverts to `PLAIN` encoding. This size is used for .parquet file
    #   format only.
    #   @return [Integer]
    #
    # @!attribute [rw] row_group_length
    #   The number of rows in a row group. A smaller row group size provides
    #   faster reads. But as the number of row groups grows, the slower
    #   writes become. This parameter defaults to 10,000 rows. This number
    #   is used for .parquet file format only.
    #
    #   If you choose a value larger than the maximum, `RowGroupLength` is
    #   set to the max row group length in bytes (64 * 1024 * 1024).
    #   @return [Integer]
    #
    # @!attribute [rw] data_page_size
    #   The size of one data page in bytes. This parameter defaults to 1024
    #   * 1024 bytes (1 MiB). This number is used for .parquet file format
    #   only.
    #   @return [Integer]
    #
    # @!attribute [rw] parquet_version
    #   The version of the Apache Parquet format that you want to use:
    #   `parquet_1_0` (the default) or `parquet_2_0`.
    #   @return [String]
    #
    # @!attribute [rw] enable_statistics
    #   A value that enables statistics for Parquet pages and row groups.
    #   Choose `true` to enable statistics, `false` to disable. Statistics
    #   include `NULL`, `DISTINCT`, `MAX`, and `MIN` values. This parameter
    #   defaults to `true`. This value is used for .parquet file format
    #   only.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_op_for_full_load
    #   A value that enables a full load to write INSERT operations to the
    #   comma-separated value (.csv) or .parquet output files only to
    #   indicate how the rows were added to the source database.
    #
    #   <note markdown="1"> DMS supports the `IncludeOpForFullLoad` parameter in versions 3.1.4
    #   and later.
    #
    #    DMS supports the use of the .parquet files with the
    #   `IncludeOpForFullLoad` parameter in versions 3.4.7 and later.
    #
    #    </note>
    #
    #   For full load, records can only be inserted. By default (the `false`
    #   setting), no information is recorded in these output files for a
    #   full load to indicate that the rows were inserted at the source
    #   database. If `IncludeOpForFullLoad` is set to `true` or `y`, the
    #   INSERT is recorded as an I annotation in the first field of the .csv
    #   file. This allows the format of your target records from a full load
    #   to be consistent with the target records from a CDC load.
    #
    #   <note markdown="1"> This setting works together with the `CdcInsertsOnly` and the
    #   `CdcInsertsAndUpdates` parameters for output to .csv files only. For
    #   more information about how these settings work together, see
    #   [Indicating Source DB Operations in Migrated S3 Data][1] in the
    #   *Database Migration Service User Guide.*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps
    #   @return [Boolean]
    #
    # @!attribute [rw] cdc_inserts_only
    #   A value that enables a change data capture (CDC) load to write only
    #   INSERT operations to .csv or columnar storage (.parquet) output
    #   files. By default (the `false` setting), the first field in a .csv
    #   or .parquet record contains the letter I (INSERT), U (UPDATE), or D
    #   (DELETE). These values indicate whether the row was inserted,
    #   updated, or deleted at the source database for a CDC load to the
    #   target.
    #
    #   If `CdcInsertsOnly` is set to `true` or `y`, only INSERTs from the
    #   source database are migrated to the .csv or .parquet file. For .csv
    #   format only, how these INSERTs are recorded depends on the value of
    #   `IncludeOpForFullLoad`. If `IncludeOpForFullLoad` is set to `true`,
    #   the first field of every CDC record is set to I to indicate the
    #   INSERT operation at the source. If `IncludeOpForFullLoad` is set to
    #   `false`, every CDC record is written without a first field to
    #   indicate the INSERT operation at the source. For more information
    #   about how these settings work together, see [Indicating Source DB
    #   Operations in Migrated S3 Data][1] in the *Database Migration
    #   Service User Guide.*.
    #
    #   <note markdown="1"> DMS supports the interaction described preceding between the
    #   `CdcInsertsOnly` and `IncludeOpForFullLoad` parameters in versions
    #   3.1.4 and later.
    #
    #    `CdcInsertsOnly` and `CdcInsertsAndUpdates` can't both be set to
    #   `true` for the same endpoint. Set either `CdcInsertsOnly` or
    #   `CdcInsertsAndUpdates` to `true` for the same endpoint, but not
    #   both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps
    #   @return [Boolean]
    #
    # @!attribute [rw] timestamp_column_name
    #   A value that when nonblank causes DMS to add a column with timestamp
    #   information to the endpoint data for an Amazon S3 target.
    #
    #   <note markdown="1"> DMS supports the `TimestampColumnName` parameter in versions 3.1.4
    #   and later.
    #
    #    </note>
    #
    #   DMS includes an additional `STRING` column in the .csv or .parquet
    #   object files of your migrated data when you set
    #   `TimestampColumnName` to a nonblank value.
    #
    #   For a full load, each row of this timestamp column contains a
    #   timestamp for when the data was transferred from the source to the
    #   target by DMS.
    #
    #   For a change data capture (CDC) load, each row of the timestamp
    #   column contains the timestamp for the commit of that row in the
    #   source database.
    #
    #   The string format for this timestamp column value is `yyyy-MM-dd
    #   HH:mm:ss.SSSSSS`. By default, the precision of this value is in
    #   microseconds. For a CDC load, the rounding of the precision depends
    #   on the commit timestamp supported by DMS for the source database.
    #
    #   When the `AddColumnName` parameter is set to `true`, DMS also
    #   includes a name for the timestamp column that you set with
    #   `TimestampColumnName`.
    #   @return [String]
    #
    # @!attribute [rw] parquet_timestamp_in_millisecond
    #   A value that specifies the precision of any `TIMESTAMP` column
    #   values that are written to an Amazon S3 object file in .parquet
    #   format.
    #
    #   <note markdown="1"> DMS supports the `ParquetTimestampInMillisecond` parameter in
    #   versions 3.1.4 and later.
    #
    #    </note>
    #
    #   When `ParquetTimestampInMillisecond` is set to `true` or `y`, DMS
    #   writes all `TIMESTAMP` columns in a .parquet formatted file with
    #   millisecond precision. Otherwise, DMS writes them with microsecond
    #   precision.
    #
    #   Currently, Amazon Athena and Glue can handle only millisecond
    #   precision for `TIMESTAMP` values. Set this parameter to `true` for
    #   S3 endpoint object files that are .parquet formatted only if you
    #   plan to query or process the data with Athena or Glue.
    #
    #   <note markdown="1"> DMS writes any `TIMESTAMP` column values written to an S3 file in
    #   .csv format with microsecond precision.
    #
    #    Setting `ParquetTimestampInMillisecond` has no effect on the string
    #   format of the timestamp column value that is inserted by setting the
    #   `TimestampColumnName` parameter.
    #
    #    </note>
    #   @return [Boolean]
    #
    # @!attribute [rw] cdc_inserts_and_updates
    #   A value that enables a change data capture (CDC) load to write
    #   INSERT and UPDATE operations to .csv or .parquet (columnar storage)
    #   output files. The default setting is `false`, but when
    #   `CdcInsertsAndUpdates` is set to `true` or `y`, only INSERTs and
    #   UPDATEs from the source database are migrated to the .csv or
    #   .parquet file.
    #
    #   DMS supports the use of the .parquet files in versions 3.4.7 and
    #   later.
    #
    #   How these INSERTs and UPDATEs are recorded depends on the value of
    #   the `IncludeOpForFullLoad` parameter. If `IncludeOpForFullLoad` is
    #   set to `true`, the first field of every CDC record is set to either
    #   `I` or `U` to indicate INSERT and UPDATE operations at the source.
    #   But if `IncludeOpForFullLoad` is set to `false`, CDC records are
    #   written without an indication of INSERT or UPDATE operations at the
    #   source. For more information about how these settings work together,
    #   see [Indicating Source DB Operations in Migrated S3 Data][1] in the
    #   *Database Migration Service User Guide.*.
    #
    #   <note markdown="1"> DMS supports the use of the `CdcInsertsAndUpdates` parameter in
    #   versions 3.3.1 and later.
    #
    #    `CdcInsertsOnly` and `CdcInsertsAndUpdates` can't both be set to
    #   `true` for the same endpoint. Set either `CdcInsertsOnly` or
    #   `CdcInsertsAndUpdates` to `true` for the same endpoint, but not
    #   both.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps
    #   @return [Boolean]
    #
    # @!attribute [rw] date_partition_enabled
    #   When set to `true`, this parameter partitions S3 bucket folders
    #   based on transaction commit dates. The default value is `false`. For
    #   more information about date-based folder partitioning, see [Using
    #   date-based folder partitioning][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.DatePartitioning
    #   @return [Boolean]
    #
    # @!attribute [rw] date_partition_sequence
    #   Identifies the sequence of the date format to use during folder
    #   partitioning. The default value is `YYYYMMDD`. Use this parameter
    #   when `DatePartitionedEnabled` is set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] date_partition_delimiter
    #   Specifies a date separating delimiter to use during folder
    #   partitioning. The default value is `SLASH`. Use this parameter when
    #   `DatePartitionedEnabled` is set to `true`.
    #   @return [String]
    #
    # @!attribute [rw] use_csv_no_sup_value
    #   This setting applies if the S3 output files during a change data
    #   capture (CDC) load are written in .csv format. If set to `true` for
    #   columns not included in the supplemental log, DMS uses the value
    #   specified by [ `CsvNoSupValue` ][1]. If not set or set to `false`,
    #   DMS uses the null value for these columns.
    #
    #   <note markdown="1"> This setting is supported in DMS versions 3.4.1 and later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CsvNoSupValue
    #   @return [Boolean]
    #
    # @!attribute [rw] csv_no_sup_value
    #   This setting only applies if your Amazon S3 output files during a
    #   change data capture (CDC) load are written in .csv format. If [
    #   `UseCsvNoSupValue` ][1] is set to true, specify a string value that
    #   you want DMS to use for all columns not included in the supplemental
    #   log. If you do not specify a string value, DMS uses the null value
    #   for these columns regardless of the `UseCsvNoSupValue` setting.
    #
    #   <note markdown="1"> This setting is supported in DMS versions 3.4.1 and later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-UseCsvNoSupValue
    #   @return [String]
    #
    # @!attribute [rw] preserve_transactions
    #   If set to `true`, DMS saves the transaction order for a change data
    #   capture (CDC) load on the Amazon S3 target specified by [ `CdcPath`
    #   ][1]. For more information, see [Capturing data changes (CDC)
    #   including transaction order on the S3 target][2].
    #
    #   <note markdown="1"> This setting is supported in DMS versions 3.4.2 and later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CdcPath
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath
    #   @return [Boolean]
    #
    # @!attribute [rw] cdc_path
    #   Specifies the folder path of CDC files. For an S3 source, this
    #   setting is required if a task captures change data; otherwise, it's
    #   optional. If `CdcPath` is set, DMS reads CDC files from this path
    #   and replicates the data changes to the target endpoint. For an S3
    #   target if you set [ `PreserveTransactions` ][1] to `true`, DMS
    #   verifies that you have set this parameter to a folder path on your
    #   S3 target where DMS can save the transaction order for the CDC load.
    #   DMS creates this CDC folder path in either your S3 target working
    #   directory or the S3 target location specified by [ `BucketFolder`
    #   ][2] and [ `BucketName` ][3].
    #
    #   For example, if you specify `CdcPath` as `MyChangedData`, and you
    #   specify `BucketName` as `MyTargetBucket` but do not specify
    #   `BucketFolder`, DMS creates the CDC folder path following:
    #   `MyTargetBucket/MyChangedData`.
    #
    #   If you specify the same `CdcPath`, and you specify `BucketName` as
    #   `MyTargetBucket` and `BucketFolder` as `MyTargetData`, DMS creates
    #   the CDC folder path following:
    #   `MyTargetBucket/MyTargetData/MyChangedData`.
    #
    #   For more information on CDC including transaction order on an S3
    #   target, see [Capturing data changes (CDC) including transaction
    #   order on the S3 target][4].
    #
    #   <note markdown="1"> This setting is supported in DMS versions 3.4.2 and later.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-PreserveTransactions
    #   [2]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketFolder
    #   [3]: https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketName
    #   [4]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath
    #   @return [String]
    #
    # @!attribute [rw] use_task_start_time_for_full_load_timestamp
    #   When set to true, this parameter uses the task start time as the
    #   timestamp column value instead of the time data is written to
    #   target. For full load, when `useTaskStartTimeForFullLoadTimestamp`
    #   is set to `true`, each row of the timestamp column contains the task
    #   start time. For CDC loads, each row of the timestamp column contains
    #   the transaction commit time.
    #
    #   When `useTaskStartTimeForFullLoadTimestamp` is set to `false`, the
    #   full load timestamp in the timestamp column increments with the time
    #   data arrives at the target.
    #   @return [Boolean]
    #
    # @!attribute [rw] canned_acl_for_objects
    #   A value that enables DMS to specify a predefined (canned) access
    #   control list for objects created in an Amazon S3 bucket as .csv or
    #   .parquet files. For more information about Amazon S3 canned ACLs,
    #   see [Canned ACL][1] in the *Amazon S3 Developer Guide.*
    #
    #   The default value is NONE. Valid values include NONE, PRIVATE,
    #   PUBLIC\_READ, PUBLIC\_READ\_WRITE, AUTHENTICATED\_READ,
    #   AWS\_EXEC\_READ, BUCKET\_OWNER\_READ, and
    #   BUCKET\_OWNER\_FULL\_CONTROL.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
    #   @return [String]
    #
    # @!attribute [rw] add_column_name
    #   An optional parameter that, when set to `true` or `y`, you can use
    #   to add column name information to the .csv output file.
    #
    #   The default value is `false`. Valid values are `true`, `false`, `y`,
    #   and `n`.
    #   @return [Boolean]
    #
    # @!attribute [rw] cdc_max_batch_interval
    #   Maximum length of the interval, defined in seconds, after which to
    #   output a file to Amazon S3.
    #
    #   When `CdcMaxBatchInterval` and `CdcMinFileSize` are both specified,
    #   the file write is triggered by whichever parameter condition is met
    #   first within an DMS CloudFormation template.
    #
    #   The default value is 60 seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] cdc_min_file_size
    #   Minimum file size, defined in kilobytes, to reach for a file output
    #   to Amazon S3.
    #
    #   When `CdcMinFileSize` and `CdcMaxBatchInterval` are both specified,
    #   the file write is triggered by whichever parameter condition is met
    #   first within an DMS CloudFormation template.
    #
    #   The default value is 32 MB.
    #   @return [Integer]
    #
    # @!attribute [rw] csv_null_value
    #   An optional parameter that specifies how DMS treats null values.
    #   While handling the null value, you can use this parameter to pass a
    #   user-defined string as null when writing to the target. For example,
    #   when target columns are nullable, you can use this option to
    #   differentiate between the empty string value and the null value. So,
    #   if you set this parameter value to the empty string ("" or ''),
    #   DMS treats the empty string as the null value instead of `NULL`.
    #
    #   The default value is `NULL`. Valid values include any valid string.
    #   @return [String]
    #
    # @!attribute [rw] ignore_header_rows
    #   When this value is set to 1, DMS ignores the first row header in a
    #   .csv file. A value of 1 turns on the feature; a value of 0 turns off
    #   the feature.
    #
    #   The default is 0.
    #   @return [Integer]
    #
    # @!attribute [rw] max_file_size
    #   A value that specifies the maximum size (in KB) of any .csv file to
    #   be created while migrating to an S3 target during full load.
    #
    #   The default value is 1,048,576 KB (1 GB). Valid values include 1 to
    #   1,048,576.
    #   @return [Integer]
    #
    # @!attribute [rw] rfc_4180
    #   For an S3 source, when this value is set to `true` or `y`, each
    #   leading double quotation mark has to be followed by an ending double
    #   quotation mark. This formatting complies with RFC 4180. When this
    #   value is set to `false` or `n`, string literals are copied to the
    #   target as is. In this case, a delimiter (row or column) signals the
    #   end of the field. Thus, you can't use a delimiter as part of the
    #   string, because it signals the end of the value.
    #
    #   For an S3 target, an optional parameter used to set behavior to
    #   comply with RFC 4180 for data migrated to Amazon S3 using .csv file
    #   format only. When this value is set to `true` or `y` using Amazon S3
    #   as a target, if the data has quotation marks or newline characters
    #   in it, DMS encloses the entire column with an additional pair of
    #   double quotation marks ("). Every quotation mark within the data is
    #   repeated twice.
    #
    #   The default value is `true`. Valid values include `true`, `false`,
    #   `y`, and `n`.
    #   @return [Boolean]
    #
    # @!attribute [rw] date_partition_timezone
    #   When creating an S3 target endpoint, set `DatePartitionTimezone` to
    #   convert the current UTC time into a specified time zone. The
    #   conversion occurs when a date partition folder is created and a CDC
    #   filename is generated. The time zone format is Area/Location. Use
    #   this parameter when `DatePartitionedEnabled` is set to true, as
    #   shown in the following example:
    #
    #   `s3-settings='{"DatePartitionEnabled": true,
    #   "DatePartitionSequence": "YYYYMMDDHH", "DatePartitionDelimiter":
    #   "SLASH", "DatePartitionTimezone":"Asia/Seoul", "BucketName":
    #   "dms-nattarat-test"}'`
    #   @return [String]
    #
    # @!attribute [rw] add_trailing_padding_character
    #   Use the S3 target endpoint setting `AddTrailingPaddingCharacter` to
    #   add padding on string data. The default value is `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] expected_bucket_owner
    #   To specify a bucket owner and prevent sniping, you can use the
    #   `ExpectedBucketOwner` endpoint setting.
    #
    #   Example: `--s3-settings='{"ExpectedBucketOwner": "AWS_Account_ID"}'`
    #
    #   When you make a request to test a connection or perform a migration,
    #   S3 checks the account ID of the bucket owner against the specified
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] glue_catalog_generation
    #   When true, allows Glue to catalog your S3 bucket. Creating an Glue
    #   catalog lets you use Athena to query your data.
    #   @return [Boolean]
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
      :compression_type,
      :encryption_mode,
      :server_side_encryption_kms_key_id,
      :data_format,
      :encoding_type,
      :dict_page_size_limit,
      :row_group_length,
      :data_page_size,
      :parquet_version,
      :enable_statistics,
      :include_op_for_full_load,
      :cdc_inserts_only,
      :timestamp_column_name,
      :parquet_timestamp_in_millisecond,
      :cdc_inserts_and_updates,
      :date_partition_enabled,
      :date_partition_sequence,
      :date_partition_delimiter,
      :use_csv_no_sup_value,
      :csv_no_sup_value,
      :preserve_transactions,
      :cdc_path,
      :use_task_start_time_for_full_load_timestamp,
      :canned_acl_for_objects,
      :add_column_name,
      :cdc_max_batch_interval,
      :cdc_min_file_size,
      :csv_null_value,
      :ignore_header_rows,
      :max_file_size,
      :rfc_4180,
      :date_partition_timezone,
      :add_trailing_padding_character,
      :expected_bucket_owner,
      :glue_catalog_generation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a schema conversion application.
    #
    # @!attribute [rw] s3_bucket_path
    #   The path for the Amazon S3 bucket that the application uses for
    #   exporting assessment reports.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_role_arn
    #   The ARN for the role the application uses to access its Amazon S3
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SCApplicationAttributes AWS API Documentation
    #
    class SCApplicationAttributes < Struct.new(
      :s3_bucket_path,
      :s3_bucket_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The SNS topic is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SNSInvalidTopicFault AWS API Documentation
    #
    class SNSInvalidTopicFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are not authorized for the SNS subscription.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SNSNoAuthorizationFault AWS API Documentation
    #
    class SNSNoAuthorizationFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about a schema conversion action.
    #
    # @!attribute [rw] status
    #   The schema conversion action status.
    #   @return [String]
    #
    # @!attribute [rw] request_identifier
    #   The identifier for the schema conversion action.
    #   @return [String]
    #
    # @!attribute [rw] migration_project_arn
    #   The migration project ARN.
    #   @return [String]
    #
    # @!attribute [rw] error
    #   Provides error information about a project.
    #   @return [Types::ErrorDetails]
    #
    # @!attribute [rw] export_sql_details
    #   Provides information about a metadata model assessment exported to
    #   SQL.
    #   @return [Types::ExportSqlDetails]
    #
    # @!attribute [rw] progress
    #   Provides information about the progress of the schema conversion
    #   operation.
    #   @return [Types::Progress]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SchemaConversionRequest AWS API Documentation
    #
    class SchemaConversionRequest < Struct.new(
      :status,
      :request_identifier,
      :migration_project_arn,
      :error,
      :export_sql_details,
      :progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a schema in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] code_line_count
    #   The number of lines of code in a schema in a Fleet Advisor collector
    #   inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] code_size
    #   The size level of the code in a schema in a Fleet Advisor collector
    #   inventory.
    #   @return [Integer]
    #
    # @!attribute [rw] complexity
    #   The complexity level of the code in a schema in a Fleet Advisor
    #   collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] server
    #   The database server for a schema in a Fleet Advisor collector
    #   inventory.
    #   @return [Types::ServerShortInfoResponse]
    #
    # @!attribute [rw] database_instance
    #   The database for a schema in a Fleet Advisor collector inventory.
    #   @return [Types::DatabaseShortInfoResponse]
    #
    # @!attribute [rw] schema_id
    #   The ID of a schema in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of a schema in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] original_schema
    #   Describes a schema in a Fleet Advisor collector inventory.
    #   @return [Types::SchemaShortInfoResponse]
    #
    # @!attribute [rw] similarity
    #   The similarity value for a schema in a Fleet Advisor collector
    #   inventory. A higher similarity value indicates that a schema is
    #   likely to be a duplicate.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SchemaResponse AWS API Documentation
    #
    class SchemaResponse < Struct.new(
      :code_line_count,
      :code_size,
      :complexity,
      :server,
      :database_instance,
      :schema_id,
      :schema_name,
      :original_schema,
      :similarity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a schema in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] schema_id
    #   The ID of a schema in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] schema_name
    #   The name of a schema in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_id
    #   The ID of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   The name of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] database_ip_address
    #   The IP address of a database in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SchemaShortInfoResponse AWS API Documentation
    #
    class SchemaShortInfoResponse < Struct.new(
      :schema_id,
      :schema_name,
      :database_id,
      :database_name,
      :database_ip_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a server in a Fleet Advisor collector inventory.
    #
    # @!attribute [rw] server_id
    #   The ID of a server in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   The IP address of a server in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The name address of a server in a Fleet Advisor collector inventory.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ServerShortInfoResponse AWS API Documentation
    #
    class ServerShortInfoResponse < Struct.new(
      :server_id,
      :ip_address,
      :server_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings for a source data provider for a data migration.
    #
    # @!attribute [rw] cdc_start_position
    #   The change data capture (CDC) start position for the source data
    #   provider.
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   The change data capture (CDC) start time for the source data
    #   provider.
    #   @return [Time]
    #
    # @!attribute [rw] cdc_stop_time
    #   The change data capture (CDC) stop time for the source data
    #   provider.
    #   @return [Time]
    #
    # @!attribute [rw] slot_name
    #   The name of the replication slot on the source data provider. This
    #   attribute is only valid for a PostgreSQL or Aurora PostgreSQL
    #   source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SourceDataSetting AWS API Documentation
    #
    class SourceDataSetting < Struct.new(
      :cdc_start_position,
      :cdc_start_time,
      :cdc_stop_time,
      :slot_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration_identifier
    #   The identifier (name or ARN) of the data migration to start.
    #   @return [String]
    #
    # @!attribute [rw] start_type
    #   Specifies the start type for the data migration. Valid values
    #   include `start-replication`, `reload-target`, and
    #   `resume-processing`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartDataMigrationMessage AWS API Documentation
    #
    class StartDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      :start_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration
    #   The data migration that DMS started.
    #   @return [Types::DataMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartDataMigrationResponse AWS API Documentation
    #
    class StartDataMigrationResponse < Struct.new(
      :data_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartExtensionPackAssociationMessage AWS API Documentation
    #
    class StartExtensionPackAssociationMessage < Struct.new(
      :migration_project_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the request operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartExtensionPackAssociationResponse AWS API Documentation
    #
    class StartExtensionPackAssociationResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to assess.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelAssessmentMessage AWS API Documentation
    #
    class StartMetadataModelAssessmentMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the assessment operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelAssessmentResponse AWS API Documentation
    #
    class StartMetadataModelAssessmentResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to convert.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelConversionMessage AWS API Documentation
    #
    class StartMetadataModelConversionMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the conversion operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelConversionResponse AWS API Documentation
    #
    class StartMetadataModelConversionResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   The JSON string that specifies the location where the metadata model
    #   will be created. Selection rules must specify a single schema. For
    #   more information, see Selection Rules in the DMS User Guide.
    #   @return [String]
    #
    # @!attribute [rw] metadata_model_name
    #   The name of the metadata model.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of metadata model in JSON format. This object is a
    #   Union. Only one member of this object can be specified or returned.
    #   @return [Types::MetadataModelProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelCreationMessage AWS API Documentation
    #
    class StartMetadataModelCreationMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :metadata_model_name,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the metadata model creation operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelCreationResponse AWS API Documentation
    #
    class StartMetadataModelCreationResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to export.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Whether to export the metadata model from the source or the target.
    #   @return [String]
    #
    # @!attribute [rw] file_name
    #   The name of the model file to create in the Amazon S3 bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelExportAsScriptMessage AWS API Documentation
    #
    class StartMetadataModelExportAsScriptMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :origin,
      :file_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the export operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelExportAsScriptResponse AWS API Documentation
    #
    class StartMetadataModelExportAsScriptResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to export.
    #   @return [String]
    #
    # @!attribute [rw] overwrite_extension_pack
    #   Whether to overwrite the migration project extension pack. An
    #   extension pack is an add-on module that emulates functions present
    #   in a source database that are required when converting objects to
    #   the target database.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelExportToTargetMessage AWS API Documentation
    #
    class StartMetadataModelExportToTargetMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :overwrite_extension_pack)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the export operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelExportToTargetResponse AWS API Documentation
    #
    class StartMetadataModelExportToTargetResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] migration_project_identifier
    #   The migration project name or Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] selection_rules
    #   A value that specifies the database objects to import.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   Whether to load metadata to the source or target database.
    #   @return [String]
    #
    # @!attribute [rw] refresh
    #   If `true`, DMS loads metadata for the specified objects from the
    #   source database.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelImportMessage AWS API Documentation
    #
    class StartMetadataModelImportMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :origin,
      :refresh)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_identifier
    #   The identifier for the import operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartMetadataModelImportResponse AWS API Documentation
    #
    class StartMetadataModelImportResponse < Struct.new(
      :request_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] database_id
    #   The identifier of the source database to analyze and provide
    #   recommendations for.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The settings in JSON format that Fleet Advisor uses to determine
    #   target engine recommendations. These parameters include target
    #   instance sizing and availability and durability settings. For target
    #   instance sizing, Fleet Advisor supports the following two options:
    #   total capacity and resource utilization. For availability and
    #   durability, Fleet Advisor supports the following two options:
    #   production (Multi-AZ deployments) and Dev/Test (Single-AZ
    #   deployments).
    #   @return [Types::RecommendationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartRecommendationsRequest AWS API Documentation
    #
    class StartRecommendationsRequest < Struct.new(
      :database_id,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about the source database to analyze and provide
    # target recommendations according to the specified requirements.
    #
    # @!attribute [rw] database_id
    #   The identifier of the source database.
    #   @return [String]
    #
    # @!attribute [rw] settings
    #   The required target engine settings.
    #   @return [Types::RecommendationSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartRecommendationsRequestEntry AWS API Documentation
    #
    class StartRecommendationsRequestEntry < Struct.new(
      :database_id,
      :settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication for which to start
    #   replication.
    #   @return [String]
    #
    # @!attribute [rw] start_replication_type
    #   The replication type.
    #
    #   When the replication type is `full-load` or `full-load-and-cdc`, the
    #   only valid value for the first run of the replication is
    #   `start-replication`. This option will start the replication.
    #
    #   You can also use ReloadTables to reload specific tables that failed
    #   during replication instead of restarting the replication.
    #
    #   The `resume-processing` option isn't applicable for a full-load
    #   replication, because you can't resume partially loaded tables
    #   during the full load phase.
    #
    #   For a `full-load-and-cdc` replication, DMS migrates table data, and
    #   then applies data changes that occur on the source. To load all the
    #   tables again, and start capturing source changes, use
    #   `reload-target`. Otherwise use `resume-processing`, to replicate the
    #   changes from the last stop position.
    #   @return [String]
    #
    # @!attribute [rw] premigration_assessment_settings
    #   User-defined settings for the premigration assessment. The possible
    #   values are:
    #
    #   * `ResultLocationFolder`: The folder within an Amazon S3 bucket
    #     where you want DMS to store the results of this assessment run.
    #
    #   * `ResultEncryptionMode`: The supported values are `SSE_KMS` and
    #     `SSE_S3`. If these values are not provided, then the files are not
    #     encrypted at rest. For more information, see [Creating Amazon Web
    #     Services KMS keys to encrypt Amazon S3 target objects][1].
    #
    #   * `ResultKmsKeyArn`: The ARN of a customer KMS encryption key that
    #     you specify when you set `ResultEncryptionMode` to `SSE_KMS`.
    #
    #   * `IncludeOnly`: A space-separated list of names for specific
    #     individual assessments that you want to include. These names come
    #     from the default list of individual assessments that Database
    #     Migration Service supports for the associated migration.
    #
    #   * `Exclude`: A space-separated list of names for specific individual
    #     assessments that you want to exclude. These names come from the
    #     default list of individual assessments that Database Migration
    #     Service supports for the associated migration.
    #
    #   * `FailOnAssessmentFailure`: A configurable setting you can set to
    #     `true` (the default setting) or `false`. Use this setting to to
    #     stop the replication from starting automatically if the assessment
    #     fails. This can help you evaluate the issue that is preventing the
    #     replication from running successfully.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys
    #   @return [String]
    #
    # @!attribute [rw] cdc_start_time
    #   Indicates the start time for a change data capture (CDC) operation.
    #   Use either `CdcStartTime` or `CdcStartPosition` to specify when you
    #   want a CDC operation to start. Specifying both values results in an
    #   error.
    #   @return [Time]
    #
    # @!attribute [rw] cdc_start_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   start. Use either `CdcStartPosition` or `CdcStartTime` to specify
    #   when you want a CDC operation to start. Specifying both values
    #   results in an error.
    #
    #   The value can be in date, checkpoint, or LSN/SCN format.
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationMessage AWS API Documentation
    #
    class StartReplicationMessage < Struct.new(
      :replication_config_arn,
      :start_replication_type,
      :premigration_assessment_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication
    #   The replication that DMS started.
    #   @return [Types::Replication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationResponse AWS API Documentation
    #
    class StartReplicationResponse < Struct.new(
      :replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentMessage AWS API Documentation
    #
    class StartReplicationTaskAssessmentMessage < Struct.new(
      :replication_task_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   Amazon Resource Name (ARN) of the migration task associated with the
    #   premigration assessment run that you want to start.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   ARN of the service role needed to start the assessment run. The role
    #   must allow the `iam:PassRole` action.
    #   @return [String]
    #
    # @!attribute [rw] result_location_bucket
    #   Amazon S3 bucket where you want DMS to store the results of this
    #   assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_folder
    #   Folder within an Amazon S3 bucket where you want DMS to store the
    #   results of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_encryption_mode
    #   Encryption mode that you can specify to encrypt the results of this
    #   assessment run. If you don't specify this request parameter, DMS
    #   stores the assessment run results without encryption. You can
    #   specify one of the options following:
    #
    #   * `"SSE_S3"` – The server-side encryption provided as a default by
    #     Amazon S3.
    #
    #   * `"SSE_KMS"` – Key Management Service (KMS) encryption. This
    #     encryption can use either a custom KMS encryption key that you
    #     specify or the default KMS encryption key that DMS provides.
    #   @return [String]
    #
    # @!attribute [rw] result_kms_key_arn
    #   ARN of a custom KMS encryption key that you specify when you set
    #   `ResultEncryptionMode` to `"SSE_KMS`".
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_name
    #   Unique name to identify the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] include_only
    #   Space-separated list of names for specific individual assessments
    #   that you want to include. These names come from the default list of
    #   individual assessments that DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `IncludeOnly` if you also set a value for
    #   `Exclude` in the API operation.
    #
    #    To identify the names of the default individual assessments that DMS
    #   supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude
    #   Space-separated list of names for specific individual assessments
    #   that you want to exclude. These names come from the default list of
    #   individual assessments that DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `Exclude` if you also set a value for
    #   `IncludeOnly` in the API operation.
    #
    #    To identify the names of the default individual assessments that DMS
    #   supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the premigration assessment run
    #   that you want to start.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentRunMessage AWS API Documentation
    #
    class StartReplicationTaskAssessmentRunMessage < Struct.new(
      :replication_task_arn,
      :service_access_role_arn,
      :result_location_bucket,
      :result_location_folder,
      :result_encryption_mode,
      :result_kms_key_arn,
      :assessment_run_name,
      :include_only,
      :exclude,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_assessment_run
    #   The premigration assessment run that was started.
    #   @return [Types::ReplicationTaskAssessmentRun]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StartReplicationTaskAssessmentRunResponse AWS API Documentation
    #
    class StartReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name (ARN) of the replication task to be
    #   started.
    #   @return [String]
    #
    # @!attribute [rw] start_replication_task_type
    #   The type of replication task to start.
    #
    #   `start-replication` is the only valid action that can be used for
    #   the first time a task with the migration type of
    #   `full-load`full-load, `full-load-and-cdc` or `cdc` is run. Any other
    #   action used for the first time on a given task, such as
    #   `resume-processing` and reload-target will result in data errors.
    #
    #   You can also use ReloadTables to reload specific tables that failed
    #   during migration instead of restarting the task.
    #
    #   For a `full-load` task, the resume-processing option will reload any
    #   tables that were partially loaded or not yet loaded during the full
    #   load phase.
    #
    #   For a `full-load-and-cdc` task, DMS migrates table data, and then
    #   applies data changes that occur on the source. To load all the
    #   tables again, and start capturing source changes, use
    #   `reload-target`. Otherwise use `resume-processing`, to replicate the
    #   changes from the last stop position.
    #
    #   For a `cdc` only task, to start from a specific position, you must
    #   use start-replication and also specify the start position. Check the
    #   source endpoint DMS documentation for any limitations. For example,
    #   not all sources support starting from a time.
    #
    #   <note markdown="1"> `resume-processing` is only available for previously executed tasks.
    #
    #    </note>
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
    #
    #   <note markdown="1"> When you use this task setting with a source PostgreSQL database, a
    #   logical replication slot should already be created and associated
    #   with the source endpoint. You can verify this by setting the
    #   `slotName` extra connection attribute to the name of this logical
    #   replication slot. For more information, see [Extra Connection
    #   Attributes When Using PostgreSQL as a Source for DMS][1].
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
    #   @return [String]
    #
    # @!attribute [rw] cdc_stop_position
    #   Indicates when you want a change data capture (CDC) operation to
    #   stop. The value can be either server time or commit time.
    #
    #   Server time example: --cdc-stop-position
    #   “server\_time:2018-02-09T12:12:12”
    #
    #   Commit time example: --cdc-stop-position
    #   “commit\_time:2018-02-09T12:12:12“
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The properties of the statement for metadata model creation.
    #
    # @!attribute [rw] definition
    #   The SQL text of the statement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StatementProperties AWS API Documentation
    #
    class StatementProperties < Struct.new(
      :definition)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration_identifier
    #   The identifier (name or ARN) of the data migration to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopDataMigrationMessage AWS API Documentation
    #
    class StopDataMigrationMessage < Struct.new(
      :data_migration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_migration
    #   The data migration that DMS stopped.
    #   @return [Types::DataMigration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopDataMigrationResponse AWS API Documentation
    #
    class StopDataMigrationResponse < Struct.new(
      :data_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_config_arn
    #   The Amazon Resource Name of the replication to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationMessage AWS API Documentation
    #
    class StopReplicationMessage < Struct.new(
      :replication_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication
    #   The replication that DMS stopped.
    #   @return [Types::Replication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationResponse AWS API Documentation
    #
    class StopReplicationResponse < Struct.new(
      :replication)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] replication_task_arn
    #   The Amazon Resource Name(ARN) of the replication task to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StopReplicationTaskMessage AWS API Documentation
    #
    class StopReplicationTaskMessage < Struct.new(
      :replication_task_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The storage quota has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/StorageQuotaExceededFault AWS API Documentation
    #
    class StorageQuotaExceededFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # In response to a request by the `DescribeReplicationSubnetGroups`
    # operation, this object identifies a subnet by its given Availability
    # Zone, subnet identifier, and status.
    #
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified subnet is already in use.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SubnetAlreadyInUse AWS API Documentation
    #
    class SubnetAlreadyInUse < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information about types of supported endpoints in response to
    # a request by the `DescribeEndpointTypes` operation. This information
    # includes the type of endpoint, the database engine name, and whether
    # change data capture (CDC) is supported.
    #
    # @!attribute [rw] engine_name
    #   The database engine name. Valid values, depending on the
    #   EndpointType, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`,
    #   `"s3"`, `"db2"`, `"db2-zos"`, `"azuredb"`, `"sybase"`, `"dynamodb"`,
    #   `"mongodb"`, `"kinesis"`, `"kafka"`, `"elasticsearch"`,
    #   `"documentdb"`, `"sqlserver"`, `"neptune"`, and `"babelfish"`.
    #   @return [String]
    #
    # @!attribute [rw] supports_cdc
    #   Indicates if change data capture (CDC) is supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_engine_minimum_version
    #   The earliest DMS engine version that supports this endpoint engine.
    #   Note that endpoint engines released with DMS versions earlier than
    #   3.1.1 do not return a value for this parameter.
    #   @return [String]
    #
    # @!attribute [rw] engine_display_name
    #   The expanded name for the engine name. For example, if the
    #   `EngineName` parameter is "aurora", this value would be "Amazon
    #   Aurora MySQL".
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SupportedEndpointType AWS API Documentation
    #
    class SupportedEndpointType < Struct.new(
      :engine_name,
      :supports_cdc,
      :endpoint_type,
      :replication_instance_engine_minimum_version,
      :engine_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an SAP ASE data provider.
    #
    # @!attribute [rw] server_name
    #   The name of the SAP ASE server.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port value for the SAP ASE data provider.
    #   @return [Integer]
    #
    # @!attribute [rw] database_name
    #   The database name on the SAP ASE data provider.
    #   @return [String]
    #
    # @!attribute [rw] ssl_mode
    #   The SSL mode used to connect to the SAP ASE data provider. The
    #   default value is `none`.
    #   @return [String]
    #
    # @!attribute [rw] encrypt_password
    #   Specifies whether to encrypt the password when connecting to the
    #   Sybase ASE database. When set to true, the connection password is
    #   encrypted during transmission. Default is true.
    #   @return [Boolean]
    #
    # @!attribute [rw] certificate_arn
    #   The Amazon Resource Name (ARN) of the certificate used for SSL
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SybaseAseDataProviderSettings AWS API Documentation
    #
    class SybaseAseDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :encrypt_password,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a SAP ASE endpoint.
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Endpoint TCP port. The default is 5000.
    #   @return [Integer]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_access_role_arn
    #   The full Amazon Resource Name (ARN) of the IAM role that specifies
    #   DMS as the trusted entity and grants the required permissions to
    #   access the value in `SecretsManagerSecret`. The role must allow the
    #   `iam:PassRole` action. `SecretsManagerSecret` has the value of the
    #   Amazon Web Services Secrets Manager secret that allows access to the
    #   SAP ASE endpoint.
    #
    #   <note markdown="1"> You can specify one of two sets of values for these permissions. You
    #   can specify the values for this setting and
    #   `SecretsManagerSecretId`. Or you can specify clear-text values for
    #   `UserName`, `Password`, `ServerName`, and `Port`. You can't specify
    #   both. For more information on creating this `SecretsManagerSecret`
    #   and the `SecretsManagerAccessRoleArn` and `SecretsManagerSecretId`
    #   required to access it, see [Using secrets to access Database
    #   Migration Service resources][1] in the *Database Migration Service
    #   User Guide*.
    #
    #    </note>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_secret_id
    #   The full ARN, partial ARN, or friendly name of the
    #   `SecretsManagerSecret` that contains the SAP SAE endpoint connection
    #   details.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SybaseSettings AWS API Documentation
    #
    class SybaseSettings < Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides a collection of table statistics in response to a request by
    # the `DescribeTableStatistics` operation.
    #
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
    #   The data definition language (DDL) used to build and modify the
    #   structure of your tables.
    #   @return [Integer]
    #
    # @!attribute [rw] applied_inserts
    #   The number of insert actions applied on a target table.
    #   @return [Integer]
    #
    # @!attribute [rw] applied_deletes
    #   The number of delete actions applied on a target table.
    #   @return [Integer]
    #
    # @!attribute [rw] applied_updates
    #   The number of update actions applied on a target table.
    #   @return [Integer]
    #
    # @!attribute [rw] applied_ddls
    #   The number of data definition language (DDL) statements used to
    #   build and modify the structure of your tables applied on the target.
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_rows
    #   The number of rows added during the full load operation.
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_condtnl_chk_failed_rows
    #   The number of rows that failed conditional checks during the full
    #   load operation (valid only for migrations where DynamoDB is the
    #   target).
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_error_rows
    #   The number of rows that failed to load during the full load
    #   operation (valid only for migrations where DynamoDB is the target).
    #   @return [Integer]
    #
    # @!attribute [rw] full_load_start_time
    #   The time when the full load operation started.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_end_time
    #   The time when the full load operation completed.
    #   @return [Time]
    #
    # @!attribute [rw] full_load_reloaded
    #   A value that indicates if the table was reloaded (`true`) or loaded
    #   as part of a new full load operation (`false`).
    #   @return [Boolean]
    #
    # @!attribute [rw] last_update_time
    #   The last time a table was updated.
    #   @return [Time]
    #
    # @!attribute [rw] table_state
    #   The state of the tables described.
    #
    #   Valid states: Table does not exist \| Before load \| Full load \|
    #   Table completed \| Table cancelled \| Table error \| Table is being
    #   reloaded
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
    #   The number of records that couldn't be validated.
    #   @return [Integer]
    #
    # @!attribute [rw] validation_state
    #   The validation state of the table.
    #
    #   This parameter can have the following values:
    #
    #   * Not enabled – Validation isn't enabled for the table in the
    #     migration task.
    #
    #   * Pending records – Some records in the table are waiting for
    #     validation.
    #
    #   * Mismatched records – Some records in the table don't match
    #     between the source and target.
    #
    #   * Suspended records – Some records in the table couldn't be
    #     validated.
    #
    #   * No primary key –The table couldn't be validated because it has no
    #     primary key.
    #
    #   * Table error – The table wasn't validated because it's in an
    #     error state and some data wasn't migrated.
    #
    #   * Validated – All rows in the table are validated. If the table is
    #     updated, the status can change from Validated.
    #
    #   * Error – The table couldn't be validated because of an unexpected
    #     error.
    #
    #   * Pending validation – The table is waiting validation.
    #
    #   * Preparing table – Preparing the table enabled in the migration
    #     task for validation.
    #
    #   * Pending revalidation – All rows in the table are pending
    #     validation after the table was updated.
    #   @return [String]
    #
    # @!attribute [rw] validation_state_details
    #   Additional details about the state of validation.
    #   @return [String]
    #
    # @!attribute [rw] resync_state
    #   Records the current state of table resynchronization in the
    #   migration task.
    #
    #   This parameter can have the following values:
    #
    #   * Not enabled – Resync is not enabled for the table in the migration
    #     task.
    #
    #   * Pending – The tables are waiting for resync.
    #
    #   * In progress – Resync in progress for some records in the table.
    #
    #   * No primary key – The table could not be resynced because it has no
    #     primary key.
    #
    #   * Last resync at: `date/time` – Resync session is finished at time.
    #     Time provided in UTC format.
    #   @return [String]
    #
    # @!attribute [rw] resync_rows_attempted
    #   Records the total number of mismatched data rows where the system
    #   attempted to apply fixes in the target database.
    #   @return [Integer]
    #
    # @!attribute [rw] resync_rows_succeeded
    #   Records the total number of mismatched data rows where fixes were
    #   successfully applied in the target database.
    #   @return [Integer]
    #
    # @!attribute [rw] resync_rows_failed
    #   Records the total number of mismatched data rows where fix attempts
    #   failed in the target database.
    #   @return [Integer]
    #
    # @!attribute [rw] resync_progress
    #   Calculates the percentage of failed validations that were
    #   successfully resynced to the system.
    #   @return [Float]
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
      :applied_inserts,
      :applied_deletes,
      :applied_updates,
      :applied_ddls,
      :full_load_rows,
      :full_load_condtnl_chk_failed_rows,
      :full_load_error_rows,
      :full_load_start_time,
      :full_load_end_time,
      :full_load_reloaded,
      :last_update_time,
      :table_state,
      :validation_pending_records,
      :validation_failed_records,
      :validation_suspended_records,
      :validation_state,
      :validation_state_details,
      :resync_state,
      :resync_rows_attempted,
      :resync_rows_succeeded,
      :resync_rows_failed,
      :resync_progress)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name of the schema and table to be reloaded.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A user-defined key-value pair that describes metadata added to an DMS
    # resource and that is used by operations such as the following:
    #
    # * `AddTagsToResource`
    #
    # * `ListTagsForResource`
    #
    # * `RemoveTagsFromResource`
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be 1-128
    #   Unicode characters in length and can't be prefixed with "aws:" or
    #   "dms:". The string can only contain only the set of Unicode
    #   letters, digits, white-space, '\_', '.', '/', '=', '+',
    #   '-' (Java regular expressions:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   1-256 Unicode characters in length and can't be prefixed with
    #   "aws:" or "dms:". The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', '/', '=',
    #   '+', '-' (Java regular expressions:
    #   "^(\[\\\\p\{L}\\\\p\{Z}\\\\p\{N}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) string that uniquely identifies the
    #   resource for which the tag is created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines settings for a target data provider for a data migration.
    #
    # @!attribute [rw] table_preparation_mode
    #   This setting determines how DMS handles the target tables before
    #   starting a data migration, either by leaving them untouched,
    #   dropping and recreating them, or truncating the existing data in the
    #   target tables.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TargetDataSetting AWS API Documentation
    #
    class TargetDataSetting < Struct.new(
      :table_preparation_mode)
      SENSITIVE = []
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TestConnectionMessage AWS API Documentation
    #
    class TestConnectionMessage < Struct.new(
      :replication_instance_arn,
      :endpoint_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Amazon Timestream endpoint.
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] memory_duration
    #   Set this attribute to specify the length of time to store all of the
    #   tables in memory that are migrated into Amazon Timestream from the
    #   source database. Time is measured in units of hours. When Timestream
    #   data comes in, it first resides in memory for the specified
    #   duration, which allows quick access to it.
    #   @return [Integer]
    #
    # @!attribute [rw] magnetic_duration
    #   Set this attribute to specify the default magnetic duration applied
    #   to the Amazon Timestream tables in days. This is the number of days
    #   that records remain in magnetic store before being discarded. For
    #   more information, see [Storage][1] in the [Amazon Timestream
    #   Developer Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html
    #   [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/
    #   @return [Integer]
    #
    # @!attribute [rw] cdc_inserts_and_updates
    #   Set this attribute to `true` to specify that DMS only applies
    #   inserts and updates, and not deletes. Amazon Timestream does not
    #   allow deleting records, so if this value is `false`, DMS nulls out
    #   the corresponding record in the Timestream database rather than
    #   deleting it.
    #   @return [Boolean]
    #
    # @!attribute [rw] enable_magnetic_store_writes
    #   Set this attribute to `true` to enable memory store writes. When
    #   this value is `false`, DMS does not write records that are older in
    #   days than the value specified in `MagneticDuration`, because Amazon
    #   Timestream does not allow memory writes by default. For more
    #   information, see [Storage][1] in the [Amazon Timestream Developer
    #   Guide][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html
    #   [2]: https://docs.aws.amazon.com/timestream/latest/developerguide/
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/TimestreamSettings AWS API Documentation
    #
    class TimestreamSettings < Struct.new(
      :database_name,
      :memory_duration,
      :magnetic_duration,
      :cdc_inserts_and_updates,
      :enable_magnetic_store_writes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] force_move
    #   When set to true, this operation migrates DMS subscriptions for
    #   Amazon SNS notifications no matter what your replication instance
    #   version is. If not set or set to false, this operation runs only
    #   when all your replication instances are from DMS version 3.4.5 or
    #   higher.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/UpdateSubscriptionsToEventBridgeMessage AWS API Documentation
    #
    class UpdateSubscriptionsToEventBridgeMessage < Struct.new(
      :force_move)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] result
    #   A string that indicates how many event subscriptions were migrated
    #   and how many remain to be migrated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/UpdateSubscriptionsToEventBridgeResponse AWS API Documentation
    #
    class UpdateSubscriptionsToEventBridgeResponse < Struct.new(
      :result)
      SENSITIVE = []
      include Aws::Structure
    end

    # An upgrade dependency is preventing the database migration.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/UpgradeDependencyFailureFault AWS API Documentation
    #
    class UpgradeDependencyFailureFault < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the status of a security group associated with the virtual
    # private cloud (VPC) hosting your replication and DB instances.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The VPC security group ID.
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
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

