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
    # @!attribute [rw] agent_cpu_cores
    #   List of CPU cores reserved for the agent.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] agent_version
    #   Current agent version.
    #   @return [String]
    #
    # @!attribute [rw] component_versions
    #   List of versions being used by agent components.
    #   @return [Array<Types::ComponentVersion>]
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
    #   <note markdown="1"> This field should not be used. Use agentCpuCores instead.
    #
    #    </note>
    #
    #   List of CPU cores reserved for processes other than the agent
    #   running on the EC2 instance.
    #   @return [Array<Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AgentDetails AWS API Documentation
    #
    class AgentDetails < Struct.new(
      :agent_cpu_cores,
      :agent_version,
      :component_versions,
      :instance_id,
      :instance_type,
      :reserved_cpu_cores)
      SENSITIVE = []
      include Aws::Structure
    end

    # Aggregate status of Agent components.
    #
    # @!attribute [rw] signature_map
    #   Sparse map of failure signatures.
    #   @return [Hash<String,Boolean>]
    #
    # @!attribute [rw] status
    #   Aggregate status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AggregateStatus AWS API Documentation
    #
    class AggregateStatus < Struct.new(
      :signature_map,
      :status)
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
    # @!attribute [rw] decode_config
    #   Information about the decode `Config`.
    #   @return [Types::DecodeConfig]
    #
    # @!attribute [rw] demodulation_config
    #   Information about the demodulation `Config`.
    #   @return [Types::DemodulationConfig]
    #
    # @!attribute [rw] spectrum_config
    #   Information about the spectral `Config`.
    #   @return [Types::SpectrumConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaDownlinkDemodDecodeConfig AWS API Documentation
    #
    class AntennaDownlinkDemodDecodeConfig < Struct.new(
      :decode_config,
      :demodulation_config,
      :spectrum_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the uplink `Config` of an antenna.
    #
    # @!attribute [rw] spectrum_config
    #   Information about the uplink spectral `Config`.
    #   @return [Types::UplinkSpectrumConfig]
    #
    # @!attribute [rw] target_eirp
    #   EIRP of the target.
    #   @return [Types::Eirp]
    #
    # @!attribute [rw] transmit_disabled
    #   Whether or not uplink transmit is disabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AntennaUplinkConfig AWS API Documentation
    #
    class AntennaUplinkConfig < Struct.new(
      :spectrum_config,
      :target_eirp,
      :transmit_disabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about AwsGroundStationAgentEndpoint.
    #
    # @!attribute [rw] agent_status
    #   The status of AgentEndpoint.
    #   @return [String]
    #
    # @!attribute [rw] audit_results
    #   The results of the audit.
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
    # @!attribute [rw] name
    #   Name string associated with AgentEndpoint. Used as a human-readable
    #   identifier for AgentEndpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/AwsGroundStationAgentEndpoint AWS API Documentation
    #
    class AwsGroundStationAgentEndpoint < Struct.new(
      :agent_status,
      :audit_results,
      :egress_address,
      :ingress_address,
      :name)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] bytes_received
    #   Bytes received by the component.
    #   @return [Integer]
    #
    # @!attribute [rw] bytes_sent
    #   Bytes sent by the component.
    #   @return [Integer]
    #
    # @!attribute [rw] capability_arn
    #   Capability ARN of the component.
    #   @return [String]
    #
    # @!attribute [rw] component_type
    #   The Component type.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_id
    #   Dataflow UUID associated with the component.
    #   @return [String]
    #
    # @!attribute [rw] packets_dropped
    #   Packets dropped by component.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   Component status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ComponentStatusData AWS API Documentation
    #
    class ComponentStatusData < Struct.new(
      :bytes_received,
      :bytes_sent,
      :capability_arn,
      :component_type,
      :dataflow_id,
      :packets_dropped,
      :status)
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
    # @!attribute [rw] antenna_demod_decode_details
    #   Details for antenna demod decode `Config` in a contact.
    #   @return [Types::AntennaDemodDecodeDetails]
    #
    # @!attribute [rw] endpoint_details
    #   Information about the endpoint details.
    #   @return [Types::EndpointDetails]
    #
    # @!attribute [rw] s3_recording_details
    #   Details for an S3 recording `Config` in a contact.
    #   @return [Types::S3RecordingDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigDetails AWS API Documentation
    #
    class ConfigDetails < Struct.new(
      :antenna_demod_decode_details,
      :endpoint_details,
      :s3_recording_details,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AntennaDemodDecodeDetails < ConfigDetails; end
      class EndpointDetails < ConfigDetails; end
      class S3RecordingDetails < ConfigDetails; end
      class Unknown < ConfigDetails; end
    end

    # @!attribute [rw] config_arn
    #   ARN of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigIdResponse AWS API Documentation
    #
    class ConfigIdResponse < Struct.new(
      :config_arn,
      :config_id,
      :config_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An item in a list of `Config` objects.
    #
    # @!attribute [rw] config_arn
    #   ARN of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigListItem AWS API Documentation
    #
    class ConfigListItem < Struct.new(
      :config_arn,
      :config_id,
      :config_type,
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
    # @!attribute [rw] dataflow_endpoint_config
    #   Information about the dataflow endpoint `Config`.
    #   @return [Types::DataflowEndpointConfig]
    #
    # @!attribute [rw] s3_recording_config
    #   Information about an S3 recording `Config`.
    #   @return [Types::S3RecordingConfig]
    #
    # @!attribute [rw] tracking_config
    #   Object that determines whether tracking should be used during a
    #   contact executed with this `Config` in the mission profile.
    #   @return [Types::TrackingConfig]
    #
    # @!attribute [rw] uplink_echo_config
    #   Information about an uplink echo `Config`.
    #
    #   Parameters from the `AntennaUplinkConfig`, corresponding to the
    #   specified `AntennaUplinkConfigArn`, are used when this
    #   `UplinkEchoConfig` is used in a contact.
    #   @return [Types::UplinkEchoConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigTypeData AWS API Documentation
    #
    class ConfigTypeData < Struct.new(
      :antenna_downlink_config,
      :antenna_downlink_demod_decode_config,
      :antenna_uplink_config,
      :dataflow_endpoint_config,
      :s3_recording_config,
      :tracking_config,
      :uplink_echo_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AntennaDownlinkConfig < ConfigTypeData; end
      class AntennaDownlinkDemodDecodeConfig < ConfigTypeData; end
      class AntennaUplinkConfig < ConfigTypeData; end
      class DataflowEndpointConfig < ConfigTypeData; end
      class S3RecordingConfig < ConfigTypeData; end
      class TrackingConfig < ConfigTypeData; end
      class UplinkEchoConfig < ConfigTypeData; end
      class Unknown < ConfigTypeData; end
    end

    # Egress address of AgentEndpoint with an optional mtu.
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] socket_address
    #   A socket address.
    #   @return [Types::SocketAddress]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConnectionDetails AWS API Documentation
    #
    class ConnectionDetails < Struct.new(
      :mtu,
      :socket_address)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data describing a contact.
    #
    # @!attribute [rw] contact_id
    #   UUID of a contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_status
    #   Status of a contact.
    #   @return [String]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   Error message of a contact.
    #   @return [String]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] maximum_elevation
    #   Maximum elevation angle of a contact.
    #   @return [Types::Elevation]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] post_pass_end_time
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Time]
    #
    # @!attribute [rw] pre_pass_start_time
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Time]
    #
    # @!attribute [rw] region
    #   Region of a contact.
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
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ContactData AWS API Documentation
    #
    class ContactData < Struct.new(
      :contact_id,
      :contact_status,
      :end_time,
      :error_message,
      :ground_station,
      :maximum_elevation,
      :mission_profile_arn,
      :post_pass_end_time,
      :pre_pass_start_time,
      :region,
      :satellite_arn,
      :start_time,
      :tags)
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

    # @!attribute [rw] config_data
    #   Parameters of a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a `Config`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateConfigRequest AWS API Documentation
    #
    class CreateConfigRequest < Struct.new(
      :config_data,
      :name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time, in seconds, after a contact ends that the Ground
    #   Station Dataflow Endpoint Group will be in a `POSTPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `POSTPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time, in seconds, before a contact starts that the Ground
    #   Station Dataflow Endpoint Group will be in a `PREPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `PREPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_details
    #   Endpoint details of each endpoint in the dataflow endpoint group.
    #   @return [Array<Types::EndpointDetails>]
    #
    # @!attribute [rw] tags
    #   Tags of a dataflow endpoint group.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateDataflowEndpointGroupRequest AWS API Documentation
    #
    class CreateDataflowEndpointGroupRequest < Struct.new(
      :contact_post_pass_duration_seconds,
      :contact_pre_pass_duration_seconds,
      :endpoint_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Whether to set the ephemeris status to `ENABLED` after validation.
    #
    #   Setting this to false will set the ephemeris status to `DISABLED`
    #   after validation.
    #   @return [Boolean]
    #
    # @!attribute [rw] ephemeris
    #   Ephemeris data.
    #   @return [Types::EphemerisData]
    #
    # @!attribute [rw] expiration_time
    #   An overall expiration time for the ephemeris in UTC, after which it
    #   will become `EXPIRED`.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   The ARN of a KMS key used to encrypt the ephemeris in Ground
    #   Station.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name string associated with the ephemeris. Used as a
    #   human-readable identifier for the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Customer-provided priority score to establish the order in which
    #   overlapping ephemerides should be used.
    #
    #   The default for customer-provided ephemeris priority is 1, and
    #   higher numbers take precedence.
    #
    #   Priority must be 1 or greater
    #   @return [Integer]
    #
    # @!attribute [rw] satellite_id
    #   AWS Ground Station satellite ID for this ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to an ephemeris.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateEphemerisRequest AWS API Documentation
    #
    class CreateEphemerisRequest < Struct.new(
      :enabled,
      :ephemeris,
      :expiration_time,
      :kms_key_arn,
      :name,
      :priority,
      :satellite_id,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Name of a mission profile.
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
    # @!attribute [rw] tags
    #   Tags assigned to a mission profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/CreateMissionProfileRequest AWS API Documentation
    #
    class CreateMissionProfileRequest < Struct.new(
      :contact_post_pass_duration_seconds,
      :contact_pre_pass_duration_seconds,
      :dataflow_edges,
      :minimum_viable_contact_duration_seconds,
      :name,
      :streams_kms_key,
      :streams_kms_role,
      :tags,
      :tracking_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataflow edge used in a contact.
    #
    # @!attribute [rw] destination
    #   Dataflow details for the destination side.
    #   @return [Types::Destination]
    #
    # @!attribute [rw] error_message
    #   Error message for a dataflow.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   Dataflow details for the source side.
    #   @return [Types::Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowDetail AWS API Documentation
    #
    class DataflowDetail < Struct.new(
      :destination,
      :error_message,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a dataflow endpoint.
    #
    # @!attribute [rw] address
    #   Socket address of a dataflow endpoint.
    #   @return [Types::SocketAddress]
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   Name of a dataflow endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Status of a dataflow endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpoint AWS API Documentation
    #
    class DataflowEndpoint < Struct.new(
      :address,
      :mtu,
      :name,
      :status)
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
    # @!attribute [rw] dataflow_endpoint_group_arn
    #   ARN of a dataflow endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DataflowEndpointListItem AWS API Documentation
    #
    class DataflowEndpointListItem < Struct.new(
      :dataflow_endpoint_group_arn,
      :dataflow_endpoint_group_id)
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
    # @!attribute [rw] contact_status
    #   Status of a contact.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_list
    #   List describing source and destination details for each dataflow
    #   edge.
    #   @return [Array<Types::DataflowDetail>]
    #
    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   Error message for a contact.
    #   @return [String]
    #
    # @!attribute [rw] ground_station
    #   Ground station for a contact.
    #   @return [String]
    #
    # @!attribute [rw] maximum_elevation
    #   Maximum elevation angle of a contact.
    #   @return [Types::Elevation]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] post_pass_end_time
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Time]
    #
    # @!attribute [rw] pre_pass_start_time
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Time]
    #
    # @!attribute [rw] region
    #   Region of a contact.
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
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeContactResponse AWS API Documentation
    #
    class DescribeContactResponse < Struct.new(
      :contact_id,
      :contact_status,
      :dataflow_list,
      :end_time,
      :error_message,
      :ground_station,
      :maximum_elevation,
      :mission_profile_arn,
      :post_pass_end_time,
      :pre_pass_start_time,
      :region,
      :satellite_arn,
      :start_time,
      :tags)
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

    # @!attribute [rw] creation_time
    #   The time the ephemeris was uploaded in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Whether or not the ephemeris is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] invalid_reason
    #   Reason that an ephemeris failed validation. Only provided for
    #   ephemerides with `INVALID` status.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name string associated with the ephemeris. Used as a
    #   human-readable identifier for the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Customer-provided priority score to establish the order in which
    #   overlapping ephemerides should be used.
    #
    #   The default for customer-provided ephemeris priority is 1, and
    #   higher numbers take precedence.
    #
    #   Priority must be 1 or greater
    #   @return [Integer]
    #
    # @!attribute [rw] satellite_id
    #   The AWS Ground Station satellite ID associated with ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] supplied_data
    #   Supplied ephemeris data.
    #   @return [Types::EphemerisTypeDescription]
    #
    # @!attribute [rw] tags
    #   Tags assigned to an ephemeris.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DescribeEphemerisResponse AWS API Documentation
    #
    class DescribeEphemerisResponse < Struct.new(
      :creation_time,
      :enabled,
      :ephemeris_id,
      :invalid_reason,
      :name,
      :priority,
      :satellite_id,
      :status,
      :supplied_data,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dataflow details for the destination side.
    #
    # @!attribute [rw] config_details
    #   Additional details for a `Config`, if type is dataflow endpoint or
    #   antenna demod decode.
    #   @return [Types::ConfigDetails]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_destination_region
    #   Region of a dataflow destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Destination AWS API Documentation
    #
    class Destination < Struct.new(
      :config_details,
      :config_id,
      :config_type,
      :dataflow_destination_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Data for agent discovery.
    #
    # @!attribute [rw] capability_arns
    #   List of capabilities to associate with agent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] private_ip_addresses
    #   List of private IP addresses to associate with agent.
    #   @return [Array<String>]
    #
    # @!attribute [rw] public_ip_addresses
    #   List of public IP addresses to associate with agent.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/DiscoveryData AWS API Documentation
    #
    class DiscoveryData < Struct.new(
      :capability_arns,
      :private_ip_addresses,
      :public_ip_addresses)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that represents EIRP.
    #
    # @!attribute [rw] units
    #   Units of an EIRP.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Value of an EIRP. Valid values are between 20.0 to 50.0 dBW.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Eirp AWS API Documentation
    #
    class Eirp < Struct.new(
      :units,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Elevation angle of the satellite in the sky during a contact.
    #
    # @!attribute [rw] unit
    #   Elevation angle units.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Elevation angle value.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Elevation AWS API Documentation
    #
    class Elevation < Struct.new(
      :unit,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the endpoint details.
    #
    # @!attribute [rw] aws_ground_station_agent_endpoint
    #   An agent endpoint.
    #   @return [Types::AwsGroundStationAgentEndpoint]
    #
    # @!attribute [rw] endpoint
    #   A dataflow endpoint.
    #   @return [Types::DataflowEndpoint]
    #
    # @!attribute [rw] health_reasons
    #   Health reasons for a dataflow endpoint. This field is ignored when
    #   calling `CreateDataflowEndpointGroup`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] health_status
    #   A dataflow endpoint health status. This field is ignored when
    #   calling `CreateDataflowEndpointGroup`.
    #   @return [String]
    #
    # @!attribute [rw] security_details
    #   Endpoint security details including a list of subnets, a list of
    #   security groups and a role to connect streams to instances.
    #   @return [Types::SecurityDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EndpointDetails AWS API Documentation
    #
    class EndpointDetails < Struct.new(
      :aws_ground_station_agent_endpoint,
      :endpoint,
      :health_reasons,
      :health_status,
      :security_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris data.
    #
    # @note EphemerisData is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] oem
    #   Ephemeris data in Orbit Ephemeris Message (OEM) format.
    #   @return [Types::OEMEphemeris]
    #
    # @!attribute [rw] tle
    #   Two-line element set (TLE) ephemeris.
    #   @return [Types::TLEEphemeris]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisData AWS API Documentation
    #
    class EphemerisData < Struct.new(
      :oem,
      :tle,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Oem < EphemerisData; end
      class Tle < EphemerisData; end
      class Unknown < EphemerisData; end
    end

    # Description of ephemeris.
    #
    # @!attribute [rw] ephemeris_data
    #   Supplied ephemeris data.
    #   @return [String]
    #
    # @!attribute [rw] source_s3_object
    #   Source S3 object used for the ephemeris.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisDescription AWS API Documentation
    #
    class EphemerisDescription < Struct.new(
      :ephemeris_data,
      :source_s3_object)
      SENSITIVE = []
      include Aws::Structure
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
    # @!attribute [rw] creation_time
    #   The time the ephemeris was uploaded in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] enabled
    #   Whether or not the ephemeris is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name string associated with the ephemeris. Used as a
    #   human-readable identifier for the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Customer-provided priority score to establish the order in which
    #   overlapping ephemerides should be used.
    #
    #   The default for customer-provided ephemeris priority is 1, and
    #   higher numbers take precedence.
    #
    #   Priority must be 1 or greater
    #   @return [Integer]
    #
    # @!attribute [rw] source_s3_object
    #   Source S3 object used for the ephemeris.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] status
    #   The status of the ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisItem AWS API Documentation
    #
    class EphemerisItem < Struct.new(
      :creation_time,
      :enabled,
      :ephemeris_id,
      :name,
      :priority,
      :source_s3_object,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Metadata describing a particular ephemeris.
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
    # @!attribute [rw] source
    #   The `EphemerisSource` that generated a given ephemeris.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisMetaData AWS API Documentation
    #
    class EphemerisMetaData < Struct.new(
      :ephemeris_id,
      :epoch,
      :name,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note EphemerisTypeDescription is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of EphemerisTypeDescription corresponding to the set member.
    #
    # @!attribute [rw] oem
    #   Description of ephemeris.
    #   @return [Types::EphemerisDescription]
    #
    # @!attribute [rw] tle
    #   Description of ephemeris.
    #   @return [Types::EphemerisDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EphemerisTypeDescription AWS API Documentation
    #
    class EphemerisTypeDescription < Struct.new(
      :oem,
      :tle,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Oem < EphemerisTypeDescription; end
      class Tle < EphemerisTypeDescription; end
      class Unknown < EphemerisTypeDescription; end
    end

    # Object that describes the frequency.
    #
    # @!attribute [rw] units
    #   Frequency units.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Frequency value. Valid values are between 2200 to 2300 MHz and 7750
    #   to 8400 MHz for downlink and 2025 to 2120 MHz for uplink.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Frequency AWS API Documentation
    #
    class Frequency < Struct.new(
      :units,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes the frequency bandwidth.
    #
    # @!attribute [rw] units
    #   Frequency bandwidth units.
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/FrequencyBandwidth AWS API Documentation
    #
    class FrequencyBandwidth < Struct.new(
      :units,
      :value)
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

    # @!attribute [rw] config_arn
    #   ARN of a `Config`
    #   @return [String]
    #
    # @!attribute [rw] config_data
    #   Data elements in a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a `Config`.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetConfigResponse AWS API Documentation
    #
    class GetConfigResponse < Struct.new(
      :config_arn,
      :config_data,
      :config_id,
      :config_type,
      :name,
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

    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time, in seconds, after a contact ends that the Ground
    #   Station Dataflow Endpoint Group will be in a `POSTPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `POSTPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time, in seconds, before a contact starts that the Ground
    #   Station Dataflow Endpoint Group will be in a `PREPASS` state. A
    #   Ground Station Dataflow Endpoint Group State Change event will be
    #   emitted when the Dataflow Endpoint Group enters and exits the
    #   `PREPASS` state.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_endpoint_group_arn
    #   ARN of a dataflow endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_endpoint_group_id
    #   UUID of a dataflow endpoint group.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetDataflowEndpointGroupResponse AWS API Documentation
    #
    class GetDataflowEndpointGroupResponse < Struct.new(
      :contact_post_pass_duration_seconds,
      :contact_pre_pass_duration_seconds,
      :dataflow_endpoint_group_arn,
      :dataflow_endpoint_group_id,
      :endpoints_details,
      :tags)
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

    # @!attribute [rw] estimated_minutes_remaining
    #   Estimated number of minutes remaining for an account, specific to
    #   the month being requested.
    #   @return [Integer]
    #
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
    # @!attribute [rw] total_scheduled_minutes
    #   Total scheduled minutes for an account, specific to the month being
    #   requested.
    #   @return [Integer]
    #
    # @!attribute [rw] upcoming_minutes_scheduled
    #   Upcoming minutes scheduled for an account, specific to the month
    #   being requested.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMinuteUsageResponse AWS API Documentation
    #
    class GetMinuteUsageResponse < Struct.new(
      :estimated_minutes_remaining,
      :is_reserved_minutes_customer,
      :total_reserved_minute_allocation,
      :total_scheduled_minutes,
      :upcoming_minutes_scheduled)
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

    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time prior to contact start you’d like to receive a
    #   CloudWatch event indicating an upcoming pass.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
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
    # @!attribute [rw] streams_kms_key
    #   KMS key to use for encrypting streams.
    #   @return [Types::KmsKey]
    #
    # @!attribute [rw] streams_kms_role
    #   Role to use for encrypting streams with KMS key.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Tags assigned to a mission profile.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetMissionProfileResponse AWS API Documentation
    #
    class GetMissionProfileResponse < Struct.new(
      :contact_post_pass_duration_seconds,
      :contact_pre_pass_duration_seconds,
      :dataflow_edges,
      :minimum_viable_contact_duration_seconds,
      :mission_profile_arn,
      :mission_profile_id,
      :name,
      :region,
      :streams_kms_key,
      :streams_kms_role,
      :tags,
      :tracking_config_arn)
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

    # @!attribute [rw] current_ephemeris
    #   The current ephemeris being used to compute the trajectory of the
    #   satellite.
    #   @return [Types::EphemerisMetaData]
    #
    # @!attribute [rw] ground_stations
    #   A list of ground stations to which the satellite is on-boarded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] norad_satellite_id
    #   NORAD satellite ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] satellite_id
    #   UUID of a satellite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/GetSatelliteResponse AWS API Documentation
    #
    class GetSatelliteResponse < Struct.new(
      :current_ephemeris,
      :ground_stations,
      :norad_satellite_id,
      :satellite_arn,
      :satellite_id)
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

    # An integer range that has a minimum and maximum value.
    #
    # @!attribute [rw] maximum
    #   A maximum value.
    #   @return [Integer]
    #
    # @!attribute [rw] minimum
    #   A minimum value.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/IntegerRange AWS API Documentation
    #
    class IntegerRange < Struct.new(
      :maximum,
      :minimum)
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

    # AWS Key Management Service (KMS) Key.
    #
    # @note KmsKey is a union - when making an API calls you must set exactly one of the members.
    #
    # @note KmsKey is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of KmsKey corresponding to the set member.
    #
    # @!attribute [rw] kms_alias_arn
    #   KMS Alias Arn.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   KMS Key Arn.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/KmsKey AWS API Documentation
    #
    class KmsKey < Struct.new(
      :kms_alias_arn,
      :kms_key_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class KmsAliasArn < KmsKey; end
      class KmsKeyArn < KmsKey; end
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

    # @!attribute [rw] config_list
    #   List of `Config` items.
    #   @return [Array<Types::ConfigListItem>]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous `ListConfigs`
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListConfigsResponse AWS API Documentation
    #
    class ListConfigsResponse < Struct.new(
      :config_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Maximum number of contacts returned.
    #   @return [Integer]
    #
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the request of a previous `ListContacts`
    #   call. Used to get the next page of results.
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
    # @!attribute [rw] status_list
    #   Status of a contact reservation.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListContactsRequest AWS API Documentation
    #
    class ListContactsRequest < Struct.new(
      :end_time,
      :ground_station,
      :max_results,
      :mission_profile_arn,
      :next_token,
      :satellite_arn,
      :start_time,
      :status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_list
    #   List of contacts.
    #   @return [Array<Types::ContactData>]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous `ListContacts`
    #   call. Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListContactsResponse AWS API Documentation
    #
    class ListContactsResponse < Struct.new(
      :contact_list,
      :next_token)
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

    # @!attribute [rw] dataflow_endpoint_group_list
    #   A list of dataflow endpoint groups.
    #   @return [Array<Types::DataflowEndpointListItem>]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   `ListDataflowEndpointGroups` call. Used to get the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListDataflowEndpointGroupsResponse AWS API Documentation
    #
    class ListDataflowEndpointGroupsResponse < Struct.new(
      :dataflow_endpoint_group_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] end_time
    #   The end time to list in UTC. The operation will return an ephemeris
    #   if its expiration time is within the time range defined by the
    #   `startTime` and `endTime`.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   Maximum number of ephemerides to return.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @!attribute [rw] satellite_id
    #   The AWS Ground Station satellite ID to list ephemeris for.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time to list in UTC. The operation will return an
    #   ephemeris if its expiration time is within the time range defined by
    #   the `startTime` and `endTime`.
    #   @return [Time]
    #
    # @!attribute [rw] status_list
    #   The list of ephemeris status to return.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListEphemeridesRequest AWS API Documentation
    #
    class ListEphemeridesRequest < Struct.new(
      :end_time,
      :max_results,
      :next_token,
      :satellite_id,
      :start_time,
      :status_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ephemerides
    #   List of ephemerides.
    #   @return [Array<Types::EphemerisItem>]
    #
    # @!attribute [rw] next_token
    #   Pagination token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListEphemeridesResponse AWS API Documentation
    #
    class ListEphemeridesResponse < Struct.new(
      :ephemerides,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   Maximum number of ground stations returned.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of ground stations.
    #   @return [String]
    #
    # @!attribute [rw] satellite_id
    #   Satellite ID to retrieve on-boarded ground stations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListGroundStationsRequest AWS API Documentation
    #
    class ListGroundStationsRequest < Struct.new(
      :max_results,
      :next_token,
      :satellite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ground_station_list
    #   List of ground stations.
    #   @return [Array<Types::GroundStationData>]
    #
    # @!attribute [rw] next_token
    #   Next token that can be supplied in the next call to get the next
    #   page of ground stations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListGroundStationsResponse AWS API Documentation
    #
    class ListGroundStationsResponse < Struct.new(
      :ground_station_list,
      :next_token)
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

    # @!attribute [rw] mission_profile_list
    #   List of mission profiles.
    #   @return [Array<Types::MissionProfileListItem>]
    #
    # @!attribute [rw] next_token
    #   Next token returned in the response of a previous
    #   `ListMissionProfiles` call. Used to get the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ListMissionProfilesResponse AWS API Documentation
    #
    class ListMissionProfilesResponse < Struct.new(
      :mission_profile_list,
      :next_token)
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
    # @!attribute [rw] mission_profile_arn
    #   ARN of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/MissionProfileListItem AWS API Documentation
    #
    class MissionProfileListItem < Struct.new(
      :mission_profile_arn,
      :mission_profile_id,
      :name,
      :region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ephemeris data in Orbit Ephemeris Message (OEM) format.
    #
    # @!attribute [rw] oem_data
    #   The data for an OEM ephemeris, supplied directly in the request
    #   rather than through an S3 object.
    #   @return [String]
    #
    # @!attribute [rw] s3_object
    #   Identifies the S3 object to be used as the ephemeris.
    #   @return [Types::S3Object]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/OEMEphemeris AWS API Documentation
    #
    class OEMEphemeris < Struct.new(
      :oem_data,
      :s3_object)
      SENSITIVE = []
      include Aws::Structure
    end

    # Ingress address of AgentEndpoint with a port range and an optional
    # mtu.
    #
    # @!attribute [rw] mtu
    #   Maximum transmission unit (MTU) size in bytes of a dataflow
    #   endpoint.
    #   @return [Integer]
    #
    # @!attribute [rw] socket_address
    #   A ranged socket address.
    #   @return [Types::RangedSocketAddress]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RangedConnectionDetails AWS API Documentation
    #
    class RangedConnectionDetails < Struct.new(
      :mtu,
      :socket_address)
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

    # @!attribute [rw] agent_details
    #   Detailed information about the agent being registered.
    #   @return [Types::AgentDetails]
    #
    # @!attribute [rw] discovery_data
    #   Data for associating an agent with the capabilities it is managing.
    #   @return [Types::DiscoveryData]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/RegisterAgentRequest AWS API Documentation
    #
    class RegisterAgentRequest < Struct.new(
      :agent_details,
      :discovery_data)
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

    # @!attribute [rw] end_time
    #   End time of a contact in UTC.
    #   @return [Time]
    #
    # @!attribute [rw] ground_station
    #   Name of a ground station.
    #   @return [String]
    #
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
    # @!attribute [rw] tags
    #   Tags assigned to a contact.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ReserveContactRequest AWS API Documentation
    #
    class ReserveContactRequest < Struct.new(
      :end_time,
      :ground_station,
      :mission_profile_arn,
      :satellite_arn,
      :start_time,
      :tags)
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

    # Object stored in S3 containing ephemeris data.
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
    #   For versioned S3 objects, the version to use for the ephemeris.
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
    # @!attribute [rw] prefix
    #   S3 Key prefix to prefice data files.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   ARN of the role Ground Station assumes to write data to the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/S3RecordingConfig AWS API Documentation
    #
    class S3RecordingConfig < Struct.new(
      :bucket_arn,
      :prefix,
      :role_arn)
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
    # @!attribute [rw] current_ephemeris
    #   The current ephemeris being used to compute the trajectory of the
    #   satellite.
    #   @return [Types::EphemerisMetaData]
    #
    # @!attribute [rw] ground_stations
    #   A list of ground stations to which the satellite is on-boarded.
    #   @return [Array<String>]
    #
    # @!attribute [rw] norad_satellite_id
    #   NORAD satellite ID number.
    #   @return [Integer]
    #
    # @!attribute [rw] satellite_arn
    #   ARN of a satellite.
    #   @return [String]
    #
    # @!attribute [rw] satellite_id
    #   UUID of a satellite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SatelliteListItem AWS API Documentation
    #
    class SatelliteListItem < Struct.new(
      :current_ephemeris,
      :ground_stations,
      :norad_satellite_id,
      :satellite_arn,
      :satellite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about endpoints.
    #
    # @!attribute [rw] role_arn
    #   ARN to a role needed for connecting streams to your instances.
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   The security groups to attach to the elastic network interfaces.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_ids
    #   A list of subnets where AWS Ground Station places elastic network
    #   interfaces to send streams to your instances.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SecurityDetails AWS API Documentation
    #
    class SecurityDetails < Struct.new(
      :role_arn,
      :security_group_ids,
      :subnet_ids)
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
    # @!attribute [rw] config_details
    #   Additional details for a `Config`, if type is `dataflow-endpoint` or
    #   `antenna-downlink-demod-decode`
    #   @return [Types::ConfigDetails]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] dataflow_source_region
    #   Region of a dataflow source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/Source AWS API Documentation
    #
    class Source < Struct.new(
      :config_details,
      :config_id,
      :config_type,
      :dataflow_source_region)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes a spectral `Config`.
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
    # @!attribute [rw] center_frequency
    #   Center frequency of a spectral `Config`. Valid values are between
    #   2200 to 2300 MHz and 7750 to 8400 MHz for downlink and 2025 to 2120
    #   MHz for uplink.
    #   @return [Types::Frequency]
    #
    # @!attribute [rw] polarization
    #   Polarization of a spectral `Config`. Capturing both `"RIGHT_HAND"`
    #   and `"LEFT_HAND"` polarization requires two separate configs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/SpectrumConfig AWS API Documentation
    #
    class SpectrumConfig < Struct.new(
      :bandwidth,
      :center_frequency,
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
    #   The valid time range for the TLE. Gaps or overlap are not permitted.
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
    # @!attribute [rw] s3_object
    #   Identifies the S3 object to be used as the ephemeris.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] tle_data
    #   The data for a TLE ephemeris, supplied directly in the request
    #   rather than through an S3 object.
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

    # A time range with a start and end time.
    #
    # @!attribute [rw] end_time
    #   Time in UTC at which the time range ends.
    #   @return [Time]
    #
    # @!attribute [rw] start_time
    #   Time in UTC at which the time range starts.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :end_time,
      :start_time)
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
    # @!attribute [rw] aggregate_status
    #   Aggregate status for agent.
    #   @return [Types::AggregateStatus]
    #
    # @!attribute [rw] component_statuses
    #   List of component statuses for agent.
    #   @return [Array<Types::ComponentStatusData>]
    #
    # @!attribute [rw] task_id
    #   GUID of agent task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateAgentStatusRequest AWS API Documentation
    #
    class UpdateAgentStatusRequest < Struct.new(
      :agent_id,
      :aggregate_status,
      :component_statuses,
      :task_id)
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

    # @!attribute [rw] config_data
    #   Parameters of a `Config`.
    #   @return [Types::ConfigTypeData]
    #
    # @!attribute [rw] config_id
    #   UUID of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] config_type
    #   Type of a `Config`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateConfigRequest AWS API Documentation
    #
    class UpdateConfigRequest < Struct.new(
      :config_data,
      :config_id,
      :config_type,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] enabled
    #   Whether the ephemeris is enabled or not. Changing this value will
    #   not require the ephemeris to be re-validated.
    #   @return [Boolean]
    #
    # @!attribute [rw] ephemeris_id
    #   The AWS Ground Station ephemeris ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A name string associated with the ephemeris. Used as a
    #   human-readable identifier for the ephemeris.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   Customer-provided priority score to establish the order in which
    #   overlapping ephemerides should be used.
    #
    #   The default for customer-provided ephemeris priority is 1, and
    #   higher numbers take precedence.
    #
    #   Priority must be 1 or greater
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateEphemerisRequest AWS API Documentation
    #
    class UpdateEphemerisRequest < Struct.new(
      :enabled,
      :ephemeris_id,
      :name,
      :priority)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] contact_post_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Integer]
    #
    # @!attribute [rw] contact_pre_pass_duration_seconds
    #   Amount of time after a contact ends that you’d like to receive a
    #   CloudWatch event indicating the pass has finished.
    #   @return [Integer]
    #
    # @!attribute [rw] dataflow_edges
    #   A list of lists of ARNs. Each list of ARNs is an edge, with a *from*
    #   `Config` and a *to* `Config`.
    #   @return [Array<Array<String>>]
    #
    # @!attribute [rw] minimum_viable_contact_duration_seconds
    #   Smallest amount of time in seconds that you’d like to see for an
    #   available contact. AWS Ground Station will not present you with
    #   contacts shorter than this duration.
    #   @return [Integer]
    #
    # @!attribute [rw] mission_profile_id
    #   UUID of a mission profile.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of a mission profile.
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
    # @!attribute [rw] tracking_config_arn
    #   ARN of a tracking `Config`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UpdateMissionProfileRequest AWS API Documentation
    #
    class UpdateMissionProfileRequest < Struct.new(
      :contact_post_pass_duration_seconds,
      :contact_pre_pass_duration_seconds,
      :dataflow_edges,
      :minimum_viable_contact_duration_seconds,
      :mission_profile_id,
      :name,
      :streams_kms_key,
      :streams_kms_role,
      :tracking_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an uplink echo `Config`.
    #
    # Parameters from the `AntennaUplinkConfig`, corresponding to the
    # specified `AntennaUplinkConfigArn`, are used when this
    # `UplinkEchoConfig` is used in a contact.
    #
    # @!attribute [rw] antenna_uplink_config_arn
    #   ARN of an uplink `Config`.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Whether or not an uplink `Config` is enabled.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/UplinkEchoConfig AWS API Documentation
    #
    class UplinkEchoConfig < Struct.new(
      :antenna_uplink_config_arn,
      :enabled)
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
