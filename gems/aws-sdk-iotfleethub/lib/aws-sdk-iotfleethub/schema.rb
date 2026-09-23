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

    ApplicationState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ApplicationState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ApplicationState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    ApplicationState.add_member(:create_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_FAILED", traits: {"smithy.api#enumValue" => "CREATE_FAILED"}))
    ApplicationState.add_member(:delete_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_FAILED", traits: {"smithy.api#enumValue" => "DELETE_FAILED"}))
    ApplicationSummaries.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummary, name: "member"))
    ApplicationSummary.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "applicationName", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "applicationDescription"))
    ApplicationSummary.add_member(:application_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "applicationUrl", traits: {"smithy.api#required" => {}}))
    ApplicationSummary.add_member(:application_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "applicationCreationDate", traits: {"smithy.api#default" => 0}))
    ApplicationSummary.add_member(:application_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "applicationLastUpdateDate", traits: {"smithy.api#default" => 0}))
    ApplicationSummary.add_member(:application_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "applicationState"))
    ApplicationSummary.type = Types::ApplicationSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConflictException.type = Types::ConflictException
    CreateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "applicationName", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "applicationDescription"))
    CreateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CreateApplicationRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    CreateApplicationResponse.type = Types::CreateApplicationResponse
    DeleteApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientToken", traits: {"smithy.api#httpQuery" => "clientToken", "smithy.api#idempotencyToken" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResponse.type = Types::DeleteApplicationResponse
    DescribeApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeApplicationRequest.type = Types::DescribeApplicationRequest
    DescribeApplicationResponse.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "applicationArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "applicationName", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "applicationDescription"))
    DescribeApplicationResponse.add_member(:application_url, ::Smithy::Schema::Shapes::MemberShape.new(target: Url, name: "applicationUrl", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_state, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationState, name: "applicationState", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "applicationCreationDate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:application_last_update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "applicationLastUpdateDate", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "roleArn", traits: {"smithy.api#required" => {}}))
    DescribeApplicationResponse.add_member(:sso_client_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SsoClientId, name: "ssoClientId"))
    DescribeApplicationResponse.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    DescribeApplicationResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    DescribeApplicationResponse.type = Types::DescribeApplicationResponse
    InternalFailureException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalFailureException.type = Types::InternalFailureException
    InvalidRequestException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidRequestException.type = Types::InvalidRequestException
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListApplicationsRequest.type = Types::ListApplicationsRequest
    ListApplicationsResponse.add_member(:application_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSummaries, name: "applicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationsResponse.type = Types::ListApplicationsResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagMap.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    TagMap.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceArn, name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateApplicationRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "applicationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:application_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "applicationName"))
    UpdateApplicationRequest.add_member(:application_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "applicationDescription"))
    UpdateApplicationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientRequestToken, name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
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
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << LimitExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/applications", "code" => 201}}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/applications/{applicationId}", "code" => 204}}
      end)
      service.add_operation(:describe_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#DescribeApplication"
        operation.name = "DescribeApplication"
        operation.input = DescribeApplicationRequest
        operation.output = DescribeApplicationResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications/{applicationId}", "code" => 200}}
      end)
      service.add_operation(:list_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#ListApplications"
        operation.name = "ListApplications"
        operation.input = ListApplicationsRequest
        operation.output = ListApplicationsResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/applications", "code" => 200}}
        operation[:paginator] = Paginators::ListApplications.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotfleethub#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResponse
        operation.errors << ConflictException
        operation.errors << InternalFailureException
        operation.errors << InvalidRequestException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
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
