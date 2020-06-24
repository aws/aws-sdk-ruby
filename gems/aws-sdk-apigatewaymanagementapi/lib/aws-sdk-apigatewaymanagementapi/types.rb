# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::ApiGatewayManagementApi
  module Types

    # @note When making an API call, you may pass DeleteConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "__string", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   @return [String]
    #
    class DeleteConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The caller is not authorized to invoke this operation.
    #
    class ForbiddenException < Aws::EmptyStructure; end

    # @note When making an API call, you may pass GetConnectionRequest
    #   data as a hash:
    #
    #       {
    #         connection_id: "__string", # required
    #       }
    #
    # @!attribute [rw] connection_id
    #   @return [String]
    #
    class GetConnectionRequest < Struct.new(
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] connected_at
    #   @return [Time]
    #
    # @!attribute [rw] identity
    #   @return [Types::Identity]
    #
    # @!attribute [rw] last_active_at
    #   @return [Time]
    #
    class GetConnectionResponse < Struct.new(
      :connected_at,
      :identity,
      :last_active_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The connection with the provided id no longer exists.
    #
    class GoneException < Aws::EmptyStructure; end

    # @!attribute [rw] source_ip
    #   The source IP address of the TCP connection making the request to
    #   API Gateway.
    #   @return [String]
    #
    # @!attribute [rw] user_agent
    #   The User Agent of the API caller.
    #   @return [String]
    #
    class Identity < Struct.new(
      :source_ip,
      :user_agent)
      SENSITIVE = []
      include Aws::Structure
    end

    # The data has exceeded the maximum size allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    class PayloadTooLargeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PostToConnectionRequest
    #   data as a hash:
    #
    #       {
    #         data: "data", # required
    #         connection_id: "__string", # required
    #       }
    #
    # @!attribute [rw] data
    #   The data to be sent to the client specified by its connection id.
    #   @return [String]
    #
    # @!attribute [rw] connection_id
    #   @return [String]
    #
    class PostToConnectionRequest < Struct.new(
      :data,
      :connection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The client is sending more than the allowed number of requests per
    # unit of time or the WebSocket client side buffer is full.
    #
    class LimitExceededException < Aws::EmptyStructure; end

  end
end
