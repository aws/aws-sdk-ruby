# frozen_string_literal: true

# This is generated code!

module Aws::NotificationsContacts
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ActivateEmailContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ActivateEmailContactRequest', name: 'ActivateEmailContactRequest')
    ActivateEmailContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ActivateEmailContactResponse', name: 'ActivateEmailContactResponse')
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateEmailContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#CreateEmailContactRequest', name: 'CreateEmailContactRequest')
    CreateEmailContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#CreateEmailContactResponse', name: 'CreateEmailContactResponse')
    CreationTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.notificationscontacts#CreationTime', name: 'CreationTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    DeleteEmailContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#DeleteEmailContactRequest', name: 'DeleteEmailContactRequest')
    DeleteEmailContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#DeleteEmailContactResponse', name: 'DeleteEmailContactResponse')
    EmailContact = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#EmailContact', name: 'EmailContact')
    EmailContactAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#EmailContactAddress', name: 'EmailContactAddress', traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^(.+)@(.+)$"})
    EmailContactArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#EmailContactArn', name: 'EmailContactArn', traits: {"aws.api#arnReference" => {"service" => "com.amazonaws.notificationscontacts#NotificationsContacts", "resource" => "com.amazon.aws.services.notifications.contacts.orchestration.service#EmailContact"}, "smithy.api#pattern" => "^arn:aws:notifications-contacts::[0-9]{12}:emailcontact/[a-z0-9]{27}$"})
    EmailContactName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#EmailContactName', name: 'EmailContactName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "[\\w-.~]+", "smithy.api#sensitive" => {}, "smithy.api#suppress" => ["PatternTrait"]})
    EmailContactStatus = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#EmailContactStatus', name: 'EmailContactStatus', traits: {"smithy.api#enum" => [{"value" => "inactive", "name" => "INACTIVE"}, {"value" => "active", "name" => "ACTIVE"}]})
    EmailContacts = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notificationscontacts#EmailContacts', name: 'EmailContacts')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#ErrorMessage', name: 'ErrorMessage')
    GetEmailContactRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#GetEmailContactRequest', name: 'GetEmailContactRequest')
    GetEmailContactResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#GetEmailContactResponse', name: 'GetEmailContactResponse')
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListEmailContactsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ListEmailContactsRequest', name: 'ListEmailContactsRequest')
    ListEmailContactsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ListEmailContactsResponse', name: 'ListEmailContactsResponse')
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    QuotaCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#QuotaCode', name: 'QuotaCode')
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#ResourceId', name: 'ResourceId')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#ResourceType', name: 'ResourceType')
    SendActivationCodeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#SendActivationCodeRequest', name: 'SendActivationCodeRequest')
    SendActivationCodeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#SendActivationCodeResponse', name: 'SendActivationCodeResponse')
    SensitiveEmailContactAddress = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#SensitiveEmailContactAddress', name: 'SensitiveEmailContactAddress', traits: {"smithy.api#length" => {"min" => 6, "max" => 254}, "smithy.api#pattern" => "^(.+)@(.+)$", "smithy.api#sensitive" => {}})
    ServiceCode = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#ServiceCode', name: 'ServiceCode')
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#TagKey', name: 'TagKey', traits: {"smithy.api#pattern" => "^(?!aws:).{1,128}$"})
    TagKeys = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notificationscontacts#TagKeys', name: 'TagKeys')
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.notificationscontacts#TagMap', name: 'TagMap', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    Token = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.notificationscontacts#Token', name: 'Token', traits: {"smithy.api#length" => {"min" => 7, "max" => 7}, "smithy.api#pattern" => "^[a-z0-9]{7}$", "smithy.api#sensitive" => {}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateTime = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.notificationscontacts#UpdateTime', name: 'UpdateTime', traits: {"smithy.api#timestampFormat" => "date-time"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionField = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.notificationscontacts#ValidationExceptionField', name: 'ValidationExceptionField')
    ValidationExceptionFieldList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.notificationscontacts#ValidationExceptionFieldList', name: 'ValidationExceptionFieldList')
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.notificationscontacts#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ActivateEmailContactRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateEmailContactRequest.add_member(:code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Token, location_name: 'code', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ActivateEmailContactRequest.type = Types::ActivateEmailContactRequest
    ActivateEmailContactResponse.type = Types::ActivateEmailContactResponse
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    CreateEmailContactRequest.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    CreateEmailContactRequest.add_member(:email_address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactAddress, location_name: 'emailAddress', traits: {"smithy.api#required" => {}}))
    CreateEmailContactRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    CreateEmailContactRequest.type = Types::CreateEmailContactRequest
    CreateEmailContactResponse.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    CreateEmailContactResponse.type = Types::CreateEmailContactResponse
    DeleteEmailContactRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEmailContactRequest.type = Types::DeleteEmailContactRequest
    DeleteEmailContactResponse.type = Types::DeleteEmailContactResponse
    EmailContact.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#required" => {}}))
    EmailContact.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactName, location_name: 'name', traits: {"smithy.api#required" => {}}))
    EmailContact.add_member(:address, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SensitiveEmailContactAddress, location_name: 'address', traits: {"smithy.api#required" => {}}))
    EmailContact.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactStatus, location_name: 'status', traits: {"smithy.api#required" => {}}))
    EmailContact.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreationTime, location_name: 'creationTime', traits: {"smithy.api#required" => {}}))
    EmailContact.add_member(:update_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTime, location_name: 'updateTime', traits: {"smithy.api#required" => {}}))
    EmailContact.type = Types::EmailContact
    EmailContacts.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContact)
    GetEmailContactRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEmailContactRequest.type = Types::GetEmailContactRequest
    GetEmailContactResponse.add_member(:email_contact, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContact, location_name: 'emailContact', traits: {"smithy.api#required" => {}}))
    GetEmailContactResponse.type = Types::GetEmailContactResponse
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListEmailContactsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults", "smithy.api#range" => {"min" => 1, "max" => 100}}))
    ListEmailContactsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEmailContactsRequest.type = Types::ListEmailContactsRequest
    ListEmailContactsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'nextToken'))
    ListEmailContactsResponse.add_member(:email_contacts, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContacts, location_name: 'emailContacts', traits: {"smithy.api#required" => {}}))
    ListEmailContactsResponse.type = Types::ListEmailContactsResponse
    ListTagsForResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SendActivationCodeRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendActivationCodeRequest.type = Types::SendActivationCodeRequest
    SendActivationCodeResponse.type = Types::SendActivationCodeResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'resourceId', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    TagKeys.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:service_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceCode, location_name: 'serviceCode'))
    ThrottlingException.add_member(:quota_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: QuotaCode, location_name: 'quotaCode'))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Integer, location_name: 'retryAfterSeconds', traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: EmailContactArn, location_name: 'arn', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeys, location_name: 'tagKeys', traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_list, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionFieldList, location_name: 'fieldList'))
    ValidationException.type = Types::ValidationException
    ValidationExceptionField.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'name', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationExceptionField.type = Types::ValidationExceptionField
    ValidationExceptionFieldList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionField)
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "fieldValidationFailed"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "other"}))

    NotificationsContacts = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.notificationscontacts#NotificationsContacts"
      service.name = "NotificationsContacts"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "NotificationsContacts", "arnNamespace" => "notifications-contacts", "endpointPrefix" => "notifications-contacts", "cloudTrailEventSource" => "notifications-contacts.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "notifications-contacts"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardPartitionalEndpoints" => {"endpointPatternType" => "service_region_dnsSuffix"}, "aws.iam#supportedPrincipalTypes" => ["Root", "IAMUser", "IAMRole", "FederatedUser"], "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "content-type", "x-amz-content-sha256", "x-amz-user-agent", "x-amzn-platform-id", "x-amzn-trace-id"], "additionalExposedHeaders" => ["x-amzn-errortype", "x-amzn-requestid", "x-amzn-trace-id"], "maxAge" => 86400}, "smithy.api#title" => "AWS User Notifications Contacts"}
      service.add_operation(:activate_email_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#ActivateEmailContact"
        operation.name = "ActivateEmailContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateEmailContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ActivateEmailContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to activate the email contact associated with the given ARN if the provided code is valid"}, "smithy.api#http" => {"code" => 200, "method" => "PUT", "uri" => "/emailcontacts/{arn}/activate/{code}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:create_email_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#CreateEmailContact"
        operation.name = "CreateEmailContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEmailContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to create an email contact"}, "smithy.api#http" => {"code" => 201, "method" => "POST", "uri" => "/2022-09-19/emailcontacts"}}
      end)
      service.add_operation(:delete_email_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#DeleteEmailContact"
        operation.name = "DeleteEmailContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEmailContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to delete an email contact associated with the given ARN"}, "smithy.api#http" => {"code" => 200, "method" => "DELETE", "uri" => "/emailcontacts/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:get_email_contact, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#GetEmailContact"
        operation.name = "GetEmailContact"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailContactRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: GetEmailContactResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get an email contact associated with the given ARN"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/emailcontacts/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_email_contacts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#ListEmailContacts"
        operation.name = "ListEmailContacts"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailContactsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListEmailContactsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to list email contacts"}, "smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/emailcontacts"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "ListEmailContactsSuccess", "params" => {"maxResults" => 1}, "expect" => {"success" => {}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::ListEmailContacts.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to get tags for a resource"}, "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{arn}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:send_activation_code, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#SendActivationCode"
        operation.name = "SendActivationCode"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendActivationCodeRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendActivationCodeResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to send an activation link to the email associated with the given ARN"}, "smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/2022-10-31/emailcontacts/{arn}/activate/send"}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to tag a resource"}, "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{arn}"}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.notificationscontacts#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.api#controlPlane" => {}, "aws.iam#iamAction" => {"documentation" => "Grants permission to remove tags from a resource"}, "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{arn}"}, "smithy.api#idempotent" => {}}
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
