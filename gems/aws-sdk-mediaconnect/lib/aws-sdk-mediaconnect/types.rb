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
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Add outputs to the specified bridge.</p>
    # @!attribute network_output
    #   <p> The network output of the bridge. A network output is delivered to your premises. </p>
    #   @return [Types::AddBridgeNetworkOutputRequest]
    class AddBridgeOutputRequest < Struct.new(
      :network_output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeOutputRequest>]
    class AddBridgeOutputsRequest < Struct.new(
      :bridge_arn,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that you added outputs to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The outputs that you added to this bridge.</p>
    #   @return [Array<Types::BridgeOutput>]
    class AddBridgeOutputsResponse < Struct.new(
      :bridge_arn,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Add an output to a bridge. </p>
    # @!attribute flow_source
    #   <p> The source of the flow. </p>
    #   @return [Types::AddBridgeFlowSourceRequest]
    # @!attribute network_source
    #   <p> The source of the network. </p>
    #   @return [Types::AddBridgeNetworkSourceRequest]
    class AddBridgeSourceRequest < Struct.new(
      :flow_source,
      :network_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The sources that you want to add to this bridge.</p>
    #   @return [Array<Types::AddBridgeSourceRequest>]
    class AddBridgeSourcesRequest < Struct.new(
      :bridge_arn,
      :sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that you added sources to.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The sources that you added to this bridge.</p>
    #   @return [Array<Types::BridgeSource>]
    class AddBridgeSourcesResponse < Struct.new(
      :bridge_arn,
      :sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Create a bridge with the egress bridge type. An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the egress bridge.</p>
    #   @return [Integer]
    class AddEgressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    # @!attribute media_streams
    #   <p> The media streams that you want to add to the flow.</p>
    #   @return [Array<Types::AddMediaStreamRequest>]
    class AddFlowMediaStreamsRequest < Struct.new(
      :flow_arn,
      :media_streams,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you added media streams to.</p>
    #   @return [String]
    # @!attribute media_streams
    #   <p> The media streams that you added to the flow.</p>
    #   @return [Array<Types::MediaStream>]
    class AddFlowMediaStreamsResponse < Struct.new(
      :flow_arn,
      :media_streams,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when adding the flow output. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class AddFlowOutputs420Exception < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to add outputs to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> A list of outputs that you want to add to the flow.</p>
    #   @return [Array<Types::AddOutputRequest>]
    class AddFlowOutputsRequest < Struct.new(
      :flow_arn,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these outputs were added to.</p>
    #   @return [String]
    # @!attribute outputs
    #   <p> The details of the newly added outputs.</p>
    #   @return [Array<Types::Output>]
    class AddFlowOutputsResponse < Struct.new(
      :flow_arn,
      :outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> A list of sources that you want to add to the flow.</p>
    #   @return [Array<Types::SetSourceRequest>]
    class AddFlowSourcesRequest < Struct.new(
      :flow_arn,
      :sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these sources were added to.</p>
    #   @return [String]
    # @!attribute sources
    #   <p> The details of the newly added sources.</p>
    #   @return [Array<Types::Source>]
    class AddFlowSourcesResponse < Struct.new(
      :flow_arn,
      :sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute vpc_interfaces
    #   <p> A list of VPC interfaces that you want to add to the flow.</p>
    #   @return [Array<Types::VpcInterfaceRequest>]
    class AddFlowVpcInterfacesRequest < Struct.new(
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that these VPC interfaces were added to.</p>
    #   @return [String]
    # @!attribute vpc_interfaces
    #   <p> The details of the newly added VPC interfaces.</p>
    #   @return [Array<Types::VpcInterface>]
    class AddFlowVpcInterfacesResponse < Struct.new(
      :flow_arn,
      :vpc_interfaces,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Create a bridge with the ingress bridge type. An ingress bridge is a ground-to-cloud bridge. The content originates at your premises and is delivered to the cloud. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the ingress bridge. </p>
    #   @return [Integer]
    # @!attribute max_outputs
    #   <p> The maximum number of expected outputs on the ingress bridge. </p>
    #   @return [Integer]
    class AddIngressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      :max_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Create a maintenance setting for a flow.</p>
    # @!attribute maintenance_day
    #   <p> A day of a week when the maintenance will happen. </p>
    #   @return [String]
    # @!attribute maintenance_start_hour
    #   <p> UTC time when the maintenance will happen. </p> <p>Use 24-hour HH:MM format. </p> <p>Minutes must be 00. </p> <p>Example: 13:00. </p> <p>The default value is 02:00.</p>
    #   @return [String]
    class AddMaintenance < Struct.new(
      :maintenance_day,
      :maintenance_start_hour,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class AddMediaStreamRequest < Struct.new(
      :attributes,
      :clock_rate,
      :description,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p> A suffix for the names of the NDI sources that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    class AddOutputRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Algorithm
      aes128 = 'aes128'
      aes192 = 'aes192'
      aes256 = 'aes256'
    end

    # <p> Specifies the configuration for audio stream metrics monitoring.</p>
    # @!attribute silent_audio
    #   <p> Detects periods of silence. </p>
    #   @return [Types::SilentAudio]
    class AudioMonitoringSetting < Struct.new(
      :silent_audio,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>This exception is thrown if the request contains a semantic error. The precise meaning depends on the API, and is documented in the error message. </p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Configures settings for the <code>BlackFrames</code> metric.</p>
    # @!attribute state
    #   <p> Indicates whether the <code>BlackFrames</code> metric is enabled or disabled..</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p> Specifies the number of consecutive seconds of black frames that triggers an event or alert.</p>
    #   @return [Integer]
    class BlackFrames < Struct.new(
      :state,
      :threshold_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :flow_arn,
      :flow_source_arn,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :flow_arn,
      :flow_vpc_interface_attachment,
      :name,
      :output_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :ip_address,
      :name,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :multicast_ip,
      :multicast_source_settings,
      :name,
      :network_name,
      :port,
      :protocol,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The output of the bridge.</p>
    # @!attribute flow_output
    #   <p> The output of the associated flow. </p>
    #   @return [Types::BridgeFlowOutput]
    # @!attribute network_output
    #   <p> The network output for the bridge. </p>
    #   @return [Types::BridgeNetworkOutput]
    class BridgeOutput < Struct.new(
      :flow_output,
      :network_output,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BridgePlacement
      AVAILABLE = 'AVAILABLE'
      LOCKED = 'LOCKED'
    end

    # <p> The bridge's source.</p>
    # @!attribute flow_source
    #   <p> The source of the associated flow. </p>
    #   @return [Types::BridgeFlowSource]
    # @!attribute network_source
    #   <p> The network source for the bridge. </p>
    #   @return [Types::BridgeNetworkSource]
    class BridgeSource < Struct.new(
      :flow_source,
      :network_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BridgeState
      CREATING = 'CREATING'
      STANDBY = 'STANDBY'
      STARTING = 'STARTING'
      DEPLOYING = 'DEPLOYING'
      ACTIVE = 'ACTIVE'
      STOPPING = 'STOPPING'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
      START_FAILED = 'START_FAILED'
      START_PENDING = 'START_PENDING'
      STOP_FAILED = 'STOP_FAILED'
      UPDATING = 'UPDATING'
    end

    module Colorimetry
      BT601 = 'BT601'
      BT709 = 'BT709'
      BT2020 = 'BT2020'
      BT2100 = 'BT2100'
      ST2065_1 = 'ST2065-1'
      ST2065_3 = 'ST2065-3'
      XYZ = 'XYZ'
    end

    # <p>The requested operation would cause a conflict with the current state of a service resource associated with the request. Resolve the conflict before retrying this request. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ConnectionStatus
      CONNECTED = 'CONNECTED'
      DISCONNECTED = 'DISCONNECTED'
    end

    module ContentQualityAnalysisState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>Exception raised by Elemental MediaConnect when creating the bridge. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateBridge420Exception < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :name,
      :outputs,
      :placement_arn,
      :source_failover_config,
      :sources,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p> The name of the bridge that was created.</p>
    #   @return [Types::Bridge]
    class CreateBridgeResponse < Struct.new(
      :bridge,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when creating the flow. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateFlow420Exception < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p> Determines the processing capacity and feature set of the flow. Set this optional parameter to <code>LARGE</code> if you want to enable NDI outputs on the flow. </p>
    #   @return [String]
    # @!attribute ndi_config
    #   <p> Specifies the configuration settings for NDI outputs. Required when the flow includes NDI outputs. </p>
    #   @return [Types::NdiConfig]
    class CreateFlowRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p> The flow that you created. </p>
    #   @return [Types::Flow]
    class CreateFlowResponse < Struct.new(
      :flow,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when creating the gateway. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class CreateGateway420Exception < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :egress_cidr_blocks,
      :name,
      :networks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway
    #   <p> The gateway that you created. </p>
    #   @return [Types::Gateway]
    class CreateGatewayResponse < Struct.new(
      :gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to delete.</p>
    #   @return [String]
    class DeleteBridgeRequest < Struct.new(
      :bridge_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the deleted bridge.</p>
    #   @return [String]
    class DeleteBridgeResponse < Struct.new(
      :bridge_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to delete.</p>
    #   @return [String]
    class DeleteFlowRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that was deleted.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>DeleteFlow</code> process begins.</p>
    #   @return [String]
    class DeleteFlowResponse < Struct.new(
      :flow_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that you want to delete.</p>
    #   @return [String]
    class DeleteGatewayRequest < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The ARN of the gateway that was deleted.</p>
    #   @return [String]
    class DeleteGatewayResponse < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute force
    #   <p> Force the deregistration of an instance. Force will deregister an instance, even if there are bridges running on it.</p>
    #   @return [Boolean]
    # @!attribute gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway that contains the instance that you want to deregister.</p>
    #   @return [String]
    class DeregisterGatewayInstanceRequest < Struct.new(
      :force,
      :gateway_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_instance_arn
    #   <p> The ARN of the instance.</p>
    #   @return [String]
    # @!attribute instance_state
    #   <p> The status of the instance.</p>
    #   @return [String]
    class DeregisterGatewayInstanceResponse < Struct.new(
      :gateway_instance_arn,
      :instance_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to describe.</p>
    #   @return [String]
    class DescribeBridgeRequest < Struct.new(
      :bridge_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p>The bridge that you requested a description of. </p>
    #   @return [Types::Bridge]
    class DescribeBridgeResponse < Struct.new(
      :bridge,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you want to describe.</p>
    #   @return [String]
    class DescribeFlowRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p>The flow that you requested a description of. </p>
    #   @return [Types::Flow]
    # @!attribute messages
    #   <p> Any errors that apply currently to the flow. If there are no errors, MediaConnect will not include this field in the response. </p>
    #   @return [Types::Messages]
    class DescribeFlowResponse < Struct.new(
      :flow,
      :messages,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    class DescribeFlowSourceMetadataRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class DescribeFlowSourceMetadataResponse < Struct.new(
      :flow_arn,
      :messages,
      :timestamp,
      :transport_media_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow.</p>
    #   @return [String]
    class DescribeFlowSourceThumbnailRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute thumbnail_details
    #   <p>The details of the thumbnail, including thumbnail base64 string, timecode and the time when thumbnail was generated. </p>
    #   @return [Types::ThumbnailDetails]
    class DescribeFlowSourceThumbnailResponse < Struct.new(
      :thumbnail_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_instance_arn
    #   <p> The Amazon Resource Name (ARN) of the gateway instance that you want to describe.</p>
    #   @return [String]
    class DescribeGatewayInstanceRequest < Struct.new(
      :gateway_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_instance
    #   <p>The gateway instance that you requested a description of. </p>
    #   @return [Types::GatewayInstance]
    class DescribeGatewayInstanceResponse < Struct.new(
      :gateway_instance,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway_arn
    #   <p> The ARN of the gateway that you want to describe.</p>
    #   @return [String]
    class DescribeGatewayRequest < Struct.new(
      :gateway_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateway
    #   <p>The gateway that you wanted to describe. </p>
    #   @return [Types::Gateway]
    class DescribeGatewayResponse < Struct.new(
      :gateway,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute offering_arn
    #   <p> The ARN of the offering.</p>
    #   @return [String]
    class DescribeOfferingRequest < Struct.new(
      :offering_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute offering
    #   <p>The offering that you requested a description of. </p>
    #   @return [Types::Offering]
    class DescribeOfferingResponse < Struct.new(
      :offering,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reservation_arn
    #   <p>The Amazon Resource Name (ARN) of the offering. </p>
    #   @return [String]
    class DescribeReservationRequest < Struct.new(
      :reservation_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p> A pricing agreement for a discounted rate for a specific outbound bandwidth that your MediaConnect account will use each month over a specific time period. The discounted rate in the reservation applies to outbound bandwidth for all flows from your account until your account reaches the amount of bandwidth in your reservation. If you use more outbound bandwidth than the agreed upon amount in a single month, the overage is charged at the on-demand rate. </p>
    #   @return [Types::Reservation]
    class DescribeReservationResponse < Struct.new(
      :reservation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DesiredState
      ACTIVE = 'ACTIVE'
      STANDBY = 'STANDBY'
      DELETED = 'DELETED'
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
      :destination_ip,
      :destination_port,
      :interface,
      :outbound_ip,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :destination_ip,
      :destination_port,
      :interface,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module DurationUnits
      MONTHS = 'MONTHS'
    end

    # <p> Create a bridge with the egress bridge type. An egress bridge is a cloud-to-ground bridge. The content comes from an existing MediaConnect flow and is delivered to your premises. </p>
    # @!attribute instance_id
    #   <p> The ID of the instance running this bridge.</p>
    #   @return [String]
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps) of the egress bridge.</p>
    #   @return [Integer]
    class EgressGatewayBridge < Struct.new(
      :instance_id,
      :max_bitrate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EncoderProfile
      main = 'main'
      high = 'high'
    end

    module EncodingName
      jxsv = 'jxsv'
      raw = 'raw'
      smpte291 = 'smpte291'
      pcm = 'pcm'
    end

    # <p> A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.</p>
    # @!attribute compression_factor
    #   <p> A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.</p>
    #   @return [Float]
    # @!attribute encoder_profile
    #   <p> A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol.</p>
    #   @return [String]
    class EncodingParameters < Struct.new(
      :compression_factor,
      :encoder_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> A collection of parameters that determine how MediaConnect will convert the content. These fields only apply to outputs on flows that have a CDI source.</p>
    # @!attribute compression_factor
    #   <p> A value that is used to calculate compression for an output. The bitrate of the output is calculated as follows: Output bitrate = (1 / compressionFactor) * (source bitrate) This property only applies to outputs that use the ST 2110 JPEG XS protocol, with a flow source that uses the CDI protocol. Valid values are floating point numbers in the range of 3.0 to 10.0, inclusive.</p>
    #   @return [Float]
    # @!attribute encoder_profile
    #   <p> A setting on the encoder that drives compression settings. This property only applies to video media streams associated with outputs that use the ST 2110 JPEG XS protocol, if at least one source on the flow uses the CDI protocol.</p>
    #   @return [String]
    class EncodingParametersRequest < Struct.new(
      :compression_factor,
      :encoder_profile,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :name,
      :subscribers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module EntitlementStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
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
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FailoverMode
      MERGE = 'MERGE'
      FAILOVER = 'FAILOVER'
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
    #   <p> Determines the processing capacity and feature set of the flow. Set this optional parameter to LARGE if you want to enable NDI outputs on the flow. </p>
    #   @return [String]
    # @!attribute ndi_config
    #   <p>Specifies the configuration settings for NDI outputs. Required when the flow includes NDI outputs. </p>
    #   @return [Types::NdiConfig]
    class Flow < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module FlowSize
      MEDIUM = 'MEDIUM'
      LARGE = 'LARGE'
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
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :channel_order,
      :colorimetry,
      :exact_framerate,
      :par,
      :range,
      :scan_mode,
      :tcs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>You do not have sufficient access to perform this action. </p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The frame resolution used by the video stream.</p>
    # @!attribute frame_height
    #   <p> The number of pixels in the height of the video frame.</p>
    #   @return [Integer]
    # @!attribute frame_width
    #   <p> The number of pixels in the width of the video frame.</p>
    #   @return [Integer]
    class FrameResolution < Struct.new(
      :frame_height,
      :frame_width,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Configures settings for the <code>FrozenFrames</code> metric.</p>
    # @!attribute state
    #   <p>Indicates whether the <code>FrozenFrames</code> metric is enabled or disabled.</p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p> Specifies the number of consecutive seconds of a static image that triggers an event or alert.</p>
    #   @return [Integer]
    class FrozenFrames < Struct.new(
      :state,
      :threshold_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :egress_cidr_blocks,
      :gateway_arn,
      :gateway_messages,
      :gateway_state,
      :name,
      :networks,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class GatewayBridgeSource < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :bridge_placement,
      :connection_status,
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_messages,
      :instance_state,
      :running_bridge_count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The network settings for a gateway. </p>
    # @!attribute cidr_block
    #   <p>A unique IP address range to use for this network. These IP addresses should be in the form of a Classless Inter-Domain Routing (CIDR) block; for example, 10.0.0.0/16. </p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the network. This name is used to reference the network and must be unique among networks in this gateway. </p>
    #   @return [String]
    class GatewayNetwork < Struct.new(
      :cidr_block,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module GatewayState
      CREATING = 'CREATING'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      ERROR = 'ERROR'
      DELETING = 'DELETING'
      DELETED = 'DELETED'
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
    class GrantEntitlementRequest < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_status,
      :name,
      :subscribers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Exception raised by Elemental MediaConnect when granting the entitlement. See the error message for the operation for more information on the cause of this exception. </p>
    # @!attribute message
    #   @return [String]
    class GrantFlowEntitlements420Exception < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p> The list of entitlements that you want to grant.</p>
    #   @return [Array<Types::GrantEntitlementRequest>]
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to grant entitlements on.</p>
    #   @return [String]
    class GrantFlowEntitlementsRequest < Struct.new(
      :entitlements,
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p> The entitlements that were just granted.</p>
    #   @return [Array<Types::Entitlement>]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that these entitlements were granted to.</p>
    #   @return [String]
    class GrantFlowEntitlementsResponse < Struct.new(
      :entitlements,
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :instance_id,
      :max_bitrate,
      :max_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :input_ip,
      :input_port,
      :interface,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The transport parameters that you want to associate with an incoming media stream.</p>
    # @!attribute input_port
    #   <p> The port that you want the flow to listen on for an incoming media stream.</p>
    #   @return [Integer]
    # @!attribute interface
    #   <p> The VPC interface that you want to use for the incoming media stream.</p>
    #   @return [Types::InterfaceRequest]
    class InputConfigurationRequest < Struct.new(
      :input_port,
      :interface,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module InstanceState
      REGISTERING = 'REGISTERING'
      ACTIVE = 'ACTIVE'
      DEREGISTERING = 'DEREGISTERING'
      DEREGISTERED = 'DEREGISTERED'
      REGISTRATION_ERROR = 'REGISTRATION_ERROR'
      DEREGISTRATION_ERROR = 'DEREGISTRATION_ERROR'
    end

    # <p> The VPC interface that is used for the media stream associated with the source or output.</p>
    # @!attribute name
    #   <p> The name of the VPC interface.</p>
    #   @return [String]
    class Interface < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The VPC interface that you want to designate where the media stream is coming from or going to.</p>
    # @!attribute name
    #   <p> The name of the VPC interface.</p>
    #   @return [String]
    class InterfaceRequest < Struct.new(
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The server encountered an internal error and is unable to complete the request. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerErrorException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module KeyType
      speke = 'speke'
      static_key = 'static-key'
      srt_password = 'srt-password'
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
      :filter_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridges
    #   <p> A list of bridge summaries.</p>
    #   @return [Array<Types::ListedBridge>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListBridges</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListBridges</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListBridgesResponse < Struct.new(
      :bridges,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListEntitlements</code> request with set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 20 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListEntitlements</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListEntitlements</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListEntitlementsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entitlements
    #   <p>A list of entitlements that have been granted to you from other Amazon Web Services accounts. </p>
    #   @return [Array<Types::ListedEntitlement>]
    # @!attribute next_token
    #   <p>The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a ListEntitlements request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a NextToken value. To see the next batch of results, you can submit the <code>ListEntitlements</code> request a second time and specify the <code>NextToken</code> value. </p>
    #   @return [String]
    class ListEntitlementsResponse < Struct.new(
      :entitlements,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListFlows</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flows
    #   <p> A list of flow summaries.</p>
    #   @return [Array<Types::ListedFlow>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListFlows</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListFlows</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListFlowsResponse < Struct.new(
      :flows,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :filter_arn,
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute instances
    #   <p> A list of instance summaries.</p>
    #   @return [Array<Types::ListedGatewayInstance>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListInstances</code> request with MaxResults set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListInstances</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewayInstancesResponse < Struct.new(
      :instances,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListGateways</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewaysRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute gateways
    #   <p> A list of gateway summaries.</p>
    #   @return [Array<Types::ListedGateway>]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListGateways</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListGateways</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListGatewaysResponse < Struct.new(
      :gateways,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a <code>NextToken</code> value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    class ListOfferingsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListOfferings</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    # @!attribute offerings
    #   <p> A list of offerings that are available to this account in the current Amazon Web Services Region.</p>
    #   @return [Array<Types::Offering>]
    class ListOfferingsResponse < Struct.new(
      :next_token,
      :offerings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p> The maximum number of results to return per API request. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. Although 20 items match your request, the service returns no more than the first 5 items. (The service also returns a NextToken value that you can use to fetch the next batch of results.) </p> <p>The service might return fewer results than the <code>MaxResults</code> value. If <code>MaxResults</code> is not included in the request, the service defaults to pagination with a maximum of 10 results per page.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListOfferings</code> request a second time and specify the <code>NextToken</code> value. </p>
    #   @return [String]
    class ListReservationsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token that identifies the batch of results that you want to see. </p> <p>For example, you submit a <code>ListReservations</code> request with <code>MaxResults</code> set at 5. The service returns the first batch of results (up to 5) and a <code>NextToken</code> value. To see the next batch of results, you can submit the <code>ListReservations</code> request a second time and specify the <code>NextToken</code> value.</p>
    #   @return [String]
    # @!attribute reservations
    #   <p> A list of all reservations that have been purchased by this account in the current Amazon Web Services Region. </p>
    #   @return [Array<Types::Reservation>]
    class ListReservationsResponse < Struct.new(
      :next_token,
      :reservations,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource for which to list the tags.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p> A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :bridge_arn,
      :bridge_state,
      :bridge_type,
      :name,
      :placement_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :data_transfer_subscriber_fee_percent,
      :entitlement_arn,
      :entitlement_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :availability_zone,
      :description,
      :flow_arn,
      :name,
      :source_type,
      :status,
      :maintenance,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :gateway_arn,
      :gateway_state,
      :name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :gateway_arn,
      :gateway_instance_arn,
      :instance_id,
      :instance_state,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :maintenance_day,
      :maintenance_deadline,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MaintenanceDay
      Monday = 'Monday'
      Tuesday = 'Tuesday'
      Wednesday = 'Wednesday'
      Thursday = 'Thursday'
      Friday = 'Friday'
      Saturday = 'Saturday'
      Sunday = 'Sunday'
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
      :attributes,
      :clock_rate,
      :description,
      :fmt,
      :media_stream_id,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes that are related to the media stream. </p>
    # @!attribute fmtp
    #   <p>The settings that you want to use to define the media stream. </p>
    #   @return [Types::Fmtp]
    # @!attribute lang
    #   <p>The audio language, in a format that is recognized by the receiver. </p>
    #   @return [String]
    class MediaStreamAttributes < Struct.new(
      :fmtp,
      :lang,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Attributes that are related to the media stream. </p>
    # @!attribute fmtp
    #   <p>The settings that you want to use to define the media stream. </p>
    #   @return [Types::FmtpRequest]
    # @!attribute lang
    #   <p>The audio language, in a format that is recognized by the receiver. </p>
    #   @return [String]
    class MediaStreamAttributesRequest < Struct.new(
      :fmtp,
      :lang,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :destination_configurations,
      :encoding_name,
      :encoding_parameters,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :encoding_name,
      :input_configurations,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module MediaStreamType
      video = 'video'
      audio = 'audio'
      ancillary_data = 'ancillary-data'
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
      :code,
      :message,
      :resource_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Messages that provide the state of the flow.</p>
    # @!attribute errors
    #   <p> A list of errors that might have been generated from processes on this flow.</p>
    #   @return [Array<String>]
    class Messages < Struct.new(
      :errors,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :thumbnail_state,
      :audio_monitoring_settings,
      :content_quality_analysis_state,
      :video_monitoring_settings,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The settings related to the multicast source. </p>
    # @!attribute multicast_source_ip
    #   <p> The IP address of the source for source-specific multicast (SSM).</p>
    #   @return [String]
    class MulticastSourceSettings < Struct.new(
      :multicast_source_ip,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration settings for NDI outputs. Required when the flow includes NDI outputs. </p>
    # @!attribute ndi_state
    #   <p>A setting that controls whether NDI outputs can be used in the flow. Must be ENABLED to add NDI outputs. Default is DISABLED. </p>
    #   @return [String]
    # @!attribute machine_name
    #   <p>A prefix for the names of the NDI sources that the flow creates. If a custom name isn't specified, MediaConnect generates a unique 12-character ID as the prefix. </p>
    #   @return [String]
    # @!attribute ndi_discovery_servers
    #   <p>A list of up to three NDI discovery server configurations. While not required by the API, this configuration is necessary for NDI functionality to work properly. </p>
    #   @return [Array<Types::NdiDiscoveryServerConfig>]
    class NdiConfig < Struct.new(
      :ndi_state,
      :machine_name,
      :ndi_discovery_servers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration settings for individual NDI discovery servers. A maximum of 3 servers is allowed. </p>
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
      :discovery_server_address,
      :discovery_server_port,
      :vpc_interface_adapter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NdiState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module NetworkInterfaceType
      ena = 'ena'
      efa = 'efa'
    end

    # <p>One or more of the resources in the request does not exist in the system. </p>
    # @!attribute message
    #   @return [String]
    class NotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :currency_code,
      :duration,
      :duration_units,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :resource_specification,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>The IP address of the device that is currently receiving content from this output.</p> <note> <ul> <li> <p>For outputs that use protocols where you specify the destination (such as SRT Caller or Zixi Push), this value matches the configured destination address.</p> </li> <li> <p>For outputs that use listener protocols (such as SRT Listener), this value shows the address of the connected receiver. </p> </li> <li> <p>Peer IP addresses aren't available for entitlements, managed MediaLive outputs, NDI outputs, and CDI/ST2110 outputs. </p> </li> <li> <p>The peer IP address might not be visible for flows that haven't been started yet, or flows that were started before May 2025. In these cases, restart your flow to see the peer IP address.</p> </li> </ul> </note>
    #   @return [String]
    class Output < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module OutputStatus
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module PriceUnits
      HOURLY = 'HOURLY'
    end

    module Protocol
      zixi_push = 'zixi-push'
      rtp_fec = 'rtp-fec'
      rtp = 'rtp'
      zixi_pull = 'zixi-pull'
      rist = 'rist'
      st2110_jpegxs = 'st2110-jpegxs'
      cdi = 'cdi'
      srt_listener = 'srt-listener'
      srt_caller = 'srt-caller'
      fujitsu_qos = 'fujitsu-qos'
      udp = 'udp'
      ndi_speed_hq = 'ndi-speed-hq'
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
      :offering_arn,
      :reservation_name,
      :start,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute reservation
    #   <p>The details of the reservation that you just created when you purchased the offering. </p>
    #   @return [Types::Reservation]
    class PurchaseOfferingResponse < Struct.new(
      :reservation,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Range
      NARROW = 'NARROW'
      FULL = 'FULL'
      FULLPROTECT = 'FULLPROTECT'
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute output_name
    #   <p> The name of the bridge output that you want to remove.</p>
    #   @return [String]
    class RemoveBridgeOutputRequest < Struct.new(
      :bridge_arn,
      :output_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge from which the output was removed. </p>
    #   @return [String]
    # @!attribute output_name
    #   <p> The name of the bridge output that was removed. </p>
    #   @return [String]
    class RemoveBridgeOutputResponse < Struct.new(
      :bridge_arn,
      :output_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update.</p>
    #   @return [String]
    # @!attribute source_name
    #   <p> The name of the bridge source that you want to remove.</p>
    #   @return [String]
    class RemoveBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge from which the source was removed. </p>
    #   @return [String]
    # @!attribute source_name
    #   <p> The name of the bridge source that was removed. </p>
    #   @return [String]
    class RemoveBridgeSourceResponse < Struct.new(
      :bridge_arn,
      :source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to update.</p>
    #   @return [String]
    # @!attribute media_stream_name
    #   <p> The name of the media stream that you want to remove.</p>
    #   @return [String]
    class RemoveFlowMediaStreamRequest < Struct.new(
      :flow_arn,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that was updated.</p>
    #   @return [String]
    # @!attribute media_stream_name
    #   <p> The name of the media stream that was removed.</p>
    #   @return [String]
    class RemoveFlowMediaStreamResponse < Struct.new(
      :flow_arn,
      :media_stream_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove an output from.</p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The ARN of the output that you want to remove. </p>
    #   @return [String]
    class RemoveFlowOutputRequest < Struct.new(
      :flow_arn,
      :output_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that the output was removed from. </p>
    #   @return [String]
    # @!attribute output_arn
    #   <p> The ARN of the output that was removed. </p>
    #   @return [String]
    class RemoveFlowOutputResponse < Struct.new(
      :flow_arn,
      :output_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a source from.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p> The ARN of the source that you want to remove.</p>
    #   @return [String]
    class RemoveFlowSourceRequest < Struct.new(
      :flow_arn,
      :source_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that the source was removed from. </p>
    #   @return [String]
    # @!attribute source_arn
    #   <p> The ARN of the source that was removed. </p>
    #   @return [String]
    class RemoveFlowSourceResponse < Struct.new(
      :flow_arn,
      :source_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to remove a VPC interface from.</p>
    #   @return [String]
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface that you want to remove.</p>
    #   @return [String]
    class RemoveFlowVpcInterfaceRequest < Struct.new(
      :flow_arn,
      :vpc_interface_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :flow_arn,
      :non_deleted_network_interface_ids,
      :vpc_interface_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ReservationState
      ACTIVE = 'ACTIVE'
      EXPIRED = 'EXPIRED'
      PROCESSING = 'PROCESSING'
      CANCELED = 'CANCELED'
    end

    # <p> A definition of what is being billed for, including the type and amount.</p>
    # @!attribute reserved_bitrate
    #   <p> The amount of outbound bandwidth that is discounted in the offering.</p>
    #   @return [Integer]
    # @!attribute resource_type
    #   <p> The type of resource and the unit that is being billed for.</p>
    #   @return [String]
    class ResourceSpecification < Struct.new(
      :reserved_bitrate,
      :resource_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ResourceType
      Mbps_Outbound_Bandwidth = 'Mbps_Outbound_Bandwidth'
    end

    # @!attribute entitlement_arn
    #   <p> The Amazon Resource Name (ARN) of the entitlement that you want to revoke.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The flow that you want to revoke an entitlement from.</p>
    #   @return [String]
    class RevokeFlowEntitlementRequest < Struct.new(
      :entitlement_arn,
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entitlement_arn
    #   <p> The ARN of the entitlement that was revoked.</p>
    #   @return [String]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that the entitlement was revoked from.</p>
    #   @return [String]
    class RevokeFlowEntitlementResponse < Struct.new(
      :entitlement_arn,
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ScanMode
      progressive = 'progressive'
      interlace = 'interlace'
      progressive_segmented_frame = 'progressive-segmented-frame'
    end

    # <p>The service is currently unavailable or busy. </p>
    # @!attribute message
    #   @return [String]
    class ServiceUnavailableException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class SetGatewayBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class SetSourceRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Configures settings for the <code>SilentAudio</code> metric. </p>
    # @!attribute state
    #   <p>Indicates whether the <code>SilentAudio</code> metric is enabled or disabled. </p>
    #   @return [String]
    # @!attribute threshold_seconds
    #   <p>Specifies the number of consecutive seconds of silence that triggers an event or alert. </p>
    #   @return [Integer]
    class SilentAudio < Struct.new(
      :state,
      :threshold_seconds,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p> The IP address that the flow communicates with to initiate connection with the sender.</p>
    #   @return [Integer]
    # @!attribute sender_ip_address
    #   <p> The port that the flow uses to send outbound requests to initiate connection with the sender.</p>
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
    class Source < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The priority you want to assign to a source. You can have a primary stream and a backup stream or two equally prioritized streams. </p>
    # @!attribute primary_source
    #   <p> The name of the source you choose as the primary source for this flow.</p>
    #   @return [String]
    class SourcePriority < Struct.new(
      :primary_source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module SourceType
      OWNED = 'OWNED'
      ENTITLED = 'ENTITLED'
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to start.</p>
    #   @return [String]
    class StartFlowRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you started.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>StartFlow</code> process begins.</p>
    #   @return [String]
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module State
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    module Status
      STANDBY = 'STANDBY'
      ACTIVE = 'ACTIVE'
      UPDATING = 'UPDATING'
      DELETING = 'DELETING'
      STARTING = 'STARTING'
      STOPPING = 'STOPPING'
      ERROR = 'ERROR'
    end

    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) of the flow that you want to stop.</p>
    #   @return [String]
    class StopFlowRequest < Struct.new(
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that you stopped.</p>
    #   @return [String]
    # @!attribute status
    #   <p> The status of the flow when the <code>StopFlow</code> process begins.</p>
    #   @return [String]
    class StopFlowResponse < Struct.new(
      :flow_arn,
      :status,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource to which to add tags.</p>
    #   @return [String]
    # @!attribute tags
    #   <p> A map from tag keys to values. Tag keys can have a maximum character length of 128 characters, and tag values can have a maximum length of 256 characters.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module Tcs
      SDR = 'SDR'
      PQ = 'PQ'
      HLG = 'HLG'
      LINEAR = 'LINEAR'
      BT2100LINPQ = 'BT2100LINPQ'
      BT2100LINHLG = 'BT2100LINHLG'
      ST2065_1 = 'ST2065-1'
      ST428_1 = 'ST428-1'
      DENSITY = 'DENSITY'
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
      :flow_arn,
      :thumbnail,
      :thumbnail_messages,
      :timecode,
      :timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ThumbnailState
      ENABLED = 'ENABLED'
      DISABLED = 'DISABLED'
    end

    # <p>The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class TooManyRequestsException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p>A suffix for the names of the NDI sources that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    class Transport < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The metadata of the transport stream in the current flow's source.</p>
    # @!attribute programs
    #   <p> The list of transport stream programs in the current flow's source.</p>
    #   @return [Array<Types::TransportStreamProgram>]
    class TransportMediaInfo < Struct.new(
      :programs,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The metadata of an elementary transport stream.</p>
    # @!attribute channels
    #   <p> The number of channels in the audio stream.</p>
    #   @return [Integer]
    # @!attribute codec
    #   <p> The codec used by the stream.</p>
    #   @return [String]
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
      :channels,
      :codec,
      :frame_rate,
      :frame_resolution,
      :pid,
      :sample_rate,
      :sample_size,
      :stream_type,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :pcr_pid,
      :program_name,
      :program_number,
      :program_pid,
      :streams,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to be removed. </p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Update the flow source of the bridge. </p>
    # @!attribute flow_arn
    #   <p> The Amazon Resource Name (ARN) that identifies the MediaConnect resource from which to delete tags.</p>
    #   @return [String]
    # @!attribute flow_vpc_interface_attachment
    #   <p>The name of the VPC interface attachment to use for this source. </p>
    #   @return [Types::VpcInterfaceAttachment]
    class UpdateBridgeFlowSourceRequest < Struct.new(
      :flow_arn,
      :flow_vpc_interface_attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :ip_address,
      :network_name,
      :port,
      :protocol,
      :ttl,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :multicast_ip,
      :multicast_source_settings,
      :network_name,
      :port,
      :protocol,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :bridge_arn,
      :network_output,
      :output_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the bridge that was updated. </p>
    #   @return [String]
    # @!attribute output
    #   <p> The bridge output that was updated. </p>
    #   @return [Types::BridgeOutput]
    class UpdateBridgeOutputResponse < Struct.new(
      :bridge_arn,
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :bridge_arn,
      :egress_gateway_bridge,
      :ingress_gateway_bridge,
      :source_failover_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge
    #   <p> The bridge that was updated. </p>
    #   @return [Types::Bridge]
    class UpdateBridgeResponse < Struct.new(
      :bridge,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :bridge_arn,
      :flow_source,
      :network_source,
      :source_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The ARN of the updated bridge source. </p>
    #   @return [String]
    # @!attribute source
    #   <p> The updated bridge source. </p>
    #   @return [Types::BridgeSource]
    class UpdateBridgeSourceResponse < Struct.new(
      :bridge_arn,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p> The Amazon Resource Name (ARN) of the bridge that you want to update the state of. </p>
    #   @return [String]
    # @!attribute desired_state
    #   <p> The desired state for the bridge. </p>
    #   @return [String]
    class UpdateBridgeStateRequest < Struct.new(
      :bridge_arn,
      :desired_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_arn
    #   <p>The ARN of the updated bridge. </p>
    #   @return [String]
    # @!attribute desired_state
    #   <p> The new state of the bridge. </p>
    #   @return [String]
    class UpdateBridgeStateResponse < Struct.new(
      :bridge_arn,
      :desired_state,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Update an existing egress-type bridge.</p>
    # @!attribute max_bitrate
    #   <p>The maximum expected bitrate (in bps). </p>
    #   @return [Integer]
    class UpdateEgressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :failover_mode,
      :recovery_window,
      :source_priority,
      :state,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :flow_arn,
      :subscribers,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute entitlement
    #   <p> The new configuration of the entitlement that you updated.</p>
    #   @return [Types::Entitlement]
    # @!attribute flow_arn
    #   <p> The ARN of the flow that this entitlement was granted on.</p>
    #   @return [String]
    class UpdateFlowEntitlementResponse < Struct.new(
      :entitlement,
      :flow_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :attributes,
      :clock_rate,
      :description,
      :flow_arn,
      :media_stream_name,
      :media_stream_type,
      :video_format,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p>The ARN of the flow that is associated with the media stream that you updated. </p>
    #   @return [String]
    # @!attribute media_stream
    #   <p>The media stream that you updated. </p>
    #   @return [Types::MediaStream]
    class UpdateFlowMediaStreamResponse < Struct.new(
      :flow_arn,
      :media_stream,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p> A suffix for the names of the NDI sources that the flow creates. If a custom name isn't specified, MediaConnect uses the output name. </p>
    #   @return [String]
    # @!attribute ndi_speed_hq_quality
    #   <p>A quality setting for the NDI Speed HQ encoder. </p>
    #   @return [Integer]
    class UpdateFlowOutputRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p> The ARN of the flow that is associated with the updated output.</p>
    #   @return [String]
    # @!attribute output
    #   <p> The new settings of the output that you updated.</p>
    #   @return [Types::Output]
    class UpdateFlowOutputResponse < Struct.new(
      :flow_arn,
      :output,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    #   <p> Specifies the configuration settings for NDI outputs. Required when the flow includes NDI outputs. </p>
    #   @return [Types::NdiConfig]
    class UpdateFlowRequest < Struct.new(
      :flow_arn,
      :source_failover_config,
      :maintenance,
      :source_monitoring_config,
      :ndi_config,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow
    #   <p> The updated flow. </p>
    #   @return [Types::Flow]
    class UpdateFlowResponse < Struct.new(
      :flow,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class UpdateFlowSourceRequest < Struct.new(
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
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute flow_arn
    #   <p>The ARN of the flow that you was updated. </p>
    #   @return [String]
    # @!attribute source
    #   <p>The details of the sources that are assigned to the flow. </p>
    #   @return [Types::Source]
    class UpdateFlowSourceResponse < Struct.new(
      :flow_arn,
      :source,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The source configuration for cloud flows receiving a stream from a bridge.</p>
    # @!attribute bridge_arn
    #   <p> The ARN of the bridge feeding this flow.</p>
    #   @return [String]
    # @!attribute vpc_interface_attachment
    #   <p> The name of the VPC interface attachment to use for this bridge source.</p>
    #   @return [Types::VpcInterfaceAttachment]
    class UpdateGatewayBridgeSourceRequest < Struct.new(
      :bridge_arn,
      :vpc_interface_attachment,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_placement
    #   <p>The state of the instance. <code>ACTIVE</code> or <code>INACTIVE</code>. </p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the gateway instance that you want to update. </p>
    #   @return [String]
    class UpdateGatewayInstanceRequest < Struct.new(
      :bridge_placement,
      :gateway_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute bridge_placement
    #   <p>The state of the instance. <code>ACTIVE</code> or <code>INACTIVE</code>. </p>
    #   @return [String]
    # @!attribute gateway_instance_arn
    #   <p>The ARN of the instance that was updated. </p>
    #   @return [String]
    class UpdateGatewayInstanceResponse < Struct.new(
      :bridge_placement,
      :gateway_instance_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Update an existing ingress-type bridge. </p>
    # @!attribute max_bitrate
    #   <p> The maximum expected bitrate (in bps).</p>
    #   @return [Integer]
    # @!attribute max_outputs
    #   <p> The maximum number of expected outputs.</p>
    #   @return [Integer]
    class UpdateIngressGatewayBridgeRequest < Struct.new(
      :max_bitrate,
      :max_outputs,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :maintenance_day,
      :maintenance_scheduled_date,
      :maintenance_start_hour,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Specifies the configuration for video stream metrics monitoring.</p>
    # @!attribute black_frames
    #   <p>Detects video frames that are black. </p>
    #   @return [Types::BlackFrames]
    # @!attribute frozen_frames
    #   <p>Detects video frames that have not changed. </p>
    #   @return [Types::FrozenFrames]
    class VideoMonitoringSetting < Struct.new(
      :black_frames,
      :frozen_frames,
      keyword_init: true)
      include Smithy::Schema::Structure
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
      :name,
      :network_interface_ids,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The settings for attaching a VPC interface to an resource. </p>
    # @!attribute vpc_interface_name
    #   <p> The name of the VPC interface to use for this resource.</p>
    #   @return [String]
    class VpcInterfaceAttachment < Struct.new(
      :vpc_interface_name,
      keyword_init: true)
      include Smithy::Schema::Structure
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
    class VpcInterfaceRequest < Struct.new(
      :name,
      :network_interface_type,
      :role_arn,
      :security_group_ids,
      :subnet_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
