# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTFleetHub
  # @api private
  module ClientApi

    include Seahorse::Model

    ApplicationState = Shapes::StringShape.new(name: 'ApplicationState')
    ApplicationSummaries = Shapes::ListShape.new(name: 'ApplicationSummaries')
    ApplicationSummary = Shapes::StructureShape.new(name: 'ApplicationSummary')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ClientRequestToken = Shapes::StringShape.new(name: 'ClientRequestToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CreateApplicationRequest = Shapes::StructureShape.new(name: 'CreateApplicationRequest')
    CreateApplicationResponse = Shapes::StructureShape.new(name: 'CreateApplicationResponse')
    DeleteApplicationRequest = Shapes::StructureShape.new(name: 'DeleteApplicationRequest')
    DeleteApplicationResponse = Shapes::StructureShape.new(name: 'DeleteApplicationResponse')
    DescribeApplicationRequest = Shapes::StructureShape.new(name: 'DescribeApplicationRequest')
    DescribeApplicationResponse = Shapes::StructureShape.new(name: 'DescribeApplicationResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Id = Shapes::StringShape.new(name: 'Id')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListApplicationsRequest = Shapes::StructureShape.new(name: 'ListApplicationsRequest')
    ListApplicationsResponse = Shapes::StructureShape.new(name: 'ListApplicationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SsoClientId = Shapes::StringShape.new(name: 'SsoClientId')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::IntegerShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateApplicationRequest = Shapes::StructureShape.new(name: 'UpdateApplicationRequest')
    UpdateApplicationResponse = Shapes::StructureShape.new(name: 'UpdateApplicationResponse')
    Url = Shapes::StringShape.new(name: 'Url')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')

    ApplicationSummaries.member = Shapes::ShapeRef.new(shape: ApplicationSummary)

    ApplicationSummary.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "applicationId"))
    ApplicationSummary.add_member(:application_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "applicationName"))
    ApplicationSummary.add_member(:application_description, Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    ApplicationSummary.add_member(:application_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "applicationUrl"))
    ApplicationSummary.add_member(:application_creation_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationCreationDate"))
    ApplicationSummary.add_member(:application_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, location_name: "applicationLastUpdateDate"))
    ApplicationSummary.add_member(:application_state, Shapes::ShapeRef.new(shape: ApplicationState, location_name: "applicationState"))
    ApplicationSummary.struct_class = Types::ApplicationSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    CreateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "applicationName"))
    CreateApplicationRequest.add_member(:application_description, Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    CreateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    CreateApplicationRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    CreateApplicationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateApplicationRequest.struct_class = Types::CreateApplicationRequest

    CreateApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "applicationId"))
    CreateApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "applicationArn"))
    CreateApplicationResponse.struct_class = Types::CreateApplicationResponse

    DeleteApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "applicationId"))
    DeleteApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location: "querystring", location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    DeleteApplicationRequest.struct_class = Types::DeleteApplicationRequest

    DeleteApplicationResponse.struct_class = Types::DeleteApplicationResponse

    DescribeApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "applicationId"))
    DescribeApplicationRequest.struct_class = Types::DescribeApplicationRequest

    DescribeApplicationResponse.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location_name: "applicationId"))
    DescribeApplicationResponse.add_member(:application_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "applicationArn"))
    DescribeApplicationResponse.add_member(:application_name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "applicationName"))
    DescribeApplicationResponse.add_member(:application_description, Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    DescribeApplicationResponse.add_member(:application_url, Shapes::ShapeRef.new(shape: Url, required: true, location_name: "applicationUrl"))
    DescribeApplicationResponse.add_member(:application_state, Shapes::ShapeRef.new(shape: ApplicationState, required: true, location_name: "applicationState"))
    DescribeApplicationResponse.add_member(:application_creation_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "applicationCreationDate"))
    DescribeApplicationResponse.add_member(:application_last_update_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "applicationLastUpdateDate"))
    DescribeApplicationResponse.add_member(:role_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "roleArn"))
    DescribeApplicationResponse.add_member(:sso_client_id, Shapes::ShapeRef.new(shape: SsoClientId, location_name: "ssoClientId"))
    DescribeApplicationResponse.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    DescribeApplicationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    DescribeApplicationResponse.struct_class = Types::DescribeApplicationResponse

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListApplicationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListApplicationsRequest.struct_class = Types::ListApplicationsRequest

    ListApplicationsResponse.add_member(:application_summaries, Shapes::ShapeRef.new(shape: ApplicationSummaries, location_name: "applicationSummaries"))
    ListApplicationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationsResponse.struct_class = Types::ListApplicationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateApplicationRequest.add_member(:application_id, Shapes::ShapeRef.new(shape: Id, required: true, location: "uri", location_name: "applicationId"))
    UpdateApplicationRequest.add_member(:application_name, Shapes::ShapeRef.new(shape: Name, location_name: "applicationName"))
    UpdateApplicationRequest.add_member(:application_description, Shapes::ShapeRef.new(shape: Description, location_name: "applicationDescription"))
    UpdateApplicationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientRequestToken, location_name: "clientToken", metadata: {"idempotencyToken"=>true}))
    UpdateApplicationRequest.struct_class = Types::UpdateApplicationRequest

    UpdateApplicationResponse.struct_class = Types::UpdateApplicationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-11-03"

      api.metadata = {
        "apiVersion" => "2020-11-03",
        "endpointPrefix" => "api.fleethub.iot",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS IoT Fleet Hub",
        "serviceId" => "IoTFleetHub",
        "signatureVersion" => "v4",
        "signingName" => "iotfleethub",
        "uid" => "iotfleethub-2020-11-03",
      }

      api.add_operation(:create_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateApplication"
        o.http_method = "POST"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteApplication"
        o.http_method = "DELETE"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:describe_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeApplication"
        o.http_method = "GET"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:list_applications, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplications"
        o.http_method = "GET"
        o.http_request_uri = "/applications"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_application, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplication"
        o.http_method = "PATCH"
        o.http_request_uri = "/applications/{applicationId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)
    end

  end
end
