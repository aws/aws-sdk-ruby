# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityLake
  module Types

    # You do not have sufficient access to perform this action. Access
    # denied errors appear when Amazon Security Lake explicitly or
    # implicitly denies an authorization request. An explicit denial occurs
    # when a policy contains a Deny statement for the specific Amazon Web
    # Services action. An implicit denial occurs when there is no applicable
    # Deny statement and also no applicable Allow statement.
    #
    # @!attribute [rw] error_code
    #   A coded string to provide more information about the access denied
    #   exception. You can use the error code to check the exception type.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :error_code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS identity.
    #
    # @!attribute [rw] external_id
    #   The external ID used to estalish trust relationship with the AWS
    #   identity.
    #   @return [String]
    #
    # @!attribute [rw] principal
    #   The AWS identity principal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AwsIdentity AWS API Documentation
    #
    class AwsIdentity < Struct.new(
      :external_id,
      :principal)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Security Lake logs source configuration file describes the
    # information needed to generate Security Lake logs.
    #
    # @!attribute [rw] accounts
    #   Specify the Amazon Web Services account information where you want
    #   to enable Security Lake.
    #   @return [Array<String>]
    #
    # @!attribute [rw] regions
    #   Specify the Regions where you want to enable Security Lake.
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_name
    #   The name for a Amazon Web Services source. This must be a Regionally
    #   unique value.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The version for a Amazon Web Services source. This must be a
    #   Regionally unique value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AwsLogSourceConfiguration AWS API Documentation
    #
    class AwsLogSourceConfiguration < Struct.new(
      :accounts,
      :regions,
      :source_name,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake can collect logs and events from
    # natively-supported Amazon Web Services services.
    #
    # @!attribute [rw] source_name
    #   The name for a Amazon Web Services source. This must be a Regionally
    #   unique value.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The version for a Amazon Web Services source. This must be a
    #   Regionally unique value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AwsLogSourceResource AWS API Documentation
    #
    class AwsLogSourceResource < Struct.new(
      :source_name,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is malformed or contains an error such as an invalid
    # parameter value or a missing required parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when a conflict with a previous successful write is detected.
    # This generally occurs when the previous write did not have time to
    # propagate to the host serving the current request. A retry (with
    # appropriate backoff logic) is the recommended response to this
    # exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The resource name.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   Specify the natively-supported Amazon Web Services service to add as
    #   a source in Security Lake.
    #   @return [Array<Types::AwsLogSourceConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateAwsLogSourceRequest AWS API Documentation
    #
    class CreateAwsLogSourceRequest < Struct.new(
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   Lists all accounts in which enabling a natively supported Amazon Web
    #   Service as a Security Lake source failed. The failure occurred as
    #   these accounts are not part of an organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateAwsLogSourceResponse AWS API Documentation
    #
    class CreateAwsLogSourceResponse < Struct.new(
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration for the third-party custom source.
    #   @return [Types::CustomLogSourceConfiguration]
    #
    # @!attribute [rw] event_classes
    #   The Open Cybersecurity Schema Framework (OCSF) event classes which
    #   describes the type of data that the custom source will send to
    #   Security Lake. The supported event classes are:
    #
    #   * `ACCESS_ACTIVITY`
    #
    #   * `FILE_ACTIVITY`
    #
    #   * `KERNEL_ACTIVITY`
    #
    #   * `KERNEL_EXTENSION`
    #
    #   * `MEMORY_ACTIVITY`
    #
    #   * `MODULE_ACTIVITY`
    #
    #   * `PROCESS_ACTIVITY`
    #
    #   * `REGISTRY_KEY_ACTIVITY`
    #
    #   * `REGISTRY_VALUE_ACTIVITY`
    #
    #   * `RESOURCE_ACTIVITY`
    #
    #   * `SCHEDULED_JOB_ACTIVITY`
    #
    #   * `SECURITY_FINDING`
    #
    #   * `ACCOUNT_CHANGE`
    #
    #   * `AUTHENTICATION`
    #
    #   * `AUTHORIZATION`
    #
    #   * `ENTITY_MANAGEMENT_AUDIT`
    #
    #   * `DHCP_ACTIVITY`
    #
    #   * `NETWORK_ACTIVITY`
    #
    #   * `DNS_ACTIVITY`
    #
    #   * `FTP_ACTIVITY`
    #
    #   * `HTTP_ACTIVITY`
    #
    #   * `RDP_ACTIVITY`
    #
    #   * `SMB_ACTIVITY`
    #
    #   * `SSH_ACTIVITY`
    #
    #   * `CONFIG_STATE`
    #
    #   * `INVENTORY_INFO`
    #
    #   * `EMAIL_ACTIVITY`
    #
    #   * `API_ACTIVITY`
    #
    #   * `CLOUD_API`
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_name
    #   Specify the name for a third-party custom source. This must be a
    #   Regionally unique value.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   Specify the source version for the third-party custom source, to
    #   limit log collection to a specific version of custom data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateCustomLogSourceRequest AWS API Documentation
    #
    class CreateCustomLogSourceRequest < Struct.new(
      :configuration,
      :event_classes,
      :source_name,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source
    #   The created third-party custom source.
    #   @return [Types::CustomLogSourceResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateCustomLogSourceResponse AWS API Documentation
    #
    class CreateCustomLogSourceResponse < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_time_to_live
    #   The expiration period and time-to-live (TTL).
    #   @return [Integer]
    #
    # @!attribute [rw] notification_endpoint
    #   The Amazon Web Services account where you want to receive exception
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] subscription_protocol
    #   The subscription protocol to which exception notifications are
    #   posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeExceptionSubscriptionRequest AWS API Documentation
    #
    class CreateDataLakeExceptionSubscriptionRequest < Struct.new(
      :exception_time_to_live,
      :notification_endpoint,
      :subscription_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeExceptionSubscriptionResponse AWS API Documentation
    #
    class CreateDataLakeExceptionSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable_new_account
    #   Enable Security Lake with the specified configuration settings, to
    #   begin collecting security data for new accounts in your
    #   organization.
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeOrganizationConfigurationRequest AWS API Documentation
    #
    class CreateDataLakeOrganizationConfigurationRequest < Struct.new(
      :auto_enable_new_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeOrganizationConfigurationResponse AWS API Documentation
    #
    class CreateDataLakeOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configurations
    #   Specify the Region or Regions that will contribute data to the
    #   rollup region.
    #   @return [Array<Types::DataLakeConfiguration>]
    #
    # @!attribute [rw] meta_store_manager_role_arn
    #   The Amazon Resource Name (ARN) used to create and update the Glue
    #   table. This table contains partitions generated by the ingestion and
    #   normalization of Amazon Web Services log sources and custom sources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeRequest AWS API Documentation
    #
    class CreateDataLakeRequest < Struct.new(
      :configurations,
      :meta_store_manager_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_lakes
    #   The created Security Lake configuration object.
    #   @return [Array<Types::DataLakeResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDataLakeResponse AWS API Documentation
    #
    class CreateDataLakeResponse < Struct.new(
      :data_lakes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   Specify the configuration using which you want to create the
    #   subscriber notification.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] subscriber_id
    #   The subscriber ID for the notification subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberNotificationRequest AWS API Documentation
    #
    class CreateSubscriberNotificationRequest < Struct.new(
      :configuration,
      :subscriber_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_endpoint
    #   The subscriber endpoint to which exception messages are posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberNotificationResponse AWS API Documentation
    #
    class CreateSubscriberNotificationResponse < Struct.new(
      :subscriber_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] access_types
    #   The Amazon S3 or Lake Formation access type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Security Lake supports log and event collection for
    #   natively supported Amazon Web Services.
    #   @return [Array<Types::LogSourceResource>]
    #
    # @!attribute [rw] subscriber_description
    #   The description for your subscriber account in Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_identity
    #   The AWS identity used to access your data.
    #   @return [Types::AwsIdentity]
    #
    # @!attribute [rw] subscriber_name
    #   The name of your Security Lake subscriber account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberRequest AWS API Documentation
    #
    class CreateSubscriberRequest < Struct.new(
      :access_types,
      :sources,
      :subscriber_description,
      :subscriber_identity,
      :subscriber_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber
    #   Retrieve information about the subscriber created using the
    #   `CreateSubscriber` API.
    #   @return [Types::SubscriberResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberResponse AWS API Documentation
    #
    class CreateSubscriberResponse < Struct.new(
      :subscriber)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attributes of a third-party custom source.
    #
    # @!attribute [rw] crawler_arn
    #   The ARN of the Glue crawler.
    #   @return [String]
    #
    # @!attribute [rw] database_arn
    #   The ARN of the Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] table_arn
    #   The ARN of the Glue table.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CustomLogSourceAttributes AWS API Documentation
    #
    class CustomLogSourceAttributes < Struct.new(
      :crawler_arn,
      :database_arn,
      :table_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the third-party custom source.
    #
    # @!attribute [rw] crawler_configuration
    #   The configuration for the Glue Crawler for the third-party custom
    #   source.
    #   @return [Types::CustomLogSourceCrawlerConfiguration]
    #
    # @!attribute [rw] provider_identity
    #   The identity of the log provider for the third-party custom source.
    #   @return [Types::AwsIdentity]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CustomLogSourceConfiguration AWS API Documentation
    #
    class CustomLogSourceConfiguration < Struct.new(
      :crawler_configuration,
      :provider_identity)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for the Glue Crawler for the third-party custom
    # source.
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role to be used by the Glue crawler. The recommended IAM
    #   policies are:
    #
    #   * The managed policy `AWSGlueServiceRole`
    #
    #   * A custom policy granting access to your Amazon S3 Data Lake
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CustomLogSourceCrawlerConfiguration AWS API Documentation
    #
    class CustomLogSourceCrawlerConfiguration < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the log provider for a third-party custom source.
    #
    # @!attribute [rw] location
    #   The location of the partition in the Amazon S3 bucket for Security
    #   Lake.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role to be used by the entity putting logs into
    #   your custom source partition. Security Lake will apply the correct
    #   access policies to this role, but you must first manually create the
    #   trust policy for this role. The IAM role name must start with the
    #   text 'Security Lake'. The IAM role must trust the
    #   `logProviderAccountId` to assume the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CustomLogSourceProvider AWS API Documentation
    #
    class CustomLogSourceProvider < Struct.new(
      :location,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake can collect logs and events from third-party
    # custom sources.
    #
    # @!attribute [rw] attributes
    #   The attributes of a third-party custom source.
    #   @return [Types::CustomLogSourceAttributes]
    #
    # @!attribute [rw] provider
    #   The details of the log provider for a third-party custom source.
    #   @return [Types::CustomLogSourceProvider]
    #
    # @!attribute [rw] source_name
    #   The name for a third-party custom source. This must be a Regionally
    #   unique value.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The version for a third-party custom source. This must be a
    #   Regionally unique value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CustomLogSourceResource AWS API Documentation
    #
    class CustomLogSourceResource < Struct.new(
      :attributes,
      :provider,
      :source_name,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Automatically enable new organization accounts as member accounts from
    # an Amazon Security Lake administrator account.
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions where Security Lake is automatically
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The Amazon Web Services sources that are automatically enabled in
    #   Security Lake.
    #   @return [Array<Types::AwsLogSourceResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeAutoEnableNewAccountConfiguration AWS API Documentation
    #
    class DataLakeAutoEnableNewAccountConfiguration < Struct.new(
      :region,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of Amazon Security Lake object.
    #
    # @!attribute [rw] encryption_configuration
    #   Provides encryption details of Amazon Security Lake object.
    #   @return [Types::DataLakeEncryptionConfiguration]
    #
    # @!attribute [rw] lifecycle_configuration
    #   Provides lifecycle details of Amazon Security Lake object.
    #   @return [Types::DataLakeLifecycleConfiguration]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions where Security Lake is automatically
    #   enabled.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration
    #   Provides replication details of Amazon Security Lake object.
    #   @return [Types::DataLakeReplicationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeConfiguration AWS API Documentation
    #
    class DataLakeConfiguration < Struct.new(
      :encryption_configuration,
      :lifecycle_configuration,
      :region,
      :replication_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides encryption details of Amazon Security Lake object.
    #
    # @!attribute [rw] kms_key_id
    #   The id of KMS encryption key used by Amazon Security Lake to encrypt
    #   the Security Lake object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeEncryptionConfiguration AWS API Documentation
    #
    class DataLakeEncryptionConfiguration < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details for a Security Lake exception
    #
    # @!attribute [rw] exception
    #   The underlying exception of a Security Lake exception.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions where the exception occurred.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   List of all remediation steps for a Security Lake exception.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   This error can occur if you configure the wrong timestamp format, or
    #   if the subset of entries used for validation had errors or missing
    #   values.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeException AWS API Documentation
    #
    class DataLakeException < Struct.new(
      :exception,
      :region,
      :remediation,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides lifecycle details of Amazon Security Lake object.
    #
    # @!attribute [rw] expiration
    #   Provides data expiration details of Amazon Security Lake object.
    #   @return [Types::DataLakeLifecycleExpiration]
    #
    # @!attribute [rw] transitions
    #   Provides data storage transition details of Amazon Security Lake
    #   object.
    #   @return [Array<Types::DataLakeLifecycleTransition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeLifecycleConfiguration AWS API Documentation
    #
    class DataLakeLifecycleConfiguration < Struct.new(
      :expiration,
      :transitions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide expiration lifecycle details of Amazon Security Lake object.
    #
    # @!attribute [rw] days
    #   Number of days before data expires in the Amazon Security Lake
    #   object.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeLifecycleExpiration AWS API Documentation
    #
    class DataLakeLifecycleExpiration < Struct.new(
      :days)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide transition lifecycle details of Amazon Security Lake object.
    #
    # @!attribute [rw] days
    #   Number of days before data transitions to a different S3 Storage
    #   Class in the Amazon Security Lake object.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The range of storage classes that you can choose from based on the
    #   data access, resiliency, and cost requirements of your workloads.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeLifecycleTransition AWS API Documentation
    #
    class DataLakeLifecycleTransition < Struct.new(
      :days,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides replication details of Amazon Security Lake object.
    #
    # @!attribute [rw] regions
    #   Replication enables automatic, asynchronous copying of objects
    #   across Amazon S3 buckets. Amazon S3 buckets that are configured for
    #   object replication can be owned by the same Amazon Web Services
    #   account or by different accounts. You can replicate objects to a
    #   single destination bucket or to multiple destination buckets. The
    #   destination buckets can be in different Amazon Web Services Regions
    #   or within the same Region as the source bucket.
    #
    #   Set up one or more rollup Regions by providing the Region or Regions
    #   that should contribute to the central rollup Region.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   Replication settings for the Amazon S3 buckets. This parameter uses
    #   the Identity and Access Management (IAM) role you created that is
    #   managed by Security Lake, to ensure the replication setting is
    #   correct.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeReplicationConfiguration AWS API Documentation
    #
    class DataLakeReplicationConfiguration < Struct.new(
      :regions,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of Amazon Security Lake object.
    #
    # @!attribute [rw] create_status
    #   Retrieves the status of the configuration operation for an account
    #   in Amazon Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] data_lake_arn
    #   The Amazon Resource Name (ARN) created by you to provide to the
    #   subscriber. For more information about ARNs and how to use them in
    #   policies, see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/subscriber-management.html
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Provides encryption details of Amazon Security Lake object.
    #   @return [Types::DataLakeEncryptionConfiguration]
    #
    # @!attribute [rw] lifecycle_configuration
    #   Provides lifecycle details of Amazon Security Lake object.
    #   @return [Types::DataLakeLifecycleConfiguration]
    #
    # @!attribute [rw] region
    #   The Amazon Web Services Regions where Security Lake is enabled.
    #   @return [String]
    #
    # @!attribute [rw] replication_configuration
    #   Provides replication details of Amazon Security Lake object.
    #   @return [Types::DataLakeReplicationConfiguration]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The ARN for the Amazon Security Lake Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] update_status
    #   The status of the last `UpdateDataLake `or `DeleteDataLake` API
    #   request.
    #   @return [Types::DataLakeUpdateStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeResource AWS API Documentation
    #
    class DataLakeResource < Struct.new(
      :create_status,
      :data_lake_arn,
      :encryption_configuration,
      :lifecycle_configuration,
      :region,
      :replication_configuration,
      :s3_bucket_arn,
      :update_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake collects logs and events from supported Amazon
    # Web Services and custom sources. For the list of supported Amazon Web
    # Services, see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html
    #
    # @!attribute [rw] account
    #   The ID of the Security Lake account for which logs are collected.
    #   @return [String]
    #
    # @!attribute [rw] event_classes
    #   The Open Cybersecurity Schema Framework (OCSF) event classes which
    #   describes the type of data that the custom source will send to
    #   Security Lake. The supported event classes are:
    #
    #   * `ACCESS_ACTIVITY`
    #
    #   * `FILE_ACTIVITY`
    #
    #   * `KERNEL_ACTIVITY`
    #
    #   * `KERNEL_EXTENSION`
    #
    #   * `MEMORY_ACTIVITY`
    #
    #   * `MODULE_ACTIVITY`
    #
    #   * `PROCESS_ACTIVITY`
    #
    #   * `REGISTRY_KEY_ACTIVITY`
    #
    #   * `REGISTRY_VALUE_ACTIVITY`
    #
    #   * `RESOURCE_ACTIVITY`
    #
    #   * `SCHEDULED_JOB_ACTIVITY`
    #
    #   * `SECURITY_FINDING`
    #
    #   * `ACCOUNT_CHANGE`
    #
    #   * `AUTHENTICATION`
    #
    #   * `AUTHORIZATION`
    #
    #   * `ENTITY_MANAGEMENT_AUDIT`
    #
    #   * `DHCP_ACTIVITY`
    #
    #   * `NETWORK_ACTIVITY`
    #
    #   * `DNS_ACTIVITY`
    #
    #   * `FTP_ACTIVITY`
    #
    #   * `HTTP_ACTIVITY`
    #
    #   * `RDP_ACTIVITY`
    #
    #   * `SMB_ACTIVITY`
    #
    #   * `SSH_ACTIVITY`
    #
    #   * `CONFIG_STATE`
    #
    #   * `INVENTORY_INFO`
    #
    #   * `EMAIL_ACTIVITY`
    #
    #   * `API_ACTIVITY`
    #
    #   * `CLOUD_API`
    #   @return [Array<String>]
    #
    # @!attribute [rw] source_name
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Amazon Security Lake supports log and event collection
    #   for natively supported Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] source_statuses
    #   The log status for the Security Lake account.
    #   @return [Array<Types::DataLakeSourceStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeSource AWS API Documentation
    #
    class DataLakeSource < Struct.new(
      :account,
      :event_classes,
      :source_name,
      :source_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retrieves the Logs status for the Amazon Security Lake account.
    #
    # @!attribute [rw] resource
    #   Defines path the stored logs are available which has information on
    #   your systems, applications, and services.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The health status of services, including error codes and patterns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeSourceStatus AWS API Documentation
    #
    class DataLakeSourceStatus < Struct.new(
      :resource,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the last `UpdateDataLake` or `DeleteDataLake` API
    # request which failed.
    #
    # @!attribute [rw] code
    #   The reason code for the exception of the last `UpdateDataLake` or
    #   `DeleteDataLake` API request.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the exception of the last `UpdateDataLake`or
    #   `DeleteDataLake` API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeUpdateException AWS API Documentation
    #
    class DataLakeUpdateException < Struct.new(
      :code,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status of the last `UpdateDataLake` or `DeleteDataLake` API
    # request. This is set to Completed after the configuration is updated,
    # or removed if deletion of the data lake is successful.
    #
    # @!attribute [rw] exception
    #   The details of the last `UpdateDataLake`or `DeleteDataLake` API
    #   request which failed.
    #   @return [Types::DataLakeUpdateException]
    #
    # @!attribute [rw] request_id
    #   The unique ID for the last `UpdateDataLake` or `DeleteDataLake` API
    #   request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the last `UpdateDataLake` or `DeleteDataLake` API
    #   request that was requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DataLakeUpdateStatus AWS API Documentation
    #
    class DataLakeUpdateStatus < Struct.new(
      :exception,
      :request_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   Specify the natively-supported Amazon Web Services service to remove
    #   as a source in Security Lake.
    #   @return [Array<Types::AwsLogSourceConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSourceRequest AWS API Documentation
    #
    class DeleteAwsLogSourceRequest < Struct.new(
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   Deletion of the Amazon Web Services sources failed as the account is
    #   not a part of the organization.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSourceResponse AWS API Documentation
    #
    class DeleteAwsLogSourceResponse < Struct.new(
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] source_name
    #   The source name of custom log source that you want to delete.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The source version for the third-party custom source. You can limit
    #   the custom source removal to the specified source version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSourceRequest AWS API Documentation
    #
    class DeleteCustomLogSourceRequest < Struct.new(
      :source_name,
      :source_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSourceResponse AWS API Documentation
    #
    class DeleteCustomLogSourceResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeExceptionSubscriptionRequest AWS API Documentation
    #
    class DeleteDataLakeExceptionSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeExceptionSubscriptionResponse AWS API Documentation
    #
    class DeleteDataLakeExceptionSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable_new_account
    #   Removes the automatic enablement of configuration settings for new
    #   member accounts in Security Lake.
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeOrganizationConfigurationRequest AWS API Documentation
    #
    class DeleteDataLakeOrganizationConfigurationRequest < Struct.new(
      :auto_enable_new_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeOrganizationConfigurationResponse AWS API Documentation
    #
    class DeleteDataLakeOrganizationConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] regions
    #   The list of Regions where Security Lake is enabled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeRequest AWS API Documentation
    #
    class DeleteDataLakeRequest < Struct.new(
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDataLakeResponse AWS API Documentation
    #
    class DeleteDataLakeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] subscriber_id
    #   The ID of the Security Lake subscriber account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberNotificationRequest AWS API Documentation
    #
    class DeleteSubscriberNotificationRequest < Struct.new(
      :subscriber_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberNotificationResponse AWS API Documentation
    #
    class DeleteSubscriberNotificationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] subscriber_id
    #   A value created by Security Lake that uniquely identifies your
    #   `DeleteSubscriber` API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberRequest AWS API Documentation
    #
    class DeleteSubscriberRequest < Struct.new(
      :subscriber_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberResponse AWS API Documentation
    #
    class DeleteSubscriberResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeregisterDataLakeDelegatedAdministratorRequest AWS API Documentation
    #
    class DeregisterDataLakeDelegatedAdministratorRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeregisterDataLakeDelegatedAdministratorResponse AWS API Documentation
    #
    class DeregisterDataLakeDelegatedAdministratorResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeExceptionSubscriptionRequest AWS API Documentation
    #
    class GetDataLakeExceptionSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] exception_time_to_live
    #   The expiration period and time-to-live (TTL).
    #   @return [Integer]
    #
    # @!attribute [rw] notification_endpoint
    #   The Amazon Web Services account where you receive exception
    #   notifications.
    #   @return [String]
    #
    # @!attribute [rw] subscription_protocol
    #   The subscription protocol to which exception notifications are
    #   posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeExceptionSubscriptionResponse AWS API Documentation
    #
    class GetDataLakeExceptionSubscriptionResponse < Struct.new(
      :exception_time_to_live,
      :notification_endpoint,
      :subscription_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeOrganizationConfigurationRequest AWS API Documentation
    #
    class GetDataLakeOrganizationConfigurationRequest < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable_new_account
    #   The configuration for new accounts.
    #   @return [Array<Types::DataLakeAutoEnableNewAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeOrganizationConfigurationResponse AWS API Documentation
    #
    class GetDataLakeOrganizationConfigurationResponse < Struct.new(
      :auto_enable_new_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   The Amazon Web Services account ID for which a static snapshot of
    #   the current Amazon Web Services Region, including enabled accounts
    #   and log sources, is retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum limit of accounts for which the static snapshot of the
    #   current Region, including enabled accounts and log sources, is
    #   retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeSourcesRequest AWS API Documentation
    #
    class GetDataLakeSourcesRequest < Struct.new(
      :accounts,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_lake_arn
    #   The Amazon Resource Name (ARN) created by you to provide to the
    #   subscriber. For more information about ARNs and how to use them in
    #   policies, see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/subscriber-management.html
    #   @return [String]
    #
    # @!attribute [rw] data_lake_sources
    #   The list of enabled accounts and enabled sources.
    #   @return [Array<Types::DataLakeSource>]
    #
    # @!attribute [rw] next_token
    #   Lists if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDataLakeSourcesResponse AWS API Documentation
    #
    class GetDataLakeSourcesResponse < Struct.new(
      :data_lake_arn,
      :data_lake_sources,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_id
    #   A value created by Amazon Security Lake that uniquely identifies
    #   your `GetSubscriber` API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetSubscriberRequest AWS API Documentation
    #
    class GetSubscriberRequest < Struct.new(
      :subscriber_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber
    #   The subscriber information for the specified subscriber ID.
    #   @return [Types::SubscriberResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetSubscriberResponse AWS API Documentation
    #
    class GetSubscriberResponse < Struct.new(
      :subscriber)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations for HTTPS subscriber notification.
    #
    # @!attribute [rw] authorization_api_key_name
    #   The key name for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] authorization_api_key_value
    #   The key value for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The subscription endpoint in Security Lake. If you prefer
    #   notification with an HTTPs endpoint, populate this field.
    #   @return [String]
    #
    # @!attribute [rw] http_method
    #   The HTTPS method used for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] target_role_arn
    #   The Amazon Resource Name (ARN) of the EventBridge API destinations
    #   IAM role that you created. For more information about ARNs and how
    #   to use them in policies, see [Managing data access][1] and [Amazon
    #   Web Services Managed Policies][2] in the Amazon Security Lake User
    #   Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com//security-lake/latest/userguide/subscriber-data-access.html
    #   [2]: https://docs.aws.amazon.com/security-lake/latest/userguide/security-iam-awsmanpol.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/HttpsNotificationConfiguration AWS API Documentation
    #
    class HttpsNotificationConfiguration < Struct.new(
      :authorization_api_key_name,
      :authorization_api_key_value,
      :endpoint,
      :http_method,
      :target_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal service exceptions are sometimes caused by transient issues.
    # Before you start troubleshooting, perform the operation again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   List the maximum number of failures in Security Lake.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   List if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   List the Amazon Web Services Regions from which exceptions are
    #   retrieved.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakeExceptionsRequest AWS API Documentation
    #
    class ListDataLakeExceptionsRequest < Struct.new(
      :max_results,
      :next_token,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exceptions
    #   Lists the failures that cannot be retried in the current Region.
    #   @return [Array<Types::DataLakeException>]
    #
    # @!attribute [rw] next_token
    #   List if there are more results available. The value of nextToken is
    #   a unique pagination token for each page. Repeat the call using the
    #   returned token to retrieve the next page. Keep all other arguments
    #   unchanged.
    #
    #   Each pagination token expires after 24 hours. Using an expired
    #   pagination token will return an HTTP 400 InvalidToken error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakeExceptionsResponse AWS API Documentation
    #
    class ListDataLakeExceptionsResponse < Struct.new(
      :exceptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] regions
    #   The list of regions where Security Lake is enabled.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakesRequest AWS API Documentation
    #
    class ListDataLakesRequest < Struct.new(
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_lakes
    #   Retrieves the Security Lake configuration object.
    #   @return [Array<Types::DataLakeResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDataLakesResponse AWS API Documentation
    #
    class ListDataLakesResponse < Struct.new(
      :data_lakes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accounts
    #   The list of Amazon Web Services accounts for which log sources are
    #   displayed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of accounts for which the log sources are
    #   displayed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   The list of regions for which log sources are displayed.
    #   @return [Array<String>]
    #
    # @!attribute [rw] sources
    #   The list of sources for which log sources are displayed.
    #   @return [Array<Types::LogSourceResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListLogSourcesRequest AWS API Documentation
    #
    class ListLogSourcesRequest < Struct.new(
      :accounts,
      :max_results,
      :next_token,
      :regions,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The list of log sources in your organization that send data to the
    #   data lake.
    #   @return [Array<Types::LogSource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListLogSourcesResponse AWS API Documentation
    #
    class ListLogSourcesResponse < Struct.new(
      :next_token,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of accounts for which the configuration is
    #   displayed.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListSubscribersRequest AWS API Documentation
    #
    class ListSubscribersRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If nextToken is returned, there are more results available. You can
    #   repeat the call using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The subscribers available for the specified Security Lake account
    #   ID.
    #   @return [Array<Types::SubscriberResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListSubscribersResponse AWS API Documentation
    #
    class ListSubscribersResponse < Struct.new(
      :next_token,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake can collect logs and events from
    # natively-supported Amazon Web Services services and custom sources.
    #
    # @!attribute [rw] account
    #   Specify the account from which you want to collect logs.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Specify the Regions from which you want to collect logs.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Specify the sources from which you want to collect logs.
    #   @return [Array<Types::LogSourceResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/LogSource AWS API Documentation
    #
    class LogSource < Struct.new(
      :account,
      :region,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The supported source types from which logs and events are collected in
    # Amazon Security Lake. For the list of supported Amazon Web Services,
    # see the [Amazon Security Lake User Guide][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html
    #
    # @note LogSourceResource is a union - when making an API calls you must set exactly one of the members.
    #
    # @note LogSourceResource is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of LogSourceResource corresponding to the set member.
    #
    # @!attribute [rw] aws_log_source
    #   Amazon Security Lake supports log and event collection for natively
    #   supported Amazon Web Services.
    #   @return [Types::AwsLogSourceResource]
    #
    # @!attribute [rw] custom_log_source
    #   Amazon Security Lake supports custom source types. For a detailed
    #   list, see the Amazon Security Lake User Guide.
    #   @return [Types::CustomLogSourceResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/LogSourceResource AWS API Documentation
    #
    class LogSourceResource < Struct.new(
      :aws_log_source,
      :custom_log_source,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsLogSource < LogSourceResource; end
      class CustomLogSource < LogSourceResource; end
      class Unknown < LogSourceResource; end
    end

    # Specify the configurations you want to use for subscriber notification
    # to notify the subscriber when new data is written to the data lake for
    # sources that the subscriber consumes in Security Lake.
    #
    # @note NotificationConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] https_notification_configuration
    #   The configurations for HTTPS subscriber notification.
    #   @return [Types::HttpsNotificationConfiguration]
    #
    # @!attribute [rw] sqs_notification_configuration
    #   The configurations for SQS subscriber notification.
    #   @return [Types::SqsNotificationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :https_notification_configuration,
      :sqs_notification_configuration,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class HttpsNotificationConfiguration < NotificationConfiguration; end
      class SqsNotificationConfiguration < NotificationConfiguration; end
      class Unknown < NotificationConfiguration; end
    end

    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID of the Security Lake delegated
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/RegisterDataLakeDelegatedAdministratorRequest AWS API Documentation
    #
    class RegisterDataLakeDelegatedAdministratorRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/RegisterDataLakeDelegatedAdministratorResponse AWS API Documentation
    #
    class RegisterDataLakeDelegatedAdministratorResponse < Aws::EmptyStructure; end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_name
    #   The name of the resource that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_name,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configurations for SQS subscriber notification.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/SqsNotificationConfiguration AWS API Documentation
    #
    class SqsNotificationConfiguration < Aws::EmptyStructure; end

    # Provides details about the Amazon Security Lake account subscription.
    # Subscribers are notified of new objects for a source as the data is
    # written to your Amazon S3 bucket for Security Lake.
    #
    # @!attribute [rw] access_types
    #   You can choose to notify subscribers of new objects with an Amazon
    #   Simple Queue Service (Amazon SQS) queue or through messaging to an
    #   HTTPS endpoint provided by the subscriber.
    #
    #   Subscribers can consume data by directly querying Lake Formation
    #   tables in your Amazon S3 bucket through services like Amazon Athena.
    #   This subscription type is defined as `LAKEFORMATION`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] created_at
    #   The date and time when the subscriber was created.
    #   @return [Time]
    #
    # @!attribute [rw] resource_share_arn
    #   The Amazon Resource Name (ARN) which uniquely defines the AWS RAM
    #   resource share. Before accepting the RAM resource share invitation,
    #   you can view details related to the RAM resource share.
    #
    #   This field is available only for Lake Formation subscribers created
    #   after March 8, 2023.
    #   @return [String]
    #
    # @!attribute [rw] resource_share_name
    #   The name of the resource share.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) specifying the role of the
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The ARN for the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   Amazon Security Lake supports log and event collection for natively
    #   supported Amazon Web Services. For more information, see the Amazon
    #   Security Lake User Guide.
    #   @return [Array<Types::LogSourceResource>]
    #
    # @!attribute [rw] subscriber_arn
    #   The subscriber ARN of the Amazon Security Lake subscriber account.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_description
    #   The subscriber descriptions for a subscriber account. The
    #   description for a subscriber includes `subscriberName`, `accountID`,
    #   `externalID`, and `subscriberId`.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_endpoint
    #   The subscriber endpoint to which exception messages are posted.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_id
    #   The subscriber ID of the Amazon Security Lake subscriber account.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_identity
    #   The AWS identity used to access your data.
    #   @return [Types::AwsIdentity]
    #
    # @!attribute [rw] subscriber_name
    #   The name of your Amazon Security Lake subscriber account.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_status
    #   The subscriber status of the Amazon Security Lake subscriber
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the subscriber was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/SubscriberResource AWS API Documentation
    #
    class SubscriberResource < Struct.new(
      :access_types,
      :created_at,
      :resource_share_arn,
      :resource_share_name,
      :role_arn,
      :s3_bucket_arn,
      :sources,
      :subscriber_arn,
      :subscriber_description,
      :subscriber_endpoint,
      :subscriber_id,
      :subscriber_identity,
      :subscriber_name,
      :subscriber_status,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The limit on the number of requests per second was exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   That the rate of requests to Security Lake is exceeding the request
    #   quotas for your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Retry the request after the specified time.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The code for the service in Service Quotas.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :quota_code,
      :retry_after_seconds,
      :service_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_time_to_live
    #   The time-to-live (TTL) for the exception message to remain.
    #   @return [Integer]
    #
    # @!attribute [rw] notification_endpoint
    #   The account that is subscribed to receive exception notifications.
    #   @return [String]
    #
    # @!attribute [rw] subscription_protocol
    #   The subscription protocol to which exception messages are posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLakeExceptionSubscriptionRequest AWS API Documentation
    #
    class UpdateDataLakeExceptionSubscriptionRequest < Struct.new(
      :exception_time_to_live,
      :notification_endpoint,
      :subscription_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLakeExceptionSubscriptionResponse AWS API Documentation
    #
    class UpdateDataLakeExceptionSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configurations
    #   Specify the Region or Regions that will contribute data to the
    #   rollup region.
    #   @return [Array<Types::DataLakeConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLakeRequest AWS API Documentation
    #
    class UpdateDataLakeRequest < Struct.new(
      :configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_lakes
    #   The created Security Lake configuration object.
    #   @return [Array<Types::DataLakeResource>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDataLakeResponse AWS API Documentation
    #
    class UpdateDataLakeResponse < Struct.new(
      :data_lakes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The configuration for subscriber notification.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] subscriber_id
    #   The subscription ID for which the subscription notification is
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberNotificationRequest AWS API Documentation
    #
    class UpdateSubscriberNotificationRequest < Struct.new(
      :configuration,
      :subscriber_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber_endpoint
    #   The subscriber endpoint to which exception messages are posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberNotificationResponse AWS API Documentation
    #
    class UpdateSubscriberNotificationResponse < Struct.new(
      :subscriber_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] sources
    #   The supported Amazon Web Services from which logs and events are
    #   collected. For the list of supported Amazon Web Services, see the
    #   [Amazon Security Lake User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html
    #   @return [Array<Types::LogSourceResource>]
    #
    # @!attribute [rw] subscriber_description
    #   The description of the Security Lake account subscriber.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_id
    #   A value created by Security Lake that uniquely identifies your
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_identity
    #   The AWS identity used to access your data.
    #   @return [Types::AwsIdentity]
    #
    # @!attribute [rw] subscriber_name
    #   The name of the Security Lake account subscriber.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberRequest AWS API Documentation
    #
    class UpdateSubscriberRequest < Struct.new(
      :sources,
      :subscriber_description,
      :subscriber_id,
      :subscriber_identity,
      :subscriber_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber
    #   The updated subscriber information.
    #   @return [Types::SubscriberResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberResponse AWS API Documentation
    #
    class UpdateSubscriberResponse < Struct.new(
      :subscriber)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
