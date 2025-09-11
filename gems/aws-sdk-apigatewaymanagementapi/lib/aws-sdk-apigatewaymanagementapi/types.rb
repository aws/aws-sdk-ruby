# frozen_string_literal: true

# This is generated code!

module Aws::ApiGatewayManagementApi
  # This module contains the types returned by client operations.
  module Types

    # @!attribute connection_id
    #   @return [String]
    class DeleteConnectionRequest < Struct.new(
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The caller is not authorized to invoke this operation.</p>
    class ForbiddenException < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connection_id
    #   @return [String]
    class GetConnectionRequest < Struct.new(
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute connected_at
    #   <p>The time in ISO 8601 format for when the connection was established.</p>
    #   @return [Time]
    # @!attribute identity
    #   @return [Types::Identity]
    # @!attribute last_active_at
    #   <p>The time in ISO 8601 format for when the connection was last active.</p>
    #   @return [Time]
    class GetConnectionResponse < Struct.new(
      :connected_at,
      :identity,
      :last_active_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The connection with the provided id no longer exists.</p>
    class GoneException < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute source_ip
    #   <p>The source IP address of the TCP connection making the request to API Gateway.</p>
    #   @return [String]
    # @!attribute user_agent
    #   <p>The User Agent of the API caller.</p>
    #   @return [String]
    class Identity < Struct.new(
      :source_ip,
      :user_agent,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The client is sending more than the allowed number of requests per unit of time or the WebSocket client side buffer is full.</p>
    class LimitExceededException < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The data has exceeded the maximum size allowed.</p>
    # @!attribute message
    #   @return [String]
    class PayloadTooLargeException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute data
    #   <p>The data to be sent to the client specified by its connection id.</p>
    #   @return [String]
    # @!attribute connection_id
    #   <p>The identifier of the connection that a specific client is using.</p>
    #   @return [String]
    class PostToConnectionRequest < Struct.new(
      :data,
      :connection_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
