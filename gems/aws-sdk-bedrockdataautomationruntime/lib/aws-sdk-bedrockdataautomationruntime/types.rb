# frozen_string_literal: true

# This is generated code!

module Aws::BedrockDataAutomationRuntime
  # This module contains the types returned by client operations.
  module Types

    # This exception will be thrown when customer does not have access to API.
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Config containing asset processing related knobs for all modalities
    # @!attribute video
    #   Video asset processing configuration
    #   @return [Types::VideoAssetProcessingConfiguration]
    class AssetProcessingConfiguration < Struct.new(
      :video,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Structure for single blueprint entity.
    # @!attribute blueprint_arn
    #   Arn of blueprint.
    #   @return [String]
    # @!attribute version
    #   Version of blueprint.
    #   @return [String]
    # @!attribute stage
    #   Stage of blueprint.
    #   @return [String]
    class Blueprint < Struct.new(
      :blueprint_arn,
      :version,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Data automation configuration.
    # @!attribute data_automation_project_arn
    #   Data automation project arn.
    #   @return [String]
    # @!attribute stage
    #   Data automation stage.
    #   @return [String]
    class DataAutomationConfiguration < Struct.new(
      :data_automation_project_arn,
      :stage,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Encryption configuration.
    # @!attribute kms_key_id
    #   Customer KMS key used for encryption
    #   @return [String]
    # @!attribute kms_encryption_context
    #   KMS encryption context.
    #   @return [Hash<String, String>]
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      :kms_encryption_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Event bridge configuration.
    # @!attribute event_bridge_enabled
    #   Event bridge flag.
    #   @return [Boolean]
    class EventBridgeConfiguration < Struct.new(
      :event_bridge_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Structure for request of GetDataAutomationStatus API.
    # @!attribute invocation_arn
    #   Invocation arn.
    #   @return [String]
    class GetDataAutomationStatusRequest < Struct.new(
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Response of GetDataAutomationStatus API.
    # @!attribute status
    #   Job Status.
    #   @return [String]
    # @!attribute error_type
    #   Error Type.
    #   @return [String]
    # @!attribute error_message
    #   Error Message.
    #   @return [String]
    # @!attribute output_configuration
    #   Output configuration.
    #   @return [Types::OutputConfiguration]
    class GetDataAutomationStatusResponse < Struct.new(
      :status,
      :error_type,
      :error_message,
      :output_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Input configuration.
    # @!attribute s3_uri
    #   S3 uri.
    #   @return [String]
    # @!attribute asset_processing_configuration
    #   Asset processing configuration
    #   @return [Types::AssetProcessingConfiguration]
    class InputConfiguration < Struct.new(
      :s3_uri,
      :asset_processing_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception is for any internal un-expected service errors.
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke Data Automation Async Request
    # @!attribute client_token
    #   Idempotency token.
    #   @return [String]
    # @!attribute input_configuration
    #   Input configuration.
    #   @return [Types::InputConfiguration]
    # @!attribute output_configuration
    #   Output configuration.
    #   @return [Types::OutputConfiguration]
    # @!attribute data_automation_configuration
    #   Data automation configuration.
    #   @return [Types::DataAutomationConfiguration]
    # @!attribute encryption_configuration
    #   Encryption configuration.
    #   @return [Types::EncryptionConfiguration]
    # @!attribute notification_configuration
    #   Notification configuration.
    #   @return [Types::NotificationConfiguration]
    # @!attribute blueprints
    #   Blueprint list.
    #   @return [Array<Types::Blueprint>]
    # @!attribute data_automation_profile_arn
    #   Data automation profile ARN
    #   @return [String]
    # @!attribute tags
    #   List of tags.
    #   @return [Array<Types::Tag>]
    class InvokeDataAutomationAsyncRequest < Struct.new(
      :client_token,
      :input_configuration,
      :output_configuration,
      :data_automation_configuration,
      :encryption_configuration,
      :notification_configuration,
      :blueprints,
      :data_automation_profile_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Invoke Data Automation Async Response
    # @!attribute invocation_arn
    #   ARN of the automation job
    #   @return [String]
    class InvokeDataAutomationAsyncResponse < Struct.new(
      :invocation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Notification configuration.
    # @!attribute event_bridge_configuration
    #   Event bridge configuration.
    #   @return [Types::EventBridgeConfiguration]
    class NotificationConfiguration < Struct.new(
      :event_bridge_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Output configuration.
    # @!attribute s3_uri
    #   S3 uri.
    #   @return [String]
    class OutputConfiguration < Struct.new(
      :s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception will be thrown when resource provided from customer not found.
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception will be thrown when service quota is exceeded.
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Key value pair of a tag
    # @!attribute key
    #   Defines the context of the tag.
    #   @return [String]
    # @!attribute value
    #   Defines the value within the context. e.g. <key=reason, value=training>.
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    # @!attribute tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception will be thrown when customer reached API TPS limit.
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Timestamp segment
    # @!attribute start_time_millis
    #   Start timestamp in milliseconds
    #   @return [Integer]
    # @!attribute end_time_millis
    #   End timestamp in milliseconds
    #   @return [Integer]
    class TimestampSegment < Struct.new(
      :start_time_millis,
      :end_time_millis,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    # @!attribute tag_keys
    #   List of tag keys
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # This exception will be thrown when customer provided invalid parameters.
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Video asset processing configuration
    # @!attribute segment_configuration
    #   Delimits the segment of the input that will be processed
    #   @return [Types::VideoSegmentConfiguration]
    class VideoAssetProcessingConfiguration < Struct.new(
      :segment_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # Delimits the segment of the input that will be processed
    # @!attribute timestamp_segment
    #   Timestamp segment
    #   @return [Types::TimestampSegment]
    class VideoSegmentConfiguration < Struct.new(
      :timestamp_segment,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TimestampSegment < VideoSegmentConfiguration; end
      class Unknown < VideoSegmentConfiguration; end
    end

  end
end
