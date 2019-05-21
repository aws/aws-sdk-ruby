# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    AddFlowOutputs420Exception = Shapes::StructureShape.new(name: 'AddFlowOutputs420Exception')
    AddFlowOutputsRequest = Shapes::StructureShape.new(name: 'AddFlowOutputsRequest')
    AddFlowOutputsResponse = Shapes::StructureShape.new(name: 'AddFlowOutputsResponse')
    AddOutputRequest = Shapes::StructureShape.new(name: 'AddOutputRequest')
    Algorithm = Shapes::StringShape.new(name: 'Algorithm')
    BadRequestException = Shapes::StructureShape.new(name: 'BadRequestException')
    CreateFlow420Exception = Shapes::StructureShape.new(name: 'CreateFlow420Exception')
    CreateFlowRequest = Shapes::StructureShape.new(name: 'CreateFlowRequest')
    CreateFlowResponse = Shapes::StructureShape.new(name: 'CreateFlowResponse')
    DeleteFlowRequest = Shapes::StructureShape.new(name: 'DeleteFlowRequest')
    DeleteFlowResponse = Shapes::StructureShape.new(name: 'DeleteFlowResponse')
    DescribeFlowRequest = Shapes::StructureShape.new(name: 'DescribeFlowRequest')
    DescribeFlowResponse = Shapes::StructureShape.new(name: 'DescribeFlowResponse')
    Encryption = Shapes::StructureShape.new(name: 'Encryption')
    Entitlement = Shapes::StructureShape.new(name: 'Entitlement')
    Flow = Shapes::StructureShape.new(name: 'Flow')
    ForbiddenException = Shapes::StructureShape.new(name: 'ForbiddenException')
    GrantEntitlementRequest = Shapes::StructureShape.new(name: 'GrantEntitlementRequest')
    GrantFlowEntitlements420Exception = Shapes::StructureShape.new(name: 'GrantFlowEntitlements420Exception')
    GrantFlowEntitlementsRequest = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsRequest')
    GrantFlowEntitlementsResponse = Shapes::StructureShape.new(name: 'GrantFlowEntitlementsResponse')
    InternalServerErrorException = Shapes::StructureShape.new(name: 'InternalServerErrorException')
    KeyType = Shapes::StringShape.new(name: 'KeyType')
    ListEntitlementsRequest = Shapes::StructureShape.new(name: 'ListEntitlementsRequest')
    ListEntitlementsResponse = Shapes::StructureShape.new(name: 'ListEntitlementsResponse')
    ListFlowsRequest = Shapes::StructureShape.new(name: 'ListFlowsRequest')
    ListFlowsResponse = Shapes::StructureShape.new(name: 'ListFlowsResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListedEntitlement = Shapes::StructureShape.new(name: 'ListedEntitlement')
    ListedFlow = Shapes::StructureShape.new(name: 'ListedFlow')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    Messages = Shapes::StructureShape.new(name: 'Messages')
    NotFoundException = Shapes::StructureShape.new(name: 'NotFoundException')
    Output = Shapes::StructureShape.new(name: 'Output')
    Protocol = Shapes::StringShape.new(name: 'Protocol')
    RemoveFlowOutputRequest = Shapes::StructureShape.new(name: 'RemoveFlowOutputRequest')
    RemoveFlowOutputResponse = Shapes::StructureShape.new(name: 'RemoveFlowOutputResponse')
    ResponseError = Shapes::StructureShape.new(name: 'ResponseError')
    RevokeFlowEntitlementRequest = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementRequest')
    RevokeFlowEntitlementResponse = Shapes::StructureShape.new(name: 'RevokeFlowEntitlementResponse')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    SetSourceRequest = Shapes::StructureShape.new(name: 'SetSourceRequest')
    Source = Shapes::StructureShape.new(name: 'Source')
    SourceType = Shapes::StringShape.new(name: 'SourceType')
    StartFlowRequest = Shapes::StructureShape.new(name: 'StartFlowRequest')
    StartFlowResponse = Shapes::StructureShape.new(name: 'StartFlowResponse')
    Status = Shapes::StringShape.new(name: 'Status')
    StopFlowRequest = Shapes::StructureShape.new(name: 'StopFlowRequest')
    StopFlowResponse = Shapes::StructureShape.new(name: 'StopFlowResponse')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TooManyRequestsException = Shapes::StructureShape.new(name: 'TooManyRequestsException')
    Transport = Shapes::StructureShape.new(name: 'Transport')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UpdateEncryption = Shapes::StructureShape.new(name: 'UpdateEncryption')
    UpdateFlowEntitlementRequest = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementRequest')
    UpdateFlowEntitlementResponse = Shapes::StructureShape.new(name: 'UpdateFlowEntitlementResponse')
    UpdateFlowOutputRequest = Shapes::StructureShape.new(name: 'UpdateFlowOutputRequest')
    UpdateFlowOutputResponse = Shapes::StructureShape.new(name: 'UpdateFlowOutputResponse')
    UpdateFlowSourceRequest = Shapes::StructureShape.new(name: 'UpdateFlowSourceRequest')
    UpdateFlowSourceResponse = Shapes::StructureShape.new(name: 'UpdateFlowSourceResponse')
    __boolean = Shapes::BooleanShape.new(name: '__boolean')
    __double = Shapes::FloatShape.new(name: '__double')
    __integer = Shapes::IntegerShape.new(name: '__integer')
    __listOfAddOutputRequest = Shapes::ListShape.new(name: '__listOfAddOutputRequest')
    __listOfEntitlement = Shapes::ListShape.new(name: '__listOfEntitlement')
    __listOfGrantEntitlementRequest = Shapes::ListShape.new(name: '__listOfGrantEntitlementRequest')
    __listOfListedEntitlement = Shapes::ListShape.new(name: '__listOfListedEntitlement')
    __listOfListedFlow = Shapes::ListShape.new(name: '__listOfListedFlow')
    __listOfOutput = Shapes::ListShape.new(name: '__listOfOutput')
    __listOf__string = Shapes::ListShape.new(name: '__listOf__string')
    __long = Shapes::IntegerShape.new(name: '__long')
    __mapOf__string = Shapes::MapShape.new(name: '__mapOf__string')
    __string = Shapes::StringShape.new(name: '__string')
    __timestampIso8601 = Shapes::TimestampShape.new(name: '__timestampIso8601', timestampFormat: "iso8601")
    __timestampUnix = Shapes::TimestampShape.new(name: '__timestampUnix', timestampFormat: "unixTimestamp")

    AddFlowOutputs420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    AddFlowOutputs420Exception.struct_class = Types::AddFlowOutputs420Exception

    AddFlowOutputsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    AddFlowOutputsRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, required: true, location_name: "outputs"))
    AddFlowOutputsRequest.struct_class = Types::AddFlowOutputsRequest

    AddFlowOutputsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    AddFlowOutputsResponse.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, location_name: "outputs"))
    AddFlowOutputsResponse.struct_class = Types::AddFlowOutputsResponse

    AddOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    AddOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "destination"))
    AddOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    AddOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    AddOutputRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    AddOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, required: true, location_name: "port"))
    AddOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    AddOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    AddOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    AddOutputRequest.struct_class = Types::AddOutputRequest

    BadRequestException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    BadRequestException.struct_class = Types::BadRequestException

    CreateFlow420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    CreateFlow420Exception.struct_class = Types::CreateFlow420Exception

    CreateFlowRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, location_name: "availabilityZone"))
    CreateFlowRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, location_name: "entitlements"))
    CreateFlowRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    CreateFlowRequest.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfAddOutputRequest, location_name: "outputs"))
    CreateFlowRequest.add_member(:source, Shapes::ShapeRef.new(shape: SetSourceRequest, required: true, location_name: "source"))
    CreateFlowRequest.struct_class = Types::CreateFlowRequest

    CreateFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    CreateFlowResponse.struct_class = Types::CreateFlowResponse

    DeleteFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    DeleteFlowRequest.struct_class = Types::DeleteFlowRequest

    DeleteFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    DeleteFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    DeleteFlowResponse.struct_class = Types::DeleteFlowResponse

    DescribeFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    DescribeFlowRequest.struct_class = Types::DescribeFlowRequest

    DescribeFlowResponse.add_member(:flow, Shapes::ShapeRef.new(shape: Flow, location_name: "flow"))
    DescribeFlowResponse.add_member(:messages, Shapes::ShapeRef.new(shape: Messages, location_name: "messages"))
    DescribeFlowResponse.struct_class = Types::DescribeFlowResponse

    Encryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, required: true, location_name: "algorithm"))
    Encryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    Encryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "roleArn"))
    Encryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "secretArn"))
    Encryption.struct_class = Types::Encryption

    Entitlement.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Entitlement.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Entitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementArn"))
    Entitlement.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Entitlement.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subscribers"))
    Entitlement.struct_class = Types::Entitlement

    Flow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "availabilityZone"))
    Flow.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Flow.add_member(:egress_ip, Shapes::ShapeRef.new(shape: __string, location_name: "egressIp"))
    Flow.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, required: true, location_name: "entitlements"))
    Flow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    Flow.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Flow.add_member(:outputs, Shapes::ShapeRef.new(shape: __listOfOutput, required: true, location_name: "outputs"))
    Flow.add_member(:source, Shapes::ShapeRef.new(shape: Source, required: true, location_name: "source"))
    Flow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    Flow.struct_class = Types::Flow

    ForbiddenException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ForbiddenException.struct_class = Types::ForbiddenException

    GrantEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    GrantEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    GrantEntitlementRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    GrantEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "subscribers"))
    GrantEntitlementRequest.struct_class = Types::GrantEntitlementRequest

    GrantFlowEntitlements420Exception.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    GrantFlowEntitlements420Exception.struct_class = Types::GrantFlowEntitlements420Exception

    GrantFlowEntitlementsRequest.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfGrantEntitlementRequest, required: true, location_name: "entitlements"))
    GrantFlowEntitlementsRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    GrantFlowEntitlementsRequest.struct_class = Types::GrantFlowEntitlementsRequest

    GrantFlowEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfEntitlement, location_name: "entitlements"))
    GrantFlowEntitlementsResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    GrantFlowEntitlementsResponse.struct_class = Types::GrantFlowEntitlementsResponse

    InternalServerErrorException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    InternalServerErrorException.struct_class = Types::InternalServerErrorException

    ListEntitlementsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListEntitlementsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListEntitlementsRequest.struct_class = Types::ListEntitlementsRequest

    ListEntitlementsResponse.add_member(:entitlements, Shapes::ShapeRef.new(shape: __listOfListedEntitlement, location_name: "entitlements"))
    ListEntitlementsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListEntitlementsResponse.struct_class = Types::ListEntitlementsResponse

    ListFlowsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "maxResults"))
    ListFlowsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location: "querystring", location_name: "nextToken"))
    ListFlowsRequest.struct_class = Types::ListFlowsRequest

    ListFlowsResponse.add_member(:flows, Shapes::ShapeRef.new(shape: __listOfListedFlow, location_name: "flows"))
    ListFlowsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: __string, location_name: "nextToken"))
    ListFlowsResponse.struct_class = Types::ListFlowsResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, location_name: "tags"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListedEntitlement.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementArn"))
    ListedEntitlement.add_member(:entitlement_name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "entitlementName"))
    ListedEntitlement.struct_class = Types::ListedEntitlement

    ListedFlow.add_member(:availability_zone, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "availabilityZone"))
    ListedFlow.add_member(:description, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "description"))
    ListedFlow.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "flowArn"))
    ListedFlow.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    ListedFlow.add_member(:source_type, Shapes::ShapeRef.new(shape: SourceType, required: true, location_name: "sourceType"))
    ListedFlow.add_member(:status, Shapes::ShapeRef.new(shape: Status, required: true, location_name: "status"))
    ListedFlow.struct_class = Types::ListedFlow

    Messages.add_member(:errors, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location_name: "errors"))
    Messages.struct_class = Types::Messages

    NotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    NotFoundException.struct_class = Types::NotFoundException

    Output.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Output.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    Output.add_member(:encryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "encryption"))
    Output.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    Output.add_member(:media_live_input_arn, Shapes::ShapeRef.new(shape: __string, location_name: "mediaLiveInputArn"))
    Output.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Output.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "outputArn"))
    Output.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    Output.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Output.struct_class = Types::Output

    RemoveFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    RemoveFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputArn"))
    RemoveFlowOutputRequest.struct_class = Types::RemoveFlowOutputRequest

    RemoveFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RemoveFlowOutputResponse.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, location_name: "outputArn"))
    RemoveFlowOutputResponse.struct_class = Types::RemoveFlowOutputResponse

    ResponseError.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ResponseError.struct_class = Types::ResponseError

    RevokeFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "entitlementArn"))
    RevokeFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    RevokeFlowEntitlementRequest.struct_class = Types::RevokeFlowEntitlementRequest

    RevokeFlowEntitlementResponse.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    RevokeFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    RevokeFlowEntitlementResponse.struct_class = Types::RevokeFlowEntitlementResponse

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    SetSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    SetSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    SetSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    SetSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    SetSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    SetSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    SetSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: __string, location_name: "name"))
    SetSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    SetSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    SetSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    SetSourceRequest.struct_class = Types::SetSourceRequest

    Source.add_member(:decryption, Shapes::ShapeRef.new(shape: Encryption, location_name: "decryption"))
    Source.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    Source.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    Source.add_member(:ingest_ip, Shapes::ShapeRef.new(shape: __string, location_name: "ingestIp"))
    Source.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    Source.add_member(:name, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "name"))
    Source.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "sourceArn"))
    Source.add_member(:transport, Shapes::ShapeRef.new(shape: Transport, location_name: "transport"))
    Source.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    Source.struct_class = Types::Source

    StartFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    StartFlowRequest.struct_class = Types::StartFlowRequest

    StartFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    StartFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StartFlowResponse.struct_class = Types::StartFlowResponse

    StopFlowRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    StopFlowRequest.struct_class = Types::StopFlowRequest

    StopFlowResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    StopFlowResponse.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "status"))
    StopFlowResponse.struct_class = Types::StopFlowResponse

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: __mapOf__string, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TooManyRequestsException.add_member(:message, Shapes::ShapeRef.new(shape: __string, required: true, location_name: "message"))
    TooManyRequestsException.struct_class = Types::TooManyRequestsException

    Transport.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    Transport.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    Transport.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, required: true, location_name: "protocol"))
    Transport.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    Transport.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    Transport.struct_class = Types::Transport

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: __listOf__string, required: true, location: "querystring", location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UpdateEncryption.add_member(:algorithm, Shapes::ShapeRef.new(shape: Algorithm, location_name: "algorithm"))
    UpdateEncryption.add_member(:key_type, Shapes::ShapeRef.new(shape: KeyType, location_name: "keyType"))
    UpdateEncryption.add_member(:role_arn, Shapes::ShapeRef.new(shape: __string, location_name: "roleArn"))
    UpdateEncryption.add_member(:secret_arn, Shapes::ShapeRef.new(shape: __string, location_name: "secretArn"))
    UpdateEncryption.struct_class = Types::UpdateEncryption

    UpdateFlowEntitlementRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowEntitlementRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowEntitlementRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "entitlementArn"))
    UpdateFlowEntitlementRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    UpdateFlowEntitlementRequest.add_member(:subscribers, Shapes::ShapeRef.new(shape: __listOf__string, location_name: "subscribers"))
    UpdateFlowEntitlementRequest.struct_class = Types::UpdateFlowEntitlementRequest

    UpdateFlowEntitlementResponse.add_member(:entitlement, Shapes::ShapeRef.new(shape: Entitlement, location_name: "entitlement"))
    UpdateFlowEntitlementResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowEntitlementResponse.struct_class = Types::UpdateFlowEntitlementResponse

    UpdateFlowOutputRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowOutputRequest.add_member(:destination, Shapes::ShapeRef.new(shape: __string, location_name: "destination"))
    UpdateFlowOutputRequest.add_member(:encryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "encryption"))
    UpdateFlowOutputRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    UpdateFlowOutputRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    UpdateFlowOutputRequest.add_member(:output_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "outputArn"))
    UpdateFlowOutputRequest.add_member(:port, Shapes::ShapeRef.new(shape: __integer, location_name: "port"))
    UpdateFlowOutputRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowOutputRequest.add_member(:smoothing_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "smoothingLatency"))
    UpdateFlowOutputRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    UpdateFlowOutputRequest.struct_class = Types::UpdateFlowOutputRequest

    UpdateFlowOutputResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowOutputResponse.add_member(:output, Shapes::ShapeRef.new(shape: Output, location_name: "output"))
    UpdateFlowOutputResponse.struct_class = Types::UpdateFlowOutputResponse

    UpdateFlowSourceRequest.add_member(:decryption, Shapes::ShapeRef.new(shape: UpdateEncryption, location_name: "decryption"))
    UpdateFlowSourceRequest.add_member(:description, Shapes::ShapeRef.new(shape: __string, location_name: "description"))
    UpdateFlowSourceRequest.add_member(:entitlement_arn, Shapes::ShapeRef.new(shape: __string, location_name: "entitlementArn"))
    UpdateFlowSourceRequest.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "flowArn"))
    UpdateFlowSourceRequest.add_member(:ingest_port, Shapes::ShapeRef.new(shape: __integer, location_name: "ingestPort"))
    UpdateFlowSourceRequest.add_member(:max_bitrate, Shapes::ShapeRef.new(shape: __integer, location_name: "maxBitrate"))
    UpdateFlowSourceRequest.add_member(:max_latency, Shapes::ShapeRef.new(shape: __integer, location_name: "maxLatency"))
    UpdateFlowSourceRequest.add_member(:protocol, Shapes::ShapeRef.new(shape: Protocol, location_name: "protocol"))
    UpdateFlowSourceRequest.add_member(:source_arn, Shapes::ShapeRef.new(shape: __string, required: true, location: "uri", location_name: "sourceArn"))
    UpdateFlowSourceRequest.add_member(:stream_id, Shapes::ShapeRef.new(shape: __string, location_name: "streamId"))
    UpdateFlowSourceRequest.add_member(:whitelist_cidr, Shapes::ShapeRef.new(shape: __string, location_name: "whitelistCidr"))
    UpdateFlowSourceRequest.struct_class = Types::UpdateFlowSourceRequest

    UpdateFlowSourceResponse.add_member(:flow_arn, Shapes::ShapeRef.new(shape: __string, location_name: "flowArn"))
    UpdateFlowSourceResponse.add_member(:source, Shapes::ShapeRef.new(shape: Source, location_name: "source"))
    UpdateFlowSourceResponse.struct_class = Types::UpdateFlowSourceResponse

    __listOfAddOutputRequest.member = Shapes::ShapeRef.new(shape: AddOutputRequest)

    __listOfEntitlement.member = Shapes::ShapeRef.new(shape: Entitlement)

    __listOfGrantEntitlementRequest.member = Shapes::ShapeRef.new(shape: GrantEntitlementRequest)

    __listOfListedEntitlement.member = Shapes::ShapeRef.new(shape: ListedEntitlement)

    __listOfListedFlow.member = Shapes::ShapeRef.new(shape: ListedFlow)

    __listOfOutput.member = Shapes::ShapeRef.new(shape: Output)

    __listOf__string.member = Shapes::ShapeRef.new(shape: __string)

    __mapOf__string.key = Shapes::ShapeRef.new(shape: __string)
    __mapOf__string.value = Shapes::ShapeRef.new(shape: __string)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-11-14"

      api.metadata = {
        "apiVersion" => "2018-11-14",
        "endpointPrefix" => "mediaconnect",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "AWS MediaConnect",
        "serviceId" => "MediaConnect",
        "signatureVersion" => "v4",
        "signingName" => "mediaconnect",
        "uid" => "mediaconnect-2018-11-14",
      }

      api.add_operation(:add_flow_outputs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AddFlowOutputs"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs"
        o.input = Shapes::ShapeRef.new(shape: AddFlowOutputsRequest)
        o.output = Shapes::ShapeRef.new(shape: AddFlowOutputsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AddFlowOutputs420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:create_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows"
        o.input = Shapes::ShapeRef.new(shape: CreateFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: CreateFlow420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:delete_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFlow"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:describe_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFlow"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:grant_flow_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GrantFlowEntitlements"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements"
        o.input = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: GrantFlowEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: GrantFlowEntitlements420Exception)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:list_entitlements, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListEntitlements"
        o.http_method = "GET"
        o.http_request_uri = "/v1/entitlements"
        o.input = Shapes::ShapeRef.new(shape: ListEntitlementsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListEntitlementsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_flows, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFlows"
        o.http_method = "GET"
        o.http_request_uri = "/v1/flows"
        o.input = Shapes::ShapeRef.new(shape: ListFlowsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFlowsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:remove_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RemoveFlowOutput"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs/{outputArn}"
        o.input = Shapes::ShapeRef.new(shape: RemoveFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: RemoveFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:revoke_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RevokeFlowEntitlement"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements/{entitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: RevokeFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:start_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/start/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: StartFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StartFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:stop_flow, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopFlow"
        o.http_method = "POST"
        o.http_request_uri = "/v1/flows/stop/{flowArn}"
        o.input = Shapes::ShapeRef.new(shape: StopFlowRequest)
        o.output = Shapes::ShapeRef.new(shape: StopFlowResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/tags/{resourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
      end)

      api.add_operation(:update_flow_entitlement, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowEntitlement"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/entitlements/{entitlementArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowEntitlementResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_output, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowOutput"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/outputs/{outputArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowOutputRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowOutputResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)

      api.add_operation(:update_flow_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFlowSource"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/flows/{flowArn}/source/{sourceArn}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFlowSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFlowSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: BadRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerErrorException)
        o.errors << Shapes::ShapeRef.new(shape: ForbiddenException)
        o.errors << Shapes::ShapeRef.new(shape: NotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: TooManyRequestsException)
      end)
    end

  end
end
