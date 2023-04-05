# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IVSRealTime
  module Types

    # @!attribute [rw] exception_message
    #   User does not have sufficient access to perform this action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Updating or deleting a resource can cause an inconsistent state.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a stage. Map keys and values can contain UTF-8 encoded text. The
    #   maximum length of this field is 1 KB total. *This field is exposed
    #   to all stage participants and should not be used for personally
    #   identifying, confidential, or sensitive information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage. Default: `PUBLISH, SUBSCRIBE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the token expires. Default: 60 (1
    #   hour).
    #   @return [Integer]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage to which this token is scoped.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Name that can be specified to help identify the token. This can be
    #   any UTF-8 encoded text. *This field is exposed to all stage
    #   participants and should not be used for personally identifying,
    #   confidential, or sensitive information.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantTokenRequest AWS API Documentation
    #
    class CreateParticipantTokenRequest < Struct.new(
      :attributes,
      :capabilities,
      :duration,
      :stage_arn,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participant_token
    #   The participant token that was created.
    #   @return [Types::ParticipantToken]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateParticipantTokenResponse AWS API Documentation
    #
    class CreateParticipantTokenResponse < Struct.new(
      :participant_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Optional name that can be specified for the stage being created.
    #   @return [String]
    #
    # @!attribute [rw] participant_token_configurations
    #   Array of participant token configuration objects to attach to the
    #   new stage.
    #   @return [Array<Types::ParticipantTokenConfiguration>]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStageRequest AWS API Documentation
    #
    class CreateStageRequest < Struct.new(
      :name,
      :participant_token_configurations,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] participant_tokens
    #   Participant tokens attached to the stage. These correspond to the
    #   `participants` in the request.
    #   @return [Array<Types::ParticipantToken>]
    #
    # @!attribute [rw] stage
    #   The stage that was created.
    #   @return [Types::Stage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/CreateStageResponse AWS API Documentation
    #
    class CreateStageResponse < Struct.new(
      :participant_tokens,
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   ARN of the stage to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStageRequest AWS API Documentation
    #
    class DeleteStageRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DeleteStageResponse AWS API Documentation
    #
    class DeleteStageResponse < Aws::EmptyStructure; end

    # @!attribute [rw] participant_id
    #   Identifier of the participant to be disconnected. This is returned
    #   by CreateParticipantToken.
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Description of why this participant is being disconnected.
    #   @return [String]
    #
    # @!attribute [rw] stage_arn
    #   ARN of the stage to which the participant is attached.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipantRequest AWS API Documentation
    #
    class DisconnectParticipantRequest < Struct.new(
      :participant_id,
      :reason,
      :stage_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/DisconnectParticipantResponse AWS API Documentation
    #
    class DisconnectParticipantResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the stage for which the information is to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageRequest AWS API Documentation
    #
    class GetStageRequest < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   @return [Types::Stage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/GetStageResponse AWS API Documentation
    #
    class GetStageResponse < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Unexpected error during processing of request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of results to return. Default: 50.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The first stage to retrieve. This is used for pagination; see the
    #   `nextToken` response field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStagesRequest AWS API Documentation
    #
    class ListStagesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If there are more rooms than `maxResults`, use `nextToken` in the
    #   request to get the next set.
    #   @return [String]
    #
    # @!attribute [rw] stages
    #   List of the matching stages (summary information only).
    #   @return [Array<Types::StageSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListStagesResponse AWS API Documentation
    #
    class ListStagesResponse < Struct.new(
      :next_token,
      :stages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be retrieved. The ARN must be
    #   URL-encoded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a participant token in a stage.
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the token and attach
    #   to a stage. *This field is exposed to all stage participants and
    #   should not be used for personally identifying, confidential, or
    #   sensitive information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage.
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the participant token expires.
    #   Default: 60 (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_time
    #   ISO 8601 timestamp (returned as a string) for when this token
    #   expires.
    #   @return [Time]
    #
    # @!attribute [rw] participant_id
    #   Unique identifier for this participant token, assigned by IVS.
    #   @return [String]
    #
    # @!attribute [rw] token
    #   The issued client token, encrypted.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   Name to help identify the token. This can be any UTF-8 encoded text.
    #   *This field is exposed to all stage participants and should not be
    #   used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantToken AWS API Documentation
    #
    class ParticipantToken < Struct.new(
      :attributes,
      :capabilities,
      :duration,
      :expiration_time,
      :participant_id,
      :token,
      :user_id)
      SENSITIVE = [:token]
      include Aws::Structure
    end

    # Object specifying a participant token configuration in a stage.
    #
    # @!attribute [rw] attributes
    #   Application-provided attributes to encode into the corresponding
    #   participant token and attach to a stage. Map keys and values can
    #   contain UTF-8 encoded text. The maximum length of this field is 1 KB
    #   total. *This field is exposed to all stage participants and should
    #   not be used for personally identifying, confidential, or sensitive
    #   information.*
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] capabilities
    #   Set of capabilities that the user is allowed to perform in the
    #   stage.
    #   @return [Array<String>]
    #
    # @!attribute [rw] duration
    #   Duration (in minutes), after which the corresponding participant
    #   token expires. Default: 60 (1 hour).
    #   @return [Integer]
    #
    # @!attribute [rw] user_id
    #   Name that can be specified to help identify the corresponding
    #   participant token. This can be any UTF-8 encoded text. *This field
    #   is exposed to all stage participants and should not be used for
    #   personally identifying, confidential, or sensitive information.*
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ParticipantTokenConfiguration AWS API Documentation
    #
    class ParticipantTokenConfiguration < Struct.new(
      :attributes,
      :capabilities,
      :duration,
      :user_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Your account is pending verification.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/PendingVerification AWS API Documentation
    #
    class PendingVerification < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Request references a resource which does not exist.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   Request would cause a service quota to be exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object specifying a stage.
    #
    # @!attribute [rw] active_session_id
    #   ID of the active session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Stage name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/Stage AWS API Documentation
    #
    class Stage < Struct.new(
      :active_session_id,
      :arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a stage.
    #
    # @!attribute [rw] active_session_id
    #   ID of the active session within the stage.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   Stage ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Stage name.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags attached to the resource. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints on tags
    #   beyond what is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/StageSummary AWS API Documentation
    #
    class StageSummary < Struct.new(
      :active_session_id,
      :arn,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be tagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Array of tags to be added or updated. Array of maps, each of the
    #   form `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to be untagged. The ARN must be URL-encoded.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Array of tags to be removed. Array of maps, each of the form
    #   `string:string (key:value)`. See [Tagging AWS Resources][1] for
    #   details, including restrictions that apply to tags and "Tag naming
    #   limits and requirements"; Amazon IVS has no constraints beyond what
    #   is documented there.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] arn
    #   ARN of the stage to be updated.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the stage to be updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStageRequest AWS API Documentation
    #
    class UpdateStageRequest < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] stage
    #   The updated stage.
    #   @return [Types::Stage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/UpdateStageResponse AWS API Documentation
    #
    class UpdateStageResponse < Struct.new(
      :stage)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] exception_message
    #   The input fails to satisfy the constraints specified by an Amazon
    #   Web Services service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ivs-realtime-2020-07-14/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :exception_message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
