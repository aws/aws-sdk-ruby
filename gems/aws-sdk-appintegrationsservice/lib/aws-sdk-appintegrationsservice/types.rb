# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppIntegrationsService
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The KMS key for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] source_uri
    #   The URI of the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule_config
    #   The name of the data and how often it should be pulled from the
    #   source.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] file_configuration
    #   The configuration for what files should be pulled from the source.
    #   @return [Types::FileConfiguration]
    #
    # @!attribute [rw] object_configuration
    #   The configuration for what data should be pulled from the source.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateDataIntegrationRequest AWS API Documentation
    #
    class CreateDataIntegrationRequest < Struct.new(
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_config,
      :tags,
      :client_token,
      :file_configuration,
      :object_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN)
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The KMS key for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] source_uri
    #   The URI of the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The name of the data and how often it should be pulled from the
    #   source.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] file_configuration
    #   The configuration for what files should be pulled from the source.
    #   @return [Types::FileConfiguration]
    #
    # @!attribute [rw] object_configuration
    #   The configuration for what data should be pulled from the source.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateDataIntegrationResponse AWS API Documentation
    #
    class CreateDataIntegrationResponse < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      :client_token,
      :file_configuration,
      :object_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] event_filter
    #   The event filter.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] event_bridge_bus
    #   The EventBridge bus.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request. If not provided, the Amazon Web Services
    #   SDK populates this field. For more information about idempotency,
    #   see [Making retries safe with idempotent APIs][1].
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #
    #
    #
    #   [1]: https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateEventIntegrationRequest AWS API Documentation
    #
    class CreateEventIntegrationRequest < Struct.new(
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_integration_arn
    #   The Amazon Resource Name (ARN) of the event integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/CreateEventIntegrationResponse AWS API Documentation
    #
    class CreateEventIntegrationResponse < Struct.new(
      :event_integration_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the DataIntegration association.
    #
    # @!attribute [rw] data_integration_association_arn
    #   The Amazon Resource Name (ARN) of the DataIntegration association.
    #   @return [String]
    #
    # @!attribute [rw] data_integration_arn
    #   The Amazon Resource Name (ARN) of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The identifier for the client that is associated with the
    #   DataIntegration association.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DataIntegrationAssociationSummary AWS API Documentation
    #
    class DataIntegrationAssociationSummary < Struct.new(
      :data_integration_association_arn,
      :data_integration_arn,
      :client_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the DataIntegration.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] source_uri
    #   The URI of the data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DataIntegrationSummary AWS API Documentation
    #
    class DataIntegrationSummary < Struct.new(
      :arn,
      :name,
      :source_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteDataIntegrationRequest AWS API Documentation
    #
    class DeleteDataIntegrationRequest < Struct.new(
      :data_integration_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteDataIntegrationResponse AWS API Documentation
    #
    class DeleteDataIntegrationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteEventIntegrationRequest AWS API Documentation
    #
    class DeleteEventIntegrationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DeleteEventIntegrationResponse AWS API Documentation
    #
    class DeleteEventIntegrationResponse < Aws::EmptyStructure; end

    # A resource with the specified name already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/DuplicateResourceException AWS API Documentation
    #
    class DuplicateResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event filter.
    #
    # @!attribute [rw] source
    #   The source of the events.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/EventFilter AWS API Documentation
    #
    class EventFilter < Struct.new(
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event integration.
    #
    # @!attribute [rw] event_integration_arn
    #   The Amazon Resource Name (ARN) of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The event integration description.
    #   @return [String]
    #
    # @!attribute [rw] event_filter
    #   The event integration filter.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] event_bridge_bus
    #   The Amazon EventBridge bus for the event integration.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/EventIntegration AWS API Documentation
    #
    class EventIntegration < Struct.new(
      :event_integration_arn,
      :name,
      :description,
      :event_filter,
      :event_bridge_bus,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event integration association.
    #
    # @!attribute [rw] event_integration_association_arn
    #   The Amazon Resource Name (ARN) for the event integration
    #   association.
    #   @return [String]
    #
    # @!attribute [rw] event_integration_association_id
    #   The identifier for the event integration association.
    #   @return [String]
    #
    # @!attribute [rw] event_integration_name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The identifier for the client that is associated with the event
    #   integration.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_rule_name
    #   The name of the EventBridge rule.
    #   @return [String]
    #
    # @!attribute [rw] client_association_metadata
    #   The metadata associated with the client.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/EventIntegrationAssociation AWS API Documentation
    #
    class EventIntegrationAssociation < Struct.new(
      :event_integration_association_arn,
      :event_integration_association_id,
      :event_integration_name,
      :client_id,
      :event_bridge_rule_name,
      :client_association_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for what files should be pulled from the source.
    #
    # @!attribute [rw] folders
    #   Identifiers for the source folders to pull all files from
    #   recursively.
    #   @return [Array<String>]
    #
    # @!attribute [rw] filters
    #   Restrictions for what files should be pulled from the source.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/FileConfiguration AWS API Documentation
    #
    class FileConfiguration < Struct.new(
      :folders,
      :filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   A unique identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetDataIntegrationRequest AWS API Documentation
    #
    class GetDataIntegrationRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   A unique identifier.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The KMS key for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] kms_key
    #   The KMS key for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] source_uri
    #   The URI of the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule_configuration
    #   The name of the data and how often it should be pulled from the
    #   source.
    #   @return [Types::ScheduleConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] file_configuration
    #   The configuration for what files should be pulled from the source.
    #   @return [Types::FileConfiguration]
    #
    # @!attribute [rw] object_configuration
    #   The configuration for what data should be pulled from the source.
    #   @return [Hash<String,Hash<String,Array<String>>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetDataIntegrationResponse AWS API Documentation
    #
    class GetDataIntegrationResponse < Struct.new(
      :arn,
      :id,
      :name,
      :description,
      :kms_key,
      :source_uri,
      :schedule_configuration,
      :tags,
      :file_configuration,
      :object_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetEventIntegrationRequest AWS API Documentation
    #
    class GetEventIntegrationRequest < Struct.new(
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] event_integration_arn
    #   The Amazon Resource Name (ARN) for the event integration.
    #   @return [String]
    #
    # @!attribute [rw] event_bridge_bus
    #   The EventBridge bus.
    #   @return [String]
    #
    # @!attribute [rw] event_filter
    #   The event filter.
    #   @return [Types::EventFilter]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/GetEventIntegrationResponse AWS API Documentation
    #
    class GetEventIntegrationResponse < Struct.new(
      :name,
      :description,
      :event_integration_arn,
      :event_bridge_bus,
      :event_filter,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request processing failed due to an error or failure with the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/InternalServiceError AWS API Documentation
    #
    class InternalServiceError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/InvalidRequestException AWS API Documentation
    #
    class InvalidRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_integration_identifier
    #   A unique identifier for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationAssociationsRequest AWS API Documentation
    #
    class ListDataIntegrationAssociationsRequest < Struct.new(
      :data_integration_identifier,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_integration_associations
    #   The Amazon Resource Name (ARN) and unique ID of the DataIntegration
    #   association.
    #   @return [Array<Types::DataIntegrationAssociationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationAssociationsResponse AWS API Documentation
    #
    class ListDataIntegrationAssociationsResponse < Struct.new(
      :data_integration_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationsRequest AWS API Documentation
    #
    class ListDataIntegrationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] data_integrations
    #   The DataIntegrations associated with this account.
    #   @return [Array<Types::DataIntegrationSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListDataIntegrationsResponse AWS API Documentation
    #
    class ListDataIntegrationsResponse < Struct.new(
      :data_integrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_integration_name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationAssociationsRequest AWS API Documentation
    #
    class ListEventIntegrationAssociationsRequest < Struct.new(
      :event_integration_name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_integration_associations
    #   The event integration associations.
    #   @return [Array<Types::EventIntegrationAssociation>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationAssociationsResponse AWS API Documentation
    #
    class ListEventIntegrationAssociationsResponse < Struct.new(
      :event_integration_associations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationsRequest AWS API Documentation
    #
    class ListEventIntegrationsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_integrations
    #   The event integrations.
    #   @return [Array<Types::EventIntegration>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListEventIntegrationsResponse AWS API Documentation
    #
    class ListEventIntegrationsResponse < Struct.new(
      :event_integrations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Information about the tags.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The allowed quota for the resource has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ResourceQuotaExceededException AWS API Documentation
    #
    class ResourceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The name of the data and how often it should be pulled from the
    # source.
    #
    # @!attribute [rw] first_execution_from
    #   The start date for objects to import in the first flow run as an
    #   Unix/epoch timestamp in milliseconds or in ISO-8601 format.
    #   @return [String]
    #
    # @!attribute [rw] object
    #   The name of the object to pull from the data source.
    #   @return [String]
    #
    # @!attribute [rw] schedule_expression
    #   How often the data should be pulled from data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ScheduleConfiguration AWS API Documentation
    #
    class ScheduleConfiguration < Struct.new(
      :first_execution_from,
      :object,
      :schedule_expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for this
    #   resource. For example, \\\{ "tags": \\\{"key1":"value1",
    #   "key2":"value2"\\} \\}.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The throttling limit has been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   A unique identifier for the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the DataIntegration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the DataIntegration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateDataIntegrationRequest AWS API Documentation
    #
    class UpdateDataIntegrationRequest < Struct.new(
      :identifier,
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateDataIntegrationResponse AWS API Documentation
    #
    class UpdateDataIntegrationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   The name of the event integration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event inegration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateEventIntegrationRequest AWS API Documentation
    #
    class UpdateEventIntegrationRequest < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/appintegrations-2020-07-29/UpdateEventIntegrationResponse AWS API Documentation
    #
    class UpdateEventIntegrationResponse < Aws::EmptyStructure; end

  end
end
