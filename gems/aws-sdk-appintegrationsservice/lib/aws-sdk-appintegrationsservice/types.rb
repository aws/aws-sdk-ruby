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

    # @note When making an API call, you may pass CreateEventIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #         event_filter: { # required
    #           source: "Source", # required
    #         },
    #         event_bridge_bus: "EventBridgeBus", # required
    #         client_token: "IdempotencyToken",
    #         tags: {
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
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
    #   idempotency of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
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

    # @note When making an API call, you may pass DeleteEventIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
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
    # @note When making an API call, you may pass EventFilter
    #   data as a hash:
    #
    #       {
    #         source: "Source", # required
    #       }
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
    #   The tags.
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

    # @note When making an API call, you may pass GetEventIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #       }
    #
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
    #   One or more tags.
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

    # @note When making an API call, you may pass ListEventIntegrationAssociationsRequest
    #   data as a hash:
    #
    #       {
    #         event_integration_name: "Name", # required
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
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

    # @note When making an API call, you may pass ListEventIntegrationsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #       }
    #
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tags: { # required
    #           "TagKey" => "TagValue",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tags.
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "Arn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateEventIntegrationRequest
    #   data as a hash:
    #
    #       {
    #         name: "Name", # required
    #         description: "Description",
    #       }
    #
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
