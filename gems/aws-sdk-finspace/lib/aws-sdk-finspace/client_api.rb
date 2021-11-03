# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Finspace
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttributeMap = Shapes::MapShape.new(name: 'AttributeMap')
    CreateEnvironmentRequest = Shapes::StructureShape.new(name: 'CreateEnvironmentRequest')
    CreateEnvironmentResponse = Shapes::StructureShape.new(name: 'CreateEnvironmentResponse')
    DataBundleArn = Shapes::StringShape.new(name: 'DataBundleArn')
    DataBundleArns = Shapes::ListShape.new(name: 'DataBundleArns')
    DeleteEnvironmentRequest = Shapes::StructureShape.new(name: 'DeleteEnvironmentRequest')
    DeleteEnvironmentResponse = Shapes::StructureShape.new(name: 'DeleteEnvironmentResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    EmailId = Shapes::StringShape.new(name: 'EmailId')
    Environment = Shapes::StructureShape.new(name: 'Environment')
    EnvironmentArn = Shapes::StringShape.new(name: 'EnvironmentArn')
    EnvironmentList = Shapes::ListShape.new(name: 'EnvironmentList')
    EnvironmentName = Shapes::StringShape.new(name: 'EnvironmentName')
    EnvironmentStatus = Shapes::StringShape.new(name: 'EnvironmentStatus')
    FederationAttributeKey = Shapes::StringShape.new(name: 'FederationAttributeKey')
    FederationMode = Shapes::StringShape.new(name: 'FederationMode')
    FederationParameters = Shapes::StructureShape.new(name: 'FederationParameters')
    FederationProviderName = Shapes::StringShape.new(name: 'FederationProviderName')
    GetEnvironmentRequest = Shapes::StructureShape.new(name: 'GetEnvironmentRequest')
    GetEnvironmentResponse = Shapes::StructureShape.new(name: 'GetEnvironmentResponse')
    IdType = Shapes::StringShape.new(name: 'IdType')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    KmsKeyId = Shapes::StringShape.new(name: 'KmsKeyId')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListEnvironmentsRequest = Shapes::StructureShape.new(name: 'ListEnvironmentsRequest')
    ListEnvironmentsResponse = Shapes::StructureShape.new(name: 'ListEnvironmentsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    NameString = Shapes::StringShape.new(name: 'NameString')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResultLimit = Shapes::IntegerShape.new(name: 'ResultLimit')
    SamlMetadataDocument = Shapes::StringShape.new(name: 'SamlMetadataDocument')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SmsDomainUrl = Shapes::StringShape.new(name: 'SmsDomainUrl')
    SuperuserParameters = Shapes::StructureShape.new(name: 'SuperuserParameters')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEnvironmentRequest = Shapes::StructureShape.new(name: 'UpdateEnvironmentRequest')
    UpdateEnvironmentResponse = Shapes::StructureShape.new(name: 'UpdateEnvironmentResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    url = Shapes::StringShape.new(name: 'url')
    urn = Shapes::StringShape.new(name: 'urn')

    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttributeMap.key = Shapes::ShapeRef.new(shape: FederationAttributeKey)
    AttributeMap.value = Shapes::ShapeRef.new(shape: url)

    CreateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, required: true, location_name: "name"))
    CreateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateEnvironmentRequest.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    CreateEnvironmentRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    CreateEnvironmentRequest.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    CreateEnvironmentRequest.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    CreateEnvironmentRequest.add_member(:superuser_parameters, Shapes::ShapeRef.new(shape: SuperuserParameters, location_name: "superuserParameters"))
    CreateEnvironmentRequest.add_member(:data_bundles, Shapes::ShapeRef.new(shape: DataBundleArns, location_name: "dataBundles"))
    CreateEnvironmentRequest.struct_class = Types::CreateEnvironmentRequest

    CreateEnvironmentResponse.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    CreateEnvironmentResponse.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    CreateEnvironmentResponse.add_member(:environment_url, Shapes::ShapeRef.new(shape: url, location_name: "environmentUrl"))
    CreateEnvironmentResponse.struct_class = Types::CreateEnvironmentResponse

    DataBundleArns.member = Shapes::ShapeRef.new(shape: DataBundleArn)

    DeleteEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    DeleteEnvironmentRequest.struct_class = Types::DeleteEnvironmentRequest

    DeleteEnvironmentResponse.struct_class = Types::DeleteEnvironmentResponse

    Environment.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    Environment.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, location_name: "environmentId"))
    Environment.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "awsAccountId"))
    Environment.add_member(:status, Shapes::ShapeRef.new(shape: EnvironmentStatus, location_name: "status"))
    Environment.add_member(:environment_url, Shapes::ShapeRef.new(shape: url, location_name: "environmentUrl"))
    Environment.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Environment.add_member(:environment_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, location_name: "environmentArn"))
    Environment.add_member(:sage_maker_studio_domain_url, Shapes::ShapeRef.new(shape: SmsDomainUrl, location_name: "sageMakerStudioDomainUrl"))
    Environment.add_member(:kms_key_id, Shapes::ShapeRef.new(shape: KmsKeyId, location_name: "kmsKeyId"))
    Environment.add_member(:dedicated_service_account_id, Shapes::ShapeRef.new(shape: IdType, location_name: "dedicatedServiceAccountId"))
    Environment.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    Environment.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    Environment.struct_class = Types::Environment

    EnvironmentList.member = Shapes::ShapeRef.new(shape: Environment)

    FederationParameters.add_member(:saml_metadata_document, Shapes::ShapeRef.new(shape: SamlMetadataDocument, location_name: "samlMetadataDocument"))
    FederationParameters.add_member(:saml_metadata_url, Shapes::ShapeRef.new(shape: url, location_name: "samlMetadataURL"))
    FederationParameters.add_member(:application_call_back_url, Shapes::ShapeRef.new(shape: url, location_name: "applicationCallBackURL"))
    FederationParameters.add_member(:federation_urn, Shapes::ShapeRef.new(shape: urn, location_name: "federationURN"))
    FederationParameters.add_member(:federation_provider_name, Shapes::ShapeRef.new(shape: FederationProviderName, location_name: "federationProviderName"))
    FederationParameters.add_member(:attribute_map, Shapes::ShapeRef.new(shape: AttributeMap, location_name: "attributeMap"))
    FederationParameters.struct_class = Types::FederationParameters

    GetEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    GetEnvironmentRequest.struct_class = Types::GetEnvironmentRequest

    GetEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    GetEnvironmentResponse.struct_class = Types::GetEnvironmentResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListEnvironmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "nextToken"))
    ListEnvironmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ResultLimit, location: "querystring", location_name: "maxResults"))
    ListEnvironmentsRequest.struct_class = Types::ListEnvironmentsRequest

    ListEnvironmentsResponse.add_member(:environments, Shapes::ShapeRef.new(shape: EnvironmentList, location_name: "environments"))
    ListEnvironmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListEnvironmentsResponse.struct_class = Types::ListEnvironmentsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SuperuserParameters.add_member(:email_address, Shapes::ShapeRef.new(shape: EmailId, required: true, location_name: "emailAddress"))
    SuperuserParameters.add_member(:first_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "firstName"))
    SuperuserParameters.add_member(:last_name, Shapes::ShapeRef.new(shape: NameString, required: true, location_name: "lastName"))
    SuperuserParameters.struct_class = Types::SuperuserParameters

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: EnvironmentArn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEnvironmentRequest.add_member(:environment_id, Shapes::ShapeRef.new(shape: IdType, required: true, location: "uri", location_name: "environmentId"))
    UpdateEnvironmentRequest.add_member(:name, Shapes::ShapeRef.new(shape: EnvironmentName, location_name: "name"))
    UpdateEnvironmentRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateEnvironmentRequest.add_member(:federation_mode, Shapes::ShapeRef.new(shape: FederationMode, location_name: "federationMode"))
    UpdateEnvironmentRequest.add_member(:federation_parameters, Shapes::ShapeRef.new(shape: FederationParameters, location_name: "federationParameters"))
    UpdateEnvironmentRequest.struct_class = Types::UpdateEnvironmentRequest

    UpdateEnvironmentResponse.add_member(:environment, Shapes::ShapeRef.new(shape: Environment, location_name: "environment"))
    UpdateEnvironmentResponse.struct_class = Types::UpdateEnvironmentResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2021-03-12"

      api.metadata = {
        "apiVersion" => "2021-03-12",
        "endpointPrefix" => "finspace",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceAbbreviation" => "finspace",
        "serviceFullName" => "FinSpace User Environment Management service",
        "serviceId" => "finspace",
        "signatureVersion" => "v4",
        "signingName" => "finspace",
        "uid" => "finspace-2021-03-12",
      }

      api.add_operation(:create_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEnvironment"
        o.http_method = "POST"
        o.http_request_uri = "/environment"
        o.input = Shapes::ShapeRef.new(shape: CreateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:delete_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEnvironment"
        o.http_method = "DELETE"
        o.http_request_uri = "/environment/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEnvironment"
        o.http_method = "GET"
        o.http_request_uri = "/environment/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: GetEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_environments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEnvironments"
        o.http_method = "GET"
        o.http_request_uri = "/environment"
        o.input = Shapes::ShapeRef.new(shape: ListEnvironmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEnvironmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:update_environment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEnvironment"
        o.http_method = "PUT"
        o.http_request_uri = "/environment/{environmentId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEnvironmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEnvironmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
