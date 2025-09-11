# frozen_string_literal: true

# This is generated code!

module Aws::SecurityLake
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccessType = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#AccessType', name: 'AccessType')
    AccessTypeList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#AccessTypeList', name: 'AccessTypeList')
    AccountList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#AccountList', name: 'AccountList', traits: {"smithy.api#uniqueItems" => {}})
    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^arn:(aws|aws-us-gov|aws-cn):securitylake:[A-Za-z0-9_/.\\-]{0,63}:[A-Za-z0-9_/.\\-]{0,63}:[A-Za-z0-9][A-Za-z0-9_/.\\-]{0,127}$"})
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#AwsAccountId', name: 'AwsAccountId', traits: {"aws.api#data" => "account", "smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AwsIdentity = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#AwsIdentity', name: 'AwsIdentity')
    AwsLogSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceConfiguration', name: 'AwsLogSourceConfiguration')
    AwsLogSourceConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceConfigurationList', name: 'AwsLogSourceConfigurationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    AwsLogSourceName = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceName', name: 'AwsLogSourceName')
    AwsLogSourceResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceResource', name: 'AwsLogSourceResource')
    AwsLogSourceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceResourceList', name: 'AwsLogSourceResourceList', traits: {"smithy.api#length" => {"min" => 1}})
    AwsLogSourceVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#AwsLogSourceVersion', name: 'AwsLogSourceVersion', traits: {"smithy.api#pattern" => "^(latest|[0-9]\\.[0-9])$"})
    AwsPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#AwsPrincipal', name: 'AwsPrincipal', traits: {"smithy.api#pattern" => "^([0-9]{12}|[a-z0-9\\.\\-]*\\.(amazonaws|amazon)\\.com)$"})
    BadRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#BadRequestException', name: 'BadRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateAwsLogSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateAwsLogSourceRequest', name: 'CreateAwsLogSourceRequest')
    CreateAwsLogSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateAwsLogSourceResponse', name: 'CreateAwsLogSourceResponse')
    CreateCustomLogSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateCustomLogSourceRequest', name: 'CreateCustomLogSourceRequest')
    CreateCustomLogSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateCustomLogSourceResponse', name: 'CreateCustomLogSourceResponse')
    CreateDataLakeExceptionSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeExceptionSubscriptionRequest', name: 'CreateDataLakeExceptionSubscriptionRequest')
    CreateDataLakeExceptionSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeExceptionSubscriptionResponse', name: 'CreateDataLakeExceptionSubscriptionResponse')
    CreateDataLakeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeOrganizationConfigurationRequest', name: 'CreateDataLakeOrganizationConfigurationRequest')
    CreateDataLakeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeOrganizationConfigurationResponse', name: 'CreateDataLakeOrganizationConfigurationResponse')
    CreateDataLakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeRequest', name: 'CreateDataLakeRequest')
    CreateDataLakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateDataLakeResponse', name: 'CreateDataLakeResponse')
    CreateSubscriberNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateSubscriberNotificationRequest', name: 'CreateSubscriberNotificationRequest')
    CreateSubscriberNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateSubscriberNotificationResponse', name: 'CreateSubscriberNotificationResponse')
    CreateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateSubscriberRequest', name: 'CreateSubscriberRequest')
    CreateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CreateSubscriberResponse', name: 'CreateSubscriberResponse')
    CustomLogSourceAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceAttributes', name: 'CustomLogSourceAttributes')
    CustomLogSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceConfiguration', name: 'CustomLogSourceConfiguration')
    CustomLogSourceCrawlerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceCrawlerConfiguration', name: 'CustomLogSourceCrawlerConfiguration')
    CustomLogSourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceName', name: 'CustomLogSourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\w\\-\\_\\:\\.]*$"})
    CustomLogSourceProvider = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceProvider', name: 'CustomLogSourceProvider')
    CustomLogSourceResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceResource', name: 'CustomLogSourceResource')
    CustomLogSourceVersion = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#CustomLogSourceVersion', name: 'CustomLogSourceVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^[A-Za-z0-9\\-\\.\\_]*$"})
    DataLakeAutoEnableNewAccountConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeAutoEnableNewAccountConfiguration', name: 'DataLakeAutoEnableNewAccountConfiguration')
    DataLakeAutoEnableNewAccountConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeAutoEnableNewAccountConfigurationList', name: 'DataLakeAutoEnableNewAccountConfigurationList', traits: {"smithy.api#length" => {"min" => 1}})
    DataLakeConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeConfiguration', name: 'DataLakeConfiguration')
    DataLakeConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeConfigurationList', name: 'DataLakeConfigurationList', traits: {"smithy.api#length" => {"min" => 1}})
    DataLakeEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeEncryptionConfiguration', name: 'DataLakeEncryptionConfiguration')
    DataLakeException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeException', name: 'DataLakeException')
    DataLakeExceptionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeExceptionList', name: 'DataLakeExceptionList')
    DataLakeLifecycleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeLifecycleConfiguration', name: 'DataLakeLifecycleConfiguration')
    DataLakeLifecycleExpiration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeLifecycleExpiration', name: 'DataLakeLifecycleExpiration')
    DataLakeLifecycleTransition = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeLifecycleTransition', name: 'DataLakeLifecycleTransition')
    DataLakeLifecycleTransitionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeLifecycleTransitionList', name: 'DataLakeLifecycleTransitionList')
    DataLakeReplicationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeReplicationConfiguration', name: 'DataLakeReplicationConfiguration')
    DataLakeResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeResource', name: 'DataLakeResource')
    DataLakeResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeResourceList', name: 'DataLakeResourceList')
    DataLakeSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeSource', name: 'DataLakeSource')
    DataLakeSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeSourceList', name: 'DataLakeSourceList')
    DataLakeSourceStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeSourceStatus', name: 'DataLakeSourceStatus')
    DataLakeSourceStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#DataLakeSourceStatusList', name: 'DataLakeSourceStatusList')
    DataLakeStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#DataLakeStatus', name: 'DataLakeStatus')
    DataLakeStorageClass = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#DataLakeStorageClass', name: 'DataLakeStorageClass')
    DataLakeUpdateException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeUpdateException', name: 'DataLakeUpdateException')
    DataLakeUpdateStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DataLakeUpdateStatus', name: 'DataLakeUpdateStatus')
    DeleteAwsLogSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteAwsLogSourceRequest', name: 'DeleteAwsLogSourceRequest')
    DeleteAwsLogSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteAwsLogSourceResponse', name: 'DeleteAwsLogSourceResponse')
    DeleteCustomLogSourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteCustomLogSourceRequest', name: 'DeleteCustomLogSourceRequest')
    DeleteCustomLogSourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteCustomLogSourceResponse', name: 'DeleteCustomLogSourceResponse')
    DeleteDataLakeExceptionSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeExceptionSubscriptionRequest', name: 'DeleteDataLakeExceptionSubscriptionRequest')
    DeleteDataLakeExceptionSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeExceptionSubscriptionResponse', name: 'DeleteDataLakeExceptionSubscriptionResponse')
    DeleteDataLakeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeOrganizationConfigurationRequest', name: 'DeleteDataLakeOrganizationConfigurationRequest')
    DeleteDataLakeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeOrganizationConfigurationResponse', name: 'DeleteDataLakeOrganizationConfigurationResponse')
    DeleteDataLakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeRequest', name: 'DeleteDataLakeRequest')
    DeleteDataLakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteDataLakeResponse', name: 'DeleteDataLakeResponse')
    DeleteSubscriberNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteSubscriberNotificationRequest', name: 'DeleteSubscriberNotificationRequest')
    DeleteSubscriberNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteSubscriberNotificationResponse', name: 'DeleteSubscriberNotificationResponse')
    DeleteSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteSubscriberRequest', name: 'DeleteSubscriberRequest')
    DeleteSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeleteSubscriberResponse', name: 'DeleteSubscriberResponse')
    DeregisterDataLakeDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeregisterDataLakeDelegatedAdministratorRequest', name: 'DeregisterDataLakeDelegatedAdministratorRequest')
    DeregisterDataLakeDelegatedAdministratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#DeregisterDataLakeDelegatedAdministratorResponse', name: 'DeregisterDataLakeDelegatedAdministratorResponse')
    DescriptionString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#DescriptionString', name: 'DescriptionString', traits: {"smithy.api#pattern" => "^[\\\\\\w\\s\\-_:/,.@=+]*$"})
    ExternalId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#ExternalId', name: 'ExternalId', traits: {"smithy.api#length" => {"min" => 2, "max" => 1224}, "smithy.api#pattern" => "^[\\w+=,.@:\\/-]*$"})
    GetDataLakeExceptionSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeExceptionSubscriptionRequest', name: 'GetDataLakeExceptionSubscriptionRequest')
    GetDataLakeExceptionSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeExceptionSubscriptionResponse', name: 'GetDataLakeExceptionSubscriptionResponse')
    GetDataLakeOrganizationConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeOrganizationConfigurationRequest', name: 'GetDataLakeOrganizationConfigurationRequest')
    GetDataLakeOrganizationConfigurationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeOrganizationConfigurationResponse', name: 'GetDataLakeOrganizationConfigurationResponse')
    GetDataLakeSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeSourcesRequest', name: 'GetDataLakeSourcesRequest')
    GetDataLakeSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetDataLakeSourcesResponse', name: 'GetDataLakeSourcesResponse')
    GetSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetSubscriberRequest', name: 'GetSubscriberRequest')
    GetSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#GetSubscriberResponse', name: 'GetSubscriberResponse')
    HttpMethod = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#HttpMethod', name: 'HttpMethod')
    HttpsNotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#HttpsNotificationConfiguration', name: 'HttpsNotificationConfiguration')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListDataLakeExceptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListDataLakeExceptionsRequest', name: 'ListDataLakeExceptionsRequest')
    ListDataLakeExceptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListDataLakeExceptionsResponse', name: 'ListDataLakeExceptionsResponse')
    ListDataLakesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListDataLakesRequest', name: 'ListDataLakesRequest')
    ListDataLakesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListDataLakesResponse', name: 'ListDataLakesResponse')
    ListLogSourcesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListLogSourcesRequest', name: 'ListLogSourcesRequest')
    ListLogSourcesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListLogSourcesResponse', name: 'ListLogSourcesResponse')
    ListSubscribersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListSubscribersRequest', name: 'ListSubscribersRequest')
    ListSubscribersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListSubscribersResponse', name: 'ListSubscribersResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    LogSource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#LogSource', name: 'LogSource')
    LogSourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#LogSourceList', name: 'LogSourceList')
    LogSourceResource = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.securitylake#LogSourceResource', name: 'LogSourceResource')
    LogSourceResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#LogSourceResourceList', name: 'LogSourceResourceList')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.securitylake#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"max" => 2048}})
    NotificationConfiguration = ::Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.securitylake#NotificationConfiguration', name: 'NotificationConfiguration')
    OcsfEventClass = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#OcsfEventClass', name: 'OcsfEventClass', traits: {"smithy.api#pattern" => "^[A-Z\\_0-9]*$"})
    OcsfEventClassList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#OcsfEventClassList', name: 'OcsfEventClassList')
    Region = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#Region', name: 'Region', traits: {"smithy.api#pattern" => "^(us(-gov)?|af|ap|ca|eu|me|sa)-(central|north|(north(?:east|west))|south|south(?:east|west)|east|west)-\\d+$"})
    RegionList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#RegionList', name: 'RegionList', traits: {"smithy.api#uniqueItems" => {}})
    RegisterDataLakeDelegatedAdministratorRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#RegisterDataLakeDelegatedAdministratorRequest', name: 'RegisterDataLakeDelegatedAdministratorRequest')
    RegisterDataLakeDelegatedAdministratorResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#RegisterDataLakeDelegatedAdministratorResponse', name: 'RegisterDataLakeDelegatedAdministratorResponse')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceShareArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#ResourceShareArn', name: 'ResourceShareArn', traits: {"aws.api#arnReference" => {"type" => "AWS::RAM::ResourceShare"}})
    ResourceShareName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#ResourceShareName', name: 'ResourceShareName', traits: {"smithy.api#pattern" => "^LakeFormation(?:-V[0-9]+)-([a-zA-Z0-9]+)-([\\\\\\w\\-_:/.@=+]*)$"})
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:(aws[a-zA-Z-]*)?:iam::\\d{12}:role/?[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3BucketArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#S3BucketArn', name: 'S3BucketArn', traits: {"aws.api#arnReference" => {"type" => "AWS::S3::Bucket"}})
    S3URI = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#S3URI', name: 'S3URI', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^s3[an]?://[a-z0-9][\\.\\-a-z0-9]{1,61}[a-z0-9](/[^/].*)+$"})
    SafeString = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#SafeString', name: 'SafeString', traits: {"smithy.api#pattern" => "^[\\\\\\w\\-_:/.@=+]*$"})
    SourceCollectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#SourceCollectionStatus', name: 'SourceCollectionStatus')
    SqsNotificationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#SqsNotificationConfiguration', name: 'SqsNotificationConfiguration')
    SubscriberResource = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#SubscriberResource', name: 'SubscriberResource')
    SubscriberResourceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#SubscriberResourceList', name: 'SubscriberResourceList')
    SubscriberStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.securitylake#SubscriberStatus', name: 'SubscriberStatus')
    SubscriptionProtocol = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#SubscriptionProtocol', name: 'SubscriptionProtocol', traits: {"smithy.api#pattern" => "^[a-z\\-]*$"})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.securitylake#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#TagResourceRequest', name: 'TagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.securitylake#DataLake"}]})
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UUID = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.securitylake#UUID', name: 'UUID', traits: {"smithy.api#pattern" => "^[a-f0-9]{8}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{4}-[a-f0-9]{12}$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UntagResourceRequest', name: 'UntagResourceRequest', traits: {"smithy.api#references" => [{"resource" => "com.amazonaws.securitylake#DataLake"}]})
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateDataLakeExceptionSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateDataLakeExceptionSubscriptionRequest', name: 'UpdateDataLakeExceptionSubscriptionRequest')
    UpdateDataLakeExceptionSubscriptionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateDataLakeExceptionSubscriptionResponse', name: 'UpdateDataLakeExceptionSubscriptionResponse')
    UpdateDataLakeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateDataLakeRequest', name: 'UpdateDataLakeRequest')
    UpdateDataLakeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateDataLakeResponse', name: 'UpdateDataLakeResponse')
    UpdateSubscriberNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateSubscriberNotificationRequest', name: 'UpdateSubscriberNotificationRequest')
    UpdateSubscriberNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateSubscriberNotificationResponse', name: 'UpdateSubscriberNotificationResponse')
    UpdateSubscriberRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateSubscriberRequest', name: 'UpdateSubscriberRequest')
    UpdateSubscriberResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.securitylake#UpdateSubscriberResponse', name: 'UpdateSubscriberResponse')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.add_member(:error_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'errorCode'))
    AccessDeniedException.type = Types::AccessDeniedException
    AccessType.add_member(:lakeformation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAKEFORMATION', traits: {"smithy.api#enumValue" => "LAKEFORMATION"}))
    AccessType.add_member(:s3, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "S3"}))
    AccessTypeList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessType)
    AccountList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    AwsIdentity.add_member(:principal, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsPrincipal, location_name: 'principal', traits: {"smithy.api#required" => {}}))
    AwsIdentity.add_member(:external_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalId, location_name: 'externalId', traits: {"smithy.api#required" => {}}))
    AwsIdentity.type = Types::AwsIdentity
    AwsLogSourceConfiguration.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'accounts'))
    AwsLogSourceConfiguration.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"smithy.api#required" => {}}))
    AwsLogSourceConfiguration.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceName, location_name: 'sourceName', traits: {"smithy.api#required" => {}}))
    AwsLogSourceConfiguration.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceVersion, location_name: 'sourceVersion', traits: {"smithy.api#default" => "latest"}))
    AwsLogSourceConfiguration.type = Types::AwsLogSourceConfiguration
    AwsLogSourceConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceConfiguration)
    AwsLogSourceName.add_member(:route53, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROUTE53', traits: {"smithy.api#enumValue" => "ROUTE53"}))
    AwsLogSourceName.add_member(:vpc_flow, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_FLOW', traits: {"smithy.api#enumValue" => "VPC_FLOW"}))
    AwsLogSourceName.add_member(:sh_findings, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SH_FINDINGS', traits: {"smithy.api#enumValue" => "SH_FINDINGS"}))
    AwsLogSourceName.add_member(:cloud_trail_mgmt, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOUD_TRAIL_MGMT', traits: {"smithy.api#enumValue" => "CLOUD_TRAIL_MGMT"}))
    AwsLogSourceName.add_member(:lambda_execution, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAMBDA_EXECUTION', traits: {"smithy.api#enumValue" => "LAMBDA_EXECUTION"}))
    AwsLogSourceName.add_member(:s3_data, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3_DATA', traits: {"smithy.api#enumValue" => "S3_DATA"}))
    AwsLogSourceName.add_member(:eks_audit, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EKS_AUDIT', traits: {"smithy.api#enumValue" => "EKS_AUDIT"}))
    AwsLogSourceName.add_member(:waf, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WAF', traits: {"smithy.api#enumValue" => "WAF"}))
    AwsLogSourceResource.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceName, location_name: 'sourceName'))
    AwsLogSourceResource.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceVersion, location_name: 'sourceVersion'))
    AwsLogSourceResource.type = Types::AwsLogSourceResource
    AwsLogSourceResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceResource)
    BadRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    BadRequestException.type = Types::BadRequestException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ConflictException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName'))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ConflictException.type = Types::ConflictException
    CreateAwsLogSourceRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceConfigurationList, location_name: 'sources', traits: {"smithy.api#required" => {}}))
    CreateAwsLogSourceRequest.type = Types::CreateAwsLogSourceRequest
    CreateAwsLogSourceResponse.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'failed'))
    CreateAwsLogSourceResponse.type = Types::CreateAwsLogSourceResponse
    CreateCustomLogSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceName, location_name: 'sourceName', traits: {"smithy.api#required" => {}}))
    CreateCustomLogSourceRequest.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location_name: 'sourceVersion'))
    CreateCustomLogSourceRequest.add_member(:event_classes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OcsfEventClassList, location_name: 'eventClasses'))
    CreateCustomLogSourceRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    CreateCustomLogSourceRequest.type = Types::CreateCustomLogSourceRequest
    CreateCustomLogSourceResponse.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceResource, location_name: 'source'))
    CreateCustomLogSourceResponse.type = Types::CreateCustomLogSourceResponse
    CreateDataLakeExceptionSubscriptionRequest.add_member(:subscription_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProtocol, location_name: 'subscriptionProtocol', traits: {"smithy.api#required" => {}}))
    CreateDataLakeExceptionSubscriptionRequest.add_member(:notification_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'notificationEndpoint', traits: {"smithy.api#required" => {}}))
    CreateDataLakeExceptionSubscriptionRequest.add_member(:exception_time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'exceptionTimeToLive', traits: {"smithy.api#range" => {"min" => 1}}))
    CreateDataLakeExceptionSubscriptionRequest.type = Types::CreateDataLakeExceptionSubscriptionRequest
    CreateDataLakeExceptionSubscriptionResponse.type = Types::CreateDataLakeExceptionSubscriptionResponse
    CreateDataLakeOrganizationConfigurationRequest.add_member(:auto_enable_new_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, location_name: 'autoEnableNewAccount'))
    CreateDataLakeOrganizationConfigurationRequest.type = Types::CreateDataLakeOrganizationConfigurationRequest
    CreateDataLakeOrganizationConfigurationResponse.type = Types::CreateDataLakeOrganizationConfigurationResponse
    CreateDataLakeRequest.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeConfigurationList, location_name: 'configurations', traits: {"smithy.api#required" => {}}))
    CreateDataLakeRequest.add_member(:meta_store_manager_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'metaStoreManagerRoleArn', traits: {"smithy.api#required" => {}}))
    CreateDataLakeRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateDataLakeRequest.type = Types::CreateDataLakeRequest
    CreateDataLakeResponse.add_member(:data_lakes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: 'dataLakes'))
    CreateDataLakeResponse.type = Types::CreateDataLakeResponse
    CreateSubscriberNotificationRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateSubscriberNotificationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    CreateSubscriberNotificationRequest.type = Types::CreateSubscriberNotificationRequest
    CreateSubscriberNotificationResponse.add_member(:subscriber_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberEndpoint'))
    CreateSubscriberNotificationResponse.type = Types::CreateSubscriberNotificationResponse
    CreateSubscriberRequest.add_member(:subscriber_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIdentity, location_name: 'subscriberIdentity', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:subscriber_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'subscriberName', traits: {"smithy.api#length" => {"max" => 64}, "smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:subscriber_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'subscriberDescription'))
    CreateSubscriberRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: 'sources', traits: {"smithy.api#required" => {}}))
    CreateSubscriberRequest.add_member(:access_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTypeList, location_name: 'accessTypes'))
    CreateSubscriberRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    CreateSubscriberRequest.type = Types::CreateSubscriberRequest
    CreateSubscriberResponse.add_member(:subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberResource, location_name: 'subscriber'))
    CreateSubscriberResponse.type = Types::CreateSubscriberResponse
    CustomLogSourceAttributes.add_member(:crawler_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'crawlerArn'))
    CustomLogSourceAttributes.add_member(:database_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'databaseArn'))
    CustomLogSourceAttributes.add_member(:table_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'tableArn'))
    CustomLogSourceAttributes.type = Types::CustomLogSourceAttributes
    CustomLogSourceConfiguration.add_member(:crawler_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceCrawlerConfiguration, location_name: 'crawlerConfiguration', traits: {"smithy.api#required" => {}}))
    CustomLogSourceConfiguration.add_member(:provider_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIdentity, location_name: 'providerIdentity', traits: {"smithy.api#required" => {}}))
    CustomLogSourceConfiguration.type = Types::CustomLogSourceConfiguration
    CustomLogSourceCrawlerConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn', traits: {"smithy.api#required" => {}}))
    CustomLogSourceCrawlerConfiguration.type = Types::CustomLogSourceCrawlerConfiguration
    CustomLogSourceProvider.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    CustomLogSourceProvider.add_member(:location, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3URI, location_name: 'location'))
    CustomLogSourceProvider.type = Types::CustomLogSourceProvider
    CustomLogSourceResource.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceName, location_name: 'sourceName'))
    CustomLogSourceResource.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location_name: 'sourceVersion'))
    CustomLogSourceResource.add_member(:provider, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceProvider, location_name: 'provider'))
    CustomLogSourceResource.add_member(:attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceAttributes, location_name: 'attributes'))
    CustomLogSourceResource.type = Types::CustomLogSourceResource
    DataLakeAutoEnableNewAccountConfiguration.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#required" => {}}))
    DataLakeAutoEnableNewAccountConfiguration.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceResourceList, location_name: 'sources', traits: {"smithy.api#required" => {}}))
    DataLakeAutoEnableNewAccountConfiguration.type = Types::DataLakeAutoEnableNewAccountConfiguration
    DataLakeAutoEnableNewAccountConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfiguration)
    DataLakeConfiguration.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#required" => {}}))
    DataLakeConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeEncryptionConfiguration, location_name: 'encryptionConfiguration'))
    DataLakeConfiguration.add_member(:lifecycle_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeLifecycleConfiguration, location_name: 'lifecycleConfiguration'))
    DataLakeConfiguration.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeReplicationConfiguration, location_name: 'replicationConfiguration'))
    DataLakeConfiguration.type = Types::DataLakeConfiguration
    DataLakeConfigurationList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeConfiguration)
    DataLakeEncryptionConfiguration.add_member(:kms_key_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'kmsKeyId'))
    DataLakeEncryptionConfiguration.type = Types::DataLakeEncryptionConfiguration
    DataLakeException.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    DataLakeException.add_member(:exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'exception'))
    DataLakeException.add_member(:remediation, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'remediation'))
    DataLakeException.add_member(:timestamp, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'timestamp', traits: {"smithy.api#timestampFormat" => "date-time"}))
    DataLakeException.type = Types::DataLakeException
    DataLakeExceptionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeException)
    DataLakeLifecycleConfiguration.add_member(:expiration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeLifecycleExpiration, location_name: 'expiration'))
    DataLakeLifecycleConfiguration.add_member(:transitions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeLifecycleTransitionList, location_name: 'transitions'))
    DataLakeLifecycleConfiguration.type = Types::DataLakeLifecycleConfiguration
    DataLakeLifecycleExpiration.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'days', traits: {"smithy.api#range" => {"min" => 1}}))
    DataLakeLifecycleExpiration.type = Types::DataLakeLifecycleExpiration
    DataLakeLifecycleTransition.add_member(:storage_class, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeStorageClass, location_name: 'storageClass'))
    DataLakeLifecycleTransition.add_member(:days, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'days', traits: {"smithy.api#range" => {"min" => 1}}))
    DataLakeLifecycleTransition.type = Types::DataLakeLifecycleTransition
    DataLakeLifecycleTransitionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeLifecycleTransition)
    DataLakeReplicationConfiguration.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    DataLakeReplicationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    DataLakeReplicationConfiguration.type = Types::DataLakeReplicationConfiguration
    DataLakeResource.add_member(:data_lake_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'dataLakeArn', traits: {"smithy.api#required" => {}}))
    DataLakeResource.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region', traits: {"smithy.api#required" => {}}))
    DataLakeResource.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 's3BucketArn'))
    DataLakeResource.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeEncryptionConfiguration, location_name: 'encryptionConfiguration'))
    DataLakeResource.add_member(:lifecycle_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeLifecycleConfiguration, location_name: 'lifecycleConfiguration'))
    DataLakeResource.add_member(:replication_configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeReplicationConfiguration, location_name: 'replicationConfiguration'))
    DataLakeResource.add_member(:create_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeStatus, location_name: 'createStatus'))
    DataLakeResource.add_member(:update_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeUpdateStatus, location_name: 'updateStatus'))
    DataLakeResource.type = Types::DataLakeResource
    DataLakeResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeResource)
    DataLakeSource.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'account'))
    DataLakeSource.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'sourceName'))
    DataLakeSource.add_member(:event_classes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: OcsfEventClassList, location_name: 'eventClasses'))
    DataLakeSource.add_member(:source_statuses, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSourceStatusList, location_name: 'sourceStatuses'))
    DataLakeSource.type = Types::DataLakeSource
    DataLakeSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSource)
    DataLakeSourceStatus.add_member(:resource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resource'))
    DataLakeSourceStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCollectionStatus, location_name: 'status'))
    DataLakeSourceStatus.type = Types::DataLakeSourceStatus
    DataLakeSourceStatusList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSourceStatus)
    DataLakeStatus.add_member(:initialized, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INITIALIZED', traits: {"smithy.api#enumValue" => "INITIALIZED"}))
    DataLakeStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    DataLakeStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    DataLakeStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    DataLakeUpdateException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'reason'))
    DataLakeUpdateException.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'code'))
    DataLakeUpdateException.type = Types::DataLakeUpdateException
    DataLakeUpdateStatus.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'requestId'))
    DataLakeUpdateStatus.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeStatus, location_name: 'status'))
    DataLakeUpdateStatus.add_member(:exception, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeUpdateException, location_name: 'exception'))
    DataLakeUpdateStatus.type = Types::DataLakeUpdateStatus
    DeleteAwsLogSourceRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceConfigurationList, location_name: 'sources', traits: {"smithy.api#required" => {}}))
    DeleteAwsLogSourceRequest.type = Types::DeleteAwsLogSourceRequest
    DeleteAwsLogSourceResponse.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'failed'))
    DeleteAwsLogSourceResponse.type = Types::DeleteAwsLogSourceResponse
    DeleteCustomLogSourceRequest.add_member(:source_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceName, location_name: 'sourceName', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteCustomLogSourceRequest.add_member(:source_version, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceVersion, location_name: 'sourceVersion', traits: {"smithy.api#httpQuery" => "sourceVersion"}))
    DeleteCustomLogSourceRequest.type = Types::DeleteCustomLogSourceRequest
    DeleteCustomLogSourceResponse.type = Types::DeleteCustomLogSourceResponse
    DeleteDataLakeExceptionSubscriptionRequest.type = Types::DeleteDataLakeExceptionSubscriptionRequest
    DeleteDataLakeExceptionSubscriptionResponse.type = Types::DeleteDataLakeExceptionSubscriptionResponse
    DeleteDataLakeOrganizationConfigurationRequest.add_member(:auto_enable_new_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, location_name: 'autoEnableNewAccount'))
    DeleteDataLakeOrganizationConfigurationRequest.type = Types::DeleteDataLakeOrganizationConfigurationRequest
    DeleteDataLakeOrganizationConfigurationResponse.type = Types::DeleteDataLakeOrganizationConfigurationResponse
    DeleteDataLakeRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"smithy.api#required" => {}}))
    DeleteDataLakeRequest.type = Types::DeleteDataLakeRequest
    DeleteDataLakeResponse.type = Types::DeleteDataLakeResponse
    DeleteSubscriberNotificationRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSubscriberNotificationRequest.type = Types::DeleteSubscriberNotificationRequest
    DeleteSubscriberNotificationResponse.type = Types::DeleteSubscriberNotificationResponse
    DeleteSubscriberRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteSubscriberRequest.type = Types::DeleteSubscriberRequest
    DeleteSubscriberResponse.type = Types::DeleteSubscriberResponse
    DeregisterDataLakeDelegatedAdministratorRequest.type = Types::DeregisterDataLakeDelegatedAdministratorRequest
    DeregisterDataLakeDelegatedAdministratorResponse.type = Types::DeregisterDataLakeDelegatedAdministratorResponse
    GetDataLakeExceptionSubscriptionRequest.type = Types::GetDataLakeExceptionSubscriptionRequest
    GetDataLakeExceptionSubscriptionResponse.add_member(:subscription_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProtocol, location_name: 'subscriptionProtocol'))
    GetDataLakeExceptionSubscriptionResponse.add_member(:notification_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'notificationEndpoint'))
    GetDataLakeExceptionSubscriptionResponse.add_member(:exception_time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'exceptionTimeToLive'))
    GetDataLakeExceptionSubscriptionResponse.type = Types::GetDataLakeExceptionSubscriptionResponse
    GetDataLakeOrganizationConfigurationRequest.type = Types::GetDataLakeOrganizationConfigurationRequest
    GetDataLakeOrganizationConfigurationResponse.add_member(:auto_enable_new_account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeAutoEnableNewAccountConfigurationList, location_name: 'autoEnableNewAccount'))
    GetDataLakeOrganizationConfigurationResponse.type = Types::GetDataLakeOrganizationConfigurationResponse
    GetDataLakeSourcesRequest.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'accounts'))
    GetDataLakeSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 50}))
    GetDataLakeSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetDataLakeSourcesRequest.type = Types::GetDataLakeSourcesRequest
    GetDataLakeSourcesResponse.add_member(:data_lake_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'dataLakeArn'))
    GetDataLakeSourcesResponse.add_member(:data_lake_sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeSourceList, location_name: 'dataLakeSources'))
    GetDataLakeSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    GetDataLakeSourcesResponse.type = Types::GetDataLakeSourcesResponse
    GetSubscriberRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetSubscriberRequest.type = Types::GetSubscriberRequest
    GetSubscriberResponse.add_member(:subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberResource, location_name: 'subscriber'))
    GetSubscriberResponse.type = Types::GetSubscriberResponse
    HttpMethod.add_member(:post, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POST', traits: {"smithy.api#enumValue" => "POST"}))
    HttpMethod.add_member(:put, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUT', traits: {"smithy.api#enumValue" => "PUT"}))
    HttpsNotificationConfiguration.add_member(:endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'endpoint', traits: {"smithy.api#pattern" => "^https?://.+$", "smithy.api#required" => {}}))
    HttpsNotificationConfiguration.add_member(:authorization_api_key_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'authorizationApiKeyName'))
    HttpsNotificationConfiguration.add_member(:authorization_api_key_value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'authorizationApiKeyValue'))
    HttpsNotificationConfiguration.add_member(:http_method, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpMethod, location_name: 'httpMethod'))
    HttpsNotificationConfiguration.add_member(:target_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'targetRoleArn', traits: {"smithy.api#required" => {}}))
    HttpsNotificationConfiguration.type = Types::HttpsNotificationConfiguration
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListDataLakeExceptionsRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    ListDataLakeExceptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 50}))
    ListDataLakeExceptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDataLakeExceptionsRequest.type = Types::ListDataLakeExceptionsRequest
    ListDataLakeExceptionsResponse.add_member(:exceptions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeExceptionList, location_name: 'exceptions'))
    ListDataLakeExceptionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListDataLakeExceptionsResponse.type = Types::ListDataLakeExceptionsResponse
    ListDataLakesRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions', traits: {"smithy.api#httpQuery" => "regions"}))
    ListDataLakesRequest.type = Types::ListDataLakesRequest
    ListDataLakesResponse.add_member(:data_lakes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: 'dataLakes'))
    ListDataLakesResponse.type = Types::ListDataLakesResponse
    ListLogSourcesRequest.add_member(:accounts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccountList, location_name: 'accounts'))
    ListLogSourcesRequest.add_member(:regions, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegionList, location_name: 'regions'))
    ListLogSourcesRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: 'sources'))
    ListLogSourcesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 50}))
    ListLogSourcesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogSourcesRequest.type = Types::ListLogSourcesRequest
    ListLogSourcesResponse.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceList, location_name: 'sources'))
    ListLogSourcesResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListLogSourcesResponse.type = Types::ListLogSourcesResponse
    ListSubscribersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListSubscribersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#default" => 50, "smithy.api#httpQuery" => "maxResults"}))
    ListSubscribersRequest.type = Types::ListSubscribersRequest
    ListSubscribersResponse.add_member(:subscribers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberResourceList, location_name: 'subscribers'))
    ListSubscribersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListSubscribersResponse.type = Types::ListSubscribersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    LogSource.add_member(:account, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'account'))
    LogSource.add_member(:region, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region, location_name: 'region'))
    LogSource.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: 'sources'))
    LogSource.type = Types::LogSource
    LogSourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSource)
    LogSourceResource.add_member(:aws_log_source, Types::LogSourceResource::AwsLogSource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsLogSourceResource, location_name: 'awsLogSource'))
    LogSourceResource.add_member(:custom_log_source, Types::LogSourceResource::CustomLogSource, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CustomLogSourceResource, location_name: 'customLogSource'))
    LogSourceResource.add_member(:unknown, Types::LogSourceResource::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    LogSourceResource.type = Types::LogSourceResource
    LogSourceResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResource)
    NotificationConfiguration.add_member(:sqs_notification_configuration, Types::NotificationConfiguration::SqsNotificationConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SqsNotificationConfiguration, location_name: 'sqsNotificationConfiguration'))
    NotificationConfiguration.add_member(:https_notification_configuration, Types::NotificationConfiguration::HttpsNotificationConfiguration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HttpsNotificationConfiguration, location_name: 'httpsNotificationConfiguration'))
    NotificationConfiguration.add_member(:unknown, Types::NotificationConfiguration::Unknown, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit))
    NotificationConfiguration.type = Types::NotificationConfiguration
    OcsfEventClassList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OcsfEventClass)
    RegionList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Region)
    RegisterDataLakeDelegatedAdministratorRequest.add_member(:account_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'accountId', traits: {"smithy.api#required" => {}}))
    RegisterDataLakeDelegatedAdministratorRequest.type = Types::RegisterDataLakeDelegatedAdministratorRequest
    RegisterDataLakeDelegatedAdministratorResponse.type = Types::RegisterDataLakeDelegatedAdministratorResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceName'))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'resourceType'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SourceCollectionStatus.add_member(:collecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COLLECTING', traits: {"smithy.api#enumValue" => "COLLECTING"}))
    SourceCollectionStatus.add_member(:misconfigured, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISCONFIGURED', traits: {"smithy.api#enumValue" => "MISCONFIGURED"}))
    SourceCollectionStatus.add_member(:not_collecting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_COLLECTING', traits: {"smithy.api#enumValue" => "NOT_COLLECTING"}))
    SqsNotificationConfiguration.type = Types::SqsNotificationConfiguration
    SubscriberResource.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#required" => {}}))
    SubscriberResource.add_member(:subscriber_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'subscriberArn', traits: {"smithy.api#required" => {}}))
    SubscriberResource.add_member(:subscriber_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIdentity, location_name: 'subscriberIdentity', traits: {"smithy.api#required" => {}}))
    SubscriberResource.add_member(:subscriber_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberName', traits: {"smithy.api#required" => {}}))
    SubscriberResource.add_member(:subscriber_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberDescription'))
    SubscriberResource.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: 'sources', traits: {"smithy.api#required" => {}}))
    SubscriberResource.add_member(:access_types, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessTypeList, location_name: 'accessTypes'))
    SubscriberResource.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'roleArn'))
    SubscriberResource.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: S3BucketArn, location_name: 's3BucketArn'))
    SubscriberResource.add_member(:subscriber_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberEndpoint'))
    SubscriberResource.add_member(:subscriber_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberStatus, location_name: 'subscriberStatus'))
    SubscriberResource.add_member(:resource_share_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareArn, location_name: 'resourceShareArn'))
    SubscriberResource.add_member(:resource_share_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceShareName, location_name: 'resourceShareName'))
    SubscriberResource.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'createdAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubscriberResource.add_member(:updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'updatedAt', traits: {"smithy.api#timestampFormat" => "date-time"}))
    SubscriberResource.type = Types::SubscriberResource
    SubscriberResourceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberResource)
    SubscriberStatus.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SubscriberStatus.add_member(:deactivated, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DEACTIVATED', traits: {"smithy.api#enumValue" => "DEACTIVATED"}))
    SubscriberStatus.add_member(:pending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SubscriberStatus.add_member(:ready, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READY', traits: {"smithy.api#enumValue" => "READY"}))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateDataLakeExceptionSubscriptionRequest.add_member(:subscription_protocol, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriptionProtocol, location_name: 'subscriptionProtocol', traits: {"smithy.api#required" => {}}))
    UpdateDataLakeExceptionSubscriptionRequest.add_member(:notification_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'notificationEndpoint', traits: {"smithy.api#required" => {}}))
    UpdateDataLakeExceptionSubscriptionRequest.add_member(:exception_time_to_live, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Long, location_name: 'exceptionTimeToLive', traits: {"smithy.api#range" => {"min" => 1}}))
    UpdateDataLakeExceptionSubscriptionRequest.type = Types::UpdateDataLakeExceptionSubscriptionRequest
    UpdateDataLakeExceptionSubscriptionResponse.type = Types::UpdateDataLakeExceptionSubscriptionResponse
    UpdateDataLakeRequest.add_member(:configurations, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeConfigurationList, location_name: 'configurations', traits: {"smithy.api#required" => {}}))
    UpdateDataLakeRequest.add_member(:meta_store_manager_role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'metaStoreManagerRoleArn'))
    UpdateDataLakeRequest.type = Types::UpdateDataLakeRequest
    UpdateDataLakeResponse.add_member(:data_lakes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DataLakeResourceList, location_name: 'dataLakes'))
    UpdateDataLakeResponse.type = Types::UpdateDataLakeResponse
    UpdateSubscriberNotificationRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriberNotificationRequest.add_member(:configuration, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationConfiguration, location_name: 'configuration', traits: {"smithy.api#required" => {}}))
    UpdateSubscriberNotificationRequest.type = Types::UpdateSubscriberNotificationRequest
    UpdateSubscriberNotificationResponse.add_member(:subscriber_endpoint, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberEndpoint'))
    UpdateSubscriberNotificationResponse.type = Types::UpdateSubscriberNotificationResponse
    UpdateSubscriberRequest.add_member(:subscriber_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UUID, location_name: 'subscriberId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateSubscriberRequest.add_member(:subscriber_identity, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AwsIdentity, location_name: 'subscriberIdentity'))
    UpdateSubscriberRequest.add_member(:subscriber_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SafeString, location_name: 'subscriberName', traits: {"smithy.api#length" => {"max" => 64}}))
    UpdateSubscriberRequest.add_member(:subscriber_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescriptionString, location_name: 'subscriberDescription'))
    UpdateSubscriberRequest.add_member(:sources, ::Smithy::Schema::Shapes::ShapeRef.new(shape: LogSourceResourceList, location_name: 'sources'))
    UpdateSubscriberRequest.type = Types::UpdateSubscriberRequest
    UpdateSubscriberResponse.add_member(:subscriber, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SubscriberResource, location_name: 'subscriber'))
    UpdateSubscriberResponse.type = Types::UpdateSubscriberResponse

    SecurityLake = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.securitylake#SecurityLake"
      service.name = "SecurityLake"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "SecurityLake", "arnNamespace" => "securitylake", "cloudTrailEventSource" => "securitylake.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "securitylake"}, "aws.iam#defineConditionKeys" => {"aws:ResourceTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by the tags associated with the resource", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"}, "aws:RequestTag/${TagKey}" => {"type" => "String", "documentation" => "Filters access by tags that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"}, "aws:TagKeys" => {"type" => "ArrayOfString", "documentation" => "Filters access by tag keys that are passed in the request", "externalDocumentation" => "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys"}}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "Amazon Security Lake"}
      service.add_operation(:create_aws_log_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateAwsLogSource"
        operation.name = "CreateAwsLogSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAwsLogSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAwsLogSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to enable any source type in any region for accounts that are either part of a trusted organization or standalone account", "aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "kms:DescribeKey", "kms:CreateGrant", "glue:GetTable", "glue:GetDatabase", "glue:CreateTable", "glue:CreateDatabase"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/logsources/aws", "code" => 200}}
      end)
      service.add_operation(:create_custom_log_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateCustomLogSource"
        operation.name = "CreateCustomLogSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLogSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateCustomLogSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to add a custom source", "aws.iam#requiredActions" => ["iam:GetRole", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "iam:PassRole", "s3:PutObject", "s3:ListBucket", "lakeformation:RegisterResource", "lakeformation:GrantPermissions", "kms:DescribeKey", "kms:CreateGrant", "kms:GenerateDataKey", "glue:CreateCrawler", "glue:StartCrawlerSchedule", "glue:CreateTable", "glue:CreateDatabase"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/logsources/custom", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_data_lake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateDataLake"
        operation.name = "CreateDataLake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a new security data lake", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "iam:GetRole", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "iam:PassRole", "s3:PutBucketPolicy", "s3:PutBucketPublicAccessBlock", "s3:CreateBucket", "s3:ListBucket", "s3:PutBucketVersioning", "s3:PutBucketVersioning", "organizations:DescribeOrganization", "organizations:ListDelegatedServicesForAccount", "lakeformation:GetDataLakeSettings", "lakeformation:PutDataLakeSettings", "kms:DescribeKey", "kms:CreateGrant", "events:PutRule", "events:PutTargets", "sqs:CreateQueue", "sqs:GetQueueAttributes", "sqs:SetQueueAttributes", "lambda:CreateFunction", "lambda:CreateEventSourceMapping"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake", "code" => 200}}
      end)
      service.add_operation(:create_data_lake_exception_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateDataLakeExceptionSubscription"
        operation.name = "CreateDataLakeExceptionSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeExceptionSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeExceptionSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get instant notifications about exceptions. Subscribes to the SNS topics for exception notifications", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/exceptions/subscription", "code" => 200}}
      end)
      service.add_operation(:create_data_lake_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateDataLakeOrganizationConfiguration"
        operation.name = "CreateDataLakeOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataLakeOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to automatically enable Amazon Security Lake for new member accounts in your organization. or Grants permission to automatically enable Amazon Security Lake for new organization accounts", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/organization/configuration", "code" => 200}}
      end)
      service.add_operation(:create_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateSubscriber"
        operation.name = "CreateSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a subscriber", "aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "aws.iam#requiredActions" => ["iam:GetRole", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "iam:CreateRole", "s3:PutObject", "lakeformation:RegisterResource", "lakeformation:GrantPermissions", "lakeformation:RevokePermissions", "lakeformation:ListPermissions", "ram:GetResourceShareAssociations", "ram:UpdateResourceShare", "ram:GetResourceShares"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/subscribers", "code" => 200}}
      end)
      service.add_operation(:create_subscriber_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#CreateSubscriberNotification"
        operation.name = "CreateSubscriberNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateSubscriberNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to create a webhook invocation to notify a client when there is new data in the data lake", "aws.iam#requiredActions" => ["iam:GetRole", "iam:PassRole", "iam:DeleteRolePolicy", "s3:PutBucketNotification", "s3:GetBucketNotification", "events:CreateApiDestination", "events:CreateConnection", "events:ListApiDestinations", "events:ListConnections", "events:PutRule", "events:DescribeRule", "events:PutTargets", "sqs:CreateQueue", "sqs:DeleteQueue", "sqs:GetQueueAttributes", "sqs:GetQueueUrl", "sqs:SetQueueAttributes"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/subscribers/{subscriberId}/notification", "code" => 200}}
      end)
      service.add_operation(:delete_aws_log_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteAwsLogSource"
        operation.name = "DeleteAwsLogSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAwsLogSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAwsLogSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to disable any source type in any region for accounts that are part of a trusted organization or standalone accounts", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/logsources/aws/delete", "code" => 200}}
      end)
      service.add_operation(:delete_custom_log_source, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteCustomLogSource"
        operation.name = "DeleteCustomLogSource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLogSourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteCustomLogSourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a custom source", "aws.iam#requiredActions" => ["glue:StopCrawlerSchedule"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/datalake/logsources/custom/{sourceName}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteDataLake"
        operation.name = "DeleteDataLake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete security data lake", "aws.iam#requiredActions" => ["organizations:DescribeOrganization", "organizations:ListDelegatedServicesForAccount", "organizations:ListDelegatedAdministrators"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/delete", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_exception_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteDataLakeExceptionSubscription"
        operation.name = "DeleteDataLakeExceptionSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeExceptionSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeExceptionSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to unsubscribe from SNS topics for exception notifications. Removes exception notifications for the SNS topic", "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/datalake/exceptions/subscription", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_data_lake_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteDataLakeOrganizationConfiguration"
        operation.name = "DeleteDataLakeOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataLakeOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove the automatic enablement of Amazon Security Lake access for new organization accounts", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/organization/configuration/delete", "code" => 200}}
      end)
      service.add_operation(:delete_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteSubscriber"
        operation.name = "DeleteSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to delete the specified subscriber", "aws.iam#requiredActions" => ["iam:GetRole", "iam:ListRolePolicies", "iam:DeleteRole", "iam:DeleteRolePolicy", "lakeformation:RevokePermissions", "lakeformation:ListPermissions", "events:DeleteApiDestination", "events:DeleteConnection", "events:DeleteRule", "events:ListApiDestinations", "events:ListTargetsByRule", "events:DescribeRule", "events:RemoveTargets", "sqs:DeleteQueue", "sqs:GetQueueUrl"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/subscribers/{subscriberId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_subscriber_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeleteSubscriberNotification"
        operation.name = "DeleteSubscriberNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSubscriberNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove a webhook invocation to notify a client when there is new data in the data lake", "aws.iam#requiredActions" => ["iam:GetRole", "iam:ListRolePolicies", "iam:DeleteRole", "iam:DeleteRolePolicy", "lakeformation:RevokePermissions", "events:DeleteApiDestination", "events:DeleteConnection", "events:DeleteRule", "events:ListApiDestinations", "events:ListTargetsByRule", "events:DescribeRule", "events:RemoveTargets", "sqs:DeleteQueue", "sqs:GetQueueUrl"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/subscribers/{subscriberId}/notification", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:deregister_data_lake_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#DeregisterDataLakeDelegatedAdministrator"
        operation.name = "DeregisterDataLakeDelegatedAdministrator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDataLakeDelegatedAdministratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeregisterDataLakeDelegatedAdministratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to remove the Delegated Administrator account and disable Amazon Security Lake as a service for this organization", "aws.iam#requiredActions" => ["organizations:DescribeOrganization", "organizations:DeregisterDelegatedAdministrator", "organizations:ListDelegatedServicesForAccount"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/datalake/delegate", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_data_lake_exception_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#GetDataLakeExceptionSubscription"
        operation.name = "GetDataLakeExceptionSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeExceptionSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeExceptionSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to query the protocol and endpoint that were provided when subscribing to SNS topics for exception notifications", "smithy.api#http" => {"method" => "GET", "uri" => "/v1/datalake/exceptions/subscription", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_organization_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#GetDataLakeOrganizationConfiguration"
        operation.name = "GetDataLakeOrganizationConfiguration"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeOrganizationConfigurationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeOrganizationConfigurationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get an organization’s configuration setting for automatically enabling Amazon Security Lake access for new organization accounts", "aws.iam#requiredActions" => ["organizations:DescribeOrganization"], "smithy.api#http" => {"method" => "GET", "uri" => "/v1/datalake/organization/configuration", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_lake_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#GetDataLakeSources"
        operation.name = "GetDataLakeSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeSourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataLakeSourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get a static snapshot of the security data lake in the current region. The snapshot includes enabled accounts and log sources", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/sources", "code" => 200}}
        operation[:paginator] = Paginators::GetDataLakeSources.new
      end)
      service.add_operation(:get_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#GetSubscriber"
        operation.name = "GetSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get information about subscriber that is already created", "smithy.api#http" => {"method" => "GET", "uri" => "/v1/subscribers/{subscriberId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_lake_exceptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#ListDataLakeExceptions"
        operation.name = "ListDataLakeExceptions"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeExceptionsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakeExceptionsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get the list of all non-retryable failures", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/exceptions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataLakeExceptions.new
      end)
      service.add_operation(:list_data_lakes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#ListDataLakes"
        operation.name = "ListDataLakes"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataLakesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to get information about the security data lake", "smithy.api#http" => {"method" => "GET", "uri" => "/v1/datalakes", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_log_sources, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#ListLogSources"
        operation.name = "ListLogSources"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogSourcesRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListLogSourcesResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to view the enabled accounts. You can view the enabled sources in the enabled regions", "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/logsources/list", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListLogSources.new
      end)
      service.add_operation(:list_subscribers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#ListSubscribers"
        operation.name = "ListSubscribers"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribersRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubscribersResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all subscribers", "smithy.api#http" => {"method" => "GET", "uri" => "/v1/subscribers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListSubscribers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:register_data_lake_delegated_administrator, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#RegisterDataLakeDelegatedAdministrator"
        operation.name = "RegisterDataLakeDelegatedAdministrator"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDataLakeDelegatedAdministratorRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RegisterDataLakeDelegatedAdministratorResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to designate an account as the Amazon Security Lake administrator account for the organization", "aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "organizations:DescribeOrganization", "organizations:ListDelegatedAdministrators", "organizations:RegisterDelegatedAdministrator", "organizations:EnableAWSServiceAccess", "organizations:ListDelegatedServicesForAccount"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/datalake/delegate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys", "aws:RequestTag/${TagKey}"], "smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#conditionKeys" => ["aws:TagKeys"], "smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/tags/{resourceArn}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_lake, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#UpdateDataLake"
        operation.name = "UpdateDataLake"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a security data lake", "aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "iam:GetRole", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "s3:PutBucketPolicy", "s3:PutBucketPublicAccessBlock", "s3:CreateBucket", "s3:ListBucket", "s3:PutBucketVersioning", "s3:PutBucketVersioning", "organizations:DescribeOrganization", "organizations:ListDelegatedServicesForAccount", "lakeformation:GetDataLakeSettings", "lakeformation:PutDataLakeSettings", "kms:DescribeKey", "kms:CreateGrant", "events:PutRule", "events:PutTargets", "sqs:CreateQueue", "sqs:GetQueueAttributes", "sqs:SetQueueAttributes", "lambda:CreateFunction", "lambda:CreateEventSourceMapping"], "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/datalake", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_data_lake_exception_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#UpdateDataLakeExceptionSubscription"
        operation.name = "UpdateDataLakeExceptionSubscription"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeExceptionSubscriptionRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataLakeExceptionSubscriptionResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update subscriptions to the SNS topics for exception notifications", "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/datalake/exceptions/subscription", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_subscriber, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#UpdateSubscriber"
        operation.name = "UpdateSubscriber"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update subscriber", "aws.iam#requiredActions" => ["iam:GetRole", "iam:PutRolePolicy", "iam:DeleteRolePolicy", "events:CreateApiDestination", "events:CreateConnection", "events:ListApiDestinations", "events:ListConnections", "events:PutRule", "events:DescribeRule", "events:PutTargets"], "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/subscribers/{subscriberId}", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_subscriber_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.securitylake#UpdateSubscriberNotification"
        operation.name = "UpdateSubscriberNotification"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberNotificationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateSubscriberNotificationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: BadRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to update a webhook invocation to notify a client when there is new data in the data lake", "aws.iam#requiredActions" => ["iam:CreateServiceLinkedRole", "iam:GetRole", "iam:DeleteRolePolicy", "iam:PutRolePolicy", "iam:PassRole", "s3:PutLifecycleConfiguration", "s3:PutBucketNotification", "s3:GetBucketNotification", "s3:PutBucketPolicy", "s3:PutBucketPublicAccessBlock", "s3:CreateBucket", "s3:ListBucket", "s3:PutBucketVersioning", "events:CreateApiDestination", "events:CreateConnection", "events:ListApiDestinations", "events:ListConnections", "events:PutRule", "events:DescribeRule", "events:PutTargets", "sqs:CreateQueue", "sqs:DeleteQueue", "sqs:GetQueueAttributes", "sqs:GetQueueUrl", "sqs:SetQueueAttributes"], "smithy.api#http" => {"method" => "PUT", "uri" => "/v1/subscribers/{subscriberId}/notification", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
