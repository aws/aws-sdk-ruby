# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::BedrockDataAutomationRuntime
  module Types

    # This exception will be thrown when customer does not have access to
    # API.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for single blueprint entity.
    #
    # @!attribute [rw] blueprint_arn
    #   Arn of blueprint.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Version of blueprint.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Stage of blueprint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/Blueprint AWS API Documentation
    #
    class Blueprint < Struct.new(
      :blueprint_arn,
      :version,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data automation configuration.
    #
    # @!attribute [rw] data_automation_project_arn
    #   Data automation project arn.
    #   @return [String]
    #
    # @!attribute [rw] stage
    #   Data automation stage.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/DataAutomationConfiguration AWS API Documentation
    #
    class DataAutomationConfiguration < Struct.new(
      :data_automation_project_arn,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # Encryption configuration.
    #
    # @!attribute [rw] kms_key_id
    #   Customer KMS key used for encryption
    #   @return [String]
    #
    # @!attribute [rw] kms_encryption_context
    #   KMS encryption context.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :kms_key_id,
      :kms_encryption_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # Event bridge configuration.
    #
    # @!attribute [rw] event_bridge_enabled
    #   Event bridge flag.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/EventBridgeConfiguration AWS API Documentation
    #
    class EventBridgeConfiguration < Struct.new(
      :event_bridge_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Structure for request of GetDataAutomationStatus API.
    #
    # @!attribute [rw] invocation_arn
    #   Invocation arn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/GetDataAutomationStatusRequest AWS API Documentation
    #
    class GetDataAutomationStatusRequest < Struct.new(
      :invocation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Response of GetDataAutomationStatus API.
    #
    # @!attribute [rw] status
    #   Job Status.
    #   @return [String]
    #
    # @!attribute [rw] error_type
    #   Error Type.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error Message.
    #   @return [String]
    #
    # @!attribute [rw] output_configuration
    #   Output configuration.
    #   @return [Types::OutputConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/GetDataAutomationStatusResponse AWS API Documentation
    #
    class GetDataAutomationStatusResponse < Struct.new(
      :status,
      :error_type,
      :error_message,
      :output_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Input configuration.
    #
    # @!attribute [rw] s3_uri
    #   S3 uri.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/InputConfiguration AWS API Documentation
    #
    class InputConfiguration < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception is for any internal un-expected service errors.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invoke Data Automation Async Request
    #
    # @!attribute [rw] client_token
    #   Idempotency token.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] input_configuration
    #   Input configuration.
    #   @return [Types::InputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   Output configuration.
    #   @return [Types::OutputConfiguration]
    #
    # @!attribute [rw] data_automation_configuration
    #   Data automation configuration.
    #   @return [Types::DataAutomationConfiguration]
    #
    # @!attribute [rw] encryption_configuration
    #   Encryption configuration.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] notification_configuration
    #   Notification configuration.
    #   @return [Types::NotificationConfiguration]
    #
    # @!attribute [rw] blueprints
    #   Blueprint list.
    #   @return [Array<Types::Blueprint>]
    #
    # @!attribute [rw] data_automation_profile_arn
    #   Data automation profile ARN
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/InvokeDataAutomationAsyncRequest AWS API Documentation
    #
    class InvokeDataAutomationAsyncRequest < Struct.new(
      :client_token,
      :input_configuration,
      :output_configuration,
      :data_automation_configuration,
      :encryption_configuration,
      :notification_configuration,
      :blueprints,
      :data_automation_profile_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Invoke Data Automation Async Response
    #
    # @!attribute [rw] invocation_arn
    #   ARN of the automation job
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/InvokeDataAutomationAsyncResponse AWS API Documentation
    #
    class InvokeDataAutomationAsyncResponse < Struct.new(
      :invocation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Notification configuration.
    #
    # @!attribute [rw] event_bridge_configuration
    #   Event bridge configuration.
    #   @return [Types::EventBridgeConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/NotificationConfiguration AWS API Documentation
    #
    class NotificationConfiguration < Struct.new(
      :event_bridge_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Output configuration.
    #
    # @!attribute [rw] s3_uri
    #   S3 uri.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/OutputConfiguration AWS API Documentation
    #
    class OutputConfiguration < Struct.new(
      :s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception will be thrown when resource provided from customer not
    # found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This exception will be thrown when service quota is exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Key value pair of a tag
    #
    # @!attribute [rw] key
    #   Defines the context of the tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Defines the value within the context. e.g. &lt;key=reason,
    #   value=training&gt;.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   List of tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # This exception will be thrown when customer reached API TPS limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a taggable resource
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # This exception will be thrown when customer provided invalid
    # parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/bedrock-data-automation-runtime-2024-06-13/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

