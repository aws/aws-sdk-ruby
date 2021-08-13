# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CustomerProfiles
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AddProfileKeyRequest = Shapes::StructureShape.new(name: 'AddProfileKeyRequest')
    AddProfileKeyResponse = Shapes::StructureShape.new(name: 'AddProfileKeyResponse')
    Address = Shapes::StructureShape.new(name: 'Address')
    AttributeSourceIdMap = Shapes::MapShape.new(name: 'AttributeSourceIdMap')
    Attributes = Shapes::MapShape.new(name: 'Attributes')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    BucketName = Shapes::StringShape.new(name: 'BucketName')
    BucketPrefix = Shapes::StringShape.new(name: 'BucketPrefix')
    ConnectorOperator = Shapes::StructureShape.new(name: 'ConnectorOperator')
    ConnectorProfileName = Shapes::StringShape.new(name: 'ConnectorProfileName')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    CreateProfileRequest = Shapes::StructureShape.new(name: 'CreateProfileRequest')
    CreateProfileResponse = Shapes::StructureShape.new(name: 'CreateProfileResponse')
    DataPullMode = Shapes::StringShape.new(name: 'DataPullMode')
    Date = Shapes::TimestampShape.new(name: 'Date')
    DatetimeTypeFieldName = Shapes::StringShape.new(name: 'DatetimeTypeFieldName')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteIntegrationRequest')
    DeleteIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteIntegrationResponse')
    DeleteProfileKeyRequest = Shapes::StructureShape.new(name: 'DeleteProfileKeyRequest')
    DeleteProfileKeyResponse = Shapes::StructureShape.new(name: 'DeleteProfileKeyResponse')
    DeleteProfileObjectRequest = Shapes::StructureShape.new(name: 'DeleteProfileObjectRequest')
    DeleteProfileObjectResponse = Shapes::StructureShape.new(name: 'DeleteProfileObjectResponse')
    DeleteProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'DeleteProfileObjectTypeRequest')
    DeleteProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'DeleteProfileObjectTypeResponse')
    DeleteProfileRequest = Shapes::StructureShape.new(name: 'DeleteProfileRequest')
    DeleteProfileResponse = Shapes::StructureShape.new(name: 'DeleteProfileResponse')
    DestinationField = Shapes::StringShape.new(name: 'DestinationField')
    DomainList = Shapes::ListShape.new(name: 'DomainList')
    DomainStats = Shapes::StructureShape.new(name: 'DomainStats')
    FieldContentType = Shapes::StringShape.new(name: 'FieldContentType')
    FieldMap = Shapes::MapShape.new(name: 'FieldMap')
    FieldNameList = Shapes::ListShape.new(name: 'FieldNameList')
    FieldSourceProfileIds = Shapes::StructureShape.new(name: 'FieldSourceProfileIds')
    FlowDefinition = Shapes::StructureShape.new(name: 'FlowDefinition')
    FlowDescription = Shapes::StringShape.new(name: 'FlowDescription')
    FlowName = Shapes::StringShape.new(name: 'FlowName')
    Gender = Shapes::StringShape.new(name: 'Gender')
    GetDomainRequest = Shapes::StructureShape.new(name: 'GetDomainRequest')
    GetDomainResponse = Shapes::StructureShape.new(name: 'GetDomainResponse')
    GetIntegrationRequest = Shapes::StructureShape.new(name: 'GetIntegrationRequest')
    GetIntegrationResponse = Shapes::StructureShape.new(name: 'GetIntegrationResponse')
    GetMatchesRequest = Shapes::StructureShape.new(name: 'GetMatchesRequest')
    GetMatchesResponse = Shapes::StructureShape.new(name: 'GetMatchesResponse')
    GetProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'GetProfileObjectTypeRequest')
    GetProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'GetProfileObjectTypeResponse')
    GetProfileObjectTypeTemplateRequest = Shapes::StructureShape.new(name: 'GetProfileObjectTypeTemplateRequest')
    GetProfileObjectTypeTemplateResponse = Shapes::StructureShape.new(name: 'GetProfileObjectTypeTemplateResponse')
    IncrementalPullConfig = Shapes::StructureShape.new(name: 'IncrementalPullConfig')
    IntegrationList = Shapes::ListShape.new(name: 'IntegrationList')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    KeyMap = Shapes::MapShape.new(name: 'KeyMap')
    KmsArn = Shapes::StringShape.new(name: 'KmsArn')
    ListAccountIntegrationsRequest = Shapes::StructureShape.new(name: 'ListAccountIntegrationsRequest')
    ListAccountIntegrationsResponse = Shapes::StructureShape.new(name: 'ListAccountIntegrationsResponse')
    ListDomainItem = Shapes::StructureShape.new(name: 'ListDomainItem')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResponse = Shapes::StructureShape.new(name: 'ListDomainsResponse')
    ListIntegrationItem = Shapes::StructureShape.new(name: 'ListIntegrationItem')
    ListIntegrationsRequest = Shapes::StructureShape.new(name: 'ListIntegrationsRequest')
    ListIntegrationsResponse = Shapes::StructureShape.new(name: 'ListIntegrationsResponse')
    ListProfileObjectTypeItem = Shapes::StructureShape.new(name: 'ListProfileObjectTypeItem')
    ListProfileObjectTypeTemplateItem = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplateItem')
    ListProfileObjectTypeTemplatesRequest = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplatesRequest')
    ListProfileObjectTypeTemplatesResponse = Shapes::StructureShape.new(name: 'ListProfileObjectTypeTemplatesResponse')
    ListProfileObjectTypesRequest = Shapes::StructureShape.new(name: 'ListProfileObjectTypesRequest')
    ListProfileObjectTypesResponse = Shapes::StructureShape.new(name: 'ListProfileObjectTypesResponse')
    ListProfileObjectsItem = Shapes::StructureShape.new(name: 'ListProfileObjectsItem')
    ListProfileObjectsRequest = Shapes::StructureShape.new(name: 'ListProfileObjectsRequest')
    ListProfileObjectsResponse = Shapes::StructureShape.new(name: 'ListProfileObjectsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MarketoConnectorOperator = Shapes::StringShape.new(name: 'MarketoConnectorOperator')
    MarketoSourceProperties = Shapes::StructureShape.new(name: 'MarketoSourceProperties')
    MatchItem = Shapes::StructureShape.new(name: 'MatchItem')
    MatchesList = Shapes::ListShape.new(name: 'MatchesList')
    MatchingRequest = Shapes::StructureShape.new(name: 'MatchingRequest')
    MatchingResponse = Shapes::StructureShape.new(name: 'MatchingResponse')
    MergeProfilesRequest = Shapes::StructureShape.new(name: 'MergeProfilesRequest')
    MergeProfilesResponse = Shapes::StructureShape.new(name: 'MergeProfilesResponse')
    Object = Shapes::StringShape.new(name: 'Object')
    ObjectFilter = Shapes::StructureShape.new(name: 'ObjectFilter')
    ObjectTypeField = Shapes::StructureShape.new(name: 'ObjectTypeField')
    ObjectTypeKey = Shapes::StructureShape.new(name: 'ObjectTypeKey')
    ObjectTypeKeyList = Shapes::ListShape.new(name: 'ObjectTypeKeyList')
    OperatorPropertiesKeys = Shapes::StringShape.new(name: 'OperatorPropertiesKeys')
    PartyType = Shapes::StringShape.new(name: 'PartyType')
    Profile = Shapes::StructureShape.new(name: 'Profile')
    ProfileIdList = Shapes::ListShape.new(name: 'ProfileIdList')
    ProfileIdToBeMergedList = Shapes::ListShape.new(name: 'ProfileIdToBeMergedList')
    ProfileList = Shapes::ListShape.new(name: 'ProfileList')
    ProfileObjectList = Shapes::ListShape.new(name: 'ProfileObjectList')
    ProfileObjectTypeList = Shapes::ListShape.new(name: 'ProfileObjectTypeList')
    ProfileObjectTypeTemplateList = Shapes::ListShape.new(name: 'ProfileObjectTypeTemplateList')
    Property = Shapes::StringShape.new(name: 'Property')
    PutIntegrationRequest = Shapes::StructureShape.new(name: 'PutIntegrationRequest')
    PutIntegrationResponse = Shapes::StructureShape.new(name: 'PutIntegrationResponse')
    PutProfileObjectRequest = Shapes::StructureShape.new(name: 'PutProfileObjectRequest')
    PutProfileObjectResponse = Shapes::StructureShape.new(name: 'PutProfileObjectResponse')
    PutProfileObjectTypeRequest = Shapes::StructureShape.new(name: 'PutProfileObjectTypeRequest')
    PutProfileObjectTypeResponse = Shapes::StructureShape.new(name: 'PutProfileObjectTypeResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    S3ConnectorOperator = Shapes::StringShape.new(name: 'S3ConnectorOperator')
    S3SourceProperties = Shapes::StructureShape.new(name: 'S3SourceProperties')
    SalesforceConnectorOperator = Shapes::StringShape.new(name: 'SalesforceConnectorOperator')
    SalesforceSourceProperties = Shapes::StructureShape.new(name: 'SalesforceSourceProperties')
    ScheduleExpression = Shapes::StringShape.new(name: 'ScheduleExpression')
    ScheduleOffset = Shapes::IntegerShape.new(name: 'ScheduleOffset')
    ScheduledTriggerProperties = Shapes::StructureShape.new(name: 'ScheduledTriggerProperties')
    SearchProfilesRequest = Shapes::StructureShape.new(name: 'SearchProfilesRequest')
    SearchProfilesResponse = Shapes::StructureShape.new(name: 'SearchProfilesResponse')
    ServiceNowConnectorOperator = Shapes::StringShape.new(name: 'ServiceNowConnectorOperator')
    ServiceNowSourceProperties = Shapes::StructureShape.new(name: 'ServiceNowSourceProperties')
    SourceConnectorProperties = Shapes::StructureShape.new(name: 'SourceConnectorProperties')
    SourceConnectorType = Shapes::StringShape.new(name: 'SourceConnectorType')
    SourceFields = Shapes::ListShape.new(name: 'SourceFields')
    SourceFlowConfig = Shapes::StructureShape.new(name: 'SourceFlowConfig')
    StandardIdentifier = Shapes::StringShape.new(name: 'StandardIdentifier')
    StandardIdentifierList = Shapes::ListShape.new(name: 'StandardIdentifierList')
    TagArn = Shapes::StringShape.new(name: 'TagArn')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Task = Shapes::StructureShape.new(name: 'Task')
    TaskPropertiesMap = Shapes::MapShape.new(name: 'TaskPropertiesMap')
    TaskType = Shapes::StringShape.new(name: 'TaskType')
    Tasks = Shapes::ListShape.new(name: 'Tasks')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timezone = Shapes::StringShape.new(name: 'Timezone')
    TriggerConfig = Shapes::StructureShape.new(name: 'TriggerConfig')
    TriggerProperties = Shapes::StructureShape.new(name: 'TriggerProperties')
    TriggerType = Shapes::StringShape.new(name: 'TriggerType')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAddress = Shapes::StructureShape.new(name: 'UpdateAddress')
    UpdateAttributes = Shapes::MapShape.new(name: 'UpdateAttributes')
    UpdateDomainRequest = Shapes::StructureShape.new(name: 'UpdateDomainRequest')
    UpdateDomainResponse = Shapes::StructureShape.new(name: 'UpdateDomainResponse')
    UpdateProfileRequest = Shapes::StructureShape.new(name: 'UpdateProfileRequest')
    UpdateProfileResponse = Shapes::StructureShape.new(name: 'UpdateProfileResponse')
    ZendeskConnectorOperator = Shapes::StringShape.new(name: 'ZendeskConnectorOperator')
    ZendeskSourceProperties = Shapes::StructureShape.new(name: 'ZendeskSourceProperties')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    encryptionKey = Shapes::StringShape.new(name: 'encryptionKey')
    expirationDaysInteger = Shapes::IntegerShape.new(name: 'expirationDaysInteger')
    long = Shapes::IntegerShape.new(name: 'long')
    matchesNumber = Shapes::IntegerShape.new(name: 'matchesNumber')
    maxSize100 = Shapes::IntegerShape.new(name: 'maxSize100')
    message = Shapes::StringShape.new(name: 'message')
    name = Shapes::StringShape.new(name: 'name')
    optionalBoolean = Shapes::BooleanShape.new(name: 'optionalBoolean')
    requestValueList = Shapes::ListShape.new(name: 'requestValueList')
    sqsQueueUrl = Shapes::StringShape.new(name: 'sqsQueueUrl')
    string0To1000 = Shapes::StringShape.new(name: 'string0To1000')
    string0To255 = Shapes::StringShape.new(name: 'string0To255')
    string1To1000 = Shapes::StringShape.new(name: 'string1To1000')
    string1To255 = Shapes::StringShape.new(name: 'string1To255')
    stringTo2048 = Shapes::StringShape.new(name: 'stringTo2048')
    stringifiedJson = Shapes::StringShape.new(name: 'stringifiedJson')
    text = Shapes::StringShape.new(name: 'text')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')
    token = Shapes::StringShape.new(name: 'token')
    typeName = Shapes::StringShape.new(name: 'typeName')
    uuid = Shapes::StringShape.new(name: 'uuid')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AddProfileKeyRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    AddProfileKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    AddProfileKeyRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    AddProfileKeyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    AddProfileKeyRequest.struct_class = Types::AddProfileKeyRequest

    AddProfileKeyResponse.add_member(:key_name, Shapes::ShapeRef.new(shape: name, location_name: "KeyName"))
    AddProfileKeyResponse.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, location_name: "Values"))
    AddProfileKeyResponse.struct_class = Types::AddProfileKeyResponse

    Address.add_member(:address_1, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address1"))
    Address.add_member(:address_2, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address2"))
    Address.add_member(:address_3, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address3"))
    Address.add_member(:address_4, Shapes::ShapeRef.new(shape: string1To255, location_name: "Address4"))
    Address.add_member(:city, Shapes::ShapeRef.new(shape: string1To255, location_name: "City"))
    Address.add_member(:county, Shapes::ShapeRef.new(shape: string1To255, location_name: "County"))
    Address.add_member(:state, Shapes::ShapeRef.new(shape: string1To255, location_name: "State"))
    Address.add_member(:province, Shapes::ShapeRef.new(shape: string1To255, location_name: "Province"))
    Address.add_member(:country, Shapes::ShapeRef.new(shape: string1To255, location_name: "Country"))
    Address.add_member(:postal_code, Shapes::ShapeRef.new(shape: string1To255, location_name: "PostalCode"))
    Address.struct_class = Types::Address

    AttributeSourceIdMap.key = Shapes::ShapeRef.new(shape: string1To255)
    AttributeSourceIdMap.value = Shapes::ShapeRef.new(shape: uuid)

    Attributes.key = Shapes::ShapeRef.new(shape: string1To255)
    Attributes.value = Shapes::ShapeRef.new(shape: string1To255)

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    BadRequestException.struct_class = Types::BadRequestException

    ConnectorOperator.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoConnectorOperator, location_name: "Marketo"))
    ConnectorOperator.add_member(:s3, Shapes::ShapeRef.new(shape: S3ConnectorOperator, location_name: "S3"))
    ConnectorOperator.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceConnectorOperator, location_name: "Salesforce"))
    ConnectorOperator.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowConnectorOperator, location_name: "ServiceNow"))
    ConnectorOperator.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskConnectorOperator, location_name: "Zendesk"))
    ConnectorOperator.struct_class = Types::ConnectorOperator

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateDomainRequest.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, required: true, location_name: "DefaultExpirationDays"))
    CreateDomainRequest.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    CreateDomainRequest.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    CreateDomainRequest.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingRequest, location_name: "Matching"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    CreateDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, required: true, location_name: "DefaultExpirationDays"))
    CreateDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    CreateDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    CreateDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    CreateDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    CreateDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    CreateDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    CreateProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    CreateProfileRequest.add_member(:account_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "AccountNumber"))
    CreateProfileRequest.add_member(:additional_information, Shapes::ShapeRef.new(shape: string1To1000, location_name: "AdditionalInformation"))
    CreateProfileRequest.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, location_name: "PartyType"))
    CreateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessName"))
    CreateProfileRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "FirstName"))
    CreateProfileRequest.add_member(:middle_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "MiddleName"))
    CreateProfileRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "LastName"))
    CreateProfileRequest.add_member(:birth_date, Shapes::ShapeRef.new(shape: string1To255, location_name: "BirthDate"))
    CreateProfileRequest.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    CreateProfileRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "PhoneNumber"))
    CreateProfileRequest.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "MobilePhoneNumber"))
    CreateProfileRequest.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "HomePhoneNumber"))
    CreateProfileRequest.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessPhoneNumber"))
    CreateProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "EmailAddress"))
    CreateProfileRequest.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "PersonalEmailAddress"))
    CreateProfileRequest.add_member(:business_email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessEmailAddress"))
    CreateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    CreateProfileRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "ShippingAddress"))
    CreateProfileRequest.add_member(:mailing_address, Shapes::ShapeRef.new(shape: Address, location_name: "MailingAddress"))
    CreateProfileRequest.add_member(:billing_address, Shapes::ShapeRef.new(shape: Address, location_name: "BillingAddress"))
    CreateProfileRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    CreateProfileRequest.struct_class = Types::CreateProfileRequest

    CreateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    CreateProfileResponse.struct_class = Types::CreateProfileResponse

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    DeleteIntegrationRequest.struct_class = Types::DeleteIntegrationRequest

    DeleteIntegrationResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteIntegrationResponse.struct_class = Types::DeleteIntegrationResponse

    DeleteProfileKeyRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileKeyRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    DeleteProfileKeyRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    DeleteProfileKeyRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileKeyRequest.struct_class = Types::DeleteProfileKeyRequest

    DeleteProfileKeyResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileKeyResponse.struct_class = Types::DeleteProfileKeyResponse

    DeleteProfileObjectRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileObjectRequest.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "ProfileObjectUniqueKey"))
    DeleteProfileObjectRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    DeleteProfileObjectRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileObjectRequest.struct_class = Types::DeleteProfileObjectRequest

    DeleteProfileObjectResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileObjectResponse.struct_class = Types::DeleteProfileObjectResponse

    DeleteProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    DeleteProfileObjectTypeRequest.struct_class = Types::DeleteProfileObjectTypeRequest

    DeleteProfileObjectTypeResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, required: true, location_name: "Message"))
    DeleteProfileObjectTypeResponse.struct_class = Types::DeleteProfileObjectTypeResponse

    DeleteProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    DeleteProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    DeleteProfileRequest.struct_class = Types::DeleteProfileRequest

    DeleteProfileResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    DeleteProfileResponse.struct_class = Types::DeleteProfileResponse

    DomainList.member = Shapes::ShapeRef.new(shape: ListDomainItem)

    DomainStats.add_member(:profile_count, Shapes::ShapeRef.new(shape: long, location_name: "ProfileCount"))
    DomainStats.add_member(:metering_profile_count, Shapes::ShapeRef.new(shape: long, location_name: "MeteringProfileCount"))
    DomainStats.add_member(:object_count, Shapes::ShapeRef.new(shape: long, location_name: "ObjectCount"))
    DomainStats.add_member(:total_size, Shapes::ShapeRef.new(shape: long, location_name: "TotalSize"))
    DomainStats.struct_class = Types::DomainStats

    FieldMap.key = Shapes::ShapeRef.new(shape: name)
    FieldMap.value = Shapes::ShapeRef.new(shape: ObjectTypeField)

    FieldNameList.member = Shapes::ShapeRef.new(shape: name)

    FieldSourceProfileIds.add_member(:account_number, Shapes::ShapeRef.new(shape: uuid, location_name: "AccountNumber"))
    FieldSourceProfileIds.add_member(:additional_information, Shapes::ShapeRef.new(shape: uuid, location_name: "AdditionalInformation"))
    FieldSourceProfileIds.add_member(:party_type, Shapes::ShapeRef.new(shape: uuid, location_name: "PartyType"))
    FieldSourceProfileIds.add_member(:business_name, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessName"))
    FieldSourceProfileIds.add_member(:first_name, Shapes::ShapeRef.new(shape: uuid, location_name: "FirstName"))
    FieldSourceProfileIds.add_member(:middle_name, Shapes::ShapeRef.new(shape: uuid, location_name: "MiddleName"))
    FieldSourceProfileIds.add_member(:last_name, Shapes::ShapeRef.new(shape: uuid, location_name: "LastName"))
    FieldSourceProfileIds.add_member(:birth_date, Shapes::ShapeRef.new(shape: uuid, location_name: "BirthDate"))
    FieldSourceProfileIds.add_member(:gender, Shapes::ShapeRef.new(shape: uuid, location_name: "Gender"))
    FieldSourceProfileIds.add_member(:phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "PhoneNumber"))
    FieldSourceProfileIds.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "MobilePhoneNumber"))
    FieldSourceProfileIds.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "HomePhoneNumber"))
    FieldSourceProfileIds.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessPhoneNumber"))
    FieldSourceProfileIds.add_member(:email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "EmailAddress"))
    FieldSourceProfileIds.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "PersonalEmailAddress"))
    FieldSourceProfileIds.add_member(:business_email_address, Shapes::ShapeRef.new(shape: uuid, location_name: "BusinessEmailAddress"))
    FieldSourceProfileIds.add_member(:address, Shapes::ShapeRef.new(shape: uuid, location_name: "Address"))
    FieldSourceProfileIds.add_member(:shipping_address, Shapes::ShapeRef.new(shape: uuid, location_name: "ShippingAddress"))
    FieldSourceProfileIds.add_member(:mailing_address, Shapes::ShapeRef.new(shape: uuid, location_name: "MailingAddress"))
    FieldSourceProfileIds.add_member(:billing_address, Shapes::ShapeRef.new(shape: uuid, location_name: "BillingAddress"))
    FieldSourceProfileIds.add_member(:attributes, Shapes::ShapeRef.new(shape: AttributeSourceIdMap, location_name: "Attributes"))
    FieldSourceProfileIds.struct_class = Types::FieldSourceProfileIds

    FlowDefinition.add_member(:description, Shapes::ShapeRef.new(shape: FlowDescription, location_name: "Description"))
    FlowDefinition.add_member(:flow_name, Shapes::ShapeRef.new(shape: FlowName, required: true, location_name: "FlowName"))
    FlowDefinition.add_member(:kms_arn, Shapes::ShapeRef.new(shape: KmsArn, required: true, location_name: "KmsArn"))
    FlowDefinition.add_member(:source_flow_config, Shapes::ShapeRef.new(shape: SourceFlowConfig, required: true, location_name: "SourceFlowConfig"))
    FlowDefinition.add_member(:tasks, Shapes::ShapeRef.new(shape: Tasks, required: true, location_name: "Tasks"))
    FlowDefinition.add_member(:trigger_config, Shapes::ShapeRef.new(shape: TriggerConfig, required: true, location_name: "TriggerConfig"))
    FlowDefinition.struct_class = Types::FlowDefinition

    GetDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetDomainRequest.struct_class = Types::GetDomainRequest

    GetDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    GetDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    GetDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    GetDomainResponse.add_member(:stats, Shapes::ShapeRef.new(shape: DomainStats, location_name: "Stats"))
    GetDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    GetDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    GetDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetDomainResponse.struct_class = Types::GetDomainResponse

    GetIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    GetIntegrationRequest.struct_class = Types::GetIntegrationRequest

    GetIntegrationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    GetIntegrationResponse.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    GetIntegrationResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    GetIntegrationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    GetIntegrationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    GetIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetIntegrationResponse.struct_class = Types::GetIntegrationResponse

    GetMatchesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    GetMatchesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    GetMatchesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetMatchesRequest.struct_class = Types::GetMatchesRequest

    GetMatchesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    GetMatchesResponse.add_member(:match_generation_date, Shapes::ShapeRef.new(shape: timestamp, location_name: "MatchGenerationDate"))
    GetMatchesResponse.add_member(:potential_matches, Shapes::ShapeRef.new(shape: matchesNumber, location_name: "PotentialMatches"))
    GetMatchesResponse.add_member(:matches, Shapes::ShapeRef.new(shape: MatchesList, location_name: "Matches"))
    GetMatchesResponse.struct_class = Types::GetMatchesResponse

    GetProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    GetProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    GetProfileObjectTypeRequest.struct_class = Types::GetProfileObjectTypeRequest

    GetProfileObjectTypeResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    GetProfileObjectTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: text, required: true, location_name: "Description"))
    GetProfileObjectTypeResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    GetProfileObjectTypeResponse.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    GetProfileObjectTypeResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    GetProfileObjectTypeResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    GetProfileObjectTypeResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    GetProfileObjectTypeResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    GetProfileObjectTypeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    GetProfileObjectTypeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    GetProfileObjectTypeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetProfileObjectTypeResponse.struct_class = Types::GetProfileObjectTypeResponse

    GetProfileObjectTypeTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "TemplateId"))
    GetProfileObjectTypeTemplateRequest.struct_class = Types::GetProfileObjectTypeTemplateRequest

    GetProfileObjectTypeTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_name, Shapes::ShapeRef.new(shape: name, location_name: "SourceName"))
    GetProfileObjectTypeTemplateResponse.add_member(:source_object, Shapes::ShapeRef.new(shape: name, location_name: "SourceObject"))
    GetProfileObjectTypeTemplateResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    GetProfileObjectTypeTemplateResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    GetProfileObjectTypeTemplateResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    GetProfileObjectTypeTemplateResponse.struct_class = Types::GetProfileObjectTypeTemplateResponse

    IncrementalPullConfig.add_member(:datetime_type_field_name, Shapes::ShapeRef.new(shape: DatetimeTypeFieldName, location_name: "DatetimeTypeFieldName"))
    IncrementalPullConfig.struct_class = Types::IncrementalPullConfig

    IntegrationList.member = Shapes::ShapeRef.new(shape: ListIntegrationItem)

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    KeyMap.key = Shapes::ShapeRef.new(shape: name)
    KeyMap.value = Shapes::ShapeRef.new(shape: ObjectTypeKeyList)

    ListAccountIntegrationsRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    ListAccountIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListAccountIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListAccountIntegrationsRequest.struct_class = Types::ListAccountIntegrationsRequest

    ListAccountIntegrationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationList, location_name: "Items"))
    ListAccountIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListAccountIntegrationsResponse.struct_class = Types::ListAccountIntegrationsResponse

    ListDomainItem.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    ListDomainItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    ListDomainItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListDomainItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListDomainItem.struct_class = Types::ListDomainItem

    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResponse.add_member(:items, Shapes::ShapeRef.new(shape: DomainList, location_name: "Items"))
    ListDomainsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListDomainsResponse.struct_class = Types::ListDomainsResponse

    ListIntegrationItem.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    ListIntegrationItem.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    ListIntegrationItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    ListIntegrationItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    ListIntegrationItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    ListIntegrationItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListIntegrationItem.struct_class = Types::ListIntegrationItem

    ListIntegrationsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListIntegrationsRequest.struct_class = Types::ListIntegrationsRequest

    ListIntegrationsResponse.add_member(:items, Shapes::ShapeRef.new(shape: IntegrationList, location_name: "Items"))
    ListIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListIntegrationsResponse.struct_class = Types::ListIntegrationsResponse

    ListProfileObjectTypeItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    ListProfileObjectTypeItem.add_member(:description, Shapes::ShapeRef.new(shape: text, required: true, location_name: "Description"))
    ListProfileObjectTypeItem.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    ListProfileObjectTypeItem.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    ListProfileObjectTypeItem.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    ListProfileObjectTypeItem.struct_class = Types::ListProfileObjectTypeItem

    ListProfileObjectTypeTemplateItem.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    ListProfileObjectTypeTemplateItem.add_member(:source_name, Shapes::ShapeRef.new(shape: name, location_name: "SourceName"))
    ListProfileObjectTypeTemplateItem.add_member(:source_object, Shapes::ShapeRef.new(shape: name, location_name: "SourceObject"))
    ListProfileObjectTypeTemplateItem.struct_class = Types::ListProfileObjectTypeTemplateItem

    ListProfileObjectTypeTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectTypeTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectTypeTemplatesRequest.struct_class = Types::ListProfileObjectTypeTemplatesRequest

    ListProfileObjectTypeTemplatesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectTypeTemplateList, location_name: "Items"))
    ListProfileObjectTypeTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectTypeTemplatesResponse.struct_class = Types::ListProfileObjectTypeTemplatesResponse

    ListProfileObjectTypesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListProfileObjectTypesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectTypesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectTypesRequest.struct_class = Types::ListProfileObjectTypesRequest

    ListProfileObjectTypesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectTypeList, location_name: "Items"))
    ListProfileObjectTypesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectTypesResponse.struct_class = Types::ListProfileObjectTypesResponse

    ListProfileObjectsItem.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, location_name: "ObjectTypeName"))
    ListProfileObjectsItem.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, location_name: "ProfileObjectUniqueKey"))
    ListProfileObjectsItem.add_member(:object, Shapes::ShapeRef.new(shape: stringifiedJson, location_name: "Object"))
    ListProfileObjectsItem.struct_class = Types::ListProfileObjectsItem

    ListProfileObjectsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    ListProfileObjectsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    ListProfileObjectsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    ListProfileObjectsRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    ListProfileObjectsRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    ListProfileObjectsRequest.add_member(:object_filter, Shapes::ShapeRef.new(shape: ObjectFilter, location_name: "ObjectFilter"))
    ListProfileObjectsRequest.struct_class = Types::ListProfileObjectsRequest

    ListProfileObjectsResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileObjectList, location_name: "Items"))
    ListProfileObjectsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    ListProfileObjectsResponse.struct_class = Types::ListProfileObjectsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    MarketoSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    MarketoSourceProperties.struct_class = Types::MarketoSourceProperties

    MatchItem.add_member(:match_id, Shapes::ShapeRef.new(shape: string1To255, location_name: "MatchId"))
    MatchItem.add_member(:profile_ids, Shapes::ShapeRef.new(shape: ProfileIdList, location_name: "ProfileIds"))
    MatchItem.struct_class = Types::MatchItem

    MatchesList.member = Shapes::ShapeRef.new(shape: MatchItem)

    MatchingRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, required: true, location_name: "Enabled"))
    MatchingRequest.struct_class = Types::MatchingRequest

    MatchingResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: optionalBoolean, location_name: "Enabled"))
    MatchingResponse.struct_class = Types::MatchingResponse

    MergeProfilesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    MergeProfilesRequest.add_member(:main_profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "MainProfileId"))
    MergeProfilesRequest.add_member(:profile_ids_to_be_merged, Shapes::ShapeRef.new(shape: ProfileIdToBeMergedList, required: true, location_name: "ProfileIdsToBeMerged"))
    MergeProfilesRequest.add_member(:field_source_profile_ids, Shapes::ShapeRef.new(shape: FieldSourceProfileIds, location_name: "FieldSourceProfileIds"))
    MergeProfilesRequest.struct_class = Types::MergeProfilesRequest

    MergeProfilesResponse.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    MergeProfilesResponse.struct_class = Types::MergeProfilesResponse

    ObjectFilter.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    ObjectFilter.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    ObjectFilter.struct_class = Types::ObjectFilter

    ObjectTypeField.add_member(:source, Shapes::ShapeRef.new(shape: text, location_name: "Source"))
    ObjectTypeField.add_member(:target, Shapes::ShapeRef.new(shape: text, location_name: "Target"))
    ObjectTypeField.add_member(:content_type, Shapes::ShapeRef.new(shape: FieldContentType, location_name: "ContentType"))
    ObjectTypeField.struct_class = Types::ObjectTypeField

    ObjectTypeKey.add_member(:standard_identifiers, Shapes::ShapeRef.new(shape: StandardIdentifierList, location_name: "StandardIdentifiers"))
    ObjectTypeKey.add_member(:field_names, Shapes::ShapeRef.new(shape: FieldNameList, location_name: "FieldNames"))
    ObjectTypeKey.struct_class = Types::ObjectTypeKey

    ObjectTypeKeyList.member = Shapes::ShapeRef.new(shape: ObjectTypeKey)

    Profile.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, location_name: "ProfileId"))
    Profile.add_member(:account_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "AccountNumber"))
    Profile.add_member(:additional_information, Shapes::ShapeRef.new(shape: string1To1000, location_name: "AdditionalInformation"))
    Profile.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, location_name: "PartyType"))
    Profile.add_member(:business_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessName"))
    Profile.add_member(:first_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "FirstName"))
    Profile.add_member(:middle_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "MiddleName"))
    Profile.add_member(:last_name, Shapes::ShapeRef.new(shape: string1To255, location_name: "LastName"))
    Profile.add_member(:birth_date, Shapes::ShapeRef.new(shape: string1To255, location_name: "BirthDate"))
    Profile.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    Profile.add_member(:phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "PhoneNumber"))
    Profile.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "MobilePhoneNumber"))
    Profile.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "HomePhoneNumber"))
    Profile.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessPhoneNumber"))
    Profile.add_member(:email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "EmailAddress"))
    Profile.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "PersonalEmailAddress"))
    Profile.add_member(:business_email_address, Shapes::ShapeRef.new(shape: string1To255, location_name: "BusinessEmailAddress"))
    Profile.add_member(:address, Shapes::ShapeRef.new(shape: Address, location_name: "Address"))
    Profile.add_member(:shipping_address, Shapes::ShapeRef.new(shape: Address, location_name: "ShippingAddress"))
    Profile.add_member(:mailing_address, Shapes::ShapeRef.new(shape: Address, location_name: "MailingAddress"))
    Profile.add_member(:billing_address, Shapes::ShapeRef.new(shape: Address, location_name: "BillingAddress"))
    Profile.add_member(:attributes, Shapes::ShapeRef.new(shape: Attributes, location_name: "Attributes"))
    Profile.struct_class = Types::Profile

    ProfileIdList.member = Shapes::ShapeRef.new(shape: uuid)

    ProfileIdToBeMergedList.member = Shapes::ShapeRef.new(shape: uuid)

    ProfileList.member = Shapes::ShapeRef.new(shape: Profile)

    ProfileObjectList.member = Shapes::ShapeRef.new(shape: ListProfileObjectsItem)

    ProfileObjectTypeList.member = Shapes::ShapeRef.new(shape: ListProfileObjectTypeItem)

    ProfileObjectTypeTemplateList.member = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplateItem)

    PutIntegrationRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutIntegrationRequest.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, location_name: "Uri"))
    PutIntegrationRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutIntegrationRequest.add_member(:flow_definition, Shapes::ShapeRef.new(shape: FlowDefinition, location_name: "FlowDefinition"))
    PutIntegrationRequest.struct_class = Types::PutIntegrationRequest

    PutIntegrationResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    PutIntegrationResponse.add_member(:uri, Shapes::ShapeRef.new(shape: string1To255, required: true, location_name: "Uri"))
    PutIntegrationResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutIntegrationResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    PutIntegrationResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    PutIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutIntegrationResponse.struct_class = Types::PutIntegrationResponse

    PutProfileObjectRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutProfileObjectRequest.add_member(:object, Shapes::ShapeRef.new(shape: stringifiedJson, required: true, location_name: "Object"))
    PutProfileObjectRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutProfileObjectRequest.struct_class = Types::PutProfileObjectRequest

    PutProfileObjectResponse.add_member(:profile_object_unique_key, Shapes::ShapeRef.new(shape: string1To255, location_name: "ProfileObjectUniqueKey"))
    PutProfileObjectResponse.struct_class = Types::PutProfileObjectResponse

    PutProfileObjectTypeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    PutProfileObjectTypeRequest.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location: "uri", location_name: "ObjectTypeName"))
    PutProfileObjectTypeRequest.add_member(:description, Shapes::ShapeRef.new(shape: text, required: true, location_name: "Description"))
    PutProfileObjectTypeRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    PutProfileObjectTypeRequest.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    PutProfileObjectTypeRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    PutProfileObjectTypeRequest.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    PutProfileObjectTypeRequest.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    PutProfileObjectTypeRequest.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    PutProfileObjectTypeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutProfileObjectTypeRequest.struct_class = Types::PutProfileObjectTypeRequest

    PutProfileObjectTypeResponse.add_member(:object_type_name, Shapes::ShapeRef.new(shape: typeName, required: true, location_name: "ObjectTypeName"))
    PutProfileObjectTypeResponse.add_member(:description, Shapes::ShapeRef.new(shape: text, required: true, location_name: "Description"))
    PutProfileObjectTypeResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: name, location_name: "TemplateId"))
    PutProfileObjectTypeResponse.add_member(:expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "ExpirationDays"))
    PutProfileObjectTypeResponse.add_member(:encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "EncryptionKey"))
    PutProfileObjectTypeResponse.add_member(:allow_profile_creation, Shapes::ShapeRef.new(shape: boolean, location_name: "AllowProfileCreation"))
    PutProfileObjectTypeResponse.add_member(:fields, Shapes::ShapeRef.new(shape: FieldMap, location_name: "Fields"))
    PutProfileObjectTypeResponse.add_member(:keys, Shapes::ShapeRef.new(shape: KeyMap, location_name: "Keys"))
    PutProfileObjectTypeResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "CreatedAt"))
    PutProfileObjectTypeResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, location_name: "LastUpdatedAt"))
    PutProfileObjectTypeResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    PutProfileObjectTypeResponse.struct_class = Types::PutProfileObjectTypeResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    S3SourceProperties.add_member(:bucket_name, Shapes::ShapeRef.new(shape: BucketName, required: true, location_name: "BucketName"))
    S3SourceProperties.add_member(:bucket_prefix, Shapes::ShapeRef.new(shape: BucketPrefix, location_name: "BucketPrefix"))
    S3SourceProperties.struct_class = Types::S3SourceProperties

    SalesforceSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    SalesforceSourceProperties.add_member(:enable_dynamic_field_update, Shapes::ShapeRef.new(shape: boolean, location_name: "EnableDynamicFieldUpdate"))
    SalesforceSourceProperties.add_member(:include_deleted_records, Shapes::ShapeRef.new(shape: boolean, location_name: "IncludeDeletedRecords"))
    SalesforceSourceProperties.struct_class = Types::SalesforceSourceProperties

    ScheduledTriggerProperties.add_member(:schedule_expression, Shapes::ShapeRef.new(shape: ScheduleExpression, required: true, location_name: "ScheduleExpression"))
    ScheduledTriggerProperties.add_member(:data_pull_mode, Shapes::ShapeRef.new(shape: DataPullMode, location_name: "DataPullMode"))
    ScheduledTriggerProperties.add_member(:schedule_start_time, Shapes::ShapeRef.new(shape: Date, location_name: "ScheduleStartTime"))
    ScheduledTriggerProperties.add_member(:schedule_end_time, Shapes::ShapeRef.new(shape: Date, location_name: "ScheduleEndTime"))
    ScheduledTriggerProperties.add_member(:timezone, Shapes::ShapeRef.new(shape: Timezone, location_name: "Timezone"))
    ScheduledTriggerProperties.add_member(:schedule_offset, Shapes::ShapeRef.new(shape: ScheduleOffset, location_name: "ScheduleOffset", metadata: {"box"=>true}))
    ScheduledTriggerProperties.add_member(:first_execution_from, Shapes::ShapeRef.new(shape: Date, location_name: "FirstExecutionFrom"))
    ScheduledTriggerProperties.struct_class = Types::ScheduledTriggerProperties

    SearchProfilesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location: "querystring", location_name: "next-token"))
    SearchProfilesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: maxSize100, location: "querystring", location_name: "max-results"))
    SearchProfilesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    SearchProfilesRequest.add_member(:key_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "KeyName"))
    SearchProfilesRequest.add_member(:values, Shapes::ShapeRef.new(shape: requestValueList, required: true, location_name: "Values"))
    SearchProfilesRequest.struct_class = Types::SearchProfilesRequest

    SearchProfilesResponse.add_member(:items, Shapes::ShapeRef.new(shape: ProfileList, location_name: "Items"))
    SearchProfilesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: token, location_name: "NextToken"))
    SearchProfilesResponse.struct_class = Types::SearchProfilesResponse

    ServiceNowSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    ServiceNowSourceProperties.struct_class = Types::ServiceNowSourceProperties

    SourceConnectorProperties.add_member(:marketo, Shapes::ShapeRef.new(shape: MarketoSourceProperties, location_name: "Marketo"))
    SourceConnectorProperties.add_member(:s3, Shapes::ShapeRef.new(shape: S3SourceProperties, location_name: "S3"))
    SourceConnectorProperties.add_member(:salesforce, Shapes::ShapeRef.new(shape: SalesforceSourceProperties, location_name: "Salesforce"))
    SourceConnectorProperties.add_member(:service_now, Shapes::ShapeRef.new(shape: ServiceNowSourceProperties, location_name: "ServiceNow"))
    SourceConnectorProperties.add_member(:zendesk, Shapes::ShapeRef.new(shape: ZendeskSourceProperties, location_name: "Zendesk"))
    SourceConnectorProperties.struct_class = Types::SourceConnectorProperties

    SourceFields.member = Shapes::ShapeRef.new(shape: stringTo2048)

    SourceFlowConfig.add_member(:connector_profile_name, Shapes::ShapeRef.new(shape: ConnectorProfileName, location_name: "ConnectorProfileName"))
    SourceFlowConfig.add_member(:connector_type, Shapes::ShapeRef.new(shape: SourceConnectorType, required: true, location_name: "ConnectorType"))
    SourceFlowConfig.add_member(:incremental_pull_config, Shapes::ShapeRef.new(shape: IncrementalPullConfig, location_name: "IncrementalPullConfig"))
    SourceFlowConfig.add_member(:source_connector_properties, Shapes::ShapeRef.new(shape: SourceConnectorProperties, required: true, location_name: "SourceConnectorProperties"))
    SourceFlowConfig.struct_class = Types::SourceFlowConfig

    StandardIdentifierList.member = Shapes::ShapeRef.new(shape: StandardIdentifier)

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Task.add_member(:connector_operator, Shapes::ShapeRef.new(shape: ConnectorOperator, location_name: "ConnectorOperator"))
    Task.add_member(:destination_field, Shapes::ShapeRef.new(shape: DestinationField, location_name: "DestinationField"))
    Task.add_member(:source_fields, Shapes::ShapeRef.new(shape: SourceFields, required: true, location_name: "SourceFields"))
    Task.add_member(:task_properties, Shapes::ShapeRef.new(shape: TaskPropertiesMap, location_name: "TaskProperties"))
    Task.add_member(:task_type, Shapes::ShapeRef.new(shape: TaskType, required: true, location_name: "TaskType"))
    Task.struct_class = Types::Task

    TaskPropertiesMap.key = Shapes::ShapeRef.new(shape: OperatorPropertiesKeys)
    TaskPropertiesMap.value = Shapes::ShapeRef.new(shape: Property)

    Tasks.member = Shapes::ShapeRef.new(shape: Task)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TriggerConfig.add_member(:trigger_type, Shapes::ShapeRef.new(shape: TriggerType, required: true, location_name: "TriggerType"))
    TriggerConfig.add_member(:trigger_properties, Shapes::ShapeRef.new(shape: TriggerProperties, location_name: "TriggerProperties"))
    TriggerConfig.struct_class = Types::TriggerConfig

    TriggerProperties.add_member(:scheduled, Shapes::ShapeRef.new(shape: ScheduledTriggerProperties, location_name: "Scheduled"))
    TriggerProperties.struct_class = Types::TriggerProperties

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: TagArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAddress.add_member(:address_1, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address1"))
    UpdateAddress.add_member(:address_2, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address2"))
    UpdateAddress.add_member(:address_3, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address3"))
    UpdateAddress.add_member(:address_4, Shapes::ShapeRef.new(shape: string0To255, location_name: "Address4"))
    UpdateAddress.add_member(:city, Shapes::ShapeRef.new(shape: string0To255, location_name: "City"))
    UpdateAddress.add_member(:county, Shapes::ShapeRef.new(shape: string0To255, location_name: "County"))
    UpdateAddress.add_member(:state, Shapes::ShapeRef.new(shape: string0To255, location_name: "State"))
    UpdateAddress.add_member(:province, Shapes::ShapeRef.new(shape: string0To255, location_name: "Province"))
    UpdateAddress.add_member(:country, Shapes::ShapeRef.new(shape: string0To255, location_name: "Country"))
    UpdateAddress.add_member(:postal_code, Shapes::ShapeRef.new(shape: string0To255, location_name: "PostalCode"))
    UpdateAddress.struct_class = Types::UpdateAddress

    UpdateAttributes.key = Shapes::ShapeRef.new(shape: string1To255)
    UpdateAttributes.value = Shapes::ShapeRef.new(shape: string0To255)

    UpdateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateDomainRequest.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    UpdateDomainRequest.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    UpdateDomainRequest.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    UpdateDomainRequest.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingRequest, location_name: "Matching"))
    UpdateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateDomainRequest.struct_class = Types::UpdateDomainRequest

    UpdateDomainResponse.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location_name: "DomainName"))
    UpdateDomainResponse.add_member(:default_expiration_days, Shapes::ShapeRef.new(shape: expirationDaysInteger, location_name: "DefaultExpirationDays"))
    UpdateDomainResponse.add_member(:default_encryption_key, Shapes::ShapeRef.new(shape: encryptionKey, location_name: "DefaultEncryptionKey"))
    UpdateDomainResponse.add_member(:dead_letter_queue_url, Shapes::ShapeRef.new(shape: sqsQueueUrl, location_name: "DeadLetterQueueUrl"))
    UpdateDomainResponse.add_member(:matching, Shapes::ShapeRef.new(shape: MatchingResponse, location_name: "Matching"))
    UpdateDomainResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedAt"))
    UpdateDomainResponse.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "LastUpdatedAt"))
    UpdateDomainResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    UpdateDomainResponse.struct_class = Types::UpdateDomainResponse

    UpdateProfileRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: name, required: true, location: "uri", location_name: "DomainName"))
    UpdateProfileRequest.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    UpdateProfileRequest.add_member(:additional_information, Shapes::ShapeRef.new(shape: string0To1000, location_name: "AdditionalInformation"))
    UpdateProfileRequest.add_member(:account_number, Shapes::ShapeRef.new(shape: string0To255, location_name: "AccountNumber"))
    UpdateProfileRequest.add_member(:party_type, Shapes::ShapeRef.new(shape: PartyType, location_name: "PartyType"))
    UpdateProfileRequest.add_member(:business_name, Shapes::ShapeRef.new(shape: string0To255, location_name: "BusinessName"))
    UpdateProfileRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: string0To255, location_name: "FirstName"))
    UpdateProfileRequest.add_member(:middle_name, Shapes::ShapeRef.new(shape: string0To255, location_name: "MiddleName"))
    UpdateProfileRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: string0To255, location_name: "LastName"))
    UpdateProfileRequest.add_member(:birth_date, Shapes::ShapeRef.new(shape: string0To255, location_name: "BirthDate"))
    UpdateProfileRequest.add_member(:gender, Shapes::ShapeRef.new(shape: Gender, location_name: "Gender"))
    UpdateProfileRequest.add_member(:phone_number, Shapes::ShapeRef.new(shape: string0To255, location_name: "PhoneNumber"))
    UpdateProfileRequest.add_member(:mobile_phone_number, Shapes::ShapeRef.new(shape: string0To255, location_name: "MobilePhoneNumber"))
    UpdateProfileRequest.add_member(:home_phone_number, Shapes::ShapeRef.new(shape: string0To255, location_name: "HomePhoneNumber"))
    UpdateProfileRequest.add_member(:business_phone_number, Shapes::ShapeRef.new(shape: string0To255, location_name: "BusinessPhoneNumber"))
    UpdateProfileRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: string0To255, location_name: "EmailAddress"))
    UpdateProfileRequest.add_member(:personal_email_address, Shapes::ShapeRef.new(shape: string0To255, location_name: "PersonalEmailAddress"))
    UpdateProfileRequest.add_member(:business_email_address, Shapes::ShapeRef.new(shape: string0To255, location_name: "BusinessEmailAddress"))
    UpdateProfileRequest.add_member(:address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "Address"))
    UpdateProfileRequest.add_member(:shipping_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "ShippingAddress"))
    UpdateProfileRequest.add_member(:mailing_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "MailingAddress"))
    UpdateProfileRequest.add_member(:billing_address, Shapes::ShapeRef.new(shape: UpdateAddress, location_name: "BillingAddress"))
    UpdateProfileRequest.add_member(:attributes, Shapes::ShapeRef.new(shape: UpdateAttributes, location_name: "Attributes"))
    UpdateProfileRequest.struct_class = Types::UpdateProfileRequest

    UpdateProfileResponse.add_member(:profile_id, Shapes::ShapeRef.new(shape: uuid, required: true, location_name: "ProfileId"))
    UpdateProfileResponse.struct_class = Types::UpdateProfileResponse

    ZendeskSourceProperties.add_member(:object, Shapes::ShapeRef.new(shape: Object, required: true, location_name: "Object"))
    ZendeskSourceProperties.struct_class = Types::ZendeskSourceProperties

    requestValueList.member = Shapes::ShapeRef.new(shape: string1To255)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-08-15"

      api.metadata = {
        "apiVersion" => "2020-08-15",
        "endpointPrefix" => "profile",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "Customer Profiles",
        "serviceFullName" => "Amazon Connect Customer Profiles",
        "serviceId" => "Customer Profiles",
        "signatureVersion" => "v4",
        "signingName" => "profile",
        "uid" => "customer-profiles-2020-08-15",
      }

      api.add_operation(:add_profile_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddProfileKey"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/keys"
        o.input = Shapes::ShapeRef.new(shape: AddProfileKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: AddProfileKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:create_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles"
        o.input = Shapes::ShapeRef.new(shape: CreateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/integrations/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfile"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileKey"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/keys/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileObject"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects/delete"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:delete_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteProfileObjectType"
        o.http_method = "DELETE"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomain"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: GetDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: GetIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_matches, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetMatches"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/matches"
        o.input = Shapes::ShapeRef.new(shape: GetMatchesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetMatchesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileObjectType"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_profile_object_type_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetProfileObjectTypeTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: GetProfileObjectTypeTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: GetProfileObjectTypeTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_account_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAccountIntegrations"
        o.http_method = "POST"
        o.http_request_uri = "/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListAccountIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAccountIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "GET"
        o.http_request_uri = "/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: ListIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_object_type_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjectTypeTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/templates"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectTypeTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_object_types, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjectTypes"
        o.http_method = "GET"
        o.http_request_uri = "/domains/{DomainName}/object-types"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectTypesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectTypesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_profile_objects, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListProfileObjects"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects"
        o.input = Shapes::ShapeRef.new(shape: ListProfileObjectsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListProfileObjectsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:merge_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "MergeProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects/merge"
        o.input = Shapes::ShapeRef.new(shape: MergeProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: MergeProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutIntegration"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/integrations"
        o.input = Shapes::ShapeRef.new(shape: PutIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_profile_object, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileObject"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/profiles/objects"
        o.input = Shapes::ShapeRef.new(shape: PutProfileObjectRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileObjectResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_profile_object_type, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutProfileObjectType"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/object-types/{ObjectTypeName}"
        o.input = Shapes::ShapeRef.new(shape: PutProfileObjectTypeRequest)
        o.output = Shapes::ShapeRef.new(shape: PutProfileObjectTypeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:search_profiles, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchProfiles"
        o.http_method = "POST"
        o.http_request_uri = "/domains/{DomainName}/profiles/search"
        o.input = Shapes::ShapeRef.new(shape: SearchProfilesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchProfilesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDomain"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_profile, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateProfile"
        o.http_method = "PUT"
        o.http_request_uri = "/domains/{DomainName}/profiles"
        o.input = Shapes::ShapeRef.new(shape: UpdateProfileRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateProfileResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
