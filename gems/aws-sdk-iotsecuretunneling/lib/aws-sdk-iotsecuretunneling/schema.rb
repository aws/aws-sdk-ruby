# frozen_string_literal: true

# This is generated code!

module Aws::IoTSecureTunneling
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AmazonResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#AmazonResourceName', name: 'AmazonResourceName', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}})
    ClientAccessToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ClientAccessToken', name: 'ClientAccessToken', traits: {"smithy.api#sensitive" => {}})
    ClientMode = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#ClientMode', name: 'ClientMode')
    CloseTunnelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#CloseTunnelRequest', name: 'CloseTunnelRequest')
    CloseTunnelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#CloseTunnelResponse', name: 'CloseTunnelResponse')
    ConnectionState = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ConnectionState', name: 'ConnectionState')
    ConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#ConnectionStatus', name: 'ConnectionStatus')
    DateType = ::Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.iotsecuretunneling#DateType', name: 'DateType')
    DeleteFlag = ::Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.iotsecuretunneling#DeleteFlag', name: 'DeleteFlag', traits: {"smithy.api#default" => false})
    DescribeTunnelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DescribeTunnelRequest', name: 'DescribeTunnelRequest')
    DescribeTunnelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DescribeTunnelResponse', name: 'DescribeTunnelResponse')
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#Description', name: 'Description', traits: {"smithy.api#pattern" => "^[^\\p{C}]{1,2048}$"})
    DestinationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#DestinationConfig', name: 'DestinationConfig')
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ErrorMessage', name: 'ErrorMessage')
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceededException", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    ListTunnelsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTunnelsRequest', name: 'ListTunnelsRequest')
    ListTunnelsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ListTunnelsResponse', name: 'ListTunnelsResponse')
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsecuretunneling#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#NextToken', name: 'NextToken', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_=-]{1,4096}$"})
    OpenTunnelRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#OpenTunnelRequest', name: 'OpenTunnelRequest')
    OpenTunnelResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#OpenTunnelResponse', name: 'OpenTunnelResponse')
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFoundException", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    RotateTunnelAccessTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#RotateTunnelAccessTokenRequest', name: 'RotateTunnelAccessTokenRequest')
    RotateTunnelAccessTokenResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#RotateTunnelAccessTokenResponse', name: 'RotateTunnelAccessTokenResponse')
    Service = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#Service', name: 'Service', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    ServiceList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#ServiceList', name: 'ServiceList', traits: {"smithy.api#length" => {"min" => 1}})
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#Tag', name: 'Tag')
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 1, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    ThingName = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#ThingName', name: 'ThingName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[a-zA-Z0-9:_-]+$"})
    TimeoutConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TimeoutConfig', name: 'TimeoutConfig')
    TimeoutInMin = ::Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.iotsecuretunneling#TimeoutInMin', name: 'TimeoutInMin', traits: {"smithy.api#range" => {"min" => 1, "max" => 720}})
    Tunnel = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#Tunnel', name: 'Tunnel')
    TunnelArn = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelArn', name: 'TunnelArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1600}})
    TunnelId = ::Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelId', name: 'TunnelId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9_\\-+=:]{1,128}$"})
    TunnelStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelStatus', name: 'TunnelStatus')
    TunnelSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelSummary', name: 'TunnelSummary')
    TunnelSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.iotsecuretunneling#TunnelSummaryList', name: 'TunnelSummaryList')
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.iotsecuretunneling#UntagResourceResponse', name: 'UntagResourceResponse')

    ClientMode.add_member(:source, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SOURCE', traits: {"smithy.api#enumValue" => "SOURCE"}))
    ClientMode.add_member(:destination, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESTINATION', traits: {"smithy.api#enumValue" => "DESTINATION"}))
    ClientMode.add_member(:all, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    CloseTunnelRequest.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CloseTunnelRequest.add_member(:delete, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFlag, location_name: 'delete', traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "delete"}))
    CloseTunnelRequest.type = Types::CloseTunnelRequest
    CloseTunnelResponse.type = Types::CloseTunnelResponse
    ConnectionState.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: 'status'))
    ConnectionState.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt'))
    ConnectionState.type = Types::ConnectionState
    ConnectionStatus.add_member(:connected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    ConnectionStatus.add_member(:disconnected, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISCONNECTED', traits: {"smithy.api#enumValue" => "DISCONNECTED"}))
    DescribeTunnelRequest.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeTunnelRequest.type = Types::DescribeTunnelRequest
    DescribeTunnelResponse.add_member(:tunnel, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tunnel, location_name: 'tunnel'))
    DescribeTunnelResponse.type = Types::DescribeTunnelResponse
    DestinationConfig.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName'))
    DestinationConfig.add_member(:services, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceList, location_name: 'services', traits: {"smithy.api#required" => {}}))
    DestinationConfig.type = Types::DestinationConfig
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    LimitExceededException.type = Types::LimitExceededException
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ListTunnelsRequest.add_member(:thing_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThingName, location_name: 'thingName', traits: {"smithy.api#httpQuery" => "thingName"}))
    ListTunnelsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'maxResults', traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListTunnelsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListTunnelsRequest.type = Types::ListTunnelsRequest
    ListTunnelsResponse.add_member(:tunnel_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelSummaryList, location_name: 'tunnelSummaries'))
    ListTunnelsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken'))
    ListTunnelsResponse.type = Types::ListTunnelsResponse
    OpenTunnelRequest.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    OpenTunnelRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    OpenTunnelRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig'))
    OpenTunnelRequest.add_member(:timeout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: 'timeoutConfig'))
    OpenTunnelRequest.type = Types::OpenTunnelRequest
    OpenTunnelResponse.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId'))
    OpenTunnelResponse.add_member(:tunnel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn'))
    OpenTunnelResponse.add_member(:source_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'sourceAccessToken'))
    OpenTunnelResponse.add_member(:destination_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'destinationAccessToken'))
    OpenTunnelResponse.type = Types::OpenTunnelResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RotateTunnelAccessTokenRequest.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId', traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RotateTunnelAccessTokenRequest.add_member(:client_mode, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientMode, location_name: 'clientMode', traits: {"smithy.api#required" => {}}))
    RotateTunnelAccessTokenRequest.add_member(:destination_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig'))
    RotateTunnelAccessTokenRequest.type = Types::RotateTunnelAccessTokenRequest
    RotateTunnelAccessTokenResponse.add_member(:tunnel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn'))
    RotateTunnelAccessTokenResponse.add_member(:source_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'sourceAccessToken'))
    RotateTunnelAccessTokenResponse.add_member(:destination_access_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: 'destinationAccessToken'))
    RotateTunnelAccessTokenResponse.type = Types::RotateTunnelAccessTokenResponse
    ServiceList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Service)
    Tag.add_member(:key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimeoutConfig.add_member(:max_lifetime_timeout_minutes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutInMin, location_name: 'maxLifetimeTimeoutMinutes'))
    TimeoutConfig.type = Types::TimeoutConfig
    Tunnel.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId'))
    Tunnel.add_member(:tunnel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn'))
    Tunnel.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelStatus, location_name: 'status'))
    Tunnel.add_member(:source_connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'sourceConnectionState'))
    Tunnel.add_member(:destination_connection_state, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConnectionState, location_name: 'destinationConnectionState'))
    Tunnel.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    Tunnel.add_member(:destination_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DestinationConfig, location_name: 'destinationConfig'))
    Tunnel.add_member(:timeout_config, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: 'timeoutConfig'))
    Tunnel.add_member(:tags, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags'))
    Tunnel.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'createdAt'))
    Tunnel.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt'))
    Tunnel.type = Types::Tunnel
    TunnelStatus.add_member(:open, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OPEN', traits: {"smithy.api#enumValue" => "OPEN"}))
    TunnelStatus.add_member(:closed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLOSED', traits: {"smithy.api#enumValue" => "CLOSED"}))
    TunnelSummary.add_member(:tunnel_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelId, location_name: 'tunnelId'))
    TunnelSummary.add_member(:tunnel_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelArn, location_name: 'tunnelArn'))
    TunnelSummary.add_member(:status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelStatus, location_name: 'status'))
    TunnelSummary.add_member(:description, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description'))
    TunnelSummary.add_member(:created_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'createdAt'))
    TunnelSummary.add_member(:last_updated_at, ::Smithy::Schema::Shapes::ShapeRef.new(shape: DateType, location_name: 'lastUpdatedAt'))
    TunnelSummary.type = Types::TunnelSummary
    TunnelSummaryList.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TunnelSummary)
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AmazonResourceName, location_name: 'resourceArn', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse

    IoTSecuredTunneling = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iotsecuretunneling#IoTSecuredTunneling"
      service.name = "IoTSecuredTunneling"
      service.version = "2018-10-05"
      service.traits = {"aws.api#service" => {"sdkId" => "IoTSecureTunneling", "arnNamespace" => "iotsecuredtunneling", "cloudFormationName" => "IoTSecureTunneling", "cloudTrailEventSource" => "iotsecuretunneling.amazonaws.com", "endpointPrefix" => "api.tunneling.iot"}, "aws.auth#sigv4" => {"name" => "IoTSecuredTunneling"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS IoT Secure Tunneling"}
      service.add_operation(:close_tunnel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#CloseTunnel"
        operation.name = "CloseTunnel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseTunnelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: CloseTunnelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tunnels/{tunnelId}", "code" => 200}}
      end)
      service.add_operation(:describe_tunnel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#DescribeTunnel"
        operation.name = "DescribeTunnel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTunnelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeTunnelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tunnels/{tunnelId}", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:list_tunnels, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#ListTunnels"
        operation.name = "ListTunnels"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTunnelsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListTunnelsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tunnels", "code" => 200}}
        operation[:paginator] = Paginators::ListTunnels.new
      end)
      service.add_operation(:open_tunnel, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#OpenTunnel"
        operation.name = "OpenTunnel"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTunnelRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: OpenTunnelResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tunnels", "code" => 200}}
      end)
      service.add_operation(:rotate_tunnel_access_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#RotateTunnelAccessToken"
        operation.name = "RotateTunnelAccessToken"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateTunnelAccessTokenRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: RotateTunnelAccessTokenResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tunnel/{tunnelId}/rotate", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#TagResource"
        operation.name = "TagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iotsecuretunneling#UntagResource"
        operation.name = "UntagResource"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/untag", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
