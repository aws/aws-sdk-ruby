# frozen_string_literal: true

# This is generated code!

module Aws::MediaConnect
  # This module contains the types returned by client operations.
  module Types

    # <p> Add a flow source to an existing bridge. </p>
    # @!attribute flow_arn
    #   <p> The Amazon Resource Number (ARN) of the flow to use as a source of this bridge. </p>
    #   @return [String]
    # @!attribute flow_vpc_interface_attachment
    #   <p>The name of the VPC interface attachment to use for this source. </p>
    #   @return [Types::VpcInterfaceAttachment]
    # @!attribute name
    #   <p> The name of the flow source. This name is used to reference the source and must be unique among sources in this bridge. </p>
    #   @return [String]
    class AddBridgeFlowSourceRequest < Struct.new(
      nil,
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Add a network output to an existing bridge. </p>
    # @!attribute ip_address
    #   <p> The network output IP Address. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The network output name. This name is used to reference the output and must be unique among outputs in this bridge. </p>
    #   @return [String]
    # @!attribute network_name
    #   <p> The network output's gateway network name. </p>
    #   @return [String]
    # @!attribute port
    #   <p> The network output port. </p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The network output protocol. </p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute ttl
    #   <p> The network output TTL. </p>
    #   @return [Integer]
    class AddBridgeNetworkOutputRequest < Struct.new(
      nil,
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Add a network source to an existing bridge. </p>
    # @!attribute multicast_ip
    #   <p> The network source multicast IP.</p>
    #   @return [String]
    # @!attribute multicast_source_settings
    #   <p> The settings related to the multicast source. </p>
    #   @return [Types::MulticastSourceSettings]
    # @!attribute name
    #   <p> The name of the network source. This name is used to reference the source and must be unique among sources in this bridge.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p> The network source's gateway network name.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The network source port.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The network source protocol.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    class AddBridgeNetworkSourceRequest < Struct.new(
      nil,
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Add outputs to the specified bridge.</p>
    # @!attribute network_output
    #   <p> The network output of the bridge. A network output is delivered to your premises. </p>
    #   @return [Types::AddBridgeNetworkOutputRequest]
    class AddBridgeOutputRequest < Struct.new(
      nil,
      :network_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeOutputRequest>]
    class AddBridgeOutputsRequest < Struct.new(
      nil,
      :bridge_arn,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that you added outputs to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you added to this bridge.</p>
    #   @return [Array<Types::BridgeOutput>]
    class AddBridgeOutputsResponse < Struct.new(
      nil,
      :bridge_arn,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Add an output to a bridge. </p>
    # @!attribute flow_source
    #   <p> The source of the flow. </p>
    #   @return [Types::AddBridgeFlowSourceRequest]
    # @!attribute network_source
    #   <p> The source of the network. </p>
    #   @return [Types::AddBridgeNetworkSourceRequest]
    class AddBridgeSourceRequest < Struct.new(
      nil,
      :flow_source,
      :network_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The sources that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeSourceRequest>]
    class AddBridgeSourcesRequest < Struct.new(
      nil,
      :bridge_arn,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that you added sources to.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The sources that you added to this bridge.</p>
    #   @return [Array<Types::BridgeSource>]
    class AddBridgeSourcesResponse < Struct.new(
      nil,
      :bridge_arn,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Create a bridge with the egress bridge type. An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the egress bridge.</p>
    #   @return [Integer]
    class AddEgressGatewayBridgeRequest < Struct.new(
      nil,
      :max_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute media_streams
    #   <p> The media streams that you want to add to the flow.</p>
    #   @return [Array<Types::AddMediaStreamRequest>]
    class AddFlowMediaStreamsRequest < Struct.new(
      nil,
      :flow_arn,
      :media_streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you added media streams to.</p>
    #   @return [String]
    # @!attribute media_streams
    #   <p> The media streams that you added to the flow.</p>
    #   @return [Array<Types::MediaStream>]
    class AddFlowMediaStreamsResponse < Struct.new(
      nil,
      :flow_arn,
      :media_streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when adding the flow output. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class AddFlowOutputs420Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to add outputs to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> A list of outputs that you want to add to the flow.</p>
    #   @return [Array<Types::AddOutputRequest>]
    class AddFlowOutputsRequest < Struct.new(
      nil,
      :flow_arn,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these outputs were added to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The details of the newly added outputs.</p>
    #   @return [Array<Types::Output>]
    class AddFlowOutputsResponse < Struct.new(
      nil,
      :flow_arn,
      :outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> A list of sources that you want to add to the flow.</p>
    #   @return [Array<Types::SetSourceRequest>]
    class AddFlowSourcesRequest < Struct.new(
      nil,
      :flow_arn,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these sources were added to.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The details of the newly added sources.</p>
    #   @return [Array<Types::Source>]
    class AddFlowSourcesResponse < Struct.new(
      nil,
      :flow_arn,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute vpc_interfaces
    #   <p> A list of VPC interfaces that you want to add to the flow.</p>
    #   @return [Array<Types::VpcInterfaceRequest>]
    class AddFlowVpcInterfacesRequest < Struct.new(
      nil,
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these VPC interfaces were added to.</p>
    #   @return [String]
    # @!attribute vpc_interfaces
    #   <p> The details of the newly added VPC interfaces.</p>
    #   @return [Array<Types::VpcInterface>]
    class AddFlowVpcInterfacesResponse < Struct.new(
      nil,
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Create a bridge with the ingress bridge type. An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the ingress bridge. </p>
    #   @return [Integer]
    # @!attribute max_outputs
    #   <p> The maximum number of expected outputs on the ingress bridge. </p>
    #   @return [Integer]
    class AddIngressGatewayBridgeRequest < Struct.new(
      nil,
      :max_bitrate,
      :max_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Create a maintenance setting for a flow.</p>
    # @!attribute maintenance_day
    #   <p> A day of a week when the maintenance will happen. </p>
    #   @return [String]
    # @!attribute maintenance_start_hour
    #   <p> UTC time when the maintenance will happen. </p> <p>Use 24-hour HH:MM format. </p> <p>Minutes must be 00. </p> <p>Example: 13:00. </p> <p>The default value is 02:00.</p>
    #   @return [String]
    class AddMaintenance < Struct.new(
      nil,
      :maintenance_day,
      :maintenance_start_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The media stream that you want to add to the flow. </p>
    # @!attribute attributes
    #   <p> The attributes that you want to assign to the new media stream.</p>
    #   @return [Types::MediaStreamAttributesRequest]
    # @!attribute clock_rate
    #   <p> The sample rate (in Hz) for the stream. If the media stream type is video or ancillary data, set this value to 90000. If the media stream type is audio, set this value to either 48000 or 96000.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p> A description that can help you quickly identify what your media stream is used for.</p>
    #   @return [String]
    # @!attribute media_stream_id
    #   <p> A unique identifier for the media stream. </p>
    #   @return [Integer]
    # @!attribute media_stream_name
    #   <p> A name that helps you distinguish one media stream from another.</p>
    #   @return [String]
    # @!attribute media_stream_type
    #   <p> The type of media stream.</p>
    #   @return [String]
    # @!attribute video_format
    #   <p> The resolution of the video.</p>
    #   @return [String]
    # @!attribute media_stream_tags
    #   <p> The key-value pairs that can be used to tag and organize the media stream. </p>
    #   @return [Hash<String, String>]
    class AddMediaStreamRequest < Struct.new(
      nil,
      :attributes,
      :clock_rate,
      :description,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      :media_stream_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A request to add an output to a flow.</p>
    # @!attribute cidr_allow_list
    #   <p> The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p> A description of the output. This description appears only on the Audit Manager console and will not be seen by the end user.</p>
    #   @return [String]
    # @!attribute destination
    #   <p> The IP address from which video will be sent to output destinations.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key). Allowable encryption types: static-key.</p>
    #   @return [Types::Encryption]
    # @!attribute max_latency
    #   <p> The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams.</p>
    #   @return [Integer]
    # @!attribute media_stream_output_configurations
    #   <p> The media streams that are associated with the output, and the parameters for those associations.</p>
    #   @return [Array<Types::MediaStreamOutputConfigurationRequest>]
    # @!attribute min_latency
    #   <p> The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p> The name of the output. This value must be unique within the current flow.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The port to use when content is distributed to this output.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The protocol to use for the output.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute remote_id
    #   <p> The remote ID for the Zixi-pull output stream.</p>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute smoothing_latency
    #   <p> The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p> The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this output.</p>
    #   @return [Types::VpcInterfaceAttachment]
    # @!attribute output_status
    #   <p> An indication of whether the new output should be enabled or disabled as soon as it is created. If you don't specify the outputStatus field in your request, MediaConnect sets it to ENABLED.</p>
    #   @return [String]
    # @!attribute ndi_speed_hq_quality
    #   <p>A quality setting for the NDI Speed HQ encoder. </p>
    #   @return [Integer]
    # @!attribute ndi_program_name
    #   <p> A suffix for the name of the NDI® sender that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    # @!attribute output_tags
    #   <p> The key-value pairs that can be used to tag and organize the output. </p>
    #   @return [Hash<String, String>]
    # @!attribute router_integration_state
    #   <p>Indicates whether to enable or disable router integration when creating a new flow output.</p>
    #   @return [String]
    # @!attribute router_integration_transit_encryption
    #   <p>The configuration that defines how content is encrypted during transit between the MediaConnect router and a MediaConnect flow.</p>
    #   @return [Types::FlowTransitEncryption]
    # @!attribute ndi_output_timecode_source
    #   <p>Controls how MediaConnect generates timecodes for NDI output frames. If you don't specify this field, MediaConnect uses <code>EMBEDDED_TIMECODE</code>.</p> <ul> <li> <p> <code>EMBEDDED_TIMECODE</code> (default) - Preserves timecodes from the input transport stream. The timecodes must be embedded in the video stream as SEI timing messages. If no embedded timecode is detected, MediaConnect uses the UTC system time instead.</p> </li> <li> <p> <code>UTC_SYSTEM_TIME</code> - Generates timecodes based on the system clock time when each frame is sent.</p> </li> </ul>
    #   @return [String]
    # @!attribute ndi_audio_reference_level
    #   <p>The audio reference level of the NDI receiver, in decibels relative to full scale (dBFS). Common values are <code>-20</code> (NDI and SMPTE) and <code>-18</code> (EBU). If you don't specify this field, MediaConnect uses <code>-20</code>.</p>
    #   @return [Integer]
    class AddOutputRequest < Struct.new(
      nil,
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :name,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      :output_status,
      :ndi_speed_hq_quality,
      :ndi_program_name,
      :output_tags,
      :router_integration_state,
      :router_integration_transit_encryption,
      :ndi_output_timecode_source,
      :ndi_audio_reference_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Specifies the configuration for audio stream metrics monitoring.</p>
    # @!attribute silent_audio
    #   <p> Detects periods of silence. </p>
    #   @return [Types::SilentAudio]
    class AudioMonitoringSetting < Struct.new(
      nil,
      :silent_audio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for automatic encryption key management, where MediaConnect handles key creation and rotation.</p>
    class AutomaticEncryptionKeyConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>This exception is thrown if the request contains a semantic error. The precise meaning depends on the API, and is documented in the error message. </p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred when retrieving multiple router inputs in the BatchGetRouterInput operation, including the ARN, error code, and error message.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input for which the error occurred.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class BatchGetRouterInputError < Struct.new(
      nil,
      :arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The Amazon Resource Names (ARNs) of the router inputs you want to retrieve information about.</p>
    #   @return [Array<String>]
    class BatchGetRouterInputRequest < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_inputs
    #   <p>An array of router inputs that were successfully retrieved.</p>
    #   @return [Array<Types::RouterInput>]
    # @!attribute errors
    #   <p>An array of errors that occurred when retrieving the requested router inputs.</p>
    #   @return [Array<Types::BatchGetRouterInputError>]
    class BatchGetRouterInputResponse < Struct.new(
      nil,
      :router_inputs,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred when retrieving multiple router network interfaces in the BatchGetRouterNetworkInterface operation, including the ARN, error code, and error message.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface for which the error occurred.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class BatchGetRouterNetworkInterfaceError < Struct.new(
      nil,
      :arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The Amazon Resource Names (ARNs) of the router network interfaces you want to retrieve information about.</p>
    #   @return [Array<String>]
    class BatchGetRouterNetworkInterfaceRequest < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_network_interfaces
    #   <p>An array of router network interfaces that were successfully retrieved.</p>
    #   @return [Array<Types::RouterNetworkInterface>]
    # @!attribute errors
    #   <p>An array of errors that occurred when retrieving the requested router network interfaces.</p>
    #   @return [Array<Types::BatchGetRouterNetworkInterfaceError>]
    class BatchGetRouterNetworkInterfaceResponse < Struct.new(
      nil,
      :router_network_interfaces,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An error that occurred when retrieving multiple router outputs in the BatchGetRouterOutput operation, including the ARN, error code, and error message.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output for which the error occurred.</p>
    #   @return [String]
    # @!attribute code
    #   <p>The error code associated with the error.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the error.</p>
    #   @return [String]
    class BatchGetRouterOutputError < Struct.new(
      nil,
      :arn,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arns
    #   <p>The Amazon Resource Names (ARNs) of the router outputs you want to retrieve information about.</p>
    #   @return [Array<String>]
    class BatchGetRouterOutputRequest < Struct.new(
      nil,
      :arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_outputs
    #   <p>An array of router outputs that were successfully retrieved.</p>
    #   @return [Array<Types::RouterOutput>]
    # @!attribute errors
    #   <p>An array of errors that occurred when retrieving the requested router outputs.</p>
    #   @return [Array<Types::BatchGetRouterOutputError>]
    class BatchGetRouterOutputResponse < Struct.new(
      nil,
      :router_outputs,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configures settings for the <code>BlackFrames</code> metric.</p>
    # @!attribute state
    #   <p> Indicates whether the <code>BlackFrames</code> metric is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p> Specifies the number of consecutive seconds of black frames that triggers an event or alert.</p>
    #   @return [Integer]
    class BlackFrames < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detects black frames in the router input's source content and reports them through a CloudWatch metric, an EventBridge event, and a router input message.</p>
    # @!attribute state
    #   <p>Indicates whether black frames detection is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p>The number of consecutive seconds of black frames that MediaConnect must detect before it reports an issue.</p>
    #   @return [Integer]
    class BlackFramesConfiguration < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A Bridge is the connection between your data center's Instances and the Amazon Web Services cloud. A bridge can be used to send video from the Amazon Web Services cloud to your data center or from your data center to the Amazon Web Services cloud.</p>
    # @!attribute bridge_arn
    #   <p> The Amazon Resource Number (ARN) of the bridge.</p>
    #   @return [String]
    # @!attribute bridge_messages
    #   <p> Messages with details about the bridge. </p>
    #   @return [Array<Types::MessageDetail>]
    # @!attribute bridge_state
    #   <p>The state of the bridge. </p>
    #   @return [String]
    # @!attribute egress_gateway_bridge
    #   <p> An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    #   @return [Types::EgressGatewayBridge]
    # @!attribute ingress_gateway_bridge
    #   <p> An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    #   @return [Types::IngressGatewayBridge]
    # @!attribute name
    #   <p> The name of the bridge.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs on this bridge.</p>
    #   @return [Array<Types::BridgeOutput>]
    # @!attribute placement_arn
    #   <p> The placement Amazon Resource Number (ARN) of the bridge.</p>
    #   @return [String]
    # @!attribute source_failover_config
    #   <p> The settings for source failover. </p>
    #   @return [Types::FailoverConfig]
    # @!attribute sources
    #   <p> The sources on this bridge.</p>
    #   @return [Array<Types::BridgeSource>]
    class Bridge < Struct.new(
      nil,
      :bridge_arn,
      :bridge_messages,
      :bridge_state,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :name,
      :outputs,
      :placement_arn,
      :source_failover_config,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The output of the bridge. A flow output is delivered to the Amazon Web Services cloud. </p>
    # @!attribute flow_arn
    #   <p> The Amazon Resource Number (ARN) of the cloud flow.</p>
    #   @return [String]
    # @!attribute flow_source_arn
    #   <p> The Amazon Resource Number (ARN) of the flow source.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the bridge's output.</p>
    #   @return [String]
    class BridgeFlowOutput < Struct.new(
      nil,
      :flow_arn,
      :flow_source_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source of the bridge. A flow source originates in MediaConnect as an existing cloud flow.</p>
    # @!attribute flow_arn
    #   <p> The ARN of the cloud flow used as a source of this bridge.</p>
    #   @return [String]
    # @!attribute flow_vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    # @!attribute name
    #   <p> The name of the flow source.</p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The Amazon Resource Number (ARN) of the output.</p>
    #   @return [String]
    class BridgeFlowSource < Struct.new(
      nil,
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name,
      :output_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The output of the bridge. A network output is delivered to your premises.</p>
    # @!attribute ip_address
    #   <p> The network output IP address.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The network output name.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p> The network output's gateway network name.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The network output's port.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The network output protocol.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute ttl
    #   <p> The network output TTL.</p>
    #   @return [Integer]
    class BridgeNetworkOutput < Struct.new(
      nil,
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source of the bridge. A network source originates at your premises.</p>
    # @!attribute multicast_ip
    #   <p> The network source multicast IP.</p>
    #   @return [String]
    # @!attribute multicast_source_settings
    #   <p>The settings related to the multicast source. </p>
    #   @return [Types::MulticastSourceSettings]
    # @!attribute name
    #   <p> The name of the network source.</p>
    #   @return [String]
    # @!attribute network_name
    #   <p> The network source's gateway network name.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The network source port.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The network source protocol.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    class BridgeNetworkSource < Struct.new(
      nil,
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The output of the bridge.</p>
    # @!attribute flow_output
    #   <p> The output of the associated flow. </p>
    #   @return [Types::BridgeFlowOutput]
    # @!attribute network_output
    #   <p> The network output for the bridge. </p>
    #   @return [Types::BridgeNetworkOutput]
    class BridgeOutput < Struct.new(
      nil,
      :flow_output,
      :network_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The bridge's source.</p>
    # @!attribute flow_source
    #   <p> The source of the associated flow. </p>
    #   @return [Types::BridgeFlowSource]
    # @!attribute network_source
    #   <p> The network source for the bridge. </p>
    #   @return [Types::BridgeNetworkSource]
    class BridgeSource < Struct.new(
      nil,
      :flow_source,
      :network_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The color signaling of the video stream.</p>
    # @!attribute colorimetry
    #   <p>The color primaries that the video stream uses (for example, <code>BT709</code> or <code>BT2020</code>).</p>
    #   @return [String]
    # @!attribute transfer_characteristics
    #   <p>The transfer characteristics that the video stream uses (for example, <code>BT601</code>, <code>BT709</code>, <code>BT2100_PQ</code>, or <code>BT2100_HLG</code>).</p>
    #   @return [String]
    # @!attribute matrix_coefficients
    #   <p>The YCbCr matrix coefficients that the video stream uses (for example, <code>BT709</code> or <code>BT2020_NCL</code>).</p>
    #   @return [String]
    class ColorInformation < Struct.new(
      nil,
      :colorimetry,
      :transfer_characteristics,
      :matrix_coefficients,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures the content quality analysis features for the router input.</p>
    # @!attribute black_frames
    #   <p>Settings for black frames detection.</p>
    #   @return [Types::BlackFramesConfiguration]
    # @!attribute frozen_frames
    #   <p>Settings for frozen frames detection.</p>
    #   @return [Types::FrozenFramesConfiguration]
    # @!attribute silent_audio
    #   <p>Settings for silent audio detection.</p>
    #   @return [Types::SilentAudioConfiguration]
    class ContentQualityAnalysisFeatureConfiguration < Struct.new(
      nil,
      :black_frames,
      :frozen_frames,
      :silent_audio,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when creating the bridge. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateBridge420Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute egress_gateway_bridge
    #   <p>An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    #   @return [Types::AddEgressGatewayBridgeRequest]
    # @!attribute ingress_gateway_bridge
    #   <p>An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    #   @return [Types::AddIngressGatewayBridgeRequest]
    # @!attribute name
    #   <p> The name of the bridge. This name can not be modified after the bridge is created.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeOutputRequest>]
    # @!attribute placement_arn
    #   <p> The bridge placement Amazon Resource Number (ARN).</p>
    #   @return [String]
    # @!attribute source_failover_config
    #   <p> The settings for source failover.</p>
    #   @return [Types::FailoverConfig]
    # @!attribute sources
    #   <p> The sources that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeSourceRequest>]
    class CreateBridgeRequest < Struct.new(
      nil,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :name,
      :outputs,
      :placement_arn,
      :source_failover_config,
      :sources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p> The name of the bridge that was created.</p>
    #   @return [Types::Bridge]
    class CreateBridgeResponse < Struct.new(
      nil,
      :bridge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when creating the flow. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateFlow420Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute availability_zone
    #   <p> The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute entitlements
    #   <p> The entitlements that you want to grant on a flow.</p>
    #   @return [Array<Types::GrantEntitlementRequest>]
    # @!attribute media_streams
    #   <p> The media streams that you want to add to the flow. You can associate these media streams with sources and outputs on the flow.</p>
    #   @return [Array<Types::AddMediaStreamRequest>]
    # @!attribute name
    #   <p> The name of the flow.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you want to add to this flow.</p>
    #   @return [Array<Types::AddOutputRequest>]
    # @!attribute source
    #   <p> The settings for the source that you want to use for the new flow. </p>
    #   @return [Types::SetSourceRequest]
    # @!attribute source_failover_config
    #   <p> The settings for source failover. </p>
    #   @return [Types::FailoverConfig]
    # @!attribute sources
    #   <p>The sources that are assigned to the flow. </p>
    #   @return [Array<Types::SetSourceRequest>]
    # @!attribute vpc_interfaces
    #   <p> The VPC interfaces you want on the flow.</p>
    #   @return [Array<Types::VpcInterfaceRequest>]
    # @!attribute maintenance
    #   <p> The maintenance settings you want to use for the flow. </p>
    #   @return [Types::AddMaintenance]
    # @!attribute source_monitoring_config
    #   <p> The settings for source monitoring. </p>
    #   @return [Types::MonitoringConfig]
    # @!attribute flow_size
    #   <p> Determines the processing capacity and feature set of the flow. Set this optional parameter to <code>LARGE</code> if you want to enable NDI sources or outputs on the flow. </p>
    #   @return [String]
    # @!attribute ndi_config
    #   <p> Specifies the configuration settings for a flow's NDI source or output. Required when the flow includes an NDI source or output. </p>
    #   @return [Types::NdiConfig]
    # @!attribute encoding_config
    #   <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. You can choose between several predefined encoding profiles based on common use cases. </p>
    #   @return [Types::EncodingConfig]
    # @!attribute flow_tags
    #   <p> The key-value pairs that can be used to tag and organize the flow. </p>
    #   @return [Hash<String, String>]
    class CreateFlowRequest < Struct.new(
      nil,
      :availability_zone,
      :entitlements,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :vpc_interfaces,
      :maintenance,
      :source_monitoring_config,
      :flow_size,
      :ndi_config,
      :encoding_config,
      :flow_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p> The flow that you created. </p>
    #   @return [Types::Flow]
    class CreateFlowResponse < Struct.new(
      nil,
      :flow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when creating the gateway. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateGateway420Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute egress_cidr_blocks
    #   <p> The range of IP addresses that are allowed to contribute content or initiate output requests for flows communicating with this gateway. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [Array<String>]
    # @!attribute name
    #   <p> The name of the gateway. This name can not be modified after the gateway is created.</p>
    #   @return [String]
    # @!attribute networks
    #   <p> The list of networks that you want to add to the gateway.</p>
    #   @return [Array<Types::GatewayNetwork>]
    class CreateGatewayRequest < Struct.new(
      nil,
      :egress_cidr_blocks,
      :name,
      :networks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway
    #   <p> The gateway that you created. </p>
    #   @return [Types::Gateway]
    class CreateGatewayResponse < Struct.new(
      nil,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the router input.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for the router input, which can include the protocol, network interface, and other details.</p>
    #   @return [Types::RouterInputConfiguration]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate for the router input.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Specifies whether the router input can be assigned to outputs in different Regions. REGIONAL (default) - connects only to outputs in same Region. GLOBAL - connects to outputs in any Region.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier level for the router input. The tier sets the maximum bitrate, in Mbps, for the router input. Valid values include the following:</p> <ul> <li> <p> <code>INPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>INPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>INPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>INPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>INPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region for the router input. Defaults to the current region if not specified.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you want to create the router input. This must be a valid Availability Zone for the region specified by <code>regionName</code>, or the current region if no <code>regionName</code> is provided. </p>
    #   @return [String]
    # @!attribute transit_encryption
    #   <p>The transit encryption settings for the router input.</p>
    #   @return [Types::RouterInputTransitEncryption]
    # @!attribute maintenance_configuration
    #   <p>The maintenance configuration settings for the router input, including preferred maintenance windows and schedules.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag and organize this router input.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    #   @return [String]
    # @!attribute content_quality_analysis_configuration
    #   <p>The content quality analysis configuration for the router input.</p>
    #   @return [Types::RouterContentQualityAnalysisConfiguration]
    class CreateRouterInputRequest < Struct.new(
      nil,
      :name,
      :configuration,
      :maximum_bitrate,
      :routing_scope,
      :tier,
      :region_name,
      :availability_zone,
      :transit_encryption,
      :maintenance_configuration,
      :tags,
      :client_token,
      :content_quality_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_input
    #   <p>The newly-created router input.</p>
    #   @return [Types::RouterInput]
    class CreateRouterInputResponse < Struct.new(
      nil,
      :router_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the router network interface.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for the router network interface.</p>
    #   @return [Types::RouterNetworkInterfaceConfiguration]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region for the router network interface. Defaults to the current region if not specified.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag and organize this router network interface.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRouterNetworkInterfaceRequest < Struct.new(
      nil,
      :name,
      :configuration,
      :region_name,
      :tags,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_network_interface
    #   <p>The newly-created router network interface.</p>
    #   @return [Types::RouterNetworkInterface]
    class CreateRouterNetworkInterfaceResponse < Struct.new(
      nil,
      :router_network_interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the router output.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for the router output.</p>
    #   @return [Types::RouterOutputConfiguration]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate for the router output.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Specifies whether the router output can take inputs that are in different Regions. REGIONAL (default) - can only take inputs from same Region. GLOBAL - can take inputs from any Region.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier level for the router output. The tier sets the maximum bitrate, in Mbps, for the router output. Valid values include the following:</p> <ul> <li> <p> <code>OUTPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>OUTPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>OUTPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>OUTPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>OUTPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region for the router output. Defaults to the current region if not specified.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you want to create the router output. This must be a valid Availability Zone for the region specified by <code>regionName</code>, or the current region if no <code>regionName</code> is provided. </p>
    #   @return [String]
    # @!attribute maintenance_configuration
    #   <p>The maintenance configuration settings for the router output, including preferred maintenance windows and schedules.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag this router output.</p>
    #   @return [Hash<String, String>]
    # @!attribute fabric_configuration
    #   <p>The fabric configuration settings for the router output.</p>
    #   @return [Types::FabricConfiguration]
    # @!attribute client_token
    #   <p>A unique identifier for the request to ensure idempotency.</p>
    #   @return [String]
    class CreateRouterOutputRequest < Struct.new(
      nil,
      :name,
      :configuration,
      :maximum_bitrate,
      :routing_scope,
      :tier,
      :region_name,
      :availability_zone,
      :maintenance_configuration,
      :tags,
      :fabric_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_output
    #   <p>The newly-created router output.</p>
    #   @return [Types::RouterOutput]
    class CreateRouterOutputResponse < Struct.new(
      nil,
      :router_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for default maintenance scheduling.</p>
    class DefaultMaintenanceConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to delete.</p>
    #   @return [String]
    class DeleteBridgeRequest < Struct.new(
      nil,
      :bridge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the deleted bridge.</p>
    #   @return [String]
    class DeleteBridgeResponse < Struct.new(
      nil,
      :bridge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to delete.</p>
    #   @return [String]
    class DeleteFlowRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>DeleteFlow</code> process begins.</p>
    #   @return [String]
    class DeleteFlowResponse < Struct.new(
      nil,
      :flow_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that you want to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The ARN of the gateway that was deleted.</p>
    #   @return [String]
    class DeleteGatewayResponse < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to delete.</p>
    #   @return [String]
    class DeleteRouterInputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted router input.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted router input.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the deleted router input, indicating where it is in the deletion process.</p>
    #   @return [String]
    class DeleteRouterInputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to delete.</p>
    #   @return [String]
    class DeleteRouterNetworkInterfaceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted router network interface.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted router network interface.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the deleted router network interface, indicating where it is in the deletion process.</p>
    #   @return [String]
    class DeleteRouterNetworkInterfaceResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to delete.</p>
    #   @return [String]
    class DeleteRouterOutputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the deleted router output.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the deleted router output.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the deleted router output, indicating where it is in the deletion process.</p>
    #   @return [String]
    class DeleteRouterOutputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute force
    #   <p> Force the deregistration of an instance. Force will deregister an instance, even if there are bridges running on it.</p>
    #   @return [Boolean]
    # @!attribute gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that contains the instance that you want to deregister.</p>
    #   @return [String]
    class DeregisterGatewayInstanceRequest < Struct.new(
      nil,
      :force,
      :gateway_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_instance_arn
    #   <p> The ARN of the instance.</p>
    #   @return [String]
    # @!attribute instance_state
    #   <p> The status of the instance.</p>
    #   @return [String]
    class DeregisterGatewayInstanceResponse < Struct.new(
      nil,
      :gateway_instance_arn,
      :instance_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to describe.</p>
    #   @return [String]
    class DescribeBridgeRequest < Struct.new(
      nil,
      :bridge_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p>The bridge that you requested a description of. </p>
    #   @return [Types::Bridge]
    class DescribeBridgeResponse < Struct.new(
      nil,
      :bridge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you want to describe.</p>
    #   @return [String]
    class DescribeFlowRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p>The flow that you requested a description of. </p>
    #   @return [Types::Flow]
    # @!attribute messages
    #   <p> Any errors that apply currently to the flow. If there are no errors, MediaConnect will not include this field in the response. </p>
    #   @return [Types::Messages]
    class DescribeFlowResponse < Struct.new(
      nil,
      :flow,
      :messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    class DescribeFlowSourceMetadataRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that DescribeFlowSourceMetadata was performed on.</p>
    #   @return [String]
    # @!attribute messages
    #   <p> Provides a status code and message regarding issues found with the flow source metadata.</p>
    #   @return [Array<Types::MessageDetail>]
    # @!attribute timestamp
    #   <p> The timestamp of the most recent change in metadata for this flow’s source.</p>
    #   @return [Time]
    # @!attribute transport_media_info
    #   <p> Information about the flow's transport media. </p>
    #   @return [Types::TransportMediaInfo]
    # @!attribute ndi_info
    #   <p> The NDI® specific information about the flow's source. This includes the current active NDI sender, a list of all discovered NDI senders, the associated media streams for the active NDI sender, and any relevant status messages. </p>
    #   @return [Types::NdiSourceMetadataInfo]
    class DescribeFlowSourceMetadataResponse < Struct.new(
      nil,
      :flow_arn,
      :messages,
      :timestamp,
      :transport_media_info,
      :ndi_info,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    class DescribeFlowSourceThumbnailRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute thumbnail_details
    #   <p>The details of the thumbnail, including thumbnail base64 string, timecode and the time when thumbnail was generated. </p>
    #   @return [Types::ThumbnailDetails]
    class DescribeFlowSourceThumbnailResponse < Struct.new(
      nil,
      :thumbnail_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway instance that you want to describe.</p>
    #   @return [String]
    class DescribeGatewayInstanceRequest < Struct.new(
      nil,
      :gateway_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_instance
    #   <p>The gateway instance that you requested a description of. </p>
    #   @return [Types::GatewayInstance]
    class DescribeGatewayInstanceResponse < Struct.new(
      nil,
      :gateway_instance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The ARN of the gateway that you want to describe.</p>
    #   @return [String]
    class DescribeGatewayRequest < Struct.new(
      nil,
      :gateway_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateway
    #   <p>The gateway that you wanted to describe. </p>
    #   @return [Types::Gateway]
    class DescribeGatewayResponse < Struct.new(
      nil,
      :gateway,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute offering_arn
    #   <p> The ARN of the offering.</p>
    #   @return [String]
    class DescribeOfferingRequest < Struct.new(
      nil,
      :offering_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute offering
    #   <p>The offering that you requested a description of. </p>
    #   @return [Types::Offering]
    class DescribeOfferingResponse < Struct.new(
      nil,
      :offering,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_arn
    #   <p>The Amazon Resource Name (ARN) of the offering. </p>
    #   @return [String]
    class DescribeReservationRequest < Struct.new(
      nil,
      :reservation_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p> A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate. </p>
    #   @return [Types::Reservation]
    class DescribeReservationResponse < Struct.new(
      nil,
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The transport parameters that you want to associate with an outbound media stream.</p>
    # @!attribute destination_ip
    #   <p>The IP address where you want MediaConnect to send contents of the media stream.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p> The port that you want MediaConnect to use when it distributes the media stream to the output.</p>
    #   @return [Integer]
    # @!attribute interface
    #   <p> The VPC interface that you want to use for the media stream associated with the output.</p>
    #   @return [Types::Interface]
    # @!attribute outbound_ip
    #   <p>The IP address that the receiver requires in order to establish a connection with the flow. This value is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the CDI or ST 2110 JPEG XS or protocol. </p>
    #   @return [String]
    class DestinationConfiguration < Struct.new(
      nil,
      :destination_ip,
      :destination_port,
      :interface,
      :outbound_ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The definition of a media stream that you want to associate with the output. </p>
    # @!attribute destination_ip
    #   <p>The IP address where you want MediaConnect to send contents of the media stream.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p> The port that you want MediaConnect to use when it distributes the media stream to the output.</p>
    #   @return [Integer]
    # @!attribute interface
    #   <p> The VPC interface that you want to use for the media stream associated with the output.</p>
    #   @return [Types::InterfaceRequest]
    class DestinationConfigurationRequest < Struct.new(
      nil,
      :destination_ip,
      :destination_port,
      :interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Create a bridge with the egress bridge type. An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @!attribute instance_id
    #   <p> The ID of the instance running this bridge.</p>
    #   @return [String]
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the egress bridge.</p>
    #   @return [Integer]
    class EgressGatewayBridge < Struct.new(
      nil,
      :instance_id,
      :max_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. You can choose between several predefined encoding profiles based on common use cases. </p>
    # @!attribute encoding_profile
    #   <p> The encoding profile to use when transcoding the NDI source content to a transport stream. You can change this value while the flow is running. </p>
    #   @return [String]
    # @!attribute video_max_bitrate
    #   <p> The maximum video bitrate to use when transcoding the NDI source to a transport stream. This parameter enables you to override the default video bitrate within the encoding profile's supported range. </p> <p> The supported range is 10,000,000 - 50,000,000 bits per second (bps). If you don't specify a value, MediaConnect uses the default value of 20,000,000 bps. </p>
    #   @return [Integer]
    class EncodingConfig < Struct.new(
      nil,
      :encoding_profile,
      :video_max_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.</p>
    # @!attribute compression_factor
    #   <p> A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.</p>
    #   @return [Float]
    # @!attribute encoder_profile
    #   <p> A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.</p>
    #   @return [String]
    class EncodingParameters < Struct.new(
      nil,
      :compression_factor,
      :encoder_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.</p>
    # @!attribute compression_factor
    #   <p> A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.</p>
    #   @return [Float]
    # @!attribute encoder_profile
    #   <p> A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, if at least one source on the flow uses the CDI protocol.</p>
    #   @return [String]
    class EncodingParametersRequest < Struct.new(
      nil,
      :compression_factor,
      :encoder_profile,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Encryption information.</p>
    # @!attribute algorithm
    #   <p> The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256).</p>
    #   @return [String]
    # @!attribute constant_initialization_vector
    #   <p> A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p> The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p> The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key).</p>
    #   @return [String]
    # @!attribute region
    #   <p> The Amazon Web Services Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The ARN of the role that you created during setup (when you set up MediaConnect as a trusted entity).</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p> The ARN of the secret that you created in Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption.</p>
    #   @return [String]
    # @!attribute url
    #   <p> The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    class Encryption < Struct.new(
      nil,
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for a flow entitlement.</p>
    # @!attribute data_transfer_subscriber_fee_percent
    #   <p> Percentage from 0-100 of the data transfer cost to be billed to the subscriber.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p> A description of the entitlement.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of encryption that will be used on the output that is associated with this entitlement.</p>
    #   @return [Types::Encryption]
    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement. </p>
    #   @return [String]
    # @!attribute entitlement_status
    #   <p> An indication of whether the entitlement is enabled. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the entitlement. </p>
    #   @return [String]
    # @!attribute subscribers
    #   <p> The Amazon Web Services account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source. </p>
    #   @return [Array<String>]
    class Entitlement < Struct.new(
      nil,
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :name,
      :subscribers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The fabric configuration settings for the router output.</p>
    # @!attribute recovery_latency_mode
    #   <p>The recovery latency mode for the router fabric connection. Valid values include the following:</p> <ul> <li> <p> <code>BALANCED</code> (default) – Optimizes for stream quality.</p> </li> <li> <p> <code>LOW_LATENCY</code> – Reduces latency at the potential cost of stream quality under adverse network conditions.</p> </li> </ul>
    #   @return [String]
    class FabricConfiguration < Struct.new(
      nil,
      :recovery_latency_mode,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for source failover.</p>
    # @!attribute failover_mode
    #   <p> The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams.</p>
    #   @return [String]
    # @!attribute recovery_window
    #   <p> Search window time to look for dash-7 packets.</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p> The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.</p>
    #   @return [Types::SourcePriority]
    # @!attribute state
    #   <p>The state of source failover on the flow. If the state is inactive, the flow can have only one source. If the state is active, the flow can have one or two sources. </p>
    #   @return [String]
    class FailoverConfig < Struct.new(
      nil,
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for a failover router input that allows switching between two input sources.</p>
    # @!attribute network_interface_arn
    #   <p>The ARN of the network interface to use for this failover router input.</p>
    #   @return [String]
    # @!attribute protocol_configurations
    #   <p>A list of exactly two protocol configurations for the failover input sources. Both must use the same protocol type.</p>
    #   @return [Array<Types::FailoverRouterInputProtocolConfiguration>]
    # @!attribute source_priority_mode
    #   <p>The mode for determining source priority in failover configurations.</p>
    #   @return [String]
    # @!attribute primary_source_index
    #   <p>The index (0 or 1) that specifies which source in the protocol configurations list is currently active. Used to control which of the two failover sources is currently selected. This field is ignored when sourcePriorityMode is set to NO_PRIORITY</p>
    #   @return [Integer]
    class FailoverRouterInputConfiguration < Struct.new(
      nil,
      :network_interface_arn,
      :protocol_configurations,
      :source_priority_mode,
      :primary_source_index,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for an indexed stream in a failover router input setup.</p>
    # @!attribute source_index
    #   <p>The index number (0 or 1) assigned to this source in the failover configuration.</p>
    #   @return [Integer]
    # @!attribute source_ip_address
    #   <p>The IP address of the source for this indexed stream.</p>
    #   @return [String]
    class FailoverRouterInputIndexedStreamDetails < Struct.new(
      nil,
      :source_index,
      :source_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Protocol configuration settings for failover router inputs.</p>
    # @!attribute rist
    #   <p>The configuration settings for a router input using the RIST (Reliable Internet Stream Transport) protocol, including the port and recovery latency.</p>
    #   @return [Types::RistRouterInputConfiguration]
    # @!attribute srt_listener
    #   <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in listener mode, including the port, minimum latency, and decryption key configuration.</p>
    #   @return [Types::SrtListenerRouterInputConfiguration]
    # @!attribute srt_caller
    #   <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in caller mode, including the source address and port, minimum latency, stream ID, and decryption key configuration.</p>
    #   @return [Types::SrtCallerRouterInputConfiguration]
    # @!attribute rtp
    #   <p>The configuration settings for a Router Input using the RTP (Real-Time Transport Protocol) protocol, including the port and forward error correction state.</p>
    #   @return [Types::RtpRouterInputConfiguration]
    class FailoverRouterInputProtocolConfiguration < Struct.new(
      :rist,
      :srt_listener,
      :srt_caller,
      :rtp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Rist < FailoverRouterInputProtocolConfiguration; end
      class SrtListener < FailoverRouterInputProtocolConfiguration; end
      class SrtCaller < FailoverRouterInputProtocolConfiguration; end
      class Rtp < FailoverRouterInputProtocolConfiguration; end
      class Unknown < FailoverRouterInputProtocolConfiguration; end
    end

    # <p>Configuration details for a failover router input that can automatically switch between two sources.</p>
    # @!attribute source_index_zero_stream_details
    #   <p>Configuration details for the primary source (index 0) in the failover setup.</p>
    #   @return [Types::FailoverRouterInputIndexedStreamDetails]
    # @!attribute source_index_one_stream_details
    #   <p>Configuration details for the secondary source (index 1) in the failover setup.</p>
    #   @return [Types::FailoverRouterInputIndexedStreamDetails]
    class FailoverRouterInputStreamDetails < Struct.new(
      nil,
      :source_index_zero_stream_details,
      :source_index_one_stream_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for a flow, including its source, outputs, and entitlements.</p>
    # @!attribute availability_zone
    #   <p> The Availability Zone that you want to create the flow in. These options are limited to the Availability Zones within the current Amazon Web Services Region.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the flow. This value is not used or seen outside of the current MediaConnect account.</p>
    #   @return [String]
    # @!attribute egress_ip
    #   <p> The IP address from which video will be sent to output destinations.</p>
    #   @return [String]
    # @!attribute entitlements
    #   <p> The entitlements in this flow.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute media_streams
    #   <p> The media streams that are associated with the flow. After you associate a media stream with a source, you can also associate it with outputs on the flow.</p>
    #   @return [Array<Types::MediaStream>]
    # @!attribute name
    #   <p> The name of the flow.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs in this flow.</p>
    #   @return [Array<Types::Output>]
    # @!attribute source
    #   <p> The source for the flow. </p>
    #   @return [Types::Source]
    # @!attribute source_failover_config
    #   <p> The settings for the source failover. </p>
    #   @return [Types::FailoverConfig]
    # @!attribute sources
    #   <p>The settings for the sources that are assigned to the flow. </p>
    #   @return [Array<Types::Source>]
    # @!attribute status
    #   <p> The current status of the flow.</p>
    #   @return [String]
    # @!attribute vpc_interfaces
    #   <p> The VPC Interfaces for this flow.</p>
    #   @return [Array<Types::VpcInterface>]
    # @!attribute maintenance
    #   <p> The maintenance settings for the flow. </p>
    #   @return [Types::Maintenance]
    # @!attribute source_monitoring_config
    #   <p> The settings for source monitoring. </p>
    #   @return [Types::MonitoringConfig]
    # @!attribute flow_size
    #   <p> Determines the processing capacity and feature set of the flow. </p>
    #   @return [String]
    # @!attribute ndi_config
    #   <p>Specifies the configuration settings for a flow's NDI source or output. Required when the flow includes an NDI source or output.</p>
    #   @return [Types::NdiConfig]
    # @!attribute encoding_config
    #   <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. </p>
    #   @return [Types::EncodingConfig]
    class Flow < Struct.new(
      nil,
      :availability_zone,
      :description,
      :egress_ip,
      :entitlements,
      :flow_arn,
      :media_streams,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :status,
      :vpc_interfaces,
      :maintenance,
      :source_monitoring_config,
      :flow_size,
      :ndi_config,
      :encoding_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration that defines how content is encrypted during transit between the MediaConnect router and a MediaConnect flow.</p>
    # @!attribute encryption_key_type
    #   <p>The type of encryption key to use for flow transit encryption.</p>
    #   @return [String]
    # @!attribute encryption_key_configuration
    #   <p>The configuration details for the encryption key.</p>
    #   @return [Types::FlowTransitEncryptionKeyConfiguration]
    class FlowTransitEncryption < Struct.new(
      nil,
      :encryption_key_type,
      :encryption_key_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for flow transit encryption keys.</p>
    # @!attribute secrets_manager
    #   <p>The configuration settings for transit encryption using Secrets Manager, including the secret ARN and role ARN.</p>
    #   @return [Types::SecretsManagerEncryptionKeyConfiguration]
    # @!attribute automatic
    #   <p>Configuration settings for automatic encryption key management, where MediaConnect handles key creation and rotation.</p>
    #   @return [Types::AutomaticEncryptionKeyConfiguration]
    class FlowTransitEncryptionKeyConfiguration < Struct.new(
      :secrets_manager,
      :automatic,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManager < FlowTransitEncryptionKeyConfiguration; end
      class Automatic < FlowTransitEncryptionKeyConfiguration; end
      class Unknown < FlowTransitEncryptionKeyConfiguration; end
    end

    # <p> A set of parameters that define the media stream. </p>
    # @!attribute channel_order
    #   <p> The format of the audio channel. </p>
    #   @return [String]
    # @!attribute colorimetry
    #   <p>The format used for the representation of color. </p>
    #   @return [String]
    # @!attribute exact_framerate
    #   <p>The frame rate for the video stream, in frames/second. For example: 60000/1001. </p>
    #   @return [String]
    # @!attribute par
    #   <p>The pixel aspect ratio (PAR) of the video. </p>
    #   @return [String]
    # @!attribute range
    #   <p>The encoding range of the video. </p>
    #   @return [String]
    # @!attribute scan_mode
    #   <p>The type of compression that was used to smooth the video’s appearance. </p>
    #   @return [String]
    # @!attribute tcs
    #   <p>The transfer characteristic system (TCS) that is used in the video. </p>
    #   @return [String]
    class Fmtp < Struct.new(
      nil,
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings that you want to use to define the media stream.</p>
    # @!attribute channel_order
    #   <p> The format of the audio channel.</p>
    #   @return [String]
    # @!attribute colorimetry
    #   <p> The format that is used for the representation of color.</p>
    #   @return [String]
    # @!attribute exact_framerate
    #   <p> The frame rate for the video stream, in frames/second. For example: 60000/1001. If you specify a whole number, MediaConnect uses a ratio of N/1. For example, if you specify 60, MediaConnect uses 60/1 as the <code>exactFramerate</code>.</p>
    #   @return [String]
    # @!attribute par
    #   <p> The pixel aspect ratio (PAR) of the video.</p>
    #   @return [String]
    # @!attribute range
    #   <p> The encoding range of the video.</p>
    #   @return [String]
    # @!attribute scan_mode
    #   <p> The type of compression that was used to smooth the video’s appearance.</p>
    #   @return [String]
    # @!attribute tcs
    #   <p> The transfer characteristic system (TCS) that is used in the video.</p>
    #   @return [String]
    class FmtpRequest < Struct.new(
      nil,
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The frame resolution used by the video stream.</p>
    # @!attribute frame_height
    #   <p> The number of pixels in the height of the video frame.</p>
    #   @return [Integer]
    # @!attribute frame_width
    #   <p> The number of pixels in the width of the video frame.</p>
    #   @return [Integer]
    class FrameResolution < Struct.new(
      nil,
      :frame_height,
      :frame_width,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Configures settings for the <code>FrozenFrames</code> metric.</p>
    # @!attribute state
    #   <p>Indicates whether the <code>FrozenFrames</code> metric is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p> Specifies the number of consecutive seconds of a static image that triggers an event or alert.</p>
    #   @return [Integer]
    class FrozenFrames < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detects frozen video frames in the router input's source content and reports them through a CloudWatch metric, an EventBridge event, and a router input message.</p>
    # @!attribute state
    #   <p>Indicates whether frozen frames detection is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p>The number of consecutive seconds of a frozen frame that MediaConnect must detect before it reports an issue.</p>
    #   @return [Integer]
    class FrozenFramesConfiguration < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for a gateway, including its networks. </p>
    # @!attribute egress_cidr_blocks
    #   <p> The range of IP addresses that contribute content or initiate output requests for flows communicating with this gateway. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [Array<String>]
    # @!attribute gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_messages
    #   <p>Messages with information about the gateway. </p>
    #   @return [Array<Types::MessageDetail>]
    # @!attribute gateway_state
    #   <p> The current status of the gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the gateway. This name can not be modified after the gateway is created.</p>
    #   @return [String]
    # @!attribute networks
    #   <p> The list of networks in the gateway.</p>
    #   @return [Array<Types::GatewayNetwork>]
    class Gateway < Struct.new(
      nil,
      :egress_cidr_blocks,
      :gateway_arn,
      :gateway_messages,
      :gateway_state,
      :name,
      :networks,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class GatewayBridgeSource < Struct.new(
      nil,
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for an instance in a gateway.</p>
    # @!attribute bridge_placement
    #   <p>The availability of the instance to host new bridges. The bridgePlacement property can be LOCKED or AVAILABLE. If it is LOCKED, no new bridges can be deployed to this instance. If it is AVAILABLE, new bridges can be deployed to this instance. </p>
    #   @return [String]
    # @!attribute connection_status
    #   <p>The connection state of the instance. </p>
    #   @return [String]
    # @!attribute gateway_arn
    #   <p>The Amazon Resource Name (ARN) of the instance. </p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p>The ARN of the gateway. </p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>The instance ID generated by the SSM install. This will begin with "mi-". </p>
    #   @return [String]
    # @!attribute instance_messages
    #   <p> Messages with information about the gateway. </p>
    #   @return [Array<Types::MessageDetail>]
    # @!attribute instance_state
    #   <p>The status of the instance. </p>
    #   @return [String]
    # @!attribute running_bridge_count
    #   <p> The running bridge count. </p>
    #   @return [Integer]
    class GatewayInstance < Struct.new(
      nil,
      :bridge_placement,
      :connection_status,
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_messages,
      :instance_state,
      :running_bridge_count,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The network settings for a gateway. </p>
    # @!attribute cidr_block
    #   <p>A unique IP address range to use for this network. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network. This name is used to reference the network and must be unique among networks in this gateway. </p>
    #   @return [String]
    class GatewayNetwork < Struct.new(
      nil,
      :cidr_block,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input to retrieve information about.</p>
    #   @return [String]
    class GetRouterInputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_input
    #   <p>The details of the requested router input, including its configuration, state, and other attributes.</p>
    #   @return [Types::RouterInput]
    class GetRouterInputResponse < Struct.new(
      nil,
      :router_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input to retrieve metadata for.</p>
    #   @return [String]
    class GetRouterInputSourceMetadataRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router input.</p>
    #   @return [String]
    # @!attribute source_metadata_details
    #   <p>Detailed metadata information about the router input source, including connection state, timestamps, and stream configuration.</p>
    #   @return [Types::RouterInputSourceMetadataDetails]
    class GetRouterInputSourceMetadataResponse < Struct.new(
      nil,
      :arn,
      :name,
      :source_metadata_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to see a thumbnail of.</p>
    #   @return [String]
    class GetRouterInputThumbnailRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router input.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router input.</p>
    #   @return [String]
    # @!attribute thumbnail_details
    #   <p>The details of the thumbnail associated with the router input, including the thumbnail image, timecode, timestamp, and any associated error messages.</p>
    #   @return [Types::RouterInputThumbnailDetails]
    class GetRouterInputThumbnailResponse < Struct.new(
      nil,
      :arn,
      :name,
      :thumbnail_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to retrieve information about.</p>
    #   @return [String]
    class GetRouterNetworkInterfaceRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_network_interface
    #   <p>The details of the requested router network interface, including its configuration and other attributes.</p>
    #   @return [Types::RouterNetworkInterface]
    class GetRouterNetworkInterfaceResponse < Struct.new(
      nil,
      :router_network_interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to retrieve information about.</p>
    #   @return [String]
    class GetRouterOutputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_output
    #   <p>The details of the requested router output, including its configuration, state, and other attributes.</p>
    #   @return [Types::RouterOutput]
    class GetRouterOutputResponse < Struct.new(
      nil,
      :router_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The entitlements that you want to grant on a flow.</p>
    # @!attribute data_transfer_subscriber_fee_percent
    #   <p> Percentage from 0-100 of the data transfer cost to be billed to the subscriber.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p> A description of the entitlement. This description appears only on the MediaConnect console and will not be seen by the subscriber or end user. </p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of encryption that will be used on the output that is associated with this entitlement. Allowable encryption types: static-key, speke.</p>
    #   @return [Types::Encryption]
    # @!attribute entitlement_status
    #   <p> An indication of whether the new entitlement should be enabled or disabled as soon as it is created. If you don’t specify the entitlementStatus field in your request, MediaConnect sets it to ENABLED.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the entitlement. This value must be unique within the current flow.</p>
    #   @return [String]
    # @!attribute subscribers
    #   <p> The Amazon Web Services account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flows using your content as the source.</p>
    #   @return [Array<String>]
    # @!attribute entitlement_tags
    #   <p> The key-value pairs that can be used to tag and organize the entitlement. </p>
    #   @return [Hash<String, String>]
    class GrantEntitlementRequest < Struct.new(
      nil,
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_status,
      :name,
      :subscribers,
      :entitlement_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when granting the entitlement. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class GrantFlowEntitlements420Exception < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p> The list of entitlements that you want to grant.</p>
    #   @return [Array<Types::GrantEntitlementRequest>]
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to grant entitlements on.</p>
    #   @return [String]
    class GrantFlowEntitlementsRequest < Struct.new(
      nil,
      :entitlements,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p> The entitlements that were just granted.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that these entitlements were granted to.</p>
    #   @return [String]
    class GrantFlowEntitlementsResponse < Struct.new(
      nil,
      :entitlements,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Create a bridge with the ingress bridge type. An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    # @!attribute instance_id
    #   <p>The ID of the instance running this bridge. </p>
    #   @return [String]
    # @!attribute max_bitrate
    #   <p>The maximum expected bitrate (in bps) of the ingress bridge. </p>
    #   @return [Integer]
    # @!attribute max_outputs
    #   <p>The maximum number of outputs on the ingress bridge. </p>
    #   @return [Integer]
    class IngressGatewayBridge < Struct.new(
      nil,
      :instance_id,
      :max_bitrate,
      :max_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The transport parameters that are associated with an incoming media stream.</p>
    # @!attribute input_ip
    #   <p> The IP address that the flow listens on for incoming content for a media stream.</p>
    #   @return [String]
    # @!attribute input_port
    #   <p> The port that the flow listens on for an incoming media stream.</p>
    #   @return [Integer]
    # @!attribute interface
    #   <p> The VPC interface where the media stream comes in from.</p>
    #   @return [Types::Interface]
    class InputConfiguration < Struct.new(
      nil,
      :input_ip,
      :input_port,
      :interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The transport parameters that you want to associate with an incoming media stream.</p>
    # @!attribute input_port
    #   <p> The port that you want the flow to listen on for an incoming media stream.</p>
    #   @return [Integer]
    # @!attribute interface
    #   <p> The VPC interface that you want to use for the incoming media stream.</p>
    #   @return [Types::InterfaceRequest]
    class InputConfigurationRequest < Struct.new(
      nil,
      :input_port,
      :interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The VPC interface that is used for the media stream associated with the source or output.</p>
    # @!attribute name
    #   <p> The name of the VPC interface.</p>
    #   @return [String]
    class Interface < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The VPC interface that you want to designate where the media stream is coming from or going to.</p>
    # @!attribute name
    #   <p> The name of the VPC interface.</p>
    #   @return [String]
    class InterfaceRequest < Struct.new(
      nil,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_arn
    #   <p> Filter the list results to display only the bridges associated with the selected ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListBridges</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListBridgesRequest < Struct.new(
      nil,
      :filter_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridges
    #   <p> A list of bridge summaries.</p>
    #   @return [Array<Types::ListedBridge>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListBridges</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListBridgesResponse < Struct.new(
      nil,
      :bridges,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListEntitlements</code> request with set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 20 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListEntitlements</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListEntitlements</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListEntitlementsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p>A list of entitlements that have been granted to you from other Amazon Web Services accounts. </p>
    #   @return [Array<Types::ListedEntitlement>]
    # @!attribute next_token
    #   <p>The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a ListEntitlements request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the <code>ListEntitlements</code> request a second time and specify the <code>NextToken</code> value. </p>
    #   @return [String]
    class ListEntitlementsResponse < Struct.new(
      nil,
      :entitlements,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListFlows</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListFlowsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flows
    #   <p> A list of flow summaries.</p>
    #   @return [Array<Types::ListedFlow>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListFlows</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListFlowsResponse < Struct.new(
      nil,
      :flows,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute filter_arn
    #   <p> Filter the list results to display only the instances associated with the selected Gateway ARN.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a ListInstances request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListInstances</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListInstances</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewayInstancesRequest < Struct.new(
      nil,
      :filter_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p> A list of instance summaries.</p>
    #   @return [Array<Types::ListedGatewayInstance>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListInstances</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListInstances</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewayInstancesResponse < Struct.new(
      nil,
      :instances,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListGateways</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewaysRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute gateways
    #   <p> A list of gateway summaries.</p>
    #   @return [Array<Types::ListedGateway>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListGateways</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewaysResponse < Struct.new(
      nil,
      :gateways,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListOfferingsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    # @!attribute offerings
    #   <p> A list of offerings that are available to this account in the current Amazon Web Services Region.</p>
    #   @return [Array<Types::Offering>]
    class ListOfferingsResponse < Struct.new(
      nil,
      :next_token,
      :offerings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value. </p>
    #   @return [String]
    class ListReservationsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListReservations</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    # @!attribute reservations
    #   <p> A list of all reservations that have been purchased by this account in the current Amazon Web Services Region. </p>
    #   @return [Array<Types::Reservation>]
    class ListReservationsResponse < Struct.new(
      nil,
      :next_token,
      :reservations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of router inputs to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply when retrieving the list of router inputs.</p>
    #   @return [Array<Types::RouterInputFilter>]
    class ListRouterInputsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_inputs
    #   <p>The summary information for the retrieved router inputs.</p>
    #   @return [Array<Types::ListedRouterInput>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRouterInputsResponse < Struct.new(
      nil,
      :router_inputs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of router network interfaces to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply when retrieving the list of router network interfaces.</p>
    #   @return [Array<Types::RouterNetworkInterfaceFilter>]
    class ListRouterNetworkInterfacesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_network_interfaces
    #   <p>The summary information for the retrieved router network interfaces.</p>
    #   @return [Array<Types::ListedRouterNetworkInterface>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRouterNetworkInterfacesResponse < Struct.new(
      nil,
      :router_network_interfaces,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of router outputs to return in the response.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The filters to apply when retrieving the list of router outputs.</p>
    #   @return [Array<Types::RouterOutputFilter>]
    class ListRouterOutputsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :filters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_outputs
    #   <p>The summary information for the retrieved router outputs.</p>
    #   @return [Array<Types::ListedRouterOutput>]
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #   @return [String]
    class ListRouterOutputsResponse < Struct.new(
      nil,
      :router_outputs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource whose tags you want to list.</p>
    #   @return [String]
    class ListTagsForGlobalResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A map of tag keys and values associated with the global resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForGlobalResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource for which to list the tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Displays details of the selected bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge.</p>
    #   @return [String]
    # @!attribute bridge_state
    #   <p>The state of the bridge. </p>
    #   @return [String]
    # @!attribute bridge_type
    #   <p> The type of the bridge.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the bridge.</p>
    #   @return [String]
    # @!attribute placement_arn
    #   <p> The ARN of the gateway associated with the bridge.</p>
    #   @return [String]
    class ListedBridge < Struct.new(
      nil,
      :bridge_arn,
      :bridge_state,
      :bridge_type,
      :name,
      :placement_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> An entitlement that has been granted to you from other Amazon Web Services accounts.</p>
    # @!attribute data_transfer_subscriber_fee_percent
    #   <p> Percentage from 0-100 of the data transfer cost to be billed to the subscriber.</p>
    #   @return [Integer]
    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement.</p>
    #   @return [String]
    # @!attribute entitlement_name
    #   <p> The name of the entitlement.</p>
    #   @return [String]
    class ListedEntitlement < Struct.new(
      nil,
      :data_transfer_subscriber_fee_percent,
      :entitlement_arn,
      :entitlement_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of a flow, including its ARN, Availability Zone, and source type.</p>
    # @!attribute availability_zone
    #   <p> The Availability Zone that the flow was created in.</p>
    #   @return [String]
    # @!attribute description
    #   <p> A description of the flow.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The ARN of the flow.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the flow.</p>
    #   @return [String]
    # @!attribute source_type
    #   <p> The type of source. This value is either owned (originated somewhere other than an MediaConnect flow owned by another Amazon Web Services account) or entitled (originated at a MediaConnect flow owned by another Amazon Web Services account).</p>
    #   @return [String]
    # @!attribute status
    #   <p> The current status of the flow.</p>
    #   @return [String]
    # @!attribute maintenance
    #   <p> The maintenance settings for the flow. </p>
    #   @return [Types::Maintenance]
    class ListedFlow < Struct.new(
      nil,
      :availability_zone,
      :description,
      :flow_arn,
      :name,
      :source_type,
      :status,
      :maintenance,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of a gateway, including its name, ARN, and status.</p>
    # @!attribute gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_state
    #   <p> The status of the gateway.</p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the gateway.</p>
    #   @return [String]
    class ListedGateway < Struct.new(
      nil,
      :gateway_arn,
      :gateway_state,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A summary of an instance. </p>
    # @!attribute gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway.</p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the instance.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p> The managed instance ID generated by the SSM install. This will begin with "mi-".</p>
    #   @return [String]
    # @!attribute instance_state
    #   <p> The status of the instance.</p>
    #   @return [String]
    class ListedGatewayInstance < Struct.new(
      nil,
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a router input, including its name, type, ARN, ID, state, and other key details. This structure is used in the response of the ListRouterInputs operation.</p>
    # @!attribute name
    #   <p>The name of the router input.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router input.</p>
    #   @return [String]
    # @!attribute input_type
    #   <p>The type of the router input.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The overall state of the router input.</p>
    #   @return [String]
    # @!attribute routed_outputs
    #   <p>The number of router outputs that are associated with this router input.</p>
    #   @return [Integer]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the router input is located.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the router input.</p>
    #   @return [String]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate of the router input.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Indicates whether the router input is configured for Regional or global routing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the router input was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router input was last updated.</p>
    #   @return [Time]
    # @!attribute message_count
    #   <p>The number of messages associated with the router input.</p>
    #   @return [Integer]
    # @!attribute network_interface_arn
    #   <p>The ARN of the network interface associated with the router input.</p>
    #   @return [String]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule currently associated with the listed router input.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The details of the maintenance schedule for the listed router input.</p>
    #   @return [Types::MaintenanceSchedule]
    class ListedRouterInput < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :input_type,
      :state,
      :routed_outputs,
      :region_name,
      :availability_zone,
      :maximum_bitrate,
      :routing_scope,
      :created_at,
      :updated_at,
      :message_count,
      :network_interface_arn,
      :maintenance_schedule_type,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a router network interface, including its name, type, ARN, ID, associated input/output counts, state, and other key details. This structure is used in the response of the ListRouterNetworkInterfaces operation.</p>
    # @!attribute name
    #   <p>The name of the router network interface.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router network interface.</p>
    #   @return [String]
    # @!attribute network_interface_type
    #   <p>The type of the router network interface.</p>
    #   @return [String]
    # @!attribute associated_output_count
    #   <p>The number of router outputs associated with the network interface.</p>
    #   @return [Integer]
    # @!attribute associated_input_count
    #   <p>The number of router inputs associated with the network interface.</p>
    #   @return [Integer]
    # @!attribute state
    #   <p>The current state of the router network interface.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the router network interface is located.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the network interface was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router network interface was last updated.</p>
    #   @return [Time]
    class ListedRouterNetworkInterface < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :network_interface_type,
      :associated_output_count,
      :associated_input_count,
      :state,
      :region_name,
      :created_at,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A summary of a router output, including its name, type, ARN, ID, state, routed state, and other key details. This structure is used in the response of the ListRouterOutputs operation.</p>
    # @!attribute name
    #   <p>The name of the router output.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router output.</p>
    #   @return [String]
    # @!attribute output_type
    #   <p>The type of the router output.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The overall state of the router output.</p>
    #   @return [String]
    # @!attribute routed_state
    #   <p>The current state of the association between the router output and its input.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The AAmazon Web Services Region where the router output is located.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the router output.</p>
    #   @return [String]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate of the router output.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Indicates whether the router output is configured for Regional or global routing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the router output was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router output was last updated.</p>
    #   @return [Time]
    # @!attribute message_count
    #   <p>The number of messages associated with the router output.</p>
    #   @return [Integer]
    # @!attribute routed_input_arn
    #   <p>The ARN of the router input associated with the output.</p>
    #   @return [String]
    # @!attribute network_interface_arn
    #   <p>The ARN of the network interface associated with the router output.</p>
    #   @return [String]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule currently associated with the listed router output.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The details of the maintenance schedule for the listed router output.</p>
    #   @return [Types::MaintenanceSchedule]
    class ListedRouterOutput < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :output_type,
      :state,
      :routed_state,
      :region_name,
      :availability_zone,
      :maximum_bitrate,
      :routing_scope,
      :created_at,
      :updated_at,
      :message_count,
      :routed_input_arn,
      :network_interface_arn,
      :maintenance_schedule_type,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The maintenance setting of a flow.</p>
    # @!attribute maintenance_day
    #   <p> A day of a week when the maintenance will happen. Use Monday/Tuesday/Wednesday/Thursday/Friday/Saturday/Sunday.</p>
    #   @return [String]
    # @!attribute maintenance_deadline
    #   <p> The Maintenance has to be performed before this deadline in ISO UTC format. Example: 2021-01-30T08:30:00Z.</p>
    #   @return [String]
    # @!attribute maintenance_scheduled_date
    #   <p> A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30.</p>
    #   @return [String]
    # @!attribute maintenance_start_hour
    #   <p> UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00.</p>
    #   @return [String]
    class Maintenance < Struct.new(
      nil,
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for maintenance operations, including preferred maintenance windows and schedules.</p>
    # @!attribute preferred_day_time
    #   <p>Preferred day and time maintenance configuration settings.</p>
    #   @return [Types::PreferredDayTimeMaintenanceConfiguration]
    # @!attribute default
    #   <p>Default maintenance configuration settings.</p>
    #   @return [Types::DefaultMaintenanceConfiguration]
    class MaintenanceConfiguration < Struct.new(
      :preferred_day_time,
      :default,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class PreferredDayTime < MaintenanceConfiguration; end
      class Default < MaintenanceConfiguration; end
      class Unknown < MaintenanceConfiguration; end
    end

    # <p>The details of the maintenance schedule.</p>
    # @!attribute window
    #   <p>Defines a specific time window for maintenance operations.</p>
    #   @return [Types::WindowMaintenanceSchedule]
    class MaintenanceSchedule < Struct.new(
      :window,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Window < MaintenanceSchedule; end
      class Unknown < MaintenanceSchedule; end
    end

    # <p>Configuration settings for connecting a router input to a flow output.</p> <p>To connect the router input to the flow output, provide both <code>flowArn</code> and <code>flowOutputArn</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>sourceTransitDecryption</code> while the router input is connected to a flow output. To change it, first disconnect the router input, then update the decryption.</p> </note>
    # @!attribute flow_arn
    #   <p>The ARN of the flow to connect to.</p>
    #   @return [String]
    # @!attribute flow_output_arn
    #   <p>The ARN of the flow output to connect to this router input.</p>
    #   @return [String]
    # @!attribute source_transit_decryption
    #   <p>The decryption configuration for the flow source when connected to this router input.</p>
    #   @return [Types::FlowTransitEncryption]
    class MediaConnectFlowRouterInputConfiguration < Struct.new(
      nil,
      :flow_arn,
      :flow_output_arn,
      :source_transit_decryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a MediaConnect flow when used as a router input source.</p>
    class MediaConnectFlowRouterInputStreamDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for connecting a router output to a MediaConnect flow source.</p> <p>To connect the router output to the flow source, provide both <code>flowArn</code> and <code>flowSourceArn</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>destinationTransitEncryption</code> while the router output is connected to a flow source. To change it, first disconnect the router output, then update the encryption.</p> </note>
    # @!attribute flow_arn
    #   <p>The ARN of the flow to connect to this router output.</p>
    #   @return [String]
    # @!attribute flow_source_arn
    #   <p>The ARN of the flow source to connect to this router output.</p>
    #   @return [String]
    # @!attribute destination_transit_encryption
    #   <p>The encryption configuration for the flow destination when connected to this router output.</p>
    #   @return [Types::FlowTransitEncryption]
    class MediaConnectFlowRouterOutputConfiguration < Struct.new(
      nil,
      :flow_arn,
      :flow_source_arn,
      :destination_transit_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a MediaConnect flow when used as a router output destination.</p>
    class MediaConnectFlowRouterOutputStreamDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for connecting a router input to a MediaLive channel output.</p> <p>To connect the router input to the MediaLive channel output, provide all three of <code>mediaLiveChannelArn</code>, <code>mediaLivePipelineId</code>, and <code>mediaLiveChannelOutputName</code>. To disconnect it, call the update operation and omit all three fields while keeping this configuration object.</p> <note> <p>You can't change <code>sourceTransitDecryption</code> while the router input is connected to a MediaLive channel output. To change it, first disconnect the router input, then update the decryption.</p> </note>
    # @!attribute media_live_channel_arn
    #   <p>The ARN of the MediaLive channel to connect to this router input.</p>
    #   @return [String]
    # @!attribute media_live_pipeline_id
    #   <p>The index of the MediaLive pipeline to connect to this router input.</p>
    #   @return [String]
    # @!attribute media_live_channel_output_name
    #   <p>The name of the MediaLive channel output to connect to this router input.</p>
    #   @return [String]
    # @!attribute source_transit_decryption
    #   <p>The encryption configuration that defines how content is encrypted during transit between MediaConnect Router and MediaLive. This configuration determines whether encryption keys are automatically managed by the service or manually managed through Secrets Manager.</p>
    #   @return [Types::MediaLiveTransitEncryption]
    class MediaLiveChannelRouterInputConfiguration < Struct.new(
      nil,
      :media_live_channel_arn,
      :media_live_pipeline_id,
      :media_live_channel_output_name,
      :source_transit_decryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a MediaLive channel when used as a router input source.</p>
    class MediaLiveChannelRouterInputStreamDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for connecting a router output to a MediaLive input.</p> <p>To connect the router output to the MediaLive input, provide both <code>mediaLiveInputArn</code> and <code>mediaLivePipelineId</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>destinationTransitEncryption</code> while the router output is connected to a MediaLive input. To change it, first disconnect the router output, then update the encryption.</p> </note>
    # @!attribute media_live_input_arn
    #   <p>The ARN of the MediaLive input to connect to this router output.</p>
    #   @return [String]
    # @!attribute media_live_pipeline_id
    #   <p>The index of the MediaLive pipeline to connect to this router output.</p>
    #   @return [String]
    # @!attribute destination_transit_encryption
    #   <p>The encryption configuration for the MediaLive input when connected to this router output.</p>
    #   @return [Types::MediaLiveTransitEncryption]
    class MediaLiveInputRouterOutputConfiguration < Struct.new(
      nil,
      :media_live_input_arn,
      :media_live_pipeline_id,
      :destination_transit_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a MediaLive input when used as a router output destination.</p>
    class MediaLiveInputRouterOutputStreamDetails < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The encryption configuration that defines how content is encrypted during transit between MediaConnect Router and MediaLive. This configuration determines whether encryption keys are automatically managed by the service or manually managed through Secrets Manager.</p>
    # @!attribute encryption_key_type
    #   <p>The type of encryption key to use for MediaLive transit encryption.</p>
    #   @return [String]
    # @!attribute encryption_key_configuration
    #   <p>The configuration details for the MediaLive encryption key.</p>
    #   @return [Types::MediaLiveTransitEncryptionKeyConfiguration]
    class MediaLiveTransitEncryption < Struct.new(
      nil,
      :encryption_key_type,
      :encryption_key_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for the MediaLive transit encryption key.</p>
    # @!attribute secrets_manager
    #   <p>The configuration settings for transit encryption using Secrets Manager, including the secret ARN and role ARN.</p>
    #   @return [Types::SecretsManagerEncryptionKeyConfiguration]
    # @!attribute automatic
    #   <p>Configuration settings for automatic encryption key management, where MediaConnect handles key creation and rotation.</p>
    #   @return [Types::AutomaticEncryptionKeyConfiguration]
    class MediaLiveTransitEncryptionKeyConfiguration < Struct.new(
      :secrets_manager,
      :automatic,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManager < MediaLiveTransitEncryptionKeyConfiguration; end
      class Automatic < MediaLiveTransitEncryptionKeyConfiguration; end
      class Unknown < MediaLiveTransitEncryptionKeyConfiguration; end
    end

    # <p> A media stream represents one component of your content, such as video, audio, or ancillary data. After you add a media stream to your flow, you can associate it with sources and outputs that use the ST 2110 JPEG XS or CDI protocol. </p>
    # @!attribute attributes
    #   <p> Attributes that are related to the media stream.</p>
    #   @return [Types::MediaStreamAttributes]
    # @!attribute clock_rate
    #   <p> The sample rate for the stream. This value is measured in Hz.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p> A description that can help you quickly identify what your media stream is used for.</p>
    #   @return [String]
    # @!attribute fmt
    #   <p> The format type number (sometimes referred to as RTP payload type) of the media stream. MediaConnect assigns this value to the media stream. For ST 2110 JPEG XS outputs, you need to provide this value to the receiver.</p>
    #   @return [Integer]
    # @!attribute media_stream_id
    #   <p> A unique identifier for the media stream. </p>
    #   @return [Integer]
    # @!attribute media_stream_name
    #   <p> A name that helps you distinguish one media stream from another. </p>
    #   @return [String]
    # @!attribute media_stream_type
    #   <p> The type of media stream. </p>
    #   @return [String]
    # @!attribute video_format
    #   <p> The resolution of the video. </p>
    #   @return [String]
    class MediaStream < Struct.new(
      nil,
      :attributes,
      :clock_rate,
      :description,
      :fmt,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes that are related to the media stream. </p>
    # @!attribute fmtp
    #   <p>The settings that you want to use to define the media stream. </p>
    #   @return [Types::Fmtp]
    # @!attribute lang
    #   <p>The audio language, in a format that is recognized by the receiver. </p>
    #   @return [String]
    class MediaStreamAttributes < Struct.new(
      nil,
      :fmtp,
      :lang,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes that are related to the media stream. </p>
    # @!attribute fmtp
    #   <p>The settings that you want to use to define the media stream. </p>
    #   @return [Types::FmtpRequest]
    # @!attribute lang
    #   <p>The audio language, in a format that is recognized by the receiver. </p>
    #   @return [String]
    class MediaStreamAttributesRequest < Struct.new(
      nil,
      :fmtp,
      :lang,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The media stream that is associated with the output, and the parameters for that association.</p>
    # @!attribute destination_configurations
    #   <p> The transport parameters that are associated with each outbound media stream.</p>
    #   @return [Array<Types::DestinationConfiguration>]
    # @!attribute encoding_name
    #   <p> The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.</p>
    #   @return [String]
    # @!attribute encoding_parameters
    #   <p>A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source. </p>
    #   @return [Types::EncodingParameters]
    # @!attribute media_stream_name
    #   <p> The name of the media stream.</p>
    #   @return [String]
    class MediaStreamOutputConfiguration < Struct.new(
      nil,
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The media stream that you want to associate with the output, and the parameters for that association.</p>
    # @!attribute destination_configurations
    #   <p> The media streams that you want to associate with the output. </p>
    #   @return [Array<Types::DestinationConfigurationRequest>]
    # @!attribute encoding_name
    #   <p> The format that will be used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv.</p>
    #   @return [String]
    # @!attribute encoding_parameters
    #   <p> A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source. </p>
    #   @return [Types::EncodingParametersRequest]
    # @!attribute media_stream_name
    #   <p> The name of the media stream that is associated with the output.</p>
    #   @return [String]
    class MediaStreamOutputConfigurationRequest < Struct.new(
      nil,
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media stream that is associated with the source, and the parameters for that association. </p>
    # @!attribute encoding_name
    #   <p> The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv. </p>
    #   @return [String]
    # @!attribute input_configurations
    #   <p>The media streams that you want to associate with the source. </p>
    #   @return [Array<Types::InputConfiguration>]
    # @!attribute media_stream_name
    #   <p>A name that helps you distinguish one media stream from another. </p>
    #   @return [String]
    class MediaStreamSourceConfiguration < Struct.new(
      nil,
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The media stream that you want to associate with the source, and the parameters for that association. </p>
    # @!attribute encoding_name
    #   <p>The format that was used to encode the data. For ancillary data streams, set the encoding name to smpte291. For audio streams, set the encoding name to pcm. For video, 2110 streams, set the encoding name to raw. For video, JPEG XS streams, set the encoding name to jxsv. </p>
    #   @return [String]
    # @!attribute input_configurations
    #   <p>The media streams that you want to associate with the source. </p>
    #   @return [Array<Types::InputConfigurationRequest>]
    # @!attribute media_stream_name
    #   <p>The name of the media stream. </p>
    #   @return [String]
    class MediaStreamSourceConfigurationRequest < Struct.new(
      nil,
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings for a merge router input that combines two input sources.</p>
    # @!attribute network_interface_arn
    #   <p>The ARN of the network interface to use for this merge router input.</p>
    #   @return [String]
    # @!attribute protocol_configurations
    #   <p>A list of exactly two protocol configurations for the merge input sources. Both must use the same protocol type.</p>
    #   @return [Array<Types::MergeRouterInputProtocolConfiguration>]
    # @!attribute merge_recovery_window_milliseconds
    #   <p>The time window in milliseconds for merging the two input sources.</p>
    #   @return [Integer]
    class MergeRouterInputConfiguration < Struct.new(
      nil,
      :network_interface_arn,
      :protocol_configurations,
      :merge_recovery_window_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for an indexed stream in a merge router input setup.</p>
    # @!attribute source_index
    #   <p>The index number (0 or 1) assigned to this source in the merge configuration.</p>
    #   @return [Integer]
    # @!attribute source_ip_address
    #   <p>The IP address of the source for this indexed stream in the merge setup.</p>
    #   @return [String]
    class MergeRouterInputIndexedStreamDetails < Struct.new(
      nil,
      :source_index,
      :source_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Protocol configuration settings for merge router inputs.</p>
    # @!attribute rtp
    #   <p>The configuration settings for a Router Input using the RTP (Real-Time Transport Protocol) protocol, including the port and forward error correction state.</p>
    #   @return [Types::RtpRouterInputConfiguration]
    # @!attribute rist
    #   <p>The configuration settings for a router input using the RIST (Reliable Internet Stream Transport) protocol, including the port and recovery latency.</p>
    #   @return [Types::RistRouterInputConfiguration]
    class MergeRouterInputProtocolConfiguration < Struct.new(
      :rtp,
      :rist,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Rtp < MergeRouterInputProtocolConfiguration; end
      class Rist < MergeRouterInputProtocolConfiguration; end
      class Unknown < MergeRouterInputProtocolConfiguration; end
    end

    # <p>Configuration details for a merge router input that combines two input sources.</p>
    # @!attribute source_index_zero_stream_details
    #   <p>Configuration details for the first source (index 0) in the merge setup.</p>
    #   @return [Types::MergeRouterInputIndexedStreamDetails]
    # @!attribute source_index_one_stream_details
    #   <p>Configuration details for the second source (index 1) in the merge setup.</p>
    #   @return [Types::MergeRouterInputIndexedStreamDetails]
    class MergeRouterInputStreamDetails < Struct.new(
      nil,
      :source_index_zero_stream_details,
      :source_index_one_stream_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an error message. </p>
    # @!attribute code
    #   <p> The error code.</p>
    #   @return [String]
    # @!attribute message
    #   <p> The specific error message that MediaConnect returns to help you understand the reason that the request did not succeed.</p>
    #   @return [String]
    # @!attribute resource_name
    #   <p> The name of the resource.</p>
    #   @return [String]
    class MessageDetail < Struct.new(
      nil,
      :code,
      :message,
      :resource_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Messages that provide the state of the flow.</p>
    # @!attribute errors
    #   <p> A list of errors that might have been generated from processes on this flow.</p>
    #   @return [Array<String>]
    class Messages < Struct.new(
      nil,
      :errors,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for source monitoring. </p>
    # @!attribute thumbnail_state
    #   <p> Indicates whether thumbnails are enabled or disabled.</p>
    #   @return [String]
    # @!attribute audio_monitoring_settings
    #   <p> Contains the settings for audio stream metrics monitoring.</p>
    #   @return [Array<Types::AudioMonitoringSetting>]
    # @!attribute content_quality_analysis_state
    #   <p> Indicates whether content quality analysis is enabled or disabled.</p>
    #   @return [String]
    # @!attribute video_monitoring_settings
    #   <p> Contains the settings for video stream metrics monitoring.</p>
    #   @return [Array<Types::VideoMonitoringSetting>]
    class MonitoringConfig < Struct.new(
      nil,
      :thumbnail_state,
      :audio_monitoring_settings,
      :content_quality_analysis_state,
      :video_monitoring_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings related to the multicast source. </p>
    # @!attribute multicast_source_ip
    #   <p> The IP address of the source for source-specific multicast (SSM).</p>
    #   @return [String]
    class MulticastSourceSettings < Struct.new(
      nil,
      :multicast_source_ip,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration settings for NDI sources and outputs. </p>
    # @!attribute ndi_state
    #   <p>A setting that controls whether NDI® sources or outputs can be used in the flow. </p> <p> The default value is <code>DISABLED</code>. This value must be set as <code>ENABLED</code> for your flow to support NDI sources or outputs. </p>
    #   @return [String]
    # @!attribute machine_name
    #   <p>A prefix for the names of the NDI sources that the flow creates. If a custom name isn't specified, MediaConnect generates a unique 12-character ID as the prefix. </p>
    #   @return [String]
    # @!attribute ndi_discovery_servers
    #   <p>A list of up to three NDI discovery server configurations. While not required by the API, this configuration is necessary for NDI functionality to work properly. </p>
    #   @return [Array<Types::NdiDiscoveryServerConfig>]
    class NdiConfig < Struct.new(
      nil,
      :ndi_state,
      :machine_name,
      :ndi_discovery_servers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration settings for individual NDI® discovery servers. A maximum of 3 servers is allowed. </p>
    # @!attribute discovery_server_address
    #   <p>The unique network address of the NDI discovery server. </p>
    #   @return [String]
    # @!attribute discovery_server_port
    #   <p>The port for the NDI discovery server. Defaults to 5959 if a custom port isn't specified. </p>
    #   @return [Integer]
    # @!attribute vpc_interface_adapter
    #   <p>The identifier for the Virtual Private Cloud (VPC) network interface used by the flow. </p>
    #   @return [String]
    class NdiDiscoveryServerConfig < Struct.new(
      nil,
      :discovery_server_address,
      :discovery_server_port,
      :vpc_interface_adapter,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Metadata about the audio and video media that is part of the NDI® source content. This includes details about the individual media streams. </p>
    # @!attribute streams
    #   <p> A list of the individual media streams that make up the NDI source. This includes details about each stream's codec, resolution, frame rate, audio channels, and other parameters. </p>
    #   @return [Array<Types::NdiMediaStreamInfo>]
    class NdiMediaInfo < Struct.new(
      nil,
      :streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Detailed information about a single media stream that is part of an NDI® source. This includes details about the stream type, codec, resolution, frame rate, audio channels, and sample rate. </p>
    # @!attribute stream_type
    #   <p> The type of media stream (for example, <code>Video</code> or <code>Audio</code>). </p>
    #   @return [String]
    # @!attribute codec
    #   <p> The codec used for the media stream. For NDI sources, use <code>speed-hq</code>. </p>
    #   @return [String]
    # @!attribute stream_id
    #   <p> A unique identifier for the media stream. </p>
    #   @return [Integer]
    # @!attribute scan_mode
    #   <p> The method used to display video frames. Used when the <code>streamType</code> is <code>Video</code>.</p>
    #   @return [String]
    # @!attribute color
    #   <p> The color signaling of the video stream. Used when the <code>streamType</code> is <code>Video</code>. </p>
    #   @return [Types::ColorInformation]
    # @!attribute frame_resolution
    #   <p> The width and height dimensions of the video frame in pixels. Used when the <code>streamType</code> is <code>Video</code>. </p>
    #   @return [Types::FrameResolution]
    # @!attribute frame_rate
    #   <p> The number of video frames displayed per second. Used when the <code>streamType</code> is <code>Video</code>. </p>
    #   @return [String]
    # @!attribute channels
    #   <p> The number of audio channels in the stream. Used when the <code>streamType</code> is <code>Audio</code>.</p>
    #   @return [Integer]
    # @!attribute sample_rate
    #   <p> The number of audio samples captured per second, measured in kilohertz (kHz). Used when the <code>streamType</code> is <code>Audio</code>.</p>
    #   @return [Integer]
    class NdiMediaStreamInfo < Struct.new(
      nil,
      :stream_type,
      :codec,
      :stream_id,
      :scan_mode,
      :color,
      :frame_resolution,
      :frame_rate,
      :channels,
      :sample_rate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a single NDI® sender, including its name. </p>
    # @!attribute source_name
    #   <p> The name of the upstream NDI sender. </p>
    #   @return [String]
    class NdiSourceInfo < Struct.new(
      nil,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Comprehensive information about the NDI® source that's associated with a flow. This includes the currently active NDI source, a list of all discovered NDI senders, metadata about the media streams, and any relevant status messages. </p>
    # @!attribute active_source
    #   <p> The connected NDI sender that's currently sending source content to the flow's NDI source. </p>
    #   @return [Types::NdiSourceInfo]
    # @!attribute discovered_sources
    #   <p> A list of the available upstream NDI senders aggregated from all of your configured discovery servers. </p>
    #   @return [Array<Types::NdiSourceInfo>]
    # @!attribute media_info
    #   <p> Detailed information about the media streams (video, audio, and so on) that are part of the active NDI source. </p>
    #   @return [Types::NdiMediaInfo]
    # @!attribute messages
    #   <p> Any status messages or error codes related to the NDI source and its metadata. </p>
    #   @return [Array<Types::MessageDetail>]
    class NdiSourceMetadataInfo < Struct.new(
      nil,
      :active_source,
      :discovered_sources,
      :media_info,
      :messages,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for the NDI® source. This includes the exact name of the upstream NDI sender that you want to connect to your source. </p> <note> <p>When you update the NDI source, include only the members you want to change. MediaConnect leaves the members that you don't specify unchanged.</p> </note>
    # @!attribute source_name
    #   <p> The exact name of an existing NDI sender that's registered with your discovery server. If included, the format of this name must be <code>MACHINENAME (ProgramName)</code>. </p>
    #   @return [String]
    # @!attribute audio_reference_level
    #   <p>The audio reference level of the NDI sender, in decibels relative to full scale (dBFS). Common values are <code>-20</code> (NDI and SMPTE) and <code>-18</code> (EBU). If you don't specify this field, MediaConnect uses <code>-20</code>.</p>
    #   @return [Integer]
    class NdiSourceSettings < Struct.new(
      nil,
      :source_name,
      :audio_reference_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the resources in the request does not exist in the system. </p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A savings plan that reserves a certain amount of outbound bandwidth usage at a discounted rate each month over a period of time. </p>
    # @!attribute currency_code
    #   <p> The type of currency that is used for billing. The currencyCode used for all reservations is US dollars.</p>
    #   @return [String]
    # @!attribute duration
    #   <p> The length of time that your reservation would be active.</p>
    #   @return [Integer]
    # @!attribute duration_units
    #   <p> The unit of measurement for the duration of the offering.</p>
    #   @return [String]
    # @!attribute offering_arn
    #   <p> The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.</p>
    #   @return [String]
    # @!attribute offering_description
    #   <p> A description of the offering.</p>
    #   @return [String]
    # @!attribute price_per_unit
    #   <p> The cost of a single unit. This value, in combination with priceUnits, makes up the rate.</p>
    #   @return [String]
    # @!attribute price_units
    #   <p> The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p> A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering.</p>
    #   @return [Types::ResourceSpecification]
    class Offering < Struct.new(
      nil,
      :currency_code,
      :duration,
      :duration_units,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :resource_specification,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The settings for an output. </p>
    # @!attribute data_transfer_subscriber_fee_percent
    #   <p> Percentage from 0-100 of the data transfer cost to be billed to the subscriber.</p>
    #   @return [Integer]
    # @!attribute description
    #   <p> A description of the output.</p>
    #   @return [String]
    # @!attribute destination
    #   <p> The address where you want to send the output.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of key used for the encryption. If no keyType is provided, the service will use the default setting (static-key).</p>
    #   @return [Types::Encryption]
    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement on the originator''s flow. This value is relevant only on entitled flows.</p>
    #   @return [String]
    # @!attribute listener_address
    #   <p> The IP address that the receiver requires in order to establish a connection with the flow. For public networking, the ListenerAddress is represented by the elastic IP address of the flow. For private networking, the ListenerAddress is represented by the elastic network interface IP address of the VPC. This field applies only to outputs that use the Zixi pull or SRT listener protocol.</p>
    #   @return [String]
    # @!attribute media_live_input_arn
    #   <p> The input ARN of the MediaLive channel. This parameter is relevant only for outputs that were added by creating a MediaLive input.</p>
    #   @return [String]
    # @!attribute media_stream_output_configurations
    #   <p> The configuration for each media stream that is associated with the output.</p>
    #   @return [Array<Types::MediaStreamOutputConfiguration>]
    # @!attribute name
    #   <p> The name of the output. This value must be unique within the current flow.</p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The ARN of the output.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The port to use when content is distributed to this output.</p>
    #   @return [Integer]
    # @!attribute transport
    #   <p> Attributes related to the transport stream that are used in the output.</p>
    #   @return [Types::Transport]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this output.</p>
    #   @return [Types::VpcInterfaceAttachment]
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge added to this output.</p>
    #   @return [String]
    # @!attribute bridge_ports
    #   <p> The bridge output ports currently in use.</p>
    #   @return [Array<Integer>]
    # @!attribute output_status
    #   <p> An indication of whether the output is transmitting data or not.</p>
    #   @return [String]
    # @!attribute peer_ip_address
    #   <p>The IP address of the device that is currently receiving content from this output.</p> <note> <ul> <li> <p>For outputs that use protocols where you specify the destination (such as SRT Caller or Zixi Push), this value matches the configured destination address.</p> </li> <li> <p>For outputs that use listener protocols (such as SRT Listener), this value shows the address of the connected receiver. </p> </li> <li> <p>Peer IP addresses aren't available for entitlements, managed MediaLive outputs, NDI® sources and outputs, and CDI/ST2110 outputs. </p> </li> <li> <p>The peer IP address might not be visible for flows that haven't been started yet, or flows that were started before May 2025. In these cases, restart your flow to see the peer IP address.</p> </li> </ul> </note>
    #   @return [String]
    # @!attribute router_integration_state
    #   <p>Indicates if router integration is enabled or disabled on the flow output.</p>
    #   @return [String]
    # @!attribute router_integration_transit_encryption
    #   <p>The encryption configuration for the output when router integration is enabled.</p>
    #   @return [Types::FlowTransitEncryption]
    # @!attribute connected_router_input_arn
    #   <p>The ARN of the router input that's connected to this flow output.</p>
    #   @return [String]
    class Output < Struct.new(
      nil,
      :data_transfer_subscriber_fee_percent,
      :description,
      :destination,
      :encryption,
      :entitlement_arn,
      :listener_address,
      :media_live_input_arn,
      :media_stream_output_configurations,
      :name,
      :output_arn,
      :port,
      :transport,
      :vpc_interface_attachment,
      :bridge_arn,
      :bridge_ports,
      :output_status,
      :peer_ip_address,
      :router_integration_state,
      :router_integration_transit_encryption,
      :connected_router_input_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration for preferred day and time maintenance settings.</p>
    # @!attribute day
    #   <p>The preferred day for maintenance operations.</p>
    #   @return [String]
    # @!attribute time
    #   <p>The preferred time for maintenance operations.</p>
    #   @return [String]
    class PreferredDayTimeMaintenanceConfiguration < Struct.new(
      nil,
      :day,
      :time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a public router network interface, including the list of allowed CIDR blocks.</p>
    # @!attribute allow_rules
    #   <p>The list of allowed CIDR blocks for the public router network interface.</p>
    #   @return [Array<Types::PublicRouterNetworkInterfaceRule>]
    class PublicRouterNetworkInterfaceConfiguration < Struct.new(
      nil,
      :allow_rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A rule that allows a specific CIDR block to access the public router network interface.</p>
    # @!attribute cidr
    #   <p>The CIDR block that is allowed to access the public router network interface.</p>
    #   @return [String]
    class PublicRouterNetworkInterfaceRule < Struct.new(
      nil,
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The TLS encryption configuration for destinations that present a certificate from a publicly trusted certificate authority. This type does not require any additional settings.</p>
    class PublicTlsEncryptionConfiguration < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute offering_arn
    #   <p> The Amazon Resource Name (ARN) of the offering.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p> The name that you want to use for the reservation.</p>
    #   @return [String]
    # @!attribute start
    #   <p> The date and time that you want the reservation to begin, in Coordinated Universal Time (UTC). </p> <p>You can specify any date and time between 12:00am on the first day of the current month to the current time on today's date, inclusive. Specify the start in a 24-hour notation. Use the following format: <code>YYYY-MM-DDTHH:mm:SSZ</code>, where <code>T</code> and <code>Z</code> are literal characters. For example, to specify 11:30pm on March 5, 2020, enter <code>2020-03-05T23:30:00Z</code>.</p>
    #   @return [String]
    class PurchaseOfferingRequest < Struct.new(
      nil,
      :offering_arn,
      :reservation_name,
      :start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p>The details of the reservation that you just created when you purchased the offering. </p>
    #   @return [Types::Reservation]
    class PurchaseOfferingResponse < Struct.new(
      nil,
      :reservation,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute output_name
    #   <p> The name of the bridge output that you want to remove.</p>
    #   @return [String]
    class RemoveBridgeOutputRequest < Struct.new(
      nil,
      :bridge_arn,
      :output_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge from which the output was removed. </p>
    #   @return [String]
    # @!attribute output_name
    #   <p> The name of the bridge output that was removed. </p>
    #   @return [String]
    class RemoveBridgeOutputResponse < Struct.new(
      nil,
      :bridge_arn,
      :output_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p> The name of the bridge source that you want to remove.</p>
    #   @return [String]
    class RemoveBridgeSourceRequest < Struct.new(
      nil,
      :bridge_arn,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge from which the source was removed. </p>
    #   @return [String]
    # @!attribute source_name
    #   <p> The name of the bridge source that was removed. </p>
    #   @return [String]
    class RemoveBridgeSourceResponse < Struct.new(
      nil,
      :bridge_arn,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute media_stream_name
    #   <p> The name of the media stream that you want to remove.</p>
    #   @return [String]
    class RemoveFlowMediaStreamRequest < Struct.new(
      nil,
      :flow_arn,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that was updated.</p>
    #   @return [String]
    # @!attribute media_stream_name
    #   <p> The name of the media stream that was removed.</p>
    #   @return [String]
    class RemoveFlowMediaStreamResponse < Struct.new(
      nil,
      :flow_arn,
      :media_stream_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove an output from.</p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The ARN of the output that you want to remove. </p>
    #   @return [String]
    class RemoveFlowOutputRequest < Struct.new(
      nil,
      :flow_arn,
      :output_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that the output was removed from. </p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The ARN of the output that was removed. </p>
    #   @return [String]
    class RemoveFlowOutputResponse < Struct.new(
      nil,
      :flow_arn,
      :output_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a source from.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p> The ARN of the source that you want to remove.</p>
    #   @return [String]
    class RemoveFlowSourceRequest < Struct.new(
      nil,
      :flow_arn,
      :source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that the source was removed from. </p>
    #   @return [String]
    # @!attribute source_arn
    #   <p> The ARN of the source that was removed. </p>
    #   @return [String]
    class RemoveFlowSourceResponse < Struct.new(
      nil,
      :flow_arn,
      :source_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a VPC interface from.</p>
    #   @return [String]
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface that you want to remove.</p>
    #   @return [String]
    class RemoveFlowVpcInterfaceRequest < Struct.new(
      nil,
      :flow_arn,
      :vpc_interface_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that is associated with the VPC interface you removed.</p>
    #   @return [String]
    # @!attribute non_deleted_network_interface_ids
    #   <p> IDs of network interfaces associated with the removed VPC interface that MediaConnect was unable to remove.</p>
    #   @return [Array<String>]
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface that was removed.</p>
    #   @return [String]
    class RemoveFlowVpcInterfaceResponse < Struct.new(
      nil,
      :flow_arn,
      :non_deleted_network_interface_ids,
      :vpc_interface_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate.</p>
    # @!attribute currency_code
    #   <p> The type of currency that is used for billing. The currencyCode used for your reservation is US dollars.</p>
    #   @return [String]
    # @!attribute duration
    #   <p> The length of time that this reservation is active. MediaConnect defines this value in the offering.</p>
    #   @return [Integer]
    # @!attribute duration_units
    #   <p> The unit of measurement for the duration of the reservation. MediaConnect defines this value in the offering.</p>
    #   @return [String]
    # @!attribute end
    #   <p> The day and time that this reservation expires. This value is calculated based on the start date and time that you set and the offering's duration.</p>
    #   @return [String]
    # @!attribute offering_arn
    #   <p> The Amazon Resource Name (ARN) that MediaConnect assigns to the offering.</p>
    #   @return [String]
    # @!attribute offering_description
    #   <p> A description of the offering. MediaConnect defines this value in the offering.</p>
    #   @return [String]
    # @!attribute price_per_unit
    #   <p> The cost of a single unit. This value, in combination with priceUnits, makes up the rate. MediaConnect defines this value in the offering.</p>
    #   @return [String]
    # @!attribute price_units
    #   <p> The unit of measurement that is used for billing. This value, in combination with pricePerUnit, makes up the rate. MediaConnect defines this value in the offering.</p>
    #   @return [String]
    # @!attribute reservation_arn
    #   <p> The Amazon Resource Name (ARN) that MediaConnect assigns to the reservation when you purchase an offering.</p>
    #   @return [String]
    # @!attribute reservation_name
    #   <p> The name that you assigned to the reservation when you purchased the offering.</p>
    #   @return [String]
    # @!attribute reservation_state
    #   <p> The status of your reservation.</p>
    #   @return [String]
    # @!attribute resource_specification
    #   <p> A definition of the amount of outbound bandwidth that you would be reserving if you purchase the offering. MediaConnect defines the values that make up the resourceSpecification in the offering.</p>
    #   @return [Types::ResourceSpecification]
    # @!attribute start
    #   <p> The day and time that the reservation becomes active. You set this value when you purchase the offering.</p>
    #   @return [String]
    class Reservation < Struct.new(
      nil,
      :currency_code,
      :duration,
      :duration_units,
      :end,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :reservation_arn,
      :reservation_name,
      :reservation_state,
      :resource_specification,
      :start,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> A definition of what is being billed for, including the type and amount.</p>
    # @!attribute reserved_bitrate
    #   <p> The amount of outbound bandwidth that is discounted in the offering.</p>
    #   @return [Integer]
    # @!attribute resource_type
    #   <p> The type of resource and the unit that is being billed for.</p>
    #   @return [String]
    class ResourceSpecification < Struct.new(
      nil,
      :reserved_bitrate,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to restart.</p>
    #   @return [String]
    class RestartRouterInputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router input that was restarted.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router input that was restarted.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router input after the restart operation.</p>
    #   @return [String]
    class RestartRouterInputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to restart.</p>
    #   @return [String]
    class RestartRouterOutputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router output that was restarted.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router output that was restarted.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router output after the restart operation.</p>
    #   @return [String]
    class RestartRouterOutputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement_arn
    #   <p> The Amazon Resource Name (ARN) of the entitlement that you want to revoke.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The flow that you want to revoke an entitlement from.</p>
    #   @return [String]
    class RevokeFlowEntitlementRequest < Struct.new(
      nil,
      :entitlement_arn,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement that was revoked.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that the entitlement was revoked from.</p>
    #   @return [String]
    class RevokeFlowEntitlementResponse < Struct.new(
      nil,
      :entitlement_arn,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router input using the RIST (Reliable Internet Stream Transport) protocol, including the port and recovery latency.</p>
    # @!attribute port
    #   <p>The port number used for the RIST protocol in the router input configuration.</p>
    #   @return [Integer]
    # @!attribute recovery_latency_milliseconds
    #   <p>The recovery latency in milliseconds for the RIST protocol in the router input configuration.</p>
    #   @return [Integer]
    class RistRouterInputConfiguration < Struct.new(
      nil,
      :port,
      :recovery_latency_milliseconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router output using the RIST (Reliable Internet Stream Transport) protocol, including the destination address and port.</p>
    # @!attribute destination_address
    #   <p>The destination IP address for the RIST protocol in the router output configuration.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port number for the RIST protocol in the router output configuration.</p>
    #   @return [Integer]
    class RistRouterOutputConfiguration < Struct.new(
      nil,
      :destination_address,
      :destination_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The content quality analysis configuration for the router input.</p> <important> <p>The content quality analysis feature only monitors the first video stream and the first audio stream it encounters within the router input source.</p> </important>
    # @!attribute content_level
    #   <p>The content quality analysis configuration.</p>
    #   @return [Types::ContentQualityAnalysisFeatureConfiguration]
    class RouterContentQualityAnalysisConfiguration < Struct.new(
      :content_level,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ContentLevel < RouterContentQualityAnalysisConfiguration; end
      class Unknown < RouterContentQualityAnalysisConfiguration; end
    end

    # <p>A router input in AWS Elemental MediaConnect. A router input is a source of media content that can be routed to one or more router outputs.</p>
    # @!attribute name
    #   <p>The name of the router input.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router input.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router input.</p>
    #   @return [String]
    # @!attribute input_type
    #   <p>The type of the router input.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for a router input.</p>
    #   @return [Types::RouterInputConfiguration]
    # @!attribute routed_outputs
    #   <p>The number of router outputs associated with the router input.</p>
    #   @return [Integer]
    # @!attribute maximum_routed_outputs
    #   <p>The maximum number of outputs that can be simultaneously routed to this input.</p>
    #   @return [Integer]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the router input is located.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the router input.</p>
    #   @return [String]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate for the router input.</p>
    #   @return [Integer]
    # @!attribute tier
    #   <p>The tier level for the router input. The tier sets the maximum bitrate, in Mbps, for the router input. Valid values include the following:</p> <ul> <li> <p> <code>INPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>INPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>INPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>INPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>INPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute routing_scope
    #   <p>Indicates whether the router input is configured for Regional or global routing.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the router input was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router input was last updated.</p>
    #   @return [Time]
    # @!attribute messages
    #   <p>The messages associated with the router input.</p>
    #   @return [Array<Types::RouterInputMessage>]
    # @!attribute transit_encryption
    #   <p>The transit encryption settings for a router input.</p>
    #   @return [Types::RouterInputTransitEncryption]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag and organize this router input.</p>
    #   @return [Hash<String, String>]
    # @!attribute stream_details
    #   <p>Configuration details for the router input stream.</p>
    #   @return [Types::RouterInputStreamDetails]
    # @!attribute ip_address
    #   <p>The IP address of the router input.</p>
    #   @return [String]
    # @!attribute maintenance_type
    #   <p>The type of maintenance configuration applied to this router input.</p>
    #   @return [String]
    # @!attribute maintenance_configuration
    #   <p>The maintenance configuration settings applied to this router input.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule currently in effect for this router input.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The current maintenance schedule details for this router input.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute content_quality_analysis_type
    #   <p>The type of content quality analysis applied to the router input.</p>
    #   @return [String]
    # @!attribute content_quality_analysis_configuration
    #   <p>The content quality analysis configuration for the router input.</p>
    #   @return [Types::RouterContentQualityAnalysisConfiguration]
    class RouterInput < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :state,
      :input_type,
      :configuration,
      :routed_outputs,
      :maximum_routed_outputs,
      :region_name,
      :availability_zone,
      :maximum_bitrate,
      :tier,
      :routing_scope,
      :created_at,
      :updated_at,
      :messages,
      :transit_encryption,
      :tags,
      :stream_details,
      :ip_address,
      :maintenance_type,
      :maintenance_configuration,
      :maintenance_schedule_type,
      :maintenance_schedule,
      :content_quality_analysis_type,
      :content_quality_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router input.</p>
    # @!attribute standard
    #   <p>The configuration settings for a standard router input, including the protocol, protocol-specific configuration, network interface, and availability zone.</p>
    #   @return [Types::StandardRouterInputConfiguration]
    # @!attribute media_live_channel
    #   <p>Configuration settings for connecting a router input to a MediaLive channel output.</p> <p>To connect the router input to the MediaLive channel output, provide all three of <code>mediaLiveChannelArn</code>, <code>mediaLivePipelineId</code>, and <code>mediaLiveChannelOutputName</code>. To disconnect it, call the update operation and omit all three fields while keeping this configuration object.</p> <note> <p>You can't change <code>sourceTransitDecryption</code> while the router input is connected to a MediaLive channel output. To change it, first disconnect the router input, then update the decryption.</p> </note>
    #   @return [Types::MediaLiveChannelRouterInputConfiguration]
    # @!attribute failover
    #   <p>Configuration settings for a failover router input that allows switching between two input sources.</p>
    #   @return [Types::FailoverRouterInputConfiguration]
    # @!attribute media_connect_flow
    #   <p>Configuration settings for connecting a router input to a flow output.</p> <p>To connect the router input to the flow output, provide both <code>flowArn</code> and <code>flowOutputArn</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>sourceTransitDecryption</code> while the router input is connected to a flow output. To change it, first disconnect the router input, then update the decryption.</p> </note>
    #   @return [Types::MediaConnectFlowRouterInputConfiguration]
    # @!attribute merge
    #   <p>Configuration settings for a merge router input that combines two input sources.</p>
    #   @return [Types::MergeRouterInputConfiguration]
    class RouterInputConfiguration < Struct.new(
      :standard,
      :media_live_channel,
      :failover,
      :media_connect_flow,
      :merge,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Standard < RouterInputConfiguration; end
      class MediaLiveChannel < RouterInputConfiguration; end
      class Failover < RouterInputConfiguration; end
      class MediaConnectFlow < RouterInputConfiguration; end
      class Merge < RouterInputConfiguration; end
      class Unknown < RouterInputConfiguration; end
    end

    # <p>A filter that can be used to retrieve a list of router inputs.</p>
    # @!attribute name_contains
    #   <p>The names of the router inputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute region_names
    #   <p>The AWS Regions of the router inputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_arns
    #   <p>The Amazon Resource Names (ARNs) of the network interfaces associated with the router inputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute routing_scopes
    #   <p>Filter criteria to list router inputs based on their routing scope (REGIONAL or GLOBAL).</p>
    #   @return [Array<String>]
    # @!attribute input_types
    #   <p>The types of router inputs to include in the filter.</p>
    #   @return [Array<String>]
    class RouterInputFilter < Struct.new(
      :name_contains,
      :region_names,
      :network_interface_arns,
      :routing_scopes,
      :input_types,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class NameContains < RouterInputFilter; end
      class RegionNames < RouterInputFilter; end
      class NetworkInterfaceArns < RouterInputFilter; end
      class RoutingScopes < RouterInputFilter; end
      class InputTypes < RouterInputFilter; end
      class Unknown < RouterInputFilter; end
    end

    # <p>A message associated with a router input, including a code and a message.</p>
    # @!attribute code
    #   <p>The code associated with the router input message.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message text associated with the router input message.</p>
    #   @return [String]
    class RouterInputMessage < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata information associated with the router input, including stream details and connection state.</p>
    # @!attribute transport_stream_media_info
    #   <p> The metadata of the transport stream in the current flow's source.</p>
    #   @return [Types::TransportMediaInfo]
    class RouterInputMetadata < Struct.new(
      :transport_stream_media_info,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TransportStreamMediaInfo < RouterInputMetadata; end
      class Unknown < RouterInputMetadata; end
    end

    # <p>The protocol configuration settings for a router input.</p>
    # @!attribute rist
    #   <p>The configuration settings for a router input using the RIST (Reliable Internet Stream Transport) protocol, including the port and recovery latency.</p>
    #   @return [Types::RistRouterInputConfiguration]
    # @!attribute srt_listener
    #   <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in listener mode, including the port, minimum latency, and decryption key configuration.</p>
    #   @return [Types::SrtListenerRouterInputConfiguration]
    # @!attribute srt_caller
    #   <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in caller mode, including the source address and port, minimum latency, stream ID, and decryption key configuration.</p>
    #   @return [Types::SrtCallerRouterInputConfiguration]
    # @!attribute rtp
    #   <p>The configuration settings for a Router Input using the RTP (Real-Time Transport Protocol) protocol, including the port and forward error correction state.</p>
    #   @return [Types::RtpRouterInputConfiguration]
    class RouterInputProtocolConfiguration < Struct.new(
      :rist,
      :srt_listener,
      :srt_caller,
      :rtp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Rist < RouterInputProtocolConfiguration; end
      class SrtListener < RouterInputProtocolConfiguration; end
      class SrtCaller < RouterInputProtocolConfiguration; end
      class Rtp < RouterInputProtocolConfiguration; end
      class Unknown < RouterInputProtocolConfiguration; end
    end

    # <p>The request to create a new router input would exceed the service quotas for the account. </p>
    # @!attribute message
    #   @return [String]
    class RouterInputServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed metadata information about a router input source.</p>
    # @!attribute source_metadata_messages
    #   <p>Collection of metadata messages associated with the router input source.</p>
    #   @return [Array<Types::RouterInputMessage>]
    # @!attribute timestamp
    #   <p>The timestamp when the metadata was last updated.</p>
    #   @return [Time]
    # @!attribute router_input_metadata
    #   <p>Metadata information specific to the router input configuration and state.</p>
    #   @return [Types::RouterInputMetadata]
    class RouterInputSourceMetadataDetails < Struct.new(
      nil,
      :source_metadata_messages,
      :timestamp,
      :router_input_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for the router input stream.</p>
    # @!attribute standard
    #   <p>Configuration details for a standard router input stream type.</p>
    #   @return [Types::StandardRouterInputStreamDetails]
    # @!attribute media_live_channel
    #   <p>Configuration details for a MediaLive channel when used as a router input source.</p>
    #   @return [Types::MediaLiveChannelRouterInputStreamDetails]
    # @!attribute failover
    #   <p>Configuration details for a failover router input that can automatically switch between two sources.</p>
    #   @return [Types::FailoverRouterInputStreamDetails]
    # @!attribute media_connect_flow
    #   <p>Configuration details for a MediaConnect flow when used as a router input source.</p>
    #   @return [Types::MediaConnectFlowRouterInputStreamDetails]
    # @!attribute merge
    #   <p>Configuration details for a merge router input that combines two input sources.</p>
    #   @return [Types::MergeRouterInputStreamDetails]
    class RouterInputStreamDetails < Struct.new(
      :standard,
      :media_live_channel,
      :failover,
      :media_connect_flow,
      :merge,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Standard < RouterInputStreamDetails; end
      class MediaLiveChannel < RouterInputStreamDetails; end
      class Failover < RouterInputStreamDetails; end
      class MediaConnectFlow < RouterInputStreamDetails; end
      class Merge < RouterInputStreamDetails; end
      class Unknown < RouterInputStreamDetails; end
    end

    # <p>The details of a thumbnail associated with a router input, including the thumbnail messages, the thumbnail image, the timecode, and the timestamp.</p>
    # @!attribute thumbnail_messages
    #   <p>The messages associated with the router input thumbnail.</p>
    #   @return [Array<Types::RouterInputMessage>]
    # @!attribute thumbnail
    #   <p>The thumbnail image, encoded as a Base64-encoded binary data object.</p>
    #   @return [String]
    # @!attribute timecode
    #   <p>The timecode associated with the thumbnail.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>The timestamp associated with the thumbnail.</p>
    #   @return [Time]
    class RouterInputThumbnailDetails < Struct.new(
      nil,
      :thumbnail_messages,
      :thumbnail,
      :timecode,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The transit encryption settings for a router input.</p>
    # @!attribute encryption_key_type
    #   <p>Specifies the type of encryption key to use for transit encryption.</p>
    #   @return [String]
    # @!attribute encryption_key_configuration
    #   <p>Contains the configuration details for the encryption key used in transit encryption, including the key source and associated parameters.</p>
    #   @return [Types::RouterInputTransitEncryptionKeyConfiguration]
    class RouterInputTransitEncryption < Struct.new(
      nil,
      :encryption_key_type,
      :encryption_key_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the configuration settings for transit encryption keys.</p>
    # @!attribute secrets_manager
    #   <p>The configuration settings for transit encryption using Secrets Manager, including the secret ARN and role ARN.</p>
    #   @return [Types::SecretsManagerEncryptionKeyConfiguration]
    # @!attribute automatic
    #   <p>Configuration settings for automatic encryption key management, where MediaConnect handles key creation and rotation.</p>
    #   @return [Types::AutomaticEncryptionKeyConfiguration]
    class RouterInputTransitEncryptionKeyConfiguration < Struct.new(
      :secrets_manager,
      :automatic,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class SecretsManager < RouterInputTransitEncryptionKeyConfiguration; end
      class Automatic < RouterInputTransitEncryptionKeyConfiguration; end
      class Unknown < RouterInputTransitEncryptionKeyConfiguration; end
    end

    # <p>A router network interface in AWS Elemental MediaConnect. A router network interface is a network interface that can be associated with one or more router inputs and outputs.</p>
    # @!attribute name
    #   <p>The name of the router network interface.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router network interface.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router network interface.</p>
    #   @return [String]
    # @!attribute network_interface_type
    #   <p>The type of the router network interface.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for a router network interface.</p>
    #   @return [Types::RouterNetworkInterfaceConfiguration]
    # @!attribute associated_output_count
    #   <p>The number of router outputs associated with the network interface.</p>
    #   @return [Integer]
    # @!attribute associated_input_count
    #   <p>The number of router inputs associated with the network interface.</p>
    #   @return [Integer]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the router network interface is located.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the router network interface was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router network interface was last updated.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag and organize this router network interface.</p>
    #   @return [Hash<String, String>]
    class RouterNetworkInterface < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :state,
      :network_interface_type,
      :configuration,
      :associated_output_count,
      :associated_input_count,
      :region_name,
      :created_at,
      :updated_at,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router network interface.</p>
    # @!attribute public
    #   <p>The configuration settings for a public router network interface, including the list of allowed CIDR blocks.</p>
    #   @return [Types::PublicRouterNetworkInterfaceConfiguration]
    # @!attribute vpc
    #   <p>The configuration settings for a router network interface within a VPC, including the security group IDs and subnet ID.</p>
    #   @return [Types::VpcRouterNetworkInterfaceConfiguration]
    class RouterNetworkInterfaceConfiguration < Struct.new(
      :public,
      :vpc,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Public < RouterNetworkInterfaceConfiguration; end
      class Vpc < RouterNetworkInterfaceConfiguration; end
      class Unknown < RouterNetworkInterfaceConfiguration; end
    end

    # <p>A filter that can be used to retrieve a list of router network interfaces.</p>
    # @!attribute region_names
    #   <p>The AWS Regions of the router network interfaces to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_types
    #   <p>The types of router network interfaces to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute name_contains
    #   <p>The names of the router network interfaces to include in the filter.</p>
    #   @return [Array<String>]
    class RouterNetworkInterfaceFilter < Struct.new(
      :region_names,
      :network_interface_types,
      :name_contains,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RegionNames < RouterNetworkInterfaceFilter; end
      class NetworkInterfaceTypes < RouterNetworkInterfaceFilter; end
      class NameContains < RouterNetworkInterfaceFilter; end
      class Unknown < RouterNetworkInterfaceFilter; end
    end

    # <p>The request to create a new router network interface would exceed the service quotas (limits) set for the account. </p>
    # @!attribute message
    #   @return [String]
    class RouterNetworkInterfaceServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A router output in AWS Elemental MediaConnect. A router output is a destination for media content that can receive input from one or more router inputs.</p>
    # @!attribute name
    #   <p>The name of the router output.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output.</p>
    #   @return [String]
    # @!attribute id
    #   <p>The unique identifier of the router output.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The overall state of the router output.</p>
    #   @return [String]
    # @!attribute output_type
    #   <p>The type of the router output.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The configuration settings for a router output.</p>
    #   @return [Types::RouterOutputConfiguration]
    # @!attribute routed_state
    #   <p>The current state of the association between the router output and its input.</p>
    #   @return [String]
    # @!attribute region_name
    #   <p>The Amazon Web Services Region where the router output is located.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone of the router output.</p>
    #   @return [String]
    # @!attribute maximum_bitrate
    #   <p>The maximum bitrate for the router output.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Indicates whether the router output is configured for Regional or global routing.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The tier level for the router output. The tier sets the maximum bitrate, in Mbps, for the router output. Valid values include the following:</p> <ul> <li> <p> <code>OUTPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>OUTPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>OUTPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>OUTPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>OUTPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp when the router output was created.</p>
    #   @return [Time]
    # @!attribute updated_at
    #   <p>The timestamp when the router output was last updated.</p>
    #   @return [Time]
    # @!attribute messages
    #   <p>The messages associated with the router output.</p>
    #   @return [Array<Types::RouterOutputMessage>]
    # @!attribute tags
    #   <p>Key-value pairs that can be used to tag and organize this router output.</p>
    #   @return [Hash<String, String>]
    # @!attribute stream_details
    #   <p>Information about the router output's stream, including connection state and destination details. The specific details provided vary based on the router output type.</p>
    #   @return [Types::RouterOutputStreamDetails]
    # @!attribute ip_address
    #   <p>The IP address of the router output.</p>
    #   @return [String]
    # @!attribute routed_input_arn
    #   <p>The Amazon Resource Name (ARN) of the router input associated with the output.</p>
    #   @return [String]
    # @!attribute maintenance_type
    #   <p>The type of maintenance configuration applied to this router output.</p>
    #   @return [String]
    # @!attribute maintenance_configuration
    #   <p>The maintenance configuration settings applied to this router output.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule currently in effect for this router output.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The current maintenance schedule details for this router output.</p>
    #   @return [Types::MaintenanceSchedule]
    # @!attribute fabric_configuration
    #   <p>The fabric configuration settings for the router output.</p>
    #   @return [Types::FabricConfiguration]
    class RouterOutput < Struct.new(
      nil,
      :name,
      :arn,
      :id,
      :state,
      :output_type,
      :configuration,
      :routed_state,
      :region_name,
      :availability_zone,
      :maximum_bitrate,
      :routing_scope,
      :tier,
      :created_at,
      :updated_at,
      :messages,
      :tags,
      :stream_details,
      :ip_address,
      :routed_input_arn,
      :maintenance_type,
      :maintenance_configuration,
      :maintenance_schedule_type,
      :maintenance_schedule,
      :fabric_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router output.</p>
    # @!attribute standard
    #   <p>The configuration settings for a standard router output, including the protocol, protocol-specific configuration, network interface, and availability zone.</p>
    #   @return [Types::StandardRouterOutputConfiguration]
    # @!attribute media_connect_flow
    #   <p>Configuration settings for connecting a router output to a MediaConnect flow source.</p> <p>To connect the router output to the flow source, provide both <code>flowArn</code> and <code>flowSourceArn</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>destinationTransitEncryption</code> while the router output is connected to a flow source. To change it, first disconnect the router output, then update the encryption.</p> </note>
    #   @return [Types::MediaConnectFlowRouterOutputConfiguration]
    # @!attribute media_live_input
    #   <p>Configuration settings for connecting a router output to a MediaLive input.</p> <p>To connect the router output to the MediaLive input, provide both <code>mediaLiveInputArn</code> and <code>mediaLivePipelineId</code>. To disconnect it, call the update operation and omit both fields while keeping this configuration object.</p> <note> <p>You can't change <code>destinationTransitEncryption</code> while the router output is connected to a MediaLive input. To change it, first disconnect the router output, then update the encryption.</p> </note>
    #   @return [Types::MediaLiveInputRouterOutputConfiguration]
    class RouterOutputConfiguration < Struct.new(
      :standard,
      :media_connect_flow,
      :media_live_input,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Standard < RouterOutputConfiguration; end
      class MediaConnectFlow < RouterOutputConfiguration; end
      class MediaLiveInput < RouterOutputConfiguration; end
      class Unknown < RouterOutputConfiguration; end
    end

    # <p>A filter that can be used to retrieve a list of router outputs.</p>
    # @!attribute region_names
    #   <p>The AWS Regions of the router outputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_arns
    #   <p>The Amazon Resource Names (ARNs) of the network interfaces associated with the router outputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute routing_scopes
    #   <p>Filter criteria to list router outputs based on their routing scope.</p>
    #   @return [Array<String>]
    # @!attribute output_types
    #   <p>The types of router outputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute routed_input_arns
    #   <p>The ARNs of the router inputs associated with the router outputs to include in the filter.</p>
    #   @return [Array<String>]
    # @!attribute name_contains
    #   <p>The names of the router outputs to include in the filter.</p>
    #   @return [Array<String>]
    class RouterOutputFilter < Struct.new(
      :region_names,
      :network_interface_arns,
      :routing_scopes,
      :output_types,
      :routed_input_arns,
      :name_contains,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class RegionNames < RouterOutputFilter; end
      class NetworkInterfaceArns < RouterOutputFilter; end
      class RoutingScopes < RouterOutputFilter; end
      class OutputTypes < RouterOutputFilter; end
      class RoutedInputArns < RouterOutputFilter; end
      class NameContains < RouterOutputFilter; end
      class Unknown < RouterOutputFilter; end
    end

    # <p>A message associated with a router output.</p>
    # @!attribute code
    #   <p>The code associated with the router output message.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message text associated with the router output message.</p>
    #   @return [String]
    class RouterOutputMessage < Struct.new(
      nil,
      :code,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The protocol configuration settings for a router output.</p>
    # @!attribute rist
    #   <p>The configuration settings for a router output using the RIST (Reliable Internet Stream Transport) protocol, including the destination address and port.</p>
    #   @return [Types::RistRouterOutputConfiguration]
    # @!attribute srt_listener
    #   <p>The configuration settings for a router output using the SRT (Secure Reliable Transport) protocol in listener mode, including the port, minimum latency, and encryption key configuration.</p>
    #   @return [Types::SrtListenerRouterOutputConfiguration]
    # @!attribute rtmp_push
    #   <p>The configuration settings for a router output that pushes a stream to a destination using the RTMP (Real-Time Messaging Protocol) protocol, or RTMPS (RTMP over TLS) when TLS encryption is specified. These settings include the destination address and port, the application and stream names, and optional TLS encryption configuration.</p>
    #   @return [Types::RtmpPushRouterOutputConfiguration]
    # @!attribute srt_caller
    #   <p>The configuration settings for a router output using the SRT (Secure Reliable Transport) protocol in caller mode, including the destination address and port, minimum latency, stream ID, and encryption key configuration.</p>
    #   @return [Types::SrtCallerRouterOutputConfiguration]
    # @!attribute rtp
    #   <p>The configuration settings for a router output using the RTP (Real-Time Transport Protocol) protocol, including the destination address and port, and forward error correction state.</p>
    #   @return [Types::RtpRouterOutputConfiguration]
    class RouterOutputProtocolConfiguration < Struct.new(
      :rist,
      :srt_listener,
      :rtmp_push,
      :srt_caller,
      :rtp,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Rist < RouterOutputProtocolConfiguration; end
      class SrtListener < RouterOutputProtocolConfiguration; end
      class RtmpPush < RouterOutputProtocolConfiguration; end
      class SrtCaller < RouterOutputProtocolConfiguration; end
      class Rtp < RouterOutputProtocolConfiguration; end
      class Unknown < RouterOutputProtocolConfiguration; end
    end

    # <p>The request to create a new router output would exceed the service quotas (limits) set for the account. </p>
    # @!attribute message
    #   @return [String]
    class RouterOutputServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the router output's stream, including connection state and destination details. The specific details provided vary based on the router output type.</p>
    # @!attribute standard
    #   <p>Configuration details for a standard router output stream type. Contains information about the destination IP address and connection state for basic output routing.</p>
    #   @return [Types::StandardRouterOutputStreamDetails]
    # @!attribute media_connect_flow
    #   <p>Configuration details for a MediaConnect flow when used as a router output destination.</p>
    #   @return [Types::MediaConnectFlowRouterOutputStreamDetails]
    # @!attribute media_live_input
    #   <p>Configuration details for a MediaLive input when used as a router output destination.</p>
    #   @return [Types::MediaLiveInputRouterOutputStreamDetails]
    class RouterOutputStreamDetails < Struct.new(
      :standard,
      :media_connect_flow,
      :media_live_input,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Standard < RouterOutputStreamDetails; end
      class MediaConnectFlow < RouterOutputStreamDetails; end
      class MediaLiveInput < RouterOutputStreamDetails; end
      class Unknown < RouterOutputStreamDetails; end
    end

    # <p>The configuration settings for a router output that pushes a stream to a destination using the RTMP (Real-Time Messaging Protocol) protocol, or RTMPS (RTMP over TLS) when TLS encryption is specified. These settings include the destination address and port, the application and stream names, and optional TLS encryption configuration.</p>
    # @!attribute destination_address
    #   <p>The IP address or hostname of the destination RTMP server that the router output pushes the stream to. Provide only the server address; specify the application and stream names separately.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The TCP port on the destination RTMP server. For RTMP, valid values range from <code>1024</code> to <code>65535</code>. For RTMPS (RTMP over TLS), valid values are <code>443</code> or <code>1024</code> to <code>65535</code>. RTMP typically uses port <code>1935</code>, and RTMPS typically uses port <code>443</code>.</p>
    #   @return [Integer]
    # @!attribute application_name
    #   <p>The name of the RTMP application on the destination server. Together with the stream name, the application name forms the RTMP URL path, in the pattern <code>rtmp://destinationAddress/applicationName/streamName</code>.</p>
    #   @return [String]
    # @!attribute stream_name
    #   <p>The name of the RTMP stream that the output publishes to the destination application. The stream name forms the final segment of the RTMP URL path.</p>
    #   @return [String]
    # @!attribute tls_encryption
    #   <p>The TLS encryption settings for the output. When you specify these settings, the output uses RTMPS (RTMP over TLS) to establish a secure, encrypted connection to the destination server.</p>
    #   @return [Types::TlsEncryption]
    class RtmpPushRouterOutputConfiguration < Struct.new(
      nil,
      :destination_address,
      :destination_port,
      :application_name,
      :stream_name,
      :tls_encryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a Router Input using the RTP (Real-Time Transport Protocol) protocol, including the port and forward error correction state.</p>
    # @!attribute port
    #   <p>The port number used for the RTP protocol in the router input configuration.</p>
    #   @return [Integer]
    # @!attribute forward_error_correction
    #   <p>The state of forward error correction for the RTP protocol in the router input configuration.</p>
    #   @return [String]
    class RtpRouterInputConfiguration < Struct.new(
      nil,
      :port,
      :forward_error_correction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router output using the RTP (Real-Time Transport Protocol) protocol, including the destination address and port, and forward error correction state.</p>
    # @!attribute destination_address
    #   <p>The destination IP address for the RTP protocol in the router output configuration.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port number for the RTP protocol in the router output configuration.</p>
    #   @return [Integer]
    # @!attribute forward_error_correction
    #   <p>The state of forward error correction for the RTP protocol in the router output configuration.</p>
    #   @return [String]
    class RtpRouterOutputConfiguration < Struct.new(
      nil,
      :destination_address,
      :destination_port,
      :forward_error_correction,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for transit encryption using Secrets Manager, including the secret ARN and role ARN.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the Secrets Manager secret used for transit encryption.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role assumed by MediaConnect to access the Secrets Manager secret.</p>
    #   @return [String]
    class SecretsManagerEncryptionKeyConfiguration < Struct.new(
      nil,
      :secret_arn,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is currently unavailable or busy. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class SetGatewayBridgeSourceRequest < Struct.new(
      nil,
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for the source of the flow.</p>
    # @!attribute decryption
    #   <p> The type of encryption that is used on the content ingested from this source. Allowable encryption types: static-key.</p>
    #   @return [Types::Encryption]
    # @!attribute description
    #   <p> A description for the source. This value is not used or seen outside of the current MediaConnect account.</p>
    #   @return [String]
    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement that allows you to subscribe to this flow. The entitlement is set by the flow originator, and the ARN is generated as part of the originator's flow.</p>
    #   @return [String]
    # @!attribute ingest_port
    #   <p> The port that the flow will be listening on for incoming content.</p>
    #   @return [Integer]
    # @!attribute max_bitrate
    #   <p> The smoothing max bitrate (in bps) for RIST, RTP, and RTP-FEC streams.</p>
    #   @return [Integer]
    # @!attribute max_latency
    #   <p> The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams.</p>
    #   @return [Integer]
    # @!attribute max_sync_buffer
    #   <p> The size of the buffer (in milliseconds) to use to sync incoming source data.</p>
    #   @return [Integer]
    # @!attribute media_stream_source_configurations
    #   <p> The media streams that are associated with the source, and the parameters for those associations.</p>
    #   @return [Array<Types::MediaStreamSourceConfigurationRequest>]
    # @!attribute min_latency
    #   <p> The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p> The name of the source.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p> The protocol that is used by the source.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    #   @return [String]
    # @!attribute source_listener_address
    #   <p> Source IP or domain name for SRT-caller protocol.</p>
    #   @return [String]
    # @!attribute source_listener_port
    #   <p> Source port for SRT-caller protocol.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p> The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams.</p>
    #   @return [String]
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface to use for this source.</p>
    #   @return [String]
    # @!attribute whitelist_cidr
    #   <p> The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [String]
    # @!attribute gateway_bridge_source
    #   <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    #   @return [Types::SetGatewayBridgeSourceRequest]
    # @!attribute ndi_source_settings
    #   <p> The settings for the NDI® source. This includes the exact name of the upstream NDI sender that you want to connect to your source. </p>
    #   @return [Types::NdiSourceSettings]
    # @!attribute source_tags
    #   <p> The key-value pairs that can be used to tag and organize the source. </p>
    #   @return [Hash<String, String>]
    # @!attribute router_integration_state
    #   <p>Indicates whether to enable or disable router integration when setting a flow source.</p>
    #   @return [String]
    # @!attribute router_integration_transit_decryption
    #   <p>The decryption configuration for the flow source when router integration is enabled. Specifies how the source content should be decrypted when router integration is used.</p>
    #   @return [Types::FlowTransitEncryption]
    class SetSourceRequest < Struct.new(
      nil,
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :name,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source,
      :ndi_source_settings,
      :source_tags,
      :router_integration_state,
      :router_integration_transit_decryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configures settings for the <code>SilentAudio</code> metric. </p>
    # @!attribute state
    #   <p>Indicates whether the <code>SilentAudio</code> metric is enabled or disabled. </p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p>Specifies the number of consecutive seconds of silence that triggers an event or alert. </p>
    #   @return [Integer]
    class SilentAudio < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detects silent audio in the router input's source content and reports it through a CloudWatch metric, an EventBridge event, and a router input message.</p>
    # @!attribute state
    #   <p>Indicates whether silent audio detection is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p>The number of consecutive seconds of silence that MediaConnect must detect before it reports an issue.</p>
    #   @return [Integer]
    class SilentAudioConfiguration < Struct.new(
      nil,
      :state,
      :threshold_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for the source of the flow.</p>
    # @!attribute data_transfer_subscriber_fee_percent
    #   <p> Percentage from 0-100 of the data transfer cost to be billed to the subscriber.</p>
    #   @return [Integer]
    # @!attribute decryption
    #   <p> The type of encryption that is used on the content ingested from this source.</p>
    #   @return [Types::Encryption]
    # @!attribute description
    #   <p> A description for the source. This value is not used or seen outside of the current MediaConnect account.</p>
    #   @return [String]
    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement that allows you to subscribe to content that comes from another Amazon Web Services account. The entitlement is set by the content originator and the ARN is generated as part of the originator's flow.</p>
    #   @return [String]
    # @!attribute ingest_ip
    #   <p> The IP address that the flow will be listening on for incoming content.</p>
    #   @return [String]
    # @!attribute ingest_port
    #   <p> The port that the flow will be listening on for incoming content.</p>
    #   @return [Integer]
    # @!attribute media_stream_source_configurations
    #   <p> The media streams that are associated with the source, and the parameters for those associations.</p>
    #   @return [Array<Types::MediaStreamSourceConfiguration>]
    # @!attribute name
    #   <p> The name of the source.</p>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p> The ARN of the source.</p>
    #   @return [String]
    # @!attribute transport
    #   <p> Attributes related to the transport stream that are used in the source.</p>
    #   @return [Types::Transport]
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface that is used for this source.</p>
    #   @return [String]
    # @!attribute whitelist_cidr
    #   <p> The range of IP addresses that should be allowed to contribute content to your source. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [String]
    # @!attribute gateway_bridge_source
    #   <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    #   @return [Types::GatewayBridgeSource]
    # @!attribute peer_ip_address
    #   <p>The IP address of the device that is currently sending content to this source. </p> <note> <ul> <li> <p>For sources that use protocols where you specify the origin (such as SRT Caller), this value matches the configured origin address. </p> </li> <li> <p>For sources that use listener protocols (such as SRT Listener or RTP), this value shows the address of the connected sender. </p> </li> <li> <p>Peer IP addresses aren't available for entitlements and CDI/ST2110 sources.</p> </li> <li> <p>The peer IP address might not be visible for flows that haven't been started yet, or flows that were started before May 2025. In these cases, restart your flow to see the peer IP address.</p> </li> </ul> </note>
    #   @return [String]
    # @!attribute router_integration_state
    #   <p>Indicates if router integration is enabled or disabled on the flow source.</p>
    #   @return [String]
    # @!attribute router_integration_transit_decryption
    #   <p>The decryption configuration for the flow source when router integration is enabled.</p>
    #   @return [Types::FlowTransitEncryption]
    # @!attribute connected_router_output_arn
    #   <p>The ARN of the router output that's currently connected to this source.</p>
    #   @return [String]
    class Source < Struct.new(
      nil,
      :data_transfer_subscriber_fee_percent,
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_ip,
      :ingest_port,
      :media_stream_source_configurations,
      :name,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :transport,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source,
      :peer_ip_address,
      :router_integration_state,
      :router_integration_transit_decryption,
      :connected_router_output_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams. </p>
    # @!attribute primary_source
    #   <p> The name of the source you choose as the primary source for this flow.</p>
    #   @return [String]
    class SourcePriority < Struct.new(
      nil,
      :primary_source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in caller mode, including the source address and port, minimum latency, stream ID, and decryption key configuration.</p>
    # @!attribute source_address
    #   <p>The source IP address for the SRT protocol in caller mode.</p>
    #   @return [String]
    # @!attribute source_port
    #   <p>The source port number for the SRT protocol in caller mode.</p>
    #   @return [Integer]
    # @!attribute minimum_latency_milliseconds
    #   <p>The minimum latency in milliseconds for the SRT protocol in caller mode.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p>The stream ID for the SRT protocol in caller mode.</p>
    #   @return [String]
    # @!attribute decryption_configuration
    #   <p>Specifies the decryption settings for an SRT caller input, including the encryption key configuration and associated parameters.</p>
    #   @return [Types::SrtDecryptionConfiguration]
    class SrtCallerRouterInputConfiguration < Struct.new(
      nil,
      :source_address,
      :source_port,
      :minimum_latency_milliseconds,
      :stream_id,
      :decryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router output using the SRT (Secure Reliable Transport) protocol in caller mode, including the destination address and port, minimum latency, stream ID, and encryption key configuration.</p>
    # @!attribute destination_address
    #   <p>The destination IP address for the SRT protocol in caller mode.</p>
    #   @return [String]
    # @!attribute destination_port
    #   <p>The destination port number for the SRT protocol in caller mode.</p>
    #   @return [Integer]
    # @!attribute minimum_latency_milliseconds
    #   <p>The minimum latency in milliseconds for the SRT protocol in caller mode.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p>The stream ID for the SRT protocol in caller mode.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Defines the encryption settings for an SRT caller output, including the encryption key configuration and associated parameters.</p>
    #   @return [Types::SrtEncryptionConfiguration]
    class SrtCallerRouterOutputConfiguration < Struct.new(
      nil,
      :destination_address,
      :destination_port,
      :minimum_latency_milliseconds,
      :stream_id,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for decrypting SRT streams, including the encryption key details and decryption parameters.</p>
    # @!attribute encryption_key
    #   <p>Specifies the encryption key configuration used for decrypting SRT streams, including the key source and associated credentials.</p>
    #   @return [Types::SecretsManagerEncryptionKeyConfiguration]
    class SrtDecryptionConfiguration < Struct.new(
      nil,
      :encryption_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the configuration settings for encrypting SRT streams, including the encryption key details and encryption parameters.</p>
    # @!attribute encryption_key
    #   <p>Specifies the encryption key configuration used for encrypting SRT streams, including the key source and associated credentials.</p>
    #   @return [Types::SecretsManagerEncryptionKeyConfiguration]
    class SrtEncryptionConfiguration < Struct.new(
      nil,
      :encryption_key,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router input using the SRT (Secure Reliable Transport) protocol in listener mode, including the port, minimum latency, and decryption key configuration.</p>
    # @!attribute port
    #   <p>The port number for the SRT protocol in listener mode.</p>
    #   @return [Integer]
    # @!attribute minimum_latency_milliseconds
    #   <p>The minimum latency in milliseconds for the SRT protocol in listener mode.</p>
    #   @return [Integer]
    # @!attribute decryption_configuration
    #   <p>Specifies the decryption settings for an SRT listener input, including the encryption key configuration and associated parameters.</p>
    #   @return [Types::SrtDecryptionConfiguration]
    class SrtListenerRouterInputConfiguration < Struct.new(
      nil,
      :port,
      :minimum_latency_milliseconds,
      :decryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router output using the SRT (Secure Reliable Transport) protocol in listener mode, including the port, minimum latency, and encryption key configuration.</p>
    # @!attribute port
    #   <p>The port number for the SRT protocol in listener mode.</p>
    #   @return [Integer]
    # @!attribute minimum_latency_milliseconds
    #   <p>The minimum latency in milliseconds for the SRT protocol in listener mode.</p>
    #   @return [Integer]
    # @!attribute encryption_configuration
    #   <p>Defines the encryption settings for an SRT listener output, including the encryption key configuration and associated parameters.</p>
    #   @return [Types::SrtEncryptionConfiguration]
    class SrtListenerRouterOutputConfiguration < Struct.new(
      nil,
      :port,
      :minimum_latency_milliseconds,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a standard router input, including the protocol, protocol-specific configuration, network interface, and availability zone.</p>
    # @!attribute network_interface_arn
    #   <p>The Amazon Resource Name (ARN) of the network interface associated with the standard router input.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration settings for the protocol used by the standard router input.</p>
    #   @return [Types::RouterInputProtocolConfiguration]
    # @!attribute protocol
    #   <p>The protocol used by the standard router input.</p>
    #   @return [String]
    class StandardRouterInputConfiguration < Struct.new(
      nil,
      :network_interface_arn,
      :protocol_configuration,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a standard router input stream type.</p>
    # @!attribute source_ip_address
    #   <p>The source IP address for the standard router input stream.</p>
    #   @return [String]
    class StandardRouterInputStreamDetails < Struct.new(
      nil,
      :source_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a standard router output, including the protocol, protocol-specific configuration, network interface, and availability zone.</p>
    # @!attribute network_interface_arn
    #   <p>The Amazon Resource Name (ARN) of the network interface associated with the standard router output.</p>
    #   @return [String]
    # @!attribute protocol_configuration
    #   <p>The configuration settings for the protocol used by the standard router output.</p>
    #   @return [Types::RouterOutputProtocolConfiguration]
    # @!attribute protocol
    #   <p>The protocol used by the standard router output.</p>
    #   @return [String]
    class StandardRouterOutputConfiguration < Struct.new(
      nil,
      :network_interface_arn,
      :protocol_configuration,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration details for a standard router output stream type. Contains information about the destination IP address and connection state for basic output routing.</p>
    # @!attribute destination_ip_address
    #   <p>The IP address where the output stream will be sent. This is the destination address that will receive the routed media content.</p>
    #   @return [String]
    class StandardRouterOutputStreamDetails < Struct.new(
      nil,
      :destination_ip_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to start.</p>
    #   @return [String]
    class StartFlowRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you started.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>StartFlow</code> process begins.</p>
    #   @return [String]
    class StartFlowResponse < Struct.new(
      nil,
      :flow_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to start.</p>
    #   @return [String]
    class StartRouterInputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router input that was started.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router input that was started.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router input after being started.</p>
    #   @return [String]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule associated with the router input.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The details of the maintenance schedule for the router input.</p>
    #   @return [Types::MaintenanceSchedule]
    class StartRouterInputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      :maintenance_schedule_type,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to start.</p>
    #   @return [String]
    class StartRouterOutputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that was started.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router output that was started.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router output after being started.</p>
    #   @return [String]
    # @!attribute maintenance_schedule_type
    #   <p>The type of maintenance schedule associated with the router output.</p>
    #   @return [String]
    # @!attribute maintenance_schedule
    #   <p>The details of the maintenance schedule for the router output.</p>
    #   @return [Types::MaintenanceSchedule]
    class StartRouterOutputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      :maintenance_schedule_type,
      :maintenance_schedule,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to stop.</p>
    #   @return [String]
    class StopFlowRequest < Struct.new(
      nil,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you stopped.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>StopFlow</code> process begins.</p>
    #   @return [String]
    class StopFlowResponse < Struct.new(
      nil,
      :flow_arn,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to stop.</p>
    #   @return [String]
    class StopRouterInputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router input that was stopped.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router input that was stopped.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router input after being stopped.</p>
    #   @return [String]
    class StopRouterInputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to stop.</p>
    #   @return [String]
    class StopRouterOutputRequest < Struct.new(
      nil,
      :arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the router output that was stopped.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the router output that was stopped.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the router output after being stopped.</p>
    #   @return [String]
    class StopRouterOutputResponse < Struct.new(
      nil,
      :arn,
      :name,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource to tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A map of tag keys and values to add to the global resource.</p>
    #   @return [Hash<String, String>]
    class TagGlobalResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p> A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_output_arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to associate with a router input.</p>
    #   @return [String]
    # @!attribute router_input_arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to associate with a router output.</p>
    #   @return [String]
    class TakeRouterInputRequest < Struct.new(
      nil,
      :router_output_arn,
      :router_input_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute routed_state
    #   <p>The state of the association between the router input and output.</p>
    #   @return [String]
    # @!attribute router_output_arn
    #   <p>The ARN of the associated router output.</p>
    #   @return [String]
    # @!attribute router_output_name
    #   <p>The name of the associated router output.</p>
    #   @return [String]
    # @!attribute router_input_arn
    #   <p>The ARN of the associated router input.</p>
    #   @return [String]
    # @!attribute router_input_name
    #   <p>The name of the associated router input.</p>
    #   @return [String]
    class TakeRouterInputResponse < Struct.new(
      nil,
      :routed_state,
      :router_output_arn,
      :router_output_name,
      :router_input_arn,
      :router_input_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The details of the thumbnail, including thumbnail base64 string, timecode and the time when thumbnail was generated.</p>
    # @!attribute flow_arn
    #   <p> The ARN of the flow that DescribeFlowSourceThumbnail was performed on.</p>
    #   @return [String]
    # @!attribute thumbnail
    #   <p>Thumbnail Base64 string. </p>
    #   @return [String]
    # @!attribute thumbnail_messages
    #   <p> Status code and messages about the flow source thumbnail.</p>
    #   @return [Array<Types::MessageDetail>]
    # @!attribute timecode
    #   <p> Timecode of thumbnail.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p> The timestamp of when thumbnail was generated.</p>
    #   @return [Time]
    class ThumbnailDetails < Struct.new(
      nil,
      :flow_arn,
      :thumbnail,
      :thumbnail_messages,
      :timecode,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The Transport Layer Security (TLS) encryption settings used to establish a secure connection to a destination.</p>
    # @!attribute encryption_type
    #   <p>The type of TLS encryption to use for the connection.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>The configuration settings for the specified TLS encryption type.</p>
    #   @return [Types::TlsEncryptionConfiguration]
    class TlsEncryption < Struct.new(
      nil,
      :encryption_type,
      :encryption_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for TLS encryption.</p>
    # @!attribute public
    #   <p>The TLS encryption configuration that validates the destination by using a publicly trusted certificate authority.</p>
    #   @return [Types::PublicTlsEncryptionConfiguration]
    class TlsEncryptionConfiguration < Struct.new(
      :public,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Public < TlsEncryptionConfiguration; end
      class Unknown < TlsEncryptionConfiguration; end
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Attributes related to the transport stream that are used in a source or output.</p>
    # @!attribute cidr_allow_list
    #   <p> The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16</p>
    #   @return [Array<String>]
    # @!attribute max_bitrate
    #   <p> The smoothing max bitrate (in bps) for RIST, RTP, and RTP-FEC streams.</p>
    #   @return [Integer]
    # @!attribute max_latency
    #   <p> The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams.</p>
    #   @return [Integer]
    # @!attribute max_sync_buffer
    #   <p> The size of the buffer (in milliseconds) to use to sync incoming source data.</p>
    #   @return [Integer]
    # @!attribute min_latency
    #   <p> The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The protocol that is used by the source or output.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute remote_id
    #   <p> The remote ID for the Zixi-pull stream.</p>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    #   @return [String]
    # @!attribute smoothing_latency
    #   <p> The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.</p>
    #   @return [Integer]
    # @!attribute source_listener_address
    #   <p> Source IP or domain name for SRT-caller protocol.</p>
    #   @return [String]
    # @!attribute source_listener_port
    #   <p> Source port for SRT-caller protocol.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p> The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams.</p>
    #   @return [String]
    # @!attribute ndi_speed_hq_quality
    #   <p>A quality setting for the NDI Speed HQ encoder. </p>
    #   @return [Integer]
    # @!attribute ndi_program_name
    #   <p>A suffix for the name of the NDI® sender that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    # @!attribute ndi_source_settings
    #   <p> The settings for the NDI source. This includes the exact name of the upstream NDI sender that you want to connect to your source. </p>
    #   @return [Types::NdiSourceSettings]
    # @!attribute ndi_output_timecode_source
    #   <p>The timecode source for NDI output frames. For NDI outputs, this field is always present and defaults to <code>EMBEDDED_TIMECODE</code>.</p> <ul> <li> <p> <code>EMBEDDED_TIMECODE</code> - Preserves timecodes from the input transport stream. The timecodes must be embedded in the video stream as SEI timing messages. If no embedded timecode is detected, MediaConnect uses the UTC system time instead.</p> </li> <li> <p> <code>UTC_SYSTEM_TIME</code> - Generates timecodes based on the system clock time when each frame is sent.</p> </li> </ul>
    #   @return [String]
    # @!attribute ndi_audio_reference_level
    #   <p>The audio reference level of the NDI receiver, in decibels relative to full scale (dBFS). Common values are <code>-20</code> (NDI and SMPTE) and <code>-18</code> (EBU). For NDI outputs, this field is always present and defaults to <code>-20</code>.</p>
    #   @return [Integer]
    class Transport < Struct.new(
      nil,
      :cidr_allow_list,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :min_latency,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :ndi_speed_hq_quality,
      :ndi_program_name,
      :ndi_source_settings,
      :ndi_output_timecode_source,
      :ndi_audio_reference_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata of the transport stream in the current flow's source.</p>
    # @!attribute programs
    #   <p> The list of transport stream programs in the current flow's source.</p>
    #   @return [Array<Types::TransportStreamProgram>]
    # @!attribute ts_id
    #   <p>The transport stream ID (TSID) of the source, from the Program Association Table (PAT).</p>
    #   @return [Integer]
    class TransportMediaInfo < Struct.new(
      nil,
      :programs,
      :ts_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata of an elementary transport stream.</p>
    # @!attribute channels
    #   <p> The number of channels in the audio stream.</p>
    #   @return [Integer]
    # @!attribute codec
    #   <p> The codec used by the stream.</p>
    #   @return [String]
    # @!attribute color
    #   <p>The color signaling of the video stream.</p>
    #   @return [Types::ColorInformation]
    # @!attribute frame_rate
    #   <p> The frame rate used by the video stream.</p>
    #   @return [String]
    # @!attribute frame_resolution
    #   <p>The frame resolution used by the video stream. </p>
    #   @return [Types::FrameResolution]
    # @!attribute pid
    #   <p> The Packet ID (PID) as it is reported in the Program Map Table.</p>
    #   @return [Integer]
    # @!attribute sample_rate
    #   <p> The sample rate used by the audio stream.</p>
    #   @return [Integer]
    # @!attribute sample_size
    #   <p> The sample bit size used by the audio stream.</p>
    #   @return [Integer]
    # @!attribute stream_type
    #   <p> The Stream Type as it is reported in the Program Map Table.</p>
    #   @return [String]
    class TransportStream < Struct.new(
      nil,
      :channels,
      :codec,
      :color,
      :frame_rate,
      :frame_resolution,
      :pid,
      :sample_rate,
      :sample_size,
      :stream_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The metadata of a single transport stream program.</p>
    # @!attribute pcr_pid
    #   <p> The Program Clock Reference (PCR) Packet ID (PID) as it is reported in the Program Association Table.</p>
    #   @return [Integer]
    # @!attribute program_name
    #   <p> The program name as it is reported in the Program Association Table.</p>
    #   @return [String]
    # @!attribute program_number
    #   <p> The program number as it is reported in the Program Association Table.</p>
    #   @return [Integer]
    # @!attribute program_pid
    #   <p> The program Packet ID (PID) as it is reported in the Program Association Table.</p>
    #   @return [Integer]
    # @!attribute streams
    #   <p> The list of elementary transport streams in the program. The list includes video, audio, and data streams.</p>
    #   @return [Array<Types::TransportStream>]
    class TransportStreamProgram < Struct.new(
      nil,
      :pcr_pid,
      :program_name,
      :program_number,
      :program_pid,
      :streams,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the global resource to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the global resource.</p>
    #   @return [Array<String>]
    class UntagGlobalResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Update the flow source of the bridge. </p>
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource from which to delete tags.</p>
    #   @return [String]
    # @!attribute flow_vpc_interface_attachment
    #   <p>The name of the VPC interface attachment to use for this source. </p>
    #   @return [Types::VpcInterfaceAttachment]
    class UpdateBridgeFlowSourceRequest < Struct.new(
      nil,
      :flow_arn,
      :flow_vpc_interface_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Update an existing network output. </p>
    # @!attribute ip_address
    #   <p>The network output IP Address. </p>
    #   @return [String]
    # @!attribute network_name
    #   <p>The network output's gateway network name. </p>
    #   @return [String]
    # @!attribute port
    #   <p>The network output port. </p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The network output protocol. </p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute ttl
    #   <p>The network output TTL. </p>
    #   @return [Integer]
    class UpdateBridgeNetworkOutputRequest < Struct.new(
      nil,
      :ip_address,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Update the network source of the bridge.</p>
    # @!attribute multicast_ip
    #   <p> The network source multicast IP.</p>
    #   @return [String]
    # @!attribute multicast_source_settings
    #   <p>The settings related to the multicast source. </p>
    #   @return [Types::MulticastSourceSettings]
    # @!attribute network_name
    #   <p>The network source's gateway network name. </p>
    #   @return [String]
    # @!attribute port
    #   <p>The network source port. </p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The network source protocol. </p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    class UpdateBridgeNetworkSourceRequest < Struct.new(
      nil,
      :multicast_ip,
      :multicast_source_settings,
      :network_name,
      :port,
      :protocol,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute network_output
    #   <p> The network of the bridge output. </p>
    #   @return [Types::UpdateBridgeNetworkOutputRequest]
    # @!attribute output_name
    #   <p> Tname of the output that you want to update. </p>
    #   @return [String]
    class UpdateBridgeOutputRequest < Struct.new(
      nil,
      :bridge_arn,
      :network_output,
      :output_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that was updated. </p>
    #   @return [String]
    # @!attribute output
    #   <p> The bridge output that was updated. </p>
    #   @return [Types::BridgeOutput]
    class UpdateBridgeOutputResponse < Struct.new(
      nil,
      :bridge_arn,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> TheAmazon Resource Name (ARN) of the bridge that you want to update. </p>
    #   @return [String]
    # @!attribute egress_gateway_bridge
    #   <p> A cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    #   @return [Types::UpdateEgressGatewayBridgeRequest]
    # @!attribute ingress_gateway_bridge
    #   <p> A ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    #   @return [Types::UpdateIngressGatewayBridgeRequest]
    # @!attribute source_failover_config
    #   <p> The settings for source failover. </p>
    #   @return [Types::UpdateFailoverConfig]
    class UpdateBridgeRequest < Struct.new(
      nil,
      :bridge_arn,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :source_failover_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p> The bridge that was updated. </p>
    #   @return [Types::Bridge]
    class UpdateBridgeResponse < Struct.new(
      nil,
      :bridge,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute flow_source
    #   <p> The name of the flow that you want to update.</p>
    #   @return [Types::UpdateBridgeFlowSourceRequest]
    # @!attribute network_source
    #   <p> The network for the bridge source. </p>
    #   @return [Types::UpdateBridgeNetworkSourceRequest]
    # @!attribute source_name
    #   <p> The name of the source that you want to update. </p>
    #   @return [String]
    class UpdateBridgeSourceRequest < Struct.new(
      nil,
      :bridge_arn,
      :flow_source,
      :network_source,
      :source_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the updated bridge source. </p>
    #   @return [String]
    # @!attribute source
    #   <p> The updated bridge source. </p>
    #   @return [Types::BridgeSource]
    class UpdateBridgeSourceResponse < Struct.new(
      nil,
      :bridge_arn,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update the state of. </p>
    #   @return [String]
    # @!attribute desired_state
    #   <p> The desired state for the bridge. </p>
    #   @return [String]
    class UpdateBridgeStateRequest < Struct.new(
      nil,
      :bridge_arn,
      :desired_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p>The ARN of the updated bridge. </p>
    #   @return [String]
    # @!attribute desired_state
    #   <p> The new state of the bridge. </p>
    #   @return [String]
    class UpdateBridgeStateResponse < Struct.new(
      nil,
      :bridge_arn,
      :desired_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Update an existing egress-type bridge.</p>
    # @!attribute max_bitrate
    #   <p>The maximum expected bitrate (in bps). </p>
    #   @return [Integer]
    class UpdateEgressGatewayBridgeRequest < Struct.new(
      nil,
      :max_bitrate,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Information about the encryption of the flow.</p>
    # @!attribute algorithm
    #   <p> The type of algorithm that is used for the encryption (such as aes128, aes192, or aes256).</p>
    #   @return [String]
    # @!attribute constant_initialization_vector
    #   <p> A 128-bit, 16-byte hex value represented by a 32-character string, to be used with the key for encrypting content. This parameter is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute device_id
    #   <p> The value of one of the devices that you configured with your digital rights management (DRM) platform key provider. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute key_type
    #   <p> The type of key that is used for the encryption. If no keyType is provided, the service will use the default setting (static-key).</p>
    #   @return [String]
    # @!attribute region
    #   <p> The Amazon Web Services Region that the API Gateway proxy endpoint was created in. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p> An identifier for the content. The service sends this value to the key server to identify the current endpoint. The resource ID is also known as the content ID. This parameter is required for SPEKE encryption and is not valid for static key encryption. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> The ARN of the role that you created during setup (when you set up MediaConnect as a trusted entity).</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p> The ARN of the secret that you created in Secrets Manager to store the encryption key. This parameter is required for static key encryption and is not valid for SPEKE encryption.</p>
    #   @return [String]
    # @!attribute url
    #   <p> The URL from the API Gateway proxy that you set up to talk to your key server. This parameter is required for SPEKE encryption and is not valid for static key encryption.</p>
    #   @return [String]
    class UpdateEncryption < Struct.new(
      nil,
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for source failover.</p>
    # @!attribute failover_mode
    #   <p> The type of failover you choose for this flow. MERGE combines the source streams into a single stream, allowing graceful recovery from any single-source loss. FAILOVER allows switching between different streams.</p>
    #   @return [String]
    # @!attribute recovery_window
    #   <p> Recovery window time to look for dash-7 packets.</p>
    #   @return [Integer]
    # @!attribute source_priority
    #   <p> The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams.</p>
    #   @return [Types::SourcePriority]
    # @!attribute state
    #   <p>The state of source failover on the flow. If the state is inactive, the flow can have only one source. If the state is active, the flow can have one or two sources. </p>
    #   @return [String]
    class UpdateFailoverConfig < Struct.new(
      nil,
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute description
    #   <p> A description of the entitlement. This description appears only on the MediaConnect console and will not be seen by the subscriber or end user.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of encryption that will be used on the output associated with this entitlement. Allowable encryption types: static-key, speke.</p>
    #   @return [Types::UpdateEncryption]
    # @!attribute entitlement_arn
    #   <p> The Amazon Resource Name (ARN) of the entitlement that you want to update.</p>
    #   @return [String]
    # @!attribute entitlement_status
    #   <p> An indication of whether you want to enable the entitlement to allow access, or disable it to stop streaming content to the subscriber’s flow temporarily. If you don’t specify the <code>entitlementStatus</code> field in your request, MediaConnect leaves the value unchanged.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that is associated with the entitlement that you want to update.</p>
    #   @return [String]
    # @!attribute subscribers
    #   <p> The Amazon Web Services account IDs that you want to share your content with. The receiving accounts (subscribers) will be allowed to create their own flow using your content as the source.</p>
    #   @return [Array<String>]
    class UpdateFlowEntitlementRequest < Struct.new(
      nil,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :flow_arn,
      :subscribers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute entitlement
    #   <p> The new configuration of the entitlement that you updated.</p>
    #   @return [Types::Entitlement]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that this entitlement was granted on.</p>
    #   @return [String]
    class UpdateFlowEntitlementResponse < Struct.new(
      nil,
      :entitlement,
      :flow_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attributes
    #   <p> The attributes that you want to assign to the media stream.</p>
    #   @return [Types::MediaStreamAttributesRequest]
    # @!attribute clock_rate
    #   <p>The sample rate for the stream. This value in measured in kHz. </p>
    #   @return [Integer]
    # @!attribute description
    #   <p>A description that can help you quickly identify what your media stream is used for. </p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that is associated with the media stream that you updated.</p>
    #   @return [String]
    # @!attribute media_stream_name
    #   <p> The media stream that you updated.</p>
    #   @return [String]
    # @!attribute media_stream_type
    #   <p>The type of media stream. </p>
    #   @return [String]
    # @!attribute video_format
    #   <p>The resolution of the video. </p>
    #   @return [String]
    class UpdateFlowMediaStreamRequest < Struct.new(
      nil,
      :attributes,
      :clock_rate,
      :description,
      :flow_arn,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p>The ARN of the flow that is associated with the media stream that you updated. </p>
    #   @return [String]
    # @!attribute media_stream
    #   <p>The media stream that you updated. </p>
    #   @return [Types::MediaStream]
    class UpdateFlowMediaStreamResponse < Struct.new(
      nil,
      :flow_arn,
      :media_stream,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr_allow_list
    #   <p> The range of IP addresses that should be allowed to initiate output requests to this flow. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16.</p>
    #   @return [Array<String>]
    # @!attribute description
    #   <p> A description of the output. This description appears only on the MediaConnect console and will not be seen by the end user.</p>
    #   @return [String]
    # @!attribute destination
    #   <p> The IP address where you want to send the output.</p>
    #   @return [String]
    # @!attribute encryption
    #   <p> The type of key used for the encryption. If no <code>keyType</code> is provided, the service will use the default setting (static-key). Allowable encryption types: static-key.</p>
    #   @return [Types::UpdateEncryption]
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that is associated with the output that you want to update.</p>
    #   @return [String]
    # @!attribute max_latency
    #   <p> The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams.</p>
    #   @return [Integer]
    # @!attribute media_stream_output_configurations
    #   <p> The media streams that are associated with the output, and the parameters for those associations.</p>
    #   @return [Array<Types::MediaStreamOutputConfigurationRequest>]
    # @!attribute min_latency
    #   <p> The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency.</p>
    #   @return [Integer]
    # @!attribute output_arn
    #   <p> The ARN of the output that you want to update.</p>
    #   @return [String]
    # @!attribute port
    #   <p> The port to use when content is distributed to this output.</p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p> The protocol to use for the output.</p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute remote_id
    #   <p> The remote ID for the Zixi-pull stream.</p>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    #   @return [String]
    # @!attribute smoothing_latency
    #   <p> The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC streams.</p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p> The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this output.</p>
    #   @return [Types::VpcInterfaceAttachment]
    # @!attribute output_status
    #   <p> An indication of whether the output should transmit data or not. If you don't specify the <code>outputStatus</code> field in your request, MediaConnect leaves the value unchanged.</p>
    #   @return [String]
    # @!attribute ndi_program_name
    #   <p> A suffix for the name of the NDI® sender that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    # @!attribute ndi_speed_hq_quality
    #   <p>A quality setting for the NDI Speed HQ encoder. </p>
    #   @return [Integer]
    # @!attribute router_integration_state
    #   <p>Indicates whether to enable or disable router integration for this flow output.</p>
    #   @return [String]
    # @!attribute router_integration_transit_encryption
    #   <p>The configuration that defines how content is encrypted during transit between the MediaConnect router and a MediaConnect flow.</p>
    #   @return [Types::FlowTransitEncryption]
    # @!attribute ndi_output_timecode_source
    #   <p>Controls how MediaConnect generates timecodes for NDI output frames. If you don't specify this field, MediaConnect leaves the value unchanged.</p> <ul> <li> <p> <code>EMBEDDED_TIMECODE</code> - Preserves timecodes from the input transport stream. The timecodes must be embedded in the video stream as SEI timing messages. If no embedded timecode is detected, MediaConnect uses the UTC system time instead.</p> </li> <li> <p> <code>UTC_SYSTEM_TIME</code> - Generates timecodes based on the system clock time when each frame is sent.</p> </li> </ul>
    #   @return [String]
    # @!attribute ndi_audio_reference_level
    #   <p>The audio reference level of the NDI receiver, in decibels relative to full scale (dBFS). Common values are <code>-20</code> (NDI and SMPTE) and <code>-18</code> (EBU). If you don't specify this field, MediaConnect leaves the value unchanged.</p>
    #   @return [Integer]
    class UpdateFlowOutputRequest < Struct.new(
      nil,
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :flow_arn,
      :max_latency,
      :media_stream_output_configurations,
      :min_latency,
      :output_arn,
      :port,
      :protocol,
      :remote_id,
      :sender_control_port,
      :sender_ip_address,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment,
      :output_status,
      :ndi_program_name,
      :ndi_speed_hq_quality,
      :router_integration_state,
      :router_integration_transit_encryption,
      :ndi_output_timecode_source,
      :ndi_audio_reference_level,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that is associated with the updated output.</p>
    #   @return [String]
    # @!attribute output
    #   <p> The new settings of the output that you updated.</p>
    #   @return [Types::Output]
    class UpdateFlowOutputResponse < Struct.new(
      nil,
      :flow_arn,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute source_failover_config
    #   <p> The settings for source failover. </p>
    #   @return [Types::UpdateFailoverConfig]
    # @!attribute maintenance
    #   <p> The maintenance setting of the flow. </p>
    #   @return [Types::UpdateMaintenance]
    # @!attribute source_monitoring_config
    #   <p> The settings for source monitoring. </p>
    #   @return [Types::MonitoringConfig]
    # @!attribute ndi_config
    #   <p> Specifies the configuration settings for a flow's NDI source or output. Required when the flow includes an NDI source or output. </p>
    #   @return [Types::NdiConfig]
    # @!attribute flow_size
    #   <p> Determines the processing capacity and feature set of the flow. </p>
    #   @return [String]
    # @!attribute encoding_config
    #   <p> The encoding configuration to apply to the NDI® source when transcoding it to a transport stream for downstream distribution. You can choose between several predefined encoding profiles based on common use cases. </p>
    #   @return [Types::EncodingConfig]
    class UpdateFlowRequest < Struct.new(
      nil,
      :flow_arn,
      :source_failover_config,
      :maintenance,
      :source_monitoring_config,
      :ndi_config,
      :flow_size,
      :encoding_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p> The updated flow. </p>
    #   @return [Types::Flow]
    class UpdateFlowResponse < Struct.new(
      nil,
      :flow,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute decryption
    #   <p>The type of encryption that is used on the content ingested from the source. </p>
    #   @return [Types::UpdateEncryption]
    # @!attribute description
    #   <p>A description of the source. This description is not visible outside of the current Amazon Web Services account. </p>
    #   @return [String]
    # @!attribute entitlement_arn
    #   <p>The Amazon Resource Name (ARN) of the entitlement that allows you to subscribe to the flow. The entitlement is set by the content originator, and the ARN is generated as part of the originator's flow. </p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that you want to update. </p>
    #   @return [String]
    # @!attribute ingest_port
    #   <p>The port that the flow listens on for incoming content. If the protocol of the source is Zixi, the port must be set to 2088. </p>
    #   @return [Integer]
    # @!attribute max_bitrate
    #   <p>The maximum bitrate for RIST, RTP, and RTP-FEC streams. </p>
    #   @return [Integer]
    # @!attribute max_latency
    #   <p>The maximum latency in milliseconds. This parameter applies only to RIST-based and Zixi-based streams. </p>
    #   @return [Integer]
    # @!attribute max_sync_buffer
    #   <p>The size of the buffer (in milliseconds) to use to sync incoming source data. </p>
    #   @return [Integer]
    # @!attribute media_stream_source_configurations
    #   <p>The media stream that is associated with the source, and the parameters for that association. </p>
    #   @return [Array<Types::MediaStreamSourceConfigurationRequest>]
    # @!attribute min_latency
    #   <p>The minimum latency in milliseconds for SRT-based streams. In streams that use the SRT protocol, this value that you set on your MediaConnect source or output represents the minimal potential latency of that connection. The latency of the stream is set to the highest number between the sender’s minimum latency and the receiver’s minimum latency. </p>
    #   @return [Integer]
    # @!attribute protocol
    #   <p>The protocol that the source uses to deliver the content to MediaConnect. </p> <note> <p>Elemental MediaConnect no longer supports the Fujitsu QoS protocol. This reference is maintained for legacy purposes only.</p> </note>
    #   @return [String]
    # @!attribute sender_control_port
    #   <p>The port that the flow uses to send outbound requests to initiate connection with the sender. </p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p>The IP address that the flow communicates with to initiate connection with the sender. </p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>The ARN of the source that you want to update. </p>
    #   @return [String]
    # @!attribute source_listener_address
    #   <p>The source IP or domain name for SRT-caller protocol. </p>
    #   @return [String]
    # @!attribute source_listener_port
    #   <p>Source port for SRT-caller protocol. </p>
    #   @return [Integer]
    # @!attribute stream_id
    #   <p>The stream ID that you want to use for this transport. This parameter applies only to Zixi and SRT caller-based streams. </p>
    #   @return [String]
    # @!attribute vpc_interface_name
    #   <p>The name of the VPC interface that you want to send your output to.</p>
    #   @return [String]
    # @!attribute whitelist_cidr
    #   <p>The range of IP addresses that are allowed to contribute content to your source. Format the IP addresses as a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. </p>
    #   @return [String]
    # @!attribute gateway_bridge_source
    #   <p>The source configuration for cloud flows receiving a stream from a bridge. </p>
    #   @return [Types::UpdateGatewayBridgeSourceRequest]
    # @!attribute ndi_source_settings
    #   <p> The settings for the NDI source. This includes the exact name of the upstream NDI sender that you want to connect to your source. </p>
    #   @return [Types::NdiSourceSettings]
    # @!attribute router_integration_state
    #   <p>Indicates whether to enable or disable router integration for this flow source.</p>
    #   @return [String]
    # @!attribute router_integration_transit_decryption
    #   <p>The encryption configuration for the flow source when router integration is enabled.</p>
    #   @return [Types::FlowTransitEncryption]
    class UpdateFlowSourceRequest < Struct.new(
      nil,
      :decryption,
      :description,
      :entitlement_arn,
      :flow_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :max_sync_buffer,
      :media_stream_source_configurations,
      :min_latency,
      :protocol,
      :sender_control_port,
      :sender_ip_address,
      :source_arn,
      :source_listener_address,
      :source_listener_port,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr,
      :gateway_bridge_source,
      :ndi_source_settings,
      :router_integration_state,
      :router_integration_transit_decryption,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p>The ARN of the flow that you updated.</p>
    #   @return [String]
    # @!attribute source
    #   <p>The details of the sources that are assigned to the flow. </p>
    #   @return [Types::Source]
    class UpdateFlowSourceResponse < Struct.new(
      nil,
      :flow_arn,
      :source,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class UpdateGatewayBridgeSourceRequest < Struct.new(
      nil,
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_placement
    #   <p>The state of the instance. <code>ACTIVE</code> or <code>INACTIVE</code>. </p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway instance that you want to update. </p>
    #   @return [String]
    class UpdateGatewayInstanceRequest < Struct.new(
      nil,
      :bridge_placement,
      :gateway_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute bridge_placement
    #   <p>The state of the instance. <code>ACTIVE</code> or <code>INACTIVE</code>. </p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p>The ARN of the instance that was updated. </p>
    #   @return [String]
    class UpdateGatewayInstanceResponse < Struct.new(
      nil,
      :bridge_placement,
      :gateway_instance_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Update an existing ingress-type bridge. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps).</p>
    #   @return [Integer]
    # @!attribute max_outputs
    #   <p> The maximum number of expected outputs.</p>
    #   @return [Integer]
    class UpdateIngressGatewayBridgeRequest < Struct.new(
      nil,
      :max_bitrate,
      :max_outputs,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> Update maintenance setting for a flow.</p>
    # @!attribute maintenance_day
    #   <p> A day of a week when the maintenance will happen.</p>
    #   @return [String]
    # @!attribute maintenance_scheduled_date
    #   <p> A scheduled date in ISO UTC format when the maintenance will happen. Use YYYY-MM-DD format. Example: 2021-01-30.</p>
    #   @return [String]
    # @!attribute maintenance_start_hour
    #   <p> UTC time when the maintenance will happen. Use 24-hour HH:MM format. Minutes must be 00. Example: 13:00. The default value is 02:00.</p>
    #   @return [String]
    class UpdateMaintenance < Struct.new(
      nil,
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router input that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the router input.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The updated configuration settings for the router input. Changing the type of the configuration is not supported.</p>
    #   @return [Types::RouterInputConfiguration]
    # @!attribute maximum_bitrate
    #   <p>The updated maximum bitrate for the router input.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Specifies whether the router input can be assigned to outputs in different Regions. REGIONAL (default) - can be assigned only to outputs in the same Region. GLOBAL - can be assigned to outputs in any Region.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The updated tier level for the router input. The tier sets the maximum bitrate, in Mbps, for the router input. Valid values include the following:</p> <ul> <li> <p> <code>INPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>INPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>INPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>INPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>INPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute transit_encryption
    #   <p>The updated transit encryption settings for the router input.</p>
    #   @return [Types::RouterInputTransitEncryption]
    # @!attribute maintenance_configuration
    #   <p>The updated maintenance configuration settings for the router input, including any changes to preferred maintenance windows and schedules.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute content_quality_analysis_configuration
    #   <p>The content quality analysis configuration for the router input.</p>
    #   @return [Types::RouterContentQualityAnalysisConfiguration]
    class UpdateRouterInputRequest < Struct.new(
      nil,
      :arn,
      :name,
      :configuration,
      :maximum_bitrate,
      :routing_scope,
      :tier,
      :transit_encryption,
      :maintenance_configuration,
      :content_quality_analysis_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_input
    #   <p>The updated router input.</p>
    #   @return [Types::RouterInput]
    class UpdateRouterInputResponse < Struct.new(
      nil,
      :router_input,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router network interface that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the router network interface.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The updated configuration settings for the router network interface. Changing the type of the configuration is not supported.</p>
    #   @return [Types::RouterNetworkInterfaceConfiguration]
    class UpdateRouterNetworkInterfaceRequest < Struct.new(
      nil,
      :arn,
      :name,
      :configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_network_interface
    #   <p>The updated router network interface.</p>
    #   @return [Types::RouterNetworkInterface]
    class UpdateRouterNetworkInterfaceResponse < Struct.new(
      nil,
      :router_network_interface,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the router output that you want to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The updated name for the router output.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The updated configuration settings for the router output. Changing the type of the configuration is not supported.</p>
    #   @return [Types::RouterOutputConfiguration]
    # @!attribute maximum_bitrate
    #   <p>The updated maximum bitrate for the router output.</p>
    #   @return [Integer]
    # @!attribute routing_scope
    #   <p>Specifies whether the router output can take inputs that are in different Regions. REGIONAL (default) - can only take inputs from same Region. GLOBAL - can take inputs from any Region.</p>
    #   @return [String]
    # @!attribute tier
    #   <p>The updated tier level for the router output. The tier sets the maximum bitrate, in Mbps, for the router output. Valid values include the following:</p> <ul> <li> <p> <code>OUTPUT_20</code> – 20 Mbps</p> </li> <li> <p> <code>OUTPUT_50</code> – 50 Mbps</p> </li> <li> <p> <code>OUTPUT_100</code> – 100 Mbps</p> </li> <li> <p> <code>OUTPUT_250</code> – 250 Mbps</p> </li> <li> <p> <code>OUTPUT_500</code> – 500 Mbps</p> </li> </ul> <p>The 250 Mbps and 500 Mbps tiers are high-bitrate tiers that support TR-07 (JPEG XS) workflows.</p>
    #   @return [String]
    # @!attribute maintenance_configuration
    #   <p>The updated maintenance configuration settings for the router output, including any changes to preferred maintenance windows and schedules.</p>
    #   @return [Types::MaintenanceConfiguration]
    # @!attribute fabric_configuration
    #   <p>The updated fabric configuration settings for the router output. You cannot update the fabric configuration while the output has an active route. You must unroute the output before updating the fabric configuration.</p>
    #   @return [Types::FabricConfiguration]
    class UpdateRouterOutputRequest < Struct.new(
      nil,
      :arn,
      :name,
      :configuration,
      :maximum_bitrate,
      :routing_scope,
      :tier,
      :maintenance_configuration,
      :fabric_configuration,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute router_output
    #   <p>The updated router output.</p>
    #   @return [Types::RouterOutput]
    class UpdateRouterOutputResponse < Struct.new(
      nil,
      :router_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for video stream metrics monitoring.</p>
    # @!attribute black_frames
    #   <p>Detects video frames that are black. </p>
    #   @return [Types::BlackFrames]
    # @!attribute frozen_frames
    #   <p>Detects video frames that have not changed. </p>
    #   @return [Types::FrozenFrames]
    class VideoMonitoringSetting < Struct.new(
      nil,
      :black_frames,
      :frozen_frames,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for a VPC source.</p>
    # @!attribute name
    #   <p> Immutable and has to be a unique against other VpcInterfaces in this Flow.</p>
    #   @return [String]
    # @!attribute network_interface_ids
    #   <p> IDs of the network interfaces created in customer's account by MediaConnect.</p>
    #   @return [Array<String>]
    # @!attribute network_interface_type
    #   <p> The type of network interface.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p> A role Arn MediaConnect can assume to create ENIs in your account.</p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p> Security Group IDs to be used on ENI.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p> Subnet must be in the AZ of the Flow. </p>
    #   @return [String]
    class VpcInterface < Struct.new(
      nil,
      :name,
      :network_interface_ids,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p> The settings for attaching a VPC interface to an resource. </p>
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface to use for this resource.</p>
    #   @return [String]
    class VpcInterfaceAttachment < Struct.new(
      nil,
      :vpc_interface_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of the VPC interfaces that you want to add to the flow. </p>
    # @!attribute name
    #   <p>The name for the VPC interface. This name must be unique within the flow. </p>
    #   @return [String]
    # @!attribute network_interface_type
    #   <p>The type of network interface. </p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role that you created when you set up MediaConnect as a trusted service. </p>
    #   @return [String]
    # @!attribute security_group_ids
    #   <p>A virtual firewall to control inbound and outbound traffic. </p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p> The subnet IDs that you want to use for your VPC interface. A range of IP addresses in your VPC. When you create your VPC, you specify a range of IPv4 addresses for the VPC in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. This is the primary CIDR block for your VPC. When you create a subnet for your VPC, you specify the CIDR block for the subnet, which is a subset of the VPC CIDR block. The subnets that you use across all VPC interfaces on the flow must be in the same Availability Zone as the flow. </p>
    #   @return [String]
    # @!attribute vpc_interface_tags
    #   <p> The key-value pairs that can be used to tag and organize the VPC network interface. </p>
    #   @return [Hash<String, String>]
    class VpcInterfaceRequest < Struct.new(
      nil,
      :name,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      :vpc_interface_tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration settings for a router network interface within a VPC, including the security group IDs and subnet ID.</p>
    # @!attribute security_group_ids
    #   <p>The IDs of the security groups to associate with the router network interface within the VPC.</p>
    #   @return [Array<String>]
    # @!attribute subnet_id
    #   <p>The ID of the subnet within the VPC to associate the router network interface with.</p>
    #   @return [String]
    class VpcRouterNetworkInterfaceConfiguration < Struct.new(
      nil,
      :security_group_ids,
      :subnet_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a specific time window for maintenance operations.</p>
    # @!attribute start
    #   <p>The start time of the maintenance window.</p>
    #   @return [Time]
    # @!attribute end
    #   <p>The end time of the maintenance window.</p>
    #   @return [Time]
    # @!attribute scheduled_time
    #   <p>The date and time when the maintenance window is scheduled to occur.</p>
    #   @return [Time]
    class WindowMaintenanceSchedule < Struct.new(
      nil,
      :start,
      :end,
      :scheduled_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
