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
    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsIdentity = Shapes::StructureShape.new(name: 'AwsIdentity')
    AwsLogSourceConfiguration = Shapes::StructureShape.new(name: 'AwsLogSourceConfiguration')
    AwsLogSourceConfigurationList = Shapes::ListShape.new(name: 'AwsLogSourceConfigurationList')
    AwsLogSourceName = Shapes::StringShape.new(name: 'AwsLogSourceName')
    AwsLogSourceResource = Shapes::StructureShape.new(name: 'AwsLogSourceResource')
    AwsLogSourceResourceList = Shapes::ListShape.new(name: 'AwsLogSourceResourceList')
    AwsLogSourceVersion = Shapes::StringShape.new(name: 'AwsLogSourceVersion')
    AwsPrincipal = Shapes::StringShape.new(name: 'AwsPrincipal')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateAwsLogSourceRequest = Shapes::StructureShape.new(name: 'CreateAwsLogSourceRequest')
    CreateAwsLogSourceResponse = Shapes::StructureShape.new(name: 'CreateAwsLogSourceResponse')
    CreateCustomLogSourceRequest = Shapes::StructureShape.new(name: 'CreateCustomLogSourceRequest')
    CreateCustomLogSourceResponse = Shapes::StructureShape.new(name: 'CreateCustomLogSourceResponse')
    CreateDataLakeExceptionSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateDataLakeExceptionSubscriptionRequest')
    CreateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong = Shapes::IntegerShape.new(name: 'CreateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong')
    CreateDataLakeExceptionSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateDataLakeExceptionSubscriptionResponse')
    CreateDataLakeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'CreateDataLakeOrganizationConfigurationRequest')
    CreateDataLakeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'CreateDataLakeOrganizationConfigurationResponse')
    CreateDataLakeRequest = Shapes::StructureShape.new(name: 'CreateDataLakeRequest')
    CreateDataLakeResponse = Shapes::StructureShape.new(name: 'CreateDataLakeResponse')
    CreateSubscriberNotificationRequest = Shapes::StructureShape.new(name: 'CreateSubscriberNotificationRequest')
    CreateSubscriberNotificationResponse = Shapes::StructureShape.new(name: 'CreateSubscriberNotificationResponse')
    CreateSubscriberRequest = Shapes::StructureShape.new(name: 'CreateSubscriberRequest')
    CreateSubscriberRequestSubscriberNameString = Shapes::StringShape.new(name: 'CreateSubscriberRequestSubscriberNameString')
    CreateSubscriberResponse = Shapes::StructureShape.new(name: 'CreateSubscriberResponse')
    CustomLogSourceAttributes = Shapes::StructureShape.new(name: 'CustomLogSourceAttributes')
    CustomLogSourceConfiguration = Shapes::StructureShape.new(name: 'CustomLogSourceConfiguration')
    CustomLogSourceCrawlerConfiguration = Shapes::StructureShape.new(name: 'CustomLogSourceCrawlerConfiguration')
    CustomLogSourceName = Shapes::StringShape.new(name: 'CustomLogSourceName')
    CustomLogSourceProvider = Shapes::StructureShape.new(name: 'CustomLogSourceProvider')
    CustomLogSourceResource = Shapes::StructureShape.new(name: 'CustomLogSourceResource')
    CustomLogSourceVersion = Shapes::StringShape.new(name: 'CustomLogSourceVersion')
    DataLakeAutoEnableNewAccountConfiguration = Shapes::StructureShape.new(name: 'DataLakeAutoEnableNewAccountConfiguration')
    DataLakeAutoEnableNewAccountConfigurationList = Shapes::ListShape.new(name: 'DataLakeAutoEnableNewAccountConfigurationList')
    DataLakeConfiguration = Shapes::StructureShape.new(name: 'DataLakeConfiguration')
    DataLakeConfigurationList = Shapes::ListShape.new(name: 'DataLakeConfigurationList')
    DataLakeEncryptionConfiguration = Shapes::StructureShape.new(name: 'DataLakeEncryptionConfiguration')
    DataLakeException = Shapes::StructureShape.new(name: 'DataLakeException')
    DataLakeExceptionList = Shapes::ListShape.new(name: 'DataLakeExceptionList')
    DataLakeLifecycleConfiguration = Shapes::StructureShape.new(name: 'DataLakeLifecycleConfiguration')
    DataLakeLifecycleExpiration = Shapes::StructureShape.new(name: 'DataLakeLifecycleExpiration')
    DataLakeLifecycleExpirationDaysInteger = Shapes::IntegerShape.new(name: 'DataLakeLifecycleExpirationDaysInteger')
    DataLakeLifecycleTransition = Shapes::StructureShape.new(name: 'DataLakeLifecycleTransition')
    DataLakeLifecycleTransitionDaysInteger = Shapes::IntegerShape.new(name: 'DataLakeLifecycleTransitionDaysInteger')
    DataLakeLifecycleTransitionList = Shapes::ListShape.new(name: 'DataLakeLifecycleTransitionList')
    DataLakeReplicationConfiguration = Shapes::StructureShape.new(name: 'DataLakeReplicationConfiguration')
    DataLakeResource = Shapes::StructureShape.new(name: 'DataLakeResource')
    DataLakeResourceList = Shapes::ListShape.new(name: 'DataLakeResourceList')
    DataLakeSource = Shapes::StructureShape.new(name: 'DataLakeSource')
    DataLakeSourceList = Shapes::ListShape.new(name: 'DataLakeSourceList')
    DataLakeSourceStatus = Shapes::StructureShape.new(name: 'DataLakeSourceStatus')
    DataLakeSourceStatusList = Shapes::ListShape.new(name: 'DataLakeSourceStatusList')
    DataLakeStatus = Shapes::StringShape.new(name: 'DataLakeStatus')
    DataLakeStorageClass = Shapes::StringShape.new(name: 'DataLakeStorageClass')
    DataLakeUpdateException = Shapes::StructureShape.new(name: 'DataLakeUpdateException')
    DataLakeUpdateStatus = Shapes::StructureShape.new(name: 'DataLakeUpdateStatus')
    DeleteAwsLogSourceRequest = Shapes::StructureShape.new(name: 'DeleteAwsLogSourceRequest')
    DeleteAwsLogSourceResponse = Shapes::StructureShape.new(name: 'DeleteAwsLogSourceResponse')
    DeleteCustomLogSourceRequest = Shapes::StructureShape.new(name: 'DeleteCustomLogSourceRequest')
    DeleteCustomLogSourceResponse = Shapes::StructureShape.new(name: 'DeleteCustomLogSourceResponse')
    DeleteDataLakeExceptionSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeExceptionSubscriptionRequest')
    DeleteDataLakeExceptionSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeExceptionSubscriptionResponse')
    DeleteDataLakeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeOrganizationConfigurationRequest')
    DeleteDataLakeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeOrganizationConfigurationResponse')
    DeleteDataLakeRequest = Shapes::StructureShape.new(name: 'DeleteDataLakeRequest')
    DeleteDataLakeResponse = Shapes::StructureShape.new(name: 'DeleteDataLakeResponse')
    DeleteSubscriberNotificationRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberNotificationRequest')
    DeleteSubscriberNotificationResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberNotificationResponse')
    DeleteSubscriberRequest = Shapes::StructureShape.new(name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = Shapes::StructureShape.new(name: 'DeleteSubscriberResponse')
    DeregisterDataLakeDelegatedAdministratorRequest = Shapes::StructureShape.new(name: 'DeregisterDataLakeDelegatedAdministratorRequest')
    DeregisterDataLakeDelegatedAdministratorResponse = Shapes::StructureShape.new(name: 'DeregisterDataLakeDelegatedAdministratorResponse')
    DescriptionString = Shapes::StringShape.new(name: 'DescriptionString')
    ExternalId = Shapes::StringShape.new(name: 'ExternalId')
    GetDataLakeExceptionSubscriptionRequest = Shapes::StructureShape.new(name: 'GetDataLakeExceptionSubscriptionRequest')
    GetDataLakeExceptionSubscriptionResponse = Shapes::StructureShape.new(name: 'GetDataLakeExceptionSubscriptionResponse')
    GetDataLakeOrganizationConfigurationRequest = Shapes::StructureShape.new(name: 'GetDataLakeOrganizationConfigurationRequest')
    GetDataLakeOrganizationConfigurationResponse = Shapes::StructureShape.new(name: 'GetDataLakeOrganizationConfigurationResponse')
    GetDataLakeSourcesRequest = Shapes::StructureShape.new(name: 'GetDataLakeSourcesRequest')
    GetDataLakeSourcesResponse = Shapes::StructureShape.new(name: 'GetDataLakeSourcesResponse')
    GetSubscriberRequest = Shapes::StructureShape.new(name: 'GetSubscriberRequest')
    GetSubscriberResponse = Shapes::StructureShape.new(name: 'GetSubscriberResponse')
    HttpMethod = Shapes::StringShape.new(name: 'HttpMethod')
    HttpsNotificationConfiguration = Shapes::StructureShape.new(name: 'HttpsNotificationConfiguration')
    HttpsNotificationConfigurationEndpointString = Shapes::StringShape.new(name: 'HttpsNotificationConfigurationEndpointString')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDataLakeExceptionsRequest = Shapes::StructureShape.new(name: 'ListDataLakeExceptionsRequest')
    ListDataLakeExceptionsResponse = Shapes::StructureShape.new(name: 'ListDataLakeExceptionsResponse')
    ListDataLakesRequest = Shapes::StructureShape.new(name: 'ListDataLakesRequest')
    ListDataLakesResponse = Shapes::StructureShape.new(name: 'ListDataLakesResponse')
    ListLogSourcesRequest = Shapes::StructureShape.new(name: 'ListLogSourcesRequest')
    ListLogSourcesResponse = Shapes::StructureShape.new(name: 'ListLogSourcesResponse')
    ListSubscribersRequest = Shapes::StructureShape.new(name: 'ListSubscribersRequest')
    ListSubscribersResponse = Shapes::StructureShape.new(name: 'ListSubscribersResponse')
    LogSource = Shapes::StructureShape.new(name: 'LogSource')
    LogSourceList = Shapes::ListShape.new(name: 'LogSourceList')
    LogSourceResource = Shapes::UnionShape.new(name: 'LogSourceResource')
    LogSourceResourceList = Shapes::ListShape.new(name: 'LogSourceResourceList')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NotificationConfiguration = Shapes::UnionShape.new(name: 'NotificationConfiguration')
    OcsfEventClass = Shapes::StringShape.new(name: 'OcsfEventClass')
    OcsfEventClassList = Shapes::ListShape.new(name: 'OcsfEventClassList')
    Region = Shapes::StringShape.new(name: 'Region')
    RegionList = Shapes::ListShape.new(name: 'RegionList')
    RegisterDataLakeDelegatedAdministratorRequest = Shapes::StructureShape.new(name: 'RegisterDataLakeDelegatedAdministratorRequest')
    RegisterDataLakeDelegatedAdministratorResponse = Shapes::StructureShape.new(name: 'RegisterDataLakeDelegatedAdministratorResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceShareArn = Shapes::StringShape.new(name: 'ResourceShareArn')
    ResourceShareName = Shapes::StringShape.new(name: 'ResourceShareName')
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    S3BucketArn = Shapes::StringShape.new(name: 'S3BucketArn')
    S3URI = Shapes::StringShape.new(name: 'S3URI')
    SafeString = Shapes::StringShape.new(name: 'SafeString')
    SourceCollectionStatus = Shapes::StringShape.new(name: 'SourceCollectionStatus')
    SqsNotificationConfiguration = Shapes::StructureShape.new(name: 'SqsNotificationConfiguration')
    String = Shapes::StringShape.new(name: 'String')
    SubscriberResource = Shapes::StructureShape.new(name: 'SubscriberResource')
    SubscriberResourceList = Shapes::ListShape.new(name: 'SubscriberResourceList')
    SubscriberStatus = Shapes::StringShape.new(name: 'SubscriberStatus')
    SubscriptionProtocol = Shapes::StringShape.new(name: 'SubscriptionProtocol')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UpdateDataLakeExceptionSubscriptionRequest = Shapes::StructureShape.new(name: 'UpdateDataLakeExceptionSubscriptionRequest')
    UpdateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong = Shapes::IntegerShape.new(name: 'UpdateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong')
    UpdateDataLakeExceptionSubscriptionResponse = Shapes::StructureShape.new(name: 'UpdateDataLakeExceptionSubscriptionResponse')
    UpdateDataLakeRequest = Shapes::StructureShape.new(name: 'UpdateDataLakeRequest')
    UpdateDataLakeResponse = Shapes::StructureShape.new(name: 'UpdateDataLakeResponse')
    UpdateSubscriberNotificationRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberNotificationRequest')
    UpdateSubscriberNotificationResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberNotificationResponse')
    UpdateSubscriberRequest = Shapes::StructureShape.new(name: 'UpdateSubscriberRequest')
    UpdateSubscriberRequestSubscriberNameString = Shapes::StringShape.new(name: 'UpdateSubscriberRequestSubscriberNameString')
    UpdateSubscriberResponse = Shapes::StructureShape.new(name: 'UpdateSubscriberResponse')

    AccessDeniedException.add_member(:error_code, Shapes::ShapeRef.new(shape: String, location_name: "errorCode"))
    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccessTypeList.member = Shapes::ShapeRef.new(shape: AccessType)

    AccountList.member = Shapes::ShapeRef.new(shape: AwsAccountId)

    AwsIdentity.add_member(:external_id, Shapes::ShapeRef.new(shape: ExternalId, required: true, location_name: "externalId"))
    AwsIdentity.add_member(:principal, Shapes::ShapeRef.new(shape: AwsPrincipal, required: true, location_name: "principal"))
    AwsIdentity.struct_class = Types::AwsIdentity

    AwsLogSourceConfiguration.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "accounts"))
    AwsLogSourceConfiguration.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    AwsLogSourceConfiguration.add_member(:source_name, Shapes::ShapeRef.new(shape: AwsLogSourceName, required: true, location_name: "sourceName"))
    AwsLogSourceConfiguration.add_member(:source_version, Shapes::ShapeRef.new(shape: AwsLogSourceVersion, location_name: "sourceVersion"))
    AwsLogSourceConfiguration.struct_class = Types::AwsLogSourceConfiguration

    AwsLogSourceConfigurationList.member = Shapes::ShapeRef.new(shape: AwsLogSourceConfiguration)

    AwsLogSourceResource.add_member(:source_name, Shapes::ShapeRef.new(shape: AwsLogSourceName, location_name: "sourceName"))
    AwsLogSourceResource.add_member(:source_version, Shapes::ShapeRef.new(shape: AwsLogSourceVersion, location_name: "sourceVersion"))
    AwsLogSourceResource.struct_class = Types::AwsLogSourceResource

    AwsLogSourceResourceList.member = Shapes::ShapeRef.new(shape: AwsLogSourceResource)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ConflictException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CreateAwsLogSourceRequest.add_member(:sources, Shapes::ShapeRef.new(shape: AwsLogSourceConfigurationList, required: true, location_name: "sources"))
    CreateAwsLogSourceRequest.struct_class = Types::CreateAwsLogSourceRequest

    CreateAwsLogSourceResponse.add_member(:failed, Shapes::ShapeRef.new(shape: AccountList, location_name: "failed"))
    CreateAwsLogSourceResponse.struct_class = Types::CreateAwsLogSourceResponse

    CreateCustomLogSourceRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: CustomLogSourceConfiguration, location_name: "configuration"))
    CreateCustomLogSourceRequest.add_member(:event_classes, Shapes::ShapeRef.new(shape: OcsfEventClassList, location_name: "eventClasses"))
    CreateCustomLogSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: CustomLogSourceName, required: true, location_name: "sourceName"))
    CreateCustomLogSourceRequest.add_member(:source_version, Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location_name: "sourceVersion"))
    CreateCustomLogSourceRequest.struct_class = Types::CreateCustomLogSourceRequest

    CreateCustomLogSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: CustomLogSourceResource, location_name: "source"))
    CreateCustomLogSourceResponse.struct_class = Types::CreateCustomLogSourceResponse

    CreateDataLakeExceptionSubscriptionRequest.add_member(:exception_time_to_live, Shapes::ShapeRef.new(shape: CreateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong, location_name: "exceptionTimeToLive"))
    CreateDataLakeExceptionSubscriptionRequest.add_member(:notification_endpoint, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "notificationEndpoint"))
    CreateDataLakeExceptionSubscriptionRequest.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocol, required: true, location_name: "subscriptionProtocol"))
    CreateDataLakeExceptionSubscriptionRequest.struct_class = Types::CreateDataLakeExceptionSubscriptionRequest

    CreateDataLakeExceptionSubscriptionResponse.struct_class = Types::CreateDataLakeExceptionSubscriptionResponse

    CreateDataLakeOrganizationConfigurationRequest.add_member(:auto_enable_new_account, Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, required: true, location_name: "autoEnableNewAccount"))
    CreateDataLakeOrganizationConfigurationRequest.struct_class = Types::CreateDataLakeOrganizationConfigurationRequest

    CreateDataLakeOrganizationConfigurationResponse.struct_class = Types::CreateDataLakeOrganizationConfigurationResponse

    CreateDataLakeRequest.add_member(:configurations, Shapes::ShapeRef.new(shape: DataLakeConfigurationList, required: true, location_name: "configurations"))
    CreateDataLakeRequest.add_member(:meta_store_manager_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "metaStoreManagerRoleArn"))
    CreateDataLakeRequest.struct_class = Types::CreateDataLakeRequest

    CreateDataLakeResponse.add_member(:data_lakes, Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: "dataLakes"))
    CreateDataLakeResponse.struct_class = Types::CreateDataLakeResponse

    CreateSubscriberNotificationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, required: true, location_name: "configuration"))
    CreateSubscriberNotificationRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    CreateSubscriberNotificationRequest.struct_class = Types::CreateSubscriberNotificationRequest

    CreateSubscriberNotificationResponse.add_member(:subscriber_endpoint, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberEndpoint"))
    CreateSubscriberNotificationResponse.struct_class = Types::CreateSubscriberNotificationResponse

    CreateSubscriberRequest.add_member(:access_types, Shapes::ShapeRef.new(shape: AccessTypeList, location_name: "accessTypes"))
    CreateSubscriberRequest.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceResourceList, required: true, location_name: "sources"))
    CreateSubscriberRequest.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "subscriberDescription"))
    CreateSubscriberRequest.add_member(:subscriber_identity, Shapes::ShapeRef.new(shape: AwsIdentity, required: true, location_name: "subscriberIdentity"))
    CreateSubscriberRequest.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: CreateSubscriberRequestSubscriberNameString, required: true, location_name: "subscriberName"))
    CreateSubscriberRequest.struct_class = Types::CreateSubscriberRequest

    CreateSubscriberResponse.add_member(:subscriber, Shapes::ShapeRef.new(shape: SubscriberResource, location_name: "subscriber"))
    CreateSubscriberResponse.struct_class = Types::CreateSubscriberResponse

    CustomLogSourceAttributes.add_member(:crawler_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "crawlerArn"))
    CustomLogSourceAttributes.add_member(:database_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "databaseArn"))
    CustomLogSourceAttributes.add_member(:table_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "tableArn"))
    CustomLogSourceAttributes.struct_class = Types::CustomLogSourceAttributes

    CustomLogSourceConfiguration.add_member(:crawler_configuration, Shapes::ShapeRef.new(shape: CustomLogSourceCrawlerConfiguration, required: true, location_name: "crawlerConfiguration"))
    CustomLogSourceConfiguration.add_member(:provider_identity, Shapes::ShapeRef.new(shape: AwsIdentity, required: true, location_name: "providerIdentity"))
    CustomLogSourceConfiguration.struct_class = Types::CustomLogSourceConfiguration

    CustomLogSourceCrawlerConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "roleArn"))
    CustomLogSourceCrawlerConfiguration.struct_class = Types::CustomLogSourceCrawlerConfiguration

    CustomLogSourceProvider.add_member(:location, Shapes::ShapeRef.new(shape: S3URI, location_name: "location"))
    CustomLogSourceProvider.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    CustomLogSourceProvider.struct_class = Types::CustomLogSourceProvider

    CustomLogSourceResource.add_member(:attributes, Shapes::ShapeRef.new(shape: CustomLogSourceAttributes, location_name: "attributes"))
    CustomLogSourceResource.add_member(:provider, Shapes::ShapeRef.new(shape: CustomLogSourceProvider, location_name: "provider"))
    CustomLogSourceResource.add_member(:source_name, Shapes::ShapeRef.new(shape: CustomLogSourceName, location_name: "sourceName"))
    CustomLogSourceResource.add_member(:source_version, Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location_name: "sourceVersion"))
    CustomLogSourceResource.struct_class = Types::CustomLogSourceResource

    DataLakeAutoEnableNewAccountConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "region"))
    DataLakeAutoEnableNewAccountConfiguration.add_member(:sources, Shapes::ShapeRef.new(shape: AwsLogSourceResourceList, required: true, location_name: "sources"))
    DataLakeAutoEnableNewAccountConfiguration.struct_class = Types::DataLakeAutoEnableNewAccountConfiguration

    DataLakeAutoEnableNewAccountConfigurationList.member = Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfiguration)

    DataLakeConfiguration.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: DataLakeEncryptionConfiguration, location_name: "encryptionConfiguration"))
    DataLakeConfiguration.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: DataLakeLifecycleConfiguration, location_name: "lifecycleConfiguration"))
    DataLakeConfiguration.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "region"))
    DataLakeConfiguration.add_member(:replication_configuration, Shapes::ShapeRef.new(shape: DataLakeReplicationConfiguration, location_name: "replicationConfiguration"))
    DataLakeConfiguration.struct_class = Types::DataLakeConfiguration

    DataLakeConfigurationList.member = Shapes::ShapeRef.new(shape: DataLakeConfiguration)

    DataLakeEncryptionConfiguration.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: String, location_name: "kmsKeyId"))
    DataLakeEncryptionConfiguration.struct_class = Types::DataLakeEncryptionConfiguration

    DataLakeException.add_member(:exception, Shapes::ShapeRef.new(shape: SafeString, location_name: "exception"))
    DataLakeException.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    DataLakeException.add_member(:remediation, Shapes::ShapeRef.new(shape: SafeString, location_name: "remediation"))
    DataLakeException.add_member(:timestamp, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "timestamp"))
    DataLakeException.struct_class = Types::DataLakeException

    DataLakeExceptionList.member = Shapes::ShapeRef.new(shape: DataLakeException)

    DataLakeLifecycleConfiguration.add_member(:expiration, Shapes::ShapeRef.new(shape: DataLakeLifecycleExpiration, location_name: "expiration"))
    DataLakeLifecycleConfiguration.add_member(:transitions, Shapes::ShapeRef.new(shape: DataLakeLifecycleTransitionList, location_name: "transitions"))
    DataLakeLifecycleConfiguration.struct_class = Types::DataLakeLifecycleConfiguration

    DataLakeLifecycleExpiration.add_member(:days, Shapes::ShapeRef.new(shape: DataLakeLifecycleExpirationDaysInteger, location_name: "days"))
    DataLakeLifecycleExpiration.struct_class = Types::DataLakeLifecycleExpiration

    DataLakeLifecycleTransition.add_member(:days, Shapes::ShapeRef.new(shape: DataLakeLifecycleTransitionDaysInteger, location_name: "days"))
    DataLakeLifecycleTransition.add_member(:storage_class, Shapes::ShapeRef.new(shape: DataLakeStorageClass, location_name: "storageClass"))
    DataLakeLifecycleTransition.struct_class = Types::DataLakeLifecycleTransition

    DataLakeLifecycleTransitionList.member = Shapes::ShapeRef.new(shape: DataLakeLifecycleTransition)

    DataLakeReplicationConfiguration.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    DataLakeReplicationConfiguration.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    DataLakeReplicationConfiguration.struct_class = Types::DataLakeReplicationConfiguration

    DataLakeResource.add_member(:create_status, Shapes::ShapeRef.new(shape: DataLakeStatus, location_name: "createStatus"))
    DataLakeResource.add_member(:data_lake_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "dataLakeArn"))
    DataLakeResource.add_member(:encryption_configuration, Shapes::ShapeRef.new(shape: DataLakeEncryptionConfiguration, location_name: "encryptionConfiguration"))
    DataLakeResource.add_member(:lifecycle_configuration, Shapes::ShapeRef.new(shape: DataLakeLifecycleConfiguration, location_name: "lifecycleConfiguration"))
    DataLakeResource.add_member(:region, Shapes::ShapeRef.new(shape: Region, required: true, location_name: "region"))
    DataLakeResource.add_member(:replication_configuration, Shapes::ShapeRef.new(shape: DataLakeReplicationConfiguration, location_name: "replicationConfiguration"))
    DataLakeResource.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "s3BucketArn"))
    DataLakeResource.add_member(:update_status, Shapes::ShapeRef.new(shape: DataLakeUpdateStatus, location_name: "updateStatus"))
    DataLakeResource.struct_class = Types::DataLakeResource

    DataLakeResourceList.member = Shapes::ShapeRef.new(shape: DataLakeResource)

    DataLakeSource.add_member(:account, Shapes::ShapeRef.new(shape: String, location_name: "account"))
    DataLakeSource.add_member(:event_classes, Shapes::ShapeRef.new(shape: OcsfEventClassList, location_name: "eventClasses"))
    DataLakeSource.add_member(:source_name, Shapes::ShapeRef.new(shape: String, location_name: "sourceName"))
    DataLakeSource.add_member(:source_statuses, Shapes::ShapeRef.new(shape: DataLakeSourceStatusList, location_name: "sourceStatuses"))
    DataLakeSource.struct_class = Types::DataLakeSource

    DataLakeSourceList.member = Shapes::ShapeRef.new(shape: DataLakeSource)

    DataLakeSourceStatus.add_member(:resource, Shapes::ShapeRef.new(shape: String, location_name: "resource"))
    DataLakeSourceStatus.add_member(:status, Shapes::ShapeRef.new(shape: SourceCollectionStatus, location_name: "status"))
    DataLakeSourceStatus.struct_class = Types::DataLakeSourceStatus

    DataLakeSourceStatusList.member = Shapes::ShapeRef.new(shape: DataLakeSourceStatus)

    DataLakeUpdateException.add_member(:code, Shapes::ShapeRef.new(shape: String, location_name: "code"))
    DataLakeUpdateException.add_member(:reason, Shapes::ShapeRef.new(shape: String, location_name: "reason"))
    DataLakeUpdateException.struct_class = Types::DataLakeUpdateException

    DataLakeUpdateStatus.add_member(:exception, Shapes::ShapeRef.new(shape: DataLakeUpdateException, location_name: "exception"))
    DataLakeUpdateStatus.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "requestId"))
    DataLakeUpdateStatus.add_member(:status, Shapes::ShapeRef.new(shape: DataLakeStatus, location_name: "status"))
    DataLakeUpdateStatus.struct_class = Types::DataLakeUpdateStatus

    DeleteAwsLogSourceRequest.add_member(:sources, Shapes::ShapeRef.new(shape: AwsLogSourceConfigurationList, required: true, location_name: "sources"))
    DeleteAwsLogSourceRequest.struct_class = Types::DeleteAwsLogSourceRequest

    DeleteAwsLogSourceResponse.add_member(:failed, Shapes::ShapeRef.new(shape: AccountList, location_name: "failed"))
    DeleteAwsLogSourceResponse.struct_class = Types::DeleteAwsLogSourceResponse

    DeleteCustomLogSourceRequest.add_member(:source_name, Shapes::ShapeRef.new(shape: CustomLogSourceName, required: true, location: "uri", location_name: "sourceName"))
    DeleteCustomLogSourceRequest.add_member(:source_version, Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location: "querystring", location_name: "sourceVersion"))
    DeleteCustomLogSourceRequest.struct_class = Types::DeleteCustomLogSourceRequest

    DeleteCustomLogSourceResponse.struct_class = Types::DeleteCustomLogSourceResponse

    DeleteDataLakeExceptionSubscriptionRequest.struct_class = Types::DeleteDataLakeExceptionSubscriptionRequest

    DeleteDataLakeExceptionSubscriptionResponse.struct_class = Types::DeleteDataLakeExceptionSubscriptionResponse

    DeleteDataLakeOrganizationConfigurationRequest.add_member(:auto_enable_new_account, Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, required: true, location_name: "autoEnableNewAccount"))
    DeleteDataLakeOrganizationConfigurationRequest.struct_class = Types::DeleteDataLakeOrganizationConfigurationRequest

    DeleteDataLakeOrganizationConfigurationResponse.struct_class = Types::DeleteDataLakeOrganizationConfigurationResponse

    DeleteDataLakeRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, required: true, location_name: "regions"))
    DeleteDataLakeRequest.struct_class = Types::DeleteDataLakeRequest

    DeleteDataLakeResponse.struct_class = Types::DeleteDataLakeResponse

    DeleteSubscriberNotificationRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    DeleteSubscriberNotificationRequest.struct_class = Types::DeleteSubscriberNotificationRequest

    DeleteSubscriberNotificationResponse.struct_class = Types::DeleteSubscriberNotificationResponse

    DeleteSubscriberRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    DeleteSubscriberRequest.struct_class = Types::DeleteSubscriberRequest

    DeleteSubscriberResponse.struct_class = Types::DeleteSubscriberResponse

    DeregisterDataLakeDelegatedAdministratorRequest.struct_class = Types::DeregisterDataLakeDelegatedAdministratorRequest

    DeregisterDataLakeDelegatedAdministratorResponse.struct_class = Types::DeregisterDataLakeDelegatedAdministratorResponse

    GetDataLakeExceptionSubscriptionRequest.struct_class = Types::GetDataLakeExceptionSubscriptionRequest

    GetDataLakeExceptionSubscriptionResponse.add_member(:exception_time_to_live, Shapes::ShapeRef.new(shape: Long, location_name: "exceptionTimeToLive"))
    GetDataLakeExceptionSubscriptionResponse.add_member(:notification_endpoint, Shapes::ShapeRef.new(shape: SafeString, location_name: "notificationEndpoint"))
    GetDataLakeExceptionSubscriptionResponse.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocol, location_name: "subscriptionProtocol"))
    GetDataLakeExceptionSubscriptionResponse.struct_class = Types::GetDataLakeExceptionSubscriptionResponse

    GetDataLakeOrganizationConfigurationRequest.struct_class = Types::GetDataLakeOrganizationConfigurationRequest

    GetDataLakeOrganizationConfigurationResponse.add_member(:auto_enable_new_account, Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, location_name: "autoEnableNewAccount"))
    GetDataLakeOrganizationConfigurationResponse.struct_class = Types::GetDataLakeOrganizationConfigurationResponse

    GetDataLakeSourcesRequest.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "accounts"))
    GetDataLakeSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    GetDataLakeSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDataLakeSourcesRequest.struct_class = Types::GetDataLakeSourcesRequest

    GetDataLakeSourcesResponse.add_member(:data_lake_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: "dataLakeArn"))
    GetDataLakeSourcesResponse.add_member(:data_lake_sources, Shapes::ShapeRef.new(shape: DataLakeSourceList, location_name: "dataLakeSources"))
    GetDataLakeSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    GetDataLakeSourcesResponse.struct_class = Types::GetDataLakeSourcesResponse

    GetSubscriberRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    GetSubscriberRequest.struct_class = Types::GetSubscriberRequest

    GetSubscriberResponse.add_member(:subscriber, Shapes::ShapeRef.new(shape: SubscriberResource, location_name: "subscriber"))
    GetSubscriberResponse.struct_class = Types::GetSubscriberResponse

    HttpsNotificationConfiguration.add_member(:authorization_api_key_name, Shapes::ShapeRef.new(shape: String, location_name: "authorizationApiKeyName"))
    HttpsNotificationConfiguration.add_member(:authorization_api_key_value, Shapes::ShapeRef.new(shape: String, location_name: "authorizationApiKeyValue"))
    HttpsNotificationConfiguration.add_member(:endpoint, Shapes::ShapeRef.new(shape: HttpsNotificationConfigurationEndpointString, required: true, location_name: "endpoint"))
    HttpsNotificationConfiguration.add_member(:http_method, Shapes::ShapeRef.new(shape: HttpMethod, location_name: "httpMethod"))
    HttpsNotificationConfiguration.add_member(:target_role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "targetRoleArn"))
    HttpsNotificationConfiguration.struct_class = Types::HttpsNotificationConfiguration

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDataLakeExceptionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListDataLakeExceptionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataLakeExceptionsRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    ListDataLakeExceptionsRequest.struct_class = Types::ListDataLakeExceptionsRequest

    ListDataLakeExceptionsResponse.add_member(:exceptions, Shapes::ShapeRef.new(shape: DataLakeExceptionList, location_name: "exceptions"))
    ListDataLakeExceptionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListDataLakeExceptionsResponse.struct_class = Types::ListDataLakeExceptionsResponse

    ListDataLakesRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location: "querystring", location_name: "regions"))
    ListDataLakesRequest.struct_class = Types::ListDataLakesRequest

    ListDataLakesResponse.add_member(:data_lakes, Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: "dataLakes"))
    ListDataLakesResponse.struct_class = Types::ListDataLakesResponse

    ListLogSourcesRequest.add_member(:accounts, Shapes::ShapeRef.new(shape: AccountList, location_name: "accounts"))
    ListLogSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults"))
    ListLogSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogSourcesRequest.add_member(:regions, Shapes::ShapeRef.new(shape: RegionList, location_name: "regions"))
    ListLogSourcesRequest.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: "sources"))
    ListLogSourcesRequest.struct_class = Types::ListLogSourcesRequest

    ListLogSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListLogSourcesResponse.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceList, location_name: "sources"))
    ListLogSourcesResponse.struct_class = Types::ListLogSourcesResponse

    ListSubscribersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListSubscribersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListSubscribersRequest.struct_class = Types::ListSubscribersRequest

    ListSubscribersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListSubscribersResponse.add_member(:subscribers, Shapes::ShapeRef.new(shape: SubscriberResourceList, location_name: "subscribers"))
    ListSubscribersResponse.struct_class = Types::ListSubscribersResponse

    LogSource.add_member(:account, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "account"))
    LogSource.add_member(:region, Shapes::ShapeRef.new(shape: Region, location_name: "region"))
    LogSource.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: "sources"))
    LogSource.struct_class = Types::LogSource

    LogSourceList.member = Shapes::ShapeRef.new(shape: LogSource)

    LogSourceResource.add_member(:aws_log_source, Shapes::ShapeRef.new(shape: AwsLogSourceResource, location_name: "awsLogSource"))
    LogSourceResource.add_member(:custom_log_source, Shapes::ShapeRef.new(shape: CustomLogSourceResource, location_name: "customLogSource"))
    LogSourceResource.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    LogSourceResource.add_member_subclass(:aws_log_source, Types::LogSourceResource::AwsLogSource)
    LogSourceResource.add_member_subclass(:custom_log_source, Types::LogSourceResource::CustomLogSource)
    LogSourceResource.add_member_subclass(:unknown, Types::LogSourceResource::Unknown)
    LogSourceResource.struct_class = Types::LogSourceResource

    LogSourceResourceList.member = Shapes::ShapeRef.new(shape: LogSourceResource)

    NotificationConfiguration.add_member(:https_notification_configuration, Shapes::ShapeRef.new(shape: HttpsNotificationConfiguration, location_name: "httpsNotificationConfiguration"))
    NotificationConfiguration.add_member(:sqs_notification_configuration, Shapes::ShapeRef.new(shape: SqsNotificationConfiguration, location_name: "sqsNotificationConfiguration"))
    NotificationConfiguration.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    NotificationConfiguration.add_member_subclass(:https_notification_configuration, Types::NotificationConfiguration::HttpsNotificationConfiguration)
    NotificationConfiguration.add_member_subclass(:sqs_notification_configuration, Types::NotificationConfiguration::SqsNotificationConfiguration)
    NotificationConfiguration.add_member_subclass(:unknown, Types::NotificationConfiguration::Unknown)
    NotificationConfiguration.struct_class = Types::NotificationConfiguration

    OcsfEventClassList.member = Shapes::ShapeRef.new(shape: OcsfEventClass)

    RegionList.member = Shapes::ShapeRef.new(shape: Region)

    RegisterDataLakeDelegatedAdministratorRequest.add_member(:account_id, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "accountId"))
    RegisterDataLakeDelegatedAdministratorRequest.struct_class = Types::RegisterDataLakeDelegatedAdministratorRequest

    RegisterDataLakeDelegatedAdministratorResponse.struct_class = Types::RegisterDataLakeDelegatedAdministratorResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_name, Shapes::ShapeRef.new(shape: String, location_name: "resourceName"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: String, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    SqsNotificationConfiguration.struct_class = Types::SqsNotificationConfiguration

    SubscriberResource.add_member(:access_types, Shapes::ShapeRef.new(shape: AccessTypeList, location_name: "accessTypes"))
    SubscriberResource.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "createdAt"))
    SubscriberResource.add_member(:resource_share_arn, Shapes::ShapeRef.new(shape: ResourceShareArn, location_name: "resourceShareArn"))
    SubscriberResource.add_member(:resource_share_name, Shapes::ShapeRef.new(shape: ResourceShareName, location_name: "resourceShareName"))
    SubscriberResource.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "roleArn"))
    SubscriberResource.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: S3BucketArn, location_name: "s3BucketArn"))
    SubscriberResource.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceResourceList, required: true, location_name: "sources"))
    SubscriberResource.add_member(:subscriber_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "subscriberArn"))
    SubscriberResource.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberDescription"))
    SubscriberResource.add_member(:subscriber_endpoint, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberEndpoint"))
    SubscriberResource.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location_name: "subscriberId"))
    SubscriberResource.add_member(:subscriber_identity, Shapes::ShapeRef.new(shape: AwsIdentity, required: true, location_name: "subscriberIdentity"))
    SubscriberResource.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "subscriberName"))
    SubscriberResource.add_member(:subscriber_status, Shapes::ShapeRef.new(shape: SubscriberStatus, location_name: "subscriberStatus"))
    SubscriberResource.add_member(:updated_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "updatedAt"))
    SubscriberResource.struct_class = Types::SubscriberResource

    SubscriberResourceList.member = Shapes::ShapeRef.new(shape: SubscriberResource)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.add_member(:quota_code, Shapes::ShapeRef.new(shape: String, location_name: "quotaCode"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: Integer, location: "header", location_name: "Retry-After"))
    ThrottlingException.add_member(:service_code, Shapes::ShapeRef.new(shape: String, location_name: "serviceCode"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UpdateDataLakeExceptionSubscriptionRequest.add_member(:exception_time_to_live, Shapes::ShapeRef.new(shape: UpdateDataLakeExceptionSubscriptionRequestExceptionTimeToLiveLong, location_name: "exceptionTimeToLive"))
    UpdateDataLakeExceptionSubscriptionRequest.add_member(:notification_endpoint, Shapes::ShapeRef.new(shape: SafeString, required: true, location_name: "notificationEndpoint"))
    UpdateDataLakeExceptionSubscriptionRequest.add_member(:subscription_protocol, Shapes::ShapeRef.new(shape: SubscriptionProtocol, required: true, location_name: "subscriptionProtocol"))
    UpdateDataLakeExceptionSubscriptionRequest.struct_class = Types::UpdateDataLakeExceptionSubscriptionRequest

    UpdateDataLakeExceptionSubscriptionResponse.struct_class = Types::UpdateDataLakeExceptionSubscriptionResponse

    UpdateDataLakeRequest.add_member(:configurations, Shapes::ShapeRef.new(shape: DataLakeConfigurationList, required: true, location_name: "configurations"))
    UpdateDataLakeRequest.struct_class = Types::UpdateDataLakeRequest

    UpdateDataLakeResponse.add_member(:data_lakes, Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: "dataLakes"))
    UpdateDataLakeResponse.struct_class = Types::UpdateDataLakeResponse

    UpdateSubscriberNotificationRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: NotificationConfiguration, required: true, location_name: "configuration"))
    UpdateSubscriberNotificationRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    UpdateSubscriberNotificationRequest.struct_class = Types::UpdateSubscriberNotificationRequest

    UpdateSubscriberNotificationResponse.add_member(:subscriber_endpoint, Shapes::ShapeRef.new(shape: SafeString, location_name: "subscriberEndpoint"))
    UpdateSubscriberNotificationResponse.struct_class = Types::UpdateSubscriberNotificationResponse

    UpdateSubscriberRequest.add_member(:sources, Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: "sources"))
    UpdateSubscriberRequest.add_member(:subscriber_description, Shapes::ShapeRef.new(shape: DescriptionString, location_name: "subscriberDescription"))
    UpdateSubscriberRequest.add_member(:subscriber_id, Shapes::ShapeRef.new(shape: UUID, required: true, location: "uri", location_name: "subscriberId"))
    UpdateSubscriberRequest.add_member(:subscriber_identity, Shapes::ShapeRef.new(shape: AwsIdentity, location_name: "subscriberIdentity"))
    UpdateSubscriberRequest.add_member(:subscriber_name, Shapes::ShapeRef.new(shape: UpdateSubscriberRequestSubscriberNameString, location_name: "subscriberName"))
    UpdateSubscriberRequest.struct_class = Types::UpdateSubscriberRequest

    UpdateSubscriberResponse.add_member(:subscriber, Shapes::ShapeRef.new(shape: SubscriberResource, location_name: "subscriber"))
    UpdateSubscriberResponse.struct_class = Types::UpdateSubscriberResponse


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
        o.http_request_uri = "/v1/datalake/logsources/aws"
        o.input = Shapes::ShapeRef.new(shape: CreateAwsLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAwsLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_custom_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateCustomLogSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/logsources/custom"
        o.input = Shapes::ShapeRef.new(shape: CreateCustomLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateCustomLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_data_lake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataLake"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: CreateDataLakeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataLakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_data_lake_exception_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataLakeExceptionSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: CreateDataLakeExceptionSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataLakeExceptionSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_data_lake_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataLakeOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/organization/configuration"
        o.input = Shapes::ShapeRef.new(shape: CreateDataLakeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataLakeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriber"
        o.http_method = "POST"
        o.http_request_uri = "/v1/subscribers"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:create_subscriber_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateSubscriberNotification"
        o.http_method = "POST"
        o.http_request_uri = "/v1/subscribers/{subscriberId}/notification"
        o.input = Shapes::ShapeRef.new(shape: CreateSubscriberNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateSubscriberNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_aws_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAwsLogSource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/logsources/aws/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteAwsLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAwsLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_custom_log_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteCustomLogSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake/logsources/custom/{sourceName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteCustomLogSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteCustomLogSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_data_lake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataLake"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataLakeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataLakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_data_lake_exception_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataLakeExceptionSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataLakeExceptionSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataLakeExceptionSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_data_lake_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataLakeOrganizationConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/organization/configuration/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataLakeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataLakeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriber"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/subscribers/{subscriberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:delete_subscriber_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSubscriberNotification"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/subscribers/{subscriberId}/notification"
        o.input = Shapes::ShapeRef.new(shape: DeleteSubscriberNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSubscriberNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:deregister_data_lake_delegated_administrator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeregisterDataLakeDelegatedAdministrator"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/datalake/delegate"
        o.input = Shapes::ShapeRef.new(shape: DeregisterDataLakeDelegatedAdministratorRequest)
        o.output = Shapes::ShapeRef.new(shape: DeregisterDataLakeDelegatedAdministratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_data_lake_exception_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeExceptionSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeExceptionSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeExceptionSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_data_lake_organization_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeOrganizationConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalake/organization/configuration"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeOrganizationConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeOrganizationConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:get_data_lake_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDataLakeSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/sources"
        o.input = Shapes::ShapeRef.new(shape: GetDataLakeSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDataLakeSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSubscriber"
        o.http_method = "GET"
        o.http_request_uri = "/v1/subscribers/{subscriberId}"
        o.input = Shapes::ShapeRef.new(shape: GetSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_data_lake_exceptions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataLakeExceptions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/exceptions"
        o.input = Shapes::ShapeRef.new(shape: ListDataLakeExceptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataLakeExceptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_lakes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataLakes"
        o.http_method = "GET"
        o.http_request_uri = "/v1/datalakes"
        o.input = Shapes::ShapeRef.new(shape: ListDataLakesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataLakesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_log_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListLogSources"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/logsources/list"
        o.input = Shapes::ShapeRef.new(shape: ListLogSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListLogSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:register_data_lake_delegated_administrator, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterDataLakeDelegatedAdministrator"
        o.http_method = "POST"
        o.http_request_uri = "/v1/datalake/delegate"
        o.input = Shapes::ShapeRef.new(shape: RegisterDataLakeDelegatedAdministratorRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterDataLakeDelegatedAdministratorResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_data_lake, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataLake"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/datalake"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataLakeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataLakeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_data_lake_exception_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataLakeExceptionSubscription"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/datalake/exceptions/subscription"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataLakeExceptionSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataLakeExceptionSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_subscriber, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriber"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/subscribers/{subscriberId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_subscriber_notification, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateSubscriberNotification"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/subscribers/{subscriberId}/notification"
        o.input = Shapes::ShapeRef.new(shape: UpdateSubscriberNotificationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateSubscriberNotificationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
