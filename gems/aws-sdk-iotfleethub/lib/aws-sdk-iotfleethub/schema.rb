# frozen_string_literal: true

# This is generated code!

module Aws::IoTFleetHub
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ApplicationState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iotfleethub#ApplicationState", name: "ApplicationState")
    ApplicationSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotfleethub#ApplicationSummaries", name: "ApplicationSummaries")
    ApplicationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ApplicationSummary", name: "ApplicationSummary")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}, "smithy.api#pattern" => "^arn:[!-~]+$"})
    ClientRequestToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#ClientRequestToken", name: "ClientRequestToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9-_]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#CreateApplicationResponse", name: "CreateApplicationResponse")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#DeleteApplicationResponse", name: "DeleteApplicationResponse")
    DescribeApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#DescribeApplicationRequest", name: "DescribeApplicationRequest")
    DescribeApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#DescribeApplicationResponse", name: "DescribeApplicationResponse")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[ -~]*$"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#ErrorMessage", name: "ErrorMessage")
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#Id", name: "Id", traits: {"smithy.api#length" => {"min" => 36, "max" => 36}, "smithy.api#pattern" => "^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$"})
    InternalFailureException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#InternalFailureException", name: "InternalFailureException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidRequestException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#InvalidRequestException", name: "InvalidRequestException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 410})
    ListApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ListApplicationsRequest", name: "ListApplicationsRequest")
    ListApplicationsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ListApplicationsResponse", name: "ListApplicationsResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#Name", name: "Name", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[ -~]*$"})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9+/=]+$"})
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#ResourceArn", name: "ResourceArn")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SsoClientId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#SsoClientId", name: "SsoClientId")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iotfleethub#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iotfleethub#TagMap", name: "TagMap", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Timestamp = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.iotfleethub#Timestamp", name: "Timestamp", traits: {"smithy.api#default" => 0})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iotfleethub#UpdateApplicationResponse", name: "UpdateApplicationResponse")
    Url = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.iotfleethub#Url", name: "Url", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^https\\://\\S+$"})

    ApplicationState.add_member(:creating, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationState.add_member(:deleting, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationState.add_member(:active, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationState.add_member(:create_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ApplicationState.add_member(:delete_failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ApplicationSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummary)
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "applicationName", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    ApplicationSummary.add_member(:application_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "applicationUrl", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationCreationDate", traits: {"smithy.api#default" => 0}))
    ApplicationSummary.add_member(:application_last_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationLastUpdateDate", traits: {"smithy.api#default" => 0}))
    ApplicationSummary.add_member(:application_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: "applicationState"))
    ApplicationSummary.type = Types::ApplicationSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "applicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "applicationArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DescribeApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "applicationArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "applicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    DescribeApplicationResponse.add_member(:application_url, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Url, location_name: "applicationUrl", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationState, location_name: "applicationState", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_creation_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationCreationDate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_last_update_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationLastUpdateDate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: "roleArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:sso_client_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SsoClientId, location_name: "ssoClientId"))
    DescribeApplicationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    DescribeApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: "applicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: "applicationName"))
    UpdateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    UpdateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResponse.type = Types::UpdateApplicationResponse

    AWSIoTFleetHub = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotfleethub#AWSIoTFleetHub"
      service.name = "AWSIoTFleetHub"
      service.version = "2020-11-03"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTFleetHub", "arnNamespace" => "iotfleethub", "cloudFormationName" => "IoTFleetHub", "cloudTrailEventSource" => "iotfleethub.amazonaws.com", "endpointPrefix" => "api.fleethub.iot"}, "aws.auth#sigv4" => {"name" => "iotfleethub"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS IoT Fleet Hub"}
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}", "code" => 204}}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#ListApplications"
        operation.name = "ListApplications"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalFailureException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/applications/{applicationId}", "code" => 202}}
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
