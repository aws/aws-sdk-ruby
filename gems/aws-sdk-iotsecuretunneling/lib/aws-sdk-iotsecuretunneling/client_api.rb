# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTSecureTunneling
  # @api private
  module ClientApi

    include Seahorse::Model

    AmazonResourceName = Shapes::StringShape.new(name: 'AmazonResourceName')
    ClientAccessToken = Shapes::StringShape.new(name: 'ClientAccessToken')
    CloseTunnelRequest = Shapes::StructureShape.new(name: 'CloseTunnelRequest')
    CloseTunnelResponse = Shapes::StructureShape.new(name: 'CloseTunnelResponse')
    ConnectionState = Shapes::StructureShape.new(name: 'ConnectionState')
    ConnectionStatus = Shapes::StringShape.new(name: 'ConnectionStatus')
    DateType = Shapes::TimestampShape.new(name: 'DateType')
    DeleteFlag = Shapes::BooleanShape.new(name: 'DeleteFlag')
    DescribeTunnelRequest = Shapes::StructureShape.new(name: 'DescribeTunnelRequest')
    DescribeTunnelResponse = Shapes::StructureShape.new(name: 'DescribeTunnelResponse')
    Description = Shapes::StringShape.new(name: 'Description')
    DestinationConfig = Shapes::StructureShape.new(name: 'DestinationConfig')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTunnelsRequest = Shapes::StructureShape.new(name: 'ListTunnelsRequest')
    ListTunnelsResponse = Shapes::StructureShape.new(name: 'ListTunnelsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    OpenTunnelRequest = Shapes::StructureShape.new(name: 'OpenTunnelRequest')
    OpenTunnelResponse = Shapes::StructureShape.new(name: 'OpenTunnelResponse')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    Service = Shapes::StringShape.new(name: 'Service')
    ServiceList = Shapes::ListShape.new(name: 'ServiceList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThingName = Shapes::StringShape.new(name: 'ThingName')
    TimeoutConfig = Shapes::StructureShape.new(name: 'TimeoutConfig')
    TimeoutInMin = Shapes::IntegerShape.new(name: 'TimeoutInMin')
    Tunnel = Shapes::StructureShape.new(name: 'Tunnel')
    TunnelArn = Shapes::StringShape.new(name: 'TunnelArn')
    TunnelId = Shapes::StringShape.new(name: 'TunnelId')
    TunnelStatus = Shapes::StringShape.new(name: 'TunnelStatus')
    TunnelSummary = Shapes::StructureShape.new(name: 'TunnelSummary')
    TunnelSummaryList = Shapes::ListShape.new(name: 'TunnelSummaryList')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')

    CloseTunnelRequest.add_member(:tunnel_id, Shapes::ShapeRef.new(shape: TunnelId, required: true, location_name: "tunnelId"))
    CloseTunnelRequest.add_member(:delete, Shapes::ShapeRef.new(shape: DeleteFlag, location_name: "delete", metadata: {"box"=>true}))
    CloseTunnelRequest.struct_class = Types::CloseTunnelRequest

    CloseTunnelResponse.struct_class = Types::CloseTunnelResponse

    ConnectionState.add_member(:status, Shapes::ShapeRef.new(shape: ConnectionStatus, location_name: "status"))
    ConnectionState.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    ConnectionState.struct_class = Types::ConnectionState

    DescribeTunnelRequest.add_member(:tunnel_id, Shapes::ShapeRef.new(shape: TunnelId, required: true, location_name: "tunnelId"))
    DescribeTunnelRequest.struct_class = Types::DescribeTunnelRequest

    DescribeTunnelResponse.add_member(:tunnel, Shapes::ShapeRef.new(shape: Tunnel, location_name: "tunnel"))
    DescribeTunnelResponse.struct_class = Types::DescribeTunnelResponse

    DestinationConfig.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, required: true, location_name: "thingName"))
    DestinationConfig.add_member(:services, Shapes::ShapeRef.new(shape: ServiceList, required: true, location_name: "services"))
    DestinationConfig.struct_class = Types::DestinationConfig

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTunnelsRequest.add_member(:thing_name, Shapes::ShapeRef.new(shape: ThingName, location_name: "thingName"))
    ListTunnelsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "maxResults", metadata: {"box"=>true}))
    ListTunnelsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTunnelsRequest.struct_class = Types::ListTunnelsRequest

    ListTunnelsResponse.add_member(:tunnel_summaries, Shapes::ShapeRef.new(shape: TunnelSummaryList, location_name: "tunnelSummaries"))
    ListTunnelsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListTunnelsResponse.struct_class = Types::ListTunnelsResponse

    OpenTunnelRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    OpenTunnelRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    OpenTunnelRequest.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "destinationConfig"))
    OpenTunnelRequest.add_member(:timeout_config, Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: "timeoutConfig"))
    OpenTunnelRequest.struct_class = Types::OpenTunnelRequest

    OpenTunnelResponse.add_member(:tunnel_id, Shapes::ShapeRef.new(shape: TunnelId, location_name: "tunnelId"))
    OpenTunnelResponse.add_member(:tunnel_arn, Shapes::ShapeRef.new(shape: TunnelArn, location_name: "tunnelArn"))
    OpenTunnelResponse.add_member(:source_access_token, Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: "sourceAccessToken"))
    OpenTunnelResponse.add_member(:destination_access_token, Shapes::ShapeRef.new(shape: ClientAccessToken, location_name: "destinationAccessToken"))
    OpenTunnelResponse.struct_class = Types::OpenTunnelResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceList.member = Shapes::ShapeRef.new(shape: Service)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.struct_class = Types::TagResourceResponse

    TimeoutConfig.add_member(:max_lifetime_timeout_minutes, Shapes::ShapeRef.new(shape: TimeoutInMin, location_name: "maxLifetimeTimeoutMinutes", metadata: {"box"=>true}))
    TimeoutConfig.struct_class = Types::TimeoutConfig

    Tunnel.add_member(:tunnel_id, Shapes::ShapeRef.new(shape: TunnelId, location_name: "tunnelId"))
    Tunnel.add_member(:tunnel_arn, Shapes::ShapeRef.new(shape: TunnelArn, location_name: "tunnelArn"))
    Tunnel.add_member(:status, Shapes::ShapeRef.new(shape: TunnelStatus, location_name: "status"))
    Tunnel.add_member(:source_connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "sourceConnectionState"))
    Tunnel.add_member(:destination_connection_state, Shapes::ShapeRef.new(shape: ConnectionState, location_name: "destinationConnectionState"))
    Tunnel.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    Tunnel.add_member(:destination_config, Shapes::ShapeRef.new(shape: DestinationConfig, location_name: "destinationConfig"))
    Tunnel.add_member(:timeout_config, Shapes::ShapeRef.new(shape: TimeoutConfig, location_name: "timeoutConfig"))
    Tunnel.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    Tunnel.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, location_name: "createdAt"))
    Tunnel.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    Tunnel.struct_class = Types::Tunnel

    TunnelSummary.add_member(:tunnel_id, Shapes::ShapeRef.new(shape: TunnelId, location_name: "tunnelId"))
    TunnelSummary.add_member(:tunnel_arn, Shapes::ShapeRef.new(shape: TunnelArn, location_name: "tunnelArn"))
    TunnelSummary.add_member(:status, Shapes::ShapeRef.new(shape: TunnelStatus, location_name: "status"))
    TunnelSummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    TunnelSummary.add_member(:created_at, Shapes::ShapeRef.new(shape: DateType, location_name: "createdAt"))
    TunnelSummary.add_member(:last_updated_at, Shapes::ShapeRef.new(shape: DateType, location_name: "lastUpdatedAt"))
    TunnelSummary.struct_class = Types::TunnelSummary

    TunnelSummaryList.member = Shapes::ShapeRef.new(shape: TunnelSummary)

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: AmazonResourceName, required: true, location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.struct_class = Types::UntagResourceResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-10-05"

      api.metadata = {
        "apiVersion" => "2018-10-05",
        "endpointPrefix" => "api.tunneling.iot",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceFullName" => "AWS IoT Secure Tunneling",
        "serviceId" => "IoTSecureTunneling",
        "signatureVersion" => "v4",
        "signingName" => "IoTSecuredTunneling",
        "targetPrefix" => "IoTSecuredTunneling",
        "uid" => "iotsecuretunneling-2018-10-05",
      }

      api.add_operation(:close_tunnel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CloseTunnel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CloseTunnelRequest)
        o.output = Shapes::ShapeRef.new(shape: CloseTunnelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_tunnel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTunnel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeTunnelRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTunnelResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_tunnels, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTunnels"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: ListTunnelsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTunnelsResponse)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:open_tunnel, Seahorse::Model::Operation.new.tap do |o|
        o.name = "OpenTunnel"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: OpenTunnelRequest)
        o.output = Shapes::ShapeRef.new(shape: OpenTunnelResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)
    end

  end
end
