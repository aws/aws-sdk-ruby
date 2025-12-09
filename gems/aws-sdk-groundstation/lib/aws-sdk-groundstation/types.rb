# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GroundStation
  module Types

    # Detailed information about the agent.
    #
    # @!attribute [rw] agent_version
    #   Current agent version.
    #   @return [String]
    #
    # @!attribute [rw] instance_id
    #   ID of EC2 instance agent is running on.
    #   @return [String]
    #
    # @!attribute [rw] instance_type
    #   Type of EC2 instance agent is running on.
    #   @return [String]
    #
    # @!attribute [rw] reserved_cpu_cores
    #   <note markdown="1"> This field should not be used. Use agentCpuCores
    #   instead.
    #
    #    </note>
    #
    #    List of CPU cores reserved for processes other than the agent
    #   running on the EC2 instance.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] agent_cpu_cores
    #   List of CPU cores reserved for the agent.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] component_versions
    #   List of versions being used by agent components.
    #   @return [Array<Types::ComponentVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AgentDetails AWS API Documentation
    #
    class AgentDetails < Struct.new(
      :agent_version,
      :instance_id,
      :instance_type,
      :reserved_cpu_cores,
      :agent_cpu_cores,
      :component_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregate status of Agent components.
    #
    # @!attribute [rw] status
    #   Aggregate status.
    #   @return [String]
    #
    # @!attribute [rw] signature_map
    #   Sparse map of failure signatures.
    #   @return [Hash<String,Boolean>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AggregateStatus AWS API Documentation
    #
    class AggregateStatus < Struct.new(
      :status,
      :signature_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an antenna demod decode `Config` used in a contact.
    #
    # @!attribute [rw] output_node
    #   Name of an antenna demod decode output node used in a contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaDemodDecodeDetails AWS API Documentation
    #
    class AntennaDemodDecodeDetails < Struct.new(
      :output_node)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how AWS Ground Station should configure an antenna
    # for downlink during a contact.
    #
    # @!attribute [rw] spectrum_config
    #   Object that describes a spectral `Config`.
    #   @return [Types::SpectrumConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaDownlinkConfig AWS API Documentation
    #
    class AntennaDownlinkConfig < Struct.new(
      :spectrum_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how AWS Ground Station should conﬁgure an antenna
    # for downlink demod decode during a contact.
    #
    # @!attribute [rw] spectrum_config
    #   Information about the spectral `Config`.
    #   @return [Types::SpectrumConfig]
    #
    # @!attribute [rw] demodulation_config
    #   Information about the demodulation `Config`.
    #   @return [Types::DemodulationConfig]
    #
    # @!attribute [rw] decode_config
    #   Information about the decode `Config`.
    #   @return [Types::DecodeConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaDownlinkDemodDecodeConfig AWS API Documentation
    #
    class AntennaDownlinkDemodDecodeConfig < Struct.new(
      :spectrum_config,
      :demodulation_config,
      :decode_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the uplink `Config` of an antenna.
    #
    # @!attribute [rw] transmit_disabled
    #   Whether or not uplink transmit is disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] spectrum_config
    #   Information about the uplink spectral `Config`.
    #   @return [Types::UplinkSpectrumConfig]
    #
    # @!attribute [rw] target_eirp
    #   EIRP of the target.
    #   @return [Types::Eirp]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaUplinkConfig AWS API Documentation
    #
    class AntennaUplinkConfig < Struct.new(
      :transmit_disabled,
      :spectrum_config,
      :target_eirp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about AwsGroundStationAgentEndpoint.
    #
    # @!attribute [rw] name
    #   Name string associated with AgentEndpoint. Used as a human-readable
    #   identifier for AgentEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] egress_address
    #   The egress address of AgentEndpoint.
    #   @return [Types::ConnectionDetails]
    #
    # @!attribute [rw] ingress_address
    #   The ingress address of AgentEndpoint.
    #   @return [Types::RangedConnectionDetails]
    #
    # @!attribute [rw] agent_status
    #   The status of AgentEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] audit_results
    #   The results of the audit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AwsGroundStationAgentEndpoint AWS API Documentation
    #
    class AwsGroundStationAgentEndpoint < Struct.new(
      :name,
      :egress_address,
      :ingress_address,
      :agent_status,
      :audit_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Azimuth elevation ephemeris data.
    #
    # Use this ephemeris type to provide pointing angles directly, rather
    # than satellite orbital elements. Use this when you need precise
    # antenna pointing but have imprecise or unknown satellite trajectory
    # information.
    #
    # The azimuth elevation data specifies the antenna pointing direction at
    # specific times relative to a ground station location. AWS Ground
    # Station uses 4th order Lagrange interpolation to compute pointing
    # angles between the provided data points.
    #
    # AWS Ground Station automatically filters interpolated pointing angles,
    # including only those that are above the site mask elevation of the
    # specified ground station.
    #
    # For more detail about providing azimuth elevation ephemerides to AWS
    # Ground Station, see the [azimuth elevation ephemeris section][1] of
    # the AWS Ground Station User Guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-azimuth-elevation-ephemeris-data.html
    #
    # @!attribute [rw] ground_station
    #   The ground station name for which you're providing azimuth
    #   elevation data.
    #
    #   This ephemeris is specific to this ground station and can't be used
    #   at other locations.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Azimuth elevation segment data.
    #
    #   You can provide data inline in the request or through an Amazon S3
    #   object reference.
    #   @return [Types::AzElSegmentsData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElEphemeris AWS API Documentation
    #
    class AzElEphemeris < Struct.new(
      :ground_station,
      :data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter for selecting contacts that use a specific AzElEphemeris.
    #
    # @!attribute [rw] id
    #   Unique identifier of the azimuth elevation ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElEphemerisFilter AWS API Documentation
    #
    class AzElEphemerisFilter < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Program track settings for AzElEphemeris.
    #
    # @!attribute [rw] ephemeris_id
    #   Unique identifier of the azimuth elevation ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElProgramTrackSettings AWS API Documentation
    #
    class AzElProgramTrackSettings < Struct.new(
      :ephemeris_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time segment containing azimuth elevation pointing data.
    #
    # Each segment defines a continuous time period with pointing angle data
    # points. AWS Ground Station uses 4th order Lagrange interpolation
    # between the provided points, so each segment must contain at least
    # five data points.
    #
    # @!attribute [rw] reference_epoch
    #   The reference time for this segment in ISO 8601 format in
    #   Coordinated Universal Time (UTC).
    #
    #   All time values within the segment's AzElSegment$azElList are
    #   specified as offsets in atomic seconds from this reference epoch.
    #
    #   Example: `2024-01-15T12:00:00.000Z`
    #   @return [Time]
    #
    # @!attribute [rw] valid_time_range
    #   The valid time range for this segment.
    #
    #   Specifies the start and end timestamps in ISO 8601 format in
    #   Coordinated Universal Time (UTC). The segment's pointing data must
    #   cover this entire time range.
    #   @return [Types::ISO8601TimeRange]
    #
    # @!attribute [rw] az_el_list
    #   List of time-tagged azimuth elevation data points.
    #
    #   Must contain at least five points to support 4th order Lagrange
    #   interpolation. Points must be in chronological order with no
    #   duplicates.
    #   @return [Array<Types::TimeAzEl>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElSegment AWS API Documentation
    #
    class AzElSegment < Struct.new(
      :reference_epoch,
      :valid_time_range,
      :az_el_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Azimuth elevation segment collection.
    #
    # Contains five or more time-ordered segments that define antenna
    # pointing angles over the ephemeris validity period.
    #
    # @!attribute [rw] angle_unit
    #   The unit of measure for azimuth and elevation angles. All angles in
    #   all segments must use the same unit.
    #   @return [String]
    #
    # @!attribute [rw] az_el_segment_list
    #   List of azimuth elevation segments.
    #
    #   Must contain between 1 and 100 segments. Segments must be in
    #   chronological order with no overlaps.
    #   @return [Array<Types::AzElSegment>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElSegments AWS API Documentation
    #
    class AzElSegments < Struct.new(
      :angle_unit,
      :az_el_segment_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Container for azimuth elevation segment data.
    #
    # Specify either AzElSegmentsData$s3Object to reference data in Amazon
    # S3, or AzElSegmentsData$azElData to provide data inline.
    #
    # @note AzElSegmentsData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 object containing azimuth elevation segment data.
    #
    #   The Amazon S3 object must contain JSON-formatted azimuth elevation
    #   data matching the AzElSegments structure.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] az_el_data
    #   Azimuth elevation segment data provided directly in the request.
    #
    #   Use this option for smaller datasets or when Amazon S3 access is not
    #   available.
    #   @return [Types::AzElSegments]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AzElSegmentsData AWS API Documentation
    #
    class AzElSegmentsData < Struct.new(
      :s3_object,
      :az_el_data,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3Object < AzElSegmentsData; end
      class AzElData < AzElSegmentsData; end
      class Unknown < AzElSegmentsData; end
    end

    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CancelContactRequest AWS API Documentation
    #
    class CancelContactRequest < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data on the status of agent components.
    #
    # @!attribute [rw] component_type
    #   The Component type.
    #   @return [String]
    #
    # @!attribute [rw] capability_arn
    #   Capability ARN of the component.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Component status.
    #   @return [String]
    #
    # @!attribute [rw] bytes_sent
    #   Bytes sent by the component.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_received
    #   Bytes received by the component.
    #   @return [Integer]
    #
    # @!attribute [rw] packets_dropped
    #   Packets dropped by component.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_id
    #   Dataflow UUID associated with the component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ComponentStatusData AWS API Documentation
    #
    class ComponentStatusData < Struct.new(
      :component_type,
      :capability_arn,
      :status,
      :bytes_sent,
      :bytes_received,
      :packets_dropped,
      :dataflow_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Version information for agent components.
    #
    # @!attribute [rw] component_type
    #   Component type.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   List of versions.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ComponentVersion AWS API Documentation
    #
    class ComponentVersion < Struct.new(
      :component_type,
      :versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for certain `Config` object types in a contact.
    #
    # @note ConfigDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfigDetails corresponding to the set member.
    #
    # @!attribute [rw] endpoint_details
    #   Information about the endpoint details.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] antenna_demod_decode_details
    #   Details for antenna demod decode `Config` in a contact.
    #   @return [Types::AntennaDemodDecodeDetails]
    #
    # @!attribute [rw] s3_recording_details
    #   Details for an S3 recording `Config` in a contact.
    #   @return [Types::S3RecordingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigDetails AWS API Documentation
    #
    class ConfigDetails < Struct.new(
      :endpoint_details,
      :antenna_demod_decode_details,
      :s3_recording_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class EndpointDetails < ConfigDetails; end
      class AntennaDemodDecodeDetails < ConfigDetails; end
      class S3RecordingDetails < ConfigDetails; end
      class Unknown < ConfigDetails; end
    end

    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_arn
    #   ARN of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigIdResponse AWS API Documentation
    #
    class ConfigIdResponse < Struct.new(
      :config_id,
      :config_type,
      :config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An item in a list of `Config` objects.
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_arn
    #   ARN of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigListItem AWS API Documentation
    #
    class ConfigListItem < Struct.new(
      :config_id,
      :config_type,
      :config_arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing the parameters of a `Config`.
    #
    # See the subtype definitions for what each type of `Config` contains.
    #
    # @note ConfigTypeData is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ConfigTypeData is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ConfigTypeData corresponding to the set member.
    #
    # @!attribute [rw] antenna_downlink_config
    #   Information about how AWS Ground Station should configure an antenna
    #   for downlink during a contact.
    #   @return [Types::AntennaDownlinkConfig]
    #
    # @!attribute [rw] tracking_config
    #   Object that determines whether tracking should be used during a
    #   contact executed with this `Config` in the mission profile.
    #   @return [Types::TrackingConfig]
    #
    # @!attribute [rw] dataflow_endpoint_config
    #   Information about the dataflow endpoint `Config`.
    #   @return [Types::DataflowEndpointConfig]
    #
    # @!attribute [rw] antenna_downlink_demod_decode_config
    #   Information about how AWS Ground Station should conﬁgure an antenna
    #   for downlink demod decode during a contact.
    #   @return [Types::AntennaDownlinkDemodDecodeConfig]
    #
    # @!attribute [rw] antenna_uplink_config
    #   Information about how AWS Ground Station should conﬁgure an antenna
    #   for uplink during a contact.
    #   @return [Types::AntennaUplinkConfig]
    #
    # @!attribute [rw] uplink_echo_config
    #   Information about an uplink echo `Config`.
    #
    #   Parameters from the `AntennaUplinkConfig`, corresponding to the
    #   specified `AntennaUplinkConfigArn`, are used when this
    #   `UplinkEchoConfig` is used in a contact.
    #   @return [Types::UplinkEchoConfig]
    #
    # @!attribute [rw] s3_recording_config
    #   Information about an S3 recording `Config`.
    #   @return [Types::S3RecordingConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigTypeData AWS API Documentation
    #
    class ConfigTypeData < Struct.new(
      :antenna_downlink_config,
      :tracking_config,
      :dataflow_endpoint_config,
      :antenna_downlink_demod_decode_config,
      :antenna_uplink_config,
      :uplink_echo_config,
      :s3_recording_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AntennaDownlinkConfig < ConfigTypeData; end
      class TrackingConfig < ConfigTypeData; end
      class DataflowEndpointConfig < ConfigTypeData; end
      class AntennaDownlinkDemodDecodeConfig < ConfigTypeData; end
      class AntennaUplinkConfig < ConfigTypeData; end
      class UplinkEchoConfig < ConfigTypeData; end
      class S3RecordingConfig < ConfigTypeData; end
      class Unknown < ConfigTypeData; end
    end

    # Egress address of AgentEndpoint with an optional mtu.
    #
    # @!attribute [rw] socket_address
    #   A socket address.
    #   @return [Types::SocketAddress]
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConnectionDetails AWS API Documentation
    #
    class ConnectionDetails < Struct.new(
      :socket_address,
      :mtu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data describing a contact.
    #
    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] pre_pass_start_time
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Time]
    #
    # @!attribute [rw] post_pass_end_time
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] contact_status
    #   Status of a contact.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message of a contact.
    #   @return [String]
    #
    # @!attribute [rw] maximum_elevation
    #   Maximum elevation angle of a contact.
    #   @return [Types::Elevation]
    #
    # @!attribute [rw] region
    #   Region of a contact.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] visibility_start_time
    #   Projected time in UTC your satellite will rise above the [receive
    #   mask][1]. This time is based on the satellite's current active
    #   ephemeris for future contacts and the ephemeris that was active
    #   during contact execution for completed contacts. *This field is not
    #   present for contacts with a `SCHEDULING` or `SCHEDULED` status.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html
    #   @return [Time]
    #
    # @!attribute [rw] visibility_end_time
    #   Projected time in UTC your satellite will set below the [receive
    #   mask][1]. This time is based on the satellite's current active
    #   ephemeris for future contacts and the ephemeris that was active
    #   during contact execution for completed contacts. *This field is not
    #   present for contacts with a `SCHEDULING` or `SCHEDULED` status.*
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html
    #   @return [Time]
    #
    # @!attribute [rw] ephemeris
    #   The ephemeris that determines antenna pointing for the contact.
    #   @return [Types::EphemerisResponseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ContactData AWS API Documentation
    #
    class ContactData < Struct.new(
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
      :ephemeris)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ContactIdResponse AWS API Documentation
    #
    class ContactIdResponse < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_data
    #   Parameters of a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a `Config`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateConfigRequest AWS API Documentation
    #
    class CreateConfigRequest < Struct.new(
      :name,
      :config_data,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_details
    #   Endpoint details of each endpoint in the dataflow endpoint group.
    #   All dataflow endpoints within a single dataflow endpoint group must
    #   be of the same type. You cannot mix [ AWS Ground Station Agent
    #   endpoints][1] with [Dataflow endpoints][2] in the same group. If
    #   your use case requires both types of endpoints, you must create
    #   separate dataflow endpoint groups for each type.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/APIReference/API_AwsGroundStationAgentEndpoint.html
    #   [2]: https://docs.aws.amazon.com/ground-station/latest/APIReference/API_DataflowEndpoint.html
    #   @return [Array<Types::EndpointDetails>]
    #
    # @!attribute [rw] tags
    #   Tags of a dataflow endpoint group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time, in seconds, before a contact starts that the Ground
    #   Station Dataflow Endpoint Group will be in a `PREPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `PREPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time, in seconds, after a contact ends that the Ground
    #   Station Dataflow Endpoint Group will be in a `POSTPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `POSTPASS` state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateDataflowEndpointGroupRequest AWS API Documentation
    #
    class CreateDataflowEndpointGroupRequest < Struct.new(
      :endpoint_details,
      :tags,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoints
    #   Dataflow endpoint group's endpoint definitions
    #   @return [Array<Types::CreateEndpointDetails>]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time, in seconds, before a contact starts that the Ground
    #   Station Dataflow Endpoint Group will be in a `PREPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `PREPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time, in seconds, after a contact ends that the Ground
    #   Station Dataflow Endpoint Group will be in a `POSTPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `POSTPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   Tags of a V2 dataflow endpoint group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateDataflowEndpointGroupV2Request AWS API Documentation
    #
    class CreateDataflowEndpointGroupV2Request < Struct.new(
      :endpoints,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataflow_endpoint_group_id
    #   Dataflow endpoint group ID
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateDataflowEndpointGroupV2Response AWS API Documentation
    #
    class CreateDataflowEndpointGroupV2Response < Struct.new(
      :dataflow_endpoint_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Endpoint definition used for creating a dataflow endpoint
    #
    # @note CreateEndpointDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] uplink_aws_ground_station_agent_endpoint
    #   Definition for an uplink agent endpoint
    #   @return [Types::UplinkAwsGroundStationAgentEndpoint]
    #
    # @!attribute [rw] downlink_aws_ground_station_agent_endpoint
    #   Definition for a downlink agent endpoint
    #   @return [Types::DownlinkAwsGroundStationAgentEndpoint]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateEndpointDetails AWS API Documentation
    #
    class CreateEndpointDetails < Struct.new(
      :uplink_aws_ground_station_agent_endpoint,
      :downlink_aws_ground_station_agent_endpoint,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class UplinkAwsGroundStationAgentEndpoint < CreateEndpointDetails; end
      class DownlinkAwsGroundStationAgentEndpoint < CreateEndpointDetails; end
      class Unknown < CreateEndpointDetails; end
    end

    # @!attribute [rw] satellite_id
    #   The satellite ID that associates this ephemeris with a satellite in
    #   AWS Ground Station.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Set to `true` to enable the ephemeris after validation. Set to
    #   `false` to keep it disabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] priority
    #   A priority score that determines which ephemeris to use when
    #   multiple ephemerides overlap.
    #
    #   Higher numbers take precedence. The default is 1. Must be 1 or
    #   greater.
    #   @return [Integer]
    #
    # @!attribute [rw] expiration_time
    #   An overall expiration time for the ephemeris in UTC, after which it
    #   will become `EXPIRED`.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name that you can use to identify the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of the KMS key to use for encrypting the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris
    #   Ephemeris data.
    #   @return [Types::EphemerisData]
    #
    # @!attribute [rw] tags
    #   Tags assigned to an ephemeris.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateEphemerisRequest AWS API Documentation
    #
    class CreateEphemerisRequest < Struct.new(
      :satellite_id,
      :enabled,
      :priority,
      :expiration_time,
      :name,
      :kms_key_arn,
      :ephemeris,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Name of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time prior to contact start you’d like to receive a Ground
    #   Station Contact State Change event indicating an upcoming pass.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   Ground Station Contact State Change event indicating the pass has
    #   finished.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a mission profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] streams_kms_key
    #   KMS key to use for encrypting streams.
    #   @return [Types::KmsKey]
    #
    # @!attribute [rw] streams_kms_role
    #   Role to use for encrypting streams with KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateMissionProfileRequest AWS API Documentation
    #
    class CreateMissionProfileRequest < Struct.new(
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :tags,
      :streams_kms_key,
      :streams_kms_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataflow edge used in a contact.
    #
    # @!attribute [rw] source
    #   Dataflow details for the source side.
    #   @return [Types::Source]
    #
    # @!attribute [rw] destination
    #   Dataflow details for the destination side.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] error_message
    #   Error message for a dataflow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowDetail AWS API Documentation
    #
    class DataflowDetail < Struct.new(
      :source,
      :destination,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataflow endpoint.
    #
    # @!attribute [rw] name
    #   Name of a dataflow endpoint.
    #   @return [String]
    #
    # @!attribute [rw] address
    #   Socket address of a dataflow endpoint.
    #   @return [Types::SocketAddress]
    #
    # @!attribute [rw] status
    #   Status of a dataflow endpoint.
    #   @return [String]
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpoint AWS API Documentation
    #
    class DataflowEndpoint < Struct.new(
      :name,
      :address,
      :status,
      :mtu)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the dataflow endpoint `Config`.
    #
    # @!attribute [rw] dataflow_endpoint_name
    #   Name of a dataflow endpoint.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_region
    #   Region of a dataflow endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpointConfig AWS API Documentation
    #
    class DataflowEndpointConfig < Struct.new(
      :dataflow_endpoint_name,
      :dataflow_endpoint_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpointGroupIdResponse AWS API Documentation
    #
    class DataflowEndpointGroupIdResponse < Struct.new(
      :dataflow_endpoint_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Item in a list of `DataflowEndpoint` groups.
    #
    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_group_arn
    #   ARN of a dataflow endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpointListItem AWS API Documentation
    #
    class DataflowEndpointListItem < Struct.new(
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the decode `Config`.
    #
    # @!attribute [rw] unvalidated_json
    #   Unvalidated JSON of a decode `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DecodeConfig AWS API Documentation
    #
    class DecodeConfig < Struct.new(
      :unvalidated_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteConfigRequest AWS API Documentation
    #
    class DeleteConfigRequest < Struct.new(
      :config_id,
      :config_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteDataflowEndpointGroupRequest AWS API Documentation
    #
    class DeleteDataflowEndpointGroupRequest < Struct.new(
      :dataflow_endpoint_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteEphemerisRequest AWS API Documentation
    #
    class DeleteEphemerisRequest < Struct.new(
      :ephemeris_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DeleteMissionProfileRequest AWS API Documentation
    #
    class DeleteMissionProfileRequest < Struct.new(
      :mission_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the demodulation `Config`.
    #
    # @!attribute [rw] unvalidated_json
    #   Unvalidated JSON of a demodulation `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DemodulationConfig AWS API Documentation
    #
    class DemodulationConfig < Struct.new(
      :unvalidated_json)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dependency encountered an error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DependencyException AWS API Documentation
    #
    class DependencyException < Struct.new(
      :message,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeContactRequest AWS API Documentation
    #
    class DescribeContactRequest < Struct.new(
      :contact_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] pre_pass_start_time
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Time]
    #
    # @!attribute [rw] post_pass_end_time
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Ground station for a contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_status
    #   Status of a contact.
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   Error message for a contact.
    #   @return [String]
    #
    # @!attribute [rw] maximum_elevation
    #   Maximum elevation angle of a contact.
    #   @return [Types::Elevation]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] region
    #   Region of a contact.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_list
    #   List describing source and destination details for each dataflow
    #   edge.
    #   @return [Array<Types::DataflowDetail>]
    #
    # @!attribute [rw] visibility_start_time
    #   Projected time in UTC your satellite will rise above the [receive
    #   mask][1]. This time is based on the satellite's current active
    #   ephemeris for future contacts and the ephemeris that was active
    #   during contact execution for completed contacts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html
    #   @return [Time]
    #
    # @!attribute [rw] visibility_end_time
    #   Projected time in UTC your satellite will set below the [receive
    #   mask][1]. This time is based on the satellite's current active
    #   ephemeris for future contacts and the ephemeris that was active
    #   during contact execution for completed contacts.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/site-masks.html
    #   @return [Time]
    #
    # @!attribute [rw] tracking_overrides
    #   Tracking configuration overrides specified when the contact was
    #   reserved.
    #   @return [Types::TrackingOverrides]
    #
    # @!attribute [rw] ephemeris
    #   The ephemeris that determines antenna pointing directions for the
    #   contact.
    #   @return [Types::EphemerisResponseData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeContactResponse AWS API Documentation
    #
    class DescribeContactResponse < Struct.new(
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
      :ephemeris)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeEphemerisRequest AWS API Documentation
    #
    class DescribeEphemerisRequest < Struct.new(
      :ephemeris_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] satellite_id
    #   The AWS Ground Station satellite ID associated with ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   A priority score that determines which ephemeris to use when
    #   multiple ephemerides overlap.
    #
    #   Higher numbers take precedence. The default is 1. Must be 1 or
    #   greater.
    #   @return [Integer]
    #
    # @!attribute [rw] creation_time
    #   The time the ephemeris was uploaded in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Whether or not the ephemeris is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A name that you can use to identify the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to an ephemeris.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] supplied_data
    #   Supplied ephemeris data.
    #   @return [Types::EphemerisTypeDescription]
    #
    # @!attribute [rw] invalid_reason
    #   Reason that an ephemeris failed validation. Appears only when the
    #   status is `INVALID`.
    #   @return [String]
    #
    # @!attribute [rw] error_reasons
    #   Detailed error information for ephemerides with `INVALID` status.
    #
    #   Provides specific error codes and messages to help diagnose
    #   validation failures.
    #   @return [Array<Types::EphemerisErrorReason>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeEphemerisResponse AWS API Documentation
    #
    class DescribeEphemerisResponse < Struct.new(
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
      :error_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataflow details for the destination side.
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_details
    #   Additional details for a `Config`, if type is dataflow endpoint or
    #   antenna demod decode.
    #   @return [Types::ConfigDetails]
    #
    # @!attribute [rw] dataflow_destination_region
    #   Region of a dataflow destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :config_type,
      :config_id,
      :config_details,
      :dataflow_destination_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data for agent discovery.
    #
    # @!attribute [rw] public_ip_addresses
    #   List of public IP addresses to associate with agent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_ip_addresses
    #   List of private IP addresses to associate with agent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] capability_arns
    #   List of capabilities to associate with agent.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DiscoveryData AWS API Documentation
    #
    class DiscoveryData < Struct.new(
      :public_ip_addresses,
      :private_ip_addresses,
      :capability_arns)
      SENSITIVE = []
      include Aws::Structure
    end

    # Definition for a downlink agent endpoint
    #
    # @!attribute [rw] name
    #   Downlink dataflow endpoint name
    #   @return [String]
    #
    # @!attribute [rw] dataflow_details
    #   Dataflow details for the downlink endpoint
    #   @return [Types::DownlinkDataflowDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DownlinkAwsGroundStationAgentEndpoint AWS API Documentation
    #
    class DownlinkAwsGroundStationAgentEndpoint < Struct.new(
      :name,
      :dataflow_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for a downlink agent endpoint
    #
    # @!attribute [rw] name
    #   Downlink dataflow endpoint name
    #   @return [String]
    #
    # @!attribute [rw] dataflow_details
    #   Dataflow details for the downlink endpoint
    #   @return [Types::DownlinkDataflowDetails]
    #
    # @!attribute [rw] agent_status
    #   Status of the agent associated with the downlink dataflow endpoint
    #   @return [String]
    #
    # @!attribute [rw] audit_results
    #   Health audit results for the downlink dataflow endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DownlinkAwsGroundStationAgentEndpointDetails AWS API Documentation
    #
    class DownlinkAwsGroundStationAgentEndpointDetails < Struct.new(
      :name,
      :dataflow_details,
      :agent_status,
      :audit_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connection details for Ground Station to Agent and Agent to customer
    #
    # @!attribute [rw] agent_ip_and_port_address
    #   Ingress address of AgentEndpoint with a port range and an optional
    #   mtu.
    #   @return [Types::RangedConnectionDetails]
    #
    # @!attribute [rw] egress_address_and_port
    #   Egress address of AgentEndpoint with an optional mtu.
    #   @return [Types::ConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DownlinkConnectionDetails AWS API Documentation
    #
    class DownlinkConnectionDetails < Struct.new(
      :agent_ip_and_port_address,
      :egress_address_and_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataflow details for a downlink endpoint
    #
    # @note DownlinkDataflowDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DownlinkDataflowDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DownlinkDataflowDetails corresponding to the set member.
    #
    # @!attribute [rw] agent_connection_details
    #   Downlink connection details for customer to Agent and Agent to
    #   Ground Station
    #   @return [Types::DownlinkConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DownlinkDataflowDetails AWS API Documentation
    #
    class DownlinkDataflowDetails < Struct.new(
      :agent_connection_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentConnectionDetails < DownlinkDataflowDetails; end
      class Unknown < DownlinkDataflowDetails; end
    end

    # Object that represents EIRP.
    #
    # @!attribute [rw] value
    #   Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.
    #   @return [Float]
    #
    # @!attribute [rw] units
    #   Units of an EIRP.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Eirp AWS API Documentation
    #
    class Eirp < Struct.new(
      :value,
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Elevation angle of the satellite in the sky during a contact.
    #
    # @!attribute [rw] value
    #   Elevation angle value.
    #   @return [Float]
    #
    # @!attribute [rw] unit
    #   Elevation angle units.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Elevation AWS API Documentation
    #
    class Elevation < Struct.new(
      :value,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the endpoint details.
    #
    # @!attribute [rw] security_details
    #   Endpoint security details including a list of subnets, a list of
    #   security groups and a role to connect streams to instances.
    #   @return [Types::SecurityDetails]
    #
    # @!attribute [rw] endpoint
    #   A dataflow endpoint.
    #   @return [Types::DataflowEndpoint]
    #
    # @!attribute [rw] aws_ground_station_agent_endpoint
    #   An agent endpoint.
    #   @return [Types::AwsGroundStationAgentEndpoint]
    #
    # @!attribute [rw] uplink_aws_ground_station_agent_endpoint
    #   Definition for an uplink agent endpoint
    #   @return [Types::UplinkAwsGroundStationAgentEndpointDetails]
    #
    # @!attribute [rw] downlink_aws_ground_station_agent_endpoint
    #   Definition for a downlink agent endpoint
    #   @return [Types::DownlinkAwsGroundStationAgentEndpointDetails]
    #
    # @!attribute [rw] health_status
    #   A dataflow endpoint health status. This field is ignored when
    #   calling `CreateDataflowEndpointGroup`.
    #   @return [String]
    #
    # @!attribute [rw] health_reasons
    #   Health reasons for a dataflow endpoint. This field is ignored when
    #   calling `CreateDataflowEndpointGroup`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EndpointDetails AWS API Documentation
    #
    class EndpointDetails < Struct.new(
      :security_details,
      :endpoint,
      :aws_ground_station_agent_endpoint,
      :uplink_aws_ground_station_agent_endpoint,
      :downlink_aws_ground_station_agent_endpoint,
      :health_status,
      :health_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris data.
    #
    # @note EphemerisData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] tle
    #   Two-line element set (TLE) ephemeris.
    #
    #   For more detail about providing Two-line element sets to AWS Ground
    #   Station, see the [TLE section][1] of the AWS Ground Station user
    #   guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-tle-ephemeris-data.html
    #   @return [Types::TLEEphemeris]
    #
    # @!attribute [rw] oem
    #   Ephemeris data in Orbit Ephemeris Message (OEM) format.
    #
    #   AWS Ground Station processes OEM ephemerides according to the [CCSDS
    #   standard][1] with some extra restrictions. OEM files should be in
    #   KVN format. For more detail about the OEM format that AWS Ground
    #   Station supports, see [OEM ephemeris format][2] in the AWS Ground
    #   Station user guide.
    #
    #
    #
    #   [1]: https://ccsds.org/wp-content/uploads/gravity_forms/5-448e85c647331d9cbaf66c096458bdd5/2025/01//502x0b3e1.pdf
    #   [2]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-oem-ephemeris-data.html#oem-ephemeris-format
    #   @return [Types::OEMEphemeris]
    #
    # @!attribute [rw] az_el
    #   Azimuth elevation ephemeris data.
    #
    #   Use this ephemeris type to provide pointing angles directly, rather
    #   than satellite orbital elements. Use this when you need precise
    #   antenna pointing but have imprecise or unknown satellite trajectory
    #   information.
    #
    #   The azimuth elevation data specifies the antenna pointing direction
    #   at specific times relative to a ground station location. AWS Ground
    #   Station uses 4th order Lagrange interpolation to compute pointing
    #   angles between the provided data points.
    #
    #   AWS Ground Station automatically filters interpolated pointing
    #   angles, including only those that are above the site mask elevation
    #   of the specified ground station.
    #
    #   For more detail about providing azimuth elevation ephemerides to AWS
    #   Ground Station, see the [azimuth elevation ephemeris section][1] of
    #   the AWS Ground Station User Guide.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-azimuth-elevation-ephemeris-data.html
    #   @return [Types::AzElEphemeris]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisData AWS API Documentation
    #
    class EphemerisData < Struct.new(
      :tle,
      :oem,
      :az_el,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Tle < EphemerisData; end
      class Oem < EphemerisData; end
      class AzEl < EphemerisData; end
      class Unknown < EphemerisData; end
    end

    # Description of ephemeris.
    #
    # @!attribute [rw] source_s3_object
    #   Source Amazon S3 object used for the ephemeris.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] ephemeris_data
    #   Supplied ephemeris data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisDescription AWS API Documentation
    #
    class EphemerisDescription < Struct.new(
      :source_s3_object,
      :ephemeris_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed error information for ephemeris validation failures.
    #
    # Provides an error code and descriptive message to help diagnose and
    # resolve validation issues.
    #
    # @!attribute [rw] error_code
    #   The error code identifying the type of validation failure.
    #
    #   See the [Troubleshooting Invalid Ephemerides guide][1] for error
    #   code details.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/ground-station/latest/ug/troubleshooting-invalid-ephemerides.html
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   A human-readable message describing the validation failure.
    #
    #   Provides specific details about what failed and may include
    #   suggestions for remediation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisErrorReason AWS API Documentation
    #
    class EphemerisErrorReason < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter for selecting contacts that use a specific ephemeris".
    #
    # @note EphemerisFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] az_el
    #   Filter for AzElEphemeris.
    #   @return [Types::AzElEphemerisFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisFilter AWS API Documentation
    #
    class EphemerisFilter < Struct.new(
      :az_el,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AzEl < EphemerisFilter; end
      class Unknown < EphemerisFilter; end
    end

    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisIdResponse AWS API Documentation
    #
    class EphemerisIdResponse < Struct.new(
      :ephemeris_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris item.
    #
    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris_type
    #   The type of ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   A priority score that determines which ephemeris to use when
    #   multiple ephemerides overlap.
    #
    #   Higher numbers take precedence. The default is 1. Must be 1 or
    #   greater.
    #   @return [Integer]
    #
    # @!attribute [rw] enabled
    #   Whether or not the ephemeris is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] creation_time
    #   The time the ephemeris was uploaded in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name that you can use to identify the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_object
    #   Source Amazon S3 object used for the ephemeris.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisItem AWS API Documentation
    #
    class EphemerisItem < Struct.new(
      :ephemeris_id,
      :ephemeris_type,
      :status,
      :priority,
      :enabled,
      :creation_time,
      :name,
      :source_s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata describing a particular ephemeris.
    #
    # @!attribute [rw] source
    #   The `EphemerisSource` that generated a given ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris_id
    #   UUID of a customer-provided ephemeris.
    #
    #   This field is not populated for default ephemerides from Space
    #   Track.
    #   @return [String]
    #
    # @!attribute [rw] epoch
    #   The epoch of a default, ephemeris from Space Track in UTC.
    #
    #   This field is not populated for customer-provided ephemerides.
    #   @return [Time]
    #
    # @!attribute [rw] name
    #   A name string associated with the ephemeris. Used as a
    #   human-readable identifier for the ephemeris.
    #
    #   A name is only returned for customer-provider ephemerides that have
    #   a name associated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisMetaData AWS API Documentation
    #
    class EphemerisMetaData < Struct.new(
      :source,
      :ephemeris_id,
      :epoch,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris data for a contact.
    #
    # @!attribute [rw] ephemeris_id
    #   Unique identifier of the ephemeris. Appears only for custom
    #   ephemerides.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris_type
    #   Type of ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisResponseData AWS API Documentation
    #
    class EphemerisResponseData < Struct.new(
      :ephemeris_id,
      :ephemeris_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note EphemerisTypeDescription is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EphemerisTypeDescription corresponding to the set member.
    #
    # @!attribute [rw] tle
    #   Description of ephemeris.
    #   @return [Types::EphemerisDescription]
    #
    # @!attribute [rw] oem
    #   Description of ephemeris.
    #   @return [Types::EphemerisDescription]
    #
    # @!attribute [rw] az_el
    #   Description of ephemeris.
    #   @return [Types::EphemerisDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisTypeDescription AWS API Documentation
    #
    class EphemerisTypeDescription < Struct.new(
      :tle,
      :oem,
      :az_el,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Tle < EphemerisTypeDescription; end
      class Oem < EphemerisTypeDescription; end
      class AzEl < EphemerisTypeDescription; end
      class Unknown < EphemerisTypeDescription; end
    end

    # Object that describes the frequency.
    #
    # @!attribute [rw] value
    #   Frequency value. Valid values are between 2200 to 2300 MHz and 7750
    #   to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.
    #   @return [Float]
    #
    # @!attribute [rw] units
    #   Frequency units.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Frequency AWS API Documentation
    #
    class Frequency < Struct.new(
      :value,
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes the frequency bandwidth.
    #
    # @!attribute [rw] value
    #   Frequency bandwidth value. AWS Ground Station currently has the
    #   following bandwidth limitations:
    #
    #   * For `AntennaDownlinkDemodDecodeconfig`, valid values are between
    #     125 kHz to 650 MHz.
    #
    #   * For `AntennaDownlinkconfig`, valid values are between 10 kHz to 54
    #     MHz.
    #
    #   * For `AntennaUplinkConfig`, valid values are between 10 kHz to 54
    #     MHz.
    #   @return [Float]
    #
    # @!attribute [rw] units
    #   Frequency bandwidth units.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/FrequencyBandwidth AWS API Documentation
    #
    class FrequencyBandwidth < Struct.new(
      :value,
      :units)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of agent to get configuration information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetAgentConfigurationRequest AWS API Documentation
    #
    class GetAgentConfigurationRequest < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of agent.
    #   @return [String]
    #
    # @!attribute [rw] tasking_document
    #   Tasking document for agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetAgentConfigurationResponse AWS API Documentation
    #
    class GetAgentConfigurationResponse < Struct.new(
      :agent_id,
      :tasking_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of agent requesting the response URL.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   GUID of the agent task for which the response URL is being
    #   requested.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetAgentTaskResponseUrlRequest AWS API Documentation
    #
    class GetAgentTaskResponseUrlRequest < Struct.new(
      :agent_id,
      :task_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of the agent.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   GUID of the agent task.
    #   @return [String]
    #
    # @!attribute [rw] presigned_log_url
    #   Presigned URL for uploading agent task response logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetAgentTaskResponseUrlResponse AWS API Documentation
    #
    class GetAgentTaskResponseUrlResponse < Struct.new(
      :agent_id,
      :task_id,
      :presigned_log_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetConfigRequest AWS API Documentation
    #
    class GetConfigRequest < Struct.new(
      :config_id,
      :config_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_arn
    #   ARN of a `Config`
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_data
    #   Data elements in a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a `Config`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetConfigResponse AWS API Documentation
    #
    class GetConfigResponse < Struct.new(
      :config_id,
      :config_arn,
      :name,
      :config_type,
      :config_data,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetDataflowEndpointGroupRequest AWS API Documentation
    #
    class GetDataflowEndpointGroupRequest < Struct.new(
      :dataflow_endpoint_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_group_arn
    #   ARN of a dataflow endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoints_details
    #   Details of a dataflow endpoint.
    #   @return [Array<Types::EndpointDetails>]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a dataflow endpoint group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time, in seconds, before a contact starts that the Ground
    #   Station Dataflow Endpoint Group will be in a `PREPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `PREPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time, in seconds, after a contact ends that the Ground
    #   Station Dataflow Endpoint Group will be in a `POSTPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `POSTPASS` state.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetDataflowEndpointGroupResponse AWS API Documentation
    #
    class GetDataflowEndpointGroupResponse < Struct.new(
      :dataflow_endpoint_group_id,
      :dataflow_endpoint_group_arn,
      :endpoints_details,
      :tags,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] month
    #   The month being requested, with a value of 1-12.
    #   @return [Integer]
    #
    # @!attribute [rw] year
    #   The year being requested, in the format of YYYY.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMinuteUsageRequest AWS API Documentation
    #
    class GetMinuteUsageRequest < Struct.new(
      :month,
      :year)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] is_reserved_minutes_customer
    #   Returns whether or not an account has signed up for the reserved
    #   minutes pricing plan, specific to the month being requested.
    #   @return [Boolean]
    #
    # @!attribute [rw] total_reserved_minute_allocation
    #   Total number of reserved minutes allocated, specific to the month
    #   being requested.
    #   @return [Integer]
    #
    # @!attribute [rw] upcoming_minutes_scheduled
    #   Upcoming minutes scheduled for an account, specific to the month
    #   being requested.
    #   @return [Integer]
    #
    # @!attribute [rw] total_scheduled_minutes
    #   Total scheduled minutes for an account, specific to the month being
    #   requested.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_minutes_remaining
    #   Estimated number of minutes remaining for an account, specific to
    #   the month being requested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMinuteUsageResponse AWS API Documentation
    #
    class GetMinuteUsageResponse < Struct.new(
      :is_reserved_minutes_customer,
      :total_reserved_minute_allocation,
      :upcoming_minutes_scheduled,
      :total_scheduled_minutes,
      :estimated_minutes_remaining)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMissionProfileRequest AWS API Documentation
    #
    class GetMissionProfileRequest < Struct.new(
      :mission_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Region of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a mission profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] streams_kms_key
    #   KMS key to use for encrypting streams.
    #   @return [Types::KmsKey]
    #
    # @!attribute [rw] streams_kms_role
    #   Role to use for encrypting streams with KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMissionProfileResponse AWS API Documentation
    #
    class GetMissionProfileResponse < Struct.new(
      :mission_profile_id,
      :mission_profile_arn,
      :name,
      :region,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :tags,
      :streams_kms_key,
      :streams_kms_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] satellite_id
    #   UUID of a satellite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetSatelliteRequest AWS API Documentation
    #
    class GetSatelliteRequest < Struct.new(
      :satellite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] satellite_id
    #   UUID of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] norad_satellite_id
    #   NORAD satellite ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] ground_stations
    #   A list of ground stations to which the satellite is on-boarded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] current_ephemeris
    #   The current ephemeris being used to compute the trajectory of the
    #   satellite.
    #   @return [Types::EphemerisMetaData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetSatelliteResponse AWS API Documentation
    #
    class GetSatelliteResponse < Struct.new(
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      :current_ephemeris)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the ground station data.
    #
    # @!attribute [rw] ground_station_id
    #   UUID of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] ground_station_name
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Ground station Region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GroundStationData AWS API Documentation
    #
    class GroundStationData < Struct.new(
      :ground_station_id,
      :ground_station_name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Time range specified using ISO 8601 format timestamps.
    #
    # @!attribute [rw] start_time
    #   Start time in ISO 8601 format in Coordinated Universal Time (UTC).
    #
    #   Example: `2026-11-15T10:28:48.000Z`
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time in ISO 8601 format in Coordinated Universal Time (UTC).
    #
    #   Example: `2024-01-15T12:00:00.000Z`
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ISO8601TimeRange AWS API Documentation
    #
    class ISO8601TimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # An integer range that has a minimum and maximum value.
    #
    # @!attribute [rw] minimum
    #   A minimum value.
    #   @return [Integer]
    #
    # @!attribute [rw] maximum
    #   A maximum value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/IntegerRange AWS API Documentation
    #
    class IntegerRange < Struct.new(
      :minimum,
      :maximum)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameters are not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # KMS key info.
    #
    # @note KmsKey is a union - when making an API calls you must set exactly one of the members.
    #
    # @note KmsKey is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of KmsKey corresponding to the set member.
    #
    # @!attribute [rw] kms_key_arn
    #   KMS Key Arn.
    #   @return [String]
    #
    # @!attribute [rw] kms_alias_arn
    #   KMS Alias Arn.
    #   @return [String]
    #
    # @!attribute [rw] kms_alias_name
    #   KMS Alias Name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/KmsKey AWS API Documentation
    #
    class KmsKey < Struct.new(
      :kms_key_arn,
      :kms_alias_arn,
      :kms_alias_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KmsKeyArn < KmsKey; end
      class KmsAliasArn < KmsKey; end
      class KmsAliasName < KmsKey; end
      class Unknown < KmsKey; end
    end

    # @!attribute [rw] max_results
    #   Maximum number of `Configs` returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the request of a previous `ListConfigs` call.
    #   Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListConfigsRequest AWS API Documentation
    #
    class ListConfigsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous `ListConfigs`
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] config_list
    #   List of `Config` items.
    #   @return [Array<Types::ConfigListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListConfigsResponse AWS API Documentation
    #
    class ListConfigsResponse < Struct.new(
      :next_token,
      :config_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of contacts returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the request of a previous `ListContacts`
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] status_list
    #   Status of a contact reservation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   Start time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris
    #   Filter for selecting contacts that use a specific ephemeris".
    #   @return [Types::EphemerisFilter]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListContactsRequest AWS API Documentation
    #
    class ListContactsRequest < Struct.new(
      :max_results,
      :next_token,
      :status_list,
      :start_time,
      :end_time,
      :ground_station,
      :satellite_arn,
      :mission_profile_arn,
      :ephemeris)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous `ListContacts`
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] contact_list
    #   List of contacts.
    #   @return [Array<Types::ContactData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListContactsResponse AWS API Documentation
    #
    class ListContactsResponse < Struct.new(
      :next_token,
      :contact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of dataflow endpoint groups returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the request of a previous
    #   `ListDataflowEndpointGroups` call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListDataflowEndpointGroupsRequest AWS API Documentation
    #
    class ListDataflowEndpointGroupsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   `ListDataflowEndpointGroups` call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_group_list
    #   A list of dataflow endpoint groups.
    #   @return [Array<Types::DataflowEndpointListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListDataflowEndpointGroupsResponse AWS API Documentation
    #
    class ListDataflowEndpointGroupsResponse < Struct.new(
      :next_token,
      :dataflow_endpoint_group_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] satellite_id
    #   The AWS Ground Station satellite ID to list ephemeris for.
    #   @return [String]
    #
    # @!attribute [rw] ephemeris_type
    #   Filter ephemerides by type. If not specified, all ephemeris types
    #   will be returned.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time for the list operation in UTC. Returns ephemerides
    #   with expiration times within your specified time range.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time for the list operation in UTC. Returns ephemerides with
    #   expiration times within your specified time range.
    #   @return [Time]
    #
    # @!attribute [rw] status_list
    #   The list of ephemeris status to return.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_results
    #   Maximum number of ephemerides to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListEphemeridesRequest AWS API Documentation
    #
    class ListEphemeridesRequest < Struct.new(
      :satellite_id,
      :ephemeris_type,
      :start_time,
      :end_time,
      :status_list,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] ephemerides
    #   List of ephemerides.
    #   @return [Array<Types::EphemerisItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListEphemeridesResponse AWS API Documentation
    #
    class ListEphemeridesResponse < Struct.new(
      :next_token,
      :ephemerides)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] satellite_id
    #   Satellite ID to retrieve on-boarded ground stations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of ground stations returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of ground stations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListGroundStationsRequest AWS API Documentation
    #
    class ListGroundStationsRequest < Struct.new(
      :satellite_id,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of ground stations.
    #   @return [String]
    #
    # @!attribute [rw] ground_station_list
    #   List of ground stations.
    #   @return [Array<Types::GroundStationData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListGroundStationsResponse AWS API Documentation
    #
    class ListGroundStationsResponse < Struct.new(
      :next_token,
      :ground_station_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of mission profiles returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the request of a previous
    #   `ListMissionProfiles` call. Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListMissionProfilesRequest AWS API Documentation
    #
    class ListMissionProfilesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   `ListMissionProfiles` call. Used to get the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_list
    #   List of mission profiles.
    #   @return [Array<Types::MissionProfileListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListMissionProfilesResponse AWS API Documentation
    #
    class ListMissionProfilesResponse < Struct.new(
      :next_token,
      :mission_profile_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of satellites returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of satellites.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListSatellitesRequest AWS API Documentation
    #
    class ListSatellitesRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of satellites.
    #   @return [String]
    #
    # @!attribute [rw] satellites
    #   List of satellites.
    #   @return [Array<Types::SatelliteListItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListSatellitesResponse AWS API Documentation
    #
    class ListSatellitesResponse < Struct.new(
      :next_token,
      :satellites)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Tags assigned to a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/MissionProfileIdResponse AWS API Documentation
    #
    class MissionProfileIdResponse < Struct.new(
      :mission_profile_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Item in a list of mission profiles.
    #
    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] region
    #   Region of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a mission profile.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/MissionProfileListItem AWS API Documentation
    #
    class MissionProfileListItem < Struct.new(
      :mission_profile_id,
      :mission_profile_arn,
      :region,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris data in Orbit Ephemeris Message (OEM) format.
    #
    # AWS Ground Station processes OEM ephemerides according to the [CCSDS
    # standard][1] with some extra restrictions. OEM files should be in KVN
    # format. For more detail about the OEM format that AWS Ground Station
    # supports, see [OEM ephemeris format][2] in the AWS Ground Station user
    # guide.
    #
    #
    #
    # [1]: https://ccsds.org/wp-content/uploads/gravity_forms/5-448e85c647331d9cbaf66c096458bdd5/2025/01//502x0b3e1.pdf
    # [2]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-oem-ephemeris-data.html#oem-ephemeris-format
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 object that contains the ephemeris data.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] oem_data
    #   OEM data that you provide directly instead of using an Amazon S3
    #   object.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/OEMEphemeris AWS API Documentation
    #
    class OEMEphemeris < Struct.new(
      :s3_object,
      :oem_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # Program track settings for an antenna during a contact.
    #
    # @note ProgramTrackSettings is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ProgramTrackSettings is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ProgramTrackSettings corresponding to the set member.
    #
    # @!attribute [rw] az_el
    #   Program track settings for AzElEphemeris.
    #   @return [Types::AzElProgramTrackSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ProgramTrackSettings AWS API Documentation
    #
    class ProgramTrackSettings < Struct.new(
      :az_el,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AzEl < ProgramTrackSettings; end
      class Unknown < ProgramTrackSettings; end
    end

    # Ingress address of AgentEndpoint with a port range and an optional
    # mtu.
    #
    # @!attribute [rw] socket_address
    #   A ranged socket address.
    #   @return [Types::RangedSocketAddress]
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RangedConnectionDetails AWS API Documentation
    #
    class RangedConnectionDetails < Struct.new(
      :socket_address,
      :mtu)
      SENSITIVE = []
      include Aws::Structure
    end

    # A socket address with a port range.
    #
    # @!attribute [rw] name
    #   IPv4 socket address.
    #   @return [String]
    #
    # @!attribute [rw] port_range
    #   Port range of a socket address.
    #   @return [Types::IntegerRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RangedSocketAddress AWS API Documentation
    #
    class RangedSocketAddress < Struct.new(
      :name,
      :port_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] discovery_data
    #   Data for associating an agent with the capabilities it is managing.
    #   @return [Types::DiscoveryData]
    #
    # @!attribute [rw] agent_details
    #   Detailed information about the agent being registered.
    #   @return [Types::AgentDetails]
    #
    # @!attribute [rw] tags
    #   Tags assigned to an `Agent`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RegisterAgentRequest AWS API Documentation
    #
    class RegisterAgentRequest < Struct.new(
      :discovery_data,
      :agent_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of registered agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RegisterAgentResponse AWS API Documentation
    #
    class RegisterAgentResponse < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Start time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tracking_overrides
    #   Tracking configuration overrides for the contact.
    #   @return [Types::TrackingOverrides]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ReserveContactRequest AWS API Documentation
    #
    class ReserveContactRequest < Struct.new(
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :end_time,
      :ground_station,
      :tags,
      :tracking_overrides)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource is in use by non-terminal state contacts and
    # cannot be modified or deleted.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ResourceInUseException AWS API Documentation
    #
    class ResourceInUseException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Account limits for this resource have been exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ResourceLimitExceededException AWS API Documentation
    #
    class ResourceLimitExceededException < Struct.new(
      :message,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object stored in Amazon S3 containing ephemeris data.
    #
    # @!attribute [rw] bucket
    #   An Amazon S3 Bucket name.
    #   @return [String]
    #
    # @!attribute [rw] key
    #   An Amazon S3 key for the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   For versioned Amazon S3 objects, the version to use for the
    #   ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :bucket,
      :key,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an S3 recording `Config`.
    #
    # @!attribute [rw] bucket_arn
    #   ARN of the bucket to record to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the role Ground Station assumes to write data to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] prefix
    #   S3 Key prefix to prefice data files.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/S3RecordingConfig AWS API Documentation
    #
    class S3RecordingConfig < Struct.new(
      :bucket_arn,
      :role_arn,
      :prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an S3 recording `Config` used in a contact.
    #
    # @!attribute [rw] bucket_arn
    #   ARN of the bucket used.
    #   @return [String]
    #
    # @!attribute [rw] key_template
    #   Key template used for the S3 Recording Configuration
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/S3RecordingDetails AWS API Documentation
    #
    class S3RecordingDetails < Struct.new(
      :bucket_arn,
      :key_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Item in a list of satellites.
    #
    # @!attribute [rw] satellite_id
    #   UUID of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] norad_satellite_id
    #   NORAD satellite ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] ground_stations
    #   A list of ground stations to which the satellite is on-boarded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] current_ephemeris
    #   The current ephemeris being used to compute the trajectory of the
    #   satellite.
    #   @return [Types::EphemerisMetaData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SatelliteListItem AWS API Documentation
    #
    class SatelliteListItem < Struct.new(
      :satellite_id,
      :satellite_arn,
      :norad_satellite_id,
      :ground_stations,
      :current_ephemeris)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about endpoints.
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnets where AWS Ground Station places elastic network
    #   interfaces to send streams to your instances.
    #   @return [Array<String>]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups to attach to the elastic network interfaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   ARN to a role needed for connecting streams to your instances.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SecurityDetails AWS API Documentation
    #
    class SecurityDetails < Struct.new(
      :subnet_ids,
      :security_group_ids,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Request would cause a service quota to be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] parameter_name
    #   Parameter name that caused the exception
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :parameter_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the socket address.
    #
    # @!attribute [rw] name
    #   Name of a socket address.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   Port of a socket address.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SocketAddress AWS API Documentation
    #
    class SocketAddress < Struct.new(
      :name,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataflow details for the source side.
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_details
    #   Additional details for a `Config`, if type is `dataflow-endpoint` or
    #   `antenna-downlink-demod-decode`
    #   @return [Types::ConfigDetails]
    #
    # @!attribute [rw] dataflow_source_region
    #   Region of a dataflow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Source AWS API Documentation
    #
    class Source < Struct.new(
      :config_type,
      :config_id,
      :config_details,
      :dataflow_source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes a spectral `Config`.
    #
    # @!attribute [rw] center_frequency
    #   Center frequency of a spectral `Config`. Valid values are between
    #   2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120
    #   MHz for uplink.
    #   @return [Types::Frequency]
    #
    # @!attribute [rw] bandwidth
    #   Bandwidth of a spectral `Config`. AWS Ground Station currently has
    #   the following bandwidth limitations:
    #
    #   * For `AntennaDownlinkDemodDecodeconfig`, valid values are between
    #     125 kHz to 650 MHz.
    #
    #   * For `AntennaDownlinkconfig` valid values are between 10 kHz to 54
    #     MHz.
    #
    #   * For `AntennaUplinkConfig`, valid values are between 10 kHz to 54
    #     MHz.
    #   @return [Types::FrequencyBandwidth]
    #
    # @!attribute [rw] polarization
    #   Polarization of a spectral `Config`. Capturing both `"RIGHT_HAND"`
    #   and `"LEFT_HAND"` polarization requires two separate configs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SpectrumConfig AWS API Documentation
    #
    class SpectrumConfig < Struct.new(
      :center_frequency,
      :bandwidth,
      :polarization)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two-line element set (TLE) data.
    #
    # @!attribute [rw] tle_line_1
    #   First line of two-line element set (TLE) data.
    #   @return [String]
    #
    # @!attribute [rw] tle_line_2
    #   Second line of two-line element set (TLE) data.
    #   @return [String]
    #
    # @!attribute [rw] valid_time_range
    #   The valid time range for the TLE. Time ranges must be continuous
    #   without gaps or overlaps.
    #   @return [Types::TimeRange]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TLEData AWS API Documentation
    #
    class TLEData < Struct.new(
      :tle_line_1,
      :tle_line_2,
      :valid_time_range)
      SENSITIVE = []
      include Aws::Structure
    end

    # Two-line element set (TLE) ephemeris.
    #
    # For more detail about providing Two-line element sets to AWS Ground
    # Station, see the [TLE section][1] of the AWS Ground Station user
    # guide.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/ground-station/latest/ug/providing-tle-ephemeris-data.html
    #
    # @!attribute [rw] s3_object
    #   The Amazon S3 object that contains the ephemeris data.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] tle_data
    #   TLE data that you provide directly instead of using an Amazon S3
    #   object.
    #   @return [Array<Types::TLEData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TLEEphemeris AWS API Documentation
    #
    class TLEEphemeris < Struct.new(
      :s3_object,
      :tle_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a resource tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Time-tagged azimuth elevation pointing data.
    #
    # Specifies the antenna pointing direction at a specific time offset
    # from the segment's reference epoch.
    #
    # @!attribute [rw] dt
    #   Time offset in atomic seconds from the segment's reference epoch.
    #
    #   All `dt` values within a segment must be in ascending order with no
    #   duplicates.
    #
    #   `dt` values may be:
    #
    #   * negative
    #
    #   * expressed as fractions of a second
    #
    #   * expressed in scientific notation
    #   @return [Float]
    #
    # @!attribute [rw] az
    #   Azimuth angle at the specified time.
    #
    #   Valid ranges by unit:
    #
    #   * `DEGREE_ANGLE`: -180 to 360 degrees, measured clockwise from true
    #     north
    #
    #   * `RADIAN`: -π to 2π radians, measured clockwise from true north
    #   @return [Float]
    #
    # @!attribute [rw] el
    #   Elevation angle at the specified time.
    #
    #   Valid ranges by unit:
    #
    #   * `DEGREE_ANGLE`: -90 to 90 degrees, where 0 is the horizon, 90 is
    #     zenith, and negative values are below the horizon
    #
    #   * `RADIAN`: -π/2 to π/2 radians, where 0 is the horizon, π/2 is
    #     zenith, and negative values are below the horizon
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TimeAzEl AWS API Documentation
    #
    class TimeAzEl < Struct.new(
      :dt,
      :az,
      :el)
      SENSITIVE = []
      include Aws::Structure
    end

    # A time range with a start and end time.
    #
    # @!attribute [rw] start_time
    #   Unix epoch timestamp in UTC at which the time range starts.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Unix epoch timestamp in UTC at which the time range ends.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :start_time,
      :end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that determines whether tracking should be used during a
    # contact executed with this `Config` in the mission profile.
    #
    # @!attribute [rw] autotrack
    #   Current setting for autotrack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TrackingConfig AWS API Documentation
    #
    class TrackingConfig < Struct.new(
      :autotrack)
      SENSITIVE = []
      include Aws::Structure
    end

    # Overrides the default tracking configuration on an antenna during a
    # contact.
    #
    # @!attribute [rw] program_track_settings
    #   Program track settings to override for antenna tracking during the
    #   contact.
    #   @return [Types::ProgramTrackSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TrackingOverrides AWS API Documentation
    #
    class TrackingOverrides < Struct.new(
      :program_track_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   ARN of a resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   Keys of a resource tag.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] agent_id
    #   UUID of agent to update.
    #   @return [String]
    #
    # @!attribute [rw] task_id
    #   GUID of agent task.
    #   @return [String]
    #
    # @!attribute [rw] aggregate_status
    #   Aggregate status for agent.
    #   @return [Types::AggregateStatus]
    #
    # @!attribute [rw] component_statuses
    #   List of component statuses for agent.
    #   @return [Array<Types::ComponentStatusData>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateAgentStatusRequest AWS API Documentation
    #
    class UpdateAgentStatusRequest < Struct.new(
      :agent_id,
      :task_id,
      :aggregate_status,
      :component_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] agent_id
    #   UUID of updated agent.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateAgentStatusResponse AWS API Documentation
    #
    class UpdateAgentStatusResponse < Struct.new(
      :agent_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_data
    #   Parameters of a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateConfigRequest AWS API Documentation
    #
    class UpdateConfigRequest < Struct.new(
      :config_id,
      :name,
      :config_type,
      :config_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Enable or disable the ephemeris. Changing this value doesn't
    #   require re-validation.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   A name that you can use to identify the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   A priority score that determines which ephemeris to use when
    #   multiple ephemerides overlap.
    #
    #   Higher numbers take precedence. The default is 1. Must be 1 or
    #   greater.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateEphemerisRequest AWS API Documentation
    #
    class UpdateEphemerisRequest < Struct.new(
      :ephemeris_id,
      :enabled,
      :name,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   Ground Station Contact State Change event indicating the pass has
    #   finished.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   Ground Station Contact State Change event indicating the pass has
    #   finished.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @!attribute [rw] streams_kms_key
    #   KMS key to use for encrypting streams.
    #   @return [Types::KmsKey]
    #
    # @!attribute [rw] streams_kms_role
    #   Role to use for encrypting streams with KMS key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateMissionProfileRequest AWS API Documentation
    #
    class UpdateMissionProfileRequest < Struct.new(
      :mission_profile_id,
      :name,
      :contact_pre_pass_duration_seconds,
      :contact_post_pass_duration_seconds,
      :minimum_viable_contact_duration_seconds,
      :dataflow_edges,
      :tracking_config_arn,
      :streams_kms_key,
      :streams_kms_role)
      SENSITIVE = []
      include Aws::Structure
    end

    # Definition for an uplink agent endpoint
    #
    # @!attribute [rw] name
    #   Uplink dataflow endpoint name
    #   @return [String]
    #
    # @!attribute [rw] dataflow_details
    #   Dataflow details for the uplink endpoint
    #   @return [Types::UplinkDataflowDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkAwsGroundStationAgentEndpoint AWS API Documentation
    #
    class UplinkAwsGroundStationAgentEndpoint < Struct.new(
      :name,
      :dataflow_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for an uplink agent endpoint
    #
    # @!attribute [rw] name
    #   Uplink dataflow endpoint name
    #   @return [String]
    #
    # @!attribute [rw] dataflow_details
    #   Dataflow details for the uplink endpoint
    #   @return [Types::UplinkDataflowDetails]
    #
    # @!attribute [rw] agent_status
    #   Status of the agent associated with the uplink dataflow endpoint
    #   @return [String]
    #
    # @!attribute [rw] audit_results
    #   Health audit results for the uplink dataflow endpoint
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkAwsGroundStationAgentEndpointDetails AWS API Documentation
    #
    class UplinkAwsGroundStationAgentEndpointDetails < Struct.new(
      :name,
      :dataflow_details,
      :agent_status,
      :audit_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # Connection details for customer to Agent and Agent to Ground Station
    #
    # @!attribute [rw] ingress_address_and_port
    #   Egress address of AgentEndpoint with an optional mtu.
    #   @return [Types::ConnectionDetails]
    #
    # @!attribute [rw] agent_ip_and_port_address
    #   Ingress address of AgentEndpoint with a port range and an optional
    #   mtu.
    #   @return [Types::RangedConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkConnectionDetails AWS API Documentation
    #
    class UplinkConnectionDetails < Struct.new(
      :ingress_address_and_port,
      :agent_ip_and_port_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataflow details for an uplink endpoint
    #
    # @note UplinkDataflowDetails is a union - when making an API calls you must set exactly one of the members.
    #
    # @note UplinkDataflowDetails is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of UplinkDataflowDetails corresponding to the set member.
    #
    # @!attribute [rw] agent_connection_details
    #   Uplink connection details for customer to Agent and Agent to Ground
    #   Station
    #   @return [Types::UplinkConnectionDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkDataflowDetails AWS API Documentation
    #
    class UplinkDataflowDetails < Struct.new(
      :agent_connection_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AgentConnectionDetails < UplinkDataflowDetails; end
      class Unknown < UplinkDataflowDetails; end
    end

    # Information about an uplink echo `Config`.
    #
    # Parameters from the `AntennaUplinkConfig`, corresponding to the
    # specified `AntennaUplinkConfigArn`, are used when this
    # `UplinkEchoConfig` is used in a contact.
    #
    # @!attribute [rw] enabled
    #   Whether or not an uplink `Config` is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] antenna_uplink_config_arn
    #   ARN of an uplink `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkEchoConfig AWS API Documentation
    #
    class UplinkEchoConfig < Struct.new(
      :enabled,
      :antenna_uplink_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the uplink spectral `Config`.
    #
    # @!attribute [rw] center_frequency
    #   Center frequency of an uplink spectral `Config`. Valid values are
    #   between 2025 to 2120 MHz.
    #   @return [Types::Frequency]
    #
    # @!attribute [rw] polarization
    #   Polarization of an uplink spectral `Config`. Capturing both
    #   `"RIGHT_HAND"` and `"LEFT_HAND"` polarization requires two separate
    #   configs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkSpectrumConfig AWS API Documentation
    #
    class UplinkSpectrumConfig < Struct.new(
      :center_frequency,
      :polarization)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

