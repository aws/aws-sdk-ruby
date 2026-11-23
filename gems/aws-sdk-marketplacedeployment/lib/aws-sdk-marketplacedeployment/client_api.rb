# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MarketplaceDeployment
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ClientToken = Shapes::StringShape.new(name: 'ClientToken')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DataAsAServiceConfigurationDetail = Shapes::StructureShape.new(name: 'DataAsAServiceConfigurationDetail')
    DeliveryOptionType = Shapes::StringShape.new(name: 'DeliveryOptionType')
    DeploymentConfigurationDetail = Shapes::UnionShape.new(name: 'DeploymentConfigurationDetail')
    DeploymentConfigurationFulfillmentUrl = Shapes::StringShape.new(name: 'DeploymentConfigurationFulfillmentUrl')
    DeploymentConfigurationJobErrorCode = Shapes::StringShape.new(name: 'DeploymentConfigurationJobErrorCode')
    DeploymentConfigurationJobId = Shapes::StringShape.new(name: 'DeploymentConfigurationJobId')
    DeploymentConfigurationJobStatus = Shapes::StringShape.new(name: 'DeploymentConfigurationJobStatus')
    DeploymentConfigurationJobSummaries = Shapes::ListShape.new(name: 'DeploymentConfigurationJobSummaries')
    DeploymentConfigurationJobSummary = Shapes::StructureShape.new(name: 'DeploymentConfigurationJobSummary')
    DeploymentConfigurationMaxResults = Shapes::IntegerShape.new(name: 'DeploymentConfigurationMaxResults')
    DeploymentConfigurationNextToken = Shapes::StringShape.new(name: 'DeploymentConfigurationNextToken')
    DeploymentParameterInput = Shapes::StructureShape.new(name: 'DeploymentParameterInput')
    DeploymentParameterName = Shapes::StringShape.new(name: 'DeploymentParameterName')
    DeploymentParameterResourceIdentifier = Shapes::StringShape.new(name: 'DeploymentParameterResourceIdentifier')
    GetDeploymentConfigurationJobRequest = Shapes::StructureShape.new(name: 'GetDeploymentConfigurationJobRequest')
    GetDeploymentConfigurationJobResponse = Shapes::StructureShape.new(name: 'GetDeploymentConfigurationJobResponse')
    GetDeploymentConfigurationRequest = Shapes::StructureShape.new(name: 'GetDeploymentConfigurationRequest')
    GetDeploymentConfigurationResponse = Shapes::StructureShape.new(name: 'GetDeploymentConfigurationResponse')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListDeploymentConfigurationJobsRequest = Shapes::StructureShape.new(name: 'ListDeploymentConfigurationJobsRequest')
    ListDeploymentConfigurationJobsResponse = Shapes::StructureShape.new(name: 'ListDeploymentConfigurationJobsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    PutDeploymentParameterRequest = Shapes::StructureShape.new(name: 'PutDeploymentParameterRequest')
    PutDeploymentParameterResponse = Shapes::StructureShape.new(name: 'PutDeploymentParameterResponse')
    ResourceArn = Shapes::StringShape.new(name: 'ResourceArn')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    SecretString = Shapes::StringShape.new(name: 'SecretString')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    StartDeploymentConfigurationJobRequest = Shapes::StructureShape.new(name: 'StartDeploymentConfigurationJobRequest')
    StartDeploymentConfigurationJobResponse = Shapes::StructureShape.new(name: 'StartDeploymentConfigurationJobResponse')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    SyntheticTimestamp_date_time = Shapes::TimestampShape.new(name: 'SyntheticTimestamp_date_time', timestampFormat: "iso8601")
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Tags = Shapes::MapShape.new(name: 'Tags')
    TagsMap = Shapes::MapShape.new(name: 'TagsMap')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "resourceId"))
    ConflictException.struct_class = Types::ConflictException

    DataAsAServiceConfigurationDetail.add_member(:fulfillment_url, Shapes::ShapeRef.new(shape: DeploymentConfigurationFulfillmentUrl, required: true, location_name: "fulfillmentUrl"))
    DataAsAServiceConfigurationDetail.struct_class = Types::DataAsAServiceConfigurationDetail

    DeploymentConfigurationDetail.add_member(:data_as_a_service, Shapes::ShapeRef.new(shape: DataAsAServiceConfigurationDetail, location_name: "dataAsAService"))
    DeploymentConfigurationDetail.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DeploymentConfigurationDetail.add_member_subclass(:data_as_a_service, Types::DeploymentConfigurationDetail::DataAsAService)
    DeploymentConfigurationDetail.add_member_subclass(:unknown, Types::DeploymentConfigurationDetail::Unknown)
    DeploymentConfigurationDetail.struct_class = Types::DeploymentConfigurationDetail

    DeploymentConfigurationJobSummaries.member = Shapes::ShapeRef.new(shape: DeploymentConfigurationJobSummary)

    DeploymentConfigurationJobSummary.add_member(:job_id, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobId, required: true, location_name: "jobId"))
    DeploymentConfigurationJobSummary.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobStatus, required: true, location_name: "status"))
    DeploymentConfigurationJobSummary.add_member(:configuration, Shapes::ShapeRef.new(shape: DeploymentConfigurationDetail, required: true, location_name: "configuration"))
    DeploymentConfigurationJobSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    DeploymentConfigurationJobSummary.struct_class = Types::DeploymentConfigurationJobSummary

    DeploymentParameterInput.add_member(:name, Shapes::ShapeRef.new(shape: DeploymentParameterName, required: true, location_name: "name"))
    DeploymentParameterInput.add_member(:secret_string, Shapes::ShapeRef.new(shape: SecretString, required: true, location_name: "secretString"))
    DeploymentParameterInput.struct_class = Types::DeploymentParameterInput

    GetDeploymentConfigurationJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "uri", location_name: "catalog"))
    GetDeploymentConfigurationJobRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "productId"))
    GetDeploymentConfigurationJobRequest.add_member(:delivery_option_type, Shapes::ShapeRef.new(shape: DeliveryOptionType, required: true, location: "uri", location_name: "deliveryOptionType"))
    GetDeploymentConfigurationJobRequest.add_member(:job_id, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobId, required: true, location: "uri", location_name: "jobId"))
    GetDeploymentConfigurationJobRequest.struct_class = Types::GetDeploymentConfigurationJobRequest

    GetDeploymentConfigurationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobId, required: true, location_name: "jobId"))
    GetDeploymentConfigurationJobResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DeploymentConfigurationDetail, required: true, location_name: "configuration"))
    GetDeploymentConfigurationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobStatus, required: true, location_name: "status"))
    GetDeploymentConfigurationJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    GetDeploymentConfigurationJobResponse.add_member(:configuration_arn, Shapes::ShapeRef.new(shape: ResourceArn, location_name: "configurationArn"))
    GetDeploymentConfigurationJobResponse.add_member(:ended_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "endedAt"))
    GetDeploymentConfigurationJobResponse.add_member(:error_code, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobErrorCode, location_name: "errorCode"))
    GetDeploymentConfigurationJobResponse.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    GetDeploymentConfigurationJobResponse.struct_class = Types::GetDeploymentConfigurationJobResponse

    GetDeploymentConfigurationRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "uri", location_name: "catalog"))
    GetDeploymentConfigurationRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "productId"))
    GetDeploymentConfigurationRequest.add_member(:delivery_option_type, Shapes::ShapeRef.new(shape: DeliveryOptionType, required: true, location: "uri", location_name: "deliveryOptionType"))
    GetDeploymentConfigurationRequest.struct_class = Types::GetDeploymentConfigurationRequest

    GetDeploymentConfigurationResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DeploymentConfigurationDetail, required: true, location_name: "configuration"))
    GetDeploymentConfigurationResponse.struct_class = Types::GetDeploymentConfigurationResponse

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListDeploymentConfigurationJobsRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "uri", location_name: "catalog"))
    ListDeploymentConfigurationJobsRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "productId"))
    ListDeploymentConfigurationJobsRequest.add_member(:delivery_option_type, Shapes::ShapeRef.new(shape: DeliveryOptionType, required: true, location: "uri", location_name: "deliveryOptionType"))
    ListDeploymentConfigurationJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: DeploymentConfigurationMaxResults, location: "querystring", location_name: "maxResults"))
    ListDeploymentConfigurationJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: DeploymentConfigurationNextToken, location: "querystring", location_name: "nextToken"))
    ListDeploymentConfigurationJobsRequest.struct_class = Types::ListDeploymentConfigurationJobsRequest

    ListDeploymentConfigurationJobsResponse.add_member(:jobs, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobSummaries, required: true, location_name: "jobs"))
    ListDeploymentConfigurationJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: DeploymentConfigurationNextToken, location_name: "nextToken"))
    ListDeploymentConfigurationJobsResponse.struct_class = Types::ListDeploymentConfigurationJobsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    PutDeploymentParameterRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "uri", location_name: "catalog"))
    PutDeploymentParameterRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "productId"))
    PutDeploymentParameterRequest.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    PutDeploymentParameterRequest.add_member(:deployment_parameter, Shapes::ShapeRef.new(shape: DeploymentParameterInput, required: true, location_name: "deploymentParameter"))
    PutDeploymentParameterRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    PutDeploymentParameterRequest.add_member(:expiration_date, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, location_name: "expirationDate"))
    PutDeploymentParameterRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    PutDeploymentParameterRequest.struct_class = Types::PutDeploymentParameterRequest

    PutDeploymentParameterResponse.add_member(:resource_arn, Shapes::ShapeRef.new(shape: ResourceArn, required: true, location_name: "resourceArn"))
    PutDeploymentParameterResponse.add_member(:agreement_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "agreementId"))
    PutDeploymentParameterResponse.add_member(:deployment_parameter_id, Shapes::ShapeRef.new(shape: DeploymentParameterResourceIdentifier, required: true, location_name: "deploymentParameterId"))
    PutDeploymentParameterResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    PutDeploymentParameterResponse.struct_class = Types::PutDeploymentParameterResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartDeploymentConfigurationJobRequest.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location: "uri", location_name: "catalog"))
    StartDeploymentConfigurationJobRequest.add_member(:product_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "productId"))
    StartDeploymentConfigurationJobRequest.add_member(:delivery_option_type, Shapes::ShapeRef.new(shape: DeliveryOptionType, required: true, location: "uri", location_name: "deliveryOptionType"))
    StartDeploymentConfigurationJobRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: DeploymentConfigurationDetail, required: true, location_name: "configuration"))
    StartDeploymentConfigurationJobRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    StartDeploymentConfigurationJobRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", metadata: {"idempotencyToken" => true}))
    StartDeploymentConfigurationJobRequest.struct_class = Types::StartDeploymentConfigurationJobRequest

    StartDeploymentConfigurationJobResponse.add_member(:job_id, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobId, required: true, location_name: "jobId"))
    StartDeploymentConfigurationJobResponse.add_member(:configuration, Shapes::ShapeRef.new(shape: DeploymentConfigurationDetail, required: true, location_name: "configuration"))
    StartDeploymentConfigurationJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: DeploymentConfigurationJobStatus, required: true, location_name: "status"))
    StartDeploymentConfigurationJobResponse.add_member(:created_at, Shapes::ShapeRef.new(shape: SyntheticTimestamp_date_time, required: true, location_name: "createdAt"))
    StartDeploymentConfigurationJobResponse.struct_class = Types::StartDeploymentConfigurationJobResponse

    StringList.member = Shapes::ShapeRef.new(shape: String)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    Tags.key = Shapes::ShapeRef.new(shape: String)
    Tags.value = Shapes::ShapeRef.new(shape: String)

    TagsMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = Shapes::ShapeRef.new(shape: TagValue)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: StringList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:field_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "fieldName"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-01-25"

      api.metadata = {
        "apiVersion" => "2023-01-25",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "deployment-marketplace",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "AWS Marketplace Deployment Service",
        "serviceId" => "Marketplace Deployment",
        "signatureVersion" => "v4",
        "signingName" => "aws-marketplace",
        "uid" => "marketplace-deployment-2023-01-25",
      }

      api.add_operation(:get_deployment_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentConfiguration"
        o.http_method = "GET"
        o.http_request_uri = "/catalogs/{catalog}/products/{productId}/delivery-options/{deliveryOptionType}/deployment-configuration"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentConfigurationResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_deployment_configuration_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDeploymentConfigurationJob"
        o.http_method = "GET"
        o.http_request_uri = "/catalogs/{catalog}/products/{productId}/delivery-options/{deliveryOptionType}/deployment-configuration/jobs/{jobId}"
        o.input = Shapes::ShapeRef.new(shape: GetDeploymentConfigurationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDeploymentConfigurationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_deployment_configuration_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDeploymentConfigurationJobs"
        o.http_method = "GET"
        o.http_request_uri = "/catalogs/{catalog}/products/{productId}/delivery-options/{deliveryOptionType}/deployment-configuration/jobs"
        o.input = Shapes::ShapeRef.new(shape: ListDeploymentConfigurationJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDeploymentConfigurationJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
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
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:put_deployment_parameter, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDeploymentParameter"
        o.http_method = "POST"
        o.http_request_uri = "/catalogs/{catalog}/products/{productId}/deployment-parameters"
        o.input = Shapes::ShapeRef.new(shape: PutDeploymentParameterRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDeploymentParameterResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_deployment_configuration_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartDeploymentConfigurationJob"
        o.http_method = "POST"
        o.http_request_uri = "/catalogs/{catalog}/products/{productId}/delivery-options/{deliveryOptionType}/deployment-configuration/jobs"
        o.input = Shapes::ShapeRef.new(shape: StartDeploymentConfigurationJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartDeploymentConfigurationJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
