# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::KinesisVideoSignalingChannels
  module Types

    # Your request was throttled because you have exceeded the limit of
    # allowed client calls. Try making the call later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/ClientLimitExceededException AWS API Documentation
    #
    class ClientLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetIceServerConfigRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ResourceARN", # required
    #         client_id: "ClientId",
    #         service: "TURN", # accepts TURN
    #         username: "Username",
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the signaling channel to be used for the peer-to-peer
    #   connection between configured peers.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   Unique identifier for the viewer. Must be unique within the
    #   signaling channel.
    #   @return [String]
    #
    # @!attribute [rw] service
    #   Specifies the desired service. Currently, `TURN` is the only valid
    #   value.
    #   @return [String]
    #
    # @!attribute [rw] username
    #   An optional user ID to be associated with the credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/GetIceServerConfigRequest AWS API Documentation
    #
    class GetIceServerConfigRequest < Struct.new(
      :channel_arn,
      :client_id,
      :service,
      :username)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ice_server_list
    #   The list of ICE server information objects.
    #   @return [Array<Types::IceServer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/GetIceServerConfigResponse AWS API Documentation
    #
    class GetIceServerConfigResponse < Struct.new(
      :ice_server_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # A structure for the ICE server connection data.
    #
    # @!attribute [rw] uris
    #   An array of URIs, in the form specified in the
    #   [I-D.petithuguenin-behave-turn-uris][1] spec. These URIs provide the
    #   different addresses and/or protocols that can be used to reach the
    #   TURN server.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/draft-petithuguenin-behave-turn-uris-03
    #   @return [Array<String>]
    #
    # @!attribute [rw] username
    #   A username to login to the ICE server.
    #   @return [String]
    #
    # @!attribute [rw] password
    #   A password to login to the ICE server.
    #   @return [String]
    #
    # @!attribute [rw] ttl
    #   The period of time, in seconds, during which the username and
    #   password are valid.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/IceServer AWS API Documentation
    #
    class IceServer < Struct.new(
      :uris,
      :username,
      :password,
      :ttl)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value for this input parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified client is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/InvalidClientException AWS API Documentation
    #
    class InvalidClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller is not authorized to perform this operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/NotAuthorizedException AWS API Documentation
    #
    class NotAuthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass SendAlexaOfferToMasterRequest
    #   data as a hash:
    #
    #       {
    #         channel_arn: "ResourceARN", # required
    #         sender_client_id: "ClientId", # required
    #         message_payload: "MessagePayload", # required
    #       }
    #
    # @!attribute [rw] channel_arn
    #   The ARN of the signaling channel by which Alexa and the master peer
    #   communicate.
    #   @return [String]
    #
    # @!attribute [rw] sender_client_id
    #   The unique identifier for the sender client.
    #   @return [String]
    #
    # @!attribute [rw] message_payload
    #   The base64-encoded SDP offer content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/SendAlexaOfferToMasterRequest AWS API Documentation
    #
    class SendAlexaOfferToMasterRequest < Struct.new(
      :channel_arn,
      :sender_client_id,
      :message_payload)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] answer
    #   The base64-encoded SDP answer content.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/SendAlexaOfferToMasterResponse AWS API Documentation
    #
    class SendAlexaOfferToMasterResponse < Struct.new(
      :answer)
      SENSITIVE = []
      include Aws::Structure
    end

    # If the client session is expired. Once the client is connected, the
    # session is valid for 45 minutes. Client should reconnect to the
    # channel to continue sending/receiving messages.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/kinesis-video-signaling-2019-12-04/SessionExpiredException AWS API Documentation
    #
    class SessionExpiredException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
