# frozen_string_literal: true

# This is generated code!

module Aws::SagemakerJobRuntime
  # This module contains the types returned by client operations.
  module Types

    # You do not have permission to perform this operation.
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   The job ARN.
    #   @return [String]
    # @!attribute trajectory_id
    #   The trajectory ID to mark as complete.
    #   @return [String]
    # @!attribute status
    #   The target status for the trajectory. Defaults to READY if not specified.
    #   Set to FAILED if the rollout encountered an error and the trajectory should
    #   not be used for processing.
    #   @return [String]
    # @!attribute client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    class CompleteRolloutRequest < Struct.new(
      nil,
      :job_arn,
      :trajectory_id,
      :status,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class CompleteRolloutResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request conflicts with the current state of the resource.
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # An internal service error occurred. Retry the request.
    # @!attribute message
    #   @return [String]
    class InternalServiceError < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The specified resource was not found.
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   The job ARN that identifies which model session
    #   to route the inference request to.
    #   @return [String]
    # @!attribute trajectory_id
    #   The trajectory ID for grouping turns into a single rollout. Each turn
    #   (prompt and response) is captured for later use.
    #   @return [String]
    # @!attribute body
    #   The raw inference request body in OpenAI-compatible JSON format.
    #   @return [String]
    class SampleRequest < Struct.new(
      nil,
      :job_arn,
      :trajectory_id,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   MIME type of the inference result.
    #   @return [String]
    # @!attribute body
    #   The raw inference response body from the model.
    #   @return [String]
    class SampleResponse < Struct.new(
      nil,
      :content_type,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   The job ARN that identifies which model session
    #   to route the inference request to.
    #   @return [String]
    # @!attribute trajectory_id
    #   The trajectory ID for grouping turns into a single rollout. Each turn
    #   is captured for later use.
    #   @return [String]
    # @!attribute body
    #   The raw inference request body in OpenAI-compatible JSON format.
    #   @return [String]
    class SampleWithResponseStreamRequest < Struct.new(
      nil,
      :job_arn,
      :trajectory_id,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute content_type
    #   MIME type of the streaming inference result.
    #   @return [String]
    # @!attribute body
    #   The streaming response body, delivered as a series of PayloadPart events.
    #   @return [String]
    class SampleWithResponseStreamResponse < Struct.new(
      nil,
      :content_type,
      :body,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # You have exceeded a service quota.
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request was throttled. Retry the request after a brief wait.
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_arn
    #   The job ARN.
    #   @return [String]
    # @!attribute trajectory_id
    #   The trajectory ID to update with reward values.
    #   @return [String]
    # @!attribute rewards
    #   The list of reward values to assign to this trajectory. Provide one reward
    #   value per turn in the trajectory.
    #   @return [Array<Float>]
    # @!attribute client_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency of the request.
    #   @return [String]
    class UpdateRewardRequest < Struct.new(
      nil,
      :job_arn,
      :trajectory_id,
      :rewards,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UpdateRewardResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # The request is not valid. Check the request syntax and parameters
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
