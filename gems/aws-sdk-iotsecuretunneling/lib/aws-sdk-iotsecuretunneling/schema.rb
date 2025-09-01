# frozen_string_literal: true

# This is generated code!

module Aws::IoTSecureTunneling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ClientAccessToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ClientAccessToken', name: 'ClientAccessToken', traits: {"smithy.api#sensitive" => {}})
    ClientMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#ClientMode', name: 'ClientMode')
    CloseTunnelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#CloseTunnelRequest', name: 'CloseTunnelRequest')
    CloseTunnelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#CloseTunnelResponse', name: 'CloseTunnelResponse')
    ConnectionState = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ConnectionState', name: 'ConnectionState')
    ConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#ConnectionStatus', name: 'ConnectionStatus')
    DateType = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotsecuretunneling#DateType', name: 'DateType')
    DeleteFlag = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsecuretunneling#DeleteFlag', name: 'DeleteFlag', traits: {"smithy.api#default" => false})
    DescribeTunnelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DescribeTunnelRequest', name: 'DescribeTunnelRequest')
    DescribeTunnelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DescribeTunnelResponse', name: 'DescribeTunnelResponse')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#Description', name: 'Description', traits: {"smithy.api#pattern" => "^[^\\p{C}]{1,2048}$"})
    DestinationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DestinationConfig', name: 'DestinationConfig')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ErrorMessage', name: 'ErrorMessage')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTunnelsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTunnelsRequest', name: 'ListTunnelsRequest')
    ListTunnelsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTunnelsResponse', name: 'ListTunnelsResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsecuretunneling#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_=-]{1,4096}$"})
    OpenTunnelRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#OpenTunnelRequest', name: 'OpenTunnelRequest')
    OpenTunnelResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#OpenTunnelResponse', name: 'OpenTunnelResponse')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RotateTunnelAccessTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#RotateTunnelAccessTokenRequest', name: 'RotateTunnelAccessTokenRequest')
    RotateTunnelAccessTokenResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#RotateTunnelAccessTokenResponse', name: 'RotateTunnelAccessTokenResponse')
    Service = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#Service', name: 'Service', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ServiceList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#ServiceList', name: 'ServiceList', traits: {"smithy.api#length" => {"min" => 1}})
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThingName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ThingName', name: 'ThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    TimeoutConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TimeoutConfig', name: 'TimeoutConfig')
    TimeoutInMin = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsecuretunneling#TimeoutInMin', name: 'TimeoutInMin', traits: {"smithy.api#range" => {"min" => 1, "max" => 720}})
    Tunnel = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#Tunnel', name: 'Tunnel')
    TunnelArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelArn', name: 'TunnelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TunnelId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelId', name: 'TunnelId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-+=:]{1,128}$"})
    TunnelStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelStatus', name: 'TunnelStatus')
    TunnelSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelSummary', name: 'TunnelSummary')
    TunnelSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelSummaryList', name: 'TunnelSummaryList')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#UntagResourceResponse', name: 'UntagResourceResponse')

    ClientMode.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE', traits: {"smithy.api#enumValue" => "SOURCE"}))
    ClientMode.add_member(:destination, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESTINATION', traits: {"smithy.api#enumValue" => "DESTINATION"}))
    ClientMode.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    CloseTunnelRequest.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>The ID of the tunnel to close.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CloseTunnelRequest.add_member(:delete, Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlag, location_name: 'delete', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>When set to true, IoT Secure Tunneling deletes the tunnel data\n\t\t\timmediately.</p>", "smithy.api#httpQuery" => "delete"}))
    CloseTunnelRequest.type = Types::CloseTunnelRequest
    CloseTunnelResponse.type = Types::CloseTunnelResponse
    ConnectionState.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The connection status of the tunnel. Valid values are <code>CONNECTED</code> and\n\t\t\t\t<code>DISCONNECTED</code>.</p>"}))
    ConnectionState.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The last time the connection status was updated.</p>"}))
    ConnectionState.type = Types::ConnectionState
    ConnectionStatus.add_member(:connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionStatus.add_member(:disconnected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONNECTED', traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    DescribeTunnelRequest.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>The tunnel to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTunnelRequest.type = Types::DescribeTunnelRequest
    DescribeTunnelResponse.add_member(:tunnel, Smithy::Schema::Shapes::ShapeRef.new(shape: Tunnel, location_name: 'tunnel', traits: {"smithy.api#documentation" => "<p>The tunnel being described.</p>"}))
    DescribeTunnelResponse.type = Types::DescribeTunnelResponse
    DestinationConfig.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing to which you want to connect.</p>"}))
    DestinationConfig.add_member(:services, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services', traits: {"smithy.api#documentation" => "<p>A list of service names that identify the target application. The IoT client\n\t\t\trunning on the destination device reads this value and uses it to look up a port or an\n\t\t\tIP address and a port. The IoT client instantiates the local proxy, which uses this\n\t\t\tinformation to connect to the destination application.</p>", "smithy.api#required" => {}}))
    DestinationConfig.type = Types::DestinationConfig
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the specified resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTunnelsRequest.add_member(:thing_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#documentation" => "<p>The name of the IoT thing associated with the destination device.</p>", "smithy.api#httpQuery" => "thingName"}))
    ListTunnelsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return at once.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListTunnelsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>To retrieve the next set of results, the nextToken value from a previous response;\n\t\t\totherwise null to receive the first set of results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListTunnelsRequest.type = Types::ListTunnelsRequest
    ListTunnelsResponse.add_member(:tunnel_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelSummaryList, location_name: 'tunnelSummaries', traits: {"smithy.api#documentation" => "<p>A short description of the tunnels in an Amazon Web Services account.</p>"}))
    ListTunnelsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>The token to use to get the next set of results, or null if there are no additional\n\t\t\tresults.</p>"}))
    ListTunnelsResponse.type = Types::ListTunnelsResponse
    OpenTunnelRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A short text description of the tunnel. </p>"}))
    OpenTunnelRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A collection of tag metadata.</p>"}))
    OpenTunnelRequest.add_member(:destination_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig', traits: {"smithy.api#documentation" => "<p>The destination configuration for the OpenTunnel request.</p>"}))
    OpenTunnelRequest.add_member(:timeout_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: 'timeoutConfig', traits: {"smithy.api#documentation" => "<p>Timeout configuration for a tunnel.</p>"}))
    OpenTunnelRequest.type = Types::OpenTunnelRequest
    OpenTunnelResponse.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>A unique alpha-numeric tunnel ID.</p>"}))
    OpenTunnelResponse.add_member(:tunnel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name for the tunnel.</p>"}))
    OpenTunnelResponse.add_member(:source_access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'sourceAccessToken', traits: {"smithy.api#documentation" => "<p>The access token the source local proxy uses to connect to IoT Secure\n\t\t\tTunneling.</p>"}))
    OpenTunnelResponse.add_member(:destination_access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'destinationAccessToken', traits: {"smithy.api#documentation" => "<p>The access token the destination local proxy uses to connect to IoT Secure\n\t\t\tTunneling.</p>"}))
    OpenTunnelResponse.type = Types::OpenTunnelResponse
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RotateTunnelAccessTokenRequest.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>The tunnel for which you want to rotate the access tokens.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RotateTunnelAccessTokenRequest.add_member(:client_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMode, location_name: 'clientMode', traits: {"smithy.api#documentation" => "<p>The mode of the client that will use the client token, which can be either the source\n\t\t\tor destination, or both source and destination.</p>", "smithy.api#required" => {}}))
    RotateTunnelAccessTokenRequest.add_member(:destination_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig'))
    RotateTunnelAccessTokenRequest.type = Types::RotateTunnelAccessTokenRequest
    RotateTunnelAccessTokenResponse.add_member(:tunnel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name for the tunnel.</p>"}))
    RotateTunnelAccessTokenResponse.add_member(:source_access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'sourceAccessToken', traits: {"smithy.api#documentation" => "<p>The client access token that the source local proxy uses to connect to IoT Secure\n\t\t\tTunneling.</p>"}))
    RotateTunnelAccessTokenResponse.add_member(:destination_access_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'destinationAccessToken', traits: {"smithy.api#documentation" => "<p>The client access token that the destination local proxy uses to connect to IoT\n\t\t\tSecure Tunneling.</p>"}))
    RotateTunnelAccessTokenResponse.type = Types::RotateTunnelAccessTokenResponse
    ServiceList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The key of the tag.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The value of the tag.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The ARN of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags for the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimeoutConfig.add_member(:max_lifetime_timeout_minutes, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInMin, location_name: 'maxLifetimeTimeoutMinutes', traits: {"smithy.api#documentation" => "<p>The maximum amount of time (in minutes) a tunnel can remain open. If not specified,\n\t\t\tmaxLifetimeTimeoutMinutes defaults to 720 minutes. Valid values are from 1 minute to 12\n\t\t\thours (720 minutes) </p>"}))
    TimeoutConfig.type = Types::TimeoutConfig
    Tunnel.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>A unique alpha-numeric ID that identifies a tunnel.</p>"}))
    Tunnel.add_member(:tunnel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a tunnel.</p>"}))
    Tunnel.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a tunnel. Valid values are: Open and Closed.</p>"}))
    Tunnel.add_member(:source_connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'sourceConnectionState', traits: {"smithy.api#documentation" => "<p>The connection state of the source application.</p>"}))
    Tunnel.add_member(:destination_connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'destinationConnectionState', traits: {"smithy.api#documentation" => "<p>The connection state of the destination application.</p>"}))
    Tunnel.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the tunnel.</p>"}))
    Tunnel.add_member(:destination_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig', traits: {"smithy.api#documentation" => "<p>The destination configuration that specifies the thing name of the destination\n\t\t\tdevice and a service name that the local proxy uses to connect to the destination\n\t\t\tapplication.</p>"}))
    Tunnel.add_member(:timeout_config, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: 'timeoutConfig', traits: {"smithy.api#documentation" => "<p>Timeout configuration for the tunnel.</p>"}))
    Tunnel.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag metadata associated with the secure tunnel.</p>"}))
    Tunnel.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time when the tunnel was created.</p>"}))
    Tunnel.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The last time the tunnel was updated.</p>"}))
    Tunnel.type = Types::Tunnel
    TunnelStatus.add_member(:open, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    TunnelStatus.add_member(:closed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    TunnelSummary.add_member(:tunnel_id, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#documentation" => "<p>The unique alpha-numeric identifier for the tunnel.</p>"}))
    TunnelSummary.add_member(:tunnel_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name of the tunnel. </p>"}))
    TunnelSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>The status of a tunnel. Valid values are: Open and Closed.</p>"}))
    TunnelSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>A description of the tunnel.</p>"}))
    TunnelSummary.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'createdAt', traits: {"smithy.api#documentation" => "<p>The time the tunnel was created.</p>"}))
    TunnelSummary.add_member(:last_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt', traits: {"smithy.api#documentation" => "<p>The time the tunnel was last updated.</p>"}))
    TunnelSummary.type = Types::TunnelSummary
    TunnelSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelSummary)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The resource ARN.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The keys of the tags to remove.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    IoTSecuredTunneling = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotsecuretunneling#IoTSecuredTunneling"
      service.name = "IoTSecuredTunneling"
      service.version = "2018-10-05"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTSecureTunneling", "arnNamespace" => "iotsecuredtunneling", "cloudFormationName" => "IoTSecureTunneling", "cloudTrailEventSource" => "iotsecuretunneling.amazonaws.com", "endpointPrefix" => "api.tunneling.iot"}, "aws.auth#sigv4" => {"name" => "IoTSecuredTunneling"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS IoT Secure Tunneling"}
      service.add_operation(:close_tunnel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#CloseTunnel"
        operation.name = "CloseTunnel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CloseTunnelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CloseTunnelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tunnels/{tunnelId}", "code" => 200}}
      end)
      service.add_operation(:describe_tunnel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#DescribeTunnel"
        operation.name = "DescribeTunnel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTunnelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTunnelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tunnels/{tunnelId}", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_tunnels, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#ListTunnels"
        operation.name = "ListTunnels"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTunnelsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTunnelsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tunnels", "code" => 200}}
        operation[:paginator] = Paginators::ListTunnels.new
      end)
      service.add_operation(:open_tunnel, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#OpenTunnel"
        operation.name = "OpenTunnel"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTunnelRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTunnelResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tunnels", "code" => 200}}
      end)
      service.add_operation(:rotate_tunnel_access_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#RotateTunnelAccessToken"
        operation.name = "RotateTunnelAccessToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateTunnelAccessTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RotateTunnelAccessTokenResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tunnel/{tunnelId}/rotate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untag", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
