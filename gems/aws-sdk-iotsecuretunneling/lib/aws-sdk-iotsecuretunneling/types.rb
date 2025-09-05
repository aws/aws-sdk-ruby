# frozen_string_literal: true

# This is generated code!

module Aws::IoTSecureTunneling
  # This module contains the types returned by client operations.
  module Types

    # @!attribute tunnel_id
    #   <p>The ID of the tunnel to close.</p>
    #   @return [String]
    # @!attribute delete
    #   <p>When set to true, IoT Secure Tunneling deletes the tunnel data
    #   			immediately.</p>
    #   @return [Boolean]
    class CloseTunnelRequest < Struct.new(
      :tunnel_id,
      :delete,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class CloseTunnelResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The state of a connection.</p>
    # @!attribute status
    #   <p>The connection status of the tunnel. Valid values are <code>CONNECTED</code> and
    #   				<code>DISCONNECTED</code>.</p>
    #   @return [String]
    # @!attribute last_updated_at
    #   <p>The last time the connection status was updated.</p>
    #   @return [Time]
    class ConnectionState < Struct.new(
      :status,
      :last_updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel_id
    #   <p>The tunnel to describe.</p>
    #   @return [String]
    class DescribeTunnelRequest < Struct.new(
      :tunnel_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel
    #   <p>The tunnel being described.</p>
    #   @return [Types::Tunnel]
    class DescribeTunnelResponse < Struct.new(
      :tunnel,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The destination configuration.</p>
    # @!attribute thing_name
    #   <p>The name of the IoT thing to which you want to connect.</p>
    #   @return [String]
    # @!attribute services
    #   <p>A list of service names that identify the target application. The IoT client
    #   			running on the destination device reads this value and uses it to look up a port or an
    #   			IP address and a port. The IoT client instantiates the local proxy, which uses this
    #   			information to connect to the destination application.</p>
    #   @return [Array<String>]
    class DestinationConfig < Struct.new(
      :thing_name,
      :services,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when a tunnel limit is exceeded.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags for the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_name
    #   <p>The name of the IoT thing associated with the destination device.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at once.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>To retrieve the next set of results, the nextToken value from a previous response;
    #   			otherwise null to receive the first set of results.</p>
    #   @return [String]
    class ListTunnelsRequest < Struct.new(
      :thing_name,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel_summaries
    #   <p>A short description of the tunnels in an Amazon Web Services account.</p>
    #   @return [Array<Types::TunnelSummary>]
    # @!attribute next_token
    #   <p>The token to use to get the next set of results, or null if there are no additional
    #   			results.</p>
    #   @return [String]
    class ListTunnelsResponse < Struct.new(
      :tunnel_summaries,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p>A short text description of the tunnel. </p>
    #   @return [String]
    # @!attribute tags
    #   <p>A collection of tag metadata.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute destination_config
    #   <p>The destination configuration for the OpenTunnel request.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute timeout_config
    #   <p>Timeout configuration for a tunnel.</p>
    #   @return [Types::TimeoutConfig]
    class OpenTunnelRequest < Struct.new(
      :description,
      :tags,
      :destination_config,
      :timeout_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel_id
    #   <p>A unique alpha-numeric tunnel ID.</p>
    #   @return [String]
    # @!attribute tunnel_arn
    #   <p>The Amazon Resource Name for the tunnel.</p>
    #   @return [String]
    # @!attribute source_access_token
    #   <p>The access token the source local proxy uses to connect to IoT Secure
    #   			Tunneling.</p>
    #   @return [String]
    # @!attribute destination_access_token
    #   <p>The access token the destination local proxy uses to connect to IoT Secure
    #   			Tunneling.</p>
    #   @return [String]
    class OpenTunnelResponse < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :source_access_token,
      :destination_access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Thrown when an operation is attempted on a resource that does not exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel_id
    #   <p>The tunnel for which you want to rotate the access tokens.</p>
    #   @return [String]
    # @!attribute client_mode
    #   <p>The mode of the client that will use the client token, which can be either the source
    #   			or destination, or both source and destination.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>The destination configuration.</p>
    #   @return [Types::DestinationConfig]
    class RotateTunnelAccessTokenRequest < Struct.new(
      :tunnel_id,
      :client_mode,
      :destination_config,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tunnel_arn
    #   <p>The Amazon Resource Name for the tunnel.</p>
    #   @return [String]
    # @!attribute source_access_token
    #   <p>The client access token that the source local proxy uses to connect to IoT Secure
    #   			Tunneling.</p>
    #   @return [String]
    # @!attribute destination_access_token
    #   <p>The client access token that the destination local proxy uses to connect to IoT
    #   			Secure Tunneling.</p>
    #   @return [String]
    class RotateTunnelAccessTokenResponse < Struct.new(
      :tunnel_arn,
      :source_access_token,
      :destination_access_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An arbitary key/value pair used to add searchable metadata to secure tunnel
    # 			resources.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags for the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Tunnel timeout configuration.</p>
    # @!attribute max_lifetime_timeout_minutes
    #   <p>The maximum amount of time (in minutes) a tunnel can remain open. If not specified,
    #   			maxLifetimeTimeoutMinutes defaults to 720 minutes. Valid values are from 1 minute to 12
    #   			hours (720 minutes) </p>
    #   @return [Integer]
    class TimeoutConfig < Struct.new(
      :max_lifetime_timeout_minutes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A connection between a source computer and a destination device.</p>
    # @!attribute tunnel_id
    #   <p>A unique alpha-numeric ID that identifies a tunnel.</p>
    #   @return [String]
    # @!attribute tunnel_arn
    #   <p>The Amazon Resource Name (ARN) of a tunnel.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a tunnel. Valid values are: Open and Closed.</p>
    #   @return [String]
    # @!attribute source_connection_state
    #   <p>The connection state of the source application.</p>
    #   @return [Types::ConnectionState]
    # @!attribute destination_connection_state
    #   <p>The connection state of the destination application.</p>
    #   @return [Types::ConnectionState]
    # @!attribute description
    #   <p>A description of the tunnel.</p>
    #   @return [String]
    # @!attribute destination_config
    #   <p>The destination configuration that specifies the thing name of the destination
    #   			device and a service name that the local proxy uses to connect to the destination
    #   			application.</p>
    #   @return [Types::DestinationConfig]
    # @!attribute timeout_config
    #   <p>Timeout configuration for the tunnel.</p>
    #   @return [Types::TimeoutConfig]
    # @!attribute tags
    #   <p>A list of tag metadata associated with the secure tunnel.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute created_at
    #   <p>The time when the tunnel was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The last time the tunnel was updated.</p>
    #   @return [Time]
    class Tunnel < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :status,
      :source_connection_state,
      :destination_connection_state,
      :description,
      :destination_config,
      :timeout_config,
      :tags,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the tunnel.</p>
    # @!attribute tunnel_id
    #   <p>The unique alpha-numeric identifier for the tunnel.</p>
    #   @return [String]
    # @!attribute tunnel_arn
    #   <p>The Amazon Resource Name of the tunnel. </p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of a tunnel. Valid values are: Open and Closed.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the tunnel.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The time the tunnel was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>The time the tunnel was last updated.</p>
    #   @return [Time]
    class TunnelSummary < Struct.new(
      :tunnel_id,
      :tunnel_arn,
      :status,
      :description,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
