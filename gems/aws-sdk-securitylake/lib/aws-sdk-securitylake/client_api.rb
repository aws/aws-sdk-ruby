# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SecurityLake
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccessType = Shapes::StringShape.new(name: 'AccessType')
    AccessTypeList = Shapes::ListShape.new(name: 'AccessTypeList')
    AccountList = Shapes::ListShape.new(name: 'AccountList')
    AccountNotFoundException = Shapes::StructureShape.new(name: 'AccountNotFoundException')
    AccountSources = Shapes::StructureShape.new(name: 'AccountSources')
    AccountSourcesList = Shapes::ListShape.new(name: 'AccountSourcesList')
    AllDimensionsMap = Shapes::MapShape.new(name: 'AllDimensionsMap')
    AutoEnableNewRegionConfiguration = Shapes::StructureShape.new(name: 'AutoEnableNewRegionConfiguration')
    AutoEnableNewRegionConfigurationList = Shapes::ListShape.new(name: 'AutoEnableNewRegionConfigurationList')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsLogSourceType = Shapes::StringShape.new(name: 'AwsLogSourceType')
    AwsSourceTypeList = Shapes::ListShape.new(name: 'AwsSourceTypeList')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BucketNotFoundException = Shapes::StructureShape.new(name: 'BucketNotFoundException')
    ConcurrentModificationException = Shapes::StructureShape.new(name: 'ConcurrentModificationException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConflictSourceNamesException = Shapes::StructureShape.new(name: 'ConflictSourceNamesException')
    ConflictSubscriptionException = Shapes::StructureShape.new(name: 'ConflictSubscriptionException')
    CreateAwsLogSourceRequest = Shapes::StructureShape.new(name: 'CreateAwsLogSourceRequest')
    CreateAwsLogSourceResponse = Shapes::StructureShape.new(name: 'CreateAwsLogSourceResponse')
    CreateCustomLogSourceRequest = Shapes::StructureShape.new(name: 'CreateCustomLogSourceRequest')
    CreateCustomLogSourceResponse = Shapes::StructureShape.new(name: 'CreateCustomLogSourceResponse')
    CreateDatalakeAutoEnableRequest = Shapes::StructureShape.new(name: 'CreateDatalakeAutoEnableRequest')
    CreateDatalakeAutoEnableResponse = Shapes::StructureShape.new(name: 'CreateDatalakeAutoEnableResponse')
    CreateDatalakeDelegatedAdminRequest = Shapes::StructureShape.new(name: 'CreateDatalakeDelegatedAdminRequest')
    CreateDatalakeDelegatedAdminResponse = Shapes::StructureShape.new(name: 'CreateDatalakeDelegatedAdminResponse')
    CreateDatalakeExceptionsSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateDatalakeExceptionsSubscriptionRequest')
    CreateDatalakeExceptionsSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateDatalakeExceptionsSubscriptionResponse')
    CreateDatalakeRequest = Shapes::StructureShape.new(name: 'CreateDatalakeRequest')
    CreateDatalakeResponse = Shapes::StructureShape.new(name: 'CreateDatalakeResponse')
    CreateSubscriberRequest = Shapes::StructureShape.new(name: 'CreateSubscriberRequest')
    CreateSubscriberRequestSubscriberNameString = Shapes::StringShape.new(name: 'CreateSubscriberRequestSubscriberNameString')
    CreateSubscriberResponse = Shapes::StructureShape.new(name: 'CreateSubscriberResponse')
    CreateSubscriptionNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'CreateSubscriptionNotificationConfigurationRequest')
    CreateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString = Shapes::StringShape.new(name: 'CreateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString')
    CreateSubscriptionNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'CreateSubscriptionNotificationConfigurationResponse')
    CustomSourceType = Shapes::StringShape.new(name: 'CustomSourceType')
    DeleteAwsLogSourceRequest = Shapes::StructureShape.new(name: 'DeleteAwsLogSourceRequest')
    DeleteAwsLogSourceResponse = Shapes::StructureShape.new(name: 'DeleteAwsLogSourceResponse')
    DeleteCustomLogSourceRequest = Shapes::StructureShape.new(name: 'DeleteCustomLogSourceRequest')
    DeleteCustomLogSourceResponse = Shapes::StructureShape.new(name: 'DeleteCustomLogSourceResponse')
    DeleteDatalakeAutoEnableRequest = Shapes::StructureShape.new(name: 'DeleteDatalakeAutoEnableRequest')
    DeleteDatalakeAutoEnableResponse = Shapes::StructureShape.new(name: 'DeleteDatalakeAutoEnableResponse')
    DeleteDatalakeDelegatedAdminRequest = Shapes::StructureShape.new(name: 'DeleteDatalakeDelegatedAdminRequest')
    DeleteDatalakeDelegatedAdminResponse = Shapes::StructureShape.new(name: 'DeleteDatalakeDelegatedAdminResponse')
    DeleteDatalakeExceptionsSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteDatalakeExceptionsSubscriptionRequest')
    DeleteDatalakeExceptionsSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteDatalakeExceptionsSubscriptionResponse')
    DeleteDatalakeRequest = Shapes::StructureShape.new(name: 'DeleteDatalakeRequest')
    DeleteDatalakeResponse = Shapes::StructureShape.new(name: 'DeleteDatalakeResponse')
    DeleteSubscriberRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberResponse')
    DeleteSubscriptionNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteSubscriptionNotificationConfigurationRequest')
    DeleteSubscriptionNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteSubscriptionNotificationConfigurationResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    Dimension = Shapes::StringShape.new(name: 'Dimension')
    DimensionSet = Shapes::ListShape.new(name: 'DimensionSet')
    EndpointProtocol = Shapes::StringShape.new(name: 'EndpointProtocol')
    EventBridgeException = Shapes::StructureShape.new(name: 'EventBridgeException')
    Failures = Shapes::StructureShape.new(name: 'Failures')
    FailuresResponse = Shapes::StructureShape.new(name: 'FailuresResponse')
    FailuresResponseList = Shapes::ListShape.new(name: 'FailuresResponseList')
    Failureslist = Shapes::ListShape.new(name: 'Failureslist')
    GetDatalakeAutoEnableRequest = Shapes::StructureShape.new(name: 'GetDatalakeAutoEnableRequest')
    GetDatalakeAutoEnableResponse = Shapes::StructureShape.new(name: 'GetDatalakeAutoEnableResponse')
    GetDatalakeExceptionsExpiryRequest = Shapes::StructureShape.new(name: 'GetDatalakeExceptionsExpiryRequest')
    GetDatalakeExceptionsExpiryResponse = Shapes::StructureShape.new(name: 'GetDatalakeExceptionsExpiryResponse')
    GetDatalakeExceptionsSubscriptionRequest = Shapes::StructureShape.new(name: 'GetDatalakeExceptionsSubscriptionRequest')
    GetDatalakeExceptionsSubscriptionResponse = Shapes::StructureShape.new(name: 'GetDatalakeExceptionsSubscriptionResponse')
    GetDatalakeRequest = Shapes::StructureShape.new(name: 'GetDatalakeRequest')
    GetDatalakeResponse = Shapes::StructureShape.new(name: 'GetDatalakeResponse')
    GetDatalakeStatusRequest = Shapes::StructureShape.new(name: 'GetDatalakeStatusRequest')
    GetDatalakeStatusResponse = Shapes::StructureShape.new(name: 'GetDatalakeStatusResponse')
    GetSubscriberRequest = Shapes::StructureShape.new(name: 'GetSubscriberRequest')
    GetSubscriberResponse = Shapes::StructureShape.new(name: 'GetSubscriberResponse')
    HttpsMethod = Shapes::StringShape.new(name: 'HttpsMethod')
    InputSet = Shapes::ListShape.new(name: 'InputSet')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidInputException = Shapes::StructureShape.new(name: 'InvalidInputException')
    LakeConfigurationRequest = Shapes::StructureShape.new(name: 'LakeConfigurationRequest')
    LakeConfigurationRequestMap = Shapes::MapShape.new(name: 'LakeConfigurationRequestMap')
    LakeConfigurationResponse = Shapes::StructureShape.new(name: 'LakeConfigurationResponse')
    LakeConfigurationResponseMap = Shapes::MapShape.new(name: 'LakeConfigurationResponseMap')
    ListDatalakeExceptionsRequest = Shapes::StructureShape.new(name: 'ListDatalakeExceptionsRequest')
    ListDatalakeExceptionsResponse = Shapes::StructureShape.new(name: 'ListDatalakeExceptionsResponse')
    ListLogSourcesRequest = Shapes::StructureShape.new(name: 'ListLogSourcesRequest')
    ListLogSourcesResponse = Shapes::StructureShape.new(name: 'ListLogSourcesResponse')
    ListSubscribersRequest = Shapes::StructureShape.new(name: 'ListSubscribersRequest')
    ListSubscribersResponse = Shapes::StructureShape.new(name: 'ListSubscribersResponse')
    LogsStatus = Shapes::StructureShape.new(name: 'LogsStatus')
    LogsStatusList = Shapes::ListShape.new(name: 'LogsStatusList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    OcsfEventClass = Shapes::StringShape.new(name: 'OcsfEventClass')
    ProtocolAndNotificationEndpoint = Shapes::StructureShape.new(name: 'ProtocolAndNotificationEndpoint')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionSet = Shapes::ListShape.new(name: 'RegionSet')
    RegionSourceTypesAccountsList = Shapes::ListShape.new(name: 'RegionSourceTypesAccountsList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    RetentionSetting = Shapes::StructureShape.new(name: 'RetentionSetting')
    RetentionSettingList = Shapes::ListShape.new(name: 'RetentionSettingList')
    RetentionSettingRetentionPeriodInteger = Shapes::IntegerShape.new(name: 'RetentionSettingRetentionPeriodInteger')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3Exception = Shapes::StructureShape.new(name: 'S3Exception')
    SafeString = Shapes::StringShape.new(name: 'SafeString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SnsTopicArn = Shapes::StringShape.new(name: 'SnsTopicArn')
    SourceStatus = Shapes::StringShape.new(name: 'SourceStatus')
    SourceType = Shapes::UnionShape.new(name: 'SourceType')
    SourceTypeList = Shapes::ListShape.new(name: 'SourceTypeList')
    StorageClass = Shapes::StringShape.new(name: 'StorageClass')
    String = Shapes::StringShape.new(name: 'String')
    SubscriberList = Shapes::ListShape.new(name: 'SubscriberList')
    SubscriberResource = Shapes::StructureShape.new(name: 'SubscriberResource')
    SubscriptionProtocolType = Shapes::StringShape.new(name: 'SubscriptionProtocolType')
    SubscriptionStatus = Shapes::StringShape.new(name: 'SubscriptionStatus')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TwoDimensionsMap = Shapes::MapShape.new(name: 'TwoDimensionsMap')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UpdateDatalakeExceptionsExpiryRequest = Shapes::StructureShape.new(name: 'UpdateDatalakeExceptionsExpiryRequest')
    UpdateDatalakeExceptionsExpiryRequestExceptionMessageExpiryLong = Shapes::IntegerShape.new(name: 'UpdateDatalakeExceptionsExpiryRequestExceptionMessageExpiryLong')
    UpdateDatalakeExceptionsExpiryResponse = Shapes::StructureShape.new(name: 'UpdateDatalakeExceptionsExpiryResponse')
    UpdateDatalakeExceptionsSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateDatalakeExceptionsSubscriptionRequest')
    UpdateDatalakeExceptionsSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateDatalakeExceptionsSubscriptionResponse')
    UpdateDatalakeRequest = Shapes::StructureShape.new(name: 'UpdateDatalakeRequest')
    UpdateDatalakeResponse = Shapes::StructureShape.new(name: 'UpdateDatalakeResponse')
    UpdateSubscriberRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberRequest')
    UpdateSubscriberRequestSubscriberNameString = Shapes::StringShape.new(name: 'UpdateSubscriberRequestSubscriberNameString')
    UpdateSubscriberResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberResponse')
    UpdateSubscriptionNotificationConfigurationRequest = Shapes::StructureShape.new(name: 'UpdateSubscriptionNotificationConfigurationRequest')
    UpdateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString = Shapes::StringShape.new(name: 'UpdateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString')
    UpdateSubscriptionNotificationConfigurationResponse = Shapes::StructureShape.new(name: 'UpdateSubscriptionNotificationConfigurationResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionField = Shapes::StructureShape.new(name: 'ValidationExceptionField')
    ValidationExceptionFieldList = Shapes::ListShape.new(name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')
    ValueSet = Shapes::ListShape.new(name: 'ValueSet')
    settingsStatus = Shapes::StringShape.new(name: 'settingsStatus')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessTypeList.member = Shapes::ShapeRef.new(shape: AccessType)

    AccountList.member = Shapes::ShapeRef.new(shape: String)

    AccountNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccountNotFoundException.struct_class = Types::AccountNotFoundException

    AccountSources.add_member(:account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "account"))
    AccountSources.add_member(:event_class, Shapes::ShapeRef.new(shape: OcsfEventClass, location_name: "eventClass"))
    AccountSources.add_member(:logs_status, Shapes::ShapeRef.new(shape: LogsStatusList, location_name: "logsStatus"))
    AccountSources.add_member(:source_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sourceType"))
    AccountSources.struct_class = Types::AccountSources

    AccountSourcesList.member = Shapes::ShapeRef.new(shape: AccountSources)

    AllDimensionsMap.key = Shapes::ShapeRef.new(shape: String)
    AllDimensionsMap.value = Shapes::ShapeRef.new(shape: TwoDimensionsMap)

    AutoEnableNewRegionConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "region"))
    AutoEnableNewRegionConfiguration.add_member(:sources, Shapes::ShapeRef.new(shape: AwsSourceTypeList, required: true, location_name: "sources"))
    AutoEnableNewRegionConfiguration.struct_class = Types::AutoEnableNewRegionConfiguration

    AutoEnableNewRegionConfigurationList.member = Shapes::ShapeRef.new(shape: AutoEnableNewRegionConfiguration)

    AwsSourceTypeList.member = Shapes::ShapeRef.new(shape: AwsLogSourceType)

    BucketNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    BucketNotFoundException.struct_class = Types::BucketNotFoundException

    ConcurrentModificationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConcurrentModificationException.struct_class = Types::ConcurrentModificationException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    ConflictSourceNamesException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictSourceNamesException.struct_class = Types::ConflictSourceNamesException

    ConflictSubscriptionException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictSubscriptionException.struct_class = Types::ConflictSubscriptionException

    CreateAwsLogSourceRequest.add_member(:enable_all_dimensions, Shapes::ShapeRef.new(shape: AllDimensionsMap, location_name: "enableAllDimensions"))
    CreateAwsLogSourceRequest.add_member(:enable_single_dimension, Shapes::ShapeRef.new(shape: InputSet, location_name: "enableSingleDimension"))
    CreateAwsLogSourceRequest.add_member(:enable_two_dimensions, Shapes::ShapeRef.new(shape: TwoDimensionsMap, location_name: "enableTwoDimensions"))
    CreateAwsLogSourceRequest.add_member(:input_order, Shapes::ShapeRef.new(shape: DimensionSet, required: true, location_name: "inputOrder"))
    CreateAwsLogSourceRequest.struct_class = Types::CreateAwsLogSourceRequest

    CreateAwsLogSourceResponse.add_member(:failed, Shapes::ShapeRef.new(shape: AccountList, location_name: "failed"))
    CreateAwsLogSourceResponse.add_member(:processing, Shapes::ShapeRef.new(shape: AccountList, location_name: "processing"))
    CreateAwsLogSourceResponse.struct_class = Types::CreateAwsLogSourceResponse

    CreateCustomLogSourceRequest.add_member(:custom_source_name, Shapes::ShapeRef.new(shape: CustomSourceType, required: true, location_name: "customSourceName"))
    CreateCustomLogSourceRequest.add_member(:event_class, Shapes::ShapeRef.new(shape: OcsfEventClass, required: true, location_name: "eventClass"))
    CreateCustomLogSourceRequest.add_member(:glue_invocation_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "glueInvocationRoleArn"))
    CreateCustomLogSourceRequest.add_member(:log_provider_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "logProviderAccountId"))
    CreateCustomLogSourceRequest.struct_class = Types::CreateCustomLogSourceRequest

    CreateCustomLogSourceResponse.add_member(:custom_data_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "customDataLocation"))
    CreateCustomLogSourceResponse.add_member(:glue_crawler_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "glueCrawlerName"))
    CreateCustomLogSourceResponse.add_member(:glue_database_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "glueDatabaseName"))
    CreateCustomLogSourceResponse.add_member(:glue_table_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "glueTableName"))
    CreateCustomLogSourceResponse.add_member(:log_provider_access_role_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "logProviderAccessRoleArn"))
    CreateCustomLogSourceResponse.struct_class = Types::CreateCustomLogSourceResponse

    CreateDatalakeAutoEnableRequest.add_member(:configuration_for_new_accounts, Shapes::ShapeRef.new(shape: AutoEnableNewRegionConfigurationList, required: true, location_name: "configurationForNewAccounts"))
    CreateDatalakeAutoEnableRequest.struct_class = Types::CreateDatalakeAutoEnableRequest

    CreateDatalakeAutoEnableResponse.struct_class = Types::CreateDatalakeAutoEnableResponse

    CreateDatalakeDelegatedAdminRequest.add_member(:account, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "account"))
    CreateDatalakeDelegatedAdminRequest.struct_class = Types::CreateDatalakeDelegatedAdminRequest

    CreateDatalakeDelegatedAdminResponse.struct_class = Types::CreateDatalakeDelegatedAdminResponse

    CreateDatalakeExceptionsSubscriptionRequest.add_member(:notification_endpoint, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "notificationEndpoint"))
    CreateDatalakeExceptionsSubscriptionRequest.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocolType, required: true, location_name: "subscriptionProtocol"))
    CreateDatalakeExceptionsSubscriptionRequest.struct_class = Types::CreateDatalakeExceptionsSubscriptionRequest

    CreateDatalakeExceptionsSubscriptionResponse.struct_class = Types::CreateDatalakeExceptionsSubscriptionResponse

    CreateDatalakeRequest.add_member(:configurations, Shapes::ShapeRef.new(shape: LakeConfigurationRequestMap, location_name: "configurations"))
    CreateDatalakeRequest.add_member(:enable_all, Shapes::ShapeRef.new(shape: Boolean, location_name: "enableAll"))
    CreateDatalakeRequest.add_member(:meta_store_manager_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "metaStoreManagerRoleArn"))
    CreateDatalakeRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionSet, location_name: "regions"))
    CreateDatalakeRequest.struct_class = Types::CreateDatalakeRequest

    CreateDatalakeResponse.struct_class = Types::CreateDatalakeResponse

    CreateSubscriberRequest.add_member(:access_types, Shapes::ShapeRef.new(shape: AccessTypeList, location_name: "accessTypes"))
    CreateSubscriberRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "accountId"))
    CreateSubscriberRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "externalId"))
    CreateSubscriberRequest.add_member(:source_types, Shapes::ShapeRef.new(shape: SourceTypeList, required: true, location_name: "sourceTypes"))
    CreateSubscriberRequest.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "subscriberDescription"))
    CreateSubscriberRequest.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: CreateSubscriberRequestSubscriberNameString, required: true, location_name: "subscriberName"))
    CreateSubscriberRequest.struct_class = Types::CreateSubscriberRequest

    CreateSubscriberResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateSubscriberResponse.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "s3BucketArn"))
    CreateSubscriberResponse.add_member(:sns_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsArn"))
    CreateSubscriberResponse.add_member(:subscription_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "subscriptionId"))
    CreateSubscriberResponse.struct_class = Types::CreateSubscriberResponse

    CreateSubscriptionNotificationConfigurationRequest.add_member(:create_sqs, Shapes::ShapeRef.new(shape: Boolean, location_name: "createSqs"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:https_api_key_name, Shapes::ShapeRef.new(shape: String, location_name: "httpsApiKeyName"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:https_api_key_value, Shapes::ShapeRef.new(shape: String, location_name: "httpsApiKeyValue"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:https_method, Shapes::ShapeRef.new(shape: HttpsMethod, location_name: "httpsMethod"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:subscription_endpoint, Shapes::ShapeRef.new(shape: CreateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString, location_name: "subscriptionEndpoint"))
    CreateSubscriptionNotificationConfigurationRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriptionId"))
    CreateSubscriptionNotificationConfigurationRequest.struct_class = Types::CreateSubscriptionNotificationConfigurationRequest

    CreateSubscriptionNotificationConfigurationResponse.add_member(:queue_arn, Shapes::ShapeRef.new(shape: SafeString, location_name: "queueArn"))
    CreateSubscriptionNotificationConfigurationResponse.struct_class = Types::CreateSubscriptionNotificationConfigurationResponse

    DeleteAwsLogSourceRequest.add_member(:disable_all_dimensions, Shapes::ShapeRef.new(shape: AllDimensionsMap, location_name: "disableAllDimensions"))
    DeleteAwsLogSourceRequest.add_member(:disable_single_dimension, Shapes::ShapeRef.new(shape: InputSet, location_name: "disableSingleDimension"))
    DeleteAwsLogSourceRequest.add_member(:disable_two_dimensions, Shapes::ShapeRef.new(shape: TwoDimensionsMap, location_name: "disableTwoDimensions"))
    DeleteAwsLogSourceRequest.add_member(:input_order, Shapes::ShapeRef.new(shape: DimensionSet, required: true, location_name: "inputOrder"))
    DeleteAwsLogSourceRequest.struct_class = Types::DeleteAwsLogSourceRequest

    DeleteAwsLogSourceResponse.add_member(:failed, Shapes::ShapeRef.new(shape: AccountList, location_name: "failed"))
    DeleteAwsLogSourceResponse.add_member(:processing, Shapes::ShapeRef.new(shape: AccountList, location_name: "processing"))
    DeleteAwsLogSourceResponse.struct_class = Types::DeleteAwsLogSourceResponse

    DeleteCustomLogSourceRequest.add_member(:custom_source_name, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "customSourceName"))
    DeleteCustomLogSourceRequest.struct_class = Types::DeleteCustomLogSourceRequest

    DeleteCustomLogSourceResponse.add_member(:custom_data_location, Shapes::ShapeRef.new(shape: String, required: true, location_name: "customDataLocation"))
    DeleteCustomLogSourceResponse.struct_class = Types::DeleteCustomLogSourceResponse

    DeleteDatalakeAutoEnableRequest.add_member(:remove_from_configuration_for_new_accounts, Shapes::ShapeRef.new(shape: AutoEnableNewRegionConfigurationList, required: true, location_name: "removeFromConfigurationForNewAccounts"))
    DeleteDatalakeAutoEnableRequest.struct_class = Types::DeleteDatalakeAutoEnableRequest

    DeleteDatalakeAutoEnableResponse.struct_class = Types::DeleteDatalakeAutoEnableResponse

    DeleteDatalakeDelegatedAdminRequest.add_member(:account, Shapes::ShapeRef.new(shape: SafeString, required: true, location: "uri", location_name: "account"))
    DeleteDatalakeDelegatedAdminRequest.struct_class = Types::DeleteDatalakeDelegatedAdminRequest

    DeleteDatalakeDelegatedAdminResponse.struct_class = Types::DeleteDatalakeDelegatedAdminResponse

    DeleteDatalakeExceptionsSubscriptionRequest.struct_class = Types::DeleteDatalakeExceptionsSubscriptionRequest

    DeleteDatalakeExceptionsSubscriptionResponse.add_member(:status, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "status"))
    DeleteDatalakeExceptionsSubscriptionResponse.struct_class = Types::DeleteDatalakeExceptionsSubscriptionResponse

    DeleteDatalakeRequest.struct_class = Types::DeleteDatalakeRequest

    DeleteDatalakeResponse.struct_class = Types::DeleteDatalakeResponse

    DeleteSubscriberRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "querystring", location_name: "id"))
    DeleteSubscriberRequest.struct_class = Types::DeleteSubscriberRequest

    DeleteSubscriberResponse.struct_class = Types::DeleteSubscriberResponse

    DeleteSubscriptionNotificationConfigurationRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriptionId"))
    DeleteSubscriptionNotificationConfigurationRequest.struct_class = Types::DeleteSubscriptionNotificationConfigurationRequest

    DeleteSubscriptionNotificationConfigurationResponse.struct_class = Types::DeleteSubscriptionNotificationConfigurationResponse

    DimensionSet.member = Shapes::ShapeRef.new(shape: Dimension)

    EventBridgeException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    EventBridgeException.struct_class = Types::EventBridgeException

    Failures.add_member(:exception_message, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "exceptionMessage"))
    Failures.add_member(:remediation, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "remediation"))
    Failures.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "timestamp"))
    Failures.struct_class = Types::Failures

    FailuresResponse.add_member(:failures, Shapes::ShapeRef.new(shape: Failureslist, location_name: "failures"))
    FailuresResponse.add_member(:region, Shapes::ShapeRef.new(shape: SafeString, location_name: "region"))
    FailuresResponse.struct_class = Types::FailuresResponse

    FailuresResponseList.member = Shapes::ShapeRef.new(shape: FailuresResponse)

    Failureslist.member = Shapes::ShapeRef.new(shape: Failures)

    GetDatalakeAutoEnableRequest.struct_class = Types::GetDatalakeAutoEnableRequest

    GetDatalakeAutoEnableResponse.add_member(:auto_enable_new_accounts, Shapes::ShapeRef.new(shape: AutoEnableNewRegionConfigurationList, required: true, location_name: "autoEnableNewAccounts"))
    GetDatalakeAutoEnableResponse.struct_class = Types::GetDatalakeAutoEnableResponse

    GetDatalakeExceptionsExpiryRequest.struct_class = Types::GetDatalakeExceptionsExpiryRequest

    GetDatalakeExceptionsExpiryResponse.add_member(:exception_message_expiry, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "exceptionMessageExpiry"))
    GetDatalakeExceptionsExpiryResponse.struct_class = Types::GetDatalakeExceptionsExpiryResponse

    GetDatalakeExceptionsSubscriptionRequest.struct_class = Types::GetDatalakeExceptionsSubscriptionRequest

    GetDatalakeExceptionsSubscriptionResponse.add_member(:protocol_and_notification_endpoint, Shapes::ShapeRef.new(shape: ProtocolAndNotificationEndpoint, required: true, location_name: "protocolAndNotificationEndpoint"))
    GetDatalakeExceptionsSubscriptionResponse.struct_class = Types::GetDatalakeExceptionsSubscriptionResponse

    GetDatalakeRequest.struct_class = Types::GetDatalakeRequest

    GetDatalakeResponse.add_member(:configurations, Shapes::ShapeRef.new(shape: LakeConfigurationResponseMap, required: true, location_name: "configurations"))
    GetDatalakeResponse.struct_class = Types::GetDatalakeResponse

    GetDatalakeStatusRequest.add_member(:account_set, Shapes::ShapeRef.new(shape: InputSet, location_name: "accountSet"))
    GetDatalakeStatusRequest.add_member(:max_account_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxAccountResults"))
    GetDatalakeStatusRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SafeString, location_name: "nextToken"))
    GetDatalakeStatusRequest.struct_class = Types::GetDatalakeStatusRequest

    GetDatalakeStatusResponse.add_member(:account_sources_list, Shapes::ShapeRef.new(shape: AccountSourcesList, required: true, location_name: "accountSourcesList"))
    GetDatalakeStatusResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SafeString, location_name: "nextToken"))
    GetDatalakeStatusResponse.struct_class = Types::GetDatalakeStatusResponse

    GetSubscriberRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetSubscriberRequest.struct_class = Types::GetSubscriberRequest

    GetSubscriberResponse.add_member(:subscriber, Shapes::ShapeRef.new(shape: SubscriberResource, location_name: "subscriber"))
    GetSubscriberResponse.struct_class = Types::GetSubscriberResponse

    InputSet.member = Shapes::ShapeRef.new(shape: SafeString)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidInputException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InvalidInputException.struct_class = Types::InvalidInputException

    LakeConfigurationRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: String, location_name: "encryptionKey"))
    LakeConfigurationRequest.add_member(:replication_destination_regions, Shapes::ShapeRef.new(shape: RegionSet, location_name: "replicationDestinationRegions"))
    LakeConfigurationRequest.add_member(:replication_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "replicationRoleArn"))
    LakeConfigurationRequest.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettingList, location_name: "retentionSettings"))
    LakeConfigurationRequest.add_member(:tags_map, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tagsMap"))
    LakeConfigurationRequest.struct_class = Types::LakeConfigurationRequest

    LakeConfigurationRequestMap.key = Shapes::ShapeRef.new(shape: Region)
    LakeConfigurationRequestMap.value = Shapes::ShapeRef.new(shape: LakeConfigurationRequest)

    LakeConfigurationResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: String, location_name: "encryptionKey"))
    LakeConfigurationResponse.add_member(:replication_destination_regions, Shapes::ShapeRef.new(shape: RegionSet, location_name: "replicationDestinationRegions"))
    LakeConfigurationResponse.add_member(:replication_role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "replicationRoleArn"))
    LakeConfigurationResponse.add_member(:retention_settings, Shapes::ShapeRef.new(shape: RetentionSettingList, location_name: "retentionSettings"))
    LakeConfigurationResponse.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "s3BucketArn"))
    LakeConfigurationResponse.add_member(:status, Shapes::ShapeRef.new(shape: settingsStatus, location_name: "status"))
    LakeConfigurationResponse.add_member(:tags_map, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tagsMap"))
    LakeConfigurationResponse.struct_class = Types::LakeConfigurationResponse

    LakeConfigurationResponseMap.key = Shapes::ShapeRef.new(shape: Region)
    LakeConfigurationResponseMap.value = Shapes::ShapeRef.new(shape: LakeConfigurationResponse)

    ListDatalakeExceptionsRequest.add_member(:max_failures, Shapes::ShapeRef.new(shape: Integer, location_name: "maxFailures"))
    ListDatalakeExceptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SafeString, location_name: "nextToken"))
    ListDatalakeExceptionsRequest.add_member(:region_set, Shapes::ShapeRef.new(shape: RegionSet, location_name: "regionSet"))
    ListDatalakeExceptionsRequest.struct_class = Types::ListDatalakeExceptionsRequest

    ListDatalakeExceptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: SafeString, location_name: "nextToken"))
    ListDatalakeExceptionsResponse.add_member(:non_retryable_failures, Shapes::ShapeRef.new(shape: FailuresResponseList, required: true, location_name: "nonRetryableFailures"))
    ListDatalakeExceptionsResponse.struct_class = Types::ListDatalakeExceptionsResponse

    ListLogSourcesRequest.add_member(:input_order, Shapes::ShapeRef.new(shape: DimensionSet, location_name: "inputOrder"))
    ListLogSourcesRequest.add_member(:list_all_dimensions, Shapes::ShapeRef.new(shape: AllDimensionsMap, location_name: "listAllDimensions"))
    ListLogSourcesRequest.add_member(:list_single_dimension, Shapes::ShapeRef.new(shape: InputSet, location_name: "listSingleDimension"))
    ListLogSourcesRequest.add_member(:list_two_dimensions, Shapes::ShapeRef.new(shape: TwoDimensionsMap, location_name: "listTwoDimensions"))
    ListLogSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location_name: "maxResults"))
    ListLogSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: SafeString, location_name: "nextToken"))
    ListLogSourcesRequest.struct_class = Types::ListLogSourcesRequest

    ListLogSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListLogSourcesResponse.add_member(:region_source_types_accounts_list, Shapes::ShapeRef.new(shape: RegionSourceTypesAccountsList, required: true, location_name: "regionSourceTypesAccountsList"))
    ListLogSourcesResponse.struct_class = Types::ListLogSourcesResponse

    ListSubscribersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListSubscribersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListSubscribersRequest.struct_class = Types::ListSubscribersRequest

    ListSubscribersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListSubscribersResponse.add_member(:subscribers, Shapes::ShapeRef.new(shape: SubscriberList, required: true, location_name: "subscribers"))
    ListSubscribersResponse.struct_class = Types::ListSubscribersResponse

    LogsStatus.add_member(:health_status, Shapes::ShapeRef.new(shape: SourceStatus, required: true, location_name: "healthStatus"))
    LogsStatus.add_member(:path_to_logs, Shapes::ShapeRef.new(shape: String, required: true, location_name: "pathToLogs"))
    LogsStatus.struct_class = Types::LogsStatus

    LogsStatusList.member = Shapes::ShapeRef.new(shape: LogsStatus)

    ProtocolAndNotificationEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: SafeString, location_name: "endpoint"))
    ProtocolAndNotificationEndpoint.add_member(:protocol, Shapes::ShapeRef.new(shape: SafeString, location_name: "protocol"))
    ProtocolAndNotificationEndpoint.struct_class = Types::ProtocolAndNotificationEndpoint

    RegionSet.member = Shapes::ShapeRef.new(shape: Region)

    RegionSourceTypesAccountsList.member = Shapes::ShapeRef.new(shape: AllDimensionsMap)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    RetentionSetting.add_member(:retention_period, Shapes::ShapeRef.new(shape: RetentionSettingRetentionPeriodInteger, location_name: "retentionPeriod"))
    RetentionSetting.add_member(:storage_class, Shapes::ShapeRef.new(shape: StorageClass, location_name: "storageClass"))
    RetentionSetting.struct_class = Types::RetentionSetting

    RetentionSettingList.member = Shapes::ShapeRef.new(shape: RetentionSetting)

    S3Exception.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    S3Exception.struct_class = Types::S3Exception

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "quotaCode"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resourceType"))
    ServiceQuotaExceededException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceCode"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceType.add_member(:aws_source_type, Shapes::ShapeRef.new(shape: AwsLogSourceType, location_name: "awsSourceType"))
    SourceType.add_member(:custom_source_type, Shapes::ShapeRef.new(shape: CustomSourceType, location_name: "customSourceType"))
    SourceType.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    SourceType.add_member_subclass(:aws_source_type, Types::SourceType::AwsSourceType)
    SourceType.add_member_subclass(:custom_source_type, Types::SourceType::CustomSourceType)
    SourceType.add_member_subclass(:unknown, Types::SourceType::Unknown)
    SourceType.struct_class = Types::SourceType

    SourceTypeList.member = Shapes::ShapeRef.new(shape: SourceType)

    SubscriberList.member = Shapes::ShapeRef.new(shape: SubscriberResource)

    SubscriberResource.add_member(:access_types, Shapes::ShapeRef.new(shape: AccessTypeList, location_name: "accessTypes"))
    SubscriberResource.add_member(:account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location_name: "accountId"))
    SubscriberResource.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    SubscriberResource.add_member(:external_id, Shapes::ShapeRef.new(shape: SafeString, location_name: "externalId"))
    SubscriberResource.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    SubscriberResource.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "s3BucketArn"))
    SubscriberResource.add_member(:sns_arn, Shapes::ShapeRef.new(shape: SnsTopicArn, location_name: "snsArn"))
    SubscriberResource.add_member(:source_types, Shapes::ShapeRef.new(shape: SourceTypeList, required: true, location_name: "sourceTypes"))
    SubscriberResource.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberDescription"))
    SubscriberResource.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberName"))
    SubscriberResource.add_member(:subscription_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "subscriptionEndpoint"))
    SubscriberResource.add_member(:subscription_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "subscriptionId"))
    SubscriberResource.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: EndpointProtocol, location_name: "subscriptionProtocol"))
    SubscriberResource.add_member(:subscription_status, Shapes::ShapeRef.new(shape: SubscriptionStatus, location_name: "subscriptionStatus"))
    SubscriberResource.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    SubscriberResource.struct_class = Types::SubscriberResource

    TagsMap.key = Shapes::ShapeRef.new(shape: String)
    TagsMap.value = Shapes::ShapeRef.new(shape: String)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TwoDimensionsMap.key = Shapes::ShapeRef.new(shape: String)
    TwoDimensionsMap.value = Shapes::ShapeRef.new(shape: ValueSet)

    UpdateDatalakeExceptionsExpiryRequest.add_member(:exception_message_expiry, Shapes::ShapeRef.new(shape: UpdateDatalakeExceptionsExpiryRequestExceptionMessageExpiryLong, required: true, location_name: "exceptionMessageExpiry"))
    UpdateDatalakeExceptionsExpiryRequest.struct_class = Types::UpdateDatalakeExceptionsExpiryRequest

    UpdateDatalakeExceptionsExpiryResponse.struct_class = Types::UpdateDatalakeExceptionsExpiryResponse

    UpdateDatalakeExceptionsSubscriptionRequest.add_member(:notification_endpoint, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "notificationEndpoint"))
    UpdateDatalakeExceptionsSubscriptionRequest.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocolType, required: true, location_name: "subscriptionProtocol"))
    UpdateDatalakeExceptionsSubscriptionRequest.struct_class = Types::UpdateDatalakeExceptionsSubscriptionRequest

    UpdateDatalakeExceptionsSubscriptionResponse.struct_class = Types::UpdateDatalakeExceptionsSubscriptionResponse

    UpdateDatalakeRequest.add_member(:configurations, Shapes::ShapeRef.new(shape: LakeConfigurationRequestMap, required: true, location_name: "configurations"))
    UpdateDatalakeRequest.struct_class = Types::UpdateDatalakeRequest

    UpdateDatalakeResponse.struct_class = Types::UpdateDatalakeResponse

    UpdateSubscriberRequest.add_member(:external_id, Shapes::ShapeRef.new(shape: SafeString, location_name: "externalId"))
    UpdateSubscriberRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    UpdateSubscriberRequest.add_member(:source_types, Shapes::ShapeRef.new(shape: SourceTypeList, required: true, location_name: "sourceTypes"))
    UpdateSubscriberRequest.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "subscriberDescription"))
    UpdateSubscriberRequest.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: UpdateSubscriberRequestSubscriberNameString, location_name: "subscriberName"))
    UpdateSubscriberRequest.struct_class = Types::UpdateSubscriberRequest

    UpdateSubscriberResponse.add_member(:subscriber, Shapes::ShapeRef.new(shape: SubscriberResource, location_name: "subscriber"))
    UpdateSubscriberResponse.struct_class = Types::UpdateSubscriberResponse

    UpdateSubscriptionNotificationConfigurationRequest.add_member(:create_sqs, Shapes::ShapeRef.new(shape: Boolean, location_name: "createSqs"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:https_api_key_name, Shapes::ShapeRef.new(shape: String, location_name: "httpsApiKeyName"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:https_api_key_value, Shapes::ShapeRef.new(shape: String, location_name: "httpsApiKeyValue"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:https_method, Shapes::ShapeRef.new(shape: HttpsMethod, location_name: "httpsMethod"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:subscription_endpoint, Shapes::ShapeRef.new(shape: UpdateSubscriptionNotificationConfigurationRequestSubscriptionEndpointString, location_name: "subscriptionEndpoint"))
    UpdateSubscriptionNotificationConfigurationRequest.add_member(:subscription_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriptionId"))
    UpdateSubscriptionNotificationConfigurationRequest.struct_class = Types::UpdateSubscriptionNotificationConfigurationRequest

    UpdateSubscriptionNotificationConfigurationResponse.add_member(:queue_arn, Shapes::ShapeRef.new(shape: SafeString, location_name: "queueArn"))
    UpdateSubscriptionNotificationConfigurationResponse.struct_class = Types::UpdateSubscriptionNotificationConfigurationResponse

    ValidationException.add_member(:field_list, Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: "fieldList"))
    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, required: true, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException

    ValidationExceptionField.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationExceptionField.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    ValidationExceptionField.struct_class = Types::ValidationExceptionField

    ValidationExceptionFieldList.member = Shapes::ShapeRef.new(shape: ValidationExceptionField)

    ValueSet.member = Shapes::ShapeRef.new(shape: String)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "endpointPrefix" => "securitylake",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Security Lake",
        "serviceId" => "SecurityLake",
        "signatureVersion" => "v4",
        "signingName" => "securitylake",
        "uid" => "securitylake-2018-05-10",
      }

      api.add_operation(:create_aws_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAwsLogSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/logsources/aws"
        o.input = Shapes::ShapeRef.new(shape: CreateAwsLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAwsLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: S3Exception)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:create_custom_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomLogSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/logsources/custom"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictSourceNamesException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BucketNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:create_datalake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatalake"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: CreateDatalakeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatalakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_datalake_auto_enable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatalakeAutoEnable"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/autoenable"
        o.input = Shapes::ShapeRef.new(shape: CreateDatalakeAutoEnableRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatalakeAutoEnableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:create_datalake_delegated_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatalakeDelegatedAdmin"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/delegate"
        o.input = Shapes::ShapeRef.new(shape: CreateDatalakeDelegatedAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatalakeDelegatedAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:create_datalake_exceptions_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDatalakeExceptionsSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: CreateDatalakeExceptionsSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDatalakeExceptionsSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:create_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/v1/subscribers"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BucketNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:create_subscription_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriptionNotificationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/subscription-notifications/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriptionNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriptionNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:delete_aws_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAwsLogSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/logsources/aws/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteAwsLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAwsLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:delete_custom_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomLogSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/logsources/custom"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictSourceNamesException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BucketNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:delete_datalake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatalake"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatalakeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatalakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_datalake_auto_enable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatalakeAutoEnable"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/autoenable/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatalakeAutoEnableRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatalakeAutoEnableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:delete_datalake_delegated_admin, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatalakeDelegatedAdmin"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake/delegate/{account}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatalakeDelegatedAdminRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatalakeDelegatedAdminResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_datalake_exceptions_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDatalakeExceptionsSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: DeleteDatalakeExceptionsSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDatalakeExceptionsSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:delete_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriber"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/subscribers"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: BucketNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:delete_subscription_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriptionNotificationConfiguration"
        o.http_method = "DELETE"
        o.http_request_uri = "/subscription-notifications/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriptionNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriptionNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:get_datalake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatalake"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: GetDatalakeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatalakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:get_datalake_auto_enable, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatalakeAutoEnable"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake/autoenable"
        o.input = Shapes::ShapeRef.new(shape: GetDatalakeAutoEnableRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatalakeAutoEnableResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:get_datalake_exceptions_expiry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatalakeExceptionsExpiry"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake/exceptions/expiry"
        o.input = Shapes::ShapeRef.new(shape: GetDatalakeExceptionsExpiryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatalakeExceptionsExpiryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:get_datalake_exceptions_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatalakeExceptionsSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: GetDatalakeExceptionsSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatalakeExceptionsSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:get_datalake_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDatalakeStatus"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/status"
        o.input = Shapes::ShapeRef.new(shape: GetDatalakeStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDatalakeStatusResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_account_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriber"
        o.http_method = "GET"
        o.http_request_uri = "/v1/subscribers/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:list_datalake_exceptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDatalakeExceptions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/exceptions"
        o.input = Shapes::ShapeRef.new(shape: ListDatalakeExceptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDatalakeExceptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_failures",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_log_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/logsources/list"
        o.input = Shapes::ShapeRef.new(shape: ListLogSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_subscribers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListSubscribers"
        o.http_method = "GET"
        o.http_request_uri = "/v1/subscribers"
        o.input = Shapes::ShapeRef.new(shape: ListSubscribersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListSubscribersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:update_datalake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatalake"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatalakeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatalakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: EventBridgeException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_datalake_exceptions_expiry, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatalakeExceptionsExpiry"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/datalake/exceptions/expiry"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatalakeExceptionsExpiryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatalakeExceptionsExpiryResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:update_datalake_exceptions_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDatalakeExceptionsSubscription"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: UpdateDatalakeExceptionsSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDatalakeExceptionsSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
      end)

      api.add_operation(:update_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriber"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/subscribers/{id}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictSubscriptionException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)

      api.add_operation(:update_subscription_notification_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriptionNotificationConfiguration"
        o.http_method = "PUT"
        o.http_request_uri = "/subscription-notifications/{subscriptionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriptionNotificationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriptionNotificationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccountNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidInputException)
      end)
    end

  end
end
