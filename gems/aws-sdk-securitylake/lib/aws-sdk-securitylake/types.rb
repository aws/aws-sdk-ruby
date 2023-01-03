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
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake cannot find an Amazon Web Services account with
    # the accountID that you specified, or the account whose credentials you
    # used to make this request isn't a member of an organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AccountNotFoundException AWS API Documentation
    #
    class AccountNotFoundException < Struct.new(
      :message)
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
    # @!attribute [rw] event_class
    #   Initializes a new instance of the Event class.
    #   @return [String]
    #
    # @!attribute [rw] logs_status
    #   The log status for the Security Lake account.
    #   @return [Array<Types::LogsStatus>]
    #
    # @!attribute [rw] source_type
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Amazon Security Lake supports log and event collection
    #   for natively supported Amazon Web Services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AccountSources AWS API Documentation
    #
    class AccountSources < Struct.new(
      :account,
      :event_class,
      :logs_status,
      :source_type)
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
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/AutoEnableNewRegionConfiguration AWS API Documentation
    #
    class AutoEnableNewRegionConfiguration < Struct.new(
      :region,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Amazon Security Lake generally returns 404 errors if the requested
    # object is missing from the bucket.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/BucketNotFoundException AWS API Documentation
    #
    class BucketNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # More than one process tried to modify a resource at the same time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ConcurrentModificationException AWS API Documentation
    #
    class ConcurrentModificationException < Struct.new(
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
    # @!attribute [rw] resource_id
    #   A conflict occurred when prompting for the Resource ID.
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
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was a conflict when you attempted to modify a Security Lake
    # source name.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ConflictSourceNamesException AWS API Documentation
    #
    class ConflictSourceNamesException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A conflicting subscription exception operation is in progress.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ConflictSubscriptionException AWS API Documentation
    #
    class ConflictSubscriptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enable_all_dimensions
    #   Enables data collection from specific Amazon Web Services sources in
    #   all specific accounts and specific Regions.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @!attribute [rw] enable_single_dimension
    #   Enables data collection from all Amazon Web Services sources in
    #   specific accounts or Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enable_two_dimensions
    #   Enables data collection from specific Amazon Web Services sources in
    #   specific accounts or Regions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] input_order
    #   Specifies the input order to enable dimensions in Security Lake,
    #   namely Region, source type, and member account.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateAwsLogSourceRequest AWS API Documentation
    #
    class CreateAwsLogSourceRequest < Struct.new(
      :enable_all_dimensions,
      :enable_single_dimension,
      :enable_two_dimensions,
      :input_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   Lists all accounts in which enabling a natively supported Amazon Web
    #   Service as a Security Lake source failed. The failure occurred as
    #   these accounts are not part of an organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processing
    #   Lists the accounts that are in the process of enabling a natively
    #   supported Amazon Web Service as a Security Lake source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateAwsLogSourceResponse AWS API Documentation
    #
    class CreateAwsLogSourceResponse < Struct.new(
      :failed,
      :processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_source_name
    #   The name for a third-party custom source. This must be a Regionally
    #   unique value.
    #   @return [String]
    #
    # @!attribute [rw] event_class
    #   The Open Cybersecurity Schema Framework (OCSF) event class which
    #   describes the type of data that the custom source will send to
    #   Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] glue_invocation_role_arn
    #   The Amazon Resource Name (ARN) of the Identity and Access Management
    #   (IAM) role to be used by the Glue crawler. The recommended IAM
    #   policies are:
    #
    #   * The managed policy `AWSGlueServiceRole`
    #
    #   * A custom policy granting access to your Amazon S3 Data Lake
    #   @return [String]
    #
    # @!attribute [rw] log_provider_account_id
    #   The Amazon Web Services account ID of the custom source that will
    #   write logs and events into the Amazon S3 Data Lake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateCustomLogSourceRequest AWS API Documentation
    #
    class CreateCustomLogSourceRequest < Struct.new(
      :custom_source_name,
      :event_class,
      :glue_invocation_role_arn,
      :log_provider_account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_data_location
    #   The location of the partition in the Amazon S3 bucket for Security
    #   Lake.
    #   @return [String]
    #
    # @!attribute [rw] glue_crawler_name
    #   The name of the Glue crawler.
    #   @return [String]
    #
    # @!attribute [rw] glue_database_name
    #   The Glue database where results are written, such as:
    #   `arn:aws:daylight:us-east-1::database/sometable/*`.
    #   @return [String]
    #
    # @!attribute [rw] glue_table_name
    #   The table name of the Glue crawler.
    #   @return [String]
    #
    # @!attribute [rw] log_provider_access_role_arn
    #   The ARN of the IAM role to be used by the entity putting logs into
    #   your custom source partition. Security Lake will apply the correct
    #   access policies to this role, but you must first manually create the
    #   trust policy for this role. The IAM role name must start with the
    #   text 'Security Lake'. The IAM role must trust the
    #   `logProviderAccountId` to assume the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateCustomLogSourceResponse AWS API Documentation
    #
    class CreateCustomLogSourceResponse < Struct.new(
      :custom_data_location,
      :glue_crawler_name,
      :glue_database_name,
      :glue_table_name,
      :log_provider_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] configuration_for_new_accounts
    #   Enable Security Lake with the specified configuration settings to
    #   begin collecting security data for new accounts in your
    #   organization.
    #   @return [Array<Types::AutoEnableNewRegionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeAutoEnableRequest AWS API Documentation
    #
    class CreateDatalakeAutoEnableRequest < Struct.new(
      :configuration_for_new_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeAutoEnableResponse AWS API Documentation
    #
    class CreateDatalakeAutoEnableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account
    #   The Amazon Web Services account ID of the Security Lake delegated
    #   administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeDelegatedAdminRequest AWS API Documentation
    #
    class CreateDatalakeDelegatedAdminRequest < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeDelegatedAdminResponse AWS API Documentation
    #
    class CreateDatalakeDelegatedAdminResponse < Aws::EmptyStructure; end

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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeExceptionsSubscriptionRequest AWS API Documentation
    #
    class CreateDatalakeExceptionsSubscriptionRequest < Struct.new(
      :notification_endpoint,
      :subscription_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeExceptionsSubscriptionResponse AWS API Documentation
    #
    class CreateDatalakeExceptionsSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configurations
    #   Specify the Region or Regions that will contribute data to the
    #   rollup region.
    #   @return [Hash<String,Types::LakeConfigurationRequest>]
    #
    # @!attribute [rw] enable_all
    #   Enable Security Lake in all Regions.
    #   @return [Boolean]
    #
    # @!attribute [rw] meta_store_manager_role_arn
    #   The Amazon Resource Name (ARN) used to create and update the Glue
    #   table. This table contains partitions generated by the ingestion and
    #   normalization of Amazon Web Services log sources and custom sources.
    #   @return [String]
    #
    # @!attribute [rw] regions
    #   Enable Security Lake in the specified Regions. To enable Security
    #   Lake in specific Amazon Web Services Regions, such as us-east-1 or
    #   ap-northeast-3, provide the Region codes. For a list of Region
    #   codes, see [Amazon Security Lake endpoints][1] in the Amazon Web
    #   Services General Reference.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/securitylake.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeRequest AWS API Documentation
    #
    class CreateDatalakeRequest < Struct.new(
      :configurations,
      :enable_all,
      :meta_store_manager_role_arn,
      :regions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateDatalakeResponse AWS API Documentation
    #
    class CreateDatalakeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] access_types
    #   The Amazon S3 or Lake Formation access type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID used to access your data.
    #   @return [String]
    #
    # @!attribute [rw] external_id
    #   The external ID of the subscriber. This lets the user that is
    #   assuming the role assert the circumstances in which they are
    #   operating. It also provides a way for the account owner to permit
    #   the role to be assumed only under specific circumstances.
    #   @return [String]
    #
    # @!attribute [rw] source_types
    #   The supported Amazon Web Services from which logs and events are
    #   collected. Security Lake supports log and event collection for
    #   natively supported Amazon Web Services.
    #   @return [Array<Types::SourceType>]
    #
    # @!attribute [rw] subscriber_description
    #   The description for your subscriber account in Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_name
    #   The name of your Security Lake subscriber account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberRequest AWS API Documentation
    #
    class CreateSubscriberRequest < Struct.new(
      :access_types,
      :account_id,
      :external_id,
      :source_types,
      :subscriber_description,
      :subscriber_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) created by you to provide to the
    #   subscriber. For more information about ARNs and how to use them in
    #   policies, see [IAM identifiers in the Identity and Access Management
    #   (IAM) User Guide][1]. .
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The ARN for the Amazon S3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] sns_arn
    #   The ARN for the Amazon Simple Notification Service.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The `subscriptionId` created by the `CreateSubscriber` API call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriberResponse AWS API Documentation
    #
    class CreateSubscriberResponse < Struct.new(
      :role_arn,
      :s3_bucket_arn,
      :sns_arn,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_sqs
    #   Create an Amazon Simple Queue Service queue.
    #   @return [Boolean]
    #
    # @!attribute [rw] https_api_key_name
    #   The key name for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] https_api_key_value
    #   The key value for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] https_method
    #   The HTTPS method used for the notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the EventBridge API destinations
    #   IAM role that you created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_endpoint
    #   The subscription endpoint in Security Lake. If you prefer
    #   notification with an HTTPs endpoint, populate this field.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The subscription ID for the notification subscription/
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriptionNotificationConfigurationRequest AWS API Documentation
    #
    class CreateSubscriptionNotificationConfigurationRequest < Struct.new(
      :create_sqs,
      :https_api_key_name,
      :https_api_key_value,
      :https_method,
      :role_arn,
      :subscription_endpoint,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_arn
    #   Returns the Amazon Resource Name (ARN) of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/CreateSubscriptionNotificationConfigurationResponse AWS API Documentation
    #
    class CreateSubscriptionNotificationConfigurationResponse < Struct.new(
      :queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] disable_all_dimensions
    #   Removes the specific Amazon Web Services sources from specific
    #   accounts and specific Regions.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @!attribute [rw] disable_single_dimension
    #   Removes all Amazon Web Services sources from specific accounts or
    #   Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] disable_two_dimensions
    #   Remove a specific Amazon Web Services source from specific accounts
    #   or Regions.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] input_order
    #   This is a mandatory input. Specify the input order to disable
    #   dimensions in Security Lake, namely Region (Amazon Web Services
    #   Region code, source type, and member (account ID of a specific
    #   Amazon Web Services account).
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSourceRequest AWS API Documentation
    #
    class DeleteAwsLogSourceRequest < Struct.new(
      :disable_all_dimensions,
      :disable_single_dimension,
      :disable_two_dimensions,
      :input_order)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] failed
    #   Deletion of the Amazon Web Services sources failed as the account is
    #   not a part of the organization.
    #   @return [Array<String>]
    #
    # @!attribute [rw] processing
    #   Deletion of the Amazon Web Services sources is in progress.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteAwsLogSourceResponse AWS API Documentation
    #
    class DeleteAwsLogSourceResponse < Struct.new(
      :failed,
      :processing)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_source_name
    #   The custom source name for the custom log source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSourceRequest AWS API Documentation
    #
    class DeleteCustomLogSourceRequest < Struct.new(
      :custom_source_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] custom_data_location
    #   The location of the partition in the Amazon S3 bucket for Security
    #   Lake.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteCustomLogSourceResponse AWS API Documentation
    #
    class DeleteCustomLogSourceResponse < Struct.new(
      :custom_data_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] remove_from_configuration_for_new_accounts
    #   Delete Amazon Security Lake with the specified configuration
    #   settings to stop ingesting security data for new accounts in
    #   Security Lake.
    #   @return [Array<Types::AutoEnableNewRegionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeAutoEnableRequest AWS API Documentation
    #
    class DeleteDatalakeAutoEnableRequest < Struct.new(
      :remove_from_configuration_for_new_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeAutoEnableResponse AWS API Documentation
    #
    class DeleteDatalakeAutoEnableResponse < Aws::EmptyStructure; end

    # @!attribute [rw] account
    #   The account ID the Security Lake delegated administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeDelegatedAdminRequest AWS API Documentation
    #
    class DeleteDatalakeDelegatedAdminRequest < Struct.new(
      :account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeDelegatedAdminResponse AWS API Documentation
    #
    class DeleteDatalakeDelegatedAdminResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeExceptionsSubscriptionRequest AWS API Documentation
    #
    class DeleteDatalakeExceptionsSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] status
    #   Retrieves the status of the delete Security Lake operation for an
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeExceptionsSubscriptionResponse AWS API Documentation
    #
    class DeleteDatalakeExceptionsSubscriptionResponse < Struct.new(
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeRequest AWS API Documentation
    #
    class DeleteDatalakeRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteDatalakeResponse AWS API Documentation
    #
    class DeleteDatalakeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   A value created by Security Lake that uniquely identifies your
    #   `DeleteSubscriber` API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberRequest AWS API Documentation
    #
    class DeleteSubscriberRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriberResponse AWS API Documentation
    #
    class DeleteSubscriberResponse < Aws::EmptyStructure; end

    # @!attribute [rw] subscription_id
    #   The ID of the Security Lake subscriber account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriptionNotificationConfigurationRequest AWS API Documentation
    #
    class DeleteSubscriptionNotificationConfigurationRequest < Struct.new(
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/DeleteSubscriptionNotificationConfigurationResponse AWS API Documentation
    #
    class DeleteSubscriptionNotificationConfigurationResponse < Aws::EmptyStructure; end

    # Represents an error interacting with the Amazon EventBridge service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/EventBridgeException AWS API Documentation
    #
    class EventBridgeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # List of all failures.
    #
    # @!attribute [rw] exception_message
    #   List of all exception messages.
    #   @return [String]
    #
    # @!attribute [rw] remediation
    #   List of all remediation steps for failures.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   This error can occur if you configure the wrong timestamp format, or
    #   if the subset of entries used for validation had errors or missing
    #   values.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/Failures AWS API Documentation
    #
    class Failures < Struct.new(
      :exception_message,
      :remediation,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response element for actions that make changes, namely create, update,
    # or delete actions.
    #
    # @!attribute [rw] failures
    #   List of all failures.
    #   @return [Array<Types::Failures>]
    #
    # @!attribute [rw] region
    #   List of Amazon Web Services Regions where the failure occurred.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/FailuresResponse AWS API Documentation
    #
    class FailuresResponse < Struct.new(
      :failures,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeAutoEnableRequest AWS API Documentation
    #
    class GetDatalakeAutoEnableRequest < Aws::EmptyStructure; end

    # @!attribute [rw] auto_enable_new_accounts
    #   The configuration for new accounts.
    #   @return [Array<Types::AutoEnableNewRegionConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeAutoEnableResponse AWS API Documentation
    #
    class GetDatalakeAutoEnableResponse < Struct.new(
      :auto_enable_new_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsExpiryRequest AWS API Documentation
    #
    class GetDatalakeExceptionsExpiryRequest < Aws::EmptyStructure; end

    # @!attribute [rw] exception_message_expiry
    #   The expiration period and time-to-live (TTL).
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsExpiryResponse AWS API Documentation
    #
    class GetDatalakeExceptionsExpiryResponse < Struct.new(
      :exception_message_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsSubscriptionRequest AWS API Documentation
    #
    class GetDatalakeExceptionsSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] protocol_and_notification_endpoint
    #   Retrieves the exception notification subscription information.
    #   @return [Types::ProtocolAndNotificationEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeExceptionsSubscriptionResponse AWS API Documentation
    #
    class GetDatalakeExceptionsSubscriptionResponse < Struct.new(
      :protocol_and_notification_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeRequest AWS API Documentation
    #
    class GetDatalakeRequest < Aws::EmptyStructure; end

    # @!attribute [rw] configurations
    #   Retrieves the Security Lake configuration object.
    #   @return [Hash<String,Types::LakeConfigurationResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeResponse AWS API Documentation
    #
    class GetDatalakeResponse < Struct.new(
      :configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_set
    #   The Amazon Web Services account ID for which a static snapshot of
    #   the current Amazon Web Services Region, including enabled accounts
    #   and log sources, is retrieved.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_account_results
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeStatusRequest AWS API Documentation
    #
    class GetDatalakeStatusRequest < Struct.new(
      :account_set,
      :max_account_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_sources_list
    #   The list of enabled accounts and enabled sources.
    #   @return [Array<Types::AccountSources>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetDatalakeStatusResponse AWS API Documentation
    #
    class GetDatalakeStatusResponse < Struct.new(
      :account_sources_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   A value created by Amazon Security Lake that uniquely identifies
    #   your `GetSubscriber` API request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetSubscriberRequest AWS API Documentation
    #
    class GetSubscriberRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber
    #   The subscription information for the specified subscription ID.
    #   @return [Types::SubscriberResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/GetSubscriberResponse AWS API Documentation
    #
    class GetSubscriberResponse < Struct.new(
      :subscriber)
      SENSITIVE = []
      include Aws::Structure
    end

    # Internal service exceptions are sometimes caused by transient issues.
    # Before you start troubleshooting, perform the operation again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   Retry the request after the specified time.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was rejected because a value that's not valid or is out
    # of range was supplied for an input parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of Amazon Security Lake configuration object.
    #
    # @!attribute [rw] encryption_key
    #   The type of encryption key used by Amazon Security Lake to encrypt
    #   the Security Lake configuration object.
    #   @return [String]
    #
    # @!attribute [rw] replication_destination_regions
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
    # @!attribute [rw] replication_role_arn
    #   Replication settings for the Amazon S3 buckets. This parameter uses
    #   the Identity and Access Management (IAM) role you created that is
    #   managed by Security Lake, to ensure the replication setting is
    #   correct.
    #   @return [String]
    #
    # @!attribute [rw] retention_settings
    #   Retention settings for the destination Amazon S3 buckets.
    #   @return [Array<Types::RetentionSetting>]
    #
    # @!attribute [rw] tags_map
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value, both of which you
    #   define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/LakeConfigurationRequest AWS API Documentation
    #
    class LakeConfigurationRequest < Struct.new(
      :encryption_key,
      :replication_destination_regions,
      :replication_role_arn,
      :retention_settings,
      :tags_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides details of Amazon Security Lake lake configuration object.
    #
    # @!attribute [rw] encryption_key
    #   The type of encryption key used by secure the Security Lake
    #   configuration object.
    #   @return [String]
    #
    # @!attribute [rw] replication_destination_regions
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
    # @!attribute [rw] replication_role_arn
    #   Replication settings for the Amazon S3 buckets. This parameter uses
    #   the IAM role you created that is managed by Security Lake, to ensure
    #   the replication setting is correct.
    #   @return [String]
    #
    # @!attribute [rw] retention_settings
    #   Retention settings for the destination Amazon S3 buckets.
    #   @return [Array<Types::RetentionSetting>]
    #
    # @!attribute [rw] s3_bucket_arn
    #   Amazon Resource Names (ARNs) uniquely identify Amazon Web Services
    #   resources. Security Lake requires an ARN when you need to specify a
    #   resource unambiguously across all of Amazon Web Services, such as in
    #   IAM policies, Amazon Relational Database Service (Amazon RDS) tags,
    #   and API calls.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Retrieves the status of the configuration operation for an account
    #   in Amazon Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] tags_map
    #   A tag is a label that you assign to an Amazon Web Services resource.
    #   Each tag consists of a key and an optional value, both of which you
    #   define.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/LakeConfigurationResponse AWS API Documentation
    #
    class LakeConfigurationResponse < Struct.new(
      :encryption_key,
      :replication_destination_regions,
      :replication_role_arn,
      :retention_settings,
      :s3_bucket_arn,
      :status,
      :tags_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_failures
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
    # @!attribute [rw] region_set
    #   List the Amazon Web Services Regions from which exceptions are
    #   retrieved.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDatalakeExceptionsRequest AWS API Documentation
    #
    class ListDatalakeExceptionsRequest < Struct.new(
      :max_failures,
      :next_token,
      :region_set)
      SENSITIVE = []
      include Aws::Structure
    end

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
    # @!attribute [rw] non_retryable_failures
    #   Lists the failures that cannot be retried in the current Region.
    #   @return [Array<Types::FailuresResponse>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListDatalakeExceptionsResponse AWS API Documentation
    #
    class ListDatalakeExceptionsResponse < Struct.new(
      :next_token,
      :non_retryable_failures)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] input_order
    #   Lists the log sources in input order, namely Region, source type,
    #   and member account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_all_dimensions
    #   List the view of log sources for enabled Amazon Security Lake
    #   accounts for specific Amazon Web Services sources from specific
    #   accounts and specific Regions.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @!attribute [rw] list_single_dimension
    #   List the view of log sources for enabled Security Lake accounts for
    #   all Amazon Web Services sources from specific accounts or specific
    #   Regions.
    #   @return [Array<String>]
    #
    # @!attribute [rw] list_two_dimensions
    #   Lists the view of log sources for enabled Security Lake accounts for
    #   specific Amazon Web Services sources from specific accounts or
    #   specific Regions.
    #   @return [Hash<String,Array<String>>]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListLogSourcesRequest AWS API Documentation
    #
    class ListLogSourcesRequest < Struct.new(
      :input_order,
      :list_all_dimensions,
      :list_single_dimension,
      :list_two_dimensions,
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
    # @!attribute [rw] region_source_types_accounts_list
    #   Lists the log sources by Regions for enabled Security Lake accounts.
    #   @return [Array<Hash<String,Hash<String,Array<String>>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ListLogSourcesResponse AWS API Documentation
    #
    class ListLogSourcesResponse < Struct.new(
      :next_token,
      :region_source_types_accounts_list)
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

    # Retrieves the Logs status for the Amazon Security Lake account.
    #
    # @!attribute [rw] health_status
    #   The health status of services, including error codes and patterns.
    #   @return [String]
    #
    # @!attribute [rw] path_to_logs
    #   Defines path the stored logs are available which has information on
    #   your systems, applications, and services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/LogsStatus AWS API Documentation
    #
    class LogsStatus < Struct.new(
      :health_status,
      :path_to_logs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Protocol used in Amazon Security Lake that dictates how notifications
    # are posted at the endpoint.
    #
    # @!attribute [rw] endpoint
    #   The account that is subscribed to receive exception notifications.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol to which notification messages are posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ProtocolAndNotificationEndpoint AWS API Documentation
    #
    class ProtocolAndNotificationEndpoint < Struct.new(
      :endpoint,
      :protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource could not be found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource for which the type of resource could not be
    #   found.
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
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Retention settings for the destination Amazon S3 buckets in Amazon
    # Security Lake.
    #
    # @!attribute [rw] retention_period
    #   The retention period specifies a fixed period of time during which
    #   the Security Lake object remains locked. You can specify the
    #   retention period in days for one or more sources.
    #   @return [Integer]
    #
    # @!attribute [rw] storage_class
    #   The range of storage classes that you can choose from based on the
    #   data access, resiliency, and cost requirements of your workloads.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/RetentionSetting AWS API Documentation
    #
    class RetentionSetting < Struct.new(
      :retention_period,
      :storage_class)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides an extension of the AmazonServiceException for errors
    # reported by Amazon S3 while processing a request. In particular, this
    # class provides access to the Amazon S3 extended request ID. If Amazon
    # S3 is incorrectly handling a request and you need to contact Amazon,
    # this extended request ID may provide useful debugging information.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/S3Exception AWS API Documentation
    #
    class S3Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or use Service Quotas to
    # request a service quota increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   That the rate of requests to Security Lake is exceeding the request
    #   quotas for your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that exceeds the service quota.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the service in Service Quotas.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :resource_id,
      :resource_type,
      :service_code)
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
    # @note SourceType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note SourceType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of SourceType corresponding to the set member.
    #
    # @!attribute [rw] aws_source_type
    #   Amazon Security Lake supports log and event collection for natively
    #   supported Amazon Web Services.
    #   @return [String]
    #
    # @!attribute [rw] custom_source_type
    #   Amazon Security Lake supports custom source types. For a detailed
    #   list, see the Amazon Security Lake User Guide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/SourceType AWS API Documentation
    #
    class SourceType < Struct.new(
      :aws_source_type,
      :custom_source_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsSourceType < SourceType; end
      class CustomSourceType < SourceType; end
      class Unknown < SourceType; end
    end

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
    # @!attribute [rw] account_id
    #   The Amazon Web Services account ID you are using to create your
    #   Amazon Security Lake account.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time when the subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] external_id
    #   The external ID of the subscriber. The external ID lets the user
    #   that is assuming the role assert the circumstances in which they are
    #   operating. It also provides a way for the account owner to permit
    #   the role to be assumed only under specific circumstances.
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
    # @!attribute [rw] sns_arn
    #   The ARN for the Amazon Simple Notification Service.
    #   @return [String]
    #
    # @!attribute [rw] source_types
    #   Amazon Security Lake supports log and event collection for natively
    #   supported Amazon Web Services. For more information, see the Amazon
    #   Security Lake User Guide.
    #   @return [Array<Types::SourceType>]
    #
    # @!attribute [rw] subscriber_description
    #   The subscriber descriptions for a subscriber account. The
    #   description for a subscriber includes `subscriberName`, `accountID`,
    #   `externalID`, and `subscriptionId`.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_name
    #   The name of your Amazon Security Lake subscriber account.
    #   @return [String]
    #
    # @!attribute [rw] subscription_endpoint
    #   The subscription endpoint to which exception messages are posted.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The subscription ID of the Amazon Security Lake subscriber account.
    #   @return [String]
    #
    # @!attribute [rw] subscription_protocol
    #   The subscription protocol to which exception messages are posted.
    #   @return [String]
    #
    # @!attribute [rw] subscription_status
    #   The subscription status of the Amazon Security Lake subscriber
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The date and time when the subscription was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/SubscriberResource AWS API Documentation
    #
    class SubscriberResource < Struct.new(
      :access_types,
      :account_id,
      :created_at,
      :external_id,
      :role_arn,
      :s3_bucket_arn,
      :sns_arn,
      :source_types,
      :subscriber_description,
      :subscriber_name,
      :subscription_endpoint,
      :subscription_id,
      :subscription_protocol,
      :subscription_status,
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

    # @!attribute [rw] exception_message_expiry
    #   The time-to-live (TTL) for the exception message to remain.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsExpiryRequest AWS API Documentation
    #
    class UpdateDatalakeExceptionsExpiryRequest < Struct.new(
      :exception_message_expiry)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsExpiryResponse AWS API Documentation
    #
    class UpdateDatalakeExceptionsExpiryResponse < Aws::EmptyStructure; end

    # @!attribute [rw] notification_endpoint
    #   The account that is subscribed to receive exception notifications.
    #   @return [String]
    #
    # @!attribute [rw] subscription_protocol
    #   The subscription protocol to which exception messages are posted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsSubscriptionRequest AWS API Documentation
    #
    class UpdateDatalakeExceptionsSubscriptionRequest < Struct.new(
      :notification_endpoint,
      :subscription_protocol)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeExceptionsSubscriptionResponse AWS API Documentation
    #
    class UpdateDatalakeExceptionsSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] configurations
    #   Specify the Region or Regions that will contribute data to the
    #   rollup region.
    #   @return [Hash<String,Types::LakeConfigurationRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeRequest AWS API Documentation
    #
    class UpdateDatalakeRequest < Struct.new(
      :configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateDatalakeResponse AWS API Documentation
    #
    class UpdateDatalakeResponse < Aws::EmptyStructure; end

    # @!attribute [rw] external_id
    #   The external ID of the Security Lake account.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A value created by Security Lake that uniquely identifies your
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] source_types
    #   The supported Amazon Web Services from which logs and events are
    #   collected. For the list of supported Amazon Web Services, see the
    #   [Amazon Security Lake User Guide][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/security-lake/latest/userguide/internal-sources.html
    #   @return [Array<Types::SourceType>]
    #
    # @!attribute [rw] subscriber_description
    #   The description of the Security Lake account subscriber.
    #   @return [String]
    #
    # @!attribute [rw] subscriber_name
    #   The name of the Security Lake account subscriber.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberRequest AWS API Documentation
    #
    class UpdateSubscriberRequest < Struct.new(
      :external_id,
      :id,
      :source_types,
      :subscriber_description,
      :subscriber_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] subscriber
    #   The account of the subscriber.
    #   @return [Types::SubscriberResource]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriberResponse AWS API Documentation
    #
    class UpdateSubscriberResponse < Struct.new(
      :subscriber)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] create_sqs
    #   Create a new subscription notification for the specified
    #   subscription ID in Amazon Security Lake.
    #   @return [Boolean]
    #
    # @!attribute [rw] https_api_key_name
    #   The key name for the subscription notification.
    #   @return [String]
    #
    # @!attribute [rw] https_api_key_value
    #   The key value for the subscription notification.
    #   @return [String]
    #
    # @!attribute [rw] https_method
    #   The HTTPS method used for the subscription notification.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) specifying the role of the
    #   subscriber.
    #   @return [String]
    #
    # @!attribute [rw] subscription_endpoint
    #   The subscription endpoint in Security Lake.
    #   @return [String]
    #
    # @!attribute [rw] subscription_id
    #   The subscription ID for which the subscription notification is
    #   specified.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriptionNotificationConfigurationRequest AWS API Documentation
    #
    class UpdateSubscriptionNotificationConfigurationRequest < Struct.new(
      :create_sqs,
      :https_api_key_name,
      :https_api_key_value,
      :https_method,
      :role_arn,
      :subscription_endpoint,
      :subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] queue_arn
    #   Returns the ARN of the queue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/UpdateSubscriptionNotificationConfigurationResponse AWS API Documentation
    #
    class UpdateSubscriptionNotificationConfigurationResponse < Struct.new(
      :queue_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your signing certificate could not be validated.
    #
    # @!attribute [rw] field_list
    #   The list of parameters that failed to validate.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :field_list,
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # The input fails to meet the constraints specified in Amazon Security
    # Lake.
    #
    # @!attribute [rw] message
    #   Describes the error encountered.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the validation exception.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/securitylake-2018-05-10/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :message,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
