# frozen_string_literal: true

# This is generated code!

module Aws::SecurityLake
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action. Access denied errors appear when Amazon Security Lake explicitly or implicitly denies an authorization
    #          request. An explicit denial occurs when a policy contains a Deny statement for the specific
    #          Amazon Web Services action. An implicit denial occurs when there is no applicable Deny statement and also
    #          no applicable Allow statement.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute error_code
    #   <p>A coded string to provide more information about the access denied exception. You can use the error code to check the exception type.</p>
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      :error_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Amazon Web Services identity.</p>
    # @!attribute principal
    #   <p>The Amazon Web Services identity principal.</p>
    #   @return [String]
    # @!attribute external_id
    #   <p>The external ID used to establish trust relationship with the Amazon Web Services identity.</p>
    #   @return [String]
    class AwsIdentity < Struct.new(
      :principal,
      :external_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>To add a natively-supported Amazon Web Services service as a log source, use these
    #          parameters to specify the configuration settings for the log source. </p>
    # @!attribute accounts
    #   <p>Specify the Amazon Web Services account information where you want to enable Security Lake.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>Specify the Regions where you want to enable Security Lake.</p>
    #   @return [Array<String>]
    # @!attribute source_name
    #   <p>The name for a Amazon Web Services source. </p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The version for a Amazon Web Services source. </p>
    #   @return [String]
    class AwsLogSourceConfiguration < Struct.new(
      :accounts,
      :regions,
      :source_name,
      :source_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:source_version] = 'latest' unless options.key?(:source_version)
        super
      end
    end

    # <p>Amazon Security Lake can collect logs and events from natively-supported Amazon Web Services
    #          services.</p>
    # @!attribute source_name
    #   <p>The name for a Amazon Web Services source. This must be a Regionally unique value.</p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The version for a Amazon Web Services source. This must be a Regionally unique value.</p>
    #   @return [String]
    class AwsLogSourceResource < Struct.new(
      :source_name,
      :source_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when a conflict with a previous successful write is detected. This generally
    #          occurs when the previous write did not have time to propagate to the host serving the
    #          current request. A retry (with appropriate backoff logic) is the recommended response to
    #          this exception.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The resource name.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_name,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>Specify the natively-supported Amazon Web Services service to add as a source in Security Lake.</p>
    #   @return [Array<Types::AwsLogSourceConfiguration>]
    class CreateAwsLogSourceRequest < Struct.new(
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed
    #   <p>Lists all accounts in which enabling a natively supported Amazon Web Services service as
    #            a Security Lake source failed. The failure occurred as these accounts are not part of an
    #            organization.</p>
    #   @return [Array<String>]
    class CreateAwsLogSourceResponse < Struct.new(
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_name
    #   <p>Specify the name for a third-party custom source. This must be a Regionally unique
    #            value. The <code>sourceName</code> you enter here, is used in the
    #               <code>LogProviderRole</code> name which follows the convention
    #               <code>AmazonSecurityLake-Provider-{name of the custom source}-{region}</code>. You must
    #            use a <code>CustomLogSource</code> name that is shorter than or equal to 20 characters.
    #            This ensures that the <code>LogProviderRole</code> name is below the 64 character
    #            limit.</p>
    #   @return [String]
    # @!attribute source_version
    #   <p>Specify the source version for the third-party custom source, to limit log collection to
    #            a specific version of custom data source.</p>
    #   @return [String]
    # @!attribute event_classes
    #   <p>The Open Cybersecurity Schema Framework (OCSF) event classes which describes the type of
    #            data that the custom source will send to Security Lake. For the list of supported event classes, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/adding-custom-sources.html#ocsf-eventclass">Amazon Security Lake User Guide</a>.</p>
    #   @return [Array<String>]
    # @!attribute configuration
    #   <p>The configuration used for the third-party custom source.</p>
    #   @return [Types::CustomLogSourceConfiguration]
    class CreateCustomLogSourceRequest < Struct.new(
      :source_name,
      :source_version,
      :event_classes,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source
    #   <p>The third-party custom source that was created.</p>
    #   @return [Types::CustomLogSourceResource]
    class CreateCustomLogSourceResponse < Struct.new(
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_protocol
    #   <p>The subscription protocol to which exception notifications are posted.</p>
    #   @return [String]
    # @!attribute notification_endpoint
    #   <p>The Amazon Web Services account where you want to receive exception notifications.</p>
    #   @return [String]
    # @!attribute exception_time_to_live
    #   <p>The expiration period and time-to-live (TTL). It is the duration of time until which the exception message remains.</p>
    #   @return [Integer]
    class CreateDataLakeExceptionSubscriptionRequest < Struct.new(
      :subscription_protocol,
      :notification_endpoint,
      :exception_time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateDataLakeExceptionSubscriptionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable_new_account
    #   <p>Enable Security Lake with the specified configuration settings, to begin collecting security
    #            data for new accounts in your organization.</p>
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    class CreateDataLakeOrganizationConfigurationRequest < Struct.new(
      :auto_enable_new_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CreateDataLakeOrganizationConfigurationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>Specify the Region or Regions that will contribute data to the rollup region.</p>
    #   @return [Array<Types::DataLakeConfiguration>]
    # @!attribute meta_store_manager_role_arn
    #   <p>The Amazon Resource Name (ARN) used to create and update the Glue table.
    #            This table contains partitions generated by the ingestion and normalization of
    #             Amazon Web Services log sources and custom sources.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of objects, one for each tag to associate with the data lake configuration. For each tag, you must specify both a tag key and a tag value. A tag 
    #            value cannot be null, but it can be an empty string.</p>
    #   @return [Array<Types::Tag>]
    class CreateDataLakeRequest < Struct.new(
      :configurations,
      :meta_store_manager_role_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_lakes
    #   <p>The created Security Lake configuration object.</p>
    #   @return [Array<Types::DataLakeResource>]
    class CreateDataLakeResponse < Struct.new(
      :data_lakes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>The subscriber ID for the notification subscription.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>Specify the configuration using which you want to create the subscriber
    #            notification.</p>
    #   @return [Types::NotificationConfiguration]
    class CreateSubscriberNotificationRequest < Struct.new(
      :subscriber_id,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_endpoint
    #   <p>The subscriber endpoint to which exception messages are posted.</p>
    #   @return [String]
    class CreateSubscriberNotificationResponse < Struct.new(
      :subscriber_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_identity
    #   <p>The Amazon Web Services identity used to access your data.</p>
    #   @return [Types::AwsIdentity]
    # @!attribute subscriber_name
    #   <p>The name of your Security Lake subscriber account.</p>
    #   @return [String]
    # @!attribute subscriber_description
    #   <p>The description for your subscriber account in Security Lake.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The supported Amazon Web Services services from which logs and events are collected.
    #            Security Lake supports log and event collection for natively supported Amazon Web Services services.</p>
    #   @return [Array<Types::LogSourceResource>]
    # @!attribute access_types
    #   <p>The Amazon S3 or Lake Formation access type.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>An array of objects, one for each tag to associate with the subscriber. For each tag, you must specify both a tag key and a tag value. A tag 
    #            value cannot be null, but it can be an empty string.</p>
    #   @return [Array<Types::Tag>]
    class CreateSubscriberRequest < Struct.new(
      :subscriber_identity,
      :subscriber_name,
      :subscriber_description,
      :sources,
      :access_types,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber
    #   <p>Retrieve information about the subscriber created using the
    #               <code>CreateSubscriber</code> API.</p>
    #   @return [Types::SubscriberResource]
    class CreateSubscriberResponse < Struct.new(
      :subscriber,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes of a third-party custom source.</p>
    # @!attribute crawler_arn
    #   <p>The ARN of the Glue crawler.</p>
    #   @return [String]
    # @!attribute database_arn
    #   <p>The ARN of the Glue database where results are written, such as:
    #            <code>arn:aws:daylight:us-east-1::database/sometable/*</code>.</p>
    #   @return [String]
    # @!attribute table_arn
    #   <p>The ARN of the Glue table.</p>
    #   @return [String]
    class CustomLogSourceAttributes < Struct.new(
      :crawler_arn,
      :database_arn,
      :table_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration used for the third-party custom source.</p>
    # @!attribute crawler_configuration
    #   <p>The configuration used for the Glue Crawler for a third-party custom source.</p>
    #   @return [Types::CustomLogSourceCrawlerConfiguration]
    # @!attribute provider_identity
    #   <p>The identity of the log provider for the third-party custom source.</p>
    #   @return [Types::AwsIdentity]
    class CustomLogSourceConfiguration < Struct.new(
      :crawler_configuration,
      :provider_identity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration used for the Glue Crawler for a third-party custom source.</p>
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the Identity and Access Management (IAM) role
    #            to be used by the Glue crawler. The recommended IAM policies
    #            are:</p>
    #            <ul>
    #               <li>
    #                  <p>The managed policy <code>AWSGlueServiceRole</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>A custom policy granting access to your Amazon S3 Data Lake</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class CustomLogSourceCrawlerConfiguration < Struct.new(
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the log provider for a third-party custom source.</p>
    # @!attribute role_arn
    #   <p>The ARN of the IAM role to be used by the entity putting logs into your
    #            custom source partition. Security Lake will apply the correct access policies to this role, but
    #            you must first manually create the trust policy for this role. The IAM role
    #            name must start with the text 'Security Lake'. The IAM role must trust the
    #            <code>logProviderAccountId</code> to assume the role.</p>
    #   @return [String]
    # @!attribute location
    #   <p>The location of the partition in the Amazon S3 bucket for Security Lake.</p>
    #   @return [String]
    class CustomLogSourceProvider < Struct.new(
      :role_arn,
      :location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Security Lake can collect logs and events from third-party custom sources.</p>
    # @!attribute source_name
    #   <p>The name for a third-party custom source. This must be a Regionally unique value.</p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The version for a third-party custom source. This must be a Regionally unique value.</p>
    #   @return [String]
    # @!attribute provider
    #   <p>The details of the log provider for a third-party custom source.</p>
    #   @return [Types::CustomLogSourceProvider]
    # @!attribute attributes
    #   <p>The attributes of a third-party custom source.</p>
    #   @return [Types::CustomLogSourceAttributes]
    class CustomLogSourceResource < Struct.new(
      :source_name,
      :source_version,
      :provider,
      :attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Automatically enable new organization accounts as member accounts from an Amazon Security Lake
    #          administrator account.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions where Security Lake is automatically enabled.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The Amazon Web Services sources that are automatically enabled in Security Lake.</p>
    #   @return [Array<Types::AwsLogSourceResource>]
    class DataLakeAutoEnableNewAccountConfiguration < Struct.new(
      :region,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details of Amazon Security Lake object.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions where Security Lake is automatically enabled.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Provides encryption details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeEncryptionConfiguration]
    # @!attribute lifecycle_configuration
    #   <p>Provides lifecycle details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeLifecycleConfiguration]
    # @!attribute replication_configuration
    #   <p>Provides replication details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeReplicationConfiguration]
    class DataLakeConfiguration < Struct.new(
      :region,
      :encryption_configuration,
      :lifecycle_configuration,
      :replication_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides encryption details of Amazon Security Lake object.</p>
    # @!attribute kms_key_id
    #   <p>The identifier of KMS encryption key used by Amazon Security Lake to encrypt the Security Lake
    #            object.</p>
    #   @return [String]
    class DataLakeEncryptionConfiguration < Struct.new(
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details for an Amazon Security Lake exception.</p>
    # @!attribute region
    #   <p>The Amazon Web Services Regions where the exception occurred.</p>
    #   @return [String]
    # @!attribute exception
    #   <p>The underlying exception of a Security Lake exception.</p>
    #   @return [String]
    # @!attribute remediation
    #   <p>List of all remediation steps for a Security Lake exception.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>This error can occur if you configure the wrong timestamp format, or if the subset of entries used for validation had errors or missing values.</p>
    #   @return [Time]
    class DataLakeException < Struct.new(
      :region,
      :exception,
      :remediation,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides lifecycle details of Amazon Security Lake object.</p>
    # @!attribute expiration
    #   <p>Provides data expiration details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeLifecycleExpiration]
    # @!attribute transitions
    #   <p>Provides data storage transition details of Amazon Security Lake object.</p>
    #   @return [Array<Types::DataLakeLifecycleTransition>]
    class DataLakeLifecycleConfiguration < Struct.new(
      :expiration,
      :transitions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provide expiration lifecycle details of Amazon Security Lake object.</p>
    # @!attribute days
    #   <p>Number of days before data expires in the Amazon Security Lake object.</p>
    #   @return [Integer]
    class DataLakeLifecycleExpiration < Struct.new(
      :days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provide transition lifecycle details of Amazon Security Lake object.</p>
    # @!attribute storage_class
    #   <p>The range of storage classes that you can choose from based on the data access,
    #            resiliency, and cost requirements of your workloads.</p>
    #   @return [String]
    # @!attribute days
    #   <p>Number of days before data transitions to a different S3 Storage Class in the Amazon Security Lake object.</p>
    #   @return [Integer]
    class DataLakeLifecycleTransition < Struct.new(
      :storage_class,
      :days,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides replication details for objects stored in the Amazon Security Lake data lake.</p>
    # @!attribute regions
    #   <p>Specifies one or more centralized rollup Regions. The Amazon Web Services Region specified in the <code>region</code> 
    #             parameter of the <a href="https://docs.aws.amazon.com/security-lake/latest/APIReference/API_CreateDataLake.html">
    #                  <code>CreateDataLake</code>
    #               </a> 
    #             or <a href="https://docs.aws.amazon.com/security-lake/latest/APIReference/API_UpdateDataLake.html">
    #                  <code>UpdateDataLake</code>
    #               </a> operations contributes data to the rollup Region or 
    #           Regions specified in this parameter.</p>
    #            <p>Replication enables automatic, asynchronous copying of objects across Amazon S3
    #              buckets. S3 buckets that are configured for object replication can be owned
    #              by the same Amazon Web Services account or by different accounts. You can replicate objects
    #              to a single destination bucket or to multiple destination buckets. The destination buckets
    #              can be in different Regions or within the same Region as the source bucket.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>Replication settings for the Amazon S3 buckets. This parameter uses the Identity and Access Management (IAM) role you created that is managed by Security Lake, to
    #            ensure the replication setting is correct.</p>
    #   @return [String]
    class DataLakeReplicationConfiguration < Struct.new(
      :regions,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details of Amazon Security Lake object.</p>
    # @!attribute data_lake_arn
    #   <p>The Amazon Resource Name (ARN) created by you to provide to the subscriber. For more information about ARNs and how to use them in policies, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/subscriber-management.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Regions where Security Lake is enabled.</p>
    #   @return [String]
    # @!attribute s3_bucket_arn
    #   <p>The ARN for the Amazon Security Lake Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Provides encryption details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeEncryptionConfiguration]
    # @!attribute lifecycle_configuration
    #   <p>Provides lifecycle details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeLifecycleConfiguration]
    # @!attribute replication_configuration
    #   <p>Provides replication details of Amazon Security Lake object.</p>
    #   @return [Types::DataLakeReplicationConfiguration]
    # @!attribute create_status
    #   <p>Retrieves the status of the <code>CreateDatalake</code> API call for an account in Amazon Security Lake.</p>
    #   @return [String]
    # @!attribute update_status
    #   <p>The status of the last <code>UpdateDataLake </code>or <code>DeleteDataLake</code> API
    #            request.</p>
    #   @return [Types::DataLakeUpdateStatus]
    class DataLakeResource < Struct.new(
      :data_lake_arn,
      :region,
      :s3_bucket_arn,
      :encryption_configuration,
      :lifecycle_configuration,
      :replication_configuration,
      :create_status,
      :update_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Security Lake collects logs and events from supported Amazon Web Services services and
    #          custom sources. For the list of supported Amazon Web Services services, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Amazon Security Lake User Guide</a>.</p>
    # @!attribute account
    #   <p>The ID of the Security Lake account for which logs are collected.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p>The supported Amazon Web Services services from which logs and events are collected.
    #            Amazon Security Lake supports log and event collection for natively supported Amazon Web Services services.</p>
    #   @return [String]
    # @!attribute event_classes
    #   <p>The Open Cybersecurity Schema Framework (OCSF) event classes describes the type of
    #            data that the custom source will send to Security Lake. For the list of supported event classes, see <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/adding-custom-sources.html#ocsf-eventclass.html">Supported OCSF Event classes</a> in the Amazon Security Lake User Guide.</p>
    #   @return [Array<String>]
    # @!attribute source_statuses
    #   <p>The log status for the Security Lake account.</p>
    #   @return [Array<Types::DataLakeSourceStatus>]
    class DataLakeSource < Struct.new(
      :account,
      :source_name,
      :event_classes,
      :source_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Retrieves the Logs status for the Amazon Security Lake account.</p>
    # @!attribute resource
    #   <p>Defines path the stored logs are available which has information on your systems,
    #            applications, and services.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The health status of services, including error codes and patterns.</p>
    #   @return [String]
    class DataLakeSourceStatus < Struct.new(
      :resource,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the last <code>UpdateDataLake</code> or <code>DeleteDataLake</code>
    #          API request which failed.</p>
    # @!attribute reason
    #   <p>The reason for the exception of the last <code>UpdateDataLake</code>or
    #            <code>DeleteDataLake</code> API request.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The reason code for the exception of the last <code>UpdateDataLake</code> or
    #            <code>DeleteDataLake</code> API request.</p>
    #   @return [String]
    class DataLakeUpdateException < Struct.new(
      :reason,
      :code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The status of the last <code>UpdateDataLake</code> or <code>DeleteDataLake</code> API
    #          request. This is set to Completed after the configuration is updated, or removed if
    #          deletion of the data lake is successful.</p>
    # @!attribute request_id
    #   <p>The unique ID for the last <code>UpdateDataLake</code> or <code>DeleteDataLake</code> API
    #            request.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the last <code>UpdateDataLake</code> or <code>DeleteDataLake</code> API
    #            request that was requested.</p>
    #   @return [String]
    # @!attribute exception
    #   <p>The details of the last <code>UpdateDataLake</code>or <code>DeleteDataLake</code> API
    #            request which failed.</p>
    #   @return [Types::DataLakeUpdateException]
    class DataLakeUpdateStatus < Struct.new(
      :request_id,
      :status,
      :exception,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>Specify the natively-supported Amazon Web Services service to remove as a source in
    #            Security Lake.</p>
    #   @return [Array<Types::AwsLogSourceConfiguration>]
    class DeleteAwsLogSourceRequest < Struct.new(
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute failed
    #   <p>Deletion of the Amazon Web Services sources failed as the account is not a part of the organization.</p>
    #   @return [Array<String>]
    class DeleteAwsLogSourceResponse < Struct.new(
      :failed,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_name
    #   <p>The source name of custom log source that you want to delete.</p>
    #   @return [String]
    # @!attribute source_version
    #   <p>The source version for the third-party custom source. You can limit the custom source
    #            removal to the specified source version.</p>
    #   @return [String]
    class DeleteCustomLogSourceRequest < Struct.new(
      :source_name,
      :source_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteCustomLogSourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataLakeExceptionSubscriptionRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataLakeExceptionSubscriptionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable_new_account
    #   <p>Turns off automatic enablement of Security Lake for member accounts that are added to an organization.</p>
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    class DeleteDataLakeOrganizationConfigurationRequest < Struct.new(
      :auto_enable_new_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataLakeOrganizationConfigurationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>The list of Regions where Security Lake is enabled.</p>
    #   @return [Array<String>]
    class DeleteDataLakeRequest < Struct.new(
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteDataLakeResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>The ID of the Security Lake subscriber account.</p>
    #   @return [String]
    class DeleteSubscriberNotificationRequest < Struct.new(
      :subscriber_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSubscriberNotificationResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>A value created by Security Lake that uniquely identifies your <code>DeleteSubscriber</code> API request.</p>
    #   @return [String]
    class DeleteSubscriberRequest < Struct.new(
      :subscriber_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteSubscriberResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterDataLakeDelegatedAdministratorRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeregisterDataLakeDelegatedAdministratorResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetDataLakeExceptionSubscriptionRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_protocol
    #   <p>The subscription protocol to which exception notifications are posted.</p>
    #   @return [String]
    # @!attribute notification_endpoint
    #   <p>The Amazon Web Services account where you receive exception notifications.</p>
    #   @return [String]
    # @!attribute exception_time_to_live
    #   <p>The expiration period and time-to-live (TTL). It is the duration of time until which the exception message remains.</p>
    #   @return [Integer]
    class GetDataLakeExceptionSubscriptionResponse < Struct.new(
      :subscription_protocol,
      :notification_endpoint,
      :exception_time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class GetDataLakeOrganizationConfigurationRequest < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute auto_enable_new_account
    #   <p>The configuration used for new accounts in Security Lake.</p>
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    class GetDataLakeOrganizationConfigurationResponse < Struct.new(
      :auto_enable_new_account,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>The Amazon Web Services account ID for which a static snapshot of the current Amazon Web Services Region, including enabled accounts and log sources, is retrieved.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>The maximum limit of accounts for which the static snapshot of the current Region,
    #            including enabled accounts and log sources, is retrieved.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    class GetDataLakeSourcesRequest < Struct.new(
      :accounts,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_lake_arn
    #   <p>The Amazon Resource Name (ARN) created by you to provide to the subscriber. For more information about ARNs and how to use them in policies, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/subscriber-management.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [String]
    # @!attribute data_lake_sources
    #   <p>The list of enabled accounts and enabled sources.</p>
    #   @return [Array<Types::DataLakeSource>]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    class GetDataLakeSourcesResponse < Struct.new(
      :data_lake_arn,
      :data_lake_sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>A value created by Amazon Security Lake that uniquely identifies your
    #               <code>GetSubscriber</code> API request.</p>
    #   @return [String]
    class GetSubscriberRequest < Struct.new(
      :subscriber_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber
    #   <p>The subscriber information for the specified subscriber ID.</p>
    #   @return [Types::SubscriberResource]
    class GetSubscriberResponse < Struct.new(
      :subscriber,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations used for HTTPS subscriber notification.</p>
    # @!attribute endpoint
    #   <p>The subscription endpoint in Security Lake. If you prefer notification with an HTTPs
    #            endpoint, populate this field.</p>
    #   @return [String]
    # @!attribute authorization_api_key_name
    #   <p>The key name for the notification subscription.</p>
    #   @return [String]
    # @!attribute authorization_api_key_value
    #   <p>The key value for the notification subscription.</p>
    #   @return [String]
    # @!attribute http_method
    #   <p>The HTTPS method used for the notification subscription.</p>
    #   @return [String]
    # @!attribute target_role_arn
    #   <p>The Amazon Resource Name (ARN) of the EventBridge API destinations IAM role that you
    #            created. For more information about ARNs and how to use them in policies, see <a href="https://docs.aws.amazon.com//security-lake/latest/userguide/subscriber-data-access.html">Managing data access</a> and <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/security-iam-awsmanpol.html">Amazon Web Services
    #               Managed Policies</a> in the <i>Amazon Security Lake User Guide</i>.</p>
    #   @return [String]
    class HttpsNotificationConfiguration < Struct.new(
      :endpoint,
      :authorization_api_key_name,
      :authorization_api_key_value,
      :http_method,
      :target_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Internal service exceptions are sometimes caused by transient issues. Before you start
    #          troubleshooting, perform the operation again.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>The Amazon Web Services Regions from which exceptions are retrieved.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Lists the maximum number of failures in Security Lake.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    class ListDataLakeExceptionsRequest < Struct.new(
      :regions,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute exceptions
    #   <p>Lists the failures that cannot be retried.</p>
    #   @return [Array<Types::DataLakeException>]
    # @!attribute next_token
    #   <p>Lists if there are more results available. The value of nextToken is a unique pagination
    #            token for each page. Repeat the call using the returned token to retrieve the next page.
    #            Keep all other arguments unchanged.</p>
    #            <p>Each pagination token expires after 24 hours. Using an expired pagination token will
    #            return an HTTP 400 InvalidToken error.</p>
    #   @return [String]
    class ListDataLakeExceptionsResponse < Struct.new(
      :exceptions,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute regions
    #   <p>The list of Regions where Security Lake is enabled.</p>
    #   @return [Array<String>]
    class ListDataLakesRequest < Struct.new(
      :regions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_lakes
    #   <p>Retrieves the Security Lake configuration object.</p>
    #   @return [Array<Types::DataLakeResource>]
    class ListDataLakesResponse < Struct.new(
      :data_lakes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accounts
    #   <p>The list of Amazon Web Services accounts for which log sources are displayed.</p>
    #   @return [Array<String>]
    # @!attribute regions
    #   <p>The list of Regions for which log sources are displayed.</p>
    #   @return [Array<String>]
    # @!attribute sources
    #   <p>The list of sources for which log sources are displayed.</p>
    #   @return [Array<Types::LogSourceResource>]
    # @!attribute max_results
    #   <p>The maximum number of accounts for which the log sources are displayed.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #            using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListLogSourcesRequest < Struct.new(
      :accounts,
      :regions,
      :sources,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute sources
    #   <p>The list of log sources in your organization that send data to the data lake.</p>
    #   @return [Array<Types::LogSource>]
    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #         using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListLogSourcesResponse < Struct.new(
      :sources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #            using the returned token to retrieve the next page.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of accounts for which the configuration is displayed.</p>
    #   @return [Integer]
    class ListSubscribersRequest < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscribers
    #   <p>The subscribers available for the specified Security Lake account ID.</p>
    #   @return [Array<Types::SubscriberResource>]
    # @!attribute next_token
    #   <p>If nextToken is returned, there are more results available. You can repeat the call
    #            using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListSubscribersResponse < Struct.new(
      :subscribers,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource for which you want to retrieve the tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>An array of objects, one for each tag (key and value) that’s associated with the Amazon Security Lake resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Amazon Security Lake can collect logs and events from natively-supported Amazon Web Services services and custom sources. </p>
    # @!attribute account
    #   <p>Specify the account from which you want to collect logs.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Specify the Regions from which you want to collect logs.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>Specify the sources from which you want to collect logs.</p>
    #   @return [Array<Types::LogSourceResource>]
    class LogSource < Struct.new(
      :account,
      :region,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The supported source types from which logs and events are collected in Amazon Security Lake.
    #          For a list of supported Amazon Web Services services, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Amazon Security Lake User Guide</a>.</p>
    # @!attribute aws_log_source
    #   <p>Amazon Security Lake supports log and event collection for natively supported Amazon Web Services services. For more information, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [Types::AwsLogSourceResource]
    # @!attribute custom_log_source
    #   <p>Amazon Security Lake supports custom source types. For more information, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/custom-sources.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [Types::CustomLogSourceResource]
    class LogSourceResource < Struct.new(
      :aws_log_source,
      :custom_log_source,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AwsLogSource < LogSourceResource; end
      class CustomLogSource < LogSourceResource; end
      class Unknown < LogSourceResource; end
    end

    # <p>Specify the configurations you want to use for subscriber notification to notify the
    #          subscriber when new data is written to the data lake for sources that the subscriber
    #          consumes in Security Lake. </p>
    # @!attribute sqs_notification_configuration
    #   <p>The configurations for SQS subscriber notification.</p>
    #   @return [Types::SqsNotificationConfiguration]
    # @!attribute https_notification_configuration
    #   <p>The configurations used for HTTPS subscriber notification.</p>
    #   @return [Types::HttpsNotificationConfiguration]
    class NotificationConfiguration < Struct.new(
      :sqs_notification_configuration,
      :https_notification_configuration,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SqsNotificationConfiguration < NotificationConfiguration; end
      class HttpsNotificationConfiguration < NotificationConfiguration; end
      class Unknown < NotificationConfiguration; end
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account ID of the Security Lake delegated administrator.</p>
    #   @return [String]
    class RegisterDataLakeDelegatedAdministratorRequest < Struct.new(
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class RegisterDataLakeDelegatedAdministratorResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The resource could not be found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_name
    #   <p>The name of the resource that could not be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configurations used for EventBridge subscriber notification.</p>
    class SqsNotificationConfiguration < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides details about the Amazon Security Lake account subscription. Subscribers are notified
    #          of new objects for a source as the data is written to your Amazon S3 bucket for
    #          Security Lake.</p>
    # @!attribute subscriber_id
    #   <p>The subscriber ID of the Amazon Security Lake subscriber account.</p>
    #   @return [String]
    # @!attribute subscriber_arn
    #   <p>The subscriber ARN of the Amazon Security Lake subscriber account.</p>
    #   @return [String]
    # @!attribute subscriber_identity
    #   <p>The Amazon Web Services identity used to access your data.</p>
    #   @return [Types::AwsIdentity]
    # @!attribute subscriber_name
    #   <p>The name of your Amazon Security Lake subscriber account.</p>
    #   @return [String]
    # @!attribute subscriber_description
    #   <p>The subscriber descriptions for a subscriber account. The description for a subscriber
    #            includes <code>subscriberName</code>, <code>accountID</code>, <code>externalID</code>, and
    #            <code>subscriberId</code>.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>Amazon Security Lake supports log and event collection for natively supported Amazon Web Services services. For more information, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/source-management.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [Array<Types::LogSourceResource>]
    # @!attribute access_types
    #   <p>You can choose to notify subscribers of new objects with an Amazon Simple Queue Service
    #               (Amazon SQS) queue or through messaging to an HTTPS endpoint provided by the
    #            subscriber.</p>
    #            <p> Subscribers can consume data by directly querying Lake Formation tables in your
    #               Amazon S3 bucket through services like Amazon Athena. This subscription
    #            type is defined as <code>LAKEFORMATION</code>.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) specifying the role of the subscriber.</p>
    #   @return [String]
    # @!attribute s3_bucket_arn
    #   <p>The ARN for the Amazon S3 bucket.</p>
    #   @return [String]
    # @!attribute subscriber_endpoint
    #   <p>The subscriber endpoint to which exception messages are posted.</p>
    #   @return [String]
    # @!attribute subscriber_status
    #   <p>The subscriber status of the Amazon Security Lake subscriber account.</p>
    #   @return [String]
    # @!attribute resource_share_arn
    #   <p>The Amazon Resource Name (ARN) which uniquely defines the Amazon Web Services RAM resource share. Before
    #            accepting the RAM resource share invitation, you can view details related to the RAM
    #            resource share.</p>
    #            <p>This field is available only for Lake Formation subscribers created after March 8, 2023.</p>
    #   @return [String]
    # @!attribute resource_share_name
    #   <p>The name of the resource share.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time when the subscriber was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The date and time when the subscriber was last updated.</p>
    #   @return [Time]
    class SubscriberResource < Struct.new(
      :subscriber_id,
      :subscriber_arn,
      :subscriber_identity,
      :subscriber_name,
      :subscriber_description,
      :sources,
      :access_types,
      :role_arn,
      :s3_bucket_arn,
      :subscriber_endpoint,
      :subscriber_status,
      :resource_share_arn,
      :resource_share_name,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A <i>tag</i> is a label that you can define and associate with Amazon Web Services resources, including certain types of Amazon Security Lake resources. 
    #          Tags can help you identify, categorize, and manage resources in different ways, such as by owner, environment, or other criteria. You can associate tags with 
    #          the following types of Security Lake resources: subscribers, and the data lake configuration for your Amazon Web Services account in individual Amazon Web Services Regions.</p>
    #          <p>A resource can have up to 50 tags. Each tag consists of a required <i>tag key</i> and an associated <i>tag value</i>. A 
    #          <i>tag key</i> is a general label that acts as a category for a more specific tag value. Each tag key must be unique and it can have only one tag 
    #          value. A <i>tag value</i> acts as a descriptor for a tag key. Tag keys and values are case sensitive. They can contain letters, numbers, spaces, 
    #          or the following symbols: _ . : / = + @ -</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/tagging-resources.html">Tagging Amazon Security Lake resources</a> in 
    #          the <i>Amazon Security Lake User Guide</i>.</p>
    # @!attribute key
    #   <p>The  name of the tag. This is a general label that acts as a category for a more specific tag value (<code>value</code>).</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value that’s associated with the specified tag key (<code>key</code>). This value acts as a descriptor for the tag key. A tag value cannot be 
    #            null, but it can be an empty string.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource to add or update the tags for.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>An array of objects, one for each tag (key and value) to associate with the Amazon Security Lake resource. For each tag, you must 
    #            specify both a tag key and a tag value. A tag value cannot be null, but it can be an empty string.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the service in Service Quotas.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>That the rate of requests to Security Lake is exceeding the request quotas for your Amazon Web Services account.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>Retry the request after the specified time.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon Security Lake resource to remove one or more tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>A list of one or more tag keys. For each value in the list, specify the tag key for a tag to remove from the Amazon Security Lake resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscription_protocol
    #   <p>The subscription protocol to which exception messages are posted.</p>
    #   @return [String]
    # @!attribute notification_endpoint
    #   <p>The account that is subscribed to receive exception notifications.</p>
    #   @return [String]
    # @!attribute exception_time_to_live
    #   <p>The time-to-live (TTL) for the exception message to remain. It is the duration of time until which the exception message remains. </p>
    #   @return [Integer]
    class UpdateDataLakeExceptionSubscriptionRequest < Struct.new(
      :subscription_protocol,
      :notification_endpoint,
      :exception_time_to_live,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateDataLakeExceptionSubscriptionResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configurations
    #   <p>Specifies the Region or Regions that will contribute data to the rollup region.</p>
    #   @return [Array<Types::DataLakeConfiguration>]
    # @!attribute meta_store_manager_role_arn
    #   <p>The Amazon Resource Name (ARN) used to create and update the Glue table.
    #            This table contains partitions generated by the ingestion and normalization of
    #            Amazon Web Services log sources and custom sources.</p>
    #   @return [String]
    class UpdateDataLakeRequest < Struct.new(
      :configurations,
      :meta_store_manager_role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data_lakes
    #   <p>The created Security Lake configuration object.</p>
    #   @return [Array<Types::DataLakeResource>]
    class UpdateDataLakeResponse < Struct.new(
      :data_lakes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>The subscription ID for which the subscription notification is specified.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration for subscriber notification.</p>
    #   @return [Types::NotificationConfiguration]
    class UpdateSubscriberNotificationRequest < Struct.new(
      :subscriber_id,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_endpoint
    #   <p>The subscriber endpoint to which exception messages are posted.</p>
    #   @return [String]
    class UpdateSubscriberNotificationResponse < Struct.new(
      :subscriber_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber_id
    #   <p>A value created by Security Lake that uniquely identifies your subscription.</p>
    #   @return [String]
    # @!attribute subscriber_identity
    #   <p>The Amazon Web Services identity used to access your data.</p>
    #   @return [Types::AwsIdentity]
    # @!attribute subscriber_name
    #   <p>The name of the Security Lake account subscriber.</p>
    #   @return [String]
    # @!attribute subscriber_description
    #   <p>The description of the Security Lake account subscriber.</p>
    #   @return [String]
    # @!attribute sources
    #   <p>The supported Amazon Web Services services from which logs and events are collected. For
    #            the list of supported Amazon Web Services services, see the <a href="https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html">Amazon Security Lake User Guide</a>.</p>
    #   @return [Array<Types::LogSourceResource>]
    class UpdateSubscriberRequest < Struct.new(
      :subscriber_id,
      :subscriber_identity,
      :subscriber_name,
      :subscriber_description,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute subscriber
    #   <p>The updated subscriber information.</p>
    #   @return [Types::SubscriberResource]
    class UpdateSubscriberResponse < Struct.new(
      :subscriber,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
