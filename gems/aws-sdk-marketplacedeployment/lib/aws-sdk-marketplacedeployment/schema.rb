# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceDeployment
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Catalog = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#Catalog", name: "Catalog", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z_-]+$"})
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 32, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9/_+=.:@-]+$"})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DeploymentParameterInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#DeploymentParameterInput", name: "DeploymentParameterInput")
    DeploymentParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#DeploymentParameterName", name: "DeploymentParameterName", traits: {"smithy.api#length" => {"min" => 1, "max" => 400}, "smithy.api#pattern" => "^[a-zA-Z0-9/_+=.@-]+$"})
    DeploymentParameterResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#DeploymentParameterResourceIdentifier", name: "DeploymentParameterResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^dp-[a-zA-Z0-9]+$"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    PutDeploymentParameterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#PutDeploymentParameterRequest", name: "PutDeploymentParameterRequest")
    PutDeploymentParameterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#PutDeploymentParameterResponse", name: "PutDeploymentParameterResponse")
    ResourceArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#ResourceArn", name: "ResourceArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^[a-zA-Z0-9:*/-]+$"})
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[A-Za-z0-9_/-]+$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    SecretString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#SecretString", name: "SecretString", traits: {"smithy.api#length" => {"min" => 1, "max" => 15000}, "smithy.api#sensitive" => {}})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.marketplacedeployment#StringList", name: "StringList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9/_+=.:@-]+$"})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.marketplacedeployment#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^[a-zA-Z0-9/_+=.:@-]+$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacedeployment#Tags", name: "Tags")
    TagsMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.marketplacedeployment#TagsMap", name: "TagsMap", traits: {"smithy.api#length" => {"max" => 50}})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {"throttling" => true}})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.marketplacedeployment#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "resourceId", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DeploymentParameterInput.add_member(:name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentParameterName, location_name: "name", traits: {"smithy.api#required" => {}}))
    DeploymentParameterInput.add_member(:secret_string, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SecretString, location_name: "secretString", traits: {"smithy.api#required" => {}}))
    DeploymentParameterInput.type = Types::DeploymentParameterInput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    PutDeploymentParameterRequest.add_member(:catalog, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Catalog, location_name: "catalog", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDeploymentParameterRequest.add_member(:product_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "productId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PutDeploymentParameterRequest.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId", traits: {"smithy.api#required" => {}}))
    PutDeploymentParameterRequest.add_member(:deployment_parameter, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentParameterInput, location_name: "deploymentParameter", traits: {"smithy.api#required" => {}}))
    PutDeploymentParameterRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    PutDeploymentParameterRequest.add_member(:expiration_date, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Timestamp, location_name: "expirationDate", traits: {"smithy.api#timestampFormat" => "date-time"}))
    PutDeploymentParameterRequest.add_member(:client_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: "clientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    PutDeploymentParameterRequest.type = Types::PutDeploymentParameterRequest
    PutDeploymentParameterResponse.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceArn, location_name: "resourceArn", traits: {"smithy.api#required" => {}}))
    PutDeploymentParameterResponse.add_member(:agreement_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: "agreementId", traits: {"smithy.api#required" => {}}))
    PutDeploymentParameterResponse.add_member(:deployment_parameter_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeploymentParameterResourceIdentifier, location_name: "deploymentParameterId", traits: {"smithy.api#required" => {}}))
    PutDeploymentParameterResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagsMap, location_name: "tags"))
    PutDeploymentParameterResponse.type = Types::PutDeploymentParameterResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    StringList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: "tags"))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    Tags.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String)
    TagsMap.key = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagsMap.value = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "resourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: "tagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:field_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::String, location_name: "fieldName", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AWSMPDeploymentParametersService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.marketplacedeployment#AWSMPDeploymentParametersService"
      service.name = "AWSMPDeploymentParametersService"
      service.version = "2023-01-25"
      service.traits = {"aws.api#service" => {"sdkId" => "Marketplace Deployment", "arnNamespace" => "aws-marketplace", "endpointPrefix" => "deployment-marketplace"}, "aws.auth#sigv4" => {"name" => "aws-marketplace"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "AWS Marketplace Deployment Service"}
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacedeployment#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to list all tags on a DeploymentParameter resource", "smithy.api#http" => {"method" => "GET", "uri" => "/tags/{resourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:put_deployment_parameter, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacedeployment#PutDeploymentParameter"
        operation.name = "PutDeploymentParameter"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeploymentParameterRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: PutDeploymentParameterResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/catalogs/{catalog}/products/{productId}/deployment-parameters", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacedeployment#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to add or overwrite one or more tags for the specified DeploymentParameter resource", "smithy.api#http" => {"method" => "POST", "uri" => "/tags/{resourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.marketplacedeployment#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"aws.iam#actionPermissionDescription" => "Grants permission to disassociate one or more tags from the specified DeploymentParameter resource", "smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{resourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
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
