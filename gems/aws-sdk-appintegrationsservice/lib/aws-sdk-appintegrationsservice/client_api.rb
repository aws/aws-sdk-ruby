# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppIntegrationsService
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ClientAssociationMetadata = Shapes::MapShape.new(name: 'ClientAssociationMetadata')
    ClientId = Shapes::StringShape.new(name: 'ClientId')
    CreateEventIntegrationRequest = Shapes::StructureShape.new(name: 'CreateEventIntegrationRequest')
    CreateEventIntegrationResponse = Shapes::StructureShape.new(name: 'CreateEventIntegrationResponse')
    DeleteEventIntegrationRequest = Shapes::StructureShape.new(name: 'DeleteEventIntegrationRequest')
    DeleteEventIntegrationResponse = Shapes::StructureShape.new(name: 'DeleteEventIntegrationResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DuplicateResourceException = Shapes::StructureShape.new(name: 'DuplicateResourceException')
    EventBridgeBus = Shapes::StringShape.new(name: 'EventBridgeBus')
    EventBridgeRuleName = Shapes::StringShape.new(name: 'EventBridgeRuleName')
    EventFilter = Shapes::StructureShape.new(name: 'EventFilter')
    EventIntegration = Shapes::StructureShape.new(name: 'EventIntegration')
    EventIntegrationAssociation = Shapes::StructureShape.new(name: 'EventIntegrationAssociation')
    EventIntegrationAssociationsList = Shapes::ListShape.new(name: 'EventIntegrationAssociationsList')
    EventIntegrationsList = Shapes::ListShape.new(name: 'EventIntegrationsList')
    GetEventIntegrationRequest = Shapes::StructureShape.new(name: 'GetEventIntegrationRequest')
    GetEventIntegrationResponse = Shapes::StructureShape.new(name: 'GetEventIntegrationResponse')
    IdempotencyToken = Shapes::StringShape.new(name: 'IdempotencyToken')
    InternalServiceError = Shapes::StructureShape.new(name: 'InternalServiceError')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    ListEventIntegrationAssociationsRequest = Shapes::StructureShape.new(name: 'ListEventIntegrationAssociationsRequest')
    ListEventIntegrationAssociationsResponse = Shapes::StructureShape.new(name: 'ListEventIntegrationAssociationsResponse')
    ListEventIntegrationsRequest = Shapes::StructureShape.new(name: 'ListEventIntegrationsRequest')
    ListEventIntegrationsResponse = Shapes::StructureShape.new(name: 'ListEventIntegrationsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Message = Shapes::StringShape.new(name: 'Message')
    Name = Shapes::StringShape.new(name: 'Name')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NonBlankString = Shapes::StringShape.new(name: 'NonBlankString')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceQuotaExceededException = Shapes::StructureShape.new(name: 'ResourceQuotaExceededException')
    Source = Shapes::StringShape.new(name: 'Source')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagMap = Shapes::MapShape.new(name: 'TagMap')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    UUID = Shapes::StringShape.new(name: 'UUID')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateEventIntegrationRequest = Shapes::StructureShape.new(name: 'UpdateEventIntegrationRequest')
    UpdateEventIntegrationResponse = Shapes::StructureShape.new(name: 'UpdateEventIntegrationResponse')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    ClientAssociationMetadata.key = Shapes::ShapeRef.new(shape: NonBlankString)
    ClientAssociationMetadata.value = Shapes::ShapeRef.new(shape: NonBlankString)

    CreateEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location_name: "Name"))
    CreateEventIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    CreateEventIntegrationRequest.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, required: true, location_name: "EventFilter"))
    CreateEventIntegrationRequest.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, required: true, location_name: "EventBridgeBus"))
    CreateEventIntegrationRequest.add_member(:client_token, Shapes::ShapeRef.new(shape: IdempotencyToken, location_name: "ClientToken", metadata: {"idempotencyToken"=>true}))
    CreateEventIntegrationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    CreateEventIntegrationRequest.struct_class = Types::CreateEventIntegrationRequest

    CreateEventIntegrationResponse.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    CreateEventIntegrationResponse.struct_class = Types::CreateEventIntegrationResponse

    DeleteEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    DeleteEventIntegrationRequest.struct_class = Types::DeleteEventIntegrationRequest

    DeleteEventIntegrationResponse.struct_class = Types::DeleteEventIntegrationResponse

    DuplicateResourceException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    DuplicateResourceException.struct_class = Types::DuplicateResourceException

    EventFilter.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "Source"))
    EventFilter.struct_class = Types::EventFilter

    EventIntegration.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    EventIntegration.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    EventIntegration.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    EventIntegration.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "EventFilter"))
    EventIntegration.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: "EventBridgeBus"))
    EventIntegration.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    EventIntegration.struct_class = Types::EventIntegration

    EventIntegrationAssociation.add_member(:event_integration_association_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationAssociationArn"))
    EventIntegrationAssociation.add_member(:event_integration_association_id, Shapes::ShapeRef.new(shape: UUID, location_name: "EventIntegrationAssociationId"))
    EventIntegrationAssociation.add_member(:event_integration_name, Shapes::ShapeRef.new(shape: Name, location_name: "EventIntegrationName"))
    EventIntegrationAssociation.add_member(:client_id, Shapes::ShapeRef.new(shape: ClientId, location_name: "ClientId"))
    EventIntegrationAssociation.add_member(:event_bridge_rule_name, Shapes::ShapeRef.new(shape: EventBridgeRuleName, location_name: "EventBridgeRuleName"))
    EventIntegrationAssociation.add_member(:client_association_metadata, Shapes::ShapeRef.new(shape: ClientAssociationMetadata, location_name: "ClientAssociationMetadata"))
    EventIntegrationAssociation.struct_class = Types::EventIntegrationAssociation

    EventIntegrationAssociationsList.member = Shapes::ShapeRef.new(shape: EventIntegrationAssociation)

    EventIntegrationsList.member = Shapes::ShapeRef.new(shape: EventIntegration)

    GetEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    GetEventIntegrationRequest.struct_class = Types::GetEventIntegrationRequest

    GetEventIntegrationResponse.add_member(:name, Shapes::ShapeRef.new(shape: Name, location_name: "Name"))
    GetEventIntegrationResponse.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    GetEventIntegrationResponse.add_member(:event_integration_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "EventIntegrationArn"))
    GetEventIntegrationResponse.add_member(:event_bridge_bus, Shapes::ShapeRef.new(shape: EventBridgeBus, location_name: "EventBridgeBus"))
    GetEventIntegrationResponse.add_member(:event_filter, Shapes::ShapeRef.new(shape: EventFilter, location_name: "EventFilter"))
    GetEventIntegrationResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "Tags"))
    GetEventIntegrationResponse.struct_class = Types::GetEventIntegrationResponse

    InternalServiceError.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InternalServiceError.struct_class = Types::InternalServiceError

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    ListEventIntegrationAssociationsRequest.add_member(:event_integration_name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    ListEventIntegrationAssociationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventIntegrationAssociationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventIntegrationAssociationsRequest.struct_class = Types::ListEventIntegrationAssociationsRequest

    ListEventIntegrationAssociationsResponse.add_member(:event_integration_associations, Shapes::ShapeRef.new(shape: EventIntegrationAssociationsList, location_name: "EventIntegrationAssociations"))
    ListEventIntegrationAssociationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventIntegrationAssociationsResponse.struct_class = Types::ListEventIntegrationAssociationsResponse

    ListEventIntegrationsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListEventIntegrationsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEventIntegrationsRequest.struct_class = Types::ListEventIntegrationsRequest

    ListEventIntegrationsResponse.add_member(:event_integrations, Shapes::ShapeRef.new(shape: EventIntegrationsList, location_name: "EventIntegrations"))
    ListEventIntegrationsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListEventIntegrationsResponse.struct_class = Types::ListEventIntegrationsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ResourceQuotaExceededException.struct_class = Types::ResourceQuotaExceededException

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagMap.key = Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Shapes::ShapeRef.new(shape: TagValue)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagMap, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: Message, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateEventIntegrationRequest.add_member(:name, Shapes::ShapeRef.new(shape: Name, required: true, location: "uri", location_name: "Name"))
    UpdateEventIntegrationRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "Description"))
    UpdateEventIntegrationRequest.struct_class = Types::UpdateEventIntegrationRequest

    UpdateEventIntegrationResponse.struct_class = Types::UpdateEventIntegrationResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-07-29"

      api.metadata = {
        "apiVersion" => "2020-07-29",
        "endpointPrefix" => "app-integrations",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon AppIntegrations Service",
        "serviceId" => "AppIntegrations",
        "signatureVersion" => "v4",
        "signingName" => "app-integrations",
        "uid" => "appintegrations-2020-07-29",
      }

      api.add_operation(:create_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateEventIntegration"
        o.http_method = "POST"
        o.http_request_uri = "/eventIntegrations"
        o.input = Shapes::ShapeRef.new(shape: CreateEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: DuplicateResourceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:delete_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteEventIntegration"
        o.http_method = "DELETE"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: DeleteEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:get_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetEventIntegration"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: GetEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: GetEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_event_integration_associations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventIntegrationAssociations"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations/{Name}/associations"
        o.input = Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventIntegrationAssociationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_event_integrations, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEventIntegrations"
        o.http_method = "GET"
        o.http_request_uri = "/eventIntegrations"
        o.input = Shapes::ShapeRef.new(shape: ListEventIntegrationsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEventIntegrationsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
      end)

      api.add_operation(:update_event_integration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateEventIntegration"
        o.http_method = "PATCH"
        o.http_request_uri = "/eventIntegrations/{Name}"
        o.input = Shapes::ShapeRef.new(shape: UpdateEventIntegrationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateEventIntegrationResponse)
        o.errors << Shapes::ShapeRef.new(shape: InternalServiceError)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
      end)
    end

  end
end
