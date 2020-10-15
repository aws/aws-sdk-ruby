# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DatabaseMigrationService
  module Types

    # AWS DMS was denied access to the endpoint. Check that the role is
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Associates a set of tags with an AWS DMS resource.
    #
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
    #   Identifies the AWS DMS resource to which tags should be added. The
    #   value for this parameter is an Amazon Resource Name (ARN).
    #
    #   For AWS DMS, you can tag a replication instance, an endpoint, or a
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

    # @note When making an API call, you may pass ApplyPendingMaintenanceActionMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String", # required
    #         apply_action: "String", # required
    #         opt_in_type: "String", # required
    #       }
    #
    # @!attribute [rw] replication_instance_arn
    #   The Amazon Resource Name (ARN) of the AWS DMS resource that the
    #   pending maintenance action applies to.
    #   @return [String]
    #
    # @!attribute [rw] apply_action
    #   The pending maintenance action to apply to this resource.
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
    #   The AWS DMS resource that the pending maintenance action will be
    #   applied to.
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
    # the AWS Region of an endpoint. For example, the availability zone of
    # an endpoint in the us-east-1 region might be us-east-1a, us-east-1b,
    # us-east-1c, or us-east-1d.
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

    # @note When making an API call, you may pass CancelReplicationTaskAssessmentRunMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_assessment_run_arn: "String", # required
    #       }
    #
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
    #           encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #           server_side_encryption_kms_key_id: "String",
    #           data_format: "csv", # accepts csv, parquet
    #           encoding_type: "plain", # accepts plain, plain-dictionary, rle-dictionary
    #           dict_page_size_limit: 1,
    #           row_group_length: 1,
    #           data_page_size: 1,
    #           parquet_version: "parquet-1-0", # accepts parquet-1-0, parquet-2-0
    #           enable_statistics: false,
    #           include_op_for_full_load: false,
    #           cdc_inserts_only: false,
    #           timestamp_column_name: "String",
    #           parquet_timestamp_in_millisecond: false,
    #           cdc_inserts_and_updates: false,
    #           date_partition_enabled: false,
    #           date_partition_sequence: "YYYYMMDD", # accepts YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, DDMMYYYY
    #           date_partition_delimiter: "SLASH", # accepts SLASH, UNDERSCORE, DASH, NONE
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
    #         kinesis_settings: {
    #           stream_arn: "String",
    #           message_format: "json", # accepts json, json-unformatted
    #           service_access_role_arn: "String",
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           include_null_and_empty: false,
    #         },
    #         kafka_settings: {
    #           broker: "String",
    #           topic: "String",
    #           message_format: "json", # accepts json, json-unformatted
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           message_max_bytes: 1,
    #           include_null_and_empty: false,
    #         },
    #         elasticsearch_settings: {
    #           service_access_role_arn: "String", # required
    #           endpoint_uri: "String", # required
    #           full_load_error_percentage: 1,
    #           error_retry_duration: 1,
    #         },
    #         neptune_settings: {
    #           service_access_role_arn: "String",
    #           s3_bucket_name: "String", # required
    #           s3_bucket_folder: "String", # required
    #           error_retry_duration: 1,
    #           max_file_size: 1,
    #           max_retry_count: 1,
    #           iam_auth_enabled: false,
    #         },
    #         redshift_settings: {
    #           accept_any_date: false,
    #           after_connect_script: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           case_sensitive_names: false,
    #           comp_update: false,
    #           connection_timeout: 1,
    #           database_name: "String",
    #           date_format: "String",
    #           empty_as_null: false,
    #           encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #           explicit_ids: false,
    #           file_transfer_upload_streams: 1,
    #           load_timeout: 1,
    #           max_file_size: 1,
    #           password: "SecretString",
    #           port: 1,
    #           remove_quotes: false,
    #           replace_invalid_chars: "String",
    #           replace_chars: "String",
    #           server_name: "String",
    #           service_access_role_arn: "String",
    #           server_side_encryption_kms_key_id: "String",
    #           time_format: "String",
    #           trim_blanks: false,
    #           truncate_columns: false,
    #           username: "String",
    #           write_buffer_size: 1,
    #         },
    #         postgre_sql_settings: {
    #           after_connect_script: "String",
    #           capture_ddls: false,
    #           max_file_size: 1,
    #           database_name: "String",
    #           ddl_artifacts_schema: "String",
    #           execute_timeout: 1,
    #           fail_tasks_on_lob_truncation: false,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #           slot_name: "String",
    #         },
    #         my_sql_settings: {
    #           after_connect_script: "String",
    #           database_name: "String",
    #           events_poll_interval: 1,
    #           target_db_type: "specific-database", # accepts specific-database, multiple-databases
    #           max_file_size: 1,
    #           parallel_load_threads: 1,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           server_timezone: "String",
    #           username: "String",
    #         },
    #         oracle_settings: {
    #           add_supplemental_logging: false,
    #           archived_log_dest_id: 1,
    #           additional_archived_log_dest_id: 1,
    #           allow_select_nested_tables: false,
    #           parallel_asm_read_threads: 1,
    #           read_ahead_blocks: 1,
    #           access_alternate_directly: false,
    #           use_alternate_folder_for_online: false,
    #           oracle_path_prefix: "String",
    #           use_path_prefix: "String",
    #           replace_path_prefix: false,
    #           enable_homogenous_tablespace: false,
    #           direct_path_no_log: false,
    #           archived_logs_only: false,
    #           asm_password: "SecretString",
    #           asm_server: "String",
    #           asm_user: "String",
    #           char_length_semantics: "default", # accepts default, char, byte
    #           database_name: "String",
    #           direct_path_parallel_load: false,
    #           fail_tasks_on_lob_truncation: false,
    #           number_datatype_scale: 1,
    #           password: "SecretString",
    #           port: 1,
    #           read_table_space_name: false,
    #           retry_interval: 1,
    #           security_db_encryption: "SecretString",
    #           security_db_encryption_name: "String",
    #           server_name: "String",
    #           username: "String",
    #         },
    #         sybase_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #         },
    #         microsoft_sql_server_settings: {
    #           port: 1,
    #           bcp_packet_size: 1,
    #           database_name: "String",
    #           control_tables_file_group: "String",
    #           password: "SecretString",
    #           read_backup_only: false,
    #           safeguard_policy: "rely-on-sql-server-replication-agent", # accepts rely-on-sql-server-replication-agent, exclusive-automatic-truncation, shared-automatic-truncation
    #           server_name: "String",
    #           username: "String",
    #           use_bcp_full_load: false,
    #         },
    #         ibm_db_2_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           set_data_capture_changes: false,
    #           current_lsn: "String",
    #           max_k_bytes_per_read: 1,
    #           username: "String",
    #         },
    #         resource_identifier: "String",
    #       }
    #
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
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`,
    #   `"s3"`, `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"docdb"`, `"sqlserver"`,
    #   and `"neptune"`.
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
    #   The name of the endpoint database.
    #   @return [String]
    #
    # @!attribute [rw] extra_connection_attributes
    #   Additional attributes associated with the connection. Each attribute
    #   is specified as a name-value pair associated by an equal sign (=).
    #   Multiple attributes are separated by a semicolon (;) with no
    #   additional white space. For information on the attributes available
    #   for connecting your source or target endpoint, see [Working with AWS
    #   DMS Endpoints][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Endpoints.html
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   An AWS KMS key identifier that is used to encrypt the connection
    #   parameters for the endpoint.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
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
    #   want to use to create the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] external_table_definition
    #   The external table definition.
    #   @return [String]
    #
    # @!attribute [rw] dynamo_db_settings
    #   Settings in JSON format for the target Amazon DynamoDB endpoint. For
    #   information about other available settings, see [Using Object
    #   Mapping to Migrate Data to DynamoDB][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
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
    #   * `ServiceAccessRoleArn` - The IAM role that has permission to
    #     access the Amazon S3 bucket.
    #
    #   * `BucketName` - The name of the S3 bucket to use.
    #
    #   * `CompressionType` - An optional parameter to use GZIP to compress
    #     the target files. To use GZIP, set this value to `NONE` (the
    #     default). To keep the files uncompressed, don't use this value.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string,BucketName=string,CompressionType=string`
    #
    #   JSON syntax for these settings is as follows: `\{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"|"gzip" \} `
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see [Using MongoDB as a
    #   Target for AWS Database Migration Service][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html#CHAP_Source.MongoDB.Configuration
    #   @return [Types::MongoDbSettings]
    #
    # @!attribute [rw] kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using Amazon Kinesis Data Streams as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html
    #   @return [Types::KinesisSettings]
    #
    # @!attribute [rw] kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For
    #   more information about the available settings, see [Using Apache
    #   Kafka as a Target for AWS Database Migration Service][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html
    #   @return [Types::KafkaSettings]
    #
    # @!attribute [rw] elasticsearch_settings
    #   Settings in JSON format for the target Elasticsearch endpoint. For
    #   more information about the available settings, see [Extra Connection
    #   Attributes When Using Elasticsearch as a Target for AWS DMS][1] in
    #   the *AWS Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #   @return [Types::ElasticsearchSettings]
    #
    # @!attribute [rw] neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   Endpoint Settings for Amazon Neptune as a Target][1] in the *AWS
    #   Database Migration Service User Guide.*
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
    #   connection attributes when using PostgreSQL as a source for AWS
    #   DMS][1] and [ Extra connection attributes when using PostgreSQL as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.html
    #   @return [Types::PostgreSQLSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using MySQL as a source for AWS DMS][1]
    #   and [Extra connection attributes when using a MySQL-compatible
    #   database as a target for AWS DMS][2] in the *AWS Database Migration
    #   Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.html
    #   @return [Types::MySQLSettings]
    #
    # @!attribute [rw] oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using Oracle as a source for AWS DMS][1]
    #   and [ Extra connection attributes when using Oracle as a target for
    #   AWS DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.html
    #   @return [Types::OracleSettings]
    #
    # @!attribute [rw] sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using SAP ASE as a source for AWS DMS][1]
    #   and [Extra connection attributes when using SAP ASE as a target for
    #   AWS DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.html
    #   @return [Types::SybaseSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL
    #   Server endpoint. For information about other available settings, see
    #   [Extra connection attributes when using SQL Server as a source for
    #   AWS DMS][1] and [ Extra connection attributes when using SQL Server
    #   as a target for AWS DMS][2] in the *AWS Database Migration Service
    #   User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.html
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.html
    #   @return [Types::MicrosoftSQLServerSettings]
    #
    # @!attribute [rw] ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.html
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
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
    #   @return [String]
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
      :resource_identifier)
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
    #   The name of the AWS DMS event notification subscription. This name
    #   must be less than 255 characters.
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
    #   value isn't specified, all events are returned.
    #
    #   Valid values: `replication-instance` \| `replication-task`
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of event categories for a source type that you want to
    #   subscribe to. For more information, see [Working with Events and
    #   Notifications][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Events.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_ids
    #   A list of identifiers for which AWS DMS provides notification
    #   events.
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
    #         dns_name_servers: "String",
    #         resource_identifier: "String",
    #       }
    #
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
    #   available replication instance classes, see [ Selecting the right
    #   AWS DMS replication instance for your migration][1].
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
    # @!attribute [rw] availability_zone
    #   The Availability Zone where the replication instance will be
    #   created. The default value is a random, system-chosen Availability
    #   Zone in the endpoint's AWS Region, for example: `us-east-1d`
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
    #   of time per AWS Region, occurring on a random day of the week.
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
    #   An AWS KMS key identifier that is used to encrypt the data on the
    #   replication instance.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
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
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
    #   @return [String]
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
      :resource_identifier)
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
    #   One or more subnet IDs to be assigned to the subnet group.
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
    #         task_data: "String",
    #         resource_identifier: "String",
    #       }
    #
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
    #   in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html
    #   @return [String]
    #
    # @!attribute [rw] replication_task_settings
    #   Overall settings for the task, in JSON format. For more information,
    #   see [Specifying Task Settings for AWS Database Migration Service
    #   Tasks][1] in the *AWS Database Migration User Guide.*
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
    #   Attributes When Using PostgreSQL as a Source for AWS DMS][1].
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
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags to be assigned to the replication task.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
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
    #   don't specify a `ResourceIdentifier` value, AWS DMS generates a
    #   default identifier value for the end of `EndpointArn`.
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

    # @note When making an API call, you may pass DeleteConnectionMessage
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/DeleteReplicationSubnetGroupResponse AWS API Documentation
    #
    class DeleteReplicationSubnetGroupResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteReplicationTaskAssessmentRunMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_assessment_run_arn: "String", # required
    #       }
    #
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
    #   A unique AWS DMS identifier for an account in a particular AWS
    #   Region. The value of this identifier has the following format:
    #   `c99999999999`. DMS uses this identifier to name artifacts. For
    #   example, DMS uses this identifier to name the default Amazon S3
    #   bucket for storing task assessment reports in a given AWS Region.
    #   The format of this S3 bucket name is the following:
    #   `dms-AccountNumber-UniqueAccountIdentifier.` Here is an example name
    #   for this default S3 bucket: `dms-111122223333-c44445555666`.
    #
    #   <note markdown="1"> AWS DMS supports the `UniqueAccountIdentifier` parameter in versions
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

    # @note When making an API call, you may pass DescribeApplicableIndividualAssessmentsMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String",
    #         replication_instance_arn: "String",
    #         source_engine_name: "String",
    #         target_engine_name: "String",
    #         migration_type: "full-load", # accepts full-load, cdc, full-load-and-cdc
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
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
    #   in the *AWS Database Migration Service User Guide.*
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
    #   Filters applied to the certificates described in the form of
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
    #   Filters applied to event subscriptions.
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
    #   The identifier of an event source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
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
    #   Filters applied to events.
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

    # @note When making an API call, you may pass DescribePendingMaintenanceActionsMessage
    #   data as a hash:
    #
    #       {
    #         replication_instance_arn: "String",
    #         filters: [
    #           {
    #             name: "String", # required
    #             values: ["String"], # required
    #           },
    #         ],
    #         marker: "String",
    #         max_records: 1,
    #       }
    #
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

    # @note When making an API call, you may pass DescribeReplicationTaskAssessmentRunsMessage
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

    # @note When making an API call, you may pass DescribeReplicationTaskIndividualAssessmentsMessage
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
    #         without_settings: false,
    #       }
    #
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the Amazon Resource Name (ARN) of the AWS Identity and Access
    # Management (IAM) role used to define an Amazon DynamoDB target
    # endpoint.
    #
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines an Elasticsearch endpoint.
    #
    # @note When making an API call, you may pass ElasticsearchSettings
    #   data as a hash:
    #
    #       {
    #         service_access_role_arn: "String", # required
    #         endpoint_uri: "String", # required
    #         full_load_error_percentage: 1,
    #         error_retry_duration: 1,
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by service to access the IAM
    #   role.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_uri
    #   The endpoint for the Elasticsearch cluster. AWS DMS uses HTTPS if a
    #   transport protocol (http/https) is not specified.
    #   @return [String]
    #
    # @!attribute [rw] full_load_error_percentage
    #   The maximum percentage of records that can fail to be written before
    #   a full load operation stops.
    #
    #   To avoid early failure, this counter is only effective after 1000
    #   records are transferred. Elasticsearch also has the concept of error
    #   monitoring during the last 10 minutes of an Observation Window. If
    #   transfer of all records fail in the last 10 minutes, the full load
    #   operation stops.
    #   @return [Integer]
    #
    # @!attribute [rw] error_retry_duration
    #   The maximum number of seconds for which DMS retries failed API
    #   requests to the Elasticsearch cluster.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ElasticsearchSettings AWS API Documentation
    #
    class ElasticsearchSettings < Struct.new(
      :service_access_role_arn,
      :endpoint_uri,
      :full_load_error_percentage,
      :error_retry_duration)
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
    # * `DescribeEndpointTypes`
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
    #   `"s3"`, `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"documentdb"`,
    #   `"sqlserver"`, and `"neptune"`.
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
    #   An AWS KMS key identifier that is used to encrypt the connection
    #   parameters for the endpoint.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
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
    #   The settings in JSON format for the DMS transfer type of source
    #   endpoint.
    #
    #   Possible settings include the following:
    #
    #   * `ServiceAccessRoleArn` - The IAM role that has permission to
    #     access the Amazon S3 bucket.
    #
    #   * `BucketName` - The name of the S3 bucket to use.
    #
    #   * `CompressionType` - An optional parameter to use GZIP to compress
    #     the target files. To use GZIP, set this value to `NONE` (the
    #     default). To keep the files uncompressed, don't use this value.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string,BucketName=string,CompressionType=string`
    #
    #   JSON syntax for these settings is as follows: `\{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"|"gzip" \} `
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
    #   The settings for the Elasticsearch source endpoint. For more
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
      :ibm_db_2_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes an identifiable significant activity that affects a
    # replication instance or task. This object can provide the message, the
    # available event categories, the date and source of the event, and the
    # AWS DMS resource type.
    #
    # @!attribute [rw] source_identifier
    #   The identifier of an event source.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
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
    # applicable AWS DMS resource type. This data type appears in response
    # to the [ `DescribeEventCategories` ][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/dms/latest/APIReference/API_EventCategoryGroup.html
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
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
    #   The time the AWS DMS event notification subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of AWS DMS resource that generates events.
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

    # Identifies the name and value of a filter object. This filter is used
    # to limit the number and type of AWS DMS objects that are returned for
    # a particular `Describe*` call or similar operation. Filters are used
    # as an optional parameter to the following APIs.
    #
    # @note When making an API call, you may pass Filter
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         values: ["String"], # required
    #       }
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

    # Provides information that defines an IBM Db2 LUW endpoint.
    #
    # @note When making an API call, you may pass IBMDb2Settings
    #   data as a hash:
    #
    #       {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         set_data_capture_changes: false,
    #         current_lsn: "String",
    #         max_k_bytes_per_read: 1,
    #         username: "String",
    #       }
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
    #   Endpoint TCP port.
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
      :username)
      SENSITIVE = [:password]
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
      SENSITIVE = []
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

    # The subnet provided is invalid.
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

    # The specified master key (CMK) isn't enabled.
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

    # An AWS Key Management Service (AWS KMS) error is preventing access to
    # AWS KMS.
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

    # The state of the specified AWS KMS resource isn't valid for this
    # request.
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

    # AWS DMS cannot access the AWS KMS key.
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

    # The specified AWS KMS entity or resource can't be found.
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

    # This request triggered AWS KMS request throttling.
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
    # @note When making an API call, you may pass KafkaSettings
    #   data as a hash:
    #
    #       {
    #         broker: "String",
    #         topic: "String",
    #         message_format: "json", # accepts json, json-unformatted
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         message_max_bytes: 1,
    #         include_null_and_empty: false,
    #       }
    #
    # @!attribute [rw] broker
    #   The broker location and port of the Kafka broker that hosts your
    #   Kafka instance. Specify the broker in the form `
    #   broker-hostname-or-ip:port `. For example,
    #   `"ec2-12-345-678-901.compute-1.amazonaws.com:2345"`.
    #   @return [String]
    #
    # @!attribute [rw] topic
    #   The topic to which you migrate the data. If you don't specify a
    #   topic, AWS DMS specifies `"kafka-default-topic"` as the migration
    #   topic.
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
    #   Shows the partition value within the Kafka message output, unless
    #   the partition type is `schema-table-type`. The default is `false`.
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
      :include_null_and_empty)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that describes an Amazon Kinesis Data Stream
    # endpoint. This information includes the output format of records
    # applied to the endpoint and details of transaction and control table
    # data information.
    #
    # @note When making an API call, you may pass KinesisSettings
    #   data as a hash:
    #
    #       {
    #         stream_arn: "String",
    #         message_format: "json", # accepts json, json-unformatted
    #         service_access_role_arn: "String",
    #         include_transaction_details: false,
    #         include_partition_value: false,
    #         partition_include_schema_table: false,
    #         include_table_alter_operations: false,
    #         include_control_details: false,
    #         include_null_and_empty: false,
    #       }
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
    #   The Amazon Resource Name (ARN) for the AWS Identity and Access
    #   Management (IAM) role that AWS DMS uses to write to the Kinesis data
    #   stream.
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
      :include_null_and_empty)
      SENSITIVE = []
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

    # Provides information that defines a Microsoft SQL Server endpoint.
    #
    # @note When making an API call, you may pass MicrosoftSQLServerSettings
    #   data as a hash:
    #
    #       {
    #         port: 1,
    #         bcp_packet_size: 1,
    #         database_name: "String",
    #         control_tables_file_group: "String",
    #         password: "SecretString",
    #         read_backup_only: false,
    #         safeguard_policy: "rely-on-sql-server-replication-agent", # accepts rely-on-sql-server-replication-agent, exclusive-automatic-truncation, shared-automatic-truncation
    #         server_name: "String",
    #         username: "String",
    #         use_bcp_full_load: false,
    #       }
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
    #   Specify a filegroup for the AWS DMS internal tables. When the
    #   replication task starts, all the internal AWS DMS control tables
    #   (awsdms\_ apply\_exception, awsdms\_apply, awsdms\_changes) are
    #   created on the specified filegroup.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   Endpoint connection password.
    #   @return [String]
    #
    # @!attribute [rw] read_backup_only
    #   When this attribute is set to `Y`, AWS DMS only reads changes from
    #   transaction log backups and doesn't read from the active
    #   transaction log file during ongoing replication. Setting this
    #   parameter to `Y` enables you to control active transaction log file
    #   growth during full load and ongoing replication tasks. However, it
    #   can add some source latency to ongoing replication.
    #   @return [Boolean]
    #
    # @!attribute [rw] safeguard_policy
    #   Use this attribute to minimize the need to access the backup log and
    #   enable AWS DMS to prevent truncation using one of the following two
    #   methods.
    #
    #   *Start transactions in the database:* This is the default method.
    #   When this method is used, AWS DMS prevents TLOG truncation by
    #   mimicking a transaction in the database. As long as such a
    #   transaction is open, changes that appear after the transaction
    #   started aren't truncated. If you need Microsoft Replication to be
    #   enabled in your database, then you must choose this method.
    #
    #   *Exclusively use sp\_repldone within a single task*\: When this
    #   method is used, AWS DMS reads the changes and then uses sp\_repldone
    #   to mark the TLOG transactions as ready for truncation. Although this
    #   method doesn't involve any transactional activities, it can only be
    #   used when Microsoft Replication isn't running. Also, when using
    #   this method, only one AWS DMS task can access the database at any
    #   given time. Therefore, if you need to run parallel AWS DMS tasks
    #   against the same database, use the default method.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MicrosoftSQLServerSettings AWS API Documentation
    #
    class MicrosoftSQLServerSettings < Struct.new(
      :port,
      :bcp_packet_size,
      :database_name,
      :control_tables_file_group,
      :password,
      :read_backup_only,
      :safeguard_policy,
      :server_name,
      :username,
      :use_bcp_full_load)
      SENSITIVE = [:password]
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
    #           encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #           server_side_encryption_kms_key_id: "String",
    #           data_format: "csv", # accepts csv, parquet
    #           encoding_type: "plain", # accepts plain, plain-dictionary, rle-dictionary
    #           dict_page_size_limit: 1,
    #           row_group_length: 1,
    #           data_page_size: 1,
    #           parquet_version: "parquet-1-0", # accepts parquet-1-0, parquet-2-0
    #           enable_statistics: false,
    #           include_op_for_full_load: false,
    #           cdc_inserts_only: false,
    #           timestamp_column_name: "String",
    #           parquet_timestamp_in_millisecond: false,
    #           cdc_inserts_and_updates: false,
    #           date_partition_enabled: false,
    #           date_partition_sequence: "YYYYMMDD", # accepts YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, DDMMYYYY
    #           date_partition_delimiter: "SLASH", # accepts SLASH, UNDERSCORE, DASH, NONE
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
    #         kinesis_settings: {
    #           stream_arn: "String",
    #           message_format: "json", # accepts json, json-unformatted
    #           service_access_role_arn: "String",
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           include_null_and_empty: false,
    #         },
    #         kafka_settings: {
    #           broker: "String",
    #           topic: "String",
    #           message_format: "json", # accepts json, json-unformatted
    #           include_transaction_details: false,
    #           include_partition_value: false,
    #           partition_include_schema_table: false,
    #           include_table_alter_operations: false,
    #           include_control_details: false,
    #           message_max_bytes: 1,
    #           include_null_and_empty: false,
    #         },
    #         elasticsearch_settings: {
    #           service_access_role_arn: "String", # required
    #           endpoint_uri: "String", # required
    #           full_load_error_percentage: 1,
    #           error_retry_duration: 1,
    #         },
    #         neptune_settings: {
    #           service_access_role_arn: "String",
    #           s3_bucket_name: "String", # required
    #           s3_bucket_folder: "String", # required
    #           error_retry_duration: 1,
    #           max_file_size: 1,
    #           max_retry_count: 1,
    #           iam_auth_enabled: false,
    #         },
    #         redshift_settings: {
    #           accept_any_date: false,
    #           after_connect_script: "String",
    #           bucket_folder: "String",
    #           bucket_name: "String",
    #           case_sensitive_names: false,
    #           comp_update: false,
    #           connection_timeout: 1,
    #           database_name: "String",
    #           date_format: "String",
    #           empty_as_null: false,
    #           encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #           explicit_ids: false,
    #           file_transfer_upload_streams: 1,
    #           load_timeout: 1,
    #           max_file_size: 1,
    #           password: "SecretString",
    #           port: 1,
    #           remove_quotes: false,
    #           replace_invalid_chars: "String",
    #           replace_chars: "String",
    #           server_name: "String",
    #           service_access_role_arn: "String",
    #           server_side_encryption_kms_key_id: "String",
    #           time_format: "String",
    #           trim_blanks: false,
    #           truncate_columns: false,
    #           username: "String",
    #           write_buffer_size: 1,
    #         },
    #         postgre_sql_settings: {
    #           after_connect_script: "String",
    #           capture_ddls: false,
    #           max_file_size: 1,
    #           database_name: "String",
    #           ddl_artifacts_schema: "String",
    #           execute_timeout: 1,
    #           fail_tasks_on_lob_truncation: false,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #           slot_name: "String",
    #         },
    #         my_sql_settings: {
    #           after_connect_script: "String",
    #           database_name: "String",
    #           events_poll_interval: 1,
    #           target_db_type: "specific-database", # accepts specific-database, multiple-databases
    #           max_file_size: 1,
    #           parallel_load_threads: 1,
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           server_timezone: "String",
    #           username: "String",
    #         },
    #         oracle_settings: {
    #           add_supplemental_logging: false,
    #           archived_log_dest_id: 1,
    #           additional_archived_log_dest_id: 1,
    #           allow_select_nested_tables: false,
    #           parallel_asm_read_threads: 1,
    #           read_ahead_blocks: 1,
    #           access_alternate_directly: false,
    #           use_alternate_folder_for_online: false,
    #           oracle_path_prefix: "String",
    #           use_path_prefix: "String",
    #           replace_path_prefix: false,
    #           enable_homogenous_tablespace: false,
    #           direct_path_no_log: false,
    #           archived_logs_only: false,
    #           asm_password: "SecretString",
    #           asm_server: "String",
    #           asm_user: "String",
    #           char_length_semantics: "default", # accepts default, char, byte
    #           database_name: "String",
    #           direct_path_parallel_load: false,
    #           fail_tasks_on_lob_truncation: false,
    #           number_datatype_scale: 1,
    #           password: "SecretString",
    #           port: 1,
    #           read_table_space_name: false,
    #           retry_interval: 1,
    #           security_db_encryption: "SecretString",
    #           security_db_encryption_name: "String",
    #           server_name: "String",
    #           username: "String",
    #         },
    #         sybase_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           username: "String",
    #         },
    #         microsoft_sql_server_settings: {
    #           port: 1,
    #           bcp_packet_size: 1,
    #           database_name: "String",
    #           control_tables_file_group: "String",
    #           password: "SecretString",
    #           read_backup_only: false,
    #           safeguard_policy: "rely-on-sql-server-replication-agent", # accepts rely-on-sql-server-replication-agent, exclusive-automatic-truncation, shared-automatic-truncation
    #           server_name: "String",
    #           username: "String",
    #           use_bcp_full_load: false,
    #         },
    #         ibm_db_2_settings: {
    #           database_name: "String",
    #           password: "SecretString",
    #           port: 1,
    #           server_name: "String",
    #           set_data_capture_changes: false,
    #           current_lsn: "String",
    #           max_k_bytes_per_read: 1,
    #           username: "String",
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
    #   letter and must contain only ASCII letters, digits, and hyphens.
    #   They can't end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] engine_name
    #   The type of engine for the endpoint. Valid values, depending on the
    #   EndpointType, include `"mysql"`, `"oracle"`, `"postgres"`,
    #   `"mariadb"`, `"aurora"`, `"aurora-postgresql"`, `"redshift"`,
    #   `"s3"`, `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"documentdb"`,
    #   `"sqlserver"`, and `"neptune"`.
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
    #   The SSL mode used to connect to the endpoint. The default value is
    #   `none`.
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
    #   information about other available settings, see [Using Object
    #   Mapping to Migrate Data to DynamoDB][1] in the *AWS Database
    #   Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.DynamoDB.html
    #   @return [Types::DynamoDbSettings]
    #
    # @!attribute [rw] s3_settings
    #   Settings in JSON format for the target Amazon S3 endpoint. For more
    #   information about the available settings, see [Extra Connection
    #   Attributes When Using Amazon S3 as a Target for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
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
    #   * serviceAccessRoleArn - The AWS Identity and Access Management
    #     (IAM) role that has permission to access the Amazon S3 bucket.
    #
    #   * BucketName - The name of the S3 bucket to use.
    #
    #   * compressionType - An optional parameter to use GZIP to compress
    #     the target files. Either set this parameter to NONE (the default)
    #     or don't use it to leave the files uncompressed.
    #
    #   Shorthand syntax for these settings is as follows:
    #   `ServiceAccessRoleArn=string
    #   ,BucketName=string,CompressionType=string`
    #
    #   JSON syntax for these settings is as follows: `\{
    #   "ServiceAccessRoleArn": "string", "BucketName": "string",
    #   "CompressionType": "none"|"gzip" \} `
    #   @return [Types::DmsTransferSettings]
    #
    # @!attribute [rw] mongo_db_settings
    #   Settings in JSON format for the source MongoDB endpoint. For more
    #   information about the available settings, see the configuration
    #   properties section in [ Using MongoDB as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MongoDB.html
    #   @return [Types::MongoDbSettings]
    #
    # @!attribute [rw] kinesis_settings
    #   Settings in JSON format for the target endpoint for Amazon Kinesis
    #   Data Streams. For more information about the available settings, see
    #   [Using Amazon Kinesis Data Streams as a Target for AWS Database
    #   Migration Service][1] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kinesis.html
    #   @return [Types::KinesisSettings]
    #
    # @!attribute [rw] kafka_settings
    #   Settings in JSON format for the target Apache Kafka endpoint. For
    #   more information about the available settings, see [Using Apache
    #   Kafka as a Target for AWS Database Migration Service][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Kafka.html
    #   @return [Types::KafkaSettings]
    #
    # @!attribute [rw] elasticsearch_settings
    #   Settings in JSON format for the target Elasticsearch endpoint. For
    #   more information about the available settings, see [Extra Connection
    #   Attributes When Using Elasticsearch as a Target for AWS DMS][1] in
    #   the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Elasticsearch.html#CHAP_Target.Elasticsearch.Configuration
    #   @return [Types::ElasticsearchSettings]
    #
    # @!attribute [rw] neptune_settings
    #   Settings in JSON format for the target Amazon Neptune endpoint. For
    #   more information about the available settings, see [Specifying
    #   Endpoint Settings for Amazon Neptune as a Target][1] in the *AWS
    #   Database Migration Service User Guide.*
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
    #   connection attributes when using PostgreSQL as a source for AWS
    #   DMS][1] and [ Extra connection attributes when using PostgreSQL as a
    #   target for AWS DMS][2] in the *AWS Database Migration Service User
    #   Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.PostgreSQL.ConnectionAttrib
    #   @return [Types::PostgreSQLSettings]
    #
    # @!attribute [rw] my_sql_settings
    #   Settings in JSON format for the source and target MySQL endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using MySQL as a source for AWS DMS][1]
    #   and [Extra connection attributes when using a MySQL-compatible
    #   database as a target for AWS DMS][2] in the *AWS Database Migration
    #   Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.MySQL.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.MySQL.ConnectionAttrib
    #   @return [Types::MySQLSettings]
    #
    # @!attribute [rw] oracle_settings
    #   Settings in JSON format for the source and target Oracle endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using Oracle as a source for AWS DMS][1]
    #   and [ Extra connection attributes when using Oracle as a target for
    #   AWS DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Oracle.ConnectionAttrib
    #   @return [Types::OracleSettings]
    #
    # @!attribute [rw] sybase_settings
    #   Settings in JSON format for the source and target SAP ASE endpoint.
    #   For information about other available settings, see [Extra
    #   connection attributes when using SAP ASE as a source for AWS DMS][1]
    #   and [Extra connection attributes when using SAP ASE as a target for
    #   AWS DMS][2] in the *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SAP.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SAP.ConnectionAttrib
    #   @return [Types::SybaseSettings]
    #
    # @!attribute [rw] microsoft_sql_server_settings
    #   Settings in JSON format for the source and target Microsoft SQL
    #   Server endpoint. For information about other available settings, see
    #   [Extra connection attributes when using SQL Server as a source for
    #   AWS DMS][1] and [ Extra connection attributes when using SQL Server
    #   as a target for AWS DMS][2] in the *AWS Database Migration Service
    #   User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.SQLServer.ConnectionAttrib
    #   [2]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.SQLServer.ConnectionAttrib
    #   @return [Types::MicrosoftSQLServerSettings]
    #
    # @!attribute [rw] ibm_db_2_settings
    #   Settings in JSON format for the source IBM Db2 LUW endpoint. For
    #   information about other available settings, see [Extra connection
    #   attributes when using Db2 LUW as a source for AWS DMS][1] in the
    #   *AWS Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.DB2.ConnectionAttrib
    #   @return [Types::IBMDb2Settings]
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
      :ibm_db_2_settings)
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
    #   The compute and memory capacity of the replication instance as
    #   defined for the specified replication instance class. For example to
    #   specify the instance class dms.c4.large, set this parameter to
    #   `"dms.c4.large"`.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   AWS DMS replication instance for your migration][1].
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
    #   in the case dsecribed following. The change is asynchronously
    #   applied as soon as possible.
    #
    #   An outage does result if these factors apply:
    #
    #   * This parameter is set to `true` during the maintenance window.
    #
    #   * A newer minor version is available.
    #
    #   * AWS DMS has enabled automatic patching for the given engine
    #     version.
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
    #         task_data: "String",
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
    #   When using the AWS CLI or boto3, provide the path of the JSON file
    #   that contains the table mappings. Precede the path with `file://`.
    #   When working with the DMS API, provide the JSON as the parameter
    #   value, for example: `--table-mappings file://mappingfile.json`
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
    #   Attributes When Using PostgreSQL as a Source for AWS DMS][1].
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
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
    #   @return [String]
    #
    # @!attribute [rw] task_data
    #   Supplemental information that the task requires to migrate the data
    #   for certain source and target endpoints. For more information, see
    #   [Specifying Supplemental Data for Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
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

    # Provides information that defines a MongoDB endpoint.
    #
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
    #   The AWS KMS key identifier that is used to encrypt the content on
    #   the replication instance. If you don't specify a value for the
    #   `KmsKeyId` parameter, then AWS DMS uses your default encryption key.
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
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
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information that defines a MySQL endpoint.
    #
    # @note When making an API call, you may pass MySQLSettings
    #   data as a hash:
    #
    #       {
    #         after_connect_script: "String",
    #         database_name: "String",
    #         events_poll_interval: 1,
    #         target_db_type: "specific-database", # accepts specific-database, multiple-databases
    #         max_file_size: 1,
    #         parallel_load_threads: 1,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         server_timezone: "String",
    #         username: "String",
    #       }
    #
    # @!attribute [rw] after_connect_script
    #   Specifies a script to run immediately after AWS DMS connects to the
    #   endpoint. The migration task continues running regardless if the SQL
    #   statement succeeds or fails.
    #   @return [String]
    #
    # @!attribute [rw] database_name
    #   Database name for the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] events_poll_interval
    #   Specifies how often to check the binary log for new changes/events
    #   when the database is idle.
    #
    #   Example: `eventsPollInterval=5;`
    #
    #   In the example, AWS DMS checks for changes in the binary logs every
    #   five seconds.
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
    #   Improves performance when loading data into the MySQLcompatible
    #   target database. Specifies how many threads to use to load the data
    #   into the MySQL-compatible target database. Setting a large number of
    #   threads can have an adverse effect on database performance, because
    #   a separate connection is required for each thread.
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
    #   Fully qualified domain name of the endpoint.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/MySQLSettings AWS API Documentation
    #
    class MySQLSettings < Struct.new(
      :after_connect_script,
      :database_name,
      :events_poll_interval,
      :target_db_type,
      :max_file_size,
      :parallel_load_threads,
      :password,
      :port,
      :server_name,
      :server_timezone,
      :username)
      SENSITIVE = [:password]
      include Aws::Structure
    end

    # Provides information that defines an Amazon Neptune endpoint.
    #
    # @note When making an API call, you may pass NeptuneSettings
    #   data as a hash:
    #
    #       {
    #         service_access_role_arn: "String",
    #         s3_bucket_name: "String", # required
    #         s3_bucket_folder: "String", # required
    #         error_retry_duration: 1,
    #         max_file_size: 1,
    #         max_retry_count: 1,
    #         iam_auth_enabled: false,
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) of the service role that you created
    #   for the Neptune target endpoint. For more information, see [Creating
    #   an IAM Service Role for Accessing Amazon Neptune as a Target][1] in
    #   the <i>AWS Database Migration Service User Guide. </i>
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Target.Neptune.html#CHAP_Target.Neptune.ServiceRole
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_name
    #   The name of the Amazon S3 bucket where AWS DMS can temporarily store
    #   migrated graph data in .csv files before bulk-loading it to the
    #   Neptune target database. AWS DMS maps the SQL source data to graph
    #   data before storing it in these .csv files.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_folder
    #   A folder path where you want AWS DMS to store migrated graph data in
    #   the S3 bucket specified by `S3BucketName`
    #   @return [String]
    #
    # @!attribute [rw] error_retry_duration
    #   The number of milliseconds for AWS DMS to wait to retry a bulk-load
    #   of migrated graph data to the Neptune target database before raising
    #   an error. The default is 250.
    #   @return [Integer]
    #
    # @!attribute [rw] max_file_size
    #   The maximum size in kilobytes of migrated graph data stored in a
    #   .csv file before AWS DMS bulk-loads the data to the Neptune target
    #   database. The default is 1,048,576 KB. If the bulk load is
    #   successful, AWS DMS clears the bucket, ready to store the next batch
    #   of migrated graph data.
    #   @return [Integer]
    #
    # @!attribute [rw] max_retry_count
    #   The number of times for AWS DMS to retry a bulk load of migrated
    #   graph data to the Neptune target database before raising an error.
    #   The default is 5.
    #   @return [Integer]
    #
    # @!attribute [rw] iam_auth_enabled
    #   If you want AWS Identity and Access Management (IAM) authorization
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

    # Provides information that defines an Oracle endpoint.
    #
    # @note When making an API call, you may pass OracleSettings
    #   data as a hash:
    #
    #       {
    #         add_supplemental_logging: false,
    #         archived_log_dest_id: 1,
    #         additional_archived_log_dest_id: 1,
    #         allow_select_nested_tables: false,
    #         parallel_asm_read_threads: 1,
    #         read_ahead_blocks: 1,
    #         access_alternate_directly: false,
    #         use_alternate_folder_for_online: false,
    #         oracle_path_prefix: "String",
    #         use_path_prefix: "String",
    #         replace_path_prefix: false,
    #         enable_homogenous_tablespace: false,
    #         direct_path_no_log: false,
    #         archived_logs_only: false,
    #         asm_password: "SecretString",
    #         asm_server: "String",
    #         asm_user: "String",
    #         char_length_semantics: "default", # accepts default, char, byte
    #         database_name: "String",
    #         direct_path_parallel_load: false,
    #         fail_tasks_on_lob_truncation: false,
    #         number_datatype_scale: 1,
    #         password: "SecretString",
    #         port: 1,
    #         read_table_space_name: false,
    #         retry_interval: 1,
    #         security_db_encryption: "SecretString",
    #         security_db_encryption_name: "String",
    #         server_name: "String",
    #         username: "String",
    #       }
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
    #   Specifies the destination of the archived redo logs. The value
    #   should be the same as the DEST\_ID number in the v$archived\_log
    #   table. When working with multiple log destinations (DEST\_ID), we
    #   recommend that you to specify an archived redo logs location
    #   identifier. Doing this improves performance by ensuring that the
    #   correct logs are accessed from the outset.
    #   @return [Integer]
    #
    # @!attribute [rw] additional_archived_log_dest_id
    #   Set this attribute with `archivedLogDestId` in a primary/ standby
    #   setup. This attribute is useful in the case of a switchover. In this
    #   case, AWS DMS needs to know which destination to get archive redo
    #   logs from to read changes. This need arises because the previous
    #   primary instance is now a standby instance after switchover.
    #   @return [Integer]
    #
    # @!attribute [rw] allow_select_nested_tables
    #   Set this attribute to `true` to enable replication of Oracle tables
    #   containing columns that are nested tables or defined types.
    #   @return [Boolean]
    #
    # @!attribute [rw] parallel_asm_read_threads
    #   Set this attribute to change the number of threads that DMS
    #   configures to perform a Change Data Capture (CDC) load using Oracle
    #   Automatic Storage Management (ASM). You can specify an integer value
    #   between 2 (the default) and 8 (the maximum). Use this attribute
    #   together with the `readAheadBlocks` attribute.
    #   @return [Integer]
    #
    # @!attribute [rw] read_ahead_blocks
    #   Set this attribute to change the number of read-ahead blocks that
    #   DMS configures to perform a Change Data Capture (CDC) load using
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
    #   When this field is set to `Y`, AWS DMS only accesses the archived
    #   redo logs. If the archived redo logs are stored on Oracle ASM only,
    #   the AWS DMS user account needs to be granted ASM privileges.
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
    #   applies when you use the AWS DMS parallel load feature. Note that
    #   the target table cannot have any constraints or indexes.
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
    #   a source for AWS DMS][1] in the *AWS Database Migration Service User
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
    #   [ Supported encryption methods for using Oracle as a source for AWS
    #   DMS][1] in the *AWS Database Migration Service User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.Oracle.html#CHAP_Source.Oracle.Encryption
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   Fully qualified domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/OracleSettings AWS API Documentation
    #
    class OracleSettings < Struct.new(
      :add_supplemental_logging,
      :archived_log_dest_id,
      :additional_archived_log_dest_id,
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
      :username)
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
    #   AWS DMS replication instance for your migration][1].
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
    #   <note markdown="1"> AWS DMS supports the `ReleaseStatus` parameter in versions 3.1.4 and
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

    # Describes a maintenance action pending for an AWS DMS resource,
    # including when and how it will be applied. This data type is a
    # response element to the `DescribePendingMaintenanceActions` operation.
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
    # @note When making an API call, you may pass PostgreSQLSettings
    #   data as a hash:
    #
    #       {
    #         after_connect_script: "String",
    #         capture_ddls: false,
    #         max_file_size: 1,
    #         database_name: "String",
    #         ddl_artifacts_schema: "String",
    #         execute_timeout: 1,
    #         fail_tasks_on_lob_truncation: false,
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #         slot_name: "String",
    #       }
    #
    # @!attribute [rw] after_connect_script
    #   For use with change data capture (CDC) only, this attribute has AWS
    #   DMS bypass foreign keys and user triggers to reduce the time it
    #   takes to bulk load data.
    #
    #   Example: `afterConnectScript=SET session_replication_role='replica'`
    #   @return [String]
    #
    # @!attribute [rw] capture_ddls
    #   To capture DDL events, AWS DMS creates various artifacts in the
    #   PostgreSQL database when the task starts. You can later remove these
    #   artifacts.
    #
    #   If this value is set to `N`, you don't have to create tables or
    #   triggers on the source database.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_file_size
    #   Specifies the maximum size (in KB) of any .csv file used to transfer
    #   data to PostgreSQL.
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
    #   If task is set to Limited LOB mode and this option is set to true,
    #   the task fails instead of truncating the LOB data.
    #   @return [Boolean]
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
    #   Fully qualified domain name of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   Endpoint connection user name.
    #   @return [String]
    #
    # @!attribute [rw] slot_name
    #   Sets the name of a previously created logical replication slot for a
    #   CDC load of the PostgreSQL source instance.
    #
    #   When used with the AWS DMS API `CdcStartPosition` request parameter,
    #   this attribute also enables using native CDC start points.
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
      :password,
      :port,
      :server_name,
      :username,
      :slot_name)
      SENSITIVE = [:password]
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

    # Provides information that defines an Amazon Redshift endpoint.
    #
    # @note When making an API call, you may pass RedshiftSettings
    #   data as a hash:
    #
    #       {
    #         accept_any_date: false,
    #         after_connect_script: "String",
    #         bucket_folder: "String",
    #         bucket_name: "String",
    #         case_sensitive_names: false,
    #         comp_update: false,
    #         connection_timeout: 1,
    #         database_name: "String",
    #         date_format: "String",
    #         empty_as_null: false,
    #         encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #         explicit_ids: false,
    #         file_transfer_upload_streams: 1,
    #         load_timeout: 1,
    #         max_file_size: 1,
    #         password: "SecretString",
    #         port: 1,
    #         remove_quotes: false,
    #         replace_invalid_chars: "String",
    #         replace_chars: "String",
    #         server_name: "String",
    #         service_access_role_arn: "String",
    #         server_side_encryption_kms_key_id: "String",
    #         time_format: "String",
    #         trim_blanks: false,
    #         truncate_columns: false,
    #         username: "String",
    #         write_buffer_size: 1,
    #       }
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
    #   For full load mode, AWS DMS converts source records into .csv files
    #   and loads them to the *BucketFolder/TableID* path. AWS DMS uses the
    #   Redshift `COPY` command to upload the .csv files to the target
    #   table. The files are deleted once the `COPY` operation has finished.
    #   For more information, see [Amazon Redshift Database Developer
    #   Guide][1]
    #
    #   For change-data-capture (CDC) mode, AWS DMS creates a *NetChanges*
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
    #   A value that specifies whether AWS DMS should migrate empty CHAR and
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
    #   To use `SSE_S3`, create an AWS Identity and Access Management (IAM)
    #   role with a policy that allows `"arn:aws:s3:::*"` to use the
    #   following actions: `"s3:PutObject", "s3:ListBucket"`
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
    #   operations performed by AWS DMS on a Redshift cluster, such as
    #   Redshift COPY, INSERT, DELETE, and UPDATE.
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
    #   the Amazon Redshift service.
    #   @return [String]
    #
    # @!attribute [rw] server_side_encryption_kms_key_id
    #   The AWS KMS key ID. If you are using `SSE_KMS` for the
    #   `EncryptionMode`, provide this key ID. The key that you use needs an
    #   attached policy that enables IAM user permissions and allows use of
    #   the key.
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
      :write_buffer_size)
      SENSITIVE = [:password]
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

    # @note When making an API call, you may pass ReloadTablesMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         tables_to_reload: [ # required
    #           {
    #             schema_name: "String", # required
    #             table_name: "String", # required
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

    # Removes one or more tags from an AWS DMS resource.
    #
    # @note When making an API call, you may pass RemoveTagsFromResourceMessage
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   An AWS DMS resource from which you want to remove tag(s). The value
    #   for this parameter is an Amazon Resource Name (ARN).
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
    #   required parameter, although a defualt value is pre-selected in the
    #   DMS console.
    #
    #   For more information on the settings and capacities for the
    #   available replication instance classes, see [ Selecting the right
    #   AWS DMS replication instance for your migration][1].
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
    #   An AWS KMS key identifier that is used to encrypt the data on the
    #   replication instance.
    #
    #   If you don't specify a value for the `KmsKeyId` parameter, then AWS
    #   DMS uses your default encryption key.
    #
    #   AWS KMS creates the default encryption key for your AWS account.
    #   Your AWS account has a different default encryption key for each AWS
    #   Region.
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
      :free_until,
      :dns_name_servers)
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
    #   AWS DMS replication instance for your migration][1].
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationPendingModifiedValues AWS API Documentation
    #
    class ReplicationPendingModifiedValues < Struct.new(
      :replication_instance_class,
      :allocated_storage,
      :multi_az,
      :engine_version)
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/ReplicationSubnetGroup AWS API Documentation
    #
    class ReplicationSubnetGroup < Struct.new(
      :replication_subnet_group_identifier,
      :replication_subnet_group_description,
      :vpc_id,
      :subnet_group_status,
      :subnets)
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
    #   The last error (failure) message generated for the replication task.
    #   @return [String]
    #
    # @!attribute [rw] stop_reason
    #   The reason the replication task was stopped. This response parameter
    #   can return one of the following values:
    #
    #   * `"STOP_REASON_FULL_LOAD_COMPLETED"` – Full-load migration
    #     completed.
    #
    #   * `"STOP_REASON_CACHED_CHANGES_APPLIED"` – Change data capture (CDC)
    #     load completed.
    #
    #   * `"STOP_REASON_CACHED_CHANGES_NOT_APPLIED"` – In a full-load and
    #     CDC migration, the full-load stopped as specified before starting
    #     the CDC migration.
    #
    #   * `"STOP_REASON_SERVER_TIME"` – The migration stopped at the
    #     specified server time.
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
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
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
    #   [Specifying Supplemental Data for Task Settings][1] in the *AWS
    #   Database Migration Service User Guide.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html
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
      :task_data)
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
      SENSITIVE = []
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
    #   `StartReplicationTaskAssessmentRun` operation.
    #   @return [String]
    #
    # @!attribute [rw] result_location_bucket
    #   Amazon S3 bucket where AWS DMS stores the results of this assessment
    #   run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_folder
    #   Folder in an Amazon S3 bucket where AWS DMS stores the results of
    #   this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_encryption_mode
    #   Encryption mode used to encrypt the assessment run results.
    #   @return [String]
    #
    # @!attribute [rw] result_kms_key_arn
    #   ARN of the AWS KMS encryption key used to encrypt the assessment run
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] assessment_run_name
    #   Unique name of the assessment run.
    #   @return [String]
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
      :assessment_run_name)
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

    # Identifies an AWS DMS resource and any pending actions for it.
    #
    # @!attribute [rw] resource_identifier
    #   The Amazon Resource Name (ARN) of the DMS resource that the pending
    #   maintenance action applies to. For information about creating an
    #   ARN, see [ Constructing an Amazon Resource Name (ARN) for AWS
    #   DMS][1] in the DMS documentation.
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
    #         encryption_mode: "sse-s3", # accepts sse-s3, sse-kms
    #         server_side_encryption_kms_key_id: "String",
    #         data_format: "csv", # accepts csv, parquet
    #         encoding_type: "plain", # accepts plain, plain-dictionary, rle-dictionary
    #         dict_page_size_limit: 1,
    #         row_group_length: 1,
    #         data_page_size: 1,
    #         parquet_version: "parquet-1-0", # accepts parquet-1-0, parquet-2-0
    #         enable_statistics: false,
    #         include_op_for_full_load: false,
    #         cdc_inserts_only: false,
    #         timestamp_column_name: "String",
    #         parquet_timestamp_in_millisecond: false,
    #         cdc_inserts_and_updates: false,
    #         date_partition_enabled: false,
    #         date_partition_sequence: "YYYYMMDD", # accepts YYYYMMDD, YYYYMMDDHH, YYYYMM, MMYYYYDD, DDMMYYYY
    #         date_partition_delimiter: "SLASH", # accepts SLASH, UNDERSCORE, DASH, NONE
    #       }
    #
    # @!attribute [rw] service_access_role_arn
    #   The Amazon Resource Name (ARN) used by the service access IAM role.
    #   It is a required parameter that enables DMS to write and read
    #   objects from an 3S bucket.
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
    #   To use `SSE_S3`, you need an AWS Identity and Access Management
    #   (IAM) role with permission to allow `"arn:aws:s3:::dms-*"` to use
    #   the following actions:
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
    #   If you are using `SSE_KMS` for the `EncryptionMode`, provide the AWS
    #   KMS key ID. The key that you use needs an attached policy that
    #   enables AWS Identity and Access Management (IAM) user permissions
    #   and allows use of the key.
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
    #   * `csv`\: This is a row-based file format with comma-separated
    #     values (.csv).
    #
    #   * `parquet`\: Apache Parquet (.parquet) is a columnar storage file
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
    #   comma-separated value (.csv) output files only to indicate how the
    #   rows were added to the source database.
    #
    #   <note markdown="1"> AWS DMS supports the `IncludeOpForFullLoad` parameter in versions
    #   3.1.4 and later.
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
    #   [Indicating Source DB Operations in Migrated S3 Data][1] in the *AWS
    #   Database Migration Service User Guide.*.
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
    #   Operations in Migrated S3 Data][1] in the *AWS Database Migration
    #   Service User Guide.*.
    #
    #   <note markdown="1"> AWS DMS supports the interaction described preceding between the
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
    #   A value that when nonblank causes AWS DMS to add a column with
    #   timestamp information to the endpoint data for an Amazon S3 target.
    #
    #   <note markdown="1"> AWS DMS supports the `TimestampColumnName` parameter in versions
    #   3.1.4 and later.
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
    #   <note markdown="1"> AWS DMS supports the `ParquetTimestampInMillisecond` parameter in
    #   versions 3.1.4 and later.
    #
    #    </note>
    #
    #   When `ParquetTimestampInMillisecond` is set to `true` or `y`, AWS
    #   DMS writes all `TIMESTAMP` columns in a .parquet formatted file with
    #   millisecond precision. Otherwise, DMS writes them with microsecond
    #   precision.
    #
    #   Currently, Amazon Athena and AWS Glue can handle only millisecond
    #   precision for `TIMESTAMP` values. Set this parameter to `true` for
    #   S3 endpoint object files that are .parquet formatted only if you
    #   plan to query or process the data with Athena or AWS Glue.
    #
    #   <note markdown="1"> AWS DMS writes any `TIMESTAMP` column values written to an S3 file
    #   in .csv format with microsecond precision.
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
    #   For .csv file format only, how these INSERTs and UPDATEs are
    #   recorded depends on the value of the `IncludeOpForFullLoad`
    #   parameter. If `IncludeOpForFullLoad` is set to `true`, the first
    #   field of every CDC record is set to either `I` or `U` to indicate
    #   INSERT and UPDATE operations at the source. But if
    #   `IncludeOpForFullLoad` is set to `false`, CDC records are written
    #   without an indication of INSERT or UPDATE operations at the source.
    #   For more information about how these settings work together, see
    #   [Indicating Source DB Operations in Migrated S3 Data][1] in the *AWS
    #   Database Migration Service User Guide.*.
    #
    #   <note markdown="1"> AWS DMS supports the use of the `CdcInsertsAndUpdates` parameter in
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
    #   more information about date-based folder partitoning, see [Using
    #   date-based folder partitioning][1]
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib
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
      :date_partition_delimiter)
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

    # @note When making an API call, you may pass StartReplicationTaskAssessmentRunMessage
    #   data as a hash:
    #
    #       {
    #         replication_task_arn: "String", # required
    #         service_access_role_arn: "String", # required
    #         result_location_bucket: "String", # required
    #         result_location_folder: "String",
    #         result_encryption_mode: "String",
    #         result_kms_key_arn: "String",
    #         assessment_run_name: "String", # required
    #         include_only: ["String"],
    #         exclude: ["String"],
    #       }
    #
    # @!attribute [rw] replication_task_arn
    #   Amazon Resource Name (ARN) of the migration task associated with the
    #   premigration assessment run that you want to start.
    #   @return [String]
    #
    # @!attribute [rw] service_access_role_arn
    #   ARN of a service role needed to start the assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_bucket
    #   Amazon S3 bucket where you want AWS DMS to store the results of this
    #   assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_location_folder
    #   Folder within an Amazon S3 bucket where you want AWS DMS to store
    #   the results of this assessment run.
    #   @return [String]
    #
    # @!attribute [rw] result_encryption_mode
    #   Encryption mode that you can specify to encrypt the results of this
    #   assessment run. If you don't specify this request parameter, AWS
    #   DMS stores the assessment run results without encryption. You can
    #   specify one of the options following:
    #
    #   * `"SSE_S3"` – The server-side encryption provided as a default by
    #     Amazon S3.
    #
    #   * `"SSE_KMS"` – AWS Key Management Service (AWS KMS) encryption.
    #     This encryption can use either a custom KMS encryption key that
    #     you specify or the default KMS encryption key that DMS provides.
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
    #   individual assessments that AWS DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `IncludeOnly` if you also set a value for
    #   `Exclude` in the API operation.
    #
    #    To identify the names of the default individual assessments that AWS
    #   DMS supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] exclude
    #   Space-separated list of names for specific individual assessments
    #   that you want to exclude. These names come from the default list of
    #   individual assessments that AWS DMS supports for the associated
    #   migration task. This task is specified by `ReplicationTaskArn`.
    #
    #   <note markdown="1"> You can't set a value for `Exclude` if you also set a value for
    #   `IncludeOnly` in the API operation.
    #
    #    To identify the names of the default individual assessments that AWS
    #   DMS supports for the associated migration task, run the
    #   `DescribeApplicableIndividualAssessments` operation using its own
    #   `ReplicationTaskArn` request parameter.
    #
    #    </note>
    #   @return [Array<String>]
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
      :exclude)
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
    #   A type of replication task.
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
    #   Attributes When Using PostgreSQL as a Source for AWS DMS][1].
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
    #   Commit time example: --cdc-stop-position “commit\_time:
    #   2018-02-09T12:12:12 “
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
    #   `"s3"`, `"db2"`, `"azuredb"`, `"sybase"`, `"dynamodb"`, `"mongodb"`,
    #   `"kinesis"`, `"kafka"`, `"elasticsearch"`, `"documentdb"`,
    #   `"sqlserver"`, and `"neptune"`.
    #   @return [String]
    #
    # @!attribute [rw] supports_cdc
    #   Indicates if Change Data Capture (CDC) is supported.
    #   @return [Boolean]
    #
    # @!attribute [rw] endpoint_type
    #   The type of endpoint. Valid values are `source` and `target`.
    #   @return [String]
    #
    # @!attribute [rw] replication_instance_engine_minimum_version
    #   The earliest AWS DMS engine version that supports this endpoint
    #   engine. Note that endpoint engines released with AWS DMS versions
    #   earlier than 3.1.1 do not return a value for this parameter.
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
      :replication_instance_engine_minimum_version,
      :engine_display_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides information that defines a SAP ASE endpoint.
    #
    # @note When making an API call, you may pass SybaseSettings
    #   data as a hash:
    #
    #       {
    #         database_name: "String",
    #         password: "SecretString",
    #         port: 1,
    #         server_name: "String",
    #         username: "String",
    #       }
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
    #   Endpoint TCP port.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/SybaseSettings AWS API Documentation
    #
    class SybaseSettings < Struct.new(
      :database_name,
      :password,
      :port,
      :server_name,
      :username)
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
      :full_load_start_time,
      :full_load_end_time,
      :full_load_reloaded,
      :last_update_time,
      :table_state,
      :validation_pending_records,
      :validation_failed_records,
      :validation_suspended_records,
      :validation_state,
      :validation_state_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the name of the schema and table to be reloaded.
    #
    # @note When making an API call, you may pass TableToReload
    #   data as a hash:
    #
    #       {
    #         schema_name: "String", # required
    #         table_name: "String", # required
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A user-defined key-value pair that describes metadata added to an AWS
    # DMS resource and that is used by operations such as the following:
    #
    # * `AddTagsToResource`
    #
    # * `ListTagsForResource`
    #
    # * `RemoveTagsFromResource`
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "String",
    #         value: "String",
    #       }
    #
    # @!attribute [rw] key
    #   A key is the required name of the tag. The string value can be 1-128
    #   Unicode characters in length and can't be prefixed with "aws:" or
    #   "dms:". The string can only contain only the set of Unicode
    #   letters, digits, white-space, '\_', '.', '/', '=', '+',
    #   '-' (Java regular expressions:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value is the optional value of the tag. The string value can be
    #   1-256 Unicode characters in length and can't be prefixed with
    #   "aws:" or "dms:". The string can only contain only the set of
    #   Unicode letters, digits, white-space, '\_', '.', '/', '=',
    #   '+', '-' (Java regular expressions:
    #   "^(\[\\\\p\\\{L\\}\\\\p\\\{Z\\}\\\\p\\\{N\\}\_.:/=+\\\\-\]*)$").
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/dms-2016-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
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
