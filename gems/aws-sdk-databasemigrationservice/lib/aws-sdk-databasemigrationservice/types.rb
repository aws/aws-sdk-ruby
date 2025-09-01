# frozen_string_literal: true

# This is generated code!

module Aws::DatabaseMigrationService
  # This module contains the types returned by client operations.
  module Types

    # <p>DMS was denied access to the endpoint. Check that the 
    #             role is correctly configured.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class AccessDeniedFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a quota for an Amazon Web Services account, for example the number of replication instances
    #          allowed.</p>
    # @!attribute account_quota_name
    #   <p>The name of the DMS quota for this Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute used
    #   <p>The amount currently used toward the quota maximum.</p>
    #   @return [Integer]
    # @!attribute max
    #   <p>The maximum allowed value for the quota.</p>
    #   @return [Integer]
    class AccountQuota < Struct.new(
      :account_quota_name,
      :used,
      :max,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:used] = 0 unless options.key?(:used)
        options[:max] = 0 unless options.key?(:max)
        super
      end
    end

    # <p>Associates a set of tags with an DMS resource.</p>
    # @!attribute resource_arn
    #   <p>Identifies the DMS resource to which tags should be added. The value for this
    #            parameter is an Amazon Resource Name (ARN).</p>
    #            <p>For DMS, you can tag a replication instance, an endpoint, or a replication
    #            task.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the resource.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsToResourceMessage < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    class AddTagsToResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action
    #            applies to.</p>
    #   @return [String]
    # @!attribute apply_action
    #   <p>The pending maintenance action to apply to this resource.</p>
    #            <p>Valid values: <code>os-upgrade</code>, <code>system-update</code>,
    #               <code>db-upgrade</code>, <code>os-patch</code>
    #            </p>
    #   @return [String]
    # @!attribute opt_in_type
    #   <p>A value that specifies the type of opt-in request, or undoes an opt-in request. You
    #            can't undo an opt-in request of type <code>immediate</code>.</p>
    #            <p>Valid values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>immediate</code> - Apply the maintenance action immediately.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>next-maintenance</code> - Apply the maintenance action during the next
    #                  maintenance window for the resource.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>undo-opt-in</code> - Cancel any existing <code>next-maintenance</code> opt-in
    #                  requests.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class ApplyPendingMaintenanceActionMessage < Struct.new(
      :replication_instance_arn,
      :apply_action,
      :opt_in_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_pending_maintenance_actions
    #   <p>The DMS resource that the pending maintenance action will be applied to.</p>
    #   @return [Types::ResourcePendingMaintenanceActions]
    class ApplyPendingMaintenanceActionResponse < Struct.new(
      :resource_pending_maintenance_actions,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module AssessmentReportType
      PDF = 'pdf'
      CSV = 'csv'
    end

    module AuthMechanismValue
      DEFAULT = 'default'
      MONGODB_CR = 'mongodb_cr'
      SCRAM_SHA_1 = 'scram_sha_1'
    end

    module AuthTypeValue
      NO = 'no'
      PASSWORD = 'password'
    end

    # <p>The name of an Availability Zone for use during database migration.
    #             <code>AvailabilityZone</code> is an optional parameter to the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationInstance.html">
    #                <code>CreateReplicationInstance</code>
    #             </a> operation, and it’s value relates to
    #          the Amazon Web Services Region of an endpoint. For example, the availability zone of an endpoint in the
    #          us-east-1 region might be us-east-1a, us-east-1b, us-east-1c, or us-east-1d.</p>
    # @!attribute name
    #   <p>The name of the Availability Zone.</p>
    #   @return [String]
    class AvailabilityZone < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the errors that occurred during the analysis of the source
    #             database.</p>
    # @!attribute database_id
    #   <p>The identifier of the source database.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The information about the error.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The code of an error that occurred during the analysis of the source database.</p>
    #   @return [String]
    class BatchStartRecommendationsErrorEntry < Struct.new(
      :database_id,
      :message,
      :code,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data
    #   <p>Provides information about source databases to analyze. After this analysis, Fleet
    #               Advisor recommends target engines for each source database.</p>
    #   @return [Array<Types::StartRecommendationsRequestEntry>]
    class BatchStartRecommendationsRequest < Struct.new(
      :data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute error_entries
    #   <p>A list with error details about the analysis of each source database.</p>
    #   @return [Array<Types::BatchStartRecommendationsErrorEntry>]
    class BatchStartRecommendationsResponse < Struct.new(
      :error_entries,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be canceled.</p>
    #   @return [String]
    class CancelReplicationTaskAssessmentRunMessage < Struct.new(
      :replication_task_assessment_run_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_assessment_run
    #   <p>The <code>ReplicationTaskAssessmentRun</code> object for the canceled assessment
    #            run.</p>
    #   @return [Types::ReplicationTaskAssessmentRun]
    class CancelReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CannedAclForObjectsValue
      NONE = 'none'
      PRIVATE = 'private'
      PUBLIC_READ = 'public-read'
      PUBLIC_READ_WRITE = 'public-read-write'
      AUTHENTICATED_READ = 'authenticated-read'
      AWS_EXEC_READ = 'aws-exec-read'
      BUCKET_OWNER_READ = 'bucket-owner-read'
      BUCKET_OWNER_FULL_CONTROL = 'bucket-owner-full-control'
    end

    # <p>The SSL certificate that can be used to encrypt connections between the endpoints and
    #          the replication instance.</p>
    # @!attribute certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    #   @return [String]
    # @!attribute certificate_creation_date
    #   <p>The date that the certificate was created.</p>
    #   @return [Time]
    # @!attribute certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    #   @return [String]
    # @!attribute certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Example:
    #               <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #   @return [String]
    # @!attribute certificate_owner
    #   <p>The owner of the certificate.</p>
    #   @return [String]
    # @!attribute valid_from_date
    #   <p>The beginning date that the certificate is valid.</p>
    #   @return [Time]
    # @!attribute valid_to_date
    #   <p>The final date that the certificate is valid.</p>
    #   @return [Time]
    # @!attribute signing_algorithm
    #   <p>The signing algorithm for the certificate.</p>
    #   @return [String]
    # @!attribute key_length
    #   <p>The key length of the cryptographic algorithm being used.</p>
    #   @return [Integer]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CharLengthSemantics
      DEFAULT = 'default'
      CHAR = 'char'
      BYTE = 'byte'
    end

    # <p>Describes the last Fleet Advisor collector health check.</p>
    # @!attribute collector_status
    #   <p>The status of the Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute local_collector_s3_access
    #   <p>Whether the local collector can access its Amazon S3 bucket.</p>
    #   @return [Boolean]
    # @!attribute web_collector_s3_access
    #   <p>Whether the web collector can access its Amazon S3 bucket.</p>
    #   @return [Boolean]
    # @!attribute web_collector_granted_role_based_access
    #   <p>Whether the role that you provided when creating the Fleet Advisor collector has sufficient permissions
    #               to access the Fleet Advisor web collector.</p>
    #   @return [Boolean]
    class CollectorHealthCheck < Struct.new(
      :collector_status,
      :local_collector_s3_access,
      :web_collector_s3_access,
      :web_collector_granted_role_based_access,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified collector doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class CollectorNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a Fleet Advisor collector.</p>
    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute collector_name
    #   <p>The name of the Fleet Advisor collector .</p>
    #   @return [String]
    # @!attribute collector_version
    #   <p>The version of your Fleet Advisor collector, in semantic versioning format, for example
    #                   <code>1.0.2</code>
    #            </p>
    #   @return [String]
    # @!attribute version_status
    #   <p>Whether the collector version is up to date.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary description of the Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute collector_health_check
    #   <p>Describes the last Fleet Advisor collector health check.</p>
    #   @return [Types::CollectorHealthCheck]
    # @!attribute last_data_received
    #   <p>The timestamp of the last time the collector received data, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #   @return [String]
    # @!attribute registered_date
    #   <p>The timestamp when DMS registered the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The timestamp when you created the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #   @return [String]
    # @!attribute modified_date
    #   <p>The timestamp when DMS last modified the collector, in the following format:
    #                   <code>2022-01-24T19:04:02.596113Z</code>
    #            </p>
    #   @return [String]
    # @!attribute inventory_data
    #   <p>Describes a Fleet Advisor collector inventory.</p>
    #   @return [Types::InventoryData]
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
      :inventory_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Briefly describes a Fleet Advisor collector.</p>
    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute collector_name
    #   <p>The name of the Fleet Advisor collector.</p>
    #   @return [String]
    class CollectorShortInfoResponse < Struct.new(
      :collector_referenced_id,
      :collector_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module CollectorStatus
      UNREGISTERED = 'UNREGISTERED'
      ACTIVE = 'ACTIVE'
    end

    module CompressionTypeValue
      NONE = 'none'
      GZIP = 'gzip'
    end

    # <p>Configuration parameters for provisioning an DMS Serverless replication.</p>
    # @!attribute availability_zone
    #   <p>The Availability Zone where the DMS Serverless replication using this configuration
    #            will run. The default value is a random, system-chosen Availability Zone in the
    #            configuration's Amazon Web Services Region, for example, <code>"us-west-2"</code>. You can't set this
    #            parameter if the <code>MultiAZ</code> parameter is set to <code>true</code>.</p>
    #   @return [String]
    # @!attribute dns_name_servers
    #   <p>A list of custom DNS name servers supported for the DMS Serverless replication to
    #            access your source or target database. This list overrides the default name servers
    #            supported by the DMS Serverless replication. You can specify a comma-separated list of
    #            internet addresses for up to four DNS name servers. For example:
    #               <code>"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"</code>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>An Key Management Service (KMS) key Amazon Resource Name (ARN) that is used to encrypt the data
    #            during DMS Serverless replication.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, DMS uses your
    #            default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account
    #            has a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute max_capacity_units
    #   <p>Specifies the maximum value of the DMS capacity units (DCUs) for which a given DMS
    #            Serverless replication can be provisioned. A single DCU is 2GB of RAM, with 1 DCU as the
    #            minimum value allowed. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128,
    #            192, 256, and 384. So, the maximum value that you can specify for DMS Serverless is 384.
    #            The <code>MaxCapacityUnits</code> parameter is the only DCU parameter you are required to
    #            specify.</p>
    #   @return [Integer]
    # @!attribute min_capacity_units
    #   <p>Specifies the minimum value of the DMS capacity units (DCUs) for which a given DMS
    #            Serverless replication can be provisioned. A single DCU is 2GB of RAM, with 1 DCU as the
    #            minimum value allowed. The list of valid DCU values includes 1, 2, 4, 8, 16, 32, 64, 128,
    #            192, 256, and 384. So, the minimum DCU value that you can specify for DMS Serverless is
    #            1. If you don't set this value, DMS sets this parameter to the minimum DCU value allowed,
    #            1. If there is no current source activity, DMS scales down your replication until it
    #            reaches the value specified in <code>MinCapacityUnits</code>.</p>
    #   @return [Integer]
    # @!attribute multi_az
    #   <p>Specifies whether the DMS Serverless replication is a Multi-AZ deployment. You can't
    #            set the <code>AvailabilityZone</code> parameter if the <code>MultiAZ</code> parameter is
    #            set to <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur for the DMS Serverless
    #            replication, in Universal Coordinated Time (UTC). The format is
    #               <code>ddd:hh24:mi-ddd:hh24:mi</code>.</p>
    #            <p>The default is a 30-minute window selected at random from an 8-hour block of time per
    #            Amazon Web Services Region. This maintenance occurs on a random day of the week. Valid values for days of
    #            the week include <code>Mon</code>, <code>Tue</code>, <code>Wed</code>, <code>Thu</code>,
    #               <code>Fri</code>, <code>Sat</code>, and <code>Sun</code>.</p>
    #            <p>Constraints include a minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute replication_subnet_group_id
    #   <p>Specifies a subnet group identifier to associate with the DMS Serverless
    #            replication.</p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p>Specifies the virtual private cloud (VPC) security group to use with the DMS
    #            Serverless replication. The VPC security group must work with the VPC containing the
    #            replication.</p>
    #   @return [Array<String>]
    class ComputeConfig < Struct.new(
      :availability_zone,
      :dns_name_servers,
      :kms_key_id,
      :max_capacity_units,
      :min_capacity_units,
      :multi_az,
      :preferred_maintenance_window,
      :replication_subnet_group_id,
      :vpc_security_group_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Status of the connection between an endpoint and a replication instance, including
    #          Amazon Resource Names (ARNs) and the last error message issued.</p>
    # @!attribute replication_instance_arn
    #   <p>The ARN of the replication instance.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The ARN string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The connection status. This parameter can return one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"successful"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"testing"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_failure_message
    #   <p>The error message when the connection last failed.</p>
    #   @return [String]
    # @!attribute endpoint_identifier
    #   <p>The identifier of the endpoint. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #   @return [String]
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #   @return [String]
    class Connection < Struct.new(
      :replication_instance_arn,
      :endpoint_arn,
      :status,
      :last_failure_message,
      :endpoint_identifier,
      :replication_instance_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration_name
    #   <p>A user-friendly name for the data migration. Data migration names have the following
    #            constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must begin with a letter, and can only contain ASCII letters, digits, and hyphens.
    #               </p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>Length must be from 1 to 255 characters.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute migration_project_identifier
    #   <p>An identifier for the migration project.</p>
    #   @return [String]
    # @!attribute data_migration_type
    #   <p>Specifies if the data migration is full-load only, change data capture (CDC) only, or
    #            full-load and CDC.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) for the service access role that you want to use to
    #            create the data migration.</p>
    #   @return [String]
    # @!attribute enable_cloudwatch_logs
    #   <p>Specifies whether to enable CloudWatch logs for the data migration.</p>
    #   @return [Boolean]
    # @!attribute source_data_settings
    #   <p>Specifies information about the source data provider.</p>
    #   @return [Array<Types::SourceDataSetting>]
    # @!attribute target_data_settings
    #   <p>Specifies information about the target data provider.</p>
    #   @return [Array<Types::TargetDataSetting>]
    # @!attribute number_of_jobs
    #   <p>The number of parallel jobs that trigger parallel threads to unload the tables from the
    #            source, and then load them to the target.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the data migration.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute selection_rules
    #   <p>An optional JSON string specifying what tables, views, and schemas to include or exclude
    #            from the migration.</p>
    #   @return [String]
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
      :selection_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration
    #   <p>Information about the created data migration.</p>
    #   @return [Types::DataMigration]
    class CreateDataMigrationResponse < Struct.new(
      :data_migration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider_name
    #   <p>A user-friendly name for the data provider.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the data provider.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The type of database engine for the data provider. Valid values include <code>"aurora"</code>, 
    #            <code>"aurora-postgresql"</code>, <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>, 
    #            <code>"sqlserver"</code>, <code>redshift</code>, <code>mariadb</code>, <code>mongodb</code>, <code>db2</code>, <code>db2-zos</code> and <code>docdb</code>. A value of <code>"aurora"</code> represents Amazon Aurora MySQL-Compatible Edition.</p>
    #   @return [String]
    # @!attribute virtual
    #   <p>Indicates whether the data provider is virtual.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>The settings in JSON format for a data provider.</p>
    #   @return [Types::DataProviderSettings]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the data provider.</p>
    #   @return [Array<Types::Tag>]
    class CreateDataProviderMessage < Struct.new(
      :data_provider_name,
      :description,
      :engine,
      :virtual,
      :settings,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider
    #   <p>The data provider that was created.</p>
    #   @return [Types::DataProvider]
    class CreateDataProviderResponse < Struct.new(
      :data_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two
    #            consecutive hyphens.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    #   @return [String]
    # @!attribute engine_name
    #   <p>The type of engine for the endpoint. Valid values, depending on the
    #               <code>EndpointType</code> value, include <code>"mysql"</code>, <code>"oracle"</code>,
    #               <code>"postgres"</code>, <code>"mariadb"</code>, <code>"aurora"</code>,
    #               <code>"aurora-postgresql"</code>, <code>"opensearch"</code>, <code>"redshift"</code>,
    #               <code>"s3"</code>, <code>"db2"</code>, <code>"db2-zos"</code>, <code>"azuredb"</code>,
    #               <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #               <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #               <code>"docdb"</code>, <code>"sqlserver"</code>, <code>"neptune"</code>,
    #               <code>"babelfish"</code>, <code>redshift-serverless</code>,
    #               <code>aurora-serverless</code>, <code>aurora-postgresql-serverless</code>,
    #               <code>gcp-mysql</code>, <code>azure-sql-managed-instance</code>, <code>redis</code>,
    #               <code>dms-transfer</code>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name to be used to log in to the endpoint database.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password to be used to log in to the endpoint database.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port used by the endpoint database.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify
    #            DatabaseName. To migrate to a specific database, use this setting and
    #               <code>targetDbType</code>.</p>
    #   @return [String]
    # @!attribute extra_connection_attributes
    #   <p>Additional attributes associated with the connection. Each attribute is specified as a
    #            name-value pair associated by an equal sign (=). Multiple attributes are separated by a
    #            semicolon (;) with no additional white space. For information on the attributes available
    #            for connecting your source or target endpoint, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html">Working with DMS Endpoints</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the
    #            endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the endpoint.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The Secure Sockets Layer (SSL) mode to use for the SSL connection. The default is
    #               <code>none</code>
    #            </p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the service access role that you want to use to
    #            create the endpoint. The role must allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute external_table_definition
    #   <p>The external table definition. </p>
    #   @return [String]
    # @!attribute dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>Database Migration Service
    #               User Guide.</i>
    #            </p>
    #   @return [Types::DynamoDbSettings]
    # @!attribute s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::S3Settings]
    # @!attribute dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Possible settings include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ServiceAccessRoleArn</code> - The Amazon Resource Name (ARN) used by the
    #                  service access IAM role. The role must allow the <code>iam:PassRole</code>
    #                  action.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>BucketName</code> - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows:
    #               <code>ServiceAccessRoleArn=string,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string", } </code>
    #            </p>
    #   @return [Types::DmsTransferSettings]
    # @!attribute mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings when using MongoDB as a source for Database Migration Service</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MongoDbSettings]
    # @!attribute kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to migrate data to a Kinesis data stream</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::KinesisSettings]
    # @!attribute kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using
    #               object mapping to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #   @return [Types::KafkaSettings]
    # @!attribute elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more
    #            information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for
    #               DMS</a> in the <i>Database Migration Service User Guide</i>.</p>
    #   @return [Types::ElasticsearchSettings]
    # @!attribute neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon
    #               Neptune as a target</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::NeptuneSettings]
    # @!attribute redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #   @return [Types::RedshiftSettings]
    # @!attribute postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection attributes when using PostgreSQL as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib"> Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::PostgreSQLSettings]
    # @!attribute my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MySQLSettings]
    # @!attribute oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::OracleSettings]
    # @!attribute sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::SybaseSettings]
    # @!attribute microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection attributes when using SQL Server as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib"> Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MicrosoftSQLServerSettings]
    # @!attribute ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra
    #               connection attributes when using Db2 LUW as a source for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::IBMDb2Settings]
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    #   @return [String]
    # @!attribute doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    #   @return [Types::DocDbSettings]
    # @!attribute redis_settings
    #   <p>Settings in JSON format for the target Redis endpoint.</p>
    #   @return [Types::RedisSettings]
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #   @return [Types::GcpMySQLSettings]
    # @!attribute timestream_settings
    #   <p>Settings in JSON format for the target Amazon Timestream endpoint.</p>
    #   @return [Types::TimestreamSettings]
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
      :ibm_db2_settings,
      :resource_identifier,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      :timestream_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint
    #   <p>The endpoint that was created.</p>
    #   @return [Types::Endpoint]
    class CreateEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription. This name must be less than 255
    #            characters.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it. </p>
    #   @return [String]
    # @!attribute source_type
    #   <p> The type of DMS resource that generates the events. For example, if you want to be
    #            notified of events generated by a replication instance, you set this parameter to
    #               <code>replication-instance</code>. If this value isn't specified, all events are
    #            returned. </p>
    #            <p>Valid values: <code>replication-instance</code> | <code>replication-task</code>
    #            </p>
    #   @return [String]
    # @!attribute event_categories
    #   <p>A list of event categories for a source type that you want to subscribe to. For more
    #            information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html">Working with Events and Notifications</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #   @return [Array<String>]
    # @!attribute source_ids
    #   <p>A list of identifiers for which DMS provides notification events.</p>
    #            <p>If you don't specify a value, notifications are provided for all sources.</p>
    #            <p>If you specify multiple values, they must be of the same type. For example, if you
    #            specify a database instance ID, then all of the other values must be database instance
    #            IDs.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p> A Boolean value; set to <code>true</code> to activate the subscription, or set to
    #               <code>false</code> to create the subscription but not activate it. </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the event subscription.</p>
    #   @return [Array<Types::Tag>]
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :source_ids,
      :enabled,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute event_subscription
    #   <p>The event subscription that was created.</p>
    #   @return [Types::EventSubscription]
    class CreateEventSubscriptionResponse < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collector_name
    #   <p>The name of your Fleet Advisor collector (for example, <code>sample-collector</code>).</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary description of your Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the Fleet Advisor collector uses to store inventory metadata.</p>
    #   @return [String]
    class CreateFleetAdvisorCollectorRequest < Struct.new(
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collector_referenced_id
    #   <p>The unique ID of the new Fleet Advisor collector, for example:
    #                   <code>22fda70c-40d5-4acf-b233-a495bd8eb7f5</code>
    #            </p>
    #   @return [String]
    # @!attribute collector_name
    #   <p>The name of the new Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A summary description of the Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The IAM role that grants permissions to access the specified Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The Amazon S3 bucket that the collector uses to store inventory metadata.</p>
    #   @return [String]
    class CreateFleetAdvisorCollectorResponse < Struct.new(
      :collector_referenced_id,
      :collector_name,
      :description,
      :service_access_role_arn,
      :s3_bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute availability_zone
    #   <p>The Availability Zone where the instance profile will be created. The default
    #            value is a random, system-chosen Availability Zone in the Amazon Web Services Region where your 
    #            data provider is created, for examplem <code>us-east-1d</code>.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt 
    #            the connection parameters for the instance profile.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyArn</code> parameter, then
    #            DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the instance profile. A value of
    #            <code>true</code> represents an instance profile with a public IP address. A value of
    #            <code>false</code> represents an instance profile with a private IP address. The default value
    #            is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the instance profile.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute network_type
    #   <p>Specifies the network type for the instance profile. A value of <code>IPV4</code> 
    #            represents an instance profile with IPv4 network type and only supports IPv4 addressing. 
    #            A value of <code>IPV6</code> represents an instance profile with IPv6 network type 
    #            and only supports IPv6 addressing. A value of <code>DUAL</code> represents an instance 
    #            profile with dual network type that supports IPv4 and IPv6 addressing.</p>
    #   @return [String]
    # @!attribute instance_profile_name
    #   <p>A user-friendly name for the instance profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the instance profile.</p>
    #   @return [String]
    # @!attribute subnet_group_identifier
    #   <p>A subnet group to associate with the instance profile.</p>
    #   @return [String]
    # @!attribute vpc_security_groups
    #   <p>Specifies the VPC security group names to be used with the instance profile. 
    #            The VPC security group must work with the VPC containing the instance profile.</p>
    #   @return [Array<String>]
    class CreateInstanceProfileMessage < Struct.new(
      :availability_zone,
      :kms_key_arn,
      :publicly_accessible,
      :tags,
      :network_type,
      :instance_profile_name,
      :description,
      :subnet_group_identifier,
      :vpc_security_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile
    #   <p>The instance profile that was created.</p>
    #   @return [Types::InstanceProfile]
    class CreateInstanceProfileResponse < Struct.new(
      :instance_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_name
    #   <p>A user-friendly name for the migration project.</p>
    #   @return [String]
    # @!attribute source_data_provider_descriptors
    #   <p>Information about the source data provider, including the name, ARN, and Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    # @!attribute target_data_provider_descriptors
    #   <p>Information about the target data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    # @!attribute instance_profile_identifier
    #   <p>The identifier of the associated instance profile. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    #   @return [String]
    # @!attribute transformation_rules
    #   <p>The settings in JSON format for migration rules. Migration rules make it possible for you to change 
    #            the object names according to the rules that you specify. For example, you can change an object name 
    #            to lowercase or uppercase, add or remove a prefix or suffix, or rename objects.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the migration project.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the migration project.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute schema_conversion_application_attributes
    #   <p>The schema conversion application attributes, including the Amazon S3 bucket name and Amazon S3 role ARN.</p>
    #   @return [Types::SCApplicationAttributes]
    class CreateMigrationProjectMessage < Struct.new(
      :migration_project_name,
      :source_data_provider_descriptors,
      :target_data_provider_descriptors,
      :instance_profile_identifier,
      :transformation_rules,
      :description,
      :tags,
      :schema_conversion_application_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project
    #   <p>The migration project that was created.</p>
    #   @return [Types::MigrationProject]
    class CreateMigrationProjectResponse < Struct.new(
      :migration_project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_identifier
    #   <p>A unique identifier that you want to use to create a <code>ReplicationConfigArn</code>
    #            that is returned as part of the output from this action. You can then pass this output
    #               <code>ReplicationConfigArn</code> as the value of the <code>ReplicationConfigArn</code>
    #            option for other actions to identify both DMS Serverless replications and replication
    #            configurations that you want those actions to operate on. For some actions, you can also
    #            use either this unique identifier or a corresponding ARN in action filters to identify the
    #            specific replication and replication configuration to operate on.</p>
    #   @return [String]
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the source endpoint for this DMS Serverless
    #            replication configuration.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the target endpoint for this DMS serverless
    #            replication configuration.</p>
    #   @return [String]
    # @!attribute compute_config
    #   <p>Configuration parameters for provisioning an DMS Serverless replication.</p>
    #   @return [Types::ComputeConfig]
    # @!attribute replication_type
    #   <p>The type of DMS Serverless replication to provision using this replication
    #            configuration.</p>
    #            <p>Possible values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"full-load"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"cdc"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"full-load-and-cdc"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>JSON table mappings for DMS Serverless replications that are provisioned using this
    #            replication configuration. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.SelectionTransformation.html"> Specifying table selection and transformations rules using
    #               JSON</a>.</p>
    #   @return [String]
    # @!attribute replication_settings
    #   <p>Optional JSON settings for DMS Serverless replications that are provisioned using this
    #            replication configuration. For example, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.ChangeProcessingTuning.html"> Change processing tuning settings</a>.</p>
    #   @return [String]
    # @!attribute supplemental_settings
    #   <p>Optional JSON settings for specifying supplemental data. For more information, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">
    #               Specifying supplemental data for task settings</a>.</p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>Optional unique value or name that you set for a given resource that can be used to
    #            construct an Amazon Resource Name (ARN) for that resource. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#CHAP_Security.FineGrainedAccess"> Fine-grained access control using resource names and
    #            tags</a>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more optional tags associated with resources used by the DMS Serverless
    #            replication. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tagging.html"> Tagging resources in Database Migration Service</a>.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config
    #   <p>Configuration parameters returned from the DMS Serverless replication after it is
    #            created.</p>
    #   @return [Types::ReplicationConfig]
    class CreateReplicationConfigResponse < Struct.new(
      :replication_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Can't end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to be initially allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set
    #            this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.Types.html ">
    #               Choosing the right DMS replication instance</a>; and, <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_BestPractices.SizingReplicationInstance.html">Selecting the best size for a replication instance</a>. </p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #   @return [Array<String>]
    # @!attribute availability_zone
    #   <p>The Availability Zone where the replication instance will be created. The default value
    #            is a random, system-chosen Availability Zone in the endpoint's Amazon Web Services Region, for example:
    #               <code>us-east-1d</code>.</p>
    #   @return [String]
    # @!attribute replication_subnet_group_identifier
    #   <p>A subnet group to associate with the replication instance.</p>
    #   @return [String]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range during which system maintenance can occur, in Universal
    #            Coordinated Time (UTC).</p>
    #            <p> Format: <code>ddd:hh24:mi-ddd:hh24:mi</code>
    #            </p>
    #            <p>Default: A 30-minute window selected at random from an 8-hour block of time per
    #            Amazon Web Services Region, occurring on a random day of the week.</p>
    #            <p>Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun</p>
    #            <p>Constraints: Minimum 30-minute window.</p>
    #   @return [String]
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication instance is created, the
    #            default is the latest engine version available.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates whether minor engine upgrades are applied automatically to the
    #            replication instance during the maintenance window. This parameter defaults to
    #               <code>true</code>.</p>
    #            <p>Default: <code>true</code>
    #            </p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the replication instance.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #            instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute dns_name_servers
    #   <p>A list of custom DNS name servers supported for the replication instance to access your
    #            on-premise source or target database. This list overrides the default name servers
    #            supported by the replication instance. You can specify a comma-separated list of internet
    #            addresses for up to four on-premise DNS name servers. For example:
    #               <code>"1.1.1.1,2.2.2.2,3.3.3.3,4.4.4.4"</code>
    #            </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    #   @return [String]
    # @!attribute kerberos_authentication_settings
    #   <p>Specifies the settings required for kerberos authentication when creating the
    #            replication instance.</p>
    #   @return [Types::KerberosAuthenticationSettings]
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
      :kerberos_authentication_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance
    #   <p>The replication instance that was created.</p>
    #   @return [Types::ReplicationInstance]
    class CreateReplicationInstanceResponse < Struct.new(
      :replication_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_subnet_group_identifier
    #   <p>The name for the replication subnet group. This value is stored as a lowercase
    #            string.</p>
    #            <p>Constraints: Must contain no more than 255 alphanumeric characters, periods,
    #            underscores, or hyphens. Must not be "default".</p>
    #            <p>Example: <code>mySubnetgroup</code>
    #            </p>
    #   @return [String]
    # @!attribute replication_subnet_group_description
    #   <p>The description for the subnet group.
    #         </p>
    #            <p>Constraints: This parameter Must not contain non-printable control characters.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>Two or more subnet IDs to be assigned to the subnet group.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the subnet group.</p>
    #   @return [Array<Types::Tag>]
    class CreateReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_subnet_group
    #   <p>The replication subnet group that was created.</p>
    #   @return [Types::ReplicationSubnetGroup]
    class CreateReplicationSubnetGroupResponse < Struct.new(
      :replication_subnet_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_identifier
    #   <p>An identifier for the replication task.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the source endpoint.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>An Amazon Resource Name (ARN) that uniquely identifies the target endpoint.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of a replication instance.</p>
    #   @return [String]
    # @!attribute migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> |
    #               <code>full-load-and-cdc</code>
    #            </p>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>The table mappings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html">Using Table
    #               Mapping to Specify Task Settings</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute replication_task_settings
    #   <p>Overall settings for the task, in JSON format. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html">Specifying Task
    #               Settings for Database Migration Service Tasks</a> in the <i>Database Migration Service User
    #            Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the replication task.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source
    #            and target endpoints. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for
    #               Task Settings</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute resource_identifier
    #   <p>A friendly name for the resource identifier at the end of the <code>EndpointArn</code>
    #            response parameter that is returned in the created <code>Endpoint</code> object. The value
    #            for this parameter can have up to 31 characters. It can contain only ASCII letters, digits,
    #            and hyphen ('-'). Also, it can't end with a hyphen or contain two consecutive hyphens,
    #            and can only begin with a letter, such as <code>Example-App-ARN1</code>. For example, this
    #            value might result in the <code>EndpointArn</code> value
    #               <code>arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1</code>. If you don't
    #            specify a <code>ResourceIdentifier</code> value, DMS generates a default identifier value
    #            for the end of <code>EndpointArn</code>.</p>
    #   @return [String]
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
      :resource_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The replication task that was created.</p>
    #   @return [Types::ReplicationTask]
    class CreateReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DataFormatValue
      CSV = 'csv'
      PARQUET = 'parquet'
    end

    # <p>This object provides information about a DMS data migration.</p>
    # @!attribute data_migration_name
    #   <p>The user-friendly name for the data migration.</p>
    #   @return [String]
    # @!attribute data_migration_arn
    #   <p>The Amazon Resource Name (ARN) that identifies this replication.</p>
    #   @return [String]
    # @!attribute data_migration_create_time
    #   <p>The UTC time when DMS created the data migration.</p>
    #   @return [Time]
    # @!attribute data_migration_start_time
    #   <p>The UTC time when DMS started the data migration.</p>
    #   @return [Time]
    # @!attribute data_migration_end_time
    #   <p>The UTC time when data migration ended.</p>
    #   @return [Time]
    # @!attribute service_access_role_arn
    #   <p>The IAM role that the data migration uses to access Amazon Web Services resources.</p>
    #   @return [String]
    # @!attribute migration_project_arn
    #   <p>The Amazon Resource Name (ARN) of the data migration's associated migration
    #            project.</p>
    #   @return [String]
    # @!attribute data_migration_type
    #   <p>Specifies whether the data migration is full-load only, change data capture (CDC) only,
    #            or full-load and CDC.</p>
    #   @return [String]
    # @!attribute data_migration_settings
    #   <p>Specifies CloudWatch settings and selection rules for the data migration.</p>
    #   @return [Types::DataMigrationSettings]
    # @!attribute source_data_settings
    #   <p>Specifies information about the data migration's source data provider.</p>
    #   @return [Array<Types::SourceDataSetting>]
    # @!attribute target_data_settings
    #   <p>Specifies information about the data migration's target data provider.</p>
    #   @return [Array<Types::TargetDataSetting>]
    # @!attribute data_migration_statistics
    #   <p>Provides information about the data migration's run, including start and stop time,
    #            latency, and data migration progress.</p>
    #   @return [Types::DataMigrationStatistics]
    # @!attribute data_migration_status
    #   <p>The current status of the data migration. </p>
    #   @return [String]
    # @!attribute public_ip_addresses
    #   <p>The IP addresses of the endpoints for the data migration.</p>
    #   @return [Array<String>]
    # @!attribute data_migration_cidr_blocks
    #   <p>The CIDR blocks of the endpoints for the data migration.</p>
    #   @return [Array<String>]
    # @!attribute last_failure_message
    #   <p>Information about the data migration's most recent error or failure.</p>
    #   @return [String]
    # @!attribute stop_reason
    #   <p>The reason the data migration last stopped.</p>
    #   @return [String]
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
      :stop_reason,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Options for configuring a data migration, including whether to enable CloudWatch logs,
    #          and the selection rules to use to include or exclude database objects from the
    #          migration.</p>
    # @!attribute number_of_jobs
    #   <p>The number of parallel jobs that trigger parallel threads to unload the tables from the
    #            source, and then load them to the target.</p>
    #   @return [Integer]
    # @!attribute cloudwatch_logs_enabled
    #   <p>Whether to enable CloudWatch logging for the data migration.</p>
    #   @return [Boolean]
    # @!attribute selection_rules
    #   <p>A JSON-formatted string that defines what objects to include and exclude from the
    #            migration.</p>
    #   @return [String]
    class DataMigrationSettings < Struct.new(
      :number_of_jobs,
      :cloudwatch_logs_enabled,
      :selection_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the data migration run, including start and stop time, latency, and
    #          migration progress.</p>
    # @!attribute tables_loaded
    #   <p>The number of tables loaded in the current data migration run.</p>
    #   @return [Integer]
    # @!attribute elapsed_time_millis
    #   <p>The elapsed duration of the data migration run.</p>
    #   @return [Integer]
    # @!attribute tables_loading
    #   <p>The data migration's table loading progress.</p>
    #   @return [Integer]
    # @!attribute full_load_percentage
    #   <p>The data migration's progress in the full-load migration phase.</p>
    #   @return [Integer]
    # @!attribute cdc_latency
    #   <p>The current latency of the change data capture (CDC) operation.</p>
    #   @return [Integer]
    # @!attribute tables_queued
    #   <p>The number of tables that are waiting for processing.</p>
    #   @return [Integer]
    # @!attribute tables_errored
    #   <p>The number of tables that DMS failed to process.</p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p>The time when the migration started.</p>
    #   @return [Time]
    # @!attribute stop_time
    #   <p>The time when the migration stopped or failed.</p>
    #   @return [Time]
    class DataMigrationStatistics < Struct.new(
      :tables_loaded,
      :elapsed_time_millis,
      :tables_loading,
      :full_load_percentage,
      :cdc_latency,
      :tables_queued,
      :tables_errored,
      :start_time,
      :stop_time,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:tables_loaded] = 0 unless options.key?(:tables_loaded)
        options[:elapsed_time_millis] = 0 unless options.key?(:elapsed_time_millis)
        options[:tables_loading] = 0 unless options.key?(:tables_loading)
        options[:full_load_percentage] = 0 unless options.key?(:full_load_percentage)
        options[:cdc_latency] = 0 unless options.key?(:cdc_latency)
        options[:tables_queued] = 0 unless options.key?(:tables_queued)
        options[:tables_errored] = 0 unless options.key?(:tables_errored)
        super
      end
    end

    # <p>Provides information that defines a data provider.</p>
    # @!attribute data_provider_name
    #   <p>The name of the data provider.</p>
    #   @return [String]
    # @!attribute data_provider_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the data provider.</p>
    #   @return [String]
    # @!attribute data_provider_creation_time
    #   <p>The time the data provider was created.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description of the data provider. Descriptions can have up to 31 characters. 
    #            A description can contain only ASCII letters, digits, and hyphens ('-'). Also, it can't 
    #            end with a hyphen or contain two consecutive hyphens, and can only begin with a letter.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The type of database engine for the data provider. Valid values include <code>"aurora"</code>, 
    #            <code>"aurora-postgresql"</code>, <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>, 
    #            <code>"sqlserver"</code>, <code>redshift</code>, <code>mariadb</code>, <code>mongodb</code>, <code>db2</code>, <code>db2-zos</code> and <code>docdb</code>. A value of <code>"aurora"</code> represents Amazon Aurora MySQL-Compatible Edition.</p>
    #   @return [String]
    # @!attribute virtual
    #   <p>Indicates whether the data provider is virtual.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>The settings in JSON format for a data provider.</p>
    #   @return [Types::DataProviderSettings]
    class DataProvider < Struct.new(
      :data_provider_name,
      :data_provider_arn,
      :data_provider_creation_time,
      :description,
      :engine,
      :virtual,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a data provider.</p>
    # @!attribute secrets_manager_secret_id
    #   <p>The identifier of the Amazon Web Services Secrets Manager Secret used to store access credentials for the data provider.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The ARN of the role used to access Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    # @!attribute data_provider_name
    #   <p>The user-friendly name of the data provider.</p>
    #   @return [String]
    # @!attribute data_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the data provider.</p>
    #   @return [String]
    class DataProviderDescriptor < Struct.new(
      :secrets_manager_secret_id,
      :secrets_manager_access_role_arn,
      :data_provider_name,
      :data_provider_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about a data provider.</p>
    # @!attribute data_provider_identifier
    #   <p>The name or Amazon Resource Name (ARN) of the data provider.</p>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The identifier of the Amazon Web Services Secrets Manager Secret used to store access credentials for the data provider.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The ARN of the role used to access Amazon Web Services Secrets Manager.</p>
    #   @return [String]
    class DataProviderDescriptorDefinition < Struct.new(
      :data_provider_identifier,
      :secrets_manager_secret_id,
      :secrets_manager_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a data provider.</p>
    # @!attribute redshift_settings
    #   <p>Provides information that defines an Amazon Redshift data provider.</p>
    #   @return [Types::RedshiftDataProviderSettings]
    # @!attribute postgre_sql_settings
    #   <p>Provides information that defines a PostgreSQL data provider.</p>
    #   @return [Types::PostgreSqlDataProviderSettings]
    # @!attribute my_sql_settings
    #   <p>Provides information that defines a MySQL data provider.</p>
    #   @return [Types::MySqlDataProviderSettings]
    # @!attribute oracle_settings
    #   <p>Provides information that defines an Oracle data provider.</p>
    #   @return [Types::OracleDataProviderSettings]
    # @!attribute microsoft_sql_server_settings
    #   <p>Provides information that defines a Microsoft SQL Server data provider.</p>
    #   @return [Types::MicrosoftSqlServerDataProviderSettings]
    # @!attribute doc_db_settings
    #   <p>Provides information that defines a DocumentDB data provider.</p>
    #   @return [Types::DocDbDataProviderSettings]
    # @!attribute maria_db_settings
    #   <p>Provides information that defines a MariaDB data provider.</p>
    #   @return [Types::MariaDbDataProviderSettings]
    # @!attribute ibm_db2_luw_settings
    #   <p>Provides information that defines an IBM DB2 LUW data provider.</p>
    #   @return [Types::IbmDb2LuwDataProviderSettings]
    # @!attribute ibm_db2z_os_settings
    #   <p>Provides information that defines an IBM DB2 for z/OS data provider.</p>
    #   @return [Types::IbmDb2zOsDataProviderSettings]
    # @!attribute mongo_db_settings
    #   <p>Provides information that defines a MongoDB data provider.</p>
    #   @return [Types::MongoDbDataProviderSettings]
    class DataProviderSettings < Struct.new(
      :redshift_settings,
      :postgre_sql_settings,
      :my_sql_settings,
      :oracle_settings,
      :microsoft_sql_server_settings,
      :doc_db_settings,
      :maria_db_settings,
      :ibm_db2_luw_settings,
      :ibm_db2z_os_settings,
      :mongo_db_settings,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RedshiftSettings < DataProviderSettings; end
      class PostgreSqlSettings < DataProviderSettings; end
      class MySqlSettings < DataProviderSettings; end
      class OracleSettings < DataProviderSettings; end
      class MicrosoftSqlServerSettings < DataProviderSettings; end
      class DocDbSettings < DataProviderSettings; end
      class MariaDbSettings < DataProviderSettings; end
      class IbmDb2LuwSettings < DataProviderSettings; end
      class IbmDb2zOsSettings < DataProviderSettings; end
      class MongoDbSettings < DataProviderSettings; end
      class Unknown < DataProviderSettings; end
    end

    # <p>Describes an inventory database instance for a Fleet Advisor collector.</p>
    # @!attribute engine
    #   <p>The database engine of a database in a Fleet Advisor collector inventory, for example <code>Microsoft
    #                   SQL Server</code>.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The database engine version of a database in a Fleet Advisor collector inventory, for example
    #                   <code>2019</code>.</p>
    #   @return [String]
    # @!attribute engine_edition
    #   <p>The database engine edition of a database in a Fleet Advisor collector inventory, for example
    #                   <code>Express</code>.</p>
    #   @return [String]
    # @!attribute service_pack
    #   <p>The service pack level of the database.</p>
    #   @return [String]
    # @!attribute support_level
    #   <p>The support level of the database, for example <code>Mainstream support</code>.</p>
    #   @return [String]
    # @!attribute os_architecture
    #   <p>The operating system architecture of the database.</p>
    #   @return [Integer]
    # @!attribute tooltip
    #   <p>Information about the database engine software, for example <code>Mainstream support
    #                   ends on November 14th, 2024</code>.</p>
    #   @return [String]
    class DatabaseInstanceSoftwareDetailsResponse < Struct.new(
      :engine,
      :engine_version,
      :engine_edition,
      :service_pack,
      :support_level,
      :os_architecture,
      :tooltip,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatabaseMode
      DEFAULT = 'default'
      BABELFISH = 'babelfish'
    end

    # <p>Describes a database in a Fleet Advisor collector inventory.</p>
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory. </p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory. </p>
    #   @return [String]
    # @!attribute number_of_schemas
    #   <p>The number of schemas in a Fleet Advisor collector inventory database. </p>
    #   @return [Integer]
    # @!attribute server
    #   <p>The server name of a database in a Fleet Advisor collector inventory. </p>
    #   @return [Types::ServerShortInfoResponse]
    # @!attribute software_details
    #   <p>The software details of a database in a Fleet Advisor collector inventory, such as database engine and
    #               version.</p>
    #   @return [Types::DatabaseInstanceSoftwareDetailsResponse]
    # @!attribute collectors
    #   <p>A list of collectors associated with the database.</p>
    #   @return [Array<Types::CollectorShortInfoResponse>]
    class DatabaseResponse < Struct.new(
      :database_id,
      :database_name,
      :ip_address,
      :number_of_schemas,
      :server,
      :software_details,
      :collectors,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a database in a Fleet Advisor collector inventory.</p>
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_engine
    #   <p>The database engine of a database in a Fleet Advisor collector inventory, for example
    #                   <code>PostgreSQL</code>.</p>
    #   @return [String]
    class DatabaseShortInfoResponse < Struct.new(
      :database_id,
      :database_name,
      :database_ip_address,
      :database_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DatePartitionDelimiterValue
      SLASH = 'SLASH'
      UNDERSCORE = 'UNDERSCORE'
      DASH = 'DASH'
      NONE = 'NONE'
    end

    module DatePartitionSequenceValue
      YYYYMMDD = 'YYYYMMDD'
      YYYYMMDDHH = 'YYYYMMDDHH'
      YYYYMM = 'YYYYMM'
      MMYYYYDD = 'MMYYYYDD'
      DDMMYYYY = 'DDMMYYYY'
    end

    # <p>Provides error information about a schema conversion operation.</p>
    # @!attribute message
    #   <p>The error message.</p>
    #   @return [String]
    class DefaultErrorDetails < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate.</p>
    #   @return [String]
    class DeleteCertificateMessage < Struct.new(
      :certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The Secure Sockets Layer (SSL) certificate.</p>
    #   @return [Types::Certificate]
    class DeleteCertificateResponse < Struct.new(
      :certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collector_referenced_id
    #   <p>The reference ID of the Fleet Advisor collector to delete.</p>
    #   @return [String]
    class DeleteCollectorRequest < Struct.new(
      :collector_referenced_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    class DeleteConnectionMessage < Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute connection
    #   <p>The connection that is being deleted.</p>
    #   @return [Types::Connection]
    class DeleteConnectionResponse < Struct.new(
      :connection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to delete.</p>
    #   @return [String]
    class DeleteDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration
    #   <p>The deleted data migration.</p>
    #   @return [Types::DataMigration]
    class DeleteDataMigrationResponse < Struct.new(
      :data_migration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider_identifier
    #   <p>The identifier of the data provider to delete.</p>
    #   @return [String]
    class DeleteDataProviderMessage < Struct.new(
      :data_provider_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider
    #   <p>The data provider that was deleted.</p>
    #   @return [Types::DataProvider]
    class DeleteDataProviderResponse < Struct.new(
      :data_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    class DeleteEndpointMessage < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint
    #   <p>The endpoint that was deleted.</p>
    #   @return [Types::Endpoint]
    class DeleteEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription to be deleted.</p>
    #   @return [String]
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute event_subscription
    #   <p>The event subscription that was deleted.</p>
    #   @return [Types::EventSubscription]
    class DeleteEventSubscriptionResponse < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_ids
    #   <p>The IDs of the Fleet Advisor collector databases to delete.</p>
    #   @return [Array<String>]
    class DeleteFleetAdvisorDatabasesRequest < Struct.new(
      :database_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_ids
    #   <p>The IDs of the databases that the operation deleted.</p>
    #   @return [Array<String>]
    class DeleteFleetAdvisorDatabasesResponse < Struct.new(
      :database_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_identifier
    #   <p>The identifier of the instance profile to delete.</p>
    #   @return [String]
    class DeleteInstanceProfileMessage < Struct.new(
      :instance_profile_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile
    #   <p>The instance profile that was deleted.</p>
    #   @return [Types::InstanceProfile]
    class DeleteInstanceProfileResponse < Struct.new(
      :instance_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) of the migration project to delete.</p>
    #   @return [String]
    class DeleteMigrationProjectMessage < Struct.new(
      :migration_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project
    #   <p>The migration project that was deleted.</p>
    #   @return [Types::MigrationProject]
    class DeleteMigrationProjectResponse < Struct.new(
      :migration_project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The replication config to delete.</p>
    #   @return [String]
    class DeleteReplicationConfigMessage < Struct.new(
      :replication_config_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config
    #   <p>Configuration parameters returned for the DMS Serverless replication after it is
    #            deleted.</p>
    #   @return [Types::ReplicationConfig]
    class DeleteReplicationConfigResponse < Struct.new(
      :replication_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance to be deleted.</p>
    #   @return [String]
    class DeleteReplicationInstanceMessage < Struct.new(
      :replication_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance
    #   <p>The replication instance that was deleted.</p>
    #   @return [Types::ReplicationInstance]
    class DeleteReplicationInstanceResponse < Struct.new(
      :replication_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_subnet_group_identifier
    #   <p>The subnet group name of the replication instance.</p>
    #   @return [String]
    class DeleteReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    class DeleteReplicationSubnetGroupResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of the premigration assessment run to be deleted.</p>
    #   @return [String]
    class DeleteReplicationTaskAssessmentRunMessage < Struct.new(
      :replication_task_assessment_run_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_assessment_run
    #   <p>The <code>ReplicationTaskAssessmentRun</code> object for the deleted assessment
    #            run.</p>
    #   @return [Types::ReplicationTaskAssessmentRun]
    class DeleteReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be deleted.</p>
    #   @return [String]
    class DeleteReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The deleted replication task.</p>
    #   @return [Types::ReplicationTask]
    class DeleteReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    class DescribeAccountAttributesMessage < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute account_quotas
    #   <p>Account quota information.</p>
    #   @return [Array<Types::AccountQuota>]
    # @!attribute unique_account_identifier
    #   <p>A unique DMS identifier for an account in a particular Amazon Web Services Region. The value of this
    #            identifier has the following format: <code>c99999999999</code>. DMS uses this identifier to
    #            name artifacts. For example, DMS uses this identifier to name the default Amazon S3 bucket
    #            for storing task assessment reports in a given Amazon Web Services Region. The format of this S3 bucket
    #            name is the following:
    #                  <code>dms-<i>AccountNumber</i>-<i>UniqueAccountIdentifier</i>.</code>
    #            Here is an example name for this default S3 bucket:
    #               <code>dms-111122223333-c44445555666</code>.</p>
    #            <note>
    #               <p>DMS supports the <code>UniqueAccountIdentifier</code> parameter in versions 3.1.4
    #               and later.</p>
    #            </note>
    #   @return [String]
    class DescribeAccountAttributesResponse < Struct.new(
      :account_quotas,
      :unique_account_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>Amazon Resource Name (ARN) of a migration task on which you want to base the default
    #            list of individual assessments.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>ARN of a replication instance on which you want to base the default list of individual
    #            assessments.</p>
    #   @return [String]
    # @!attribute replication_config_arn
    #   <p>Amazon Resource Name (ARN) of a serverless replication on which you want to base the default
    #            list of individual assessments.</p>
    #   @return [String]
    # @!attribute source_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a
    #            source.</p>
    #   @return [String]
    # @!attribute target_engine_name
    #   <p>Name of a database engine that the specified replication instance supports as a
    #            target.</p>
    #   @return [String]
    # @!attribute migration_type
    #   <p>Name of the migration type that each provided individual assessment must support.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>Maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeApplicableIndividualAssessmentsMessage < Struct.new(
      :replication_task_arn,
      :replication_instance_arn,
      :replication_config_arn,
      :source_engine_name,
      :target_engine_name,
      :migration_type,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute individual_assessment_names
    #   <p>List of names for the individual assessments supported by the premigration assessment
    #            run that you start based on the specified request parameters. For more information on the
    #            available individual assessments, including compatibility with different migration task
    #            configurations, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.AssessmentReport.html">Working with premigration assessment runs</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>Pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeApplicableIndividualAssessmentsResponse < Struct.new(
      :individual_assessment_names,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the certificates described in the form of key-value pairs. Valid
    #            values are <code>certificate-arn</code> and <code>certificate-id</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 10</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeCertificatesMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The pagination token.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>The Secure Sockets Layer (SSL) certificates associated with the replication
    #            instance.</p>
    #   @return [Array<Types::Certificate>]
    class DescribeCertificatesResponse < Struct.new(
      :marker,
      :certificates,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>The filters applied to the connection.</p>
    #            <p>Valid filter names: endpoint-arn | replication-instance-arn</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeConnectionsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute connections
    #   <p>A description of the connections.</p>
    #   @return [Array<Types::Connection>]
    class DescribeConnectionsResponse < Struct.new(
      :marker,
      :connections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the schema conversion project to describe.</p>
    #   @return [String]
    class DescribeConversionConfigurationMessage < Struct.new(
      :migration_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the schema conversion project.</p>
    #   @return [String]
    # @!attribute conversion_configuration
    #   <p>The configuration parameters for the schema conversion project.</p>
    #   @return [String]
    class DescribeConversionConfigurationResponse < Struct.new(
      :migration_project_identifier,
      :conversion_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the data migrations.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    #   @return [Boolean]
    # @!attribute without_statistics
    #   <p>An option to set to avoid returning information about statistics. Use this to reduce
    #            overhead when statistics information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    #   @return [Boolean]
    class DescribeDataMigrationsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      :without_settings,
      :without_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migrations
    #   <p>Returns information about the data migrations used in the project.</p>
    #   @return [Array<Types::DataMigration>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeDataMigrationsResponse < Struct.new(
      :data_migrations,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the data providers described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values: data-provider-identifier, data provider arn or name</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    class DescribeDataProvidersMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute data_providers
    #   <p>A description of data providers.</p>
    #   @return [Array<Types::DataProvider>]
    class DescribeDataProvidersResponse < Struct.new(
      :marker,
      :data_providers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engine_name
    #   <p>The database engine used for your source or target endpoint.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeEndpointSettingsMessage < Struct.new(
      :engine_name,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute endpoint_settings
    #   <p>Descriptions of the endpoint settings available for your source or target database
    #            engine.</p>
    #   @return [Array<Types::EndpointSetting>]
    class DescribeEndpointSettingsResponse < Struct.new(
      :marker,
      :endpoint_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the endpoint types.</p>
    #            <p>Valid filter names: engine-name | endpoint-type</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEndpointTypesMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute supported_endpoint_types
    #   <p>The types of endpoints that are supported.</p>
    #   @return [Array<Types::SupportedEndpointType>]
    class DescribeEndpointTypesResponse < Struct.new(
      :marker,
      :supported_endpoint_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the endpoints.</p>
    #            <p>Valid filter names: endpoint-arn | endpoint-type | endpoint-id | engine-name</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEndpointsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute endpoints
    #   <p>Endpoint description.</p>
    #   @return [Array<Types::Endpoint>]
    class DescribeEndpointsResponse < Struct.new(
      :marker,
      :endpoints,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEngineVersionsMessage < Struct.new(
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute engine_versions
    #   <p>Returned <code>EngineVersion</code> objects that describe the replication instance
    #            engine versions used in the project.</p>
    #   @return [Array<Types::EngineVersion>]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEngineVersionsResponse < Struct.new(
      :engine_versions,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the event categories.</p>
    #   @return [Array<Types::Filter>]
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute event_category_group_list
    #   <p>A list of event categories.</p>
    #   @return [Array<Types::EventCategoryGroup>]
    class DescribeEventCategoriesResponse < Struct.new(
      :event_category_group_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute subscription_name
    #   <p>The name of the DMS event subscription to be described.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to event subscriptions.</p>
    #            <p>Valid filter names: <code>event-subscription-arn</code> | <code>event-subscription-id</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute event_subscriptions_list
    #   <p>A list of event subscriptions.</p>
    #   @return [Array<Types::EventSubscription>]
    class DescribeEventSubscriptionsResponse < Struct.new(
      :marker,
      :event_subscriptions_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute source_identifier
    #   <p> The identifier of an event source.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p>The type of DMS resource that generates events.</p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the events to be listed.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the events to be listed.</p>
    #   @return [Time]
    # @!attribute duration
    #   <p>The duration of the events to be listed.</p>
    #   @return [Integer]
    # @!attribute event_categories
    #   <p>A list of event categories for the source type that you've chosen.</p>
    #   @return [Array<String>]
    # @!attribute filters
    #   <p>Filters applied to events. The only valid filter is
    #            <code>replication-instance-id</code>.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :event_categories,
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute events
    #   <p>The events described.</p>
    #   @return [Array<Types::Event>]
    class DescribeEventsResponse < Struct.new(
      :marker,
      :events,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the migration project.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the extension pack associations described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    class DescribeExtensionPackAssociationsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of extension pack associations for the specified migration project.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeExtensionPackAssociationsResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those collectors that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>collector-referenced-id</code> – The ID of the collector agent,
    #                       for example <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the collector agent.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-collectors --filter
    #                   Name="collector-referenced-id",Values="d4610ac5-e323-4ad9-bc50-eaf7249dfe9d"</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorCollectorsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collectors
    #   <p>Provides descriptions of the Fleet Advisor collectors, including the collectors' name
    #               and ID, and the latest inventory data. </p>
    #   @return [Array<Types::CollectorResponse>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #                   <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorCollectorsResponse < Struct.new(
      :collectors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those databases that meet the filter criteria: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the database engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the database
    #                       server.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the
    #                       database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>collector-name</code> – The name of the associated Fleet Advisor collector.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-databases --filter
    #                   Name="database-id",Values="45"</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorDatabasesRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute databases
    #   <p>Provides descriptions of the Fleet Advisor collector databases, including the database's collector, ID,
    #               and name.</p>
    #   @return [Array<Types::DatabaseResponse>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #                   <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorDatabasesResponse < Struct.new(
      :databases,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorLsaAnalysisRequest < Struct.new(
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute analysis
    #   <p>A list of <code>FleetAdvisorLsaAnalysisResponse</code> objects.</p>
    #   @return [Array<Types::FleetAdvisorLsaAnalysisResponse>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #                   <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorLsaAnalysisResponse < Struct.new(
      :analysis,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schema objects that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>d4610ac5-e323-4ad9-bc50-eaf7249dfe9d</code>.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>describe-fleet-advisor-schema-object-summary --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <important>
    #               <p>
    #   End of support notice: On May 20, 2026, Amazon Web Services will end support for Amazon Web Services DMS Fleet Advisor;. After May 20, 2026, you will no longer be able to access the Amazon Web Services DMS Fleet Advisor; console or Amazon Web Services DMS Fleet Advisor; resources. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/dms_fleet.advisor-end-of-support.html">Amazon Web Services DMS Fleet Advisor end of support</a>.
    #   </p>
    #            </important>
    #            <p>Sets the maximum number of records returned in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorSchemaObjectSummaryRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_advisor_schema_objects
    #   <p>A collection of <code>FleetAdvisorSchemaObjectResponse</code> objects.</p>
    #   @return [Array<Types::FleetAdvisorSchemaObjectResponse>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #                   <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorSchemaObjectSummaryResponse < Struct.new(
      :fleet_advisor_schema_objects,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p> If you specify any of the following filters, the output includes information for only
    #               those schemas that meet the filter criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>complexity</code> – The schema's complexity, for example
    #                           <code>Simple</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-id</code> – The ID of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-ip-address</code> – The IP address of the schema's
    #                       database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-name</code> – The name of the schema's database.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>database-engine</code> – The name of the schema database's
    #                       engine.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>original-schema-name</code> – The name of the schema's database's
    #                       main schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-id</code> – The ID of the schema, for example
    #                           <code>15</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>schema-name</code> – The name of the schema.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>server-ip-address</code> – The IP address of the schema
    #                       database's server.</p>
    #               </li>
    #            </ul>
    #            <p>An example is: <code>describe-fleet-advisor-schemas --filter
    #                   Name="schema-id",Values="50"</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>Sets the maximum number of records returned in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorSchemasRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute fleet_advisor_schemas
    #   <p>A collection of <code>SchemaResponse</code> objects.</p>
    #   @return [Array<Types::SchemaResponse>]
    # @!attribute next_token
    #   <p>If <code>NextToken</code> is returned, there are more results available. The value of
    #                   <code>NextToken</code> is a unique pagination token for each page. Make the call
    #               again using the returned token to retrieve the next page. Keep all other arguments
    #               unchanged. </p>
    #   @return [String]
    class DescribeFleetAdvisorSchemasResponse < Struct.new(
      :fleet_advisor_schemas,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the instance profiles described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values: instance-profile-identifier, instance profile arn or name</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    class DescribeInstanceProfilesMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute instance_profiles
    #   <p>A description of instance profiles.</p>
    #   @return [Array<Types::InstanceProfile>]
    class DescribeInstanceProfilesResponse < Struct.new(
      :marker,
      :instance_profiles,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) of the migration project.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the metadata model assessments described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #               The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #               make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    class DescribeMetadataModelAssessmentsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of metadata model assessments for the specified migration project.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeMetadataModelAssessmentsResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the metadata model conversions described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    class DescribeMetadataModelConversionsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of metadata model conversions.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeMetadataModelConversionsResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the metadata model exports described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    class DescribeMetadataModelExportsAsScriptMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of metadata model exports.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeMetadataModelExportsAsScriptResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the metadata model exports described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    class DescribeMetadataModelExportsToTargetMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of metadata model exports.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeMetadataModelExportsToTargetResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the metadata model imports described in the form of key-value pairs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>A paginated list of metadata model imports.</p>
    #   @return [Integer]
    class DescribeMetadataModelImportsMessage < Struct.new(
      :migration_project_identifier,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute requests
    #   <p>A paginated list of metadata model imports.</p>
    #   @return [Array<Types::SchemaConversionRequest>]
    class DescribeMetadataModelImportsResponse < Struct.new(
      :marker,
      :requests,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the migration projects described in the form of key-value pairs.</p>
    #            <p>Valid filter names and values:</p>
    #            <ul>
    #               <li>
    #                  <p>instance-profile-identifier, instance profile arn or name</p>
    #               </li>
    #               <li>
    #                  <p>data-provider-identifier, data provider arn or name</p>
    #               </li>
    #               <li>
    #                  <p>migration-project-identifier, migration project arn or name</p>
    #               </li>
    #            </ul>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than 
    #            the specified <code>MaxRecords</code> value, DMS includes a pagination token  
    #            in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    class DescribeMigrationProjectsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>Specifies the unique pagination token that makes it possible to display the next page of results. 
    #            If this parameter is specified, the response includes only records beyond the marker, up to the 
    #            value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>Marker</code> is returned by a previous response, there are more results available. 
    #            The value of <code>Marker</code> is a unique pagination token for each page. To retrieve the next page, 
    #            make the call again using the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute migration_projects
    #   <p>A description of migration projects.</p>
    #   @return [Array<Types::MigrationProject>]
    class DescribeMigrationProjectsResponse < Struct.new(
      :marker,
      :migration_projects,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeOrderableReplicationInstancesMessage < Struct.new(
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute orderable_replication_instances
    #   <p>The order-able replication instances available.</p>
    #   @return [Array<Types::OrderableReplicationInstance>]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeOrderableReplicationInstancesResponse < Struct.new(
      :orderable_replication_instances,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute filters
    #   <p></p>
    #   @return [Array<Types::Filter>]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    class DescribePendingMaintenanceActionsMessage < Struct.new(
      :replication_instance_arn,
      :filters,
      :marker,
      :max_records,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute pending_maintenance_actions
    #   <p>The pending maintenance action.</p>
    #   @return [Array<Types::ResourcePendingMaintenanceActions>]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribePendingMaintenanceActionsResponse < Struct.new(
      :pending_maintenance_actions,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the limitations described in the form of key-value pairs.</p>
    #            <p>Valid filter names: <code>database-id</code> | <code>engine-name</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, Fleet Advisor includes a pagination token
    #               in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies the unique pagination token that makes it possible to display the next page
    #               of results. If this parameter is specified, the response includes only records beyond
    #               the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged.</p>
    #   @return [String]
    class DescribeRecommendationLimitationsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The unique pagination token returned for you to pass to a subsequent request. Fleet
    #               Advisor returns this token when the number of records in the response is greater than
    #               the <code>MaxRecords</code> value. To retrieve the next page, make the call again using
    #               the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute limitations
    #   <p>The list of limitations for recommendations of target Amazon Web Services engines.</p>
    #   @return [Array<Types::Limitation>]
    class DescribeRecommendationLimitationsResponse < Struct.new(
      :next_token,
      :limitations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>Filters applied to the target engine recommendations described in the form of
    #               key-value pairs.</p>
    #            <p>Valid filter names: <code>database-id</code> | <code>engine-name</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than
    #               the specified <code>MaxRecords</code> value, Fleet Advisor includes a pagination token
    #               in the response so that you can retrieve the remaining results.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Specifies the unique pagination token that makes it possible to display the next page
    #               of results. If this parameter is specified, the response includes only records beyond
    #               the marker, up to the value specified by <code>MaxRecords</code>.</p>
    #            <p>If <code>NextToken</code> is returned by a previous response, there are more results
    #               available. The value of <code>NextToken</code> is a unique pagination token for each
    #               page. Make the call again using the returned token to retrieve the next page. Keep all
    #               other arguments unchanged.</p>
    #   @return [String]
    class DescribeRecommendationsRequest < Struct.new(
      :filters,
      :max_records,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The unique pagination token returned for you to pass to a subsequent request. Fleet
    #               Advisor returns this token when the number of records in the response is greater than
    #               the <code>MaxRecords</code> value. To retrieve the next page, make the call again using
    #               the returned token and keeping all other arguments unchanged.</p>
    #   @return [String]
    # @!attribute recommendations
    #   <p>The list of recommendations of target engines that Fleet Advisor created for the
    #               source database.</p>
    #   @return [Array<Types::Recommendation>]
    class DescribeRecommendationsResponse < Struct.new(
      :next_token,
      :recommendations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    class DescribeRefreshSchemasStatusMessage < Struct.new(
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute refresh_schemas_status
    #   <p>The status of the schema.</p>
    #   @return [Types::RefreshSchemasStatus]
    class DescribeRefreshSchemasStatusResponse < Struct.new(
      :refresh_schemas_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the replication configs.</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeReplicationConfigsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replication_configs
    #   <p>Returned configuration parameters that describe each provisioned DMS Serverless
    #            replication.</p>
    #   @return [Array<Types::ReplicationConfig>]
    class DescribeReplicationConfigsResponse < Struct.new(
      :marker,
      :replication_configs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReplicationInstanceTaskLogsMessage < Struct.new(
      :replication_instance_arn,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute replication_instance_task_logs
    #   <p>An array of replication task log metadata. Each member of the array contains the
    #            replication task name, ARN, and task log size (in bytes). </p>
    #   @return [Array<Types::ReplicationInstanceTaskLog>]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReplicationInstanceTaskLogsResponse < Struct.new(
      :replication_instance_arn,
      :replication_instance_task_logs,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to replication instances.</p>
    #            <p>Valid filter names: replication-instance-arn | replication-instance-id |
    #            replication-instance-class | engine-version</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeReplicationInstancesMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replication_instances
    #   <p>The replication instances described.</p>
    #   @return [Array<Types::ReplicationInstance>]
    class DescribeReplicationInstancesResponse < Struct.new(
      :marker,
      :replication_instances,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to replication subnet groups.</p>
    #            <p>Valid filter names: replication-subnet-group-id</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeReplicationSubnetGroupsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replication_subnet_groups
    #   <p>A description of the replication subnet groups.</p>
    #   @return [Array<Types::ReplicationSubnetGroup>]
    class DescribeReplicationSubnetGroupsResponse < Struct.new(
      :marker,
      :replication_subnet_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The replication config to describe.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to the replication table statistics.</p>
    #   @return [Array<Types::Filter>]
    class DescribeReplicationTableStatisticsMessage < Struct.new(
      :replication_config_arn,
      :max_records,
      :marker,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication config.</p>
    #   @return [String]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replication_table_statistics
    #   <p>Returns table statistics on the replication, including table name, rows inserted, rows
    #            updated, and rows deleted.</p>
    #   @return [Array<Types::TableStatistics>]
    class DescribeReplicationTableStatisticsResponse < Struct.new(
      :replication_config_arn,
      :marker,
      :replication_table_statistics,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the task. When this input
    #            parameter is specified, the API returns only one result and ignore the values of the
    #               <code>MaxRecords</code> and <code>Marker</code> parameters. </p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeReplicationTaskAssessmentResultsMessage < Struct.new(
      :replication_task_arn,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>- The Amazon S3 bucket where the task assessment report is located. </p>
    #   @return [String]
    # @!attribute replication_task_assessment_results
    #   <p> The task assessment report. </p>
    #   @return [Array<Types::ReplicationTaskAssessmentResult>]
    class DescribeReplicationTaskAssessmentResultsResponse < Struct.new(
      :marker,
      :bucket_name,
      :replication_task_assessment_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the premigration assessment runs described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>replication-instance-arn</code>,
    #               <code>status</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReplicationTaskAssessmentRunsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>A pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute replication_task_assessment_runs
    #   <p>One or more premigration assessment runs as specified by <code>Filters</code>.</p>
    #   @return [Array<Types::ReplicationTaskAssessmentRun>]
    class DescribeReplicationTaskAssessmentRunsResponse < Struct.new(
      :marker,
      :replication_task_assessment_runs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the individual assessments described in the form of key-value
    #            pairs.</p>
    #            <p>Valid filter names: <code>replication-task-assessment-run-arn</code>,
    #               <code>replication-task-arn</code>, <code>status</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>.</p>
    #   @return [String]
    class DescribeReplicationTaskIndividualAssessmentsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>A pagination token returned for you to pass to a subsequent request. If you pass this
    #            token as the <code>Marker</code> value in a subsequent request, the response includes only
    #            records beyond the marker, up to the value specified in the request by
    #               <code>MaxRecords</code>.</p>
    #   @return [String]
    # @!attribute replication_task_individual_assessments
    #   <p>One or more individual assessments as specified by <code>Filters</code>.</p>
    #   @return [Array<Types::ReplicationTaskIndividualAssessment>]
    class DescribeReplicationTaskIndividualAssessmentsResponse < Struct.new(
      :marker,
      :replication_task_individual_assessments,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to replication tasks.</p>
    #            <p>Valid filter names: replication-task-arn | replication-task-id | migration-type |
    #            endpoint-arn | replication-instance-arn</p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute without_settings
    #   <p>An option to set to avoid returning information about settings. Use this to reduce
    #            overhead when setting information is too large. To use this option, choose
    #               <code>true</code>; otherwise, choose <code>false</code> (the default).</p>
    #   @return [Boolean]
    class DescribeReplicationTasksMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      :without_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replication_tasks
    #   <p>A description of the replication tasks.</p>
    #   @return [Array<Types::ReplicationTask>]
    class DescribeReplicationTasksResponse < Struct.new(
      :marker,
      :replication_tasks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute filters
    #   <p>Filters applied to the replications.</p>
    #            <p> Valid filter names: <code>replication-config-arn</code> | <code>replication-config-id</code>
    #            </p>
    #   @return [Array<Types::Filter>]
    # @!attribute max_records
    #   <p>The maximum number of records to include in the response. If more records exist than the
    #            specified <code>MaxRecords</code> value, a pagination token called a marker is included in
    #            the response so that the remaining results can be retrieved. </p>
    #   @return [Integer]
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeReplicationsMessage < Struct.new(
      :filters,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p>An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute replications
    #   <p>The replication descriptions.</p>
    #   @return [Array<Types::Replication>]
    class DescribeReplicationsResponse < Struct.new(
      :marker,
      :replications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 100.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeSchemasMessage < Struct.new(
      :endpoint_arn,
      :max_records,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute schemas
    #   <p>The described schema.</p>
    #   @return [Array<String>]
    class DescribeSchemasResponse < Struct.new(
      :marker,
      :schemas,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #   @return [String]
    # @!attribute max_records
    #   <p> The maximum number of records to include in the response. If more records exist than
    #            the specified <code>MaxRecords</code> value, a pagination token called a marker is included
    #            in the response so that the remaining results can be retrieved. </p>
    #            <p>Default: 100</p>
    #            <p>Constraints: Minimum 20, maximum 500.</p>
    #   @return [Integer]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    # @!attribute filters
    #   <p>Filters applied to table statistics.</p>
    #            <p>Valid filter names: schema-name | table-name | table-state</p>
    #            <p>A combination of filters creates an AND condition where each record matches all
    #            specified filters.</p>
    #   @return [Array<Types::Filter>]
    class DescribeTableStatisticsMessage < Struct.new(
      :replication_task_arn,
      :max_records,
      :marker,
      :filters,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #   @return [String]
    # @!attribute table_statistics
    #   <p>The table statistics.</p>
    #   @return [Array<Types::TableStatistics>]
    # @!attribute marker
    #   <p> An optional pagination token provided by a previous request. If this parameter is
    #            specified, the response includes only records beyond the marker, up to the value specified
    #            by <code>MaxRecords</code>. </p>
    #   @return [String]
    class DescribeTableStatisticsResponse < Struct.new(
      :replication_task_arn,
      :table_statistics,
      :marker,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DmsSslModeValue
      NONE = 'none'
      REQUIRE = 'require'
      VERIFY_CA = 'verify-ca'
      VERIFY_FULL = 'verify-full'
    end

    # <p> The settings in JSON format for the DMS Transfer type source endpoint. </p>
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service access IAM role. The role must allow
    #            the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p> The name of the S3 bucket to use. </p>
    #   @return [String]
    class DmsTransferSettings < Struct.new(
      :service_access_role_arn,
      :bucket_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a DocumentDB data provider.</p>
    # @!attribute server_name
    #   <p>The name of the source DocumentDB server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the DocumentDB data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the DocumentDB data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the DocumentDB data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    class DocDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a DocumentDB endpoint.</p>
    # @!attribute username
    #   <p>The user name you use to access the DocumentDB source endpoint. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password for the user account you use to access the DocumentDB source endpoint.
    #         </p>
    #   @return [String]
    # @!attribute server_name
    #   <p> The name of the server on the DocumentDB source endpoint. </p>
    #   @return [String]
    # @!attribute port
    #   <p> The port value for the DocumentDB source endpoint. </p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p> The database name on the DocumentDB source endpoint. </p>
    #   @return [String]
    # @!attribute nesting_level
    #   <p> Specifies either document or table mode. </p>
    #            <p>Default value is <code>"none"</code>. Specify <code>"none"</code> to use document mode.
    #            Specify <code>"one"</code> to use table mode.</p>
    #   @return [String]
    # @!attribute extract_doc_id
    #   <p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
    #               <code>"none"</code>. </p>
    #            <p>Default value is <code>"false"</code>. </p>
    #   @return [Boolean]
    # @!attribute docs_to_investigate
    #   <p> Indicates the number of documents to preview to determine the document organization.
    #            Use this setting when <code>NestingLevel</code> is set to <code>"one"</code>. </p>
    #            <p>Must be a positive value greater than <code>0</code>. Default value is
    #            <code>1000</code>.</p>
    #   @return [Integer]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier that is used to encrypt the content on the replication
    #            instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS
    #            uses your default encryption key. KMS creates the default encryption key for your
    #            Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each
    #            Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the DocumentDB endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the DocumentDB endpoint connection details.</p>
    #   @return [String]
    # @!attribute use_update_look_up
    #   <p>If <code>true</code>, DMS retrieves the entire document from the DocumentDB source during migration.
    #            This may cause a migration failure if the server response exceeds bandwidth limits. To fetch only updates
    #            and deletes during migration, set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute replicate_shard_collections
    #   <p>If <code>true</code>, DMS replicates data to shard collections. DMS only uses this
    #            setting if the target endpoint is a DocumentDB elastic cluster.</p>
    #            <p>When this setting is <code>true</code>, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>You must set <code>TargetTablePrepMode</code> to <code>nothing</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DMS automatically sets <code>useUpdateLookup</code> to
    #                  <code>false</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
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
      :replicate_shard_collections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides the Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role used to define an
    #          Amazon DynamoDB target endpoint.</p>
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) used by the service to access the IAM role. The role
    #            must allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    class DynamoDbSettings < Struct.new(
      :service_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an OpenSearch endpoint.</p>
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service to access the IAM role. The role must
    #            allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute endpoint_uri
    #   <p>The endpoint for the OpenSearch cluster. DMS uses HTTPS if a transport
    #            protocol (http/https) is not specified.</p>
    #   @return [String]
    # @!attribute full_load_error_percentage
    #   <p>The maximum percentage of records that can fail to be written before a full load
    #            operation stops.</p>
    #            <p>To avoid early failure, this counter is only effective after 1000 records are
    #            transferred. OpenSearch also has the concept of error monitoring during the
    #            last 10 minutes of an Observation Window. If transfer of all records fail in the last 10
    #            minutes, the full load operation stops. </p>
    #   @return [Integer]
    # @!attribute error_retry_duration
    #   <p>The maximum number of seconds for which DMS retries failed API requests to the OpenSearch cluster.</p>
    #   @return [Integer]
    # @!attribute use_new_mapping_type
    #   <p>Set this option to <code>true</code> for DMS to migrate documentation using the
    #            documentation type <code>_doc</code>. OpenSearch and an Elasticsearch cluster only support
    #            the _doc documentation type in versions 7. x and later. The default value is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    class ElasticsearchSettings < Struct.new(
      :service_access_role_arn,
      :endpoint_uri,
      :full_load_error_percentage,
      :error_retry_duration,
      :use_new_mapping_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncodingTypeValue
      PLAIN = 'plain'
      PLAIN_DICTIONARY = 'plain-dictionary'
      RLE_DICTIONARY = 'rle-dictionary'
    end

    module EncryptionModeValue
      SSE_S3 = 'sse-s3'
      SSE_KMS = 'sse-kms'
    end

    # <p>Describes an endpoint of a database instance in response to operations such as the
    #          following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>CreateEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>DescribeEndpoint</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ModifyEndpoint</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    #   @return [String]
    # @!attribute engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType, include
    #               <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #               <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>,
    #               <code>"redshift"</code>, <code>"redshift-serverless"</code>, <code>"s3"</code>,
    #               <code>"db2"</code>, <code>"db2-zos"</code>, <code>"azuredb"</code>,
    #               <code>"sybase"</code>, <code>"dynamodb"</code>, <code>"mongodb"</code>,
    #               <code>"kinesis"</code>, <code>"kafka"</code>, <code>"elasticsearch"</code>,
    #               <code>"documentdb"</code>, <code>"sqlserver"</code>, <code>"neptune"</code>, and
    #               <code>"babelfish"</code>.</p>
    #   @return [String]
    # @!attribute engine_display_name
    #   <p>The expanded name for the engine name. For example, if the <code>EngineName</code>
    #            parameter is "aurora", this value would be "Amazon Aurora MySQL".</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name used to connect to the endpoint.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the server at the endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value used to access the endpoint.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The name of the database at the endpoint.</p>
    #   @return [String]
    # @!attribute extra_connection_attributes
    #   <p>Additional connection attributes used to connect to the endpoint.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the endpoint.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the connection parameters for the
    #            endpoint.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) used for SSL connection to the endpoint.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the endpoint. The default value is
    #            <code>none</code>.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) used by the service to access the IAM role. The role must
    #            allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute external_table_definition
    #   <p>The external table definition.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p> Value returned by a call to CreateEndpoint that can be used for cross-account
    #            validation. Use it on a subsequent call to CreateEndpoint to create the endpoint with a
    #            cross-account. </p>
    #   @return [String]
    # @!attribute dynamo_db_settings
    #   <p>The settings for the DynamoDB target endpoint. For more information, see the
    #               <code>DynamoDBSettings</code> structure.</p>
    #   @return [Types::DynamoDbSettings]
    # @!attribute s3_settings
    #   <p>The settings for the S3 target endpoint. For more information, see the
    #               <code>S3Settings</code> structure.</p>
    #   @return [Types::S3Settings]
    # @!attribute dms_transfer_settings
    #   <p>The settings for the DMS Transfer type source. For more information, see
    #            the DmsTransferSettings structure. </p>
    #   @return [Types::DmsTransferSettings]
    # @!attribute mongo_db_settings
    #   <p>The settings for the MongoDB source endpoint. For more information, see the
    #               <code>MongoDbSettings</code> structure.</p>
    #   @return [Types::MongoDbSettings]
    # @!attribute kinesis_settings
    #   <p>The settings for the Amazon Kinesis target endpoint. For more information, see the
    #               <code>KinesisSettings</code> structure.</p>
    #   @return [Types::KinesisSettings]
    # @!attribute kafka_settings
    #   <p>The settings for the Apache Kafka target endpoint. For more information, see the
    #               <code>KafkaSettings</code> structure.</p>
    #   @return [Types::KafkaSettings]
    # @!attribute elasticsearch_settings
    #   <p>The settings for the OpenSearch source endpoint. For more information, see
    #            the <code>ElasticsearchSettings</code> structure.</p>
    #   @return [Types::ElasticsearchSettings]
    # @!attribute neptune_settings
    #   <p>The settings for the Amazon Neptune target endpoint. For more information, see the
    #               <code>NeptuneSettings</code> structure.</p>
    #   @return [Types::NeptuneSettings]
    # @!attribute redshift_settings
    #   <p>Settings for the Amazon Redshift endpoint.</p>
    #   @return [Types::RedshiftSettings]
    # @!attribute postgre_sql_settings
    #   <p>The settings for the PostgreSQL source and target endpoint. For more information, see
    #            the <code>PostgreSQLSettings</code> structure.</p>
    #   @return [Types::PostgreSQLSettings]
    # @!attribute my_sql_settings
    #   <p>The settings for the MySQL source and target endpoint. For more information, see the
    #               <code>MySQLSettings</code> structure.</p>
    #   @return [Types::MySQLSettings]
    # @!attribute oracle_settings
    #   <p>The settings for the Oracle source and target endpoint. For more information, see the
    #               <code>OracleSettings</code> structure.</p>
    #   @return [Types::OracleSettings]
    # @!attribute sybase_settings
    #   <p>The settings for the SAP ASE source and target endpoint. For more information, see the
    #               <code>SybaseSettings</code> structure.</p>
    #   @return [Types::SybaseSettings]
    # @!attribute microsoft_sql_server_settings
    #   <p>The settings for the Microsoft SQL Server source and target endpoint. For more
    #            information, see the <code>MicrosoftSQLServerSettings</code> structure.</p>
    #   @return [Types::MicrosoftSQLServerSettings]
    # @!attribute ibm_db2_settings
    #   <p>The settings for the IBM Db2 LUW source endpoint. For more information, see the
    #               <code>IBMDb2Settings</code> structure.
    #            </p>
    #   @return [Types::IBMDb2Settings]
    # @!attribute doc_db_settings
    #   <p>Provides information that defines a DocumentDB endpoint.</p>
    #   @return [Types::DocDbSettings]
    # @!attribute redis_settings
    #   <p>The settings for the Redis target endpoint. For more information, see the
    #               <code>RedisSettings</code> structure.</p>
    #   @return [Types::RedisSettings]
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #   @return [Types::GcpMySQLSettings]
    # @!attribute timestream_settings
    #   <p>The settings for the Amazon Timestream target endpoint. For more information, see the
    #               <code>TimestreamSettings</code> structure.</p>
    #   @return [Types::TimestreamSettings]
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
      :ibm_db2_settings,
      :doc_db_settings,
      :redis_settings,
      :gcp_my_sql_settings,
      :timestream_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Endpoint settings.</p>
    # @!attribute name
    #   <p>The name that you want to give the endpoint settings.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    #   @return [String]
    # @!attribute enum_values
    #   <p>Enumerated values to use for this endpoint.</p>
    #   @return [Array<String>]
    # @!attribute sensitive
    #   <p>A value that marks this endpoint setting as sensitive.</p>
    #   @return [Boolean]
    # @!attribute units
    #   <p>The unit of measure for this endpoint setting.</p>
    #   @return [String]
    # @!attribute applicability
    #   <p>The relevance or validity of an endpoint setting for an engine name and its endpoint
    #            type.</p>
    #   @return [String]
    # @!attribute int_value_min
    #   <p>The minimum value of an endpoint setting that is of type <code>int</code>.</p>
    #   @return [Integer]
    # @!attribute int_value_max
    #   <p>The maximum value of an endpoint setting that is of type <code>int</code>.</p>
    #   @return [Integer]
    # @!attribute default_value
    #   <p>The default value of the endpoint setting if no value is specified using
    #               <code>CreateEndpoint</code> or <code>ModifyEndpoint</code>.</p>
    #   @return [String]
    class EndpointSetting < Struct.new(
      :name,
      :type,
      :enum_values,
      :sensitive,
      :units,
      :applicability,
      :int_value_min,
      :int_value_max,
      :default_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EndpointSettingTypeValue
      STRING = 'string'
      BOOLEAN = 'boolean'
      INTEGER = 'integer'
      ENUM = 'enum'
    end

    # <p>Provides information about a replication instance version.</p>
    # @!attribute version
    #   <p>The version number of the replication instance.</p>
    #   @return [String]
    # @!attribute lifecycle
    #   <p>The lifecycle status of the replication instance version. Valid values are
    #               <code>DEPRECATED</code>, <code>DEFAULT_VERSION</code>, and <code>ACTIVE</code>.</p>
    #   @return [String]
    # @!attribute release_status
    #   <p>The release status of the replication instance version.</p>
    #   @return [String]
    # @!attribute launch_date
    #   <p>The date when the replication instance version became publicly available.</p>
    #   @return [Time]
    # @!attribute auto_upgrade_date
    #   <p>The date when the replication instance will be automatically upgraded. This setting only
    #            applies if the <code>auto-minor-version</code> setting is enabled.</p>
    #   @return [Time]
    # @!attribute deprecation_date
    #   <p>The date when the replication instance version will be deprecated and can no longer be
    #            requested.</p>
    #   @return [Time]
    # @!attribute force_upgrade_date
    #   <p>The date when the replication instance will have a version upgrade forced.</p>
    #   @return [Time]
    # @!attribute available_upgrades
    #   <p>The list of valid replication instance versions that you can upgrade to.</p>
    #   @return [Array<String>]
    class EngineVersion < Struct.new(
      :version,
      :lifecycle,
      :release_status,
      :launch_date,
      :auto_upgrade_date,
      :deprecation_date,
      :force_upgrade_date,
      :available_upgrades,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides error information about a project.</p>
    # @!attribute default_error_details
    #   <p>Error information about a project.</p>
    #   @return [Types::DefaultErrorDetails]
    class ErrorDetails < Struct.new(
      :default_error_details,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class DefaultErrorDetails < ErrorDetails; end
      class Unknown < ErrorDetails; end
    end

    # <p>Describes an identifiable significant activity that affects a replication instance or
    #          task. This object can provide the message, the available event categories, the date and
    #          source of the event, and the DMS resource type.</p>
    # @!attribute source_identifier
    #   <p> The identifier of an event source.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | endpoint | replication-task</p>
    #   @return [String]
    # @!attribute message
    #   <p>The event message.</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p>The event categories available for the specified source type.</p>
    #   @return [Array<String>]
    # @!attribute date
    #   <p>The date of the event.</p>
    #   @return [Time]
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Lists categories of events subscribed to, and generated by, the applicable DMS
    #          resource type. This data type appears in response to the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html">
    #                <code>DescribeEventCategories</code>
    #             </a> action.</p>
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-server | security-group |
    #            replication-task</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p> A list of event categories from a source type that you've chosen.</p>
    #   @return [Array<String>]
    class EventCategoryGroup < Struct.new(
      :source_type,
      :event_categories,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes an event notification subscription created by the
    #             <code>CreateEventSubscription</code> operation.</p>
    # @!attribute customer_aws_id
    #   <p>The Amazon Web Services customer account associated with the DMS event notification
    #            subscription.</p>
    #   @return [String]
    # @!attribute cust_subscription_id
    #   <p>The DMS event notification subscription Id.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p>The topic ARN of the DMS event notification subscription.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the DMS event notification subscription.</p>
    #            <p>Constraints:</p>
    #            <p>Can be one of the following: creating | modifying | deleting | active | no-permission |
    #            topic-not-exist</p>
    #            <p>The status "no-permission" indicates that DMS no longer has permission to post to the
    #            SNS topic. The status "topic-not-exist" indicates that the topic was deleted after the
    #            subscription was created.</p>
    #   @return [String]
    # @!attribute subscription_creation_time
    #   <p>The time the DMS event notification subscription was created.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> The type of DMS resource that generates events. </p>
    #            <p>Valid values: replication-instance | replication-server | security-group |
    #            replication-task</p>
    #   @return [String]
    # @!attribute source_ids_list
    #   <p>A list of source Ids for the event subscription.</p>
    #   @return [Array<String>]
    # @!attribute event_categories_list
    #   <p>A lists of event categories.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Boolean value that indicates if the event subscription is enabled.</p>
    #   @return [Boolean]
    class EventSubscription < Struct.new(
      :customer_aws_id,
      :cust_subscription_id,
      :sns_topic_arn,
      :status,
      :subscription_creation_time,
      :source_type,
      :source_ids_list,
      :event_categories_list,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to assess.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The name of the assessment file to create in your Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute assessment_report_types
    #   <p>The file format of the assessment file.</p>
    #   @return [Array<String>]
    class ExportMetadataModelAssessmentMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :file_name,
      :assessment_report_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute pdf_report
    #   <p>The Amazon S3 details for an assessment exported in PDF format.</p>
    #   @return [Types::ExportMetadataModelAssessmentResultEntry]
    # @!attribute csv_report
    #   <p>The Amazon S3 details for an assessment exported in CSV format.</p>
    #   @return [Types::ExportMetadataModelAssessmentResultEntry]
    class ExportMetadataModelAssessmentResponse < Struct.new(
      :pdf_report,
      :csv_report,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an exported metadata model assessment.</p>
    # @!attribute s3_object_key
    #   <p>The object key for the object containing the exported metadata model assessment.</p>
    #   @return [String]
    # @!attribute object_url
    #   <p>The URL for the object containing the exported metadata model assessment.</p>
    #   @return [String]
    class ExportMetadataModelAssessmentResultEntry < Struct.new(
      :s3_object_key,
      :object_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about a metadata model assessment exported to SQL.</p>
    # @!attribute s3_object_key
    #   <p>The Amazon S3 object key for the object containing the exported metadata model assessment.</p>
    #   @return [String]
    # @!attribute object_url
    #   <p>The URL for the object containing the exported metadata model assessment.</p>
    #   @return [String]
    class ExportSqlDetails < Struct.new(
      :s3_object_key,
      :object_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A dependency threw an exception.</p>
    # @!attribute message
    #   @return [String]
    class FailedDependencyFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies the name and value of a filter object. This filter is used to limit the
    #          number and type of DMS objects that are returned for a particular <code>Describe*</code>
    #          call or similar operation. Filters are used as an optional parameter for certain API
    #          operations.
    #          </p>
    # @!attribute name
    #   <p>The name of the filter as specified for a <code>Describe*</code> or similar
    #            operation.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The filter value, which can specify one or more values used to narrow the returned
    #            results.</p>
    #   @return [Array<String>]
    class Filter < Struct.new(
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a large-scale assessment (LSA) analysis run by a Fleet Advisor collector.</p>
    # @!attribute lsa_analysis_id
    #   <p>The ID of an LSA analysis run by a Fleet Advisor collector.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of an LSA analysis run by a Fleet Advisor collector.</p>
    #   @return [String]
    class FleetAdvisorLsaAnalysisResponse < Struct.new(
      :lsa_analysis_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a schema object in a Fleet Advisor collector inventory.</p>
    # @!attribute schema_id
    #   <p>The ID of a schema object in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute object_type
    #   <p>The type of the schema object, as reported by the database engine. Examples include
    #               the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>function</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>trigger</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SYSTEM_TABLE</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>QUEUE</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute number_of_objects
    #   <p>The number of objects in a schema object in a Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    # @!attribute code_line_count
    #   <p>The number of lines of code in a schema object in a Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    # @!attribute code_size
    #   <p>The size level of the code in a schema object in a Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    class FleetAdvisorSchemaObjectResponse < Struct.new(
      :schema_id,
      :object_type,
      :number_of_objects,
      :code_line_count,
      :code_size,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    # @!attribute after_connect_script
    #   <p>Specifies a script to run immediately after DMS connects to the endpoint.
    #            The migration task continues running regardless if the SQL statement succeeds or
    #            fails.</p>
    #            <p>For this parameter, provide the code of the script itself, not the name of a file
    #            containing the script. </p>
    #   @return [String]
    # @!attribute clean_source_metadata_on_mismatch
    #   <p>Cleans and recreates table metadata information on the replication instance when a
    #            mismatch occurs. For example, in a situation where running an alter DDL on the table could
    #            result in different information about the table cached in the replication instance. </p>
    #   @return [Boolean]
    # @!attribute database_name
    #   <p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly
    #            specify the database using the <code>DatabaseName</code> request parameter on either the
    #               <code>CreateEndpoint</code> or <code>ModifyEndpoint</code> API call. Specifying
    #               <code>DatabaseName</code> when you create or modify a MySQL endpoint replicates all the
    #            task tables to this single database. For MySQL endpoints, you specify the database only
    #            when you specify the schema in the table-mapping rules of the DMS task.
    #         </p>
    #   @return [String]
    # @!attribute events_poll_interval
    #   <p>Specifies how often to check the binary log for new changes/events when the database is
    #            idle. The default is five seconds.</p>
    #            <p>Example: <code>eventsPollInterval=5;</code>
    #            </p>
    #            <p>In the example, DMS checks for changes in the binary logs every five
    #            seconds. </p>
    #   @return [Integer]
    # @!attribute target_db_type
    #   <p>Specifies where to migrate source tables on the target, either to a single database or
    #            multiple databases.</p>
    #            <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
    #            </p>
    #   @return [String]
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to transfer data to a
    #            MySQL-compatible database.</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #   @return [Integer]
    # @!attribute parallel_load_threads
    #   <p>Improves performance when loading data into the MySQL-compatible target database.
    #            Specifies how many threads to use to load the data into the MySQL-compatible target
    #            database. Setting a large number of threads can have an adverse effect on database
    #            performance, because a separate connection is required for each thread. The default is
    #            one.</p>
    #            <p>Example: <code>parallelLoadThreads=1</code>
    #            </p>
    #   @return [Integer]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>The MySQL host name.</p>
    #   @return [String]
    # @!attribute server_timezone
    #   <p>Specifies the time zone for the source MySQL database.</p>
    #            <p>Example: <code>serverTimezone=US/Pacific;</code>
    #            </p>
    #            <p>Note: Do not enclose time zones in single quotes.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as
    #            the trusted entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret.</code> The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets
    #            Manager secret that allows access to the MySQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a>
    #               in the Database Migration Service User Guide. </p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the MySQL endpoint connection details. </p>
    #   @return [String]
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
      :secrets_manager_secret_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an IBM Db2 LUW endpoint.</p>
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port. The default value is 50000.</p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #   @return [String]
    # @!attribute set_data_capture_changes
    #   <p>Enables ongoing replication (CDC) as a BOOLEAN value. The default is true.</p>
    #   @return [Boolean]
    # @!attribute current_lsn
    #   <p>For ongoing replication (CDC), use CurrentLSN to specify a log sequence number (LSN)
    #            where you want the replication to start.</p>
    #   @return [String]
    # @!attribute max_k_bytes_per_read
    #   <p>Maximum number of bytes per read, as a NUMBER value. The default is 64 KB.</p>
    #   @return [Integer]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the Db2 LUW endpoint. </p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the Db2 LUW endpoint connection details.</p>
    #   @return [String]
    # @!attribute load_timeout
    #   <p>The amount of time (in milliseconds) before DMS times out operations performed by DMS
    #            on the Db2 target. The default value is 1200 (20 minutes).</p>
    #   @return [Integer]
    # @!attribute write_buffer_size
    #   <p>The size (in KB) of the in-memory file write buffer used when generating .csv files on
    #            the local disk on the DMS replication instance. The default value is 1024 (1 MB).</p>
    #   @return [Integer]
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of .csv files used to transfer data to Db2
    #            LUW.</p>
    #   @return [Integer]
    # @!attribute keep_csv_files
    #   <p>If true, DMS saves any .csv files to the Db2 LUW target that were used to replicate
    #            data. DMS uses these files for analysis and troubleshooting.</p>
    #            <p>The default value is false. </p>
    #   @return [Boolean]
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
      :keep_csv_files,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an IBM DB2 LUW data provider.</p>
    # @!attribute server_name
    #   <p>The name of the DB2 LUW server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the DB2 LUW data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the DB2 LUW data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the DB2 LUW data provider.
    #            The default value is <code>none</code>. Valid Values: <code>none</code> and <code>verify-ca</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class IbmDb2LuwDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about an IBM DB2 for z/OS data provider.</p>
    # @!attribute server_name
    #   <p>The name of the DB2 for z/OS server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the DB2 for z/OS data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the DB2 for z/OS data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the DB2 for z/OS data provider.
    #            The default value is <code>none</code>. Valid Values: <code>none</code> and <code>verify-ca</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class IbmDb2zOsDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate_identifier
    #   <p>A customer-assigned name for the certificate. Identifiers must begin with a letter and
    #            must contain only ASCII letters, digits, and hyphens. They can't end with a hyphen or
    #            contain two consecutive hyphens.</p>
    #   @return [String]
    # @!attribute certificate_pem
    #   <p>The contents of a <code>.pem</code> file, which contains an X.509 certificate.</p>
    #   @return [String]
    # @!attribute certificate_wallet
    #   <p>The location of an imported Oracle Wallet certificate for use with SSL. Provide the name
    #            of a <code>.sso</code> file using the <code>fileb://</code> prefix. You can't provide the
    #            certificate inline.</p>
    #            <p>Example: <code>filebase64("${path.root}/rds-ca-2019-root.sso")</code>
    #            </p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags associated with the certificate.</p>
    #   @return [Array<Types::Tag>]
    class ImportCertificateMessage < Struct.new(
      :certificate_identifier,
      :certificate_pem,
      :certificate_wallet,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute certificate
    #   <p>The certificate to be uploaded.</p>
    #   @return [Types::Certificate]
    class ImportCertificateResponse < Struct.new(
      :certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an instance profile.</p>
    # @!attribute instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the instance profile.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where the instance profile runs.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt 
    #            the connection parameters for the instance profile.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyArn</code> parameter, then
    #            DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account 
    #            has a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the instance profile. A value of
    #            <code>true</code> represents an instance profile with a public IP address. A value of
    #            <code>false</code> represents an instance profile with a private IP address. The default value
    #            is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Specifies the network type for the instance profile. A value of <code>IPV4</code> 
    #            represents an instance profile with IPv4 network type and only supports IPv4 addressing. 
    #            A value of <code>IPV6</code> represents an instance profile with IPv6 network type 
    #            and only supports IPv6 addressing. A value of <code>DUAL</code> represents an instance 
    #            profile with dual network type that supports IPv4 and IPv6 addressing.</p>
    #   @return [String]
    # @!attribute instance_profile_name
    #   <p>The user-friendly name for the instance profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the instance profile. Descriptions can have up to 31 characters. 
    #            A description can contain only ASCII letters, digits, and hyphens ('-'). Also, it can't 
    #            end with a hyphen or contain two consecutive hyphens, and can only begin with a letter.</p>
    #   @return [String]
    # @!attribute instance_profile_creation_time
    #   <p>The time the instance profile was created.</p>
    #   @return [Time]
    # @!attribute subnet_group_identifier
    #   <p>The identifier of the subnet group that is associated with the instance profile.</p>
    #   @return [String]
    # @!attribute vpc_security_groups
    #   <p>The VPC security groups that are used with the instance profile. 
    #            The VPC security group must work with the VPC containing the instance profile.</p>
    #   @return [Array<String>]
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
      :vpc_security_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>There are not enough resources allocated to the database migration.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class InsufficientResourceCapacityFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The certificate was not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidCertificateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The action or operation requested isn't valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidOperationFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource is in a state that prevents it from being used for database migration.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class InvalidResourceStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The subnet provided isn't valid.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class InvalidSubnet < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a Fleet Advisor collector inventory.</p>
    # @!attribute number_of_databases
    #   <p>The number of databases in the Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    # @!attribute number_of_schemas
    #   <p>The number of schemas in the Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    class InventoryData < Struct.new(
      :number_of_databases,
      :number_of_schemas,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The ciphertext references a key that doesn't exist or that the DMS account doesn't have access to.</p>
    # @!attribute message
    #   @return [String]
    class KMSAccessDeniedFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified KMS key isn't enabled.</p>
    # @!attribute message
    #   @return [String]
    class KMSDisabledFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An Key Management Service (KMS) error is preventing access to KMS.</p>
    # @!attribute message
    #   @return [String]
    class KMSFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The state of the specified KMS resource isn't valid for this request.</p>
    # @!attribute message
    #   @return [String]
    class KMSInvalidStateFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>DMS cannot access the KMS key.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class KMSKeyNotAccessibleFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified KMS entity or resource can't be found.</p>
    # @!attribute message
    #   @return [String]
    class KMSNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This request triggered KMS request throttling.</p>
    # @!attribute message
    #   @return [String]
    class KMSThrottlingFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KafkaSaslMechanism
      SCRAM_SHA_512 = 'scram-sha-512'
      PLAIN = 'plain'
    end

    module KafkaSecurityProtocol
      PLAINTEXT = 'plaintext'
      SSL_AUTHENTICATION = 'ssl-authentication'
      SSL_ENCRYPTION = 'ssl-encryption'
      SASL_SSL = 'sasl-ssl'
    end

    # <p>Provides information that describes an Apache Kafka endpoint. This information includes
    #          the output format of records applied to the endpoint and details of transaction and control
    #          table data information.</p>
    # @!attribute broker
    #   <p>A comma-separated list of one or more broker locations in your Kafka cluster that host
    #            your Kafka instance. Specify each broker location in the form
    #                  <code>
    #                  <i>broker-hostname-or-ip</i>:<i>port</i>
    #               </code>.
    #            For example, <code>"ec2-12-345-678-901.compute-1.amazonaws.com:2345"</code>. For more
    #            information and examples of specifying a list of broker locations, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html">Using Apache
    #               Kafka as a target for Database Migration Service</a> in the <i>Database Migration Service User
    #            Guide</i>. </p>
    #   @return [String]
    # @!attribute topic
    #   <p>The topic to which you migrate the data. If you don't specify a topic, DMS
    #            specifies <code>"kafka-default-topic"</code> as the migration topic.</p>
    #   @return [String]
    # @!attribute message_format
    #   <p>The output format for the records created on the endpoint. The message format is
    #               <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no
    #            tab).</p>
    #   @return [String]
    # @!attribute include_transaction_details
    #   <p>Provides detailed transaction information from the source database. This information
    #            includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
    #            previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
    #            offset within a transaction). The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_partition_value
    #   <p>Shows the partition value within the Kafka message output unless the partition type is
    #               <code>schema-table-type</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute partition_include_schema_table
    #   <p>Prefixes schema and table names to partition values, when the partition type is
    #               <code>primary-key-type</code>. Doing this increases data distribution among Kafka
    #            partitions. For example, suppose that a SysBench schema has thousands of tables and each
    #            table has only limited range for a primary key. In this case, the same primary key is sent
    #            from thousands of tables to the same partition, which causes throttling. The default is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_table_alter_operations
    #   <p>Includes any data definition language (DDL) operations that change the table in the
    #            control data, such as <code>rename-table</code>, <code>drop-table</code>,
    #               <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
    #            default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_control_details
    #   <p>Shows detailed control information for table definition, column definition, and table
    #            and column changes in the Kafka message output. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute message_max_bytes
    #   <p>The maximum size in bytes for records created on the endpoint The default is
    #            1,000,000.</p>
    #   @return [Integer]
    # @!attribute include_null_and_empty
    #   <p>Include NULL and empty columns for records migrated to the endpoint. The default is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute security_protocol
    #   <p>Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS).
    #            Options include <code>ssl-encryption</code>, <code>ssl-authentication</code>, and
    #               <code>sasl-ssl</code>. <code>sasl-ssl</code> requires <code>SaslUsername</code> and
    #               <code>SaslPassword</code>.</p>
    #   @return [String]
    # @!attribute ssl_client_certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the client certificate used to securely connect to a
    #            Kafka target endpoint.</p>
    #   @return [String]
    # @!attribute ssl_client_key_arn
    #   <p>The Amazon Resource Name (ARN) for the client private key used to securely connect to a
    #            Kafka target endpoint.</p>
    #   @return [String]
    # @!attribute ssl_client_key_password
    #   <p> The password for the client private key used to securely connect to a Kafka target
    #            endpoint.</p>
    #   @return [String]
    # @!attribute ssl_ca_certificate_arn
    #   <p> The Amazon Resource Name (ARN) for the private certificate authority (CA) cert that
    #            DMS uses to securely connect to your Kafka target endpoint.</p>
    #   @return [String]
    # @!attribute sasl_username
    #   <p> The secure user name you created when you first set up your MSK cluster to validate a
    #            client identity and make an encrypted connection between server and client using SASL-SSL
    #            authentication.</p>
    #   @return [String]
    # @!attribute sasl_password
    #   <p>The secure password you created when you first set up your MSK cluster to validate a
    #            client identity and make an encrypted connection between server and client using SASL-SSL
    #            authentication.</p>
    #   @return [String]
    # @!attribute no_hex_prefix
    #   <p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
    #            to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
    #            prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka
    #            target. Use the <code>NoHexPrefix</code> endpoint setting to enable migration of RAW data
    #            type columns without adding the '0x' prefix.</p>
    #   @return [Boolean]
    # @!attribute sasl_mechanism
    #   <p>For SASL/SSL authentication, DMS supports the <code>SCRAM-SHA-512</code> mechanism by
    #            default. DMS versions 3.5.0 and later also support the <code>PLAIN</code> mechanism. To
    #            use the <code>PLAIN</code> mechanism, set this parameter to <code>PLAIN.</code>
    #            </p>
    #   @return [String]
    # @!attribute ssl_endpoint_identification_algorithm
    #   <p>Sets hostname verification for the certificate. This setting is supported in DMS
    #            version 3.5.1 and later. </p>
    #   @return [String]
    # @!attribute use_large_integer_value
    #   <p>Specifies using the large integer value with Kafka.</p>
    #   @return [Boolean]
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
      :use_large_integer_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KafkaSslEndpointIdentificationAlgorithm
      NONE = 'none'
      HTTPS = 'https'
    end

    # <p>Specifies the settings required for kerberos authentication when creating the
    #          replication instance.</p>
    # @!attribute key_cache_secret_id
    #   <p>Specifies the ID of the secret that stores the key cache file required for kerberos
    #            authentication.</p>
    #   @return [String]
    # @!attribute key_cache_secret_iam_arn
    #   <p>Specifies the Amazon Resource Name (ARN) of the IAM role that grants Amazon Web Services
    #            DMS access to the secret containing key cache file for the kerberos authentication.</p>
    #   @return [String]
    # @!attribute krb5_file_contents
    #   <p>Specifies the contents of krb5 configuration file required for kerberos
    #            authentication.</p>
    #   @return [String]
    class KerberosAuthenticationSettings < Struct.new(
      :key_cache_secret_id,
      :key_cache_secret_iam_arn,
      :krb5_file_contents,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes an Amazon Kinesis Data Stream endpoint. This
    #          information includes the output format of records applied to the endpoint and details of
    #          transaction and control table data information.</p>
    # @!attribute stream_arn
    #   <p>The Amazon Resource Name (ARN) for the Amazon Kinesis Data Streams endpoint.</p>
    #   @return [String]
    # @!attribute message_format
    #   <p>The output format for the records created on the endpoint. The message format is
    #               <code>JSON</code> (default) or <code>JSON_UNFORMATTED</code> (a single line with no
    #            tab).</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) for the IAM role that DMS uses to write to the Kinesis
    #            data stream. The role must allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute include_transaction_details
    #   <p>Provides detailed transaction information from the source database. This information
    #            includes a commit timestamp, a log position, and values for <code>transaction_id</code>,
    #            previous <code>transaction_id</code>, and <code>transaction_record_id</code> (the record
    #            offset within a transaction). The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_partition_value
    #   <p>Shows the partition value within the Kinesis message output, unless the partition type
    #            is <code>schema-table-type</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute partition_include_schema_table
    #   <p>Prefixes schema and table names to partition values, when the partition type is
    #               <code>primary-key-type</code>. Doing this increases data distribution among Kinesis
    #            shards. For example, suppose that a SysBench schema has thousands of tables and each table
    #            has only limited range for a primary key. In this case, the same primary key is sent from
    #            thousands of tables to the same shard, which causes throttling. The default is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_table_alter_operations
    #   <p>Includes any data definition language (DDL) operations that change the table in the
    #            control data, such as <code>rename-table</code>, <code>drop-table</code>,
    #               <code>add-column</code>, <code>drop-column</code>, and <code>rename-column</code>. The
    #            default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_control_details
    #   <p>Shows detailed control information for table definition, column definition, and table
    #            and column changes in the Kinesis message output. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute include_null_and_empty
    #   <p>Include NULL and empty columns for records migrated to the endpoint. The default is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute no_hex_prefix
    #   <p>Set this optional parameter to <code>true</code> to avoid adding a '0x' prefix
    #            to raw data in hexadecimal format. For example, by default, DMS adds a '0x'
    #            prefix to the LOB column type in hexadecimal format moving from an Oracle source to an
    #            Amazon Kinesis target. Use the <code>NoHexPrefix</code> endpoint setting to enable
    #            migration of RAW data type columns without adding the '0x' prefix.</p>
    #   @return [Boolean]
    # @!attribute use_large_integer_value
    #   <p>Specifies using the large integer value with Kinesis.</p>
    #   @return [Boolean]
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
      :use_large_integer_value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the limitations of target Amazon Web Services engines.</p>
    #          <p>Your source database might include features that the target Amazon Web Services engine doesn't
    #             support. Fleet Advisor lists these features as limitations. You should consider these
    #             limitations during database migration. For each limitation, Fleet Advisor recommends an
    #             action that you can take to address or avoid this limitation.</p>
    # @!attribute database_id
    #   <p>The identifier of the source database.</p>
    #   @return [String]
    # @!attribute engine_name
    #   <p>The name of the target engine that Fleet Advisor should use in the target engine
    #               recommendation. Valid values include <code>"rds-aurora-mysql"</code>,
    #                   <code>"rds-aurora-postgresql"</code>, <code>"rds-mysql"</code>,
    #                   <code>"rds-oracle"</code>, <code>"rds-sql-server"</code>, and
    #                   <code>"rds-postgresql"</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the limitation. Describes unsupported database features, migration action
    #               items, and other limitations.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the limitation. Provides additional information about the limitation,
    #               and includes recommended actions that you can take to address or avoid this
    #               limitation.</p>
    #   @return [String]
    # @!attribute impact
    #   <p>The impact of the limitation. You can use this parameter to prioritize limitations
    #               that you want to address. Valid values include <code>"Blocker"</code>,
    #                   <code>"High"</code>, <code>"Medium"</code>, and <code>"Low"</code>.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the limitation, such as action required, upgrade required, and limited
    #               feature.</p>
    #   @return [String]
    class Limitation < Struct.new(
      :database_id,
      :engine_name,
      :name,
      :description,
      :impact,
      :type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the DMS resource to
    #            list tags for. This returns a list of keys (names of tags) created for the resource and
    #            their associated tag values.</p>
    #   @return [String]
    # @!attribute resource_arn_list
    #   <p>List of ARNs that identify multiple DMS resources that you want to list tags for. This
    #            returns a list of keys (tag names) and their associated tag values. It also returns each
    #            tag's associated <code>ResourceArn</code> value, which is the ARN of the resource for which
    #            each listed tag is created. </p>
    #   @return [Array<String>]
    class ListTagsForResourceMessage < Struct.new(
      :resource_arn,
      :resource_arn_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute tag_list
    #   <p>A list of tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tag_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module LongVarcharMappingType
      WSTRING = 'wstring'
      CLOB = 'clob'
      NCLOB = 'nclob'
    end

    # <p>Provides information that defines a MariaDB data provider.</p>
    # @!attribute server_name
    #   <p>The name of the MariaDB server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the MariaDB data provider</p>
    #   @return [Integer]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the MariaDB data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class MariaDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MessageFormatValue
      JSON = 'json'
      JSON_UNFORMATTED = 'json-unformatted'
    end

    # <p>Provides information that defines a Microsoft SQL Server endpoint.</p>
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #   @return [Integer]
    # @!attribute bcp_packet_size
    #   <p>The maximum size of the packets (in bytes) used to transfer data using BCP.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute control_tables_file_group
    #   <p>Specifies a file group for the DMS internal tables. When the replication task starts,
    #            all the internal DMS control tables (awsdms_ apply_exception, awsdms_apply,
    #            awsdms_changes) are created for the specified file group.</p>
    #   @return [String]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute query_single_always_on_node
    #   <p>Cleans and recreates table metadata information on the replication instance when a
    #            mismatch occurs. An example is a situation where running an alter DDL statement on a table
    #            might result in different information about the table cached in the replication
    #            instance.</p>
    #   @return [Boolean]
    # @!attribute read_backup_only
    #   <p>When this attribute is set to <code>Y</code>, DMS only reads changes from transaction
    #            log backups and doesn't read from the active transaction log file during ongoing
    #            replication. Setting this parameter to <code>Y</code> enables you to control active
    #            transaction log file growth during full load and ongoing replication tasks. However, it can
    #            add some source latency to ongoing replication.</p>
    #   @return [Boolean]
    # @!attribute safeguard_policy
    #   <p>Use this attribute to minimize the need to access the backup log and enable DMS to
    #            prevent truncation using one of the following two methods.</p>
    #            <p>
    #               <i>Start transactions in the database:</i> This is the default method.
    #            When this method is used, DMS prevents TLOG truncation by mimicking a transaction in the
    #            database. As long as such a transaction is open, changes that appear after the transaction
    #            started aren't truncated. If you need Microsoft Replication to be enabled in your database,
    #            then you must choose this method.</p>
    #            <p>
    #               <i>Exclusively use sp_repldone within a single task</i>: When this method
    #            is used, DMS reads the changes and then uses sp_repldone to mark the TLOG transactions as
    #            ready for truncation. Although this method doesn't involve any transactional activities, it
    #            can only be used when Microsoft Replication isn't running. Also, when using this method,
    #            only one DMS task can access the database at any given time. Therefore, if you need to
    #            run parallel DMS tasks against the same database, use the default method.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint. For an Amazon RDS SQL Server instance, this is
    #            the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html">DescribeDBInstances</a>, in the <code>
    #                  <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Endpoint.html">Endpoint</a>.Address</code> field.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute use_bcp_full_load
    #   <p>Use this to attribute to transfer data for full-load operations using BCP. When the
    #            target table contains an identity column that does not exist in the source table, you must
    #            disable the use BCP for loading table option.</p>
    #   @return [Boolean]
    # @!attribute use_third_party_backup_device
    #   <p>When this attribute is set to <code>Y</code>, DMS processes third-party transaction log
    #            backups if they are created in native format.</p>
    #   @return [Boolean]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the SQL Server endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the SQL Server endpoint connection details.</p>
    #   @return [String]
    # @!attribute trim_space_in_char
    #   <p>Use the <code>TrimSpaceInChar</code> source endpoint setting to right-trim data on CHAR
    #            and NCHAR data types during migration. Setting <code>TrimSpaceInChar</code> does not
    #            left-trim data. The default value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tlog_access_mode
    #   <p>Indicates the mode used to fetch CDC data.</p>
    #   @return [String]
    # @!attribute force_lob_lookup
    #   <p>Forces LOB lookup on inline LOB.</p>
    #   @return [Boolean]
    # @!attribute authentication_method
    #   <p>Specifies the authentication method to be used with Microsoft SQL Server.</p>
    #   @return [String]
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
      :authentication_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a Microsoft SQL Server data provider.</p>
    # @!attribute server_name
    #   <p>The name of the Microsoft SQL Server server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the Microsoft SQL Server data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the Microsoft SQL Server data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the Microsoft SQL Server data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class MicrosoftSqlServerDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a migration project.</p>
    # @!attribute migration_project_name
    #   <p>The name of the migration project.</p>
    #   @return [String]
    # @!attribute migration_project_arn
    #   <p>The ARN string that uniquely identifies the migration project.</p>
    #   @return [String]
    # @!attribute migration_project_creation_time
    #   <p>The time when the migration project was created.</p>
    #   @return [Time]
    # @!attribute source_data_provider_descriptors
    #   <p>Information about the source data provider, including the name or ARN, and Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptor>]
    # @!attribute target_data_provider_descriptors
    #   <p>Information about the target data provider, including the name or ARN, and Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptor>]
    # @!attribute instance_profile_arn
    #   <p>The Amazon Resource Name (ARN) of the instance profile for your migration project.</p>
    #   @return [String]
    # @!attribute instance_profile_name
    #   <p>The name of the associated instance profile.</p>
    #   @return [String]
    # @!attribute transformation_rules
    #   <p>The settings in JSON format for migration rules. Migration rules make it possible for you to change 
    #            the object names according to the rules that you specify. For example, you can change an object name 
    #            to lowercase or uppercase, add or remove a prefix or suffix, or rename objects.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the migration project.</p>
    #   @return [String]
    # @!attribute schema_conversion_application_attributes
    #   <p>The schema conversion application attributes, including the Amazon S3 bucket name and Amazon S3 role ARN.</p>
    #   @return [Types::SCApplicationAttributes]
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
      :schema_conversion_application_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MigrationTypeValue
      FULL_LOAD = 'full-load'
      CDC = 'cdc'
      FULL_LOAD_AND_CDC = 'full-load-and-cdc'
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute conversion_configuration
    #   <p>The new conversion configuration.</p>
    #   @return [String]
    class ModifyConversionConfigurationMessage < Struct.new(
      :migration_project_identifier,
      :conversion_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The name or Amazon Resource Name (ARN) of  the modified configuration.</p>
    #   @return [String]
    class ModifyConversionConfigurationResponse < Struct.new(
      :migration_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to modify.</p>
    #   @return [String]
    # @!attribute data_migration_name
    #   <p>The new name for the data migration.</p>
    #   @return [String]
    # @!attribute enable_cloudwatch_logs
    #   <p>Whether to enable Cloudwatch logs for the data migration.</p>
    #   @return [Boolean]
    # @!attribute service_access_role_arn
    #   <p>The new service access role ARN for the data migration.</p>
    #   @return [String]
    # @!attribute data_migration_type
    #   <p>The new migration type for the data migration.</p>
    #   @return [String]
    # @!attribute source_data_settings
    #   <p>The new information about the source data provider for the data migration.</p>
    #   @return [Array<Types::SourceDataSetting>]
    # @!attribute target_data_settings
    #   <p>The new information about the target data provider for the data migration.</p>
    #   @return [Array<Types::TargetDataSetting>]
    # @!attribute number_of_jobs
    #   <p>The number of parallel jobs that trigger parallel threads to unload the tables from the
    #            source, and then load them to the target.</p>
    #   @return [Integer]
    # @!attribute selection_rules
    #   <p>A JSON-formatted string that defines what objects to include and exclude from the
    #            migration.</p>
    #   @return [String]
    class ModifyDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      :data_migration_name,
      :enable_cloudwatch_logs,
      :service_access_role_arn,
      :data_migration_type,
      :source_data_settings,
      :target_data_settings,
      :number_of_jobs,
      :selection_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration
    #   <p>Information about the modified data migration.</p>
    #   @return [Types::DataMigration]
    class ModifyDataMigrationResponse < Struct.new(
      :data_migration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider_identifier
    #   <p>The identifier of the data provider. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    #   @return [String]
    # @!attribute data_provider_name
    #   <p>The name of the data provider.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the data provider.</p>
    #   @return [String]
    # @!attribute engine
    #   <p>The type of database engine for the data provider. Valid values include <code>"aurora"</code>, 
    #            <code>"aurora-postgresql"</code>, <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>, 
    #            <code>"sqlserver"</code>, <code>redshift</code>, <code>mariadb</code>, <code>mongodb</code>, <code>db2</code>, <code>db2-zos</code> and <code>docdb</code>. A value of <code>"aurora"</code> represents Amazon Aurora MySQL-Compatible Edition.</p>
    #   @return [String]
    # @!attribute virtual
    #   <p>Indicates whether the data provider is virtual.</p>
    #   @return [Boolean]
    # @!attribute exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyDataProvider</code> replaces all
    #            existing data provider settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyDataProvider</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any data provider settings that already exist with new values, 
    #               for settings with the same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new data provider settings that you specify in the call, 
    #               for settings with different names. </p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>The settings in JSON format for a data provider.</p>
    #   @return [Types::DataProviderSettings]
    class ModifyDataProviderMessage < Struct.new(
      :data_provider_identifier,
      :data_provider_name,
      :description,
      :engine,
      :virtual,
      :exact_settings,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_provider
    #   <p>The data provider that was modified.</p>
    #   @return [Types::DataProvider]
    class ModifyDataProviderResponse < Struct.new(
      :data_provider,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_identifier
    #   <p>The database endpoint identifier. Identifiers must begin with a letter and must contain
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen or contain two
    #            consecutive hyphens.</p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    #   @return [String]
    # @!attribute engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType, include
    #               <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #               <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>,
    #               <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"db2-zos"</code>,
    #               <code>"azuredb"</code>, <code>"sybase"</code>, <code>"dynamodb"</code>,
    #               <code>"mongodb"</code>, <code>"kinesis"</code>, <code>"kafka"</code>,
    #               <code>"elasticsearch"</code>, <code>"documentdb"</code>, <code>"sqlserver"</code>,
    #               <code>"neptune"</code>, and <code>"babelfish"</code>.</p>
    #   @return [String]
    # @!attribute username
    #   <p>The user name to be used to login to the endpoint database.</p>
    #   @return [String]
    # @!attribute password
    #   <p>The password to be used to login to the endpoint database.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the server where the endpoint database resides.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port used by the endpoint database.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The name of the endpoint database. For a MySQL source or target endpoint, do not specify
    #            DatabaseName.</p>
    #   @return [String]
    # @!attribute extra_connection_attributes
    #   <p>Additional attributes associated with the connection. To reset this parameter, pass the
    #            empty string ("") as an argument.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the endpoint. The default value is
    #            <code>none</code>.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) for the IAM role you want to use to modify the endpoint.
    #            The role must allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute external_table_definition
    #   <p>The external table definition.</p>
    #   @return [String]
    # @!attribute dynamo_db_settings
    #   <p>Settings in JSON format for the target Amazon DynamoDB endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html#CHAP_Target.DynamoDB.ObjectMapping">Using Object Mapping to Migrate Data to DynamoDB</a> in the <i>Database Migration Service
    #               User Guide.</i>
    #            </p>
    #   @return [Types::DynamoDbSettings]
    # @!attribute s3_settings
    #   <p>Settings in JSON format for the target Amazon S3 endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring">Extra
    #               Connection Attributes When Using Amazon S3 as a Target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::S3Settings]
    # @!attribute dms_transfer_settings
    #   <p>The settings in JSON format for the DMS transfer type of source endpoint. </p>
    #            <p>Attributes include the following:</p>
    #            <ul>
    #               <li>
    #                  <p>serviceAccessRoleArn - The Amazon Resource Name (ARN) used by the service access
    #                  IAM role. The role must allow the <code>iam:PassRole</code> action.</p>
    #               </li>
    #               <li>
    #                  <p>BucketName - The name of the S3 bucket to use.</p>
    #               </li>
    #            </ul>
    #            <p>Shorthand syntax for these settings is as follows: <code>ServiceAccessRoleArn=string
    #               ,BucketName=string</code>
    #            </p>
    #            <p>JSON syntax for these settings is as follows: <code>{ "ServiceAccessRoleArn": "string",
    #               "BucketName": "string"} </code>
    #            </p>
    #   @return [Types::DmsTransferSettings]
    # @!attribute mongo_db_settings
    #   <p>Settings in JSON format for the source MongoDB endpoint. For more information about the
    #            available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration">Endpoint configuration settings when using MongoDB as a source for Database Migration Service</a> in
    #            the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MongoDbSettings]
    # @!attribute kinesis_settings
    #   <p>Settings in JSON format for the target endpoint for Amazon Kinesis Data Streams. For
    #            more information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html#CHAP_Target.Kinesis.ObjectMapping">Using object mapping to migrate data to a Kinesis data stream</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::KinesisSettings]
    # @!attribute kafka_settings
    #   <p>Settings in JSON format for the target Apache Kafka endpoint. For more information about
    #            the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html#CHAP_Target.Kafka.ObjectMapping">Using
    #               object mapping to migrate data to a Kafka topic</a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #   @return [Types::KafkaSettings]
    # @!attribute elasticsearch_settings
    #   <p>Settings in JSON format for the target OpenSearch endpoint. For more
    #            information about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration">Extra Connection Attributes When Using OpenSearch as a Target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::ElasticsearchSettings]
    # @!attribute neptune_settings
    #   <p>Settings in JSON format for the target Amazon Neptune endpoint. For more information
    #            about the available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.EndpointSettings">Specifying graph-mapping rules using Gremlin and R2RML for Amazon
    #               Neptune as a target</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::NeptuneSettings]
    # @!attribute redshift_settings
    #   <p>Provides information that defines an Amazon Redshift endpoint.</p>
    #   @return [Types::RedshiftSettings]
    # @!attribute postgre_sql_settings
    #   <p>Settings in JSON format for the source and target PostgreSQL endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra connection attributes when using PostgreSQL as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html#CHAP_Target.PostgreSQL.ConnectionAttrib"> Extra connection attributes when using PostgreSQL as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::PostgreSQLSettings]
    # @!attribute my_sql_settings
    #   <p>Settings in JSON format for the source and target MySQL endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html#CHAP_Source.MySQL.ConnectionAttrib">Extra connection attributes when using MySQL as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html#CHAP_Target.MySQL.ConnectionAttrib">Extra connection attributes when using a MySQL-compatible database as a target for
    #               DMS</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MySQLSettings]
    # @!attribute oracle_settings
    #   <p>Settings in JSON format for the source and target Oracle endpoint. For information about
    #            other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.ConnectionAttrib">Extra connection attributes when using Oracle as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html#CHAP_Target.Oracle.ConnectionAttrib">
    #               Extra connection attributes when using Oracle as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::OracleSettings]
    # @!attribute sybase_settings
    #   <p>Settings in JSON format for the source and target SAP ASE endpoint. For information
    #            about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html#CHAP_Source.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a source for DMS</a> and <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html#CHAP_Target.SAP.ConnectionAttrib">Extra
    #               connection attributes when using SAP ASE as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::SybaseSettings]
    # @!attribute microsoft_sql_server_settings
    #   <p>Settings in JSON format for the source and target Microsoft SQL Server endpoint. For
    #            information about other available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html#CHAP_Source.SQLServer.ConnectionAttrib">Extra connection attributes when using SQL Server as a source for DMS</a> and
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html#CHAP_Target.SQLServer.ConnectionAttrib"> Extra connection attributes when using SQL Server as a target for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::MicrosoftSQLServerSettings]
    # @!attribute ibm_db2_settings
    #   <p>Settings in JSON format for the source IBM Db2 LUW endpoint. For information about other
    #            available settings, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html#CHAP_Source.DB2.ConnectionAttrib">Extra
    #               connection attributes when using Db2 LUW as a source for DMS</a> in the
    #               <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [Types::IBMDb2Settings]
    # @!attribute doc_db_settings
    #   <p>Settings in JSON format for the source DocumentDB endpoint. For more information about
    #            the available settings, see the configuration properties section in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DocumentDB.html"> Using
    #               DocumentDB as a Target for Database Migration Service </a> in the <i>Database Migration Service User
    #               Guide.</i>
    #            </p>
    #   @return [Types::DocDbSettings]
    # @!attribute redis_settings
    #   <p>Settings in JSON format for the Redis target endpoint.</p>
    #   @return [Types::RedisSettings]
    # @!attribute exact_settings
    #   <p>If this attribute is Y, the current call to <code>ModifyEndpoint</code> replaces all
    #            existing endpoint settings with the exact settings that you specify in this call. If this
    #            attribute is N, the current call to <code>ModifyEndpoint</code> does two things: </p>
    #            <ul>
    #               <li>
    #                  <p>It replaces any endpoint settings that already exist with new values, for settings
    #                  with the same names.</p>
    #               </li>
    #               <li>
    #                  <p>It creates new endpoint settings that you specify in the call, for settings with
    #                  different names. </p>
    #               </li>
    #            </ul>
    #            <p>For example, if you call <code>create-endpoint ... --endpoint-settings '{"a":1}'
    #               ...</code>, the endpoint has the following endpoint settings: <code>'{"a":1}'</code>. If
    #            you then call <code>modify-endpoint ... --endpoint-settings '{"b":2}' ...</code> for the
    #            same endpoint, the endpoint has the following settings: <code>'{"a":1,"b":2}'</code>. </p>
    #            <p>However, suppose that you follow this with a call to <code>modify-endpoint ...
    #               --endpoint-settings '{"b":2}' --exact-settings ...</code> for that same endpoint again.
    #            Then the endpoint has the following settings: <code>'{"b":2}'</code>. All existing settings
    #            are replaced with the exact settings that you specify. </p>
    #   @return [Boolean]
    # @!attribute gcp_my_sql_settings
    #   <p>Settings in JSON format for the source GCP MySQL endpoint.</p>
    #   @return [Types::GcpMySQLSettings]
    # @!attribute timestream_settings
    #   <p>Settings in JSON format for the target Amazon Timestream endpoint.</p>
    #   @return [Types::TimestreamSettings]
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
      :ibm_db2_settings,
      :doc_db_settings,
      :redis_settings,
      :exact_settings,
      :gcp_my_sql_settings,
      :timestream_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint
    #   <p>The modified endpoint.</p>
    #   @return [Types::Endpoint]
    class ModifyEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute subscription_name
    #   <p>The name of the DMS event notification subscription to be modified.</p>
    #   @return [String]
    # @!attribute sns_topic_arn
    #   <p> The Amazon Resource Name (ARN) of the Amazon SNS topic created for event notification.
    #            The ARN is created by Amazon SNS when you create a topic and subscribe to it.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> The type of DMS resource that generates the events you want to subscribe to. </p>
    #            <p>Valid values: replication-instance | replication-task</p>
    #   @return [String]
    # @!attribute event_categories
    #   <p> A list of event categories for a source type that you want to subscribe to. Use the
    #               <code>DescribeEventCategories</code> action to see a list of event categories. </p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p> A Boolean value; set to <b>true</b> to activate the
    #            subscription. </p>
    #   @return [Boolean]
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :event_categories,
      :enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute event_subscription
    #   <p>The modified event subscription.</p>
    #   @return [Types::EventSubscription]
    class ModifyEventSubscriptionResponse < Struct.new(
      :event_subscription,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile_identifier
    #   <p>The identifier of the instance profile. Identifiers must begin with a letter and must contain 
    #            only ASCII letters, digits, and hyphens. They can't end with a hyphen, or contain two consecutive 
    #            hyphens.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where the instance profile runs.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key that is used to encrypt 
    #            the connection parameters for the instance profile.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyArn</code> parameter, then
    #            DMS uses your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has a
    #            different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute publicly_accessible
    #   <p>Specifies the accessibility options for the instance profile. A value of
    #            <code>true</code> represents an instance profile with a public IP address. A value of
    #            <code>false</code> represents an instance profile with a private IP address. The default value
    #            is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute network_type
    #   <p>Specifies the network type for the instance profile. A value of <code>IPV4</code> 
    #            represents an instance profile with IPv4 network type and only supports IPv4 addressing. 
    #            A value of <code>IPV6</code> represents an instance profile with IPv6 network type 
    #            and only supports IPv6 addressing. A value of <code>DUAL</code> represents an instance 
    #            profile with dual network type that supports IPv4 and IPv6 addressing.</p>
    #   @return [String]
    # @!attribute instance_profile_name
    #   <p>A user-friendly name for the instance profile.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description for the instance profile.</p>
    #   @return [String]
    # @!attribute subnet_group_identifier
    #   <p>A subnet group to associate with the instance profile.</p>
    #   @return [String]
    # @!attribute vpc_security_groups
    #   <p>Specifies the VPC security groups to be used with the instance profile. 
    #            The VPC security group must work with the VPC containing the instance profile.</p>
    #   @return [Array<String>]
    class ModifyInstanceProfileMessage < Struct.new(
      :instance_profile_identifier,
      :availability_zone,
      :kms_key_arn,
      :publicly_accessible,
      :network_type,
      :instance_profile_name,
      :description,
      :subnet_group_identifier,
      :vpc_security_groups,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instance_profile
    #   <p>The instance profile that was modified.</p>
    #   @return [Types::InstanceProfile]
    class ModifyInstanceProfileResponse < Struct.new(
      :instance_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The identifier of the migration project. Identifiers must begin with a letter 
    #            and must contain only ASCII letters, digits, and hyphens. They can't end with 
    #            a hyphen, or contain two consecutive hyphens.</p>
    #   @return [String]
    # @!attribute migration_project_name
    #   <p>A user-friendly name for the migration project.</p>
    #   @return [String]
    # @!attribute source_data_provider_descriptors
    #   <p>Information about the source data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    # @!attribute target_data_provider_descriptors
    #   <p>Information about the target data provider, including the name, ARN, and Amazon Web Services Secrets Manager parameters.</p>
    #   @return [Array<Types::DataProviderDescriptorDefinition>]
    # @!attribute instance_profile_identifier
    #   <p>The name or Amazon Resource Name (ARN) for the instance profile.</p>
    #   @return [String]
    # @!attribute transformation_rules
    #   <p>The settings in JSON format for migration rules. Migration rules make it possible for you to change 
    #            the object names according to the rules that you specify. For example, you can change an object name 
    #            to lowercase or uppercase, add or remove a prefix or suffix, or rename objects.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A user-friendly description of the migration project.</p>
    #   @return [String]
    # @!attribute schema_conversion_application_attributes
    #   <p>The schema conversion application attributes, including the Amazon S3 bucket name and Amazon S3 role ARN.</p>
    #   @return [Types::SCApplicationAttributes]
    class ModifyMigrationProjectMessage < Struct.new(
      :migration_project_identifier,
      :migration_project_name,
      :source_data_provider_descriptors,
      :target_data_provider_descriptors,
      :instance_profile_identifier,
      :transformation_rules,
      :description,
      :schema_conversion_application_attributes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project
    #   <p>The migration project that was modified.</p>
    #   @return [Types::MigrationProject]
    class ModifyMigrationProjectResponse < Struct.new(
      :migration_project,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication to modify.</p>
    #   @return [String]
    # @!attribute replication_config_identifier
    #   <p>The new replication config to apply to the replication.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>The type of replication.</p>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>Table mappings specified in the replication.</p>
    #   @return [String]
    # @!attribute replication_settings
    #   <p>The settings for the replication.</p>
    #   @return [String]
    # @!attribute supplemental_settings
    #   <p>Additional settings for the replication.</p>
    #   @return [String]
    # @!attribute compute_config
    #   <p>Configuration parameters for provisioning an DMS Serverless replication.</p>
    #   @return [Types::ComputeConfig]
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the source endpoint for this DMS serverless
    #            replication configuration.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the target endpoint for this DMS serverless
    #            replication configuration.</p>
    #   @return [String]
    class ModifyReplicationConfigMessage < Struct.new(
      :replication_config_arn,
      :replication_config_identifier,
      :replication_type,
      :table_mappings,
      :replication_settings,
      :supplemental_settings,
      :compute_config,
      :source_endpoint_arn,
      :target_endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_config
    #   <p>Information about the serverless replication config that was modified.</p>
    #   @return [Types::ReplicationConfig]
    class ModifyReplicationConfigResponse < Struct.new(
      :replication_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) to be allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute apply_immediately
    #   <p>Indicates whether the changes should be applied immediately or during the next
    #            maintenance window.</p>
    #   @return [Boolean]
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set
    #            this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth"> Selecting the right DMS replication instance for your
    #               migration</a>. </p>
    #   @return [String]
    # @!attribute vpc_security_group_ids
    #   <p> Specifies the VPC security group to be used with the replication instance. The VPC
    #            security group must work with the VPC containing the replication instance. </p>
    #   @return [Array<String>]
    # @!attribute preferred_maintenance_window
    #   <p>The weekly time range (in UTC) during which system maintenance can occur, which might
    #            result in an outage. Changing this parameter does not result in an outage, except in the
    #            following situation, and the change is asynchronously applied as soon as possible. If
    #            moving this window to the current time, there must be at least 30 minutes between the
    #            current time and end of the window to ensure pending changes are applied.</p>
    #            <p>Default: Uses existing setting</p>
    #            <p>Format: ddd:hh24:mi-ddd:hh24:mi</p>
    #            <p>Valid Days: Mon | Tue | Wed | Thu | Fri | Sat | Sun</p>
    #            <p>Constraints: Must be at least 30 minutes</p>
    #   @return [String]
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #               <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    #   @return [String]
    # @!attribute allow_major_version_upgrade
    #   <p>Indicates that major version upgrades are allowed. Changing this parameter does not
    #            result in an outage, and the change is asynchronously applied as soon as possible.</p>
    #            <p>This parameter must be set to <code>true</code> when specifying a value for the
    #               <code>EngineVersion</code> parameter that is a different major version than the
    #            replication instance's current version.</p>
    #   @return [Boolean]
    # @!attribute auto_minor_version_upgrade
    #   <p>A value that indicates that minor version upgrades are applied automatically to the
    #            replication instance during the maintenance window. Changing this parameter doesn't result
    #            in an outage, except in the case described following. The change is asynchronously applied
    #            as soon as possible. </p>
    #            <p>An outage does result if these factors apply: </p>
    #            <ul>
    #               <li>
    #                  <p>This parameter is set to <code>true</code> during the maintenance window.</p>
    #               </li>
    #               <li>
    #                  <p>A newer minor version is available. </p>
    #               </li>
    #               <li>
    #                  <p>DMS has enabled automatic patching for the given engine version. </p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier. This parameter is stored as a lowercase
    #            string.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    #   @return [String]
    # @!attribute kerberos_authentication_settings
    #   <p>Specifies the settings required for kerberos authentication when modifying a replication
    #            instance.</p>
    #   @return [Types::KerberosAuthenticationSettings]
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
      :kerberos_authentication_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_instance
    #   <p>The modified replication instance.</p>
    #   @return [Types::ReplicationInstance]
    class ModifyReplicationInstanceResponse < Struct.new(
      :replication_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_subnet_group_identifier
    #   <p>The name of the replication instance subnet group.</p>
    #   @return [String]
    # @!attribute replication_subnet_group_description
    #   <p>A description for the replication instance subnet group.</p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>A list of subnet IDs.</p>
    #   @return [Array<String>]
    class ModifyReplicationSubnetGroupMessage < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :subnet_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_subnet_group
    #   <p>The modified replication subnet group.</p>
    #   @return [Types::ReplicationSubnetGroup]
    class ModifyReplicationSubnetGroupResponse < Struct.new(
      :replication_subnet_group,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #   @return [String]
    # @!attribute replication_task_identifier
    #   <p>The replication task identifier.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute migration_type
    #   <p>The migration type. Valid values: <code>full-load</code> | <code>cdc</code> |
    #               <code>full-load-and-cdc</code>
    #            </p>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>When using the CLI or boto3, provide the path of the JSON file that contains the table
    #            mappings. Precede the path with <code>file://</code>. For example, <code>--table-mappings
    #               file://mappingfile.json</code>. When working with the DMS API, provide the JSON as the
    #            parameter value. </p>
    #   @return [String]
    # @!attribute replication_task_settings
    #   <p>JSON file that contains settings for the task, such as task metadata settings.</p>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    #   @return [String]
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source
    #            and target endpoints. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for
    #               Task Settings</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [String]
    class ModifyReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :replication_task_identifier,
      :migration_type,
      :table_mappings,
      :replication_task_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      :task_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The replication task that was modified.</p>
    #   @return [Types::ReplicationTask]
    class ModifyReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a MongoDB data provider.</p>
    # @!attribute server_name
    #   <p>The name of the MongoDB server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the MongoDB data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the MongoDB data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the MongoDB data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The authentication type for the database connection. Valid values are PASSWORD or NO.</p>
    #   @return [String]
    # @!attribute auth_source
    #   <p> The MongoDB database name. This setting isn't used when <code>AuthType</code> is
    #            set to <code>"no"</code>. </p>
    #            <p>The default is <code>"admin"</code>.</p>
    #   @return [String]
    # @!attribute auth_mechanism
    #   <p>The authentication method for connecting to the data provider. Valid values are DEFAULT, MONGODB_CR, or SCRAM_SHA_1.</p>
    #   @return [String]
    class MongoDbDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :auth_type,
      :auth_source,
      :auth_mechanism,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a MongoDB endpoint.</p>
    # @!attribute username
    #   <p>The user name you use to access the MongoDB source endpoint. </p>
    #   @return [String]
    # @!attribute password
    #   <p> The password for the user account you use to access the MongoDB source endpoint.
    #         </p>
    #   @return [String]
    # @!attribute server_name
    #   <p> The name of the server on the MongoDB source endpoint. For MongoDB Atlas, provide the
    #            server name for any of the servers in the replication set.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The port value for the MongoDB source endpoint. </p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p> The database name on the MongoDB source endpoint. </p>
    #   @return [String]
    # @!attribute auth_type
    #   <p> The authentication type you use to access the MongoDB source endpoint.</p>
    #            <p>When when set to <code>"no"</code>, user name and password parameters are not used and
    #            can be empty. </p>
    #   @return [String]
    # @!attribute auth_mechanism
    #   <p> The authentication mechanism you use to access the MongoDB source endpoint.</p>
    #            <p>For the default value, in MongoDB version 2.x, <code>"default"</code> is
    #               <code>"mongodb_cr"</code>. For MongoDB version 3.x or later, <code>"default"</code> is
    #               <code>"scram_sha_1"</code>. This setting isn't used when <code>AuthType</code> is
    #            set to <code>"no"</code>.</p>
    #   @return [String]
    # @!attribute nesting_level
    #   <p> Specifies either document or table mode. </p>
    #            <p>Default value is <code>"none"</code>. Specify <code>"none"</code> to use document mode.
    #            Specify <code>"one"</code> to use table mode.</p>
    #   @return [String]
    # @!attribute extract_doc_id
    #   <p> Specifies the document ID. Use this setting when <code>NestingLevel</code> is set to
    #               <code>"none"</code>. </p>
    #            <p>Default value is <code>"false"</code>. </p>
    #   @return [String]
    # @!attribute docs_to_investigate
    #   <p> Indicates the number of documents to preview to determine the document organization.
    #            Use this setting when <code>NestingLevel</code> is set to <code>"one"</code>. </p>
    #            <p>Must be a positive value greater than <code>0</code>. Default value is
    #            <code>1000</code>.</p>
    #   @return [String]
    # @!attribute auth_source
    #   <p> The MongoDB database name. This setting isn't used when <code>AuthType</code> is
    #            set to <code>"no"</code>. </p>
    #            <p>The default is <code>"admin"</code>.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>The KMS key identifier that is used to encrypt the content on the replication
    #            instance. If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS
    #            uses your default encryption key. KMS creates the default encryption key for your
    #            Amazon Web Services account. Your Amazon Web Services account has a different default encryption key for each
    #            Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the MongoDB endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the MongoDB endpoint connection details.</p>
    #   @return [String]
    # @!attribute use_update_look_up
    #   <p>If <code>true</code>, DMS retrieves the entire document from the MongoDB source during migration.
    #            This may cause a migration failure if the server response exceeds bandwidth limits. To fetch only updates
    #            and deletes during migration, set this parameter to <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute replicate_shard_collections
    #   <p>If <code>true</code>, DMS replicates data to shard collections. DMS only uses this
    #            setting if the target endpoint is a DocumentDB elastic cluster.</p>
    #            <p>When this setting is <code>true</code>, note the following:</p>
    #            <ul>
    #               <li>
    #                  <p>You must set <code>TargetTablePrepMode</code> to <code>nothing</code>.</p>
    #               </li>
    #               <li>
    #                  <p>DMS automatically sets <code>useUpdateLookup</code> to
    #                  <code>false</code>.</p>
    #               </li>
    #            </ul>
    #   @return [Boolean]
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
      :replicate_shard_collections,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the task that you want to move.</p>
    #   @return [String]
    # @!attribute target_replication_instance_arn
    #   <p>The ARN of the replication instance where you want to move the task to.</p>
    #   @return [String]
    class MoveReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :target_replication_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The replication task that was moved.</p>
    #   @return [Types::ReplicationTask]
    class MoveReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MySQLAuthenticationMethod
      Password = 'password'
      IAM = 'iam'
    end

    # <p>Provides information that defines a MySQL endpoint.</p>
    # @!attribute after_connect_script
    #   <p>Specifies a script to run immediately after DMS connects to the endpoint. The
    #            migration task continues running regardless if the SQL statement succeeds or fails.</p>
    #            <p>For this parameter, provide the code of the script itself, not the name of a file
    #            containing the script.</p>
    #   @return [String]
    # @!attribute clean_source_metadata_on_mismatch
    #   <p>Cleans and recreates table metadata information on the replication instance when a
    #            mismatch occurs. For example, in a situation where running an alter DDL on the table could
    #            result in different information about the table cached in the replication instance. </p>
    #   @return [Boolean]
    # @!attribute database_name
    #   <p>Database name for the endpoint. For a MySQL source or target endpoint, don't explicitly
    #            specify the database using the <code>DatabaseName</code> request parameter on either the
    #               <code>CreateEndpoint</code> or <code>ModifyEndpoint</code> API call. Specifying
    #               <code>DatabaseName</code> when you create or modify a MySQL endpoint replicates all the
    #            task tables to this single database. For MySQL endpoints, you specify the database only
    #            when you specify the schema in the table-mapping rules of the DMS task.</p>
    #   @return [String]
    # @!attribute events_poll_interval
    #   <p>Specifies how often to check the binary log for new changes/events when the database is
    #            idle. The default is five seconds.</p>
    #            <p>Example: <code>eventsPollInterval=5;</code>
    #            </p>
    #            <p>In the example, DMS checks for changes in the binary logs every five seconds.</p>
    #   @return [Integer]
    # @!attribute target_db_type
    #   <p>Specifies where to migrate source tables on the target, either to a single database or
    #            multiple databases. If you specify <code>SPECIFIC_DATABASE</code>, specify the database
    #            name using the <code>DatabaseName</code> parameter of the <code>Endpoint</code>
    #            object.</p>
    #            <p>Example: <code>targetDbType=MULTIPLE_DATABASES</code>
    #            </p>
    #   @return [String]
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to transfer data to a
    #            MySQL-compatible database.</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #   @return [Integer]
    # @!attribute parallel_load_threads
    #   <p>Improves performance when loading data into the MySQL-compatible target database.
    #            Specifies how many threads to use to load the data into the MySQL-compatible target
    #            database. Setting a large number of threads can have an adverse effect on database
    #            performance, because a separate connection is required for each thread. The default is
    #            one.</p>
    #            <p>Example: <code>parallelLoadThreads=1</code>
    #            </p>
    #   @return [Integer]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>The host name of the endpoint database. </p>
    #            <p>For an Amazon RDS MySQL instance, this is the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html">DescribeDBInstances</a>, in the <code>
    #                  <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Endpoint.html">Endpoint</a>.Address</code> field.</p>
    #            <p>For an Aurora MySQL instance, this is the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html">DescribeDBClusters</a>, in the <code>Endpoint</code> field.</p>
    #   @return [String]
    # @!attribute server_timezone
    #   <p>Specifies the time zone for the source MySQL database.</p>
    #            <p>Example: <code>serverTimezone=US/Pacific;</code>
    #            </p>
    #            <p>Note: Do not enclose time zones in single quotes.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the MySQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the MySQL endpoint connection details.</p>
    #   @return [String]
    # @!attribute execute_timeout
    #   <p>Sets the client statement timeout (in seconds) for a MySQL source endpoint.</p>
    #   @return [Integer]
    # @!attribute service_access_role_arn
    #   <p>The IAM role you can use to authenticate when connecting to your endpoint. Ensure to include <code>iam:PassRole</code> and <code>rds-db:connect</code> actions in permission policy.</p>
    #   @return [String]
    # @!attribute authentication_method
    #   <p>This attribute allows you to specify the authentication method as "iam auth".</p>
    #   @return [String]
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
      :authentication_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a MySQL data provider.</p>
    # @!attribute server_name
    #   <p>The name of the MySQL server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the MySQL data provider.</p>
    #   @return [Integer]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the MySQL data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class MySqlDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an Amazon Neptune endpoint.</p>
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the service role that you created for the Neptune
    #            target endpoint. The role must allow the <code>iam:PassRole</code> action. For more
    #            information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole">Creating an IAM Service Role for Accessing Amazon Neptune as a
    #               Target</a> in the <i>Database Migration Service User Guide. </i>
    #            </p>
    #   @return [String]
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket where DMS can temporarily store migrated graph data
    #            in .csv files before bulk-loading it to the Neptune target database. DMS maps the SQL
    #            source data to graph data before storing it in these .csv files.</p>
    #   @return [String]
    # @!attribute s3_bucket_folder
    #   <p>A folder path where you want DMS to store migrated graph data in the S3 bucket
    #            specified by <code>S3BucketName</code>
    #            </p>
    #   @return [String]
    # @!attribute error_retry_duration
    #   <p>The number of milliseconds for DMS to wait to retry a bulk-load of migrated graph data
    #            to the Neptune target database before raising an error. The default is 250.</p>
    #   @return [Integer]
    # @!attribute max_file_size
    #   <p>The maximum size in kilobytes of migrated graph data stored in a .csv file before DMS
    #            bulk-loads the data to the Neptune target database. The default is 1,048,576 KB. If the
    #            bulk load is successful, DMS clears the bucket, ready to store the next batch of migrated
    #            graph data.</p>
    #   @return [Integer]
    # @!attribute max_retry_count
    #   <p>The number of times for DMS to retry a bulk load of migrated graph data to the Neptune
    #            target database before raising an error. The default is 5.</p>
    #   @return [Integer]
    # @!attribute iam_auth_enabled
    #   <p>If you want Identity and Access Management (IAM) authorization enabled for this endpoint, set this parameter
    #            to <code>true</code>. Then attach the appropriate IAM policy document to your service role
    #            specified by <code>ServiceAccessRoleArn</code>. The default is <code>false</code>.</p>
    #   @return [Boolean]
    class NeptuneSettings < Struct.new(
      :service_access_role_arn,
      :s3_bucket_name,
      :s3_bucket_folder,
      :error_retry_duration,
      :max_file_size,
      :max_retry_count,
      :iam_auth_enabled,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NestingLevelValue
      NONE = 'none'
      ONE = 'one'
    end

    module OracleAuthenticationMethod
      Password = 'password'
      Kerberos = 'kerberos'
    end

    # <p>Provides information that defines an Oracle data provider.</p>
    # @!attribute server_name
    #   <p>The name of the Oracle server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the Oracle data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the Oracle data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the Oracle data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute asm_server
    #   <p>The address of your Oracle Automatic Storage Management (ASM) server. You can set 
    #            this value from the <code>asm_server</code> value. You set <code>asm_server</code> as part 
    #            of the extra connection attribute string to access an Oracle server with Binary Reader that 
    #            uses ASM. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source database</a>.</p>
    #   @return [String]
    # @!attribute secrets_manager_oracle_asm_secret_id
    #   <p>The identifier of the secret in Secrets Manager that contains the Oracle ASM connection details.</p>
    #            <p>Required only if your data provider uses the Oracle ASM server.</p>
    #   @return [String]
    # @!attribute secrets_manager_oracle_asm_access_role_arn
    #   <p>The ARN of the IAM role that provides access to the secret in Secrets Manager 
    #            that contains the Oracle ASM connection details.</p>
    #   @return [String]
    # @!attribute secrets_manager_security_db_encryption_secret_id
    #   <p>The identifier of the secret in Secrets Manager that contains the transparent data encryption (TDE) 
    #            password. DMS requires this password to access Oracle redo logs encrypted by TDE 
    #            using Binary Reader.</p>
    #   @return [String]
    # @!attribute secrets_manager_security_db_encryption_access_role_arn
    #   <p>The ARN of the IAM role that provides access to the secret in Secrets Manager 
    #            that contains the TDE password.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
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
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an Oracle endpoint.</p>
    # @!attribute add_supplemental_logging
    #   <p>Set this attribute to set up table-level supplemental logging for the Oracle database.
    #            This attribute enables PRIMARY KEY supplemental logging on all tables selected for a
    #            migration task.</p>
    #            <p>If you use this option, you still need to enable database-level supplemental
    #            logging.</p>
    #   @return [Boolean]
    # @!attribute archived_log_dest_id
    #   <p>Specifies the ID of the destination for the archived redo logs. This value should be the
    #            same as a number in the dest_id column of the v$archived_log view. If you work with an
    #            additional redo log destination, use the <code>AdditionalArchivedLogDestId</code> option to
    #            specify the additional destination ID. Doing this improves performance by ensuring that the
    #            correct logs are accessed from the outset.</p>
    #   @return [Integer]
    # @!attribute additional_archived_log_dest_id
    #   <p>Set this attribute with <code>ArchivedLogDestId</code> in a primary/ standby setup. This
    #            attribute is useful in the case of a switchover. In this case, DMS needs to know which
    #            destination to get archive redo logs from to read changes. This need arises because the
    #            previous primary instance is now a standby instance after switchover.</p>
    #            <p>Although DMS supports the use of the Oracle <code>RESETLOGS</code> option to open the
    #            database, never use <code>RESETLOGS</code> unless necessary. For additional information
    #            about <code>RESETLOGS</code>, see <a href="https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B">RMAN Data Repair Concepts</a> in the <i>Oracle Database Backup and Recovery
    #               User's Guide</i>.</p>
    #   @return [Integer]
    # @!attribute extra_archived_log_dest_ids
    #   <p>Specifies the IDs of one more destinations for one or more archived redo logs. These IDs
    #            are the values of the <code>dest_id</code> column in the <code>v$archived_log</code> view.
    #            Use this setting with the <code>archivedLogDestId</code> extra connection attribute in a
    #            primary-to-single setup or a primary-to-multiple-standby setup. </p>
    #            <p>This setting is useful in a switchover when you use an Oracle Data Guard database as a
    #            source. In this case, DMS needs information about what destination to get archive redo
    #            logs from to read changes. DMS needs this because after the switchover the previous
    #            primary is a standby instance. For example, in a primary-to-single standby setup you might
    #            apply the following settings. </p>
    #            <p>
    #               <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2]</code>
    #            </p>
    #            <p>In a primary-to-multiple-standby setup, you might apply the following settings.</p>
    #            <p>
    #               <code>archivedLogDestId=1; ExtraArchivedLogDestIds=[2,3,4]</code>
    #            </p>
    #            <p>Although DMS supports the use of the Oracle <code>RESETLOGS</code> option to open the
    #            database, never use <code>RESETLOGS</code> unless it's necessary. For more information
    #            about <code>RESETLOGS</code>, see <a href="https://docs.oracle.com/en/database/oracle/oracle-database/19/bradv/rman-data-repair-concepts.html#GUID-1805CCF7-4AF2-482D-B65A-998192F89C2B"> RMAN Data Repair Concepts</a> in the <i>Oracle Database Backup and Recovery
    #               User's Guide</i>.</p>
    #   @return [Array<Integer>]
    # @!attribute allow_select_nested_tables
    #   <p>Set this attribute to <code>true</code> to enable replication of Oracle tables
    #            containing columns that are nested tables or defined types.</p>
    #   @return [Boolean]
    # @!attribute parallel_asm_read_threads
    #   <p>Set this attribute to change the number of threads that DMS configures to perform a
    #            change data capture (CDC) load using Oracle Automatic Storage Management (ASM). You can
    #            specify an integer value between 2 (the default) and 8 (the maximum). Use this attribute
    #            together with the <code>readAheadBlocks</code> attribute.</p>
    #   @return [Integer]
    # @!attribute read_ahead_blocks
    #   <p>Set this attribute to change the number of read-ahead blocks that DMS configures to
    #            perform a change data capture (CDC) load using Oracle Automatic Storage Management (ASM).
    #            You can specify an integer value between 1000 (the default) and 200,000 (the
    #            maximum).</p>
    #   @return [Integer]
    # @!attribute access_alternate_directly
    #   <p>Set this attribute to <code>false</code> in order to use the Binary Reader to capture
    #            change data for an Amazon RDS for Oracle as the source. This tells the DMS instance to not
    #            access redo logs through any specified path prefix replacement using direct file
    #            access.</p>
    #   @return [Boolean]
    # @!attribute use_alternate_folder_for_online
    #   <p>Set this attribute to <code>true</code> in order to use the Binary Reader to capture
    #            change data for an Amazon RDS for Oracle as the source. This tells the DMS instance to use any
    #            specified prefix replacement to access all online redo logs.</p>
    #   @return [Boolean]
    # @!attribute oracle_path_prefix
    #   <p>Set this string attribute to the required value in order to use the Binary Reader to
    #            capture change data for an Amazon RDS for Oracle as the source. This value specifies the
    #            default Oracle root used to access the redo logs.</p>
    #   @return [String]
    # @!attribute use_path_prefix
    #   <p>Set this string attribute to the required value in order to use the Binary Reader to
    #            capture change data for an Amazon RDS for Oracle as the source. This value specifies the
    #            path prefix used to replace the default Oracle root to access the redo logs.</p>
    #   @return [String]
    # @!attribute replace_path_prefix
    #   <p>Set this attribute to true in order to use the Binary Reader to capture change data for
    #            an Amazon RDS for Oracle as the source. This setting tells DMS instance to replace the default
    #            Oracle root with the specified <code>usePathPrefix</code> setting to access the redo
    #            logs.</p>
    #   @return [Boolean]
    # @!attribute enable_homogenous_tablespace
    #   <p>Set this attribute to enable homogenous tablespace replication and create existing
    #            tables or indexes under the same tablespace on the target.</p>
    #   @return [Boolean]
    # @!attribute direct_path_no_log
    #   <p>When set to <code>true</code>, this attribute helps to increase the commit rate on the
    #            Oracle target database by writing directly to tables and not writing a trail to database
    #            logs.</p>
    #   @return [Boolean]
    # @!attribute archived_logs_only
    #   <p>When this field is set to <code>True</code>, DMS only accesses the archived redo logs.
    #            If the archived redo logs are stored on Automatic Storage Management (ASM) only, the DMS
    #            user account needs to be granted ASM privileges.</p>
    #   @return [Boolean]
    # @!attribute asm_password
    #   <p>For an Oracle source endpoint, your Oracle Automatic Storage Management (ASM) password.
    #            You can set this value from the <code>
    #                  <i>asm_user_password</i>
    #               </code> value.
    #            You set this value as part of the comma-separated value that you set to the
    #               <code>Password</code> request parameter when you create the endpoint to access
    #            transaction logs using Binary Reader. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #   @return [String]
    # @!attribute asm_server
    #   <p>For an Oracle source endpoint, your ASM server address. You can set this value from the
    #               <code>asm_server</code> value. You set <code>asm_server</code> as part of the extra
    #            connection attribute string to access an Oracle server with Binary Reader that uses ASM.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #   @return [String]
    # @!attribute asm_user
    #   <p>For an Oracle source endpoint, your ASM user name. You can set this value from the
    #               <code>asm_user</code> value. You set <code>asm_user</code> as part of the extra
    #            connection attribute string to access an Oracle server with Binary Reader that uses ASM.
    #            For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC.Configuration">Configuration for change data capture (CDC) on an Oracle source
    #               database</a>.</p>
    #   @return [String]
    # @!attribute char_length_semantics
    #   <p>Specifies whether the length of a character column is in bytes or in characters. To
    #            indicate that the character column length is in characters, set this attribute to
    #               <code>CHAR</code>. Otherwise, the character column length is in bytes.</p>
    #            <p>Example: <code>charLengthSemantics=CHAR;</code>
    #            </p>
    #   @return [String]
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute direct_path_parallel_load
    #   <p>When set to <code>true</code>, this attribute specifies a parallel load when
    #               <code>useDirectPathFullLoad</code> is set to <code>Y</code>. This attribute also only
    #            applies when you use the DMS parallel load feature. Note that the target table cannot
    #            have any constraints or indexes.</p>
    #   @return [Boolean]
    # @!attribute fail_tasks_on_lob_truncation
    #   <p>When set to <code>true</code>, this attribute causes a task to fail if the actual size
    #            of an LOB column is greater than the specified <code>LobMaxSize</code>.</p>
    #            <p>If a task is set to limited LOB mode and this option is set to <code>true</code>, the
    #            task fails instead of truncating the LOB data.</p>
    #   @return [Boolean]
    # @!attribute number_datatype_scale
    #   <p>Specifies the number scale. You can select a scale up to 38, or you can select FLOAT. By
    #            default, the NUMBER data type is converted to precision 38, scale 10.</p>
    #            <p>Example: <code>numberDataTypeScale=12</code>
    #            </p>
    #   @return [Integer]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port.</p>
    #   @return [Integer]
    # @!attribute read_table_space_name
    #   <p>When set to <code>true</code>, this attribute supports tablespace replication.</p>
    #   @return [Boolean]
    # @!attribute retry_interval
    #   <p>Specifies the number of seconds that the system waits before resending a query.</p>
    #            <p>Example: <code>retryInterval=6;</code>
    #            </p>
    #   @return [Integer]
    # @!attribute security_db_encryption
    #   <p>For an Oracle source endpoint, the transparent data encryption (TDE) password required
    #            by AWM DMS to access Oracle redo logs encrypted by TDE using Binary Reader. It is also the
    #                  <code>
    #                  <i>TDE_Password</i>
    #               </code> part of the comma-separated value you
    #            set to the <code>Password</code> request parameter when you create the endpoint. The
    #               <code>SecurityDbEncryptian</code> setting is related to this
    #               <code>SecurityDbEncryptionName</code> setting. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption"> Supported encryption methods for using Oracle as a source for
    #               DMS </a> in the <i>Database Migration Service User Guide</i>. </p>
    #   @return [String]
    # @!attribute security_db_encryption_name
    #   <p>For an Oracle source endpoint, the name of a key used for the transparent data
    #            encryption (TDE) of the columns and tablespaces in an Oracle source database that is
    #            encrypted using TDE. The key value is the value of the <code>SecurityDbEncryption</code>
    #            setting. For more information on setting the key name value of
    #               <code>SecurityDbEncryptionName</code>, see the information and example for setting the
    #               <code>securityDbEncryptionName</code> extra connection attribute in <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption"> Supported encryption methods for using Oracle as a source for
    #               DMS </a> in the <i>Database Migration Service User Guide</i>.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #            <p>For an Amazon RDS Oracle instance, this is the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html">DescribeDBInstances</a>, in the <code>
    #                  <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Endpoint.html">Endpoint</a>.Address</code> field.</p>
    #   @return [String]
    # @!attribute spatial_data_option_to_geo_json_function_name
    #   <p>Use this attribute to convert <code>SDO_GEOMETRY</code> to <code>GEOJSON</code> format.
    #            By default, DMS calls the <code>SDO2GEOJSON</code> custom function if present and
    #            accessible. Or you can create your own custom function that mimics the operation of
    #               <code>SDOGEOJSON</code> and set <code>SpatialDataOptionToGeoJsonFunctionName</code> to
    #            call it instead. </p>
    #   @return [String]
    # @!attribute standby_delay_time
    #   <p>Use this attribute to specify a time in minutes for the delay in standby sync. If the
    #            source is an Oracle Active Data Guard standby database, use this attribute to specify the
    #            time lag between primary and standby databases.</p>
    #            <p>In DMS, you can create an Oracle CDC task that uses an Active Data Guard standby
    #            instance as a source for replicating ongoing changes. Doing this eliminates the need to
    #            connect to an active database that might be in production.</p>
    #   @return [Integer]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute use_b_file
    #   <p>Set this attribute to True to capture change data using the Binary Reader utility. Set
    #               <code>UseLogminerReader</code> to False to set this attribute to True. To use Binary
    #            Reader with Amazon RDS for Oracle as the source, you set additional attributes. For more
    #            information about using this setting with Oracle Automatic Storage Management (ASM), see
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC"> Using Oracle LogMiner or DMS Binary Reader for
    #            CDC</a>.</p>
    #   @return [Boolean]
    # @!attribute use_direct_path_full_load
    #   <p>Set this attribute to True to have DMS use a direct path full load. Specify this value
    #            to use the direct path protocol in the Oracle Call Interface (OCI). By using this OCI
    #            protocol, you can bulk-load Oracle target tables during a full load.</p>
    #   @return [Boolean]
    # @!attribute use_logminer_reader
    #   <p>Set this attribute to True to capture change data using the Oracle LogMiner utility (the
    #            default). Set this attribute to False if you want to access the redo logs as a binary file.
    #            When you set <code>UseLogminerReader</code> to False, also set <code>UseBfile</code> to
    #            True. For more information on this setting and using Oracle ASM, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.CDC"> Using Oracle LogMiner or DMS Binary Reader for CDC</a> in
    #            the <i>DMS User Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the Oracle endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the Oracle endpoint connection details.</p>
    #   @return [String]
    # @!attribute secrets_manager_oracle_asm_access_role_arn
    #   <p>Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full
    #            ARN of the IAM role that specifies DMS as the trusted entity and grants the required
    #            permissions to access the <code>SecretsManagerOracleAsmSecret</code>. This
    #               <code>SecretsManagerOracleAsmSecret</code> has the secret value that allows access to
    #            the Oracle ASM of the endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerOracleAsmSecretId</code>. Or you can
    #               specify clear-text values for <code>AsmUser</code>, <code>AsmPassword</code>, and
    #                  <code>AsmServerName</code>. You can't specify both. For more information on
    #               creating this <code>SecretsManagerOracleAsmSecret</code> and the
    #                  <code>SecretsManagerOracleAsmAccessRoleArn</code> and
    #                  <code>SecretsManagerOracleAsmSecretId</code> required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_oracle_asm_secret_id
    #   <p>Required only if your Oracle endpoint uses Automatic Storage Management (ASM). The full
    #            ARN, partial ARN, or friendly name of the <code>SecretsManagerOracleAsmSecret</code> that
    #            contains the Oracle ASM connection details for the Oracle endpoint.</p>
    #   @return [String]
    # @!attribute trim_space_in_char
    #   <p>Use the <code>TrimSpaceInChar</code> source endpoint setting to trim data on CHAR and
    #            NCHAR data types during migration. The default value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute convert_timestamp_with_zone_to_utc
    #   <p>When true, converts timestamps with the <code>timezone</code> datatype to their UTC
    #            value.</p>
    #   @return [Boolean]
    # @!attribute open_transaction_window
    #   <p>The timeframe in minutes to check for open transactions for a CDC-only task.</p>
    #            <p>You can specify an integer value between 0 (the default) and 240 (the maximum). </p>
    #            <note>
    #               <p>This parameter is only valid in DMS version 3.5.0 and later.</p>
    #            </note>
    #   @return [Integer]
    # @!attribute authentication_method
    #   <p>Specifies the authentication method to be used with Oracle.</p>
    #   @return [String]
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
      :authentication_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>In response to the <code>DescribeOrderableReplicationInstances</code> operation, this
    #          object describes an available replication instance. This description includes the
    #          replication instance's type, engine version, and allocated storage.</p>
    # @!attribute engine_version
    #   <p>The version of the replication engine.</p>
    #   @return [String]
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. For example to specify the instance class dms.c4.large, set
    #            this parameter to <code>"dms.c4.large"</code>.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth"> Selecting the right DMS replication instance for your
    #               migration</a>. </p>
    #   @return [String]
    # @!attribute storage_type
    #   <p>The type of storage used by the replication instance.</p>
    #   @return [String]
    # @!attribute min_allocated_storage
    #   <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute max_allocated_storage
    #   <p>The minimum amount of storage (in gigabytes) that can be allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute default_allocated_storage
    #   <p>The default amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute included_allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute availability_zones
    #   <p>List of Availability Zones for this replication instance.</p>
    #   @return [Array<String>]
    # @!attribute release_status
    #   <p>The value returned when the specified <code>EngineVersion</code> of the replication
    #            instance is in Beta or test mode. This indicates some features might not work as
    #            expected.</p>
    #            <note>
    #               <p>DMS supports the <code>ReleaseStatus</code> parameter in versions 3.1.4 and
    #               later.</p>
    #            </note>
    #   @return [String]
    class OrderableReplicationInstance < Struct.new(
      :engine_version,
      :replication_instance_class,
      :storage_type,
      :min_allocated_storage,
      :max_allocated_storage,
      :default_allocated_storage,
      :included_allocated_storage,
      :availability_zones,
      :release_status,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:min_allocated_storage] = 0 unless options.key?(:min_allocated_storage)
        options[:max_allocated_storage] = 0 unless options.key?(:max_allocated_storage)
        options[:default_allocated_storage] = 0 unless options.key?(:default_allocated_storage)
        options[:included_allocated_storage] = 0 unless options.key?(:included_allocated_storage)
        super
      end
    end

    module OriginTypeValue
      SOURCE = 'SOURCE'
      TARGET = 'TARGET'
    end

    module ParquetVersionValue
      PARQUET_1_0 = 'parquet-1-0'
      PARQUET_2_0 = 'parquet-2-0'
    end

    # <p>Describes a maintenance action pending for an DMS resource, including when and how it
    #          will be applied. This data type is a response element to the
    #             <code>DescribePendingMaintenanceActions</code> operation.</p>
    # @!attribute action
    #   <p>The type of pending maintenance action that is available for the resource.</p>
    #   @return [String]
    # @!attribute auto_applied_after_date
    #   <p>The date of the maintenance window when the action is to be applied. The maintenance
    #            action is applied to the resource during its first maintenance window after this date. If
    #            this date is specified, any <code>next-maintenance</code> opt-in requests are
    #            ignored.</p>
    #   @return [Time]
    # @!attribute forced_apply_date
    #   <p>The date when the maintenance action will be automatically applied. The maintenance
    #            action is applied to the resource on this date regardless of the maintenance window for the
    #            resource. If this date is specified, any <code>immediate</code> opt-in requests are
    #            ignored.</p>
    #   @return [Time]
    # @!attribute opt_in_status
    #   <p>The type of opt-in request that has been received for the resource.</p>
    #   @return [String]
    # @!attribute current_apply_date
    #   <p>The effective date when the pending maintenance action will be applied to the resource.
    #            This date takes into account opt-in requests received from the
    #               <code>ApplyPendingMaintenanceAction</code> API operation, and also the
    #               <code>AutoAppliedAfterDate</code> and <code>ForcedApplyDate</code> parameter values.
    #            This value is blank if an opt-in request has not been received and nothing has been
    #            specified for <code>AutoAppliedAfterDate</code> or <code>ForcedApplyDate</code>.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>A description providing more detail about the maintenance action.</p>
    #   @return [String]
    class PendingMaintenanceAction < Struct.new(
      :action,
      :auto_applied_after_date,
      :forced_apply_date,
      :opt_in_status,
      :current_apply_date,
      :description,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module PluginNameValue
      NO_PREFERENCE = 'no-preference'
      TEST_DECODING = 'test-decoding'
      PGLOGICAL = 'pglogical'
    end

    module PostgreSQLAuthenticationMethod
      Password = 'password'
      IAM = 'iam'
    end

    # <p>Provides information that defines a PostgreSQL endpoint.</p>
    # @!attribute after_connect_script
    #   <p>For use with change data capture (CDC) only, this attribute has DMS bypass foreign
    #            keys and user triggers to reduce the time it takes to bulk load data.</p>
    #            <p>Example: <code>afterConnectScript=SET session_replication_role='replica'</code>
    #            </p>
    #   @return [String]
    # @!attribute capture_ddls
    #   <p>To capture DDL events, DMS creates various artifacts in the PostgreSQL database when
    #            the task starts. You can later remove these artifacts.</p>
    #            <p>The default value is <code>true</code>.</p>
    #            <p>If this value is set to <code>N</code>, you don't have to create tables or triggers on
    #            the source database.</p>
    #   @return [Boolean]
    # @!attribute max_file_size
    #   <p>Specifies the maximum size (in KB) of any .csv file used to transfer data to
    #            PostgreSQL.</p>
    #            <p>The default value is 32,768 KB (32 MB).</p>
    #            <p>Example: <code>maxFileSize=512</code>
    #            </p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute ddl_artifacts_schema
    #   <p>The schema in which the operational DDL database artifacts are created.</p>
    #            <p>The default value is <code>public</code>.</p>
    #            <p>Example: <code>ddlArtifactsSchema=xyzddlschema;</code>
    #            </p>
    #   @return [String]
    # @!attribute execute_timeout
    #   <p>Sets the client statement timeout for the PostgreSQL instance, in seconds. The default
    #            value is 60 seconds.</p>
    #            <p>Example: <code>executeTimeout=100;</code>
    #            </p>
    #   @return [Integer]
    # @!attribute fail_tasks_on_lob_truncation
    #   <p>When set to <code>true</code>, this value causes a task to fail if the actual size of a
    #            LOB column is greater than the specified <code>LobMaxSize</code>.</p>
    #            <p>The default value is <code>false</code>.</p>
    #            <p>If task is set to Limited LOB mode and this option is set to true, the task fails
    #            instead of truncating the LOB data.</p>
    #   @return [Boolean]
    # @!attribute heartbeat_enable
    #   <p>The write-ahead log (WAL) heartbeat feature mimics a dummy transaction. By doing this,
    #            it prevents idle logical replication slots from holding onto old WAL logs, which can result
    #            in storage full situations on the source. This heartbeat keeps <code>restart_lsn</code>
    #            moving and prevents storage full scenarios.</p>
    #            <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute heartbeat_schema
    #   <p>Sets the schema in which the heartbeat artifacts are created.</p>
    #            <p>The default value is <code>public</code>.</p>
    #   @return [String]
    # @!attribute heartbeat_frequency
    #   <p>Sets the WAL heartbeat frequency (in minutes).</p>
    #            <p>The default value is 5 minutes.</p>
    #   @return [Integer]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port. The default is 5432.</p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>The host name of the endpoint database. </p>
    #            <p>For an Amazon RDS PostgreSQL instance, this is the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBInstances.html">DescribeDBInstances</a>, in the <code>
    #                  <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_Endpoint.html">Endpoint</a>.Address</code> field.</p>
    #            <p>For an Aurora PostgreSQL instance, this is the output of <a href="https://docs.aws.amazon.com/AmazonRDS/latest/APIReference/API_DescribeDBClusters.html">DescribeDBClusters</a>, in the <code>Endpoint</code> field.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute slot_name
    #   <p>Sets the name of a previously created logical replication slot for a change data capture
    #            (CDC) load of the PostgreSQL source instance. </p>
    #            <p>When used with the <code>CdcStartPosition</code> request parameter for the DMS API ,
    #            this attribute also makes it possible to use native CDC start points. DMS verifies that the
    #            specified logical replication slot exists before starting the CDC load task. It also
    #            verifies that the task was created with a valid setting of <code>CdcStartPosition</code>.
    #            If the specified slot doesn't exist or the task doesn't have a valid
    #               <code>CdcStartPosition</code> setting, DMS raises an error.</p>
    #            <p>For more information about setting the <code>CdcStartPosition</code> request parameter,
    #            see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Task.CDC.html#CHAP_Task.CDC.StartPoint.Native">Determining a CDC native start point</a> in the <i>Database Migration Service User
    #               Guide</i>. For more information about using <code>CdcStartPosition</code>, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html">CreateReplicationTask</a>, <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">StartReplicationTask</a>, and <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html">ModifyReplicationTask</a>.</p>
    #   @return [String]
    # @!attribute plugin_name
    #   <p>Specifies the plugin to use to create a replication slot.</p>
    #            <p>The default value is <code>pglogical</code>.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the PostgreSQL endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the PostgreSQL endpoint connection details.</p>
    #   @return [String]
    # @!attribute trim_space_in_char
    #   <p>Use the <code>TrimSpaceInChar</code> source endpoint setting to trim data on CHAR and
    #            NCHAR data types during migration. The default value is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute map_boolean_as_boolean
    #   <p>When true, lets PostgreSQL migrate the boolean type as boolean. By default, PostgreSQL
    #            migrates booleans as <code>varchar(5)</code>. You must set this setting on both the source
    #            and target endpoints for it to take effect.</p>
    #            <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute map_jsonb_as_clob
    #   <p>When true, DMS migrates JSONB values as CLOB.</p>
    #            <p>The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute map_long_varchar_as
    #   <p>Sets what datatype to map LONG values as.</p>
    #            <p>The default value is <code>wstring</code>.</p>
    #   @return [String]
    # @!attribute database_mode
    #   <p>Specifies the default behavior of the replication's handling of PostgreSQL- compatible
    #            endpoints that require some additional configuration, such as Babelfish endpoints.</p>
    #   @return [String]
    # @!attribute babelfish_database_name
    #   <p>The Babelfish for Aurora PostgreSQL database name for the endpoint.</p>
    #   @return [String]
    # @!attribute disable_unicode_source_filter
    #   <p>Disables the Unicode source filter with PostgreSQL, for values passed into the Selection
    #            rule filter on Source Endpoint column values. By default DMS performs source filter
    #            comparisons using a Unicode string which can cause look ups to ignore the indexes in the
    #            text columns and slow down migrations.</p>
    #            <p>Unicode support should only be disabled when using a selection rule filter is on a text
    #            column in the Source database that is indexed.</p>
    #   @return [Boolean]
    # @!attribute service_access_role_arn
    #   <p>The IAM role arn you can use to authenticate the connection to your endpoint. Ensure to include <code>iam:PassRole</code> and <code>rds-db:connect</code> actions in permission policy.</p>
    #   @return [String]
    # @!attribute authentication_method
    #   <p>This attribute allows you to specify the authentication method as "iam auth".</p>
    #   @return [String]
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
      :authentication_method,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a PostgreSQL data provider.</p>
    # @!attribute server_name
    #   <p>The name of the PostgreSQL server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the PostgreSQL data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the PostgreSQL data provider.</p>
    #   @return [String]
    # @!attribute ssl_mode
    #   <p>The SSL mode used to connect to the PostgreSQL data provider. 
    #            The default value is <code>none</code>.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The Amazon Resource Name (ARN) of the certificate used for SSL connection.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class PostgreSqlDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :ssl_mode,
      :certificate_arn,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The results returned in <code>describe-replications</code> to display the results of the
    #          premigration assessment from the replication configuration.</p>
    # @!attribute premigration_assessment_run_arn
    #   <p>The Amazon Resource Name (ARN) of this assessment run.</p>
    #   @return [String]
    # @!attribute fail_on_assessment_failure
    #   <p>A configurable setting you can set to <code>true</code> (the defualt setting) or
    #               <code>false</code>. Use this setting to to stop the replication from starting
    #            automatically if the assessment fails. This can help you evaluate the issue that is
    #            preventing the replication from running successfully.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>This describes the assessment run status. The status can be one of the following
    #            values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>cancelling</code>: The assessment run was canceled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>deleting</code>: The assessment run was deleted.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>failed</code>: At least one individual assessment completed with a failed
    #                  status. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>error-provisioning</code>: An internal error occurred while resources were
    #                  provisioned (during the <code>provisioning</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>error-executing</code> An internal error occurred while individual
    #                  assessments ran (during the <code>running</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>invalid state</code>: The assessment run is in an unknown state. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>passed</code>: All individual assessments have completed and none have a
    #                  failed status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>provisioning</code>: The resources required to run individual assessments
    #                  are being provisioned. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>running</code>: Individual assessments are being run. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>starting</code>: The assessment run is starting, but resources are not yet
    #                  being provisioned for individual assessments. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>warning</code>: At least one individual assessment completed with a warning
    #                  status. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute premigration_assessment_run_creation_date
    #   <p>The date which the assessment run was created.</p>
    #   @return [Time]
    # @!attribute assessment_progress
    #   <p>The progress values reported by the <code>AssessmentProgress</code> response
    #            element.</p>
    #   @return [Types::ReplicationTaskAssessmentRunProgress]
    # @!attribute last_failure_message
    #   <p>The last message generated by an individual assessment failure.</p>
    #   @return [String]
    # @!attribute result_location_bucket
    #   <p>The Amazon S3 bucket that Database Migration Service Serverless created to store the results of this
    #            assessment run.</p>
    #   @return [String]
    # @!attribute result_location_folder
    #   <p>The folder within an Amazon S3 bucket where you want Database Migration Service to store the results of
    #            this assessment run.</p>
    #   @return [String]
    # @!attribute result_encryption_mode
    #   <p>The supported values are <code>SSE_KMS</code> and <code>SSE_S3</code>. If these values
    #            are not provided, then the files are not encrypted at rest. For more information, see
    #               <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys">Creating Amazon Web Services KMS
    #               keys to encrypt Amazon S3 target objects</a>.</p>
    #   @return [String]
    # @!attribute result_kms_key_arn
    #   <p>The ARN of a custom KMS encryption key that you specify when you set
    #               <code>ResultEncryptionMode</code> to <code>SSE_KMS</code>.</p>
    #   @return [String]
    # @!attribute result_statistic
    #   <p>The object containing the result statistics for a completed assessment run.</p>
    #   @return [Types::ReplicationTaskAssessmentRunResultStatistic]
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
      :result_statistic,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:fail_on_assessment_failure] = false unless options.key?(:fail_on_assessment_failure)
        super
      end
    end

    # <p>Information about provisioning resources for an DMS serverless replication.</p>
    # @!attribute provision_state
    #   <p>The current provisioning state </p>
    #   @return [String]
    # @!attribute provisioned_capacity_units
    #   <p>The number of capacity units the replication is using.</p>
    #   @return [Integer]
    # @!attribute date_provisioned
    #   <p>The timestamp when DMS provisioned replication resources.</p>
    #   @return [Time]
    # @!attribute is_new_provisioning_available
    #   <p>Whether the new provisioning is available to the replication.</p>
    #   @return [Boolean]
    # @!attribute date_new_provisioning_data_available
    #   <p>The timestamp when provisioning became available.</p>
    #   @return [Time]
    # @!attribute reason_for_new_provisioning_data
    #   <p>A message describing the reason that DMS provisioned new resources for the serverless
    #            replication.</p>
    #   @return [String]
    class ProvisionData < Struct.new(
      :provision_state,
      :provisioned_capacity_units,
      :date_provisioned,
      :is_new_provisioning_available,
      :date_new_provisioning_data_available,
      :reason_for_new_provisioning_data,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:provisioned_capacity_units] = 0 unless options.key?(:provisioned_capacity_units)
        options[:is_new_provisioning_available] = false unless options.key?(:is_new_provisioning_available)
        super
      end
    end

    # <p>Provides information that describes the configuration of the recommended target engine
    #             on Amazon RDS.</p>
    # @!attribute engine_edition
    #   <p>Describes the recommended target Amazon RDS engine edition.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>Describes the recommended target Amazon RDS instance type.</p>
    #   @return [String]
    # @!attribute instance_vcpu
    #   <p>Describes the number of virtual CPUs (vCPU) on the recommended Amazon RDS DB instance that
    #               meets your requirements.</p>
    #   @return [Float]
    # @!attribute instance_memory
    #   <p>Describes the memory on the recommended Amazon RDS DB instance that meets your
    #               requirements.</p>
    #   @return [Float]
    # @!attribute storage_type
    #   <p>Describes the storage type of the recommended Amazon RDS DB instance that meets your
    #               requirements.</p>
    #            <p>Amazon RDS provides three storage types: General Purpose SSD (also known as gp2 and gp3),
    #               Provisioned IOPS SSD (also known as io1), and magnetic (also known as standard).</p>
    #   @return [String]
    # @!attribute storage_size
    #   <p>Describes the storage size of the recommended Amazon RDS DB instance that meets your
    #               requirements.</p>
    #   @return [Integer]
    # @!attribute storage_iops
    #   <p>Describes the number of I/O operations completed each second (IOPS) on the recommended
    #               Amazon RDS DB instance that meets your requirements.</p>
    #   @return [Integer]
    # @!attribute deployment_option
    #   <p>Describes the deployment option for the recommended Amazon RDS DB instance. The deployment
    #               options include Multi-AZ and Single-AZ deployments. Valid values include
    #                   <code>"MULTI_AZ"</code> and <code>"SINGLE_AZ"</code>.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>Describes the recommended target Amazon RDS engine version.</p>
    #   @return [String]
    class RdsConfiguration < Struct.new(
      :engine_edition,
      :instance_type,
      :instance_vcpu,
      :instance_memory,
      :storage_type,
      :storage_size,
      :storage_iops,
      :deployment_option,
      :engine_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes a recommendation of a target engine on
    #             Amazon RDS.</p>
    # @!attribute requirements_to_target
    #   <p>Supplemental information about the requirements to the recommended target database on
    #               Amazon RDS.</p>
    #   @return [Types::RdsRequirements]
    # @!attribute target_configuration
    #   <p>Supplemental information about the configuration of the recommended target database on
    #               Amazon RDS.</p>
    #   @return [Types::RdsConfiguration]
    class RdsRecommendation < Struct.new(
      :requirements_to_target,
      :target_configuration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes the requirements to the target engine on
    #             Amazon RDS.</p>
    # @!attribute engine_edition
    #   <p>The required target Amazon RDS engine edition.</p>
    #   @return [String]
    # @!attribute instance_vcpu
    #   <p>The required number of virtual CPUs (vCPU) on the Amazon RDS DB instance.</p>
    #   @return [Float]
    # @!attribute instance_memory
    #   <p>The required memory on the Amazon RDS DB instance.</p>
    #   @return [Float]
    # @!attribute storage_size
    #   <p>The required Amazon RDS DB instance storage size.</p>
    #   @return [Integer]
    # @!attribute storage_iops
    #   <p>The required number of I/O operations completed each second (IOPS) on your Amazon RDS DB
    #               instance.</p>
    #   @return [Integer]
    # @!attribute deployment_option
    #   <p>The required deployment option for the Amazon RDS DB instance. Valid values include
    #                   <code>"MULTI_AZ"</code> for Multi-AZ deployments and <code>"SINGLE_AZ"</code> for
    #               Single-AZ deployments.</p>
    #   @return [String]
    # @!attribute engine_version
    #   <p>The required target Amazon RDS engine version.</p>
    #   @return [String]
    class RdsRequirements < Struct.new(
      :engine_edition,
      :instance_vcpu,
      :instance_memory,
      :storage_size,
      :storage_iops,
      :deployment_option,
      :engine_version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute force_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a Multi-AZ
    #            failover. If the instance isn't configured for Multi-AZ, then you can't specify
    #               <code>true</code>. ( <code>--force-planned-failover</code> and
    #               <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #   @return [Boolean]
    # @!attribute force_planned_failover
    #   <p>If this parameter is <code>true</code>, the reboot is conducted through a planned
    #            Multi-AZ failover where resources are released and cleaned up prior to conducting the
    #            failover. If the instance isn''t configured for Multi-AZ, then you can't specify
    #               <code>true</code>. ( <code>--force-planned-failover</code> and
    #               <code>--force-failover</code> can't both be set to <code>true</code>.)</p>
    #   @return [Boolean]
    class RebootReplicationInstanceMessage < Struct.new(
      :replication_instance_arn,
      :force_failover,
      :force_planned_failover,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_instance
    #   <p>The replication instance that is being rebooted. </p>
    #   @return [Types::ReplicationInstance]
    class RebootReplicationInstanceResponse < Struct.new(
      :replication_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes a recommendation of a target engine.</p>
    #          <p>A <i>recommendation</i> is a set of possible Amazon Web Services target engines that
    #             you can choose to migrate your source on-premises database. In this set, Fleet Advisor
    #             suggests a single target engine as the right sized migration destination. To determine
    #             this rightsized migration destination, Fleet Advisor uses the inventory metadata and
    #             metrics from data collector. You can use recommendations before the start of migration
    #             to save costs and reduce risks.</p>
    #          <p>With recommendations, you can explore different target options and compare metrics, so
    #             you can make an informed decision when you choose the migration target.</p>
    # @!attribute database_id
    #   <p>The identifier of the source database for which Fleet Advisor provided this
    #               recommendation.</p>
    #   @return [String]
    # @!attribute engine_name
    #   <p>The name of the target engine. Valid values include <code>"rds-aurora-mysql"</code>,
    #                   <code>"rds-aurora-postgresql"</code>, <code>"rds-mysql"</code>,
    #                   <code>"rds-oracle"</code>, <code>"rds-sql-server"</code>, and
    #                   <code>"rds-postgresql"</code>.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date when Fleet Advisor created the target engine recommendation.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the target engine recommendation. Valid values include
    #                   <code>"alternate"</code>, <code>"in-progress"</code>, <code>"not-viable"</code>, and
    #                   <code>"recommended"</code>.</p>
    #   @return [String]
    # @!attribute preferred
    #   <p>Indicates that this target is the rightsized migration destination.</p>
    #   @return [Boolean]
    # @!attribute settings
    #   <p>The settings in JSON format for the preferred target engine parameters. These
    #               parameters include capacity, resource utilization, and the usage type (production,
    #               development, or testing).</p>
    #   @return [Types::RecommendationSettings]
    # @!attribute data
    #   <p>The recommendation of a target engine for the specified source database.</p>
    #   @return [Types::RecommendationData]
    class Recommendation < Struct.new(
      :database_id,
      :engine_name,
      :created_date,
      :status,
      :preferred,
      :settings,
      :data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the target engine for the specified source database.</p>
    # @!attribute rds_engine
    #   <p>The recommendation of a target Amazon RDS database engine.</p>
    #   @return [Types::RdsRecommendation]
    class RecommendationData < Struct.new(
      :rds_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the required target engine settings.</p>
    # @!attribute instance_sizing_type
    #   <p>The size of your target instance. Fleet Advisor calculates this value based on your
    #               data collection type, such as total capacity and resource utilization. Valid values
    #               include <code>"total-capacity"</code> and <code>"utilization"</code>.</p>
    #   @return [String]
    # @!attribute workload_type
    #   <p>The deployment option for your target engine. For production databases, Fleet Advisor
    #               chooses Multi-AZ deployment. For development or test databases, Fleet Advisor chooses
    #               Single-AZ deployment. Valid values include <code>"development"</code> and
    #                   <code>"production"</code>.</p>
    #   @return [String]
    class RecommendationSettings < Struct.new(
      :instance_sizing_type,
      :workload_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RedisAuthTypeValue
      NONE = 'none'
      AUTH_ROLE = 'auth-role'
      AUTH_TOKEN = 'auth-token'
    end

    # <p>Provides information that defines a Redis target endpoint.</p>
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Transmission Control Protocol (TCP) port for the endpoint.</p>
    #   @return [Integer]
    # @!attribute ssl_security_protocol
    #   <p>The connection to a Redis target endpoint using Transport Layer Security (TLS). Valid
    #            values include <code>plaintext</code> and <code>ssl-encryption</code>. The default is
    #               <code>ssl-encryption</code>. The <code>ssl-encryption</code> option makes an encrypted
    #            connection. Optionally, you can identify an Amazon Resource Name (ARN) for an SSL
    #            certificate authority (CA) using the <code>SslCaCertificateArn </code>setting. If an ARN
    #            isn't given for a CA, DMS uses the Amazon root CA.</p>
    #            <p>The <code>plaintext</code> option doesn't provide Transport Layer Security (TLS)
    #            encryption for traffic between endpoint and database.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authentication to perform when connecting to a Redis target. Options include
    #               <code>none</code>, <code>auth-token</code>, and <code>auth-role</code>. The
    #               <code>auth-token</code> option requires an <code>AuthPassword</code> value to be
    #            provided. The <code>auth-role</code> option requires <code>AuthUserName</code> and
    #               <code>AuthPassword</code> values to be provided.</p>
    #   @return [String]
    # @!attribute auth_user_name
    #   <p>The user name provided with the <code>auth-role</code> option of the
    #               <code>AuthType</code> setting for a Redis target endpoint.</p>
    #   @return [String]
    # @!attribute auth_password
    #   <p>The password provided with the <code>auth-role</code> and <code>auth-token</code>
    #            options of the <code>AuthType</code> setting for a Redis target endpoint.</p>
    #   @return [String]
    # @!attribute ssl_ca_certificate_arn
    #   <p>The Amazon Resource Name (ARN) for the certificate authority (CA) that DMS uses to
    #            connect to your Redis target endpoint.</p>
    #   @return [String]
    class RedisSettings < Struct.new(
      :server_name,
      :port,
      :ssl_security_protocol,
      :auth_type,
      :auth_user_name,
      :auth_password,
      :ssl_ca_certificate_arn,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:port] = 0 unless options.key?(:port)
        super
      end
    end

    # <p>Provides information that defines an Amazon Redshift data provider.</p>
    # @!attribute server_name
    #   <p>The name of the Amazon Redshift server.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port value for the Amazon Redshift data provider.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The database name on the Amazon Redshift data provider.</p>
    #   @return [String]
    # @!attribute s3_path
    #   <p>The path for the Amazon S3 bucket that the application uses for accessing the user-defined schema.</p>
    #   @return [String]
    # @!attribute s3_access_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class RedshiftDataProviderSettings < Struct.new(
      :server_name,
      :port,
      :database_name,
      :s3_path,
      :s3_access_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an Amazon Redshift endpoint.</p>
    # @!attribute accept_any_date
    #   <p>A value that indicates to allow any date format, including invalid formats such as
    #            00/00/00 00:00:00, to be loaded without generating an error. You can choose
    #               <code>true</code> or <code>false</code> (the default).</p>
    #            <p>This parameter applies only to TIMESTAMP and DATE columns. Always use ACCEPTANYDATE with
    #            the DATEFORMAT parameter. If the date format for the data doesn't match the DATEFORMAT
    #            specification, Amazon Redshift inserts a NULL value into that field. </p>
    #   @return [Boolean]
    # @!attribute after_connect_script
    #   <p>Code to run after connecting. This parameter should contain the code itself, not the
    #            name of a file containing the code.</p>
    #   @return [String]
    # @!attribute bucket_folder
    #   <p>An S3 folder where the comma-separated-value (.csv) files are stored before being
    #            uploaded to the target Redshift cluster. </p>
    #            <p>For full load mode, DMS converts source records into .csv files and loads them to the
    #               <i>BucketFolder/TableID</i> path. DMS uses the Redshift
    #               <code>COPY</code> command to upload the .csv files to the target table. The files are
    #            deleted once the <code>COPY</code> operation has finished. For more information, see <a href="https://docs.aws.amazon.com/redshift/latest/dg/r_COPY.html">COPY</a> in the
    #               <i>Amazon Redshift Database Developer Guide</i>.</p>
    #            <p>For change-data-capture (CDC) mode, DMS creates a <i>NetChanges</i>
    #            table, and loads the .csv files to this <i>BucketFolder/NetChangesTableID</i>
    #            path.</p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p>The name of the intermediate S3 bucket used to store .csv files before uploading data to
    #            Redshift.</p>
    #   @return [String]
    # @!attribute case_sensitive_names
    #   <p>If Amazon Redshift is configured to support case sensitive schema names, set
    #               <code>CaseSensitiveNames</code> to <code>true</code>. The default is
    #            <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute comp_update
    #   <p>If you set <code>CompUpdate</code> to <code>true</code> Amazon Redshift applies
    #            automatic compression if the table is empty. This applies even if the table columns already
    #            have encodings other than <code>RAW</code>. If you set <code>CompUpdate</code> to
    #               <code>false</code>, automatic compression is disabled and existing column encodings
    #            aren't changed. The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute connection_timeout
    #   <p>A value that sets the amount of time to wait (in milliseconds) before timing out,
    #            beginning from when you initially establish a connection.</p>
    #   @return [Integer]
    # @!attribute database_name
    #   <p>The name of the Amazon Redshift data warehouse (service) that you are working
    #            with.</p>
    #   @return [String]
    # @!attribute date_format
    #   <p>The date format that you are using. Valid values are <code>auto</code> (case-sensitive),
    #            your date format string enclosed in quotes, or NULL. If this parameter is left unset
    #            (NULL), it defaults to a format of 'YYYY-MM-DD'. Using <code>auto</code> recognizes most
    #            strings, even some that aren't supported when you use a date format string. </p>
    #            <p>If your date and time values use formats different from each other, set this to
    #               <code>auto</code>. </p>
    #   @return [String]
    # @!attribute empty_as_null
    #   <p>A value that specifies whether DMS should migrate empty CHAR and VARCHAR fields as
    #            NULL. A value of <code>true</code> sets empty CHAR and VARCHAR fields to null. The default
    #            is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute encryption_mode
    #   <p>The type of server-side encryption that you want to use for your data. This encryption
    #            type is part of the endpoint settings or the extra connections attributes for Amazon S3.
    #            You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
    #            <note>
    #               <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of
    #               the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
    #                  <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
    #               to <code>SSE_KMS</code>.</p>
    #            </note>
    #            <p>To use <code>SSE_S3</code>, create an Identity and Access Management (IAM) role with a policy that allows
    #               <code>"arn:aws:s3:::*"</code> to use the following actions: <code>"s3:PutObject",
    #               "s3:ListBucket"</code>
    #            </p>
    #   @return [String]
    # @!attribute explicit_ids
    #   <p>This setting is only valid for a full-load migration task. Set <code>ExplicitIds</code>
    #            to <code>true</code> to have tables with <code>IDENTITY</code> columns override their
    #            auto-generated values with explicit values loaded from the source data files used to
    #            populate the tables. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute file_transfer_upload_streams
    #   <p>The number of threads used to upload a single file. This parameter accepts a value from
    #            1 through 64. It defaults to 10.</p>
    #            <p>The number of parallel streams used to upload a single .csv file to an S3 bucket using
    #            S3 Multipart Upload. For more information, see <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/mpuoverview.html">Multipart upload
    #               overview</a>. </p>
    #            <p>
    #               <code>FileTransferUploadStreams</code> accepts a value from 1 through 64. It defaults to
    #            10.</p>
    #   @return [Integer]
    # @!attribute load_timeout
    #   <p>The amount of time to wait (in milliseconds) before timing out of operations performed
    #            by DMS on a Redshift cluster, such as Redshift COPY, INSERT, DELETE, and UPDATE.</p>
    #   @return [Integer]
    # @!attribute max_file_size
    #   <p>The maximum size (in KB) of any .csv file used to load data on an S3 bucket and transfer
    #            data to Amazon Redshift. It defaults to 1048576KB (1 GB).</p>
    #   @return [Integer]
    # @!attribute password
    #   <p>The password for the user named in the <code>username</code> property.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port number for Amazon Redshift. The default value is 5439.</p>
    #   @return [Integer]
    # @!attribute remove_quotes
    #   <p>A value that specifies to remove surrounding quotation marks from strings in the
    #            incoming data. All characters within the quotation marks, including delimiters, are
    #            retained. Choose <code>true</code> to remove quotation marks. The default is
    #               <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute replace_invalid_chars
    #   <p>A list of characters that you want to replace. Use with
    #            <code>ReplaceChars</code>.</p>
    #   @return [String]
    # @!attribute replace_chars
    #   <p>A value that specifies to replaces the invalid characters specified in
    #               <code>ReplaceInvalidChars</code>, substituting the specified characters instead. The
    #            default is <code>"?"</code>.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name of the Amazon Redshift cluster you are using.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM role that has access to the Amazon Redshift
    #            service. The role must allow the <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute server_side_encryption_kms_key_id
    #   <p>The KMS key ID. If you are using <code>SSE_KMS</code> for the
    #               <code>EncryptionMode</code>, provide this key ID. The key that you use needs an attached
    #            policy that enables IAM user permissions and allows use of the key.</p>
    #   @return [String]
    # @!attribute time_format
    #   <p>The time format that you want to use. Valid values are <code>auto</code>
    #            (case-sensitive), <code>'timeformat_string'</code>, <code>'epochsecs'</code>, or
    #               <code>'epochmillisecs'</code>. It defaults to 10. Using <code>auto</code> recognizes
    #            most strings, even some that aren't supported when you use a time format string. </p>
    #            <p>If your date and time values use formats different from each other, set this parameter
    #            to <code>auto</code>. </p>
    #   @return [String]
    # @!attribute trim_blanks
    #   <p>A value that specifies to remove the trailing white space characters from a VARCHAR
    #            string. This parameter applies only to columns with a VARCHAR data type. Choose
    #               <code>true</code> to remove unneeded white space. The default is
    #            <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute truncate_columns
    #   <p>A value that specifies to truncate data in columns to the appropriate number of
    #            characters, so that the data fits in the column. This parameter applies only to columns
    #            with a VARCHAR or CHAR data type, and rows with a size of 4 MB or less. Choose
    #               <code>true</code> to truncate data. The default is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute username
    #   <p>An Amazon Redshift user name for a registered user.</p>
    #   @return [String]
    # @!attribute write_buffer_size
    #   <p>The size (in KB) of the in-memory file write buffer used when generating .csv files on
    #            the local disk at the DMS replication instance. The default value is 1000 (buffer size is
    #            1000KB).</p>
    #   @return [Integer]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the Amazon Redshift endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the Amazon Redshift endpoint connection details.</p>
    #   @return [String]
    # @!attribute map_boolean_as_boolean
    #   <p>When true, lets Redshift migrate the boolean type as boolean. By default, Redshift
    #            migrates booleans as <code>varchar(1)</code>. You must set this setting on both the source
    #            and target endpoints for it to take effect.</p>
    #   @return [Boolean]
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
      :map_boolean_as_boolean,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    class RefreshSchemasMessage < Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute refresh_schemas_status
    #   <p>The status of the refreshed schema.</p>
    #   @return [Types::RefreshSchemasStatus]
    class RefreshSchemasResponse < Struct.new(
      :refresh_schemas_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes status of a schema at an endpoint specified by the
    #             <code>DescribeRefreshSchemaStatus</code> operation.</p>
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the schema.</p>
    #   @return [String]
    # @!attribute last_refresh_date
    #   <p>The date the schema was last refreshed.</p>
    #   @return [Time]
    # @!attribute last_failure_message
    #   <p>The last failure message for the schema.</p>
    #   @return [String]
    class RefreshSchemasStatus < Struct.new(
      :endpoint_arn,
      :replication_instance_arn,
      :status,
      :last_refresh_date,
      :last_failure_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module RefreshSchemasStatusTypeValue
      SUCCESSFUL = 'successful'
      FAILED = 'failed'
      REFRESHING = 'refreshing'
    end

    module ReleaseStatusValues
      BETA = 'beta'
      PROD = 'prod'
    end

    module ReloadOptionValue
      DATA_RELOAD = 'data-reload'
      VALIDATE_ONLY = 'validate-only'
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication config for which to reload tables.</p>
    #   @return [String]
    # @!attribute tables_to_reload
    #   <p>The list of tables to reload.</p>
    #   @return [Array<Types::TableToReload>]
    # @!attribute reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the replication. </p>
    #   @return [String]
    class ReloadReplicationTablesMessage < Struct.new(
      :replication_config_arn,
      :tables_to_reload,
      :reload_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication config for which to reload tables.</p>
    #   @return [String]
    class ReloadReplicationTablesResponse < Struct.new(
      :replication_config_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #   @return [String]
    # @!attribute tables_to_reload
    #   <p>The name and schema of the table to be reloaded. </p>
    #   @return [Array<Types::TableToReload>]
    # @!attribute reload_option
    #   <p>Options for reload. Specify <code>data-reload</code> to reload the data and re-validate
    #            it if validation is enabled. Specify <code>validate-only</code> to re-validate the table.
    #            This option applies only when validation is enabled for the task. </p>
    #            <p>Valid values: data-reload, validate-only</p>
    #            <p>Default value is data-reload.</p>
    #   @return [String]
    class ReloadTablesMessage < Struct.new(
      :replication_task_arn,
      :tables_to_reload,
      :reload_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #   @return [String]
    class ReloadTablesResponse < Struct.new(
      :replication_task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Removes one or more tags from an DMS resource.</p>
    # @!attribute resource_arn
    #   <p>An DMS resource from which you want to remove tag(s). The value for this parameter is
    #            an Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key (name) of the tag to be removed.</p>
    #   @return [Array<String>]
    class RemoveTagsFromResourceMessage < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    class RemoveTagsFromResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes a serverless replication created by the
    #             <code>CreateReplication</code> operation.</p>
    # @!attribute replication_config_identifier
    #   <p>The identifier for the <code>ReplicationConfig</code> associated with the
    #            replication.</p>
    #   @return [String]
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name for the <code>ReplicationConfig</code> associated with the
    #            replication.</p>
    #   @return [String]
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name for an existing <code>Endpoint</code> the serverless
    #            replication uses for its data source.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>The Amazon Resource Name for an existing <code>Endpoint</code> the serverless
    #            replication uses for its data target.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>The type of the serverless replication.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the serverless replication.</p>
    #   @return [String]
    # @!attribute provision_data
    #   <p>Information about provisioning resources for an DMS serverless replication.</p>
    #   @return [Types::ProvisionData]
    # @!attribute premigration_assessment_statuses
    #   <p>The status output of premigration assessment in describe-replications.</p>
    #   @return [Array<Types::PremigrationAssessmentStatus>]
    # @!attribute stop_reason
    #   <p>The reason the replication task was stopped. This response parameter can return one of
    #            the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason NORMAL"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECOVERABLE_ERROR"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason FATAL_ERROR"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason FULL_LOAD_ONLY_FINISHED"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_FULL_LOAD"</code> – Full load
    #                  completed, with cached changes not applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_CACHED_EVENTS"</code> – Full
    #                  load completed, with cached changes applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason EXPRESS_LICENSE_LIMITS_REACHED"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_DDL_APPLY"</code> – User-defined
    #                  stop task after DDL applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_DUE_TO_LOW_MEMORY"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_DUE_TO_LOW_DISK"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AT_SERVER_TIME"</code> – User-defined
    #                  server time for stopping task</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AT_COMMIT_TIME"</code> – User-defined
    #                  commit time for stopping task</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECONFIGURATION_RESTART"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECYCLE_TASK"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure_messages
    #   <p>Error and other information about why a serverless replication failed.</p>
    #   @return [Array<String>]
    # @!attribute replication_stats
    #   <p>This object provides a collection of statistics about a serverless replication.</p>
    #   @return [Types::ReplicationStats]
    # @!attribute start_replication_type
    #   <p>The type of replication to start.</p>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #               <code>CdcStartTime</code> or <code>CdcStartPosition</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #               <code>CdcStartTime</code> or <code>CdcStartPosition</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #   @return [String]
    # @!attribute recovery_checkpoint
    #   <p>Indicates the last checkpoint that occurred during a change data capture (CDC)
    #            operation. You can provide this value to the <code>CdcStartPosition</code> parameter to
    #            start a CDC operation that begins at that checkpoint.</p>
    #   @return [String]
    # @!attribute replication_create_time
    #   <p>The time the serverless replication was created.</p>
    #   @return [Time]
    # @!attribute replication_update_time
    #   <p>The time the serverless replication was updated.</p>
    #   @return [Time]
    # @!attribute replication_last_stop_time
    #   <p>The timestamp when replication was last stopped.</p>
    #   @return [Time]
    # @!attribute replication_deprovision_time
    #   <p>The timestamp when DMS will deprovision the replication.</p>
    #   @return [Time]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This object provides configuration information about a serverless replication.</p>
    # @!attribute replication_config_identifier
    #   <p>The identifier for the <code>ReplicationConfig</code> associated with the
    #            replication.</p>
    #   @return [String]
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name (ARN) of this DMS Serverless replication
    #            configuration.</p>
    #   @return [String]
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the source endpoint for this DMS serverless
    #            replication configuration.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) of the target endpoint for this DMS serverless
    #            replication configuration.</p>
    #   @return [String]
    # @!attribute replication_type
    #   <p>The type of the replication.</p>
    #   @return [String]
    # @!attribute compute_config
    #   <p>Configuration parameters for provisioning an DMS serverless replication.</p>
    #   @return [Types::ComputeConfig]
    # @!attribute replication_settings
    #   <p>Configuration parameters for an DMS serverless replication.</p>
    #   @return [String]
    # @!attribute supplemental_settings
    #   <p>Additional parameters for an DMS serverless replication.</p>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>Table mappings specified in the replication.</p>
    #   @return [String]
    # @!attribute replication_config_create_time
    #   <p>The time the serverless replication config was created.</p>
    #   @return [Time]
    # @!attribute replication_config_update_time
    #   <p>The time the serverless replication config was updated.</p>
    #   @return [Time]
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReplicationEndpointTypeValue
      SOURCE = 'source'
      TARGET = 'target'
    end

    # <p>Provides information that defines a replication instance.</p>
    # @!attribute replication_instance_identifier
    #   <p>The replication instance identifier is a required parameter. This parameter is stored as
    #            a lowercase string.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-63 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #            <p>Example: <code>myrepinstance</code>
    #            </p>
    #   @return [String]
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class. It is a required parameter, although a default value is
    #            pre-selected in the DMS console.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth"> Selecting the right DMS replication instance for your
    #               migration</a>. </p>
    #   @return [String]
    # @!attribute replication_instance_status
    #   <p>The status of the replication instance. The possible return values include:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"available"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"creating"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleted"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"modifying"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"upgrading"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"rebooting"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"resetting-master-credentials"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"storage-full"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"incompatible-credentials"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"incompatible-network"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"maintenance"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute instance_create_time
    #   <p>The time the replication instance was created.</p>
    #   @return [Time]
    # @!attribute vpc_security_groups
    #   <p>The VPC security group for the instance.</p>
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    # @!attribute availability_zone
    #   <p>The Availability Zone for the instance.</p>
    #   @return [String]
    # @!attribute replication_subnet_group
    #   <p>The subnet group for the replication instance.</p>
    #   @return [Types::ReplicationSubnetGroup]
    # @!attribute preferred_maintenance_window
    #   <p>The maintenance window times for the replication instance. Any pending upgrades to the
    #            replication instance are performed during this time.</p>
    #   @return [String]
    # @!attribute pending_modified_values
    #   <p>The pending modification values.</p>
    #   @return [Types::ReplicationPendingModifiedValues]
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #            <p>If an engine version number is not specified when a replication instance is created, the
    #            default is the latest engine version available.</p>
    #            <p>When modifying a major engine version of an instance, also set
    #               <code>AllowMajorVersionUpgrade</code> to <code>true</code>.</p>
    #   @return [String]
    # @!attribute auto_minor_version_upgrade
    #   <p>Boolean value indicating if minor version upgrades will be automatically applied to the
    #            instance.</p>
    #   @return [Boolean]
    # @!attribute kms_key_id
    #   <p>An KMS key identifier that is used to encrypt the data on the replication
    #            instance.</p>
    #            <p>If you don't specify a value for the <code>KmsKeyId</code> parameter, then DMS uses
    #            your default encryption key.</p>
    #            <p>KMS creates the default encryption key for your Amazon Web Services account. Your Amazon Web Services account has
    #            a different default encryption key for each Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute replication_instance_public_ip_address
    #   <p>The public IP address of the replication instance.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute replication_instance_private_ip_address
    #   <p>The private IP address of the replication instance.</p>
    #   @deprecated
    #   @return [String]
    # @!attribute replication_instance_public_ip_addresses
    #   <p>One or more public IP addresses for the replication instance.</p>
    #   @return [Array<String>]
    # @!attribute replication_instance_private_ip_addresses
    #   <p>One or more private IP addresses for the replication instance.</p>
    #   @return [Array<String>]
    # @!attribute replication_instance_ipv6_addresses
    #   <p>One or more IPv6 addresses for the replication instance.</p>
    #   @return [Array<String>]
    # @!attribute publicly_accessible
    #   <p> Specifies the accessibility options for the replication instance. A value of
    #               <code>true</code> represents an instance with a public IP address. A value of
    #               <code>false</code> represents an instance with a private IP address. The default value
    #            is <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute secondary_availability_zone
    #   <p>The Availability Zone of the standby replication instance in a Multi-AZ
    #            deployment.</p>
    #   @return [String]
    # @!attribute free_until
    #   <p> The expiration date of the free replication instance that is part of the Free DMS
    #            program. </p>
    #   @return [Time]
    # @!attribute dns_name_servers
    #   <p>The DNS name servers supported for the replication instance to access your on-premise
    #            source or target database.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    #   @return [String]
    # @!attribute kerberos_authentication_settings
    #   <p>Specifies the settings required for kerberos authentication when replicating an
    #            instance.</p>
    #   @return [Types::KerberosAuthenticationSettings]
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
      :replication_instance_ipv6_addresses,
      :publicly_accessible,
      :secondary_availability_zone,
      :free_until,
      :dns_name_servers,
      :network_type,
      :kerberos_authentication_settings,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:allocated_storage] = 0 unless options.key?(:allocated_storage)
        options[:multi_az] = false unless options.key?(:multi_az)
        options[:auto_minor_version_upgrade] = false unless options.key?(:auto_minor_version_upgrade)
        options[:publicly_accessible] = false unless options.key?(:publicly_accessible)
        super
      end
    end

    # <p>Contains metadata for a replication instance task log.</p>
    # @!attribute replication_task_name
    #   <p>The name of the replication task.</p>
    #   @return [String]
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #   @return [String]
    # @!attribute replication_instance_task_log_size
    #   <p>The size, in bytes, of the replication task log.</p>
    #   @return [Integer]
    class ReplicationInstanceTaskLog < Struct.new(
      :replication_task_name,
      :replication_task_arn,
      :replication_instance_task_log_size,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:replication_instance_task_log_size] = 0 unless options.key?(:replication_instance_task_log_size)
        super
      end
    end

    # <p>Provides information about the values of pending modifications to a replication
    #          instance. This data type is an object of the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ReplicationInstance.html">
    #                <code>ReplicationInstance</code>
    #             </a> user-defined data type. </p>
    # @!attribute replication_instance_class
    #   <p>The compute and memory capacity of the replication instance as defined for the specified
    #            replication instance class.</p>
    #            <p>For more information on the settings and capacities for the available replication
    #            instance classes, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_ReplicationInstance.html#CHAP_ReplicationInstance.InDepth"> Selecting the right DMS replication instance for your
    #               migration</a>. </p>
    #   @return [String]
    # @!attribute allocated_storage
    #   <p>The amount of storage (in gigabytes) that is allocated for the replication
    #            instance.</p>
    #   @return [Integer]
    # @!attribute multi_az
    #   <p> Specifies whether the replication instance is a Multi-AZ deployment. You can't set
    #            the <code>AvailabilityZone</code> parameter if the Multi-AZ parameter is set to
    #               <code>true</code>. </p>
    #   @return [Boolean]
    # @!attribute engine_version
    #   <p>The engine version number of the replication instance.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The type of IP address protocol used by a replication instance, such as IPv4 only or
    #            Dual-stack that supports both IPv4 and IPv6 addressing. IPv6 only is not yet
    #            supported.</p>
    #   @return [String]
    class ReplicationPendingModifiedValues < Struct.new(
      :replication_instance_class,
      :allocated_storage,
      :multi_az,
      :engine_version,
      :network_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This object provides a collection of statistics about a serverless replication.</p>
    # @!attribute full_load_progress_percent
    #   <p>The percent complete for the full load serverless replication.</p>
    #   @return [Integer]
    # @!attribute elapsed_time_millis
    #   <p>The elapsed time of the replication, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute tables_loaded
    #   <p>The number of tables loaded for this replication.</p>
    #   @return [Integer]
    # @!attribute tables_loading
    #   <p>The number of tables currently loading for this replication.</p>
    #   @return [Integer]
    # @!attribute tables_queued
    #   <p>The number of tables queued for this replication.</p>
    #   @return [Integer]
    # @!attribute tables_errored
    #   <p>The number of errors that have occured for this replication.</p>
    #   @return [Integer]
    # @!attribute fresh_start_date
    #   <p>The date the replication was started either with a fresh start or a target
    #            reload.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The date the replication is scheduled to start.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>The date the replication was stopped.</p>
    #   @return [Time]
    # @!attribute full_load_start_date
    #   <p>The date the replication full load was started.</p>
    #   @return [Time]
    # @!attribute full_load_finish_date
    #   <p>The date the replication full load was finished.</p>
    #   @return [Time]
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
      :full_load_finish_date,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:full_load_progress_percent] = 0 unless options.key?(:full_load_progress_percent)
        options[:elapsed_time_millis] = 0 unless options.key?(:elapsed_time_millis)
        options[:tables_loaded] = 0 unless options.key?(:tables_loaded)
        options[:tables_loading] = 0 unless options.key?(:tables_loading)
        options[:tables_queued] = 0 unless options.key?(:tables_queued)
        options[:tables_errored] = 0 unless options.key?(:tables_errored)
        super
      end
    end

    # <p>Describes a subnet group in response to a request by the
    #             <code>DescribeReplicationSubnetGroups</code> operation.</p>
    # @!attribute replication_subnet_group_identifier
    #   <p>The identifier of the replication instance subnet group.</p>
    #   @return [String]
    # @!attribute replication_subnet_group_description
    #   <p>A description for the replication subnet group.</p>
    #   @return [String]
    # @!attribute vpc_id
    #   <p>The ID of the VPC.</p>
    #   @return [String]
    # @!attribute subnet_group_status
    #   <p>The status of the subnet group.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The subnets that are in the subnet group.</p>
    #   @return [Array<Types::Subnet>]
    # @!attribute supported_network_types
    #   <p>The IP addressing protocol supported by the subnet group. This is used by a replication
    #            instance with values such as IPv4 only or Dual-stack that supports both IPv4 and IPv6
    #            addressing. IPv6 only is not yet supported.</p>
    #   @return [Array<String>]
    class ReplicationSubnetGroup < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :supported_network_types,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ReplicationSubnetGroupDoesNotCoverEnoughAZs < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes a replication task created by the
    #             <code>CreateReplicationTask</code> operation.</p>
    # @!attribute replication_task_identifier
    #   <p>The user-assigned replication task identifier or name.</p>
    #            <p>Constraints:</p>
    #            <ul>
    #               <li>
    #                  <p>Must contain 1-255 alphanumeric characters or hyphens.</p>
    #               </li>
    #               <li>
    #                  <p>First character must be a letter.</p>
    #               </li>
    #               <li>
    #                  <p>Cannot end with a hyphen or contain two consecutive hyphens.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute source_endpoint_arn
    #   <p>The Amazon Resource Name (ARN) that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute target_endpoint_arn
    #   <p>The ARN that uniquely identifies the endpoint.</p>
    #   @return [String]
    # @!attribute replication_instance_arn
    #   <p>The ARN of the replication instance.</p>
    #   @return [String]
    # @!attribute migration_type
    #   <p>The type of migration.</p>
    #   @return [String]
    # @!attribute table_mappings
    #   <p>Table mappings specified in the task.</p>
    #   @return [String]
    # @!attribute replication_task_settings
    #   <p>The settings for the replication task.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the replication task. This response parameter can return one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"moving"</code> – The task is being moved in response to
    #                  running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                        <code>MoveReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"creating"</code> – The task is being created in response
    #                  to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_CreateReplicationTask.html">
    #                        <code>CreateReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code> – The task is being deleted in response
    #                  to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    #                        <code>DeleteReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code> – The task failed to successfully complete
    #                  the database migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed-move"</code> – The task failed to move in response
    #                  to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                        <code>MoveReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"modifying"</code> – The task definition is being modified
    #                  in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_ModifyReplicationTask.html">
    #                        <code>ModifyReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"ready"</code> – The task is in a <code>ready</code> state
    #                  where it can respond to other task operations, such as <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> or <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_DeleteReplicationTask.html">
    #                        <code>DeleteReplicationTask</code>
    #                     </a>. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code> – The task is performing a database
    #                  migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"starting"</code> – The task is preparing to perform a
    #                  database migration in response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html">
    #                        <code>StartReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"stopped"</code> – The task has stopped in response to
    #                  running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    #                        <code>StopReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"stopping"</code> – The task is preparing to stop in
    #                  response to running the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StopReplicationTask.html">
    #                        <code>StopReplicationTask</code>
    #                     </a> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"testing"</code> – The database migration specified for
    #                  this task is being tested in response to running either the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                        <code>StartReplicationTaskAssessmentRun</code>
    #                     </a> or the
    #                     <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    #                        <code>StartReplicationTaskAssessment</code>
    #                     </a>
    #                  operation.</p>
    #                  <note>
    #                     <p>
    #                        <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                           <code>StartReplicationTaskAssessmentRun</code>
    #                        </a> is
    #                     an improved premigration task assessment operation. The <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessment.html">
    #                           <code>StartReplicationTaskAssessment</code>
    #                        </a>
    #                     operation assesses data type compatibility only between the source and target
    #                     database of a given migration task. In contrast, <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTaskAssessmentRun.html">
    #                           <code>StartReplicationTaskAssessmentRun</code>
    #                        </a>
    #                     enables you to specify a variety of premigration task assessments in addition to
    #                     data type compatibility. These assessments include ones for the validity of
    #                     primary key definitions and likely issues with database migration performance,
    #                     among others.</p>
    #                  </note>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute last_failure_message
    #   <p>The last error (failure) message generated for the replication task.</p>
    #   @return [String]
    # @!attribute stop_reason
    #   <p>The reason the replication task was stopped. This response parameter can return one of
    #            the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason NORMAL"</code> – The task completed
    #                  successfully with no additional information returned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECOVERABLE_ERROR"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason FATAL_ERROR"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason FULL_LOAD_ONLY_FINISHED"</code> – The task
    #                  completed the full load phase. DMS applied cached changes if you set
    #                     <code>StopTaskCachedChangesApplied</code> to <code>true</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_FULL_LOAD"</code> – Full load
    #                  completed, with cached changes not applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_CACHED_EVENTS"</code> – Full
    #                  load completed, with cached changes applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason EXPRESS_LICENSE_LIMITS_REACHED"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AFTER_DDL_APPLY"</code> – User-defined
    #                  stop task after DDL applied</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_DUE_TO_LOW_MEMORY"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_DUE_TO_LOW_DISK"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AT_SERVER_TIME"</code> – User-defined
    #                  server time for stopping task</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason STOPPED_AT_COMMIT_TIME"</code> – User-defined
    #                  commit time for stopping task</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECONFIGURATION_RESTART"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"Stop Reason RECYCLE_TASK"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replication_task_creation_date
    #   <p>The date the replication task was created.</p>
    #   @return [Time]
    # @!attribute replication_task_start_date
    #   <p>The date the replication task is scheduled to start.</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #               <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want the
    #            CDC operation to start. Specifying both values results in an error.</p>
    #            <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    #   @return [String]
    # @!attribute recovery_checkpoint
    #   <p>Indicates the last checkpoint that occurred during a change data capture (CDC)
    #            operation. You can provide this value to the <code>CdcStartPosition</code> parameter to
    #            start a CDC operation that begins at that checkpoint.</p>
    #   @return [String]
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task.</p>
    #   @return [String]
    # @!attribute replication_task_stats
    #   <p>The statistics for the task, including elapsed time, tables loaded, and table
    #            errors.</p>
    #   @return [Types::ReplicationTaskStats]
    # @!attribute task_data
    #   <p>Supplemental information that the task requires to migrate the data for certain source
    #            and target endpoints. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html">Specifying Supplemental Data for
    #               Task Settings</a> in the <i>Database Migration Service User Guide.</i>
    #            </p>
    #   @return [String]
    # @!attribute target_replication_instance_arn
    #   <p>The ARN of the replication instance to which this task is moved in response to running
    #            the <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_MoveReplicationTask.html">
    #                  <code>MoveReplicationTask</code>
    #               </a> operation. Otherwise, this response
    #            parameter isn't a member of the <code>ReplicationTask</code> object.</p>
    #   @return [String]
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
      :target_replication_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The task assessment report in JSON format. </p>
    # @!attribute replication_task_identifier
    #   <p> The replication task identifier of the task on which the task assessment was run.
    #         </p>
    #   @return [String]
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task. </p>
    #   @return [String]
    # @!attribute replication_task_last_assessment_date
    #   <p>The date the task assessment was completed. </p>
    #   @return [Time]
    # @!attribute assessment_status
    #   <p> The status of the task assessment. </p>
    #   @return [String]
    # @!attribute assessment_results_file
    #   <p> The file containing the results of the task assessment. </p>
    #   @return [String]
    # @!attribute assessment_results
    #   <p> The task assessment results in JSON format. </p>
    #            <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a> in the
    #            request.</p>
    #   @return [String]
    # @!attribute s3_object_url
    #   <p> The URL of the S3 object containing the task assessment results. </p>
    #            <p>The response object only contains this field if you provide <a>DescribeReplicationTaskAssessmentResultsMessage$ReplicationTaskArn</a> in the
    #            request.</p>
    #   @return [String]
    class ReplicationTaskAssessmentResult < Struct.new(
      :replication_task_identifier,
      :replication_task_arn,
      :replication_task_last_assessment_date,
      :assessment_status,
      :assessment_results_file,
      :assessment_results,
      :s3_object_url,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that describes a premigration assessment run that you have started
    #          using the <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #          <p>Some of the information appears based on other operations that can return the
    #             <code>ReplicationTaskAssessmentRun</code> object.</p>
    # @!attribute replication_task_assessment_run_arn
    #   <p>Amazon Resource Name (ARN) of this assessment run.</p>
    #   @return [String]
    # @!attribute replication_task_arn
    #   <p>ARN of the migration task associated with this premigration assessment run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Assessment run status. </p>
    #            <p>This status can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"cancelling"</code> – The assessment run was canceled by the
    #                     <code>CancelReplicationTaskAssessmentRun</code> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"deleting"</code> – The assessment run was deleted by the
    #                     <code>DeleteReplicationTaskAssessmentRun</code> operation.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code> – At least one individual assessment completed with a
    #                     <code>failed</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error-provisioning"</code> – An internal error occurred while
    #                  resources were provisioned (during <code>provisioning</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error-executing"</code> – An internal error occurred while
    #                  individual assessments ran (during <code>running</code> status).</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"invalid state"</code> – The assessment run is in an unknown
    #                  state.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"passed"</code> – All individual assessments have completed, and none
    #                  has a <code>failed</code> status.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"provisioning"</code> – Resources required to run individual
    #                  assessments are being provisioned.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code> – Individual assessments are being run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"starting"</code> – The assessment run is starting, but resources are
    #                  not yet being provisioned for individual assessments.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"warning"</code> – At least one individual assessment completed with a <code>warning</code> status or all individual assessments were skipped (completed with a <code>skipped</code> status).</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replication_task_assessment_run_creation_date
    #   <p>Date on which the assessment run was created using the
    #               <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #   @return [Time]
    # @!attribute assessment_progress
    #   <p>Indication of the completion progress for the individual assessments specified to
    #            run.</p>
    #   @return [Types::ReplicationTaskAssessmentRunProgress]
    # @!attribute last_failure_message
    #   <p>Last message generated by an individual assessment failure.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>ARN of the service role used to start the assessment run using the
    #               <code>StartReplicationTaskAssessmentRun</code> operation. The role must allow the
    #               <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute result_location_bucket
    #   <p>Amazon S3 bucket where DMS stores the results of this assessment run.</p>
    #   @return [String]
    # @!attribute result_location_folder
    #   <p>Folder in an Amazon S3 bucket where DMS stores the results of this assessment
    #            run.</p>
    #   @return [String]
    # @!attribute result_encryption_mode
    #   <p>Encryption mode used to encrypt the assessment run results.</p>
    #   @return [String]
    # @!attribute result_kms_key_arn
    #   <p>ARN of the KMS encryption key used to encrypt the assessment run results.</p>
    #   @return [String]
    # @!attribute assessment_run_name
    #   <p>Unique name of the assessment run.</p>
    #   @return [String]
    # @!attribute is_latest_task_assessment_run
    #   <p>Indicates that the following PreflightAssessmentRun is the latest for the ReplicationTask. The status is either true or false.</p>
    #   @return [Boolean]
    # @!attribute result_statistic
    #   <p>
    #            Result statistics for a completed assessment run, showing aggregated statistics of IndividualAssessments for how many assessments were passed, failed, or encountered issues such as errors or warnings.
    #         </p>
    #   @return [Types::ReplicationTaskAssessmentRunResultStatistic]
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
      :result_statistic,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:is_latest_task_assessment_run] = false unless options.key?(:is_latest_task_assessment_run)
        super
      end
    end

    # <p>The progress values reported by the <code>AssessmentProgress</code> response
    #          element.</p>
    # @!attribute individual_assessment_count
    #   <p>The number of individual assessments that are specified to run.</p>
    #   @return [Integer]
    # @!attribute individual_assessment_completed_count
    #   <p>The number of individual assessments that have completed, successfully or not.</p>
    #   @return [Integer]
    class ReplicationTaskAssessmentRunProgress < Struct.new(
      :individual_assessment_count,
      :individual_assessment_completed_count,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:individual_assessment_count] = 0 unless options.key?(:individual_assessment_count)
        options[:individual_assessment_completed_count] = 0 unless options.key?(:individual_assessment_completed_count)
        super
      end
    end

    # <p>The object containing the result statistics for a completed assessment run.</p>
    # @!attribute passed
    #   <p>The number of individual assessments that successfully passed all checks in the assessment run.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>The number of individual assessments that failed to meet the criteria defined in the assessment run.</p>
    #   @return [Integer]
    # @!attribute error
    #   <p>The number of individual assessments that encountered a critical error and could not complete properly.</p>
    #   @return [Integer]
    # @!attribute warning
    #   <p>Indicates that the recent completed AssessmentRun triggered a warning.</p>
    #   @return [Integer]
    # @!attribute cancelled
    #   <p>
    #            The number of individual assessments that were cancelled during the assessment run.
    #         </p>
    #   @return [Integer]
    # @!attribute skipped
    #   <p>The number of individual assessments that were skipped during the assessment run.</p>
    #   @return [Integer]
    class ReplicationTaskAssessmentRunResultStatistic < Struct.new(
      :passed,
      :failed,
      :error,
      :warning,
      :cancelled,
      :skipped,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:passed] = 0 unless options.key?(:passed)
        options[:failed] = 0 unless options.key?(:failed)
        options[:error] = 0 unless options.key?(:error)
        options[:warning] = 0 unless options.key?(:warning)
        options[:cancelled] = 0 unless options.key?(:cancelled)
        options[:skipped] = 0 unless options.key?(:skipped)
        super
      end
    end

    # <p>Provides information that describes an individual assessment from a premigration
    #          assessment run.</p>
    # @!attribute replication_task_individual_assessment_arn
    #   <p>Amazon Resource Name (ARN) of this individual assessment.</p>
    #   @return [String]
    # @!attribute replication_task_assessment_run_arn
    #   <p>ARN of the premigration assessment run that is created to run this individual
    #            assessment.</p>
    #   @return [String]
    # @!attribute individual_assessment_name
    #   <p>Name of this individual assessment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Individual assessment status.</p>
    #            <p>This status can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"cancelled"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"error"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"failed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"passed"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"pending"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"skipped"</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"running"</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute replication_task_individual_assessment_start_date
    #   <p>Date when this individual assessment was started as part of running the
    #               <code>StartReplicationTaskAssessmentRun</code> operation.</p>
    #   @return [Time]
    class ReplicationTaskIndividualAssessment < Struct.new(
      :replication_task_individual_assessment_arn,
      :replication_task_assessment_run_arn,
      :individual_assessment_name,
      :status,
      :replication_task_individual_assessment_start_date,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>In response to a request by the <code>DescribeReplicationTasks</code> operation, this
    #          object provides a collection of statistics about a replication task.</p>
    # @!attribute full_load_progress_percent
    #   <p>The percent complete for the full load migration task.</p>
    #   @return [Integer]
    # @!attribute elapsed_time_millis
    #   <p>The elapsed time of the task, in milliseconds.</p>
    #   @return [Integer]
    # @!attribute tables_loaded
    #   <p>The number of tables loaded for this task.</p>
    #   @return [Integer]
    # @!attribute tables_loading
    #   <p>The number of tables currently loading for this task.</p>
    #   @return [Integer]
    # @!attribute tables_queued
    #   <p>The number of tables queued for this task.</p>
    #   @return [Integer]
    # @!attribute tables_errored
    #   <p>The number of errors that have occurred during this task.</p>
    #   @return [Integer]
    # @!attribute fresh_start_date
    #   <p>The date the replication task was started either with a fresh start or a target
    #            reload.</p>
    #   @return [Time]
    # @!attribute start_date
    #   <p>The date the replication task was started either with a fresh start or a resume. For
    #            more information, see <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_StartReplicationTask.html#DMS-StartReplicationTask-request-StartReplicationTaskType">StartReplicationTaskType</a>.</p>
    #   @return [Time]
    # @!attribute stop_date
    #   <p>The date the replication task was stopped.</p>
    #   @return [Time]
    # @!attribute full_load_start_date
    #   <p>The date the replication task full load was started.</p>
    #   @return [Time]
    # @!attribute full_load_finish_date
    #   <p>The date the replication task full load was completed.</p>
    #   @return [Time]
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
      :full_load_finish_date,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:full_load_progress_percent] = 0 unless options.key?(:full_load_progress_percent)
        options[:elapsed_time_millis] = 0 unless options.key?(:elapsed_time_millis)
        options[:tables_loaded] = 0 unless options.key?(:tables_loaded)
        options[:tables_loading] = 0 unless options.key?(:tables_loading)
        options[:tables_queued] = 0 unless options.key?(:tables_queued)
        options[:tables_errored] = 0 unless options.key?(:tables_errored)
        super
      end
    end

    # <p>The resource you are attempting to create already exists.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p></p>
    #   @return [String]
    class ResourceAlreadyExistsFault < Struct.new(
      :message,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Identifies an DMS resource and any pending actions for it.</p>
    # @!attribute resource_identifier
    #   <p>The Amazon Resource Name (ARN) of the DMS resource that the pending maintenance action
    #            applies to. For information about creating an ARN, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Introduction.AWS.ARN.html"> Constructing an Amazon
    #               Resource Name (ARN) for DMS</a> in the DMS documentation.</p>
    #   @return [String]
    # @!attribute pending_maintenance_action_details
    #   <p>Detailed information about the pending maintenance action.</p>
    #   @return [Array<Types::PendingMaintenanceAction>]
    class ResourcePendingMaintenanceActions < Struct.new(
      :resource_identifier,
      :pending_maintenance_action_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The quota for this resource quota has been exceeded.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class ResourceQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute lsa_analysis_id
    #   <p>The ID of the LSA analysis run.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the LSA analysis, for example <code>COMPLETED</code>.</p>
    #   @return [String]
    class RunFleetAdvisorLsaAnalysisResponse < Struct.new(
      :lsa_analysis_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Insufficient privileges are preventing access to an Amazon S3 object.</p>
    # @!attribute message
    #   @return [String]
    class S3AccessDeniedFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A specified Amazon S3 bucket, bucket folder, or other object can't be
    #             found.</p>
    # @!attribute message
    #   @return [String]
    class S3ResourceNotFoundFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Settings for exporting data to Amazon S3. </p>
    # @!attribute service_access_role_arn
    #   <p> The Amazon Resource Name (ARN) used by the service to access the IAM role. The role
    #            must allow the <code>iam:PassRole</code> action. It is a required parameter that enables
    #            DMS to write and read objects from an S3 bucket.</p>
    #   @return [String]
    # @!attribute external_table_definition
    #   <p> Specifies how tables are defined in the S3 source files only. </p>
    #   @return [String]
    # @!attribute csv_row_delimiter
    #   <p> The delimiter used to separate rows in the .csv file for both source and target. The
    #            default is a carriage return (<code>\n</code>). </p>
    #   @return [String]
    # @!attribute csv_delimiter
    #   <p> The delimiter used to separate columns in the .csv file for both source and target. The
    #            default is a comma. </p>
    #   @return [String]
    # @!attribute bucket_folder
    #   <p> An optional parameter to set a folder name in the S3 bucket. If provided, tables are
    #            created in the path
    #                  <code>
    #                  <i>bucketFolder</i>/<i>schema_name</i>/<i>table_name</i>/</code>.
    #            If this parameter isn't specified, then the path used is
    #                  <code>
    #                  <i>schema_name</i>/<i>table_name</i>/</code>.
    #         </p>
    #   @return [String]
    # @!attribute bucket_name
    #   <p> The name of the S3 bucket. </p>
    #   @return [String]
    # @!attribute compression_type
    #   <p>An optional parameter to use GZIP to compress the target files. Set to GZIP to compress
    #            the target files. Either set this parameter to NONE (the default) or don't use it to
    #            leave the files uncompressed. This parameter applies to both .csv and .parquet file
    #            formats. </p>
    #   @return [String]
    # @!attribute encryption_mode
    #   <p>The type of server-side encryption that you want to use for your data. This encryption
    #            type is part of the endpoint settings or the extra connections attributes for Amazon S3.
    #            You can choose either <code>SSE_S3</code> (the default) or <code>SSE_KMS</code>. </p>
    #            <note>
    #               <p>For the <code>ModifyEndpoint</code> operation, you can change the existing value of
    #               the <code>EncryptionMode</code> parameter from <code>SSE_KMS</code> to
    #                  <code>SSE_S3</code>. But you can’t change the existing value from <code>SSE_S3</code>
    #               to <code>SSE_KMS</code>.</p>
    #            </note>
    #            <p>To use <code>SSE_S3</code>, you need an Identity and Access Management (IAM) role with permission to allow
    #               <code>"arn:aws:s3:::dms-*"</code> to use the following actions:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>s3:CreateBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:ListBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteBucket</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketLocation</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:PutObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteObject</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetObjectVersion</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:GetBucketPolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:PutBucketPolicy</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>s3:DeleteBucketPolicy</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute server_side_encryption_kms_key_id
    #   <p>If you are using <code>SSE_KMS</code> for the <code>EncryptionMode</code>, provide the
    #            KMS key ID. The key that you use needs an attached policy that enables Identity and Access Management (IAM)
    #            user permissions and allows use of the key.</p>
    #            <p>Here is a CLI example: <code>aws dms create-endpoint --endpoint-identifier
    #                  <i>value</i> --endpoint-type target --engine-name s3 --s3-settings
    #                  ServiceAccessRoleArn=<i>value</i>,BucketFolder=<i>value</i>,BucketName=<i>value</i>,EncryptionMode=SSE_KMS,ServerSideEncryptionKmsKeyId=<i>value</i>
    #               </code>
    #            </p>
    #   @return [String]
    # @!attribute data_format
    #   <p>The format of the data that you want to use for output. You can choose one of the
    #            following: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>csv</code> : This is a row-based file format with comma-separated values
    #                  (.csv). </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>parquet</code> : Apache Parquet (.parquet) is a columnar storage file format
    #                  that features efficient compression and provides faster query response. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute encoding_type
    #   <p>The type of encoding you are using: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>RLE_DICTIONARY</code> uses a combination of bit-packing and run-length
    #                  encoding to store repeated values more efficiently. This is the default.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAIN</code> doesn't use encoding at all. Values are stored as they
    #                  are.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PLAIN_DICTIONARY</code> builds a dictionary of the values encountered in a
    #                  given column. The dictionary is stored in a dictionary page for each column
    #                  chunk.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute dict_page_size_limit
    #   <p>The maximum size of an encoded dictionary page of a column. If the dictionary page
    #            exceeds this, this column is stored using an encoding type of <code>PLAIN</code>. This
    #            parameter defaults to 1024 * 1024 bytes (1 MiB), the maximum size of a dictionary page
    #            before it reverts to <code>PLAIN</code> encoding. This size is used for .parquet file
    #            format only. </p>
    #   @return [Integer]
    # @!attribute row_group_length
    #   <p>The number of rows in a row group. A smaller row group size provides faster reads. But
    #            as the number of row groups grows, the slower writes become. This parameter defaults to
    #            10,000 rows. This number is used for .parquet file format only. </p>
    #            <p>If you choose a value larger than the maximum, <code>RowGroupLength</code> is set to the
    #            max row group length in bytes (64 * 1024 * 1024). </p>
    #   @return [Integer]
    # @!attribute data_page_size
    #   <p>The size of one data page in bytes. This parameter defaults to 1024 * 1024 bytes (1
    #            MiB). This number is used for .parquet file format only. </p>
    #   @return [Integer]
    # @!attribute parquet_version
    #   <p>The version of the Apache Parquet format that you want to use: <code>parquet_1_0</code>
    #            (the default) or <code>parquet_2_0</code>.</p>
    #   @return [String]
    # @!attribute enable_statistics
    #   <p>A value that enables statistics for Parquet pages and row groups. Choose
    #               <code>true</code> to enable statistics, <code>false</code> to disable. Statistics
    #            include <code>NULL</code>, <code>DISTINCT</code>, <code>MAX</code>, and <code>MIN</code>
    #            values. This parameter defaults to <code>true</code>. This value is used for .parquet file
    #            format only.</p>
    #   @return [Boolean]
    # @!attribute include_op_for_full_load
    #   <p>A value that enables a full load to write INSERT operations to the comma-separated value
    #            (.csv) or .parquet output files only to indicate how the rows were added to the source
    #            database.</p>
    #            <note>
    #               <p>DMS supports the <code>IncludeOpForFullLoad</code> parameter in versions 3.1.4 and
    #               later.</p>
    #               <p>DMS supports the use of the .parquet files with the
    #                  <code>IncludeOpForFullLoad</code> parameter in versions 3.4.7 and later.</p>
    #            </note>
    #            <p>For full load, records can only be inserted. By default (the <code>false</code>
    #            setting), no information is recorded in these output files for a full load to indicate that
    #            the rows were inserted at the source database. If <code>IncludeOpForFullLoad</code> is set
    #            to <code>true</code> or <code>y</code>, the INSERT is recorded as an I annotation in the
    #            first field of the .csv file. This allows the format of your target records from a full
    #            load to be consistent with the target records from a CDC load.</p>
    #            <note>
    #               <p>This setting works together with the <code>CdcInsertsOnly</code> and the
    #                  <code>CdcInsertsAndUpdates</code> parameters for output to .csv files only. For more
    #               information about how these settings work together, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the
    #                  <i>Database Migration Service User Guide.</i>.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cdc_inserts_only
    #   <p>A value that enables a change data capture (CDC) load to write only INSERT operations to
    #            .csv or columnar storage (.parquet) output files. By default (the <code>false</code>
    #            setting), the first field in a .csv or .parquet record contains the letter I (INSERT), U
    #            (UPDATE), or D (DELETE). These values indicate whether the row was inserted, updated, or
    #            deleted at the source database for a CDC load to the target.</p>
    #            <p>If <code>CdcInsertsOnly</code> is set to <code>true</code> or <code>y</code>, only
    #            INSERTs from the source database are migrated to the .csv or .parquet file. For .csv format
    #            only, how these INSERTs are recorded depends on the value of
    #               <code>IncludeOpForFullLoad</code>. If <code>IncludeOpForFullLoad</code> is set to
    #               <code>true</code>, the first field of every CDC record is set to I to indicate the
    #            INSERT operation at the source. If <code>IncludeOpForFullLoad</code> is set to
    #               <code>false</code>, every CDC record is written without a first field to indicate the
    #            INSERT operation at the source. For more information about how these settings work
    #            together, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service
    #               User Guide.</i>.</p>
    #            <note>
    #               <p>DMS supports the interaction described preceding between the
    #                  <code>CdcInsertsOnly</code> and <code>IncludeOpForFullLoad</code> parameters in
    #               versions 3.1.4 and later. </p>
    #               <p>
    #                  <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't both be
    #               set to <code>true</code> for the same endpoint. Set either <code>CdcInsertsOnly</code>
    #               or <code>CdcInsertsAndUpdates</code> to <code>true</code> for the same endpoint, but not
    #               both.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute timestamp_column_name
    #   <p>A value that when nonblank causes DMS to add a column with timestamp information to
    #            the endpoint data for an Amazon S3 target.</p>
    #            <note>
    #               <p>DMS supports the <code>TimestampColumnName</code> parameter in versions 3.1.4 and
    #               later.</p>
    #            </note>
    #            <p>DMS includes an additional <code>STRING</code> column in the .csv or .parquet object
    #            files of your migrated data when you set <code>TimestampColumnName</code> to a nonblank
    #            value.</p>
    #            <p>For a full load, each row of this timestamp column contains a timestamp for when the
    #            data was transferred from the source to the target by DMS. </p>
    #            <p>For a change data capture (CDC) load, each row of the timestamp column contains the
    #            timestamp for the commit of that row in the source database.</p>
    #            <p>The string format for this timestamp column value is <code>yyyy-MM-dd
    #               HH:mm:ss.SSSSSS</code>. By default, the precision of this value is in microseconds. For
    #            a CDC load, the rounding of the precision depends on the commit timestamp supported by DMS
    #            for the source database.</p>
    #            <p>When the <code>AddColumnName</code> parameter is set to <code>true</code>, DMS also
    #            includes a name for the timestamp column that you set with
    #            <code>TimestampColumnName</code>.</p>
    #   @return [String]
    # @!attribute parquet_timestamp_in_millisecond
    #   <p>A value that specifies the precision of any <code>TIMESTAMP</code> column values that
    #            are written to an Amazon S3 object file in .parquet format.</p>
    #            <note>
    #               <p>DMS supports the <code>ParquetTimestampInMillisecond</code> parameter in versions
    #               3.1.4 and later.</p>
    #            </note>
    #            <p>When <code>ParquetTimestampInMillisecond</code> is set to <code>true</code> or
    #               <code>y</code>, DMS writes all <code>TIMESTAMP</code> columns in a .parquet formatted
    #            file with millisecond precision. Otherwise, DMS writes them with microsecond
    #            precision.</p>
    #            <p>Currently, Amazon Athena and Glue can handle only millisecond precision for
    #               <code>TIMESTAMP</code> values. Set this parameter to <code>true</code> for S3 endpoint
    #            object files that are .parquet formatted only if you plan to query or process the data with
    #            Athena or Glue.</p>
    #            <note>
    #               <p>DMS writes any <code>TIMESTAMP</code> column values written to an S3 file in .csv
    #               format with microsecond precision.</p>
    #               <p>Setting <code>ParquetTimestampInMillisecond</code> has no effect on the string format
    #               of the timestamp column value that is inserted by setting the
    #                  <code>TimestampColumnName</code> parameter.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cdc_inserts_and_updates
    #   <p>A value that enables a change data capture (CDC) load to write INSERT and UPDATE
    #            operations to .csv or .parquet (columnar storage) output files. The default setting is
    #               <code>false</code>, but when <code>CdcInsertsAndUpdates</code> is set to
    #               <code>true</code> or <code>y</code>, only INSERTs and UPDATEs from the source database
    #            are migrated to the .csv or .parquet file.</p>
    #            <important>
    #               <p>DMS supports the use of the .parquet files in versions 3.4.7 and later.</p>
    #            </important>
    #            <p>How these INSERTs and UPDATEs are recorded depends on the value of the
    #               <code>IncludeOpForFullLoad</code> parameter. If <code>IncludeOpForFullLoad</code> is set
    #            to <code>true</code>, the first field of every CDC record is set to either <code>I</code>
    #            or <code>U</code> to indicate INSERT and UPDATE operations at the source. But if
    #               <code>IncludeOpForFullLoad</code> is set to <code>false</code>, CDC records are written
    #            without an indication of INSERT or UPDATE operations at the source. For more information
    #            about how these settings work together, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.Configuring.InsertOps">Indicating Source DB Operations in Migrated S3 Data</a> in the <i>Database Migration Service
    #               User Guide.</i>.</p>
    #            <note>
    #               <p>DMS supports the use of the <code>CdcInsertsAndUpdates</code> parameter in versions
    #               3.3.1 and later.</p>
    #               <p>
    #                  <code>CdcInsertsOnly</code> and <code>CdcInsertsAndUpdates</code> can't both be
    #               set to <code>true</code> for the same endpoint. Set either <code>CdcInsertsOnly</code>
    #               or <code>CdcInsertsAndUpdates</code> to <code>true</code> for the same endpoint, but not
    #               both.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute date_partition_enabled
    #   <p>When set to <code>true</code>, this parameter partitions S3 bucket folders based on
    #            transaction commit dates. The default value is <code>false</code>. For more information
    #            about date-based folder partitioning, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.DatePartitioning">Using date-based folder partitioning</a>.</p>
    #   @return [Boolean]
    # @!attribute date_partition_sequence
    #   <p>Identifies the sequence of the date format to use during folder partitioning. The
    #            default value is <code>YYYYMMDD</code>. Use this parameter when
    #               <code>DatePartitionedEnabled</code> is set to <code>true</code>.</p>
    #   @return [String]
    # @!attribute date_partition_delimiter
    #   <p>Specifies a date separating delimiter to use during folder partitioning. The default
    #            value is <code>SLASH</code>. Use this parameter when <code>DatePartitionedEnabled</code> is
    #            set to <code>true</code>.</p>
    #   @return [String]
    # @!attribute use_csv_no_sup_value
    #   <p>This setting applies if the S3 output files during a change data capture (CDC) load are
    #            written in .csv format. If set to <code>true</code> for columns not included in the
    #            supplemental log, DMS uses the value specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CsvNoSupValue">
    #                  <code>CsvNoSupValue</code>
    #               </a>. If not set or set to
    #               <code>false</code>, DMS uses the null value for these columns.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.1 and later.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute csv_no_sup_value
    #   <p>This setting only applies if your Amazon S3 output files during a change data capture
    #            (CDC) load are written in .csv format. If <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-UseCsvNoSupValue">
    #                  <code>UseCsvNoSupValue</code>
    #               </a> is set to true, specify a
    #            string value that you want DMS to use for all columns not included in the supplemental
    #            log. If you do not specify a string value, DMS uses the null value for these columns
    #            regardless of the <code>UseCsvNoSupValue</code> setting.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.1 and later.</p>
    #            </note>
    #   @return [String]
    # @!attribute preserve_transactions
    #   <p>If set to <code>true</code>, DMS saves the transaction order for a change data capture
    #            (CDC) load on the Amazon S3 target specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-CdcPath">
    #                  <code>CdcPath</code>
    #               </a>. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath">Capturing data changes (CDC) including transaction order on the S3
    #               target</a>.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.2 and later.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute cdc_path
    #   <p>Specifies the folder path of CDC files. For an S3 source, this setting is required if a
    #            task captures change data; otherwise, it's optional. If <code>CdcPath</code> is set, DMS
    #            reads CDC files from this path and replicates the data changes to the target endpoint. For
    #            an S3 target if you set <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-PreserveTransactions">
    #                  <code>PreserveTransactions</code>
    #               </a> to <code>true</code>,
    #            DMS verifies that you have set this parameter to a folder path on your S3 target where
    #            DMS can save the transaction order for the CDC load. DMS creates this CDC folder path
    #            in either your S3 target working directory or the S3 target location specified by <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketFolder">
    #                  <code>BucketFolder</code>
    #               </a> and <a href="https://docs.aws.amazon.com/dms/latest/APIReference/API_S3Settings.html#DMS-Type-S3Settings-BucketName">
    #                  <code>BucketName</code>
    #               </a>.</p>
    #            <p>For example, if you specify <code>CdcPath</code> as <code>MyChangedData</code>, and you
    #            specify <code>BucketName</code> as <code>MyTargetBucket</code> but do not specify
    #               <code>BucketFolder</code>, DMS creates the CDC folder path following:
    #               <code>MyTargetBucket/MyChangedData</code>.</p>
    #            <p>If you specify the same <code>CdcPath</code>, and you specify <code>BucketName</code> as
    #               <code>MyTargetBucket</code> and <code>BucketFolder</code> as <code>MyTargetData</code>,
    #            DMS creates the CDC folder path following:
    #               <code>MyTargetBucket/MyTargetData/MyChangedData</code>.</p>
    #            <p>For more information on CDC including transaction order on an S3 target, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.EndpointSettings.CdcPath">Capturing data changes (CDC) including transaction order on the S3
    #               target</a>.</p>
    #            <note>
    #               <p>This setting is supported in DMS versions 3.4.2 and later.</p>
    #            </note>
    #   @return [String]
    # @!attribute use_task_start_time_for_full_load_timestamp
    #   <p>When set to true, this parameter uses the task start time as the timestamp column value
    #            instead of the time data is written to target. For full load, when
    #               <code>useTaskStartTimeForFullLoadTimestamp</code> is set to <code>true</code>, each row
    #            of the timestamp column contains the task start time. For CDC loads, each row of the
    #            timestamp column contains the transaction commit time.</p>
    #            <p>When <code>useTaskStartTimeForFullLoadTimestamp</code> is set to <code>false</code>, the
    #            full load timestamp in the timestamp column increments with the time data arrives at the
    #            target. </p>
    #   @return [Boolean]
    # @!attribute canned_acl_for_objects
    #   <p>A value that enables DMS to specify a predefined (canned) access control list for
    #            objects created in an Amazon S3 bucket as .csv or .parquet files. For more information
    #            about Amazon S3 canned ACLs, see <a href="http://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl">Canned
    #               ACL</a> in the <i>Amazon S3 Developer Guide.</i>
    #            </p>
    #            <p>The default value is NONE. Valid values include NONE, PRIVATE, PUBLIC_READ,
    #            PUBLIC_READ_WRITE, AUTHENTICATED_READ, AWS_EXEC_READ, BUCKET_OWNER_READ, and
    #            BUCKET_OWNER_FULL_CONTROL.</p>
    #   @return [String]
    # @!attribute add_column_name
    #   <p>An optional parameter that, when set to <code>true</code> or <code>y</code>, you can use
    #            to add column name information to the .csv output file.</p>
    #            <p>The default value is <code>false</code>. Valid values are <code>true</code>,
    #               <code>false</code>, <code>y</code>, and <code>n</code>.</p>
    #   @return [Boolean]
    # @!attribute cdc_max_batch_interval
    #   <p>Maximum length of the interval, defined in seconds, after which to output a file to
    #            Amazon S3.</p>
    #            <p>When <code>CdcMaxBatchInterval</code> and <code>CdcMinFileSize</code> are both
    #            specified, the file write is triggered by whichever parameter condition is met first within
    #            an DMS CloudFormation template.</p>
    #            <p>The default value is 60 seconds.</p>
    #   @return [Integer]
    # @!attribute cdc_min_file_size
    #   <p>Minimum file size, defined in kilobytes, to reach for a file output to Amazon S3.</p>
    #            <p>When <code>CdcMinFileSize</code> and <code>CdcMaxBatchInterval</code> are both
    #            specified, the file write is triggered by whichever parameter condition is met first within
    #            an DMS CloudFormation template.</p>
    #            <p>The default value is 32 MB.</p>
    #   @return [Integer]
    # @!attribute csv_null_value
    #   <p>An optional parameter that specifies how DMS treats null values. While handling the
    #            null value, you can use this parameter to pass a user-defined string as null when writing
    #            to the target. For example, when target columns are nullable, you can use this option to
    #            differentiate between the empty string value and the null value. So, if you set this
    #            parameter value to the empty string ("" or ''), DMS treats the empty string as the null
    #            value instead of <code>NULL</code>.</p>
    #            <p>The default value is <code>NULL</code>. Valid values include any valid string.</p>
    #   @return [String]
    # @!attribute ignore_header_rows
    #   <p>When this value is set to 1, DMS ignores the first row header in a .csv file. A value
    #            of 1 turns on the feature; a value of 0 turns off the feature.</p>
    #            <p>The default is 0.</p>
    #   @return [Integer]
    # @!attribute max_file_size
    #   <p>A value that specifies the maximum size (in KB) of any .csv file to be created while
    #            migrating to an S3 target during full load.</p>
    #            <p>The default value is 1,048,576 KB (1 GB). Valid values include 1 to 1,048,576.</p>
    #   @return [Integer]
    # @!attribute rfc4180
    #   <p>For an S3 source, when this value is set to <code>true</code> or <code>y</code>, each
    #            leading double quotation mark has to be followed by an ending double quotation mark. This
    #            formatting complies with RFC 4180. When this value is set to <code>false</code> or
    #               <code>n</code>, string literals are copied to the target as is. In this case, a
    #            delimiter (row or column) signals the end of the field. Thus, you can't use a
    #            delimiter as part of the string, because it signals the end of the value.</p>
    #            <p>For an S3 target, an optional parameter used to set behavior to comply with RFC 4180 for
    #            data migrated to Amazon S3 using .csv file format only. When this value is set to
    #               <code>true</code> or <code>y</code> using Amazon S3 as a target, if the data has
    #            quotation marks or newline characters in it, DMS encloses the entire column with an
    #            additional pair of double quotation marks ("). Every quotation mark within the data is
    #            repeated twice.</p>
    #            <p>The default value is <code>true</code>. Valid values include <code>true</code>,
    #               <code>false</code>, <code>y</code>, and <code>n</code>.</p>
    #   @return [Boolean]
    # @!attribute date_partition_timezone
    #   <p>When creating an S3 target endpoint, set <code>DatePartitionTimezone</code> to convert the current UTC time into a specified time zone. The conversion occurs when a date partition folder is created and a CDC filename is generated. The time zone format is Area/Location. Use this parameter when <code>DatePartitionedEnabled</code> is set to true, as shown in the following example:</p>
    #            <p>
    #               <code>s3-settings='{"DatePartitionEnabled": true, "DatePartitionSequence": "YYYYMMDDHH", "DatePartitionDelimiter": "SLASH", "DatePartitionTimezone":"Asia/Seoul", "BucketName": "dms-nattarat-test"}'</code>
    #            </p>
    #   @return [String]
    # @!attribute add_trailing_padding_character
    #   <p>Use the S3 target endpoint setting <code>AddTrailingPaddingCharacter</code> to add
    #            padding on string data. The default value is <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute expected_bucket_owner
    #   <p>To specify a bucket owner and prevent sniping, you can use the
    #               <code>ExpectedBucketOwner</code> endpoint setting. </p>
    #            <p>Example: <code>--s3-settings='{"ExpectedBucketOwner":
    #                  "<i>AWS_Account_ID</i>"}'</code>
    #            </p>
    #            <p>When you make a request to test a connection or perform a migration, S3 checks the
    #            account ID of the bucket owner against the specified parameter.</p>
    #   @return [String]
    # @!attribute glue_catalog_generation
    #   <p>When true, allows Glue to catalog your S3 bucket. Creating an Glue catalog lets you
    #            use Athena to query your data.</p>
    #   @return [Boolean]
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
      :rfc4180,
      :date_partition_timezone,
      :add_trailing_padding_character,
      :expected_bucket_owner,
      :glue_catalog_generation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines a schema conversion application.</p>
    # @!attribute s3_bucket_path
    #   <p>The path for the Amazon S3 bucket that the application uses for exporting assessment reports.</p>
    #   @return [String]
    # @!attribute s3_bucket_role_arn
    #   <p>The ARN for the role the application uses to access its Amazon S3 bucket.</p>
    #   @return [String]
    class SCApplicationAttributes < Struct.new(
      :s3_bucket_path,
      :s3_bucket_role_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The SNS topic is invalid.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class SNSInvalidTopicFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You are not authorized for the SNS subscription.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class SNSNoAuthorizationFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SafeguardPolicy
      RELY_ON_SQL_SERVER_REPLICATION_AGENT = 'rely-on-sql-server-replication-agent'
      EXCLUSIVE_AUTOMATIC_TRUNCATION = 'exclusive-automatic-truncation'
      SHARED_AUTOMATIC_TRUNCATION = 'shared-automatic-truncation'
    end

    # <p>Provides information about a schema conversion action.</p>
    # @!attribute status
    #   <p>The schema conversion action status.</p>
    #   @return [String]
    # @!attribute request_identifier
    #   <p>The identifier for the schema conversion action.</p>
    #   @return [String]
    # @!attribute migration_project_arn
    #   <p>The migration project ARN.</p>
    #   @return [String]
    # @!attribute error
    #   <p>Provides error information about a project.</p>
    #   @return [Types::ErrorDetails]
    # @!attribute export_sql_details
    #   <p>Provides information about a metadata model assessment exported to SQL.</p>
    #   @return [Types::ExportSqlDetails]
    class SchemaConversionRequest < Struct.new(
      :status,
      :request_identifier,
      :migration_project_arn,
      :error,
      :export_sql_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    # @!attribute code_line_count
    #   <p>The number of lines of code in a schema in a Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    # @!attribute code_size
    #   <p>The size level of the code in a schema in a Fleet Advisor collector inventory.</p>
    #   @return [Integer]
    # @!attribute complexity
    #   <p>The complexity level of the code in a schema in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute server
    #   <p>The database server for a schema in a Fleet Advisor collector inventory.</p>
    #   @return [Types::ServerShortInfoResponse]
    # @!attribute database_instance
    #   <p>The database for a schema in a Fleet Advisor collector inventory.</p>
    #   @return [Types::DatabaseShortInfoResponse]
    # @!attribute schema_id
    #   <p>The ID of a schema in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of a schema in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute original_schema
    #   <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    #   @return [Types::SchemaShortInfoResponse]
    # @!attribute similarity
    #   <p>The similarity value for a schema in a Fleet Advisor collector inventory. A higher similarity value
    #               indicates that a schema is likely to be a duplicate.</p>
    #   @return [Float]
    class SchemaResponse < Struct.new(
      :code_line_count,
      :code_size,
      :complexity,
      :server,
      :database_instance,
      :schema_id,
      :schema_name,
      :original_schema,
      :similarity,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a schema in a Fleet Advisor collector inventory.</p>
    # @!attribute schema_id
    #   <p>The ID of a schema in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute schema_name
    #   <p>The name of a schema in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_id
    #   <p>The ID of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_name
    #   <p>The name of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute database_ip_address
    #   <p>The IP address of a database in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    class SchemaShortInfoResponse < Struct.new(
      :schema_id,
      :schema_name,
      :database_id,
      :database_name,
      :database_ip_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Describes a server in a Fleet Advisor collector inventory.</p>
    # @!attribute server_id
    #   <p>The ID of a server in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The IP address of a server in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The name address of a server in a Fleet Advisor collector inventory.</p>
    #   @return [String]
    class ServerShortInfoResponse < Struct.new(
      :server_id,
      :ip_address,
      :server_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines settings for a source data provider for a data migration.</p>
    # @!attribute cdc_start_position
    #   <p>The change data capture (CDC) start position for the source data provider.</p>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>The change data capture (CDC) start time for the source data provider.</p>
    #   @return [Time]
    # @!attribute cdc_stop_time
    #   <p>The change data capture (CDC) stop time for the source data provider.</p>
    #   @return [Time]
    # @!attribute slot_name
    #   <p>The name of the replication slot on the source data provider. This attribute is only
    #            valid for a PostgreSQL or Aurora PostgreSQL source.</p>
    #   @return [String]
    class SourceDataSetting < Struct.new(
      :cdc_start_position,
      :cdc_start_time,
      :cdc_stop_time,
      :slot_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceType
      replication_instance = 'replication-instance'
    end

    module SqlServerAuthenticationMethod
      Password = 'password'
      Kerberos = 'kerberos'
    end

    module SslSecurityProtocolValue
      PLAINTEXT = 'plaintext'
      SSL_ENCRYPTION = 'ssl-encryption'
    end

    # @!attribute data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to start.</p>
    #   @return [String]
    # @!attribute start_type
    #   <p>Specifies the start type for the data migration. Valid values include
    #               <code>start-replication</code>, <code>reload-target</code>, and
    #               <code>resume-processing</code>.</p>
    #   @return [String]
    class StartDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      :start_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration
    #   <p>The data migration that DMS started.</p>
    #   @return [Types::DataMigration]
    class StartDataMigrationResponse < Struct.new(
      :data_migration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    class StartExtensionPackAssociationMessage < Struct.new(
      :migration_project_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the request operation.</p>
    #   @return [String]
    class StartExtensionPackAssociationResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to assess.</p>
    #   @return [String]
    class StartMetadataModelAssessmentMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the assessment operation.</p>
    #   @return [String]
    class StartMetadataModelAssessmentResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to convert.</p>
    #   @return [String]
    class StartMetadataModelConversionMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the conversion operation.</p>
    #   @return [String]
    class StartMetadataModelConversionResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to export.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>Whether to export the metadata model from the source or the target.</p>
    #   @return [String]
    # @!attribute file_name
    #   <p>The name of the model file to create in the Amazon S3 bucket.</p>
    #   @return [String]
    class StartMetadataModelExportAsScriptMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :origin,
      :file_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the export operation.</p>
    #   @return [String]
    class StartMetadataModelExportAsScriptResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to export.</p>
    #   @return [String]
    # @!attribute overwrite_extension_pack
    #   <p>Whether to overwrite the migration project extension pack. An extension pack is an add-on module 
    #            that emulates functions present in a source database that are required when converting objects 
    #            to the target database.</p>
    #   @return [Boolean]
    class StartMetadataModelExportToTargetMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :overwrite_extension_pack,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the export operation.</p>
    #   @return [String]
    class StartMetadataModelExportToTargetResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute migration_project_identifier
    #   <p>The migration project name or Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute selection_rules
    #   <p>A value that specifies the database objects to import.</p>
    #   @return [String]
    # @!attribute origin
    #   <p>Whether to load metadata to the source or target database.</p>
    #   @return [String]
    # @!attribute refresh
    #   <p>If <code>true</code>, DMS loads metadata for the specified objects from the source database.</p>
    #   @return [Boolean]
    class StartMetadataModelImportMessage < Struct.new(
      :migration_project_identifier,
      :selection_rules,
      :origin,
      :refresh,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute request_identifier
    #   <p>The identifier for the import operation.</p>
    #   @return [String]
    class StartMetadataModelImportResponse < Struct.new(
      :request_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute database_id
    #   <p>The identifier of the source database to analyze and provide recommendations
    #               for.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The settings in JSON format that Fleet Advisor uses to determine target engine
    #               recommendations. These parameters include target instance sizing and availability and
    #               durability settings. For target instance sizing, Fleet Advisor supports the following
    #               two options: total capacity and resource utilization. For availability and durability,
    #               Fleet Advisor supports the following two options: production (Multi-AZ deployments) and
    #               Dev/Test (Single-AZ deployments).</p>
    #   @return [Types::RecommendationSettings]
    class StartRecommendationsRequest < Struct.new(
      :database_id,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about the source database to analyze and provide target
    #             recommendations according to the specified requirements.</p>
    # @!attribute database_id
    #   <p>The identifier of the source database.</p>
    #   @return [String]
    # @!attribute settings
    #   <p>The required target engine settings.</p>
    #   @return [Types::RecommendationSettings]
    class StartRecommendationsRequestEntry < Struct.new(
      :database_id,
      :settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication for which to start replication.</p>
    #   @return [String]
    # @!attribute start_replication_type
    #   <p>The replication type.</p>
    #            <p>When the replication type is <code>full-load</code> or <code>full-load-and-cdc</code>,
    #            the only valid value for the first run of the replication is
    #            <code>start-replication</code>. This option will start the replication.</p>
    #            <p>You can also use <a>ReloadTables</a> to reload specific tables that failed
    #            during replication instead of restarting the replication.</p>
    #            <p>The <code>resume-processing</code> option isn't applicable for a full-load replication,
    #            because you can't resume partially loaded tables during the full load phase.</p>
    #            <p>For a <code>full-load-and-cdc</code> replication, DMS migrates table data, and then
    #            applies data changes that occur on the source. To load all the tables again, and start
    #            capturing source changes, use <code>reload-target</code>. Otherwise use
    #               <code>resume-processing</code>, to replicate the changes from the last stop
    #            position.</p>
    #   @return [String]
    # @!attribute premigration_assessment_settings
    #   <p>User-defined settings for the premigration assessment. The possible values are:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ResultLocationFolder</code>: The folder within an Amazon S3 bucket where
    #                  you want DMS to store the results of this assessment run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResultEncryptionMode</code>: The supported values are <code>SSE_KMS</code>
    #                  and <code>SSE_S3</code>. If these values are not provided, then the files are not
    #                  encrypted at rest. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.S3.html#CHAP_Target.S3.KMSKeys">Creating
    #                     Amazon Web Services KMS keys to encrypt Amazon S3 target objects</a>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ResultKmsKeyArn</code>: The ARN of a customer KMS encryption key that you
    #                  specify when you set <code>ResultEncryptionMode</code> to
    #                  <code>SSE_KMS</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>IncludeOnly</code>: A space-separated list of names for specific individual
    #                  assessments that you want to include. These names come from the default list of
    #                  individual assessments that Database Migration Service supports for the associated migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>Exclude</code>: A space-separated list of names for specific individual
    #                  assessments that you want to exclude. These names come from the default list of
    #                  individual assessments that Database Migration Service supports for the associated migration.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FailOnAssessmentFailure</code>: A configurable setting you can set to
    #                     <code>true</code> (the default setting) or <code>false</code>. Use this setting to
    #                  to stop the replication from starting automatically if the assessment fails. This can
    #                  help you evaluate the issue that is preventing the replication from running
    #                  successfully.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #               <code>CdcStartTime</code> or <code>CdcStartPosition</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #               <code>CdcStartPosition</code> or <code>CdcStartTime</code> to specify when you want a
    #            CDC operation to start. Specifying both values results in an error.</p>
    #            <p>The value can be in date, checkpoint, or LSN/SCN format.</p>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #   @return [String]
    class StartReplicationMessage < Struct.new(
      :replication_config_arn,
      :start_replication_type,
      :premigration_assessment_settings,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StartReplicationMigrationTypeValue
      RELOAD_TARGET = 'reload-target'
      RESUME_PROCESSING = 'resume-processing'
      START_REPLICATION = 'start-replication'
    end

    # <p></p>
    # @!attribute replication
    #   <p>The replication that DMS started.</p>
    #   @return [Types::Replication]
    class StartReplicationResponse < Struct.new(
      :replication,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p> The Amazon Resource Name (ARN) of the replication task. </p>
    #   @return [String]
    class StartReplicationTaskAssessmentMessage < Struct.new(
      :replication_task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p> The assessed replication task. </p>
    #   @return [Types::ReplicationTask]
    class StartReplicationTaskAssessmentResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>Amazon Resource Name (ARN) of the migration task associated with the premigration
    #            assessment run that you want to start.</p>
    #   @return [String]
    # @!attribute service_access_role_arn
    #   <p>ARN of the service role needed to start the assessment run. The role must allow the
    #               <code>iam:PassRole</code> action.</p>
    #   @return [String]
    # @!attribute result_location_bucket
    #   <p>Amazon S3 bucket where you want DMS to store the results of this assessment
    #            run.</p>
    #   @return [String]
    # @!attribute result_location_folder
    #   <p>Folder within an Amazon S3 bucket where you want DMS to store the results of this
    #            assessment run.</p>
    #   @return [String]
    # @!attribute result_encryption_mode
    #   <p>Encryption mode that you can specify to encrypt the results of this assessment run. If
    #            you don't specify this request parameter, DMS stores the assessment run results
    #            without encryption. You can specify one of the options following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>"SSE_S3"</code> – The server-side encryption provided as a default by
    #                  Amazon S3.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>"SSE_KMS"</code> – Key Management Service (KMS) encryption. This encryption can
    #                  use either a custom KMS encryption key that you specify or the default KMS encryption
    #                  key that DMS provides.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute result_kms_key_arn
    #   <p>ARN of a custom KMS encryption key that you specify when you set
    #               <code>ResultEncryptionMode</code> to <code>"SSE_KMS</code>".</p>
    #   @return [String]
    # @!attribute assessment_run_name
    #   <p>Unique name to identify the assessment run.</p>
    #   @return [String]
    # @!attribute include_only
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            include. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>IncludeOnly</code> if you also set a value for
    #                  <code>Exclude</code> in the API operation.
    #               </p>
    #               <p>To identify the names of the default individual assessments that DMS supports for
    #               the associated migration task, run the
    #                  <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #                  <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute exclude
    #   <p>Space-separated list of names for specific individual assessments that you want to
    #            exclude. These names come from the default list of individual assessments that DMS
    #            supports for the associated migration task. This task is specified by
    #               <code>ReplicationTaskArn</code>.</p>
    #            <note>
    #               <p>You can't set a value for <code>Exclude</code> if you also set a value for
    #                  <code>IncludeOnly</code> in the API operation.</p>
    #               <p>To identify the names of the default individual assessments that DMS supports for
    #               the associated migration task, run the
    #                  <code>DescribeApplicableIndividualAssessments</code> operation using its own
    #                  <code>ReplicationTaskArn</code> request parameter.</p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>One or more tags to be assigned to the premigration assessment run that you want to
    #            start.</p>
    #   @return [Array<Types::Tag>]
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
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_assessment_run
    #   <p>The premigration assessment run that was started.</p>
    #   @return [Types::ReplicationTaskAssessmentRun]
    class StartReplicationTaskAssessmentRunResponse < Struct.new(
      :replication_task_assessment_run,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name (ARN) of the replication task to be started.</p>
    #   @return [String]
    # @!attribute start_replication_task_type
    #   <p>The type of replication task to start.</p>
    #            <p>
    #               <code>start-replication</code> is the only valid action that can be used for the first time a task with the migration type of <code>full-load</code>full-load, <code>full-load-and-cdc</code> or <code>cdc</code> is run. Any other action used for the first time on a given task, such as <code>resume-processing</code> and reload-target will result in data errors.</p>
    #            <p>You can also use <a>ReloadTables</a> to reload specific tables that failed during migration instead of restarting the task.</p>
    #            <p>For a <code>full-load</code> task, the resume-processing option will reload any tables that were partially loaded or not yet loaded during the full load phase.</p>
    #            <p>For a <code>full-load-and-cdc</code> task, DMS migrates table data, and then applies data changes that occur on the source. To load all the tables again, and start capturing source changes, use <code>reload-target</code>. Otherwise use <code>resume-processing</code>, to replicate the changes from the last stop position.</p>
    #            <p>For a <code>cdc</code> only task, to start from a specific position, you must use start-replication and also specify the start position. Check the source endpoint DMS documentation for any limitations. For example, not all sources support starting from a time.</p>
    #            <note>
    #               <p>
    #                  <code>resume-processing</code> is only available for previously executed tasks.</p>
    #            </note>
    #   @return [String]
    # @!attribute cdc_start_time
    #   <p>Indicates the start time for a change data capture (CDC) operation. Use either
    #            CdcStartTime or CdcStartPosition to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p>Timestamp Example: --cdc-start-time “2018-03-08T12:12:12”</p>
    #   @return [Time]
    # @!attribute cdc_start_position
    #   <p>Indicates when you want a change data capture (CDC) operation to start. Use either
    #            CdcStartPosition or CdcStartTime to specify when you want a CDC operation to start.
    #            Specifying both values results in an error.</p>
    #            <p> The value can be in date, checkpoint, or LSN/SCN format.</p>
    #            <p>Date Example: --cdc-start-position “2018-03-08T12:12:12”</p>
    #            <p>Checkpoint Example: --cdc-start-position
    #            "checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"</p>
    #            <p>LSN Example: --cdc-start-position “mysql-bin-changelog.000024:373”</p>
    #            <note>
    #               <p>When you use this task setting with a source PostgreSQL database, a logical
    #               replication slot should already be created and associated with the source endpoint. You
    #               can verify this by setting the <code>slotName</code> extra connection attribute to the
    #               name of this logical replication slot. For more information, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib">Extra Connection Attributes When Using PostgreSQL as a Source
    #                  for DMS</a>.</p>
    #            </note>
    #   @return [String]
    # @!attribute cdc_stop_position
    #   <p>Indicates when you want a change data capture (CDC) operation to stop. The value can be
    #            either server time or commit time.</p>
    #            <p>Server time example: --cdc-stop-position “server_time:2018-02-09T12:12:12”</p>
    #            <p>Commit time example: --cdc-stop-position “commit_time:2018-02-09T12:12:12“</p>
    #   @return [String]
    class StartReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      :start_replication_task_type,
      :cdc_start_time,
      :cdc_start_position,
      :cdc_stop_position,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The replication task started.</p>
    #   @return [Types::ReplicationTask]
    class StartReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module StartReplicationTaskTypeValue
      START_REPLICATION = 'start-replication'
      RESUME_PROCESSING = 'resume-processing'
      RELOAD_TARGET = 'reload-target'
    end

    # @!attribute data_migration_identifier
    #   <p>The identifier (name or ARN) of the data migration to stop.</p>
    #   @return [String]
    class StopDataMigrationMessage < Struct.new(
      :data_migration_identifier,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute data_migration
    #   <p>The data migration that DMS stopped.</p>
    #   @return [Types::DataMigration]
    class StopDataMigrationResponse < Struct.new(
      :data_migration,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_config_arn
    #   <p>The Amazon Resource Name of the replication to stop.</p>
    #   @return [String]
    class StopReplicationMessage < Struct.new(
      :replication_config_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute replication
    #   <p>The replication that DMS stopped.</p>
    #   @return [Types::Replication]
    class StopReplicationResponse < Struct.new(
      :replication,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task_arn
    #   <p>The Amazon Resource Name(ARN) of the replication task to be stopped.</p>
    #   @return [String]
    class StopReplicationTaskMessage < Struct.new(
      :replication_task_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute replication_task
    #   <p>The replication task stopped.</p>
    #   @return [Types::ReplicationTask]
    class StopReplicationTaskResponse < Struct.new(
      :replication_task,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The storage quota has been exceeded.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class StorageQuotaExceededFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>In response to a request by the <code>DescribeReplicationSubnetGroups</code> operation,
    #          this object identifies a subnet by its given Availability Zone, subnet identifier, and
    #          status.</p>
    # @!attribute subnet_identifier
    #   <p>The subnet identifier.</p>
    #   @return [String]
    # @!attribute subnet_availability_zone
    #   <p>The Availability Zone of the subnet.</p>
    #   @return [Types::AvailabilityZone]
    # @!attribute subnet_status
    #   <p>The status of the subnet.</p>
    #   @return [String]
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The specified subnet is already in use.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class SubnetAlreadyInUse < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information about types of supported endpoints in response to a request by the
    #             <code>DescribeEndpointTypes</code> operation. This information includes the type of
    #          endpoint, the database engine name, and whether change data capture (CDC) is
    #          supported.</p>
    # @!attribute engine_name
    #   <p>The database engine name. Valid values, depending on the EndpointType, include
    #               <code>"mysql"</code>, <code>"oracle"</code>, <code>"postgres"</code>,
    #               <code>"mariadb"</code>, <code>"aurora"</code>, <code>"aurora-postgresql"</code>,
    #               <code>"redshift"</code>, <code>"s3"</code>, <code>"db2"</code>, <code>"db2-zos"</code>,
    #               <code>"azuredb"</code>, <code>"sybase"</code>, <code>"dynamodb"</code>,
    #               <code>"mongodb"</code>, <code>"kinesis"</code>, <code>"kafka"</code>,
    #               <code>"elasticsearch"</code>, <code>"documentdb"</code>, <code>"sqlserver"</code>,
    #               <code>"neptune"</code>, and <code>"babelfish"</code>.</p>
    #   @return [String]
    # @!attribute supports_cdc
    #   <p>Indicates if change data capture (CDC) is supported.</p>
    #   @return [Boolean]
    # @!attribute endpoint_type
    #   <p>The type of endpoint. Valid values are <code>source</code> and
    #            <code>target</code>.</p>
    #   @return [String]
    # @!attribute replication_instance_engine_minimum_version
    #   <p>The earliest DMS engine version that supports this endpoint engine. Note that endpoint
    #            engines released with DMS versions earlier than 3.1.1 do not return a value for this
    #            parameter.</p>
    #   @return [String]
    # @!attribute engine_display_name
    #   <p>The expanded name for the engine name. For example, if the <code>EngineName</code>
    #            parameter is "aurora", this value would be "Amazon Aurora MySQL".</p>
    #   @return [String]
    class SupportedEndpointType < Struct.new(
      :engine_name,
      :supports_cdc,
      :endpoint_type,
      :replication_instance_engine_minimum_version,
      :engine_display_name,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:supports_cdc] = false unless options.key?(:supports_cdc)
        super
      end
    end

    # <p>Provides information that defines a SAP ASE endpoint.</p>
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute password
    #   <p>Endpoint connection password.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Endpoint TCP port. The default is 5000.</p>
    #   @return [Integer]
    # @!attribute server_name
    #   <p>Fully qualified domain name of the endpoint.</p>
    #   @return [String]
    # @!attribute username
    #   <p>Endpoint connection user name.</p>
    #   @return [String]
    # @!attribute secrets_manager_access_role_arn
    #   <p>The full Amazon Resource Name (ARN) of the IAM role that specifies DMS as the trusted
    #            entity and grants the required permissions to access the value in
    #               <code>SecretsManagerSecret</code>. The role must allow the <code>iam:PassRole</code>
    #            action. <code>SecretsManagerSecret</code> has the value of the Amazon Web Services Secrets Manager secret that
    #            allows access to the SAP ASE endpoint.</p>
    #            <note>
    #               <p>You can specify one of two sets of values for these permissions. You can specify the
    #               values for this setting and <code>SecretsManagerSecretId</code>. Or you can specify
    #               clear-text values for <code>UserName</code>, <code>Password</code>,
    #                  <code>ServerName</code>, and <code>Port</code>. You can't specify both. For more
    #               information on creating this <code>SecretsManagerSecret</code> and the
    #                  <code>SecretsManagerAccessRoleArn</code> and <code>SecretsManagerSecretId</code>
    #               required to access it, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Security.html#security-iam-secretsmanager">Using secrets to access Database Migration Service resources</a> in the
    #                  <i>Database Migration Service User Guide</i>.</p>
    #            </note>
    #   @return [String]
    # @!attribute secrets_manager_secret_id
    #   <p>The full ARN, partial ARN, or friendly name of the <code>SecretsManagerSecret</code>
    #            that contains the SAP SAE endpoint connection details.</p>
    #   @return [String]
    class SybaseSettings < Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :username,
      :secrets_manager_access_role_arn,
      :secrets_manager_secret_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TablePreparationMode
      DO_NOTHING = 'do-nothing'
      TRUNCATE = 'truncate'
      DROP_TABLES_ON_TARGET = 'drop-tables-on-target'
    end

    # <p>Provides a collection of table statistics in response to a request by the
    #             <code>DescribeTableStatistics</code> operation.</p>
    # @!attribute schema_name
    #   <p>The schema name.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The name of the table.</p>
    #   @return [String]
    # @!attribute inserts
    #   <p>The number of insert actions performed on a table.</p>
    #   @return [Integer]
    # @!attribute deletes
    #   <p>The number of delete actions performed on a table.</p>
    #   @return [Integer]
    # @!attribute updates
    #   <p>The number of update actions performed on a table.</p>
    #   @return [Integer]
    # @!attribute ddls
    #   <p>The data definition language (DDL) used to build and modify the structure of your
    #            tables.</p>
    #   @return [Integer]
    # @!attribute applied_inserts
    #   <p>The number of insert actions applied on a target table.</p>
    #   @return [Integer]
    # @!attribute applied_deletes
    #   <p>The number of delete actions applied on a target table.</p>
    #   @return [Integer]
    # @!attribute applied_updates
    #   <p>The number of update actions applied on a target table.</p>
    #   @return [Integer]
    # @!attribute applied_ddls
    #   <p>The number of data definition language (DDL) statements used to build and modify the
    #            structure of your tables applied on the target.</p>
    #   @return [Integer]
    # @!attribute full_load_rows
    #   <p>The number of rows added during the full load operation.</p>
    #   @return [Integer]
    # @!attribute full_load_condtnl_chk_failed_rows
    #   <p>The number of rows that failed conditional checks during the full load operation (valid
    #            only for migrations where DynamoDB is the target).</p>
    #   @return [Integer]
    # @!attribute full_load_error_rows
    #   <p>The number of rows that failed to load during the full load operation (valid only for
    #            migrations where DynamoDB is the target).</p>
    #   @return [Integer]
    # @!attribute full_load_start_time
    #   <p>The time when the full load operation started.</p>
    #   @return [Time]
    # @!attribute full_load_end_time
    #   <p>The time when the full load operation completed.</p>
    #   @return [Time]
    # @!attribute full_load_reloaded
    #   <p>A value that indicates if the table was reloaded (<code>true</code>) or loaded as part
    #            of a new full load operation (<code>false</code>).</p>
    #   @return [Boolean]
    # @!attribute last_update_time
    #   <p>The last time a table was updated.</p>
    #   @return [Time]
    # @!attribute table_state
    #   <p>The state of the tables described.</p>
    #            <p>Valid states: Table does not exist | Before load | Full load | Table completed | Table
    #            cancelled | Table error | Table is being reloaded</p>
    #   @return [String]
    # @!attribute validation_pending_records
    #   <p>The number of records that have yet to be validated.</p>
    #   @return [Integer]
    # @!attribute validation_failed_records
    #   <p>The number of records that failed validation.</p>
    #   @return [Integer]
    # @!attribute validation_suspended_records
    #   <p>The number of records that couldn't be validated.</p>
    #   @return [Integer]
    # @!attribute validation_state
    #   <p>The validation state of the table.</p>
    #            <p>This parameter can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Not enabled – Validation isn't enabled for the table in the migration
    #                  task.</p>
    #               </li>
    #               <li>
    #                  <p>Pending records – Some records in the table are waiting for
    #                  validation.</p>
    #               </li>
    #               <li>
    #                  <p>Mismatched records – Some records in the table don't match between the
    #                  source and target.</p>
    #               </li>
    #               <li>
    #                  <p>Suspended records – Some records in the table couldn't be
    #                  validated.</p>
    #               </li>
    #               <li>
    #                  <p>No primary key –The table couldn't be validated because it has no
    #                  primary key.</p>
    #               </li>
    #               <li>
    #                  <p>Table error – The table wasn't validated because it's in an error
    #                  state and some data wasn't migrated.</p>
    #               </li>
    #               <li>
    #                  <p>Validated – All rows in the table are validated. If the table is updated,
    #                  the status can change from Validated.</p>
    #               </li>
    #               <li>
    #                  <p>Error – The table couldn't be validated because of an unexpected
    #                  error.</p>
    #               </li>
    #               <li>
    #                  <p>Pending validation – The table is waiting validation.</p>
    #               </li>
    #               <li>
    #                  <p>Preparing table – Preparing the table enabled in the migration task for
    #                  validation.</p>
    #               </li>
    #               <li>
    #                  <p>Pending revalidation – All rows in the table are pending validation after
    #                  the table was updated.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute validation_state_details
    #   <p>Additional details about the state of validation.</p>
    #   @return [String]
    # @!attribute resync_state
    #   <p>Records the current state of table resynchronization in the migration task.</p>
    #            <p>This parameter can have the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>Not enabled – Resync is not enabled for the table in the migration task.</p>
    #               </li>
    #               <li>
    #                  <p>Pending – The tables are waiting for resync.</p>
    #               </li>
    #               <li>
    #                  <p>In progress – Resync in progress for some records in the table.</p>
    #               </li>
    #               <li>
    #                  <p>No primary key – The table could not be resynced because it has no primary key.</p>
    #               </li>
    #               <li>
    #                  <p>Last resync at: <code>date/time</code> – Resync session is finished at time. Time provided in UTC format.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute resync_rows_attempted
    #   <p>Records the total number of mismatched data rows where the system attempted to apply
    #            fixes in the target database.</p>
    #   @return [Integer]
    # @!attribute resync_rows_succeeded
    #   <p>Records the total number of mismatched data rows where fixes were successfully applied in the target database.</p>
    #   @return [Integer]
    # @!attribute resync_rows_failed
    #   <p>Records the total number of mismatched data rows where fix attempts failed in the target
    #            database.</p>
    #   @return [Integer]
    # @!attribute resync_progress
    #   <p>Calculates the percentage of failed validations that were successfully resynced to the system.</p>
    #   @return [Float]
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
      :resync_progress,
      keyword_init: true)
      include Smithy::Schema::Structure

      def initialize(options = {})
        options[:inserts] = 0 unless options.key?(:inserts)
        options[:deletes] = 0 unless options.key?(:deletes)
        options[:updates] = 0 unless options.key?(:updates)
        options[:ddls] = 0 unless options.key?(:ddls)
        options[:full_load_rows] = 0 unless options.key?(:full_load_rows)
        options[:full_load_condtnl_chk_failed_rows] = 0 unless options.key?(:full_load_condtnl_chk_failed_rows)
        options[:full_load_error_rows] = 0 unless options.key?(:full_load_error_rows)
        options[:validation_pending_records] = 0 unless options.key?(:validation_pending_records)
        options[:validation_failed_records] = 0 unless options.key?(:validation_failed_records)
        options[:validation_suspended_records] = 0 unless options.key?(:validation_suspended_records)
        super
      end
    end

    # <p>Provides the name of the schema and table to be reloaded.</p>
    # @!attribute schema_name
    #   <p>The schema name of the table to be reloaded.</p>
    #   @return [String]
    # @!attribute table_name
    #   <p>The table name of the table to be reloaded.</p>
    #   @return [String]
    class TableToReload < Struct.new(
      :schema_name,
      :table_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A user-defined key-value pair that describes metadata added to an DMS resource and
    #          that is used by operations such as the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <code>AddTagsToResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>ListTagsForResource</code>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <code>RemoveTagsFromResource</code>
    #                </p>
    #             </li>
    #          </ul>
    # @!attribute key
    #   <p>A key is the required name of the tag. The string value can be 1-128 Unicode characters
    #            in length and can't be prefixed with "aws:" or "dms:". The string can only contain
    #            only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-' (Java
    #            regular expressions: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    # @!attribute value
    #   <p>A value is the optional value of the tag. The string value can be 1-256 Unicode
    #            characters in length and can't be prefixed with "aws:" or "dms:". The string can only
    #            contain only the set of Unicode letters, digits, white-space, '_', '.', '/', '=', '+', '-'
    #            (Java regular expressions: "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-]*)$").</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the resource for which
    #            the tag is created.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines settings for a target data provider for a data migration.</p>
    # @!attribute table_preparation_mode
    #   <p>This setting determines how DMS handles the target tables before starting a data
    #            migration, either by leaving them untouched, dropping and recreating them, or truncating
    #            the existing data in the target tables.</p>
    #   @return [String]
    class TargetDataSetting < Struct.new(
      :table_preparation_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TargetDbType
      SPECIFIC_DATABASE = 'specific-database'
      MULTIPLE_DATABASES = 'multiple-databases'
    end

    # <p></p>
    # @!attribute replication_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the replication instance.</p>
    #   @return [String]
    # @!attribute endpoint_arn
    #   <p>The Amazon Resource Name (ARN) string that uniquely identifies the endpoint.</p>
    #   @return [String]
    class TestConnectionMessage < Struct.new(
      :replication_instance_arn,
      :endpoint_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute connection
    #   <p>The connection tested.</p>
    #   @return [Types::Connection]
    class TestConnectionResponse < Struct.new(
      :connection,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Provides information that defines an Amazon Timestream endpoint.</p>
    # @!attribute database_name
    #   <p>Database name for the endpoint.</p>
    #   @return [String]
    # @!attribute memory_duration
    #   <p>Set this attribute to specify the length of time to store all of the tables in memory
    #            that are migrated into Amazon Timestream from the source database. Time is measured in
    #            units of hours. When Timestream data comes in, it first resides in memory for the specified
    #            duration, which allows quick access to it.</p>
    #   @return [Integer]
    # @!attribute magnetic_duration
    #   <p>Set this attribute to specify the default magnetic duration applied to the Amazon
    #            Timestream tables in days. This is the number of days that records remain in magnetic store
    #            before being discarded. For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html">Storage</a> in the <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/">Amazon Timestream Developer
    #               Guide</a>.</p>
    #   @return [Integer]
    # @!attribute cdc_inserts_and_updates
    #   <p>Set this attribute to <code>true</code> to specify that DMS only applies inserts and
    #            updates, and not deletes. Amazon Timestream does not allow deleting records, so if this
    #            value is <code>false</code>, DMS nulls out the corresponding record in the Timestream
    #            database rather than deleting it.</p>
    #   @return [Boolean]
    # @!attribute enable_magnetic_store_writes
    #   <p>Set this attribute to <code>true</code> to enable memory store writes. When this value
    #            is <code>false</code>, DMS does not write records that are older in days than the value
    #            specified in <code>MagneticDuration</code>, because Amazon Timestream does not allow memory
    #            writes by default. For more information, see <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/storage.html">Storage</a> in the <a href="https://docs.aws.amazon.com/timestream/latest/developerguide/">Amazon Timestream Developer
    #               Guide</a>.</p>
    #   @return [Boolean]
    class TimestreamSettings < Struct.new(
      :database_name,
      :memory_duration,
      :magnetic_duration,
      :cdc_inserts_and_updates,
      :enable_magnetic_store_writes,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module TlogAccessMode
      BackupOnly = 'BackupOnly'
      PreferBackup = 'PreferBackup'
      PreferTlog = 'PreferTlog'
      TlogOnly = 'TlogOnly'
    end

    # <p></p>
    # @!attribute force_move
    #   <p>When set to true, this operation migrates DMS subscriptions for Amazon
    #            SNS notifications no matter what your replication instance version is. If not set or set to
    #            false, this operation runs only when all your replication instances are from DMS version 3.4.5 or higher. </p>
    #   @return [Boolean]
    class UpdateSubscriptionsToEventBridgeMessage < Struct.new(
      :force_move,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p></p>
    # @!attribute result
    #   <p>A string that indicates how many event subscriptions were migrated and how many remain
    #            to be migrated.</p>
    #   @return [String]
    class UpdateSubscriptionsToEventBridgeResponse < Struct.new(
      :result,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>An upgrade dependency is preventing the database migration.</p>
    # @!attribute message
    #   <p></p>
    #   @return [String]
    class UpgradeDependencyFailureFault < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module VersionStatus
      UP_TO_DATE = 'UP_TO_DATE'
      OUTDATED = 'OUTDATED'
      UNSUPPORTED = 'UNSUPPORTED'
    end

    # <p>Describes the status of a security group associated with the virtual private cloud (VPC)
    #          hosting your replication and DB instances.</p>
    # @!attribute vpc_security_group_id
    #   <p>The VPC security group ID.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the VPC security group.</p>
    #   @return [String]
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
