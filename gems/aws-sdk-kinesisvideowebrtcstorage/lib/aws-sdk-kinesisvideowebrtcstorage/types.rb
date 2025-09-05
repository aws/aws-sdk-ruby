# frozen_string_literal: true

# This is generated code!

module Aws::KinesisVideoWebRTCStorage
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have required permissions to perform this operation.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Kinesis Video Streams has throttled the request because you have exceeded the limit of allowed client calls. Try making the call later.
    #     </p>
    # @!attribute message
    #   @return [String]
    class ClientLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The value for this input parameter is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the signaling channel.
    #       </p>
    #   @return [String]
    # @!attribute client_id
    #   <p>
    #         The unique identifier for the sender client.
    #       </p>
    #   @return [String]
    class JoinStorageSessionAsViewerInput < Struct.new(
      :channel_arn,
      :client_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute channel_arn
    #   <p>
    #         The Amazon Resource Name (ARN) of the signaling channel.
    #       </p>
    #   @return [String]
    class JoinStorageSessionInput < Struct.new(
      :channel_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
