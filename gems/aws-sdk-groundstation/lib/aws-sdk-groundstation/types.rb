# frozen_string_literal: true

# This is generated code!

module Aws::GroundStation
  # This module contains the types returned by client operations.
  module Types

    # <p>Detailed information about the agent.</p>
    # @!attribute agent_version
    #   <p>Current agent version.</p>
    #   @return [String]
    # @!attribute instance_id
    #   <p>ID of EC2 instance agent is running on.</p>
    #   @return [String]
    # @!attribute instance_type
    #   <p>Type of EC2 instance agent is running on.</p>
    #   @return [String]
    # @!attribute reserved_cpu_cores
    #   <note> <p>This field should not be used. Use agentCpuCores instead.</p> </note> <p>List of CPU cores reserved for processes other than the agent running on the EC2 instance.</p>
    #   @return [Array<Integer>]
    # @!attribute agent_cpu_cores
    #   <p>List of CPU cores reserved for the agent.</p>
    #   @return [Array<Integer>]
    # @!attribute component_versions
    #   <p>List of versions being used by agent components.</p>
    #   @return [Array<Types::ComponentVersion>]
    class AgentDetails < Struct.new(
      nil,
      :agent_version,
      :instance_id,
      :instance_type,
      :reserved_cpu_cores,
      :agent_cpu_cores,
      :component_versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Aggregate status of Agent components.</p>
    # @!attribute status
    #   <p>Aggregate status.</p>
    #   @return [String]
    # @!attribute signature_map
    #   <p>Sparse map of failure signatures.</p>
    #   @return [Hash<String, Boolean>]
    class AggregateStatus < Struct.new(
      nil,
      :status,
      :signature_map,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an antenna demod decode <code>Config</code> used in a contact.</p>
    # @!attribute output_node
    #   <p>Name of an antenna demod decode output node used in a contact.</p>
    #   @return [String]
    class AntennaDemodDecodeDetails < Struct.new(
      nil,
      :output_node,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>
    # @!attribute spectrum_config
    #   <p>Object that describes a spectral <code>Config</code>.</p>
    #   @return [Types::SpectrumConfig]
    class AntennaDownlinkConfig < Struct.new(
      nil,
      :spectrum_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>
    # @!attribute spectrum_config
    #   <p>Information about the spectral <code>Config</code>.</p>
    #   @return [Types::SpectrumConfig]
    # @!attribute demodulation_config
    #   <p>Information about the demodulation <code>Config</code>.</p>
    #   @return [Types::DemodulationConfig]
    # @!attribute decode_config
    #   <p>Information about the decode <code>Config</code>.</p>
    #   @return [Types::DecodeConfig]
    class AntennaDownlinkDemodDecodeConfig < Struct.new(
      nil,
      :spectrum_config,
      :demodulation_config,
      :decode_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An antenna at a ground station.</p>
    # @!attribute ground_station_name
    #   <p>Name of the ground station the antenna is associated with.</p>
    #   @return [String]
    # @!attribute antenna_name
    #   <p>Name of the antenna.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of the antenna.</p>
    #   @return [String]
    class AntennaListItem < Struct.new(
      nil,
      :ground_station_name,
      :antenna_name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the uplink <code>Config</code> of an antenna.</p>
    # @!attribute transmit_disabled
    #   <p>Whether or not uplink transmit is disabled.</p>
    #   @return [Boolean]
    # @!attribute spectrum_config
    #   <p>Information about the uplink spectral <code>Config</code>.</p>
    #   @return [Types::UplinkSpectrumConfig]
    # @!attribute target_eirp
    #   <p>EIRP of the target.</p>
    #   @return [Types::Eirp]
    class AntennaUplinkConfig < Struct.new(
      nil,
      :transmit_disabled,
      :spectrum_config,
      :target_eirp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about AwsGroundStationAgentEndpoint.</p>
    # @!attribute name
    #   <p>Name string associated with AgentEndpoint. Used as a human-readable identifier for AgentEndpoint.</p>
    #   @return [String]
    # @!attribute egress_address
    #   <p>The egress address of AgentEndpoint.</p>
    #   @return [Types::ConnectionDetails]
    # @!attribute ingress_address
    #   <p>The ingress address of AgentEndpoint.</p>
    #   @return [Types::RangedConnectionDetails]
    # @!attribute agent_status
    #   <p>The status of AgentEndpoint.</p>
    #   @return [String]
    # @!attribute audit_results
    #   <p>The results of the audit.</p>
    #   @return [String]
    class AwsGroundStationAgentEndpoint < Struct.new(
      nil,
      :name,
      :egress_address,
      :ingress_address,
      :agent_status,
      :audit_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Azimuth elevation ephemeris data.</p> <p> Use this ephemeris type to provide pointing angles directly, rather than satellite orbital elements. Use this when you need precise antenna pointing but have imprecise or unknown satellite trajectory information. </p> <p> The azimuth elevation data specifies the antenna pointing direction at specific times relative to a ground station location. AWS Ground Station uses 4th order Lagrange interpolation to compute pointing angles between the provided data points. </p> <p> AWS Ground Station automatically filters interpolated pointing angles, including only those that are above the site mask elevation of the specified ground station. </p> <p> For more detail about providing azimuth elevation ephemerides to AWS Ground Station, see the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-azimuth-elevation-ephemeris-data.html">azimuth elevation ephemeris section</a> of the AWS Ground Station User Guide. </p>
    # @!attribute ground_station
    #   <p>The ground station name for which you're providing azimuth elevation data.</p> <p>This ephemeris is specific to this ground station and can't be used at other locations.</p>
    #   @return [String]
    # @!attribute data
    #   <p>Azimuth elevation segment data.</p> <p>You can provide data inline in the request or through an Amazon S3 object reference.</p>
    #   @return [Types::AzElSegmentsData]
    class AzElEphemeris < Struct.new(
      nil,
      :ground_station,
      :data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter for selecting contacts that use a specific <a>AzElEphemeris</a>.</p>
    # @!attribute id
    #   <p>Unique identifier of the azimuth elevation ephemeris.</p>
    #   @return [String]
    class AzElEphemerisFilter < Struct.new(
      nil,
      :id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program track settings for <a>AzElEphemeris</a>.</p>
    # @!attribute ephemeris_id
    #   <p>Unique identifier of the azimuth elevation ephemeris.</p>
    #   @return [String]
    class AzElProgramTrackSettings < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time segment containing azimuth elevation pointing data.</p> <p> Each segment defines a continuous time period with pointing angle data points. AWS Ground Station uses 4th order Lagrange interpolation between the provided points, so each segment must contain at least five data points. </p>
    # @!attribute reference_epoch
    #   <p>The reference time for this segment in ISO 8601 format in Coordinated Universal Time (UTC).</p> <p>All time values within the segment's <a>AzElSegment$azElList</a> are specified as offsets in atomic seconds from this reference epoch.</p> <p>Example: <code>2024-01-15T12:00:00.000Z</code> </p>
    #   @return [Time]
    # @!attribute valid_time_range
    #   <p>The valid time range for this segment.</p> <p> Specifies the start and end timestamps in ISO 8601 format in Coordinated Universal Time (UTC). The segment's pointing data must cover this entire time range. </p>
    #   @return [Types::ISO8601TimeRange]
    # @!attribute az_el_list
    #   <p>List of time-tagged azimuth elevation data points.</p> <p> Must contain at least five points to support 4th order Lagrange interpolation. Points must be in chronological order with no duplicates. </p>
    #   @return [Array<Types::TimeAzEl>]
    class AzElSegment < Struct.new(
      nil,
      :reference_epoch,
      :valid_time_range,
      :az_el_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Azimuth elevation segment collection.</p> <p>Contains five or more time-ordered segments that define antenna pointing angles over the ephemeris validity period.</p>
    # @!attribute angle_unit
    #   <p>The unit of measure for azimuth and elevation angles. All angles in all segments must use the same unit.</p>
    #   @return [String]
    # @!attribute az_el_segment_list
    #   <p>List of azimuth elevation segments.</p> <p>Must contain between 1 and 100 segments. Segments must be in chronological order with no overlaps.</p>
    #   @return [Array<Types::AzElSegment>]
    class AzElSegments < Struct.new(
      nil,
      :angle_unit,
      :az_el_segment_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Container for azimuth elevation segment data.</p> <p>Specify either <a>AzElSegmentsData$s3Object</a> to reference data in Amazon S3, or <a>AzElSegmentsData$azElData</a> to provide data inline.</p>
    # @!attribute s3_object
    #   <p>The Amazon S3 object containing azimuth elevation segment data.</p> <p>The Amazon S3 object must contain JSON-formatted azimuth elevation data matching the <a>AzElSegments</a> structure.</p>
    #   @return [Types::S3Object]
    # @!attribute az_el_data
    #   <p>Azimuth elevation segment data provided directly in the request.</p> <p>Use this option for smaller datasets or when Amazon S3 access is not available.</p>
    #   @return [Types::AzElSegments]
    class AzElSegmentsData < Struct.new(
      :s3_object,
      :az_el_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class S3Object < AzElSegmentsData; end
      class AzElData < AzElSegmentsData; end
      class Unknown < AzElSegmentsData; end
    end

    # <p>Response containing the ID of a contact. </p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of a contact.</p>
    #   @return [Integer]
    class CancelContactOutput < Struct.new(
      nil,
      :contact_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>CancelContact</code> operation. </p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    class CancelContactRequest < Struct.new(
      nil,
      :contact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data on the status of agent components.</p>
    # @!attribute component_type
    #   <p>The Component type.</p>
    #   @return [String]
    # @!attribute capability_arn
    #   <p>Capability ARN of the component.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Component status.</p>
    #   @return [String]
    # @!attribute bytes_sent
    #   <p>Bytes sent by the component.</p>
    #   @return [Integer]
    # @!attribute bytes_received
    #   <p>Bytes received by the component.</p>
    #   @return [Integer]
    # @!attribute packets_dropped
    #   <p>Packets dropped by component.</p>
    #   @return [Integer]
    # @!attribute dataflow_id
    #   <p>Dataflow UUID associated with the component.</p>
    #   @return [String]
    class ComponentStatusData < Struct.new(
      nil,
      :component_type,
      :capability_arn,
      :status,
      :bytes_sent,
      :bytes_received,
      :packets_dropped,
      :dataflow_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Version information for agent components.</p>
    # @!attribute component_type
    #   <p>Component type.</p>
    #   @return [String]
    # @!attribute versions
    #   <p>List of versions.</p>
    #   @return [Array<String>]
    class ComponentVersion < Struct.new(
      nil,
      :component_type,
      :versions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for certain <code>Config</code> object types in a contact.</p>
    # @!attribute endpoint_details
    #   <p>Information about the endpoint details.</p>
    #   @return [Types::EndpointDetails]
    # @!attribute antenna_demod_decode_details
    #   <p>Details for antenna demod decode <code>Config</code> in a contact.</p>
    #   @return [Types::AntennaDemodDecodeDetails]
    # @!attribute s3_recording_details
    #   <p>Details for an S3 recording <code>Config</code> in a contact.</p>
    #   @return [Types::S3RecordingDetails]
    class ConfigDetails < Struct.new(
      :endpoint_details,
      :antenna_demod_decode_details,
      :s3_recording_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class EndpointDetails < ConfigDetails; end
      class AntennaDemodDecodeDetails < ConfigDetails; end
      class S3RecordingDetails < ConfigDetails; end
      class Unknown < ConfigDetails; end
    end

    # <p>An item in a list of <code>Config</code> objects.</p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #   @return [String]
    class ConfigListItem < Struct.new(
      nil,
      :config_id,
      :config_type,
      :config_arn,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object containing the parameters of a <code>Config</code>.</p> <p>See the subtype definitions for what each type of <code>Config</code> contains.</p>
    # @!attribute antenna_downlink_config
    #   <p>Information about how AWS Ground Station should configure an antenna for downlink during a contact.</p>
    #   @return [Types::AntennaDownlinkConfig]
    # @!attribute tracking_config
    #   <p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile. </p>
    #   @return [Types::TrackingConfig]
    # @!attribute dataflow_endpoint_config
    #   <p>Information about the dataflow endpoint <code>Config</code>.</p>
    #   @return [Types::DataflowEndpointConfig]
    # @!attribute antenna_downlink_demod_decode_config
    #   <p>Information about how AWS Ground Station should conﬁgure an antenna for downlink demod decode during a contact.</p>
    #   @return [Types::AntennaDownlinkDemodDecodeConfig]
    # @!attribute antenna_uplink_config
    #   <p>Information about how AWS Ground Station should conﬁgure an antenna for uplink during a contact.</p>
    #   @return [Types::AntennaUplinkConfig]
    # @!attribute uplink_echo_config
    #   <p>Information about an uplink echo <code>Config</code>.</p> <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code> AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>
    #   @return [Types::UplinkEchoConfig]
    # @!attribute s3_recording_config
    #   <p>Information about an S3 recording <code>Config</code>.</p>
    #   @return [Types::S3RecordingConfig]
    # @!attribute telemetry_sink_config
    #   <p>Information about a telemetry sink <code>Config</code>.</p>
    #   @return [Types::TelemetrySinkConfig]
    class ConfigTypeData < Struct.new(
      :antenna_downlink_config,
      :tracking_config,
      :dataflow_endpoint_config,
      :antenna_downlink_demod_decode_config,
      :antenna_uplink_config,
      :uplink_echo_config,
      :s3_recording_config,
      :telemetry_sink_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AntennaDownlinkConfig < ConfigTypeData; end
      class TrackingConfig < ConfigTypeData; end
      class DataflowEndpointConfig < ConfigTypeData; end
      class AntennaDownlinkDemodDecodeConfig < ConfigTypeData; end
      class AntennaUplinkConfig < ConfigTypeData; end
      class UplinkEchoConfig < ConfigTypeData; end
      class S3RecordingConfig < ConfigTypeData; end
      class TelemetrySinkConfig < ConfigTypeData; end
      class Unknown < ConfigTypeData; end
    end

    # <p>Egress address of AgentEndpoint with an optional mtu.</p>
    # @!attribute socket_address
    #   <p>A socket address.</p>
    #   @return [Types::SocketAddress]
    # @!attribute mtu
    #   <p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>
    #   @return [Integer]
    class ConnectionDetails < Struct.new(
      nil,
      :socket_address,
      :mtu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data describing a contact.</p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute pre_pass_start_time
    #   <p>Start time in UTC of the pre-pass period, at which you receive a CloudWatch event indicating an upcoming pass.</p>
    #   @return [Time]
    # @!attribute post_pass_end_time
    #   <p>End time in UTC of the post-pass period, at which you receive a CloudWatch event indicating the pass has finished.</p>
    #   @return [Time]
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #   @return [String]
    # @!attribute contact_status
    #   <p>Status of a contact.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message of a contact.</p>
    #   @return [String]
    # @!attribute maximum_elevation
    #   <p>Maximum elevation angle of a contact.</p>
    #   @return [Types::Elevation]
    # @!attribute region
    #   <p>Region of a contact.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #   @return [Hash<String, String>]
    # @!attribute visibility_start_time
    #   <p> Projected time in UTC your satellite will rise above the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts. <i>This field is not present for contacts with a <code>SCHEDULING</code> or <code>SCHEDULED</code> status.</i> </p>
    #   @return [Time]
    # @!attribute visibility_end_time
    #   <p> Projected time in UTC your satellite will set below the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts. <i>This field is not present for contacts with a <code>SCHEDULING</code> or <code>SCHEDULED</code> status.</i> </p>
    #   @return [Time]
    # @!attribute ephemeris
    #   <p>The ephemeris that determines antenna pointing for the contact.</p>
    #   @return [Types::EphemerisResponseData]
    # @!attribute version
    #   <p>Version information for a contact.</p>
    #   @return [Types::ContactVersion]
    class ContactData < Struct.new(
      nil,
      :contact_id,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :pre_pass_start_time,
      :post_pass_end_time,
      :ground_station,
      :contact_status,
      :error_message,
      :maximum_elevation,
      :region,
      :tags,
      :visibility_start_time,
      :visibility_end_time,
      :ephemeris,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a contact reservation.</p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    class ContactReservationDetails < Struct.new(
      nil,
      :contact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Version information for a contact.</p>
    # @!attribute version_id
    #   <p>Version ID of a contact.</p>
    #   @return [Integer]
    # @!attribute created
    #   <p>Time the contact version was created in UTC.</p>
    #   @return [Time]
    # @!attribute activated
    #   <p>Time the contact version was activated in UTC. A version is activated when it becomes the current active version of the contact.</p>
    #   @return [Time]
    # @!attribute superseded
    #   <p>Time the contact version was superseded in UTC. A version is superseded when a newer version becomes active.</p>
    #   @return [Time]
    # @!attribute last_updated
    #   <p>Time the contact version was last updated in UTC.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status of the contact version.</p>
    #   @return [String]
    # @!attribute failure_codes
    #   <p>List of failure codes for the contact version.</p>
    #   @return [Array<String>]
    # @!attribute failure_message
    #   <p>Failure message for the contact version.</p>
    #   @return [String]
    class ContactVersion < Struct.new(
      nil,
      :version_id,
      :created,
      :activated,
      :superseded,
      :last_updated,
      :status,
      :failure_codes,
      :failure_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ARN, ID, and type of a <code>Config</code>. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #   @return [String]
    class CreateConfigOutput < Struct.new(
      nil,
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>CreateConfig</code> operation. </p>
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #   @return [Types::ConfigTypeData]
    # @!attribute tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    #   @return [Hash<String, String>]
    class CreateConfigRequest < Struct.new(
      nil,
      :name,
      :config_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ID of a dataflow endpoint group. </p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    class CreateDataflowEndpointGroupOutput < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>CreateDataflowEndpointGroup</code> operation. </p>
    # @!attribute endpoint_details
    #   <p>Endpoint details of each endpoint in the dataflow endpoint group. All dataflow endpoints within a single dataflow endpoint group must be of the same type. You cannot mix <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_AwsGroundStationAgentEndpoint.html"> AWS Ground Station Agent endpoints</a> with <a href="https://docs.aws.amazon.com/ground-station/latest/APIReference/API_DataflowEndpoint.html">Dataflow endpoints</a> in the same group. If your use case requires both types of endpoints, you must create separate dataflow endpoint groups for each type. </p>
    #   @return [Array<Types::EndpointDetails>]
    # @!attribute tags
    #   <p>Tags of a dataflow endpoint group.</p>
    #   @return [Hash<String, String>]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p> Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state. </p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p> Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state. </p>
    #   @return [Integer]
    class CreateDataflowEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_details,
      :tags,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoints
    #   <p>Dataflow endpoint group's endpoint definitions</p>
    #   @return [Array<Types::CreateEndpointDetails>]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p> Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state. </p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p> Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A <a href="https://docs.aws.amazon.com/ground-station/latest/ug/monitoring.automating-events.html">Ground Station Dataflow Endpoint Group State Change event</a> will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state. </p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>Tags of a V2 dataflow endpoint group.</p>
    #   @return [Hash<String, String>]
    class CreateDataflowEndpointGroupV2Request < Struct.new(
      nil,
      :endpoints,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dataflow_endpoint_group_id
    #   <p>Dataflow endpoint group ID</p>
    #   @return [String]
    class CreateDataflowEndpointGroupV2Response < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Endpoint definition used for creating a dataflow endpoint</p>
    # @!attribute uplink_aws_ground_station_agent_endpoint
    #   <p>Definition for an uplink agent endpoint</p>
    #   @return [Types::UplinkAwsGroundStationAgentEndpoint]
    # @!attribute downlink_aws_ground_station_agent_endpoint
    #   <p>Definition for a downlink agent endpoint</p>
    #   @return [Types::DownlinkAwsGroundStationAgentEndpoint]
    class CreateEndpointDetails < Struct.new(
      :uplink_aws_ground_station_agent_endpoint,
      :downlink_aws_ground_station_agent_endpoint,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class UplinkAwsGroundStationAgentEndpoint < CreateEndpointDetails; end
      class DownlinkAwsGroundStationAgentEndpoint < CreateEndpointDetails; end
      class Unknown < CreateEndpointDetails; end
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    class CreateEphemerisOutput < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute satellite_id
    #   <p>The satellite ID that associates this ephemeris with a satellite in AWS Ground Station.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Set to <code>true</code> to enable the ephemeris after validation. Set to <code>false</code> to keep it disabled.</p>
    #   @return [Boolean]
    # @!attribute priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    #   @return [Integer]
    # @!attribute expiration_time
    #   <p>An overall expiration time for the ephemeris in UTC, after which it will become <code>EXPIRED</code>.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A name that you can use to identify the ephemeris.</p>
    #   @return [String]
    # @!attribute kms_key_arn
    #   <p>The ARN of the KMS key to use for encrypting the ephemeris.</p>
    #   @return [String]
    # @!attribute ephemeris
    #   <p>Ephemeris data.</p>
    #   @return [Types::EphemerisData]
    # @!attribute tags
    #   <p>Tags assigned to an ephemeris.</p>
    #   @return [Hash<String, String>]
    class CreateEphemerisRequest < Struct.new(
      nil,
      :satellite_id,
      :enabled,
      :priority,
      :expiration_time,
      :name,
      :kms_key_arn,
      :ephemeris,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ID of a mission profile. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    class CreateMissionProfileOutput < Struct.new(
      nil,
      :mission_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>CreateMissionProfile</code> operation. </p>
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #   @return [String]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you'd like to receive a Ground Station Contact State Change event indicating an upcoming pass.</p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    #   @return [Integer]
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you'd like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #   @return [Integer]
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code> Config</code> and a <i>to</i> <code>Config</code>.</p>
    #   @return [Array<Array<String>>]
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #   @return [String]
    # @!attribute telemetry_sink_config_arn
    #   <p>ARN of a telemetry sink <code>Config</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to a mission profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute streams_kms_key
    #   <p>KMS key to use for encrypting streams.</p>
    #   @return [Types::KmsKey]
    # @!attribute streams_kms_role
    #   <p>Role to use for encrypting streams with KMS key.</p>
    #   @return [String]
    class CreateMissionProfileRequest < Struct.new(
      nil,
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :telemetry_sink_config_arn,
      :tags,
      :streams_kms_key,
      :streams_kms_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a dataflow edge used in a contact.</p>
    # @!attribute source
    #   <p>Dataflow details for the source side.</p>
    #   @return [Types::Source]
    # @!attribute destination
    #   <p>Dataflow details for the destination side.</p>
    #   @return [Types::Destination]
    # @!attribute error_message
    #   <p>Error message for a dataflow.</p>
    #   @return [String]
    class DataflowDetail < Struct.new(
      nil,
      :source,
      :destination,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a dataflow endpoint.</p>
    # @!attribute name
    #   <p>Name of a dataflow endpoint.</p>
    #   @return [String]
    # @!attribute address
    #   <p>Socket address of a dataflow endpoint.</p>
    #   @return [Types::SocketAddress]
    # @!attribute status
    #   <p>Status of a dataflow endpoint.</p>
    #   @return [String]
    # @!attribute mtu
    #   <p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>
    #   @return [Integer]
    class DataflowEndpoint < Struct.new(
      nil,
      :name,
      :address,
      :status,
      :mtu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the dataflow endpoint <code>Config</code>.</p>
    # @!attribute dataflow_endpoint_name
    #   <p>Name of a dataflow endpoint.</p>
    #   @return [String]
    # @!attribute dataflow_endpoint_region
    #   <p>Region of a dataflow endpoint.</p>
    #   @return [String]
    class DataflowEndpointConfig < Struct.new(
      nil,
      :dataflow_endpoint_name,
      :dataflow_endpoint_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Item in a list of <code>DataflowEndpoint</code> groups.</p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    # @!attribute dataflow_endpoint_group_arn
    #   <p>ARN of a dataflow endpoint group.</p>
    #   @return [String]
    class DataflowEndpointListItem < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the decode <code>Config</code>.</p>
    # @!attribute unvalidated_json
    #   <p>Unvalidated JSON of a decode <code>Config</code>.</p>
    #   @return [String]
    class DecodeConfig < Struct.new(
      nil,
      :unvalidated_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ARN, ID, and type of a <code>Config</code>. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #   @return [String]
    class DeleteConfigOutput < Struct.new(
      nil,
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>DeleteConfig</code> operation. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    class DeleteConfigRequest < Struct.new(
      nil,
      :config_id,
      :config_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ID of a dataflow endpoint group. </p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    class DeleteDataflowEndpointGroupOutput < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>DeleteDataflowEndpointGroup</code> operation. </p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    class DeleteDataflowEndpointGroupRequest < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    class DeleteEphemerisOutput < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    class DeleteEphemerisRequest < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ID of a mission profile. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    class DeleteMissionProfileOutput < Struct.new(
      nil,
      :mission_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>DeleteMissionProfile</code> operation. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    class DeleteMissionProfileRequest < Struct.new(
      nil,
      :mission_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the demodulation <code>Config</code>.</p>
    # @!attribute unvalidated_json
    #   <p>Unvalidated JSON of a demodulation <code>Config</code>.</p>
    #   @return [String]
    class DemodulationConfig < Struct.new(
      nil,
      :unvalidated_json,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dependency encountered an error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute parameter_name
    #   <p>Name of the parameter that caused the exception.</p>
    #   @return [String]
    class DependencyException < Struct.new(
      nil,
      :message,
      :parameter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>DescribeContact</code> operation. </p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    class DescribeContactRequest < Struct.new(
      nil,
      :contact_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>DescribeContact</code> operation. </p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute pre_pass_start_time
    #   <p>Start time in UTC of the pre-pass period, at which you receive a CloudWatch event indicating an upcoming pass.</p>
    #   @return [Time]
    # @!attribute post_pass_end_time
    #   <p>End time in UTC of the post-pass period, at which you receive a CloudWatch event indicating the pass has finished.</p>
    #   @return [Time]
    # @!attribute ground_station
    #   <p>Ground station for a contact.</p>
    #   @return [String]
    # @!attribute contact_status
    #   <p>Status of a contact.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message for a contact.</p>
    #   @return [String]
    # @!attribute maximum_elevation
    #   <p>Maximum elevation angle of a contact.</p>
    #   @return [Types::Elevation]
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #   @return [Hash<String, String>]
    # @!attribute region
    #   <p>Region where the <code>ReserveContact</code> API was called to schedule this contact.</p>
    #   @return [String]
    # @!attribute dataflow_list
    #   <p>List describing source and destination details for each dataflow edge.</p>
    #   @return [Array<Types::DataflowDetail>]
    # @!attribute visibility_start_time
    #   <p> Projected time in UTC your satellite will rise above the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts.</p>
    #   @return [Time]
    # @!attribute visibility_end_time
    #   <p> Projected time in UTC your satellite will set below the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts.</p>
    #   @return [Time]
    # @!attribute tracking_overrides
    #   <p>Tracking configuration overrides specified when the contact was reserved.</p>
    #   @return [Types::TrackingOverrides]
    # @!attribute ephemeris
    #   <p>The ephemeris that determines antenna pointing directions for the contact.</p>
    #   @return [Types::EphemerisResponseData]
    # @!attribute version
    #   <p>Version information for a contact.</p>
    #   @return [Types::ContactVersion]
    class DescribeContactResponse < Struct.new(
      nil,
      :contact_id,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :pre_pass_start_time,
      :post_pass_end_time,
      :ground_station,
      :contact_status,
      :error_message,
      :maximum_elevation,
      :tags,
      :region,
      :dataflow_list,
      :visibility_start_time,
      :visibility_end_time,
      :tracking_overrides,
      :ephemeris,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of a contact.</p>
    #   @return [Integer]
    class DescribeContactVersionRequest < Struct.new(
      nil,
      :contact_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of the contact's mission profile.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute pre_pass_start_time
    #   <p>Start time in UTC of the pre-pass period, at which you receive a CloudWatch event indicating an upcoming pass.</p>
    #   @return [Time]
    # @!attribute post_pass_end_time
    #   <p>End time in UTC of the post-pass period, at which you receive a CloudWatch event indicating the pass has finished.</p>
    #   @return [Time]
    # @!attribute ground_station
    #   <p>Ground station for a contact.</p>
    #   @return [String]
    # @!attribute contact_status
    #   <p>Status of a contact.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>Error message for a contact.</p>
    #   @return [String]
    # @!attribute maximum_elevation
    #   <p>Maximum elevation angle of a contact.</p>
    #   @return [Types::Elevation]
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #   @return [Hash<String, String>]
    # @!attribute region
    #   <p>Region where the <code>ReserveContact</code> API was called to schedule this contact.</p>
    #   @return [String]
    # @!attribute dataflow_list
    #   <p>List describing source and destination details for each dataflow edge.</p>
    #   @return [Array<Types::DataflowDetail>]
    # @!attribute visibility_start_time
    #   <p> Projected time in UTC your satellite will rise above the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts.</p>
    #   @return [Time]
    # @!attribute visibility_end_time
    #   <p> Projected time in UTC your satellite will set below the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html">receive mask</a>. This time is based on the satellite's current active ephemeris for future contacts and the ephemeris that was active during contact execution for completed contacts.</p>
    #   @return [Time]
    # @!attribute tracking_overrides
    #   <p>Tracking configuration overrides applied to this contact version. For the initial version, these are the overrides specified when the contact was reserved. For subsequent versions, these are the overrides associated with that specific version update.</p>
    #   @return [Types::TrackingOverrides]
    # @!attribute ephemeris
    #   <p>The ephemeris that determines antenna pointing directions for the contact.</p>
    #   @return [Types::EphemerisResponseData]
    # @!attribute version
    #   <p>Version information for a contact.</p>
    #   @return [Types::ContactVersion]
    class DescribeContactVersionResponse < Struct.new(
      nil,
      :contact_id,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :pre_pass_start_time,
      :post_pass_end_time,
      :ground_station,
      :contact_status,
      :error_message,
      :maximum_elevation,
      :tags,
      :region,
      :dataflow_list,
      :visibility_start_time,
      :visibility_end_time,
      :tracking_overrides,
      :ephemeris,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    class DescribeEphemerisRequest < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    # @!attribute satellite_id
    #   <p>The AWS Ground Station satellite ID associated with ephemeris.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ephemeris.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    #   @return [Integer]
    # @!attribute creation_time
    #   <p>The time the ephemeris was uploaded in UTC.</p>
    #   @return [Time]
    # @!attribute enabled
    #   <p>Whether or not the ephemeris is enabled.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>A name that you can use to identify the ephemeris.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to an ephemeris.</p>
    #   @return [Hash<String, String>]
    # @!attribute supplied_data
    #   <p>Supplied ephemeris data.</p>
    #   @return [Types::EphemerisTypeDescription]
    # @!attribute invalid_reason
    #   <p>Reason that an ephemeris failed validation. Appears only when the status is <code>INVALID</code>.</p>
    #   @return [String]
    # @!attribute error_reasons
    #   <p>Detailed error information for ephemerides with <code>INVALID</code> status.</p> <p>Provides specific error codes and messages to help diagnose validation failures.</p>
    #   @return [Array<Types::EphemerisErrorReason>]
    class DescribeEphemerisResponse < Struct.new(
      nil,
      :ephemeris_id,
      :satellite_id,
      :status,
      :priority,
      :creation_time,
      :enabled,
      :name,
      :tags,
      :supplied_data,
      :invalid_reason,
      :error_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dataflow details for the destination side.</p>
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_details
    #   <p>Additional details for a <code>Config</code>, if type is dataflow endpoint or antenna demod decode.</p>
    #   @return [Types::ConfigDetails]
    # @!attribute dataflow_destination_region
    #   <p>Region of a dataflow destination.</p>
    #   @return [String]
    class Destination < Struct.new(
      nil,
      :config_type,
      :config_id,
      :config_details,
      :dataflow_destination_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Data for agent discovery.</p>
    # @!attribute public_ip_addresses
    #   <p>List of public IP addresses to associate with agent.</p>
    #   @return [Array<String>]
    # @!attribute private_ip_addresses
    #   <p>List of private IP addresses to associate with agent.</p>
    #   @return [Array<String>]
    # @!attribute capability_arns
    #   <p>List of capabilities to associate with agent.</p>
    #   @return [Array<String>]
    class DiscoveryData < Struct.new(
      nil,
      :public_ip_addresses,
      :private_ip_addresses,
      :capability_arns,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Definition for a downlink agent endpoint</p>
    # @!attribute name
    #   <p>Downlink dataflow endpoint name</p>
    #   @return [String]
    # @!attribute dataflow_details
    #   <p>Dataflow details for the downlink endpoint</p>
    #   @return [Types::DownlinkDataflowDetails]
    class DownlinkAwsGroundStationAgentEndpoint < Struct.new(
      nil,
      :name,
      :dataflow_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for a downlink agent endpoint</p>
    # @!attribute name
    #   <p>Downlink dataflow endpoint name</p>
    #   @return [String]
    # @!attribute dataflow_details
    #   <p>Dataflow details for the downlink endpoint</p>
    #   @return [Types::DownlinkDataflowDetails]
    # @!attribute agent_status
    #   <p>Status of the agent associated with the downlink dataflow endpoint</p>
    #   @return [String]
    # @!attribute audit_results
    #   <p>Health audit results for the downlink dataflow endpoint</p>
    #   @return [String]
    class DownlinkAwsGroundStationAgentEndpointDetails < Struct.new(
      nil,
      :name,
      :dataflow_details,
      :agent_status,
      :audit_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection details for Ground Station to Agent and Agent to customer</p>
    # @!attribute agent_ip_and_port_address
    #   <p>Ingress address of AgentEndpoint with a port range and an optional mtu.</p>
    #   @return [Types::RangedConnectionDetails]
    # @!attribute egress_address_and_port
    #   <p>Egress address of AgentEndpoint with an optional mtu.</p>
    #   @return [Types::ConnectionDetails]
    class DownlinkConnectionDetails < Struct.new(
      nil,
      :agent_ip_and_port_address,
      :egress_address_and_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dataflow details for a downlink endpoint</p>
    # @!attribute agent_connection_details
    #   <p>Downlink connection details for customer to Agent and Agent to Ground Station</p>
    #   @return [Types::DownlinkConnectionDetails]
    class DownlinkDataflowDetails < Struct.new(
      :agent_connection_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentConnectionDetails < DownlinkDataflowDetails; end
      class Unknown < DownlinkDataflowDetails; end
    end

    # <p>Object that represents EIRP.</p>
    # @!attribute value
    #   <p>Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.</p>
    #   @return [Float]
    # @!attribute units
    #   <p>Units of an EIRP.</p>
    #   @return [String]
    class Eirp < Struct.new(
      nil,
      :value,
      :units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Elevation angle of the satellite in the sky during a contact.</p>
    # @!attribute value
    #   <p>Elevation angle value.</p>
    #   @return [Float]
    # @!attribute unit
    #   <p>Elevation angle units.</p>
    #   @return [String]
    class Elevation < Struct.new(
      nil,
      :value,
      :unit,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the endpoint details.</p>
    # @!attribute security_details
    #   <p>Endpoint security details including a list of subnets, a list of security groups and a role to connect streams to instances.</p>
    #   @return [Types::SecurityDetails]
    # @!attribute endpoint
    #   <p>A dataflow endpoint.</p>
    #   @return [Types::DataflowEndpoint]
    # @!attribute aws_ground_station_agent_endpoint
    #   <p>An agent endpoint.</p>
    #   @return [Types::AwsGroundStationAgentEndpoint]
    # @!attribute uplink_aws_ground_station_agent_endpoint
    #   <p>Definition for an uplink agent endpoint</p>
    #   @return [Types::UplinkAwsGroundStationAgentEndpointDetails]
    # @!attribute downlink_aws_ground_station_agent_endpoint
    #   <p>Definition for a downlink agent endpoint</p>
    #   @return [Types::DownlinkAwsGroundStationAgentEndpointDetails]
    # @!attribute health_status
    #   <p>A dataflow endpoint health status. This field is ignored when calling <code>CreateDataflowEndpointGroup</code>.</p>
    #   @return [String]
    # @!attribute health_reasons
    #   <p>Health reasons for a dataflow endpoint. This field is ignored when calling <code>CreateDataflowEndpointGroup</code>.</p>
    #   @return [Array<String>]
    class EndpointDetails < Struct.new(
      nil,
      :security_details,
      :endpoint,
      :aws_ground_station_agent_endpoint,
      :uplink_aws_ground_station_agent_endpoint,
      :downlink_aws_ground_station_agent_endpoint,
      :health_status,
      :health_reasons,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Ephemeris data.</p>
    # @!attribute tle
    #   <p>Two-line element set (TLE) ephemeris.</p> <p> For more detail about providing Two-line element sets to AWS Ground Station, see the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-tle-ephemeris-data.html">TLE section</a> of the AWS Ground Station user guide. </p>
    #   @return [Types::TLEEphemeris]
    # @!attribute oem
    #   <p>Ephemeris data in Orbit Ephemeris Message (OEM) format.</p> <p> AWS Ground Station processes OEM ephemerides according to the <a href="https://ccsds.org/Pubs/502x0b3e1.pdf">CCSDS standard</a> with some extra restrictions. OEM files should be in KVN format. For more detail about the OEM format that AWS Ground Station supports, see <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-oem-ephemeris-data.html#oem-ephemeris-format">OEM ephemeris format</a> in the AWS Ground Station user guide. </p>
    #   @return [Types::OEMEphemeris]
    # @!attribute az_el
    #   <p>Azimuth elevation ephemeris data.</p> <p> Use this ephemeris type to provide pointing angles directly, rather than satellite orbital elements. Use this when you need precise antenna pointing but have imprecise or unknown satellite trajectory information. </p> <p> The azimuth elevation data specifies the antenna pointing direction at specific times relative to a ground station location. AWS Ground Station uses 4th order Lagrange interpolation to compute pointing angles between the provided data points. </p> <p> AWS Ground Station automatically filters interpolated pointing angles, including only those that are above the site mask elevation of the specified ground station. </p> <p> For more detail about providing azimuth elevation ephemerides to AWS Ground Station, see the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-azimuth-elevation-ephemeris-data.html">azimuth elevation ephemeris section</a> of the AWS Ground Station User Guide. </p>
    #   @return [Types::AzElEphemeris]
    class EphemerisData < Struct.new(
      :tle,
      :oem,
      :az_el,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tle < EphemerisData; end
      class Oem < EphemerisData; end
      class AzEl < EphemerisData; end
      class Unknown < EphemerisData; end
    end

    # <p>Description of ephemeris.</p>
    # @!attribute source_s3_object
    #   <p>Source Amazon S3 object used for the ephemeris.</p>
    #   @return [Types::S3Object]
    # @!attribute ephemeris_data
    #   <p>Supplied ephemeris data.</p>
    #   @return [String]
    class EphemerisDescription < Struct.new(
      nil,
      :source_s3_object,
      :ephemeris_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Detailed error information for ephemeris validation failures.</p> <p>Provides an error code and descriptive message to help diagnose and resolve validation issues.</p>
    # @!attribute error_code
    #   <p>The error code identifying the type of validation failure.</p> <p>See the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/troubleshooting-invalid-ephemerides.html">Troubleshooting Invalid Ephemerides guide</a> for error code details.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>A human-readable message describing the validation failure.</p> <p>Provides specific details about what failed and may include suggestions for remediation.</p>
    #   @return [String]
    class EphemerisErrorReason < Struct.new(
      nil,
      :error_code,
      :error_message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter for selecting contacts that use a specific ephemeris".</p>
    # @!attribute az_el
    #   <p>Filter for <a>AzElEphemeris</a>.</p>
    #   @return [Types::AzElEphemerisFilter]
    class EphemerisFilter < Struct.new(
      :az_el,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AzEl < EphemerisFilter; end
      class Unknown < EphemerisFilter; end
    end

    # <p>Ephemeris item.</p>
    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    # @!attribute ephemeris_type
    #   <p>The type of ephemeris.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ephemeris.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    #   @return [Integer]
    # @!attribute enabled
    #   <p>Whether or not the ephemeris is enabled.</p>
    #   @return [Boolean]
    # @!attribute creation_time
    #   <p>The time the ephemeris was uploaded in UTC.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A name that you can use to identify the ephemeris.</p>
    #   @return [String]
    # @!attribute source_s3_object
    #   <p>Source Amazon S3 object used for the ephemeris.</p>
    #   @return [Types::S3Object]
    class EphemerisItem < Struct.new(
      nil,
      :ephemeris_id,
      :ephemeris_type,
      :status,
      :priority,
      :enabled,
      :creation_time,
      :name,
      :source_s3_object,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Metadata describing a particular ephemeris.</p>
    # @!attribute source
    #   <p>The <code>EphemerisSource</code> that generated a given ephemeris.</p>
    #   @return [String]
    # @!attribute ephemeris_id
    #   <p>UUID of a customer-provided ephemeris.</p> <p>This field is not populated for default ephemerides from Space Track.</p>
    #   @return [String]
    # @!attribute epoch
    #   <p>The epoch of a default, ephemeris from Space Track in UTC.</p> <p>This field is not populated for customer-provided ephemerides.</p>
    #   @return [Time]
    # @!attribute name
    #   <p>A name string associated with the ephemeris. Used as a human-readable identifier for the ephemeris.</p> <p>A name is only returned for customer-provider ephemerides that have a name associated.</p>
    #   @return [String]
    class EphemerisMetaData < Struct.new(
      nil,
      :source,
      :ephemeris_id,
      :epoch,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Ephemeris data for a contact.</p>
    # @!attribute ephemeris_id
    #   <p>Unique identifier of the ephemeris. Appears only for custom ephemerides.</p>
    #   @return [String]
    # @!attribute ephemeris_type
    #   <p>Type of ephemeris.</p>
    #   @return [String]
    class EphemerisResponseData < Struct.new(
      nil,
      :ephemeris_id,
      :ephemeris_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p/>
    # @!attribute tle
    #   <p>Description of ephemeris.</p>
    #   @return [Types::EphemerisDescription]
    # @!attribute oem
    #   <p>Description of ephemeris.</p>
    #   @return [Types::EphemerisDescription]
    # @!attribute az_el
    #   <p>Description of ephemeris.</p>
    #   @return [Types::EphemerisDescription]
    class EphemerisTypeDescription < Struct.new(
      :tle,
      :oem,
      :az_el,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tle < EphemerisTypeDescription; end
      class Oem < EphemerisTypeDescription; end
      class AzEl < EphemerisTypeDescription; end
      class Unknown < EphemerisTypeDescription; end
    end

    # <p>Object that describes the frequency.</p>
    # @!attribute value
    #   <p>Frequency value. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>
    #   @return [Float]
    # @!attribute units
    #   <p>Frequency units.</p>
    #   @return [String]
    class Frequency < Struct.new(
      nil,
      :value,
      :units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that describes the frequency bandwidth. </p>
    # @!attribute value
    #   <p>Frequency bandwidth value. AWS Ground Station currently has the following bandwidth limitations:</p> <ul> <li> <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p> </li> <li> <p>For <code>AntennaDownlinkconfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> <li> <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> </ul>
    #   @return [Float]
    # @!attribute units
    #   <p>Frequency bandwidth units.</p>
    #   @return [String]
    class FrequencyBandwidth < Struct.new(
      nil,
      :value,
      :units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of agent to get configuration information for.</p>
    #   @return [String]
    class GetAgentConfigurationRequest < Struct.new(
      nil,
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of agent.</p>
    #   @return [String]
    # @!attribute tasking_document
    #   <p>Tasking document for agent.</p>
    #   @return [String]
    class GetAgentConfigurationResponse < Struct.new(
      nil,
      :agent_id,
      :tasking_document,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of agent requesting the response URL.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>GUID of the agent task for which the response URL is being requested.</p>
    #   @return [String]
    class GetAgentTaskResponseUrlRequest < Struct.new(
      nil,
      :agent_id,
      :task_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of the agent.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>GUID of the agent task.</p>
    #   @return [String]
    # @!attribute presigned_log_url
    #   <p>Presigned URL for uploading agent task response logs.</p>
    #   @return [String]
    class GetAgentTaskResponseUrlResponse < Struct.new(
      nil,
      :agent_id,
      :task_id,
      :presigned_log_url,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>GetConfig</code> operation. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    class GetConfigRequest < Struct.new(
      nil,
      :config_id,
      :config_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>GetConfig</code> operation. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code> </p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_data
    #   <p>Data elements in a <code>Config</code>.</p>
    #   @return [Types::ConfigTypeData]
    # @!attribute tags
    #   <p>Tags assigned to a <code>Config</code>.</p>
    #   @return [Hash<String, String>]
    class GetConfigResponse < Struct.new(
      nil,
      :config_id,
      :config_arn,
      :name,
      :config_type,
      :config_data,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>GetDataflowEndpointGroup</code> operation. </p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    class GetDataflowEndpointGroupRequest < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>GetDataflowEndpointGroup</code> operation. </p>
    # @!attribute dataflow_endpoint_group_id
    #   <p>UUID of a dataflow endpoint group.</p>
    #   @return [String]
    # @!attribute dataflow_endpoint_group_arn
    #   <p>ARN of a dataflow endpoint group.</p>
    #   @return [String]
    # @!attribute endpoints_details
    #   <p>Details of a dataflow endpoint.</p>
    #   @return [Array<Types::EndpointDetails>]
    # @!attribute tags
    #   <p>Tags assigned to a dataflow endpoint group.</p>
    #   @return [Hash<String, String>]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time, in seconds, before a contact starts that the Ground Station Dataflow Endpoint Group will be in a <code>PREPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>PREPASS</code> state.</p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time, in seconds, after a contact ends that the Ground Station Dataflow Endpoint Group will be in a <code>POSTPASS</code> state. A Ground Station Dataflow Endpoint Group State Change event will be emitted when the Dataflow Endpoint Group enters and exits the <code>POSTPASS</code> state.</p>
    #   @return [Integer]
    class GetDataflowEndpointGroupResponse < Struct.new(
      nil,
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn,
      :endpoints_details,
      :tags,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>GetMinuteUsage</code> operation.</p>
    # @!attribute month
    #   <p>The month being requested, with a value of 1-12.</p>
    #   @return [Integer]
    # @!attribute year
    #   <p>The year being requested, in the format of YYYY.</p>
    #   @return [Integer]
    class GetMinuteUsageRequest < Struct.new(
      nil,
      :month,
      :year,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>GetMinuteUsage</code> operation.</p>
    # @!attribute is_reserved_minutes_customer
    #   <p>Returns whether or not an account has signed up for the reserved minutes pricing plan, specific to the month being requested.</p>
    #   @return [Boolean]
    # @!attribute total_reserved_minute_allocation
    #   <p>Total number of reserved minutes allocated, specific to the month being requested.</p>
    #   @return [Integer]
    # @!attribute upcoming_minutes_scheduled
    #   <p>Upcoming minutes scheduled for an account, specific to the month being requested.</p>
    #   @return [Integer]
    # @!attribute total_scheduled_minutes
    #   <p>Total scheduled minutes for an account, specific to the month being requested.</p>
    #   @return [Integer]
    # @!attribute estimated_minutes_remaining
    #   <p>Estimated number of minutes remaining for an account, specific to the month being requested.</p>
    #   @return [Integer]
    class GetMinuteUsageResponse < Struct.new(
      nil,
      :is_reserved_minutes_customer,
      :total_reserved_minute_allocation,
      :upcoming_minutes_scheduled,
      :total_scheduled_minutes,
      :estimated_minutes_remaining,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>GetMissionProfile</code> operation. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    class GetMissionProfileRequest < Struct.new(
      nil,
      :mission_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>GetMissionProfile</code> operation. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of a mission profile.</p>
    #   @return [String]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time prior to contact start you'd like to receive a CloudWatch event indicating an upcoming pass.</p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a CloudWatch event indicating the pass has finished.</p>
    #   @return [Integer]
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you'd like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #   @return [Integer]
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code> Config</code> and a <i>to</i> <code>Config</code>.</p>
    #   @return [Array<Array<String>>]
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #   @return [String]
    # @!attribute telemetry_sink_config_arn
    #   <p>ARN of a telemetry sink <code>Config</code>.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to a mission profile.</p>
    #   @return [Hash<String, String>]
    # @!attribute streams_kms_key
    #   <p>KMS key to use for encrypting streams.</p>
    #   @return [Types::KmsKey]
    # @!attribute streams_kms_role
    #   <p>Role to use for encrypting streams with KMS key.</p>
    #   @return [String]
    class GetMissionProfileResponse < Struct.new(
      nil,
      :mission_profile_id,
      :mission_profile_arn,
      :name,
      :region,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :telemetry_sink_config_arn,
      :tags,
      :streams_kms_key,
      :streams_kms_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>GetSatellite</code> operation.</p>
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute norad_satellite_id
    #   <p>NORAD satellite ID number.</p>
    #   @return [Integer]
    # @!attribute ground_stations
    #   <p>A list of ground stations to which the satellite is on-boarded.</p>
    #   @return [Array<String>]
    # @!attribute current_ephemeris
    #   <p>The current ephemeris being used to compute the trajectory of the satellite.</p>
    #   @return [Types::EphemerisMetaData]
    class GetSatelliteOutput < Struct.new(
      nil,
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      :current_ephemeris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:norad_satellite_id] = 0 unless options.key?(:norad_satellite_id)
        super
      end
    end

    # <p>Input for the <code>GetSatellite</code> operation.</p>
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #   @return [String]
    class GetSatelliteRequest < Struct.new(
      nil,
      :satellite_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the ground station data.</p>
    # @!attribute ground_station_id
    #   <p>ID of a ground station.</p>
    #   @return [String]
    # @!attribute ground_station_name
    #   <p>Name of a ground station.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Ground station Region.</p>
    #   @return [String]
    class GroundStationData < Struct.new(
      nil,
      :ground_station_id,
      :ground_station_name,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Item in a list of ground station reservations.</p>
    # @!attribute reservation_type
    #   <p>Type of a ground station reservation.</p>
    #   @return [String]
    # @!attribute ground_station_id
    #   <p>ID of a ground station.</p>
    #   @return [String]
    # @!attribute antenna_name
    #   <p>Name of an antenna.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a ground station reservation in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a ground station reservation in UTC.</p>
    #   @return [Time]
    # @!attribute reservation_details
    #   <p>Details of a ground station reservation.</p>
    #   @return [Types::ReservationDetails]
    class GroundStationReservationListItem < Struct.new(
      nil,
      :reservation_type,
      :ground_station_id,
      :antenna_name,
      :start_time,
      :end_time,
      :reservation_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Time range specified using ISO 8601 format timestamps.</p>
    # @!attribute start_time
    #   <p>Start time in ISO 8601 format in Coordinated Universal Time (UTC).</p> <p>Example: <code>2026-11-15T10:28:48.000Z</code> </p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time in ISO 8601 format in Coordinated Universal Time (UTC).</p> <p>Example: <code>2024-01-15T12:00:00.000Z</code> </p>
    #   @return [Time]
    class ISO8601TimeRange < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An integer range that has a minimum and maximum value.</p>
    # @!attribute minimum
    #   <p>A minimum value.</p>
    #   @return [Integer]
    # @!attribute maximum
    #   <p>A maximum value.</p>
    #   @return [Integer]
    class IntegerRange < Struct.new(
      nil,
      :minimum,
      :maximum,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameters are not valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute parameter_name
    #   <p>Name of the invalid parameter.</p>
    #   @return [String]
    class InvalidParameterException < Struct.new(
      nil,
      :message,
      :parameter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information for telemetry delivery to Kinesis Data Streams.</p>
    # @!attribute kinesis_role_arn
    #   <p>ARN of the IAM Role used by AWS Ground Station to deliver telemetry.</p>
    #   @return [String]
    # @!attribute kinesis_data_stream_arn
    #   <p>ARN of the Kinesis Data Stream to deliver telemetry to.</p>
    #   @return [String]
    class KinesisDataStreamData < Struct.new(
      nil,
      :kinesis_role_arn,
      :kinesis_data_stream_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>KMS key info.</p>
    # @!attribute kms_key_arn
    #   <p>KMS Key Arn.</p>
    #   @return [String]
    # @!attribute kms_alias_arn
    #   <p>KMS Alias Arn.</p>
    #   @return [String]
    # @!attribute kms_alias_name
    #   <p>KMS Alias Name.</p>
    #   @return [String]
    class KmsKey < Struct.new(
      :kms_key_arn,
      :kms_alias_arn,
      :kms_alias_name,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KmsKeyArn < KmsKey; end
      class KmsAliasArn < KmsKey; end
      class KmsAliasName < KmsKey; end
      class Unknown < KmsKey; end
    end

    # @!attribute ground_station_id
    #   <p>ID of a ground station.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of antennas returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListAntennas</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListAntennasRequest < Struct.new(
      nil,
      :ground_station_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute antenna_list
    #   <p>List of antennas.</p>
    #   @return [Array<Types::AntennaListItem>]
    # @!attribute next_token
    #   <p>Next token to be used in a subsequent <code>ListAntennas</code> call to retrieve the next page of results.</p>
    #   @return [String]
    class ListAntennasResponse < Struct.new(
      nil,
      :antenna_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListConfigs</code> operation. </p>
    # @!attribute max_results
    #   <p>Maximum number of <code>Configs</code> returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListConfigsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListConfigs</code> operation. </p>
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListConfigs</code> call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute config_list
    #   <p>List of <code>Config</code> items.</p>
    #   @return [Array<Types::ConfigListItem>]
    class ListConfigsResponse < Struct.new(
      nil,
      :next_token,
      :config_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of contact versions returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListContactVersions</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListContactVersionsRequest < Struct.new(
      nil,
      :contact_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Next token to be used in a subsequent <code>ListContactVersions</code> call to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute contact_versions_list
    #   <p>List of contact versions.</p>
    #   @return [Array<Types::ContactVersion>]
    class ListContactVersionsResponse < Struct.new(
      nil,
      :next_token,
      :contact_versions_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListContacts</code> operation. </p>
    # @!attribute max_results
    #   <p>Maximum number of contacts returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute status_list
    #   <p>Status of a contact reservation.</p>
    #   @return [Array<String>]
    # @!attribute start_time
    #   <p>Start time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute ephemeris
    #   <p>Filter for selecting contacts that use a specific ephemeris".</p>
    #   @return [Types::EphemerisFilter]
    class ListContactsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status_list,
      :start_time,
      :end_time,
      :ground_station,
      :satellite_arn,
      :mission_profile_arn,
      :ephemeris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListContacts</code> operation. </p>
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListContacts</code> call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute contact_list
    #   <p>List of contacts.</p>
    #   @return [Array<Types::ContactData>]
    class ListContactsResponse < Struct.new(
      nil,
      :next_token,
      :contact_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListDataflowEndpointGroups</code> operation. </p>
    # @!attribute max_results
    #   <p>Maximum number of dataflow endpoint groups returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListDataflowEndpointGroupsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListDataflowEndpointGroups</code> operation. </p>
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListDataflowEndpointGroups</code> call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute dataflow_endpoint_group_list
    #   <p>A list of dataflow endpoint groups.</p>
    #   @return [Array<Types::DataflowEndpointListItem>]
    class ListDataflowEndpointGroupsResponse < Struct.new(
      nil,
      :next_token,
      :dataflow_endpoint_group_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute satellite_id
    #   <p>The AWS Ground Station satellite ID to list ephemeris for.</p>
    #   @return [String]
    # @!attribute ephemeris_type
    #   <p>Filter ephemerides by type. If not specified, all ephemeris types will be returned.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>The start time for the list operation in UTC. Returns ephemerides with expiration times within your specified time range.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>The end time for the list operation in UTC. Returns ephemerides with expiration times within your specified time range.</p>
    #   @return [Time]
    # @!attribute status_list
    #   <p>The list of ephemeris status to return.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of ephemerides to return.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    class ListEphemeridesRequest < Struct.new(
      nil,
      :satellite_id,
      :ephemeris_type,
      :start_time,
      :end_time,
      :status_list,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Pagination token.</p>
    #   @return [String]
    # @!attribute ephemerides
    #   <p>List of ephemerides.</p>
    #   @return [Array<Types::EphemerisItem>]
    class ListEphemeridesResponse < Struct.new(
      nil,
      :next_token,
      :ephemerides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ground_station_id
    #   <p>ID of a ground station.</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of the reservation window in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of the reservation window in UTC.</p>
    #   @return [Time]
    # @!attribute reservation_types
    #   <p>Types of reservations to filter by.</p>
    #   @return [Array<String>]
    # @!attribute max_results
    #   <p>Maximum number of ground station reservations returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListGroundStationReservations</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListGroundStationReservationsRequest < Struct.new(
      nil,
      :ground_station_id,
      :start_time,
      :end_time,
      :reservation_types,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute reservation_list
    #   <p>List of ground station reservations.</p>
    #   @return [Array<Types::GroundStationReservationListItem>]
    # @!attribute next_token
    #   <p>Next token to be used in a subsequent <code>ListGroundStationReservations</code> call to retrieve the next page of results.</p>
    #   @return [String]
    class ListGroundStationReservationsResponse < Struct.new(
      nil,
      :reservation_list,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListGroundStations</code> operation.</p>
    # @!attribute satellite_id
    #   <p>Satellite ID to retrieve on-boarded ground stations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>Maximum number of ground stations returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    #   @return [String]
    class ListGroundStationsInput < Struct.new(
      nil,
      :satellite_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListGroundStations</code> operation.</p>
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of ground stations.</p>
    #   @return [String]
    # @!attribute ground_station_list
    #   <p>List of ground stations.</p>
    #   @return [Array<Types::GroundStationData>]
    class ListGroundStationsResponse < Struct.new(
      nil,
      :next_token,
      :ground_station_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListMissionProfiles</code> operation. </p>
    # @!attribute max_results
    #   <p>Maximum number of mission profiles returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token returned in the request of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    #   @return [String]
    class ListMissionProfilesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListMissionProfiles</code> operation. </p>
    # @!attribute next_token
    #   <p>Next token returned in the response of a previous <code>ListMissionProfiles</code> call. Used to get the next page of results.</p>
    #   @return [String]
    # @!attribute mission_profile_list
    #   <p>List of mission profiles.</p>
    #   @return [Array<Types::MissionProfileListItem>]
    class ListMissionProfilesResponse < Struct.new(
      nil,
      :next_token,
      :mission_profile_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListSatellites</code> operation.</p>
    # @!attribute max_results
    #   <p>Maximum number of satellites returned.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    #   @return [String]
    class ListSatellitesRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListSatellites</code> operation.</p>
    # @!attribute next_token
    #   <p>Next token that can be supplied in the next call to get the next page of satellites.</p>
    #   @return [String]
    # @!attribute satellites
    #   <p>List of satellites.</p>
    #   @return [Array<Types::SatelliteListItem>]
    class ListSatellitesResponse < Struct.new(
      nil,
      :next_token,
      :satellites,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ListTagsForResource</code> operation.</p>
    # @!attribute resource_arn
    #   <p>ARN of a resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>ListTagsForResource</code> operation.</p>
    # @!attribute tags
    #   <p>Tags assigned to a resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a maintenance reservation.</p>
    # @!attribute maintenance_type
    #   <p>Type of maintenance.</p>
    #   @return [String]
    class MaintenanceReservationDetails < Struct.new(
      nil,
      :maintenance_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Item in a list of mission profiles.</p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute region
    #   <p>Region of a mission profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #   @return [String]
    class MissionProfileListItem < Struct.new(
      nil,
      :mission_profile_id,
      :mission_profile_arn,
      :region,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Ephemeris data in Orbit Ephemeris Message (OEM) format.</p> <p> AWS Ground Station processes OEM ephemerides according to the <a href="https://ccsds.org/Pubs/502x0b3e1.pdf">CCSDS standard</a> with some extra restrictions. OEM files should be in KVN format. For more detail about the OEM format that AWS Ground Station supports, see <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-oem-ephemeris-data.html#oem-ephemeris-format">OEM ephemeris format</a> in the AWS Ground Station user guide. </p>
    # @!attribute s3_object
    #   <p>The Amazon S3 object that contains the ephemeris data.</p>
    #   @return [Types::S3Object]
    # @!attribute oem_data
    #   <p>OEM data that you provide directly instead of using an Amazon S3 object.</p>
    #   @return [String]
    class OEMEphemeris < Struct.new(
      nil,
      :s3_object,
      :oem_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program track settings for <a>OEMEphemeris</a>.</p>
    # @!attribute ephemeris_id
    #   <p>Unique identifier of the OEM ephemeris.</p>
    #   @return [String]
    class OemProgramTrackSettings < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program track settings for an antenna during a contact.</p>
    # @!attribute az_el
    #   <p>Program track settings for <a>AzElEphemeris</a>.</p>
    #   @return [Types::AzElProgramTrackSettings]
    # @!attribute oem
    #   <p>Program track settings for <a>OEMEphemeris</a>.</p>
    #   @return [Types::OemProgramTrackSettings]
    # @!attribute tle
    #   <p>Program track settings for <a>TLEEphemeris</a>.</p>
    #   @return [Types::TleProgramTrackSettings]
    class ProgramTrackSettings < Struct.new(
      :az_el,
      :oem,
      :tle,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AzEl < ProgramTrackSettings; end
      class Oem < ProgramTrackSettings; end
      class Tle < ProgramTrackSettings; end
      class Unknown < ProgramTrackSettings; end
    end

    # <p>Ingress address of AgentEndpoint with a port range and an optional mtu.</p>
    # @!attribute socket_address
    #   <p>A ranged socket address.</p>
    #   @return [Types::RangedSocketAddress]
    # @!attribute mtu
    #   <p>Maximum transmission unit (MTU) size in bytes of a dataflow endpoint.</p>
    #   @return [Integer]
    class RangedConnectionDetails < Struct.new(
      nil,
      :socket_address,
      :mtu,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A socket address with a port range.</p>
    # @!attribute name
    #   <p>IPv4 socket address.</p>
    #   @return [String]
    # @!attribute port_range
    #   <p>Port range of a socket address.</p>
    #   @return [Types::IntegerRange]
    class RangedSocketAddress < Struct.new(
      nil,
      :name,
      :port_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute discovery_data
    #   <p>Data for associating an agent with the capabilities it is managing.</p>
    #   @return [Types::DiscoveryData]
    # @!attribute agent_details
    #   <p>Detailed information about the agent being registered.</p>
    #   @return [Types::AgentDetails]
    # @!attribute tags
    #   <p>Tags assigned to an <code>Agent</code>.</p>
    #   @return [Hash<String, String>]
    class RegisterAgentRequest < Struct.new(
      nil,
      :discovery_data,
      :agent_details,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of registered agent.</p>
    #   @return [String]
    class RegisterAgentResponse < Struct.new(
      nil,
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details of a ground station reservation.</p>
    # @!attribute maintenance
    #   <p>Details of a maintenance reservation.</p>
    #   @return [Types::MaintenanceReservationDetails]
    # @!attribute contact
    #   <p>Details of a contact reservation.</p>
    #   @return [Types::ContactReservationDetails]
    class ReservationDetails < Struct.new(
      :maintenance,
      :contact,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Maintenance < ReservationDetails; end
      class Contact < ReservationDetails; end
      class Unknown < ReservationDetails; end
    end

    # <p>Response containing the ID of a contact. </p>
    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of a contact.</p>
    #   @return [Integer]
    class ReserveContactOutput < Struct.new(
      nil,
      :contact_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>ReserveContact</code> operation. </p>
    # @!attribute mission_profile_arn
    #   <p>ARN of a mission profile.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite</p>
    #   @return [String]
    # @!attribute start_time
    #   <p>Start time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>End time of a contact in UTC.</p>
    #   @return [Time]
    # @!attribute ground_station
    #   <p>Name of a ground station.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to a contact.</p>
    #   @return [Hash<String, String>]
    # @!attribute tracking_overrides
    #   <p>Tracking configuration overrides for the contact.</p>
    #   @return [Types::TrackingOverrides]
    class ReserveContactRequest < Struct.new(
      nil,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :ground_station,
      :tags,
      :tracking_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource is in use by non-terminal state contacts and cannot be modified or deleted.</p>
    # @!attribute message
    #   @return [String]
    class ResourceInUseException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Account limits for this resource have been exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute parameter_name
    #   <p>Name of the parameter that exceeded the resource limit.</p>
    #   @return [String]
    class ResourceLimitExceededException < Struct.new(
      nil,
      :message,
      :parameter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Resource was not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object stored in Amazon S3 containing ephemeris data.</p>
    # @!attribute bucket
    #   <p>An Amazon S3 Bucket name.</p>
    #   @return [String]
    # @!attribute key
    #   <p>An Amazon S3 key for the ephemeris.</p>
    #   @return [String]
    # @!attribute version
    #   <p>For versioned Amazon S3 objects, the version to use for the ephemeris.</p>
    #   @return [String]
    class S3Object < Struct.new(
      nil,
      :bucket,
      :key,
      :version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an S3 recording <code>Config</code>.</p>
    # @!attribute bucket_arn
    #   <p>ARN of the bucket to record to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>ARN of the role Ground Station assumes to write data to the bucket.</p>
    #   @return [String]
    # @!attribute prefix
    #   <p>S3 Key prefix to prefice data files.</p>
    #   @return [String]
    class S3RecordingConfig < Struct.new(
      nil,
      :bucket_arn,
      :role_arn,
      :prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an S3 recording <code>Config</code> used in a contact.</p>
    # @!attribute bucket_arn
    #   <p>ARN of the bucket used.</p>
    #   @return [String]
    # @!attribute key_template
    #   <p>Key template used for the S3 Recording Configuration</p>
    #   @return [String]
    class S3RecordingDetails < Struct.new(
      nil,
      :bucket_arn,
      :key_template,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Item in a list of satellites.</p>
    # @!attribute satellite_id
    #   <p>UUID of a satellite.</p>
    #   @return [String]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    # @!attribute norad_satellite_id
    #   <p>NORAD satellite ID number.</p>
    #   @return [Integer]
    # @!attribute ground_stations
    #   <p>A list of ground stations to which the satellite is on-boarded.</p>
    #   @return [Array<String>]
    # @!attribute current_ephemeris
    #   <p>The current ephemeris being used to compute the trajectory of the satellite.</p>
    #   @return [Types::EphemerisMetaData]
    class SatelliteListItem < Struct.new(
      nil,
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      :current_ephemeris,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:norad_satellite_id] = 0 unless options.key?(:norad_satellite_id)
        super
      end
    end

    # <p>Information about endpoints.</p>
    # @!attribute subnet_ids
    #   <p>A list of subnets where AWS Ground Station places elastic network interfaces to send streams to your instances.</p>
    #   @return [Array<String>]
    # @!attribute security_group_ids
    #   <p>The security groups to attach to the elastic network interfaces.</p>
    #   @return [Array<String>]
    # @!attribute role_arn
    #   <p>ARN to a role needed for connecting streams to your instances. </p>
    #   @return [String]
    class SecurityDetails < Struct.new(
      nil,
      :subnet_ids,
      :security_group_ids,
      :role_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute parameter_name
    #   <p>Parameter name that caused the exception</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :parameter_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the socket address.</p>
    # @!attribute name
    #   <p>Name of a socket address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>Port of a socket address.</p>
    #   @return [Integer]
    class SocketAddress < Struct.new(
      nil,
      :name,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dataflow details for the source side.</p>
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_details
    #   <p>Additional details for a <code>Config</code>, if type is <code>dataflow-endpoint</code> or <code>antenna-downlink-demod-decode</code> </p>
    #   @return [Types::ConfigDetails]
    # @!attribute dataflow_source_region
    #   <p>Region of a dataflow source.</p>
    #   @return [String]
    class Source < Struct.new(
      nil,
      :config_type,
      :config_id,
      :config_details,
      :dataflow_source_region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that describes a spectral <code>Config</code>.</p>
    # @!attribute center_frequency
    #   <p>Center frequency of a spectral <code>Config</code>. Valid values are between 2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.</p>
    #   @return [Types::Frequency]
    # @!attribute bandwidth
    #   <p>Bandwidth of a spectral <code>Config</code>. AWS Ground Station currently has the following bandwidth limitations:</p> <ul> <li> <p>For <code>AntennaDownlinkDemodDecodeconfig</code>, valid values are between 125 kHz to 650 MHz.</p> </li> <li> <p>For <code>AntennaDownlinkconfig</code> valid values are between 10 kHz to 54 MHz.</p> </li> <li> <p>For <code>AntennaUplinkConfig</code>, valid values are between 10 kHz to 54 MHz.</p> </li> </ul>
    #   @return [Types::FrequencyBandwidth]
    # @!attribute polarization
    #   <p>Polarization of a spectral <code>Config</code>. Capturing both <code>"RIGHT_HAND"</code> and <code>"LEFT_HAND"</code> polarization requires two separate configs.</p>
    #   @return [String]
    class SpectrumConfig < Struct.new(
      nil,
      :center_frequency,
      :bandwidth,
      :polarization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Two-line element set (TLE) data.</p>
    # @!attribute tle_line1
    #   <p>First line of two-line element set (TLE) data.</p>
    #   @return [String]
    # @!attribute tle_line2
    #   <p>Second line of two-line element set (TLE) data.</p>
    #   @return [String]
    # @!attribute valid_time_range
    #   <p>The valid time range for the TLE. Time ranges must be continuous without gaps or overlaps.</p>
    #   @return [Types::TimeRange]
    class TLEData < Struct.new(
      nil,
      :tle_line1,
      :tle_line2,
      :valid_time_range,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Two-line element set (TLE) ephemeris.</p> <p> For more detail about providing Two-line element sets to AWS Ground Station, see the <a href="https://docs.aws.amazon.com/ground-station/latest/ug/providing-tle-ephemeris-data.html">TLE section</a> of the AWS Ground Station user guide. </p>
    # @!attribute s3_object
    #   <p>The Amazon S3 object that contains the ephemeris data.</p>
    #   @return [Types::S3Object]
    # @!attribute tle_data
    #   <p>TLE data that you provide directly instead of using an Amazon S3 object.</p>
    #   @return [Array<Types::TLEData>]
    class TLEEphemeris < Struct.new(
      nil,
      :s3_object,
      :tle_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>TagResource</code> operation.</p>
    # @!attribute resource_arn
    #   <p>ARN of a resource tag.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Tags assigned to a resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>TagResource</code> operation.</p>
    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a telemetry sink <code>Config</code>.</p>
    # @!attribute telemetry_sink_type
    #   <p>The type of telemetry sink.</p>
    #   @return [String]
    # @!attribute telemetry_sink_data
    #   <p>Information about the telemetry sink specified by the <code>telemetrySinkType</code>.</p>
    #   @return [Types::TelemetrySinkData]
    class TelemetrySinkConfig < Struct.new(
      nil,
      :telemetry_sink_type,
      :telemetry_sink_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a telemetry sink.</p>
    # @!attribute kinesis_data_stream_data
    #   <p>Information about a telemetry sink of type <code>KINESIS_DATA_STREAM</code>.</p>
    #   @return [Types::KinesisDataStreamData]
    class TelemetrySinkData < Struct.new(
      :kinesis_data_stream_data,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class KinesisDataStreamData < TelemetrySinkData; end
      class Unknown < TelemetrySinkData; end
    end

    # <p>Time-tagged azimuth elevation pointing data.</p> <p>Specifies the antenna pointing direction at a specific time offset from the segment's reference epoch.</p>
    # @!attribute dt
    #   <p>Time offset in atomic seconds from the segment's reference epoch.</p> <p>All <code>dt</code> values within a segment must be in ascending order with no duplicates.</p> <p> <code>dt</code> values may be:</p> <ul> <li> <p>negative</p> </li> <li> <p>expressed as fractions of a second</p> </li> <li> <p>expressed in scientific notation</p> </li> </ul>
    #   @return [Float]
    # @!attribute az
    #   <p>Azimuth angle at the specified time.</p> <p>Valid ranges by unit:</p> <ul> <li> <p> <code>DEGREE_ANGLE</code>: -180 to 360 degrees, measured clockwise from true north</p> </li> <li> <p> <code>RADIAN</code>: -π to 2π radians, measured clockwise from true north</p> </li> </ul>
    #   @return [Float]
    # @!attribute el
    #   <p>Elevation angle at the specified time.</p> <p>Valid ranges by unit:</p> <ul> <li> <p> <code>DEGREE_ANGLE</code>: -90 to 90 degrees, where 0 is the horizon, 90 is zenith, and negative values are below the horizon </p> </li> <li> <p> <code>RADIAN</code>: -π/2 to π/2 radians, where 0 is the horizon, π/2 is zenith, and negative values are below the horizon </p> </li> </ul>
    #   @return [Float]
    class TimeAzEl < Struct.new(
      nil,
      :dt,
      :az,
      :el,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A time range with a start and end time.</p>
    # @!attribute start_time
    #   <p>Unix epoch timestamp in UTC at which the time range starts.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Unix epoch timestamp in UTC at which the time range ends.</p>
    #   @return [Time]
    class TimeRange < Struct.new(
      nil,
      :start_time,
      :end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Program track settings for <a>TLEEphemeris</a>.</p>
    # @!attribute ephemeris_id
    #   <p>Unique identifier of the TLE ephemeris.</p>
    #   @return [String]
    class TleProgramTrackSettings < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Object that determines whether tracking should be used during a contact executed with this <code>Config</code> in the mission profile.</p>
    # @!attribute autotrack
    #   <p>Current setting for autotrack.</p>
    #   @return [String]
    class TrackingConfig < Struct.new(
      nil,
      :autotrack,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Overrides the default tracking configuration on an antenna during a contact.</p>
    # @!attribute program_track_settings
    #   <p>Program track settings to override for antenna tracking during the contact.</p>
    #   @return [Types::ProgramTrackSettings]
    class TrackingOverrides < Struct.new(
      nil,
      :program_track_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>UntagResource</code> operation.</p>
    # @!attribute resource_arn
    #   <p>ARN of a resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>Keys of a resource tag.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Output for the <code>UntagResource</code> operation.</p>
    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of agent to update.</p>
    #   @return [String]
    # @!attribute task_id
    #   <p>GUID of agent task.</p>
    #   @return [String]
    # @!attribute aggregate_status
    #   <p>Aggregate status for agent.</p>
    #   @return [Types::AggregateStatus]
    # @!attribute component_statuses
    #   <p>List of component statuses for agent.</p>
    #   @return [Array<Types::ComponentStatusData>]
    class UpdateAgentStatusRequest < Struct.new(
      nil,
      :agent_id,
      :task_id,
      :aggregate_status,
      :component_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute agent_id
    #   <p>UUID of updated agent.</p>
    #   @return [String]
    class UpdateAgentStatusResponse < Struct.new(
      nil,
      :agent_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ARN, ID, and type of a <code>Config</code>. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_arn
    #   <p>ARN of a <code>Config</code>.</p>
    #   @return [String]
    class UpdateConfigOutput < Struct.new(
      nil,
      :config_id,
      :config_type,
      :config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>UpdateConfig</code> operation. </p>
    # @!attribute config_id
    #   <p>UUID of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_type
    #   <p>Type of a <code>Config</code>.</p>
    #   @return [String]
    # @!attribute config_data
    #   <p>Parameters of a <code>Config</code>.</p>
    #   @return [Types::ConfigTypeData]
    class UpdateConfigRequest < Struct.new(
      nil,
      :config_id,
      :name,
      :config_type,
      :config_data,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A client token is a unique, case-sensitive string of up to 64 ASCII characters. It is generated by the client to ensure idempotent operations, allowing safe retries without unintended side effects.</p>
    #   @return [String]
    # @!attribute tracking_overrides
    #   <p>Overrides the default tracking configuration on an antenna during a contact.</p>
    #   @return [Types::TrackingOverrides]
    # @!attribute satellite_arn
    #   <p>ARN of a satellite.</p>
    #   @return [String]
    class UpdateContactRequest < Struct.new(
      nil,
      :contact_id,
      :client_token,
      :tracking_overrides,
      :satellite_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute contact_id
    #   <p>UUID of a contact.</p>
    #   @return [String]
    # @!attribute version_id
    #   <p>Version ID of a contact.</p>
    #   @return [Integer]
    class UpdateContactResponse < Struct.new(
      nil,
      :contact_id,
      :version_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    class UpdateEphemerisOutput < Struct.new(
      nil,
      :ephemeris_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute ephemeris_id
    #   <p>The AWS Ground Station ephemeris ID.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Enable or disable the ephemeris. Changing this value doesn't require re-validation.</p>
    #   @return [Boolean]
    # @!attribute name
    #   <p>A name that you can use to identify the ephemeris.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>A priority score that determines which ephemeris to use when multiple ephemerides overlap.</p> <p>Higher numbers take precedence. The default is 1. Must be 1 or greater.</p>
    #   @return [Integer]
    class UpdateEphemerisRequest < Struct.new(
      nil,
      :ephemeris_id,
      :enabled,
      :name,
      :priority,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Response containing the ID of a mission profile. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    class UpdateMissionProfileOutput < Struct.new(
      nil,
      :mission_profile_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Input for the <code>UpdateMissionProfile</code> operation. </p>
    # @!attribute mission_profile_id
    #   <p>UUID of a mission profile.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of a mission profile.</p>
    #   @return [String]
    # @!attribute contact_pre_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    #   @return [Integer]
    # @!attribute contact_post_pass_duration_seconds
    #   <p>Amount of time after a contact ends that you'd like to receive a Ground Station Contact State Change event indicating the pass has finished.</p>
    #   @return [Integer]
    # @!attribute minimum_viable_contact_duration_seconds
    #   <p>Smallest amount of time in seconds that you'd like to see for an available contact. AWS Ground Station will not present you with contacts shorter than this duration.</p>
    #   @return [Integer]
    # @!attribute dataflow_edges
    #   <p>A list of lists of ARNs. Each list of ARNs is an edge, with a <i>from</i> <code> Config</code> and a <i>to</i> <code>Config</code>.</p>
    #   @return [Array<Array<String>>]
    # @!attribute tracking_config_arn
    #   <p>ARN of a tracking <code>Config</code>.</p>
    #   @return [String]
    # @!attribute telemetry_sink_config_arn
    #   <p>ARN of a telemetry sink <code>Config</code>.</p>
    #   @return [String]
    # @!attribute streams_kms_key
    #   <p>KMS key to use for encrypting streams.</p>
    #   @return [Types::KmsKey]
    # @!attribute streams_kms_role
    #   <p>Role to use for encrypting streams with KMS key.</p>
    #   @return [String]
    class UpdateMissionProfileRequest < Struct.new(
      nil,
      :mission_profile_id,
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :telemetry_sink_config_arn,
      :streams_kms_key,
      :streams_kms_role,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Definition for an uplink agent endpoint</p>
    # @!attribute name
    #   <p>Uplink dataflow endpoint name</p>
    #   @return [String]
    # @!attribute dataflow_details
    #   <p>Dataflow details for the uplink endpoint</p>
    #   @return [Types::UplinkDataflowDetails]
    class UplinkAwsGroundStationAgentEndpoint < Struct.new(
      nil,
      :name,
      :dataflow_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details for an uplink agent endpoint</p>
    # @!attribute name
    #   <p>Uplink dataflow endpoint name</p>
    #   @return [String]
    # @!attribute dataflow_details
    #   <p>Dataflow details for the uplink endpoint</p>
    #   @return [Types::UplinkDataflowDetails]
    # @!attribute agent_status
    #   <p>Status of the agent associated with the uplink dataflow endpoint</p>
    #   @return [String]
    # @!attribute audit_results
    #   <p>Health audit results for the uplink dataflow endpoint</p>
    #   @return [String]
    class UplinkAwsGroundStationAgentEndpointDetails < Struct.new(
      nil,
      :name,
      :dataflow_details,
      :agent_status,
      :audit_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Connection details for customer to Agent and Agent to Ground Station</p>
    # @!attribute ingress_address_and_port
    #   <p>Egress address of AgentEndpoint with an optional mtu.</p>
    #   @return [Types::ConnectionDetails]
    # @!attribute agent_ip_and_port_address
    #   <p>Ingress address of AgentEndpoint with a port range and an optional mtu.</p>
    #   @return [Types::RangedConnectionDetails]
    class UplinkConnectionDetails < Struct.new(
      nil,
      :ingress_address_and_port,
      :agent_ip_and_port_address,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Dataflow details for an uplink endpoint</p>
    # @!attribute agent_connection_details
    #   <p>Uplink connection details for customer to Agent and Agent to Ground Station</p>
    #   @return [Types::UplinkConnectionDetails]
    class UplinkDataflowDetails < Struct.new(
      :agent_connection_details,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class AgentConnectionDetails < UplinkDataflowDetails; end
      class Unknown < UplinkDataflowDetails; end
    end

    # <p>Information about an uplink echo <code>Config</code>.</p> <p>Parameters from the <code>AntennaUplinkConfig</code>, corresponding to the specified <code> AntennaUplinkConfigArn</code>, are used when this <code>UplinkEchoConfig</code> is used in a contact.</p>
    # @!attribute enabled
    #   <p>Whether or not an uplink <code>Config</code> is enabled.</p>
    #   @return [Boolean]
    # @!attribute antenna_uplink_config_arn
    #   <p>ARN of an uplink <code>Config</code>.</p>
    #   @return [String]
    class UplinkEchoConfig < Struct.new(
      nil,
      :enabled,
      :antenna_uplink_config_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the uplink spectral <code>Config</code>.</p>
    # @!attribute center_frequency
    #   <p>Center frequency of an uplink spectral <code>Config</code>. Valid values are between 2025 to 2120 MHz.</p>
    #   @return [Types::Frequency]
    # @!attribute polarization
    #   <p>Polarization of an uplink spectral <code>Config</code>. Capturing both <code>"RIGHT_HAND"</code> and <code>"LEFT_HAND"</code> polarization requires two separate configs.</p>
    #   @return [String]
    class UplinkSpectrumConfig < Struct.new(
      nil,
      :center_frequency,
      :polarization,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
