# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GroundStation
  module Types

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
    # @note When making an API call, you may pass AntennaDownlinkConfig
    #   data as a hash:
    #
    #       {
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       }
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
    # @note When making an API call, you may pass AntennaDownlinkDemodDecodeConfig
    #   data as a hash:
    #
    #       {
    #         decode_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         demodulation_config: { # required
    #           unvalidated_json: "JsonString", # required
    #         },
    #         spectrum_config: { # required
    #           bandwidth: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #       }
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
    # @note When making an API call, you may pass AntennaUplinkConfig
    #   data as a hash:
    #
    #       {
    #         spectrum_config: { # required
    #           center_frequency: { # required
    #             units: "GHz", # required, accepts GHz, MHz, kHz
    #             value: 1.0, # required
    #           },
    #           polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #         },
    #         target_eirp: { # required
    #           units: "dBW", # required, accepts dBW
    #           value: 1.0, # required
    #         },
    #         transmit_disabled: false,
    #       }
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

    # @note When making an API call, you may pass CancelContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "String", # required
    #       }
    #
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

    # Details for certain `Config` object types in a contact.
    #
    # @!attribute [rw] antenna_demod_decode_details
    #   Details for antenna demod decode `Config` in a contact.
    #   @return [Types::AntennaDemodDecodeDetails]
    #
    # @!attribute [rw] endpoint_details
    #   Information about the endpoint details.
    #   @return [Types::EndpointDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/ConfigDetails AWS API Documentation
    #
    class ConfigDetails < Struct.new(
      :antenna_demod_decode_details,
      :endpoint_details)
      SENSITIVE = []
      include Aws::Structure
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
    # @note When making an API call, you may pass ConfigTypeData
    #   data as a hash:
    #
    #       {
    #         antenna_downlink_config: {
    #           spectrum_config: { # required
    #             bandwidth: { # required
    #               units: "GHz", # required, accepts GHz, MHz, kHz
    #               value: 1.0, # required
    #             },
    #             center_frequency: { # required
    #               units: "GHz", # required, accepts GHz, MHz, kHz
    #               value: 1.0, # required
    #             },
    #             polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #           },
    #         },
    #         antenna_downlink_demod_decode_config: {
    #           decode_config: { # required
    #             unvalidated_json: "JsonString", # required
    #           },
    #           demodulation_config: { # required
    #             unvalidated_json: "JsonString", # required
    #           },
    #           spectrum_config: { # required
    #             bandwidth: { # required
    #               units: "GHz", # required, accepts GHz, MHz, kHz
    #               value: 1.0, # required
    #             },
    #             center_frequency: { # required
    #               units: "GHz", # required, accepts GHz, MHz, kHz
    #               value: 1.0, # required
    #             },
    #             polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #           },
    #         },
    #         antenna_uplink_config: {
    #           spectrum_config: { # required
    #             center_frequency: { # required
    #               units: "GHz", # required, accepts GHz, MHz, kHz
    #               value: 1.0, # required
    #             },
    #             polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #           },
    #           target_eirp: { # required
    #             units: "dBW", # required, accepts dBW
    #             value: 1.0, # required
    #           },
    #           transmit_disabled: false,
    #         },
    #         dataflow_endpoint_config: {
    #           dataflow_endpoint_name: "String", # required
    #           dataflow_endpoint_region: "String",
    #         },
    #         tracking_config: {
    #           autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #         },
    #         uplink_echo_config: {
    #           antenna_uplink_config_arn: "ConfigArn", # required
    #           enabled: false, # required
    #         },
    #       }
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
      :tracking_config,
      :uplink_echo_config)
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
    #   End time of a contact.
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
    #   Start time of a contact.
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

    # @note When making an API call, you may pass CreateConfigRequest
    #   data as a hash:
    #
    #       {
    #         config_data: { # required
    #           antenna_downlink_config: {
    #             spectrum_config: { # required
    #               bandwidth: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #           },
    #           antenna_downlink_demod_decode_config: {
    #             decode_config: { # required
    #               unvalidated_json: "JsonString", # required
    #             },
    #             demodulation_config: { # required
    #               unvalidated_json: "JsonString", # required
    #             },
    #             spectrum_config: { # required
    #               bandwidth: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #           },
    #           antenna_uplink_config: {
    #             spectrum_config: { # required
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #             target_eirp: { # required
    #               units: "dBW", # required, accepts dBW
    #               value: 1.0, # required
    #             },
    #             transmit_disabled: false,
    #           },
    #           dataflow_endpoint_config: {
    #             dataflow_endpoint_name: "String", # required
    #             dataflow_endpoint_region: "String",
    #           },
    #           tracking_config: {
    #             autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #           },
    #           uplink_echo_config: {
    #             antenna_uplink_config_arn: "ConfigArn", # required
    #             enabled: false, # required
    #           },
    #         },
    #         name: "SafeName", # required
    #         tags: {
    #           "String" => "String",
    #         },
    #       }
    #
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

    # @note When making an API call, you may pass CreateDataflowEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_details: [ # required
    #           {
    #             endpoint: {
    #               address: {
    #                 name: "String", # required
    #                 port: 1, # required
    #               },
    #               mtu: 1,
    #               name: "SafeName",
    #               status: "created", # accepts created, creating, deleted, deleting, failed
    #             },
    #             security_details: {
    #               role_arn: "RoleArn", # required
    #               security_group_ids: ["String"], # required
    #               subnet_ids: ["String"], # required
    #             },
    #           },
    #         ],
    #         tags: {
    #           "String" => "String",
    #         },
    #       }
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
      :endpoint_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateMissionProfileRequest
    #   data as a hash:
    #
    #       {
    #         contact_post_pass_duration_seconds: 1,
    #         contact_pre_pass_duration_seconds: 1,
    #         dataflow_edges: [ # required
    #           ["ConfigArn"],
    #         ],
    #         minimum_viable_contact_duration_seconds: 1, # required
    #         name: "SafeName", # required
    #         tags: {
    #           "String" => "String",
    #         },
    #         tracking_config_arn: "ConfigArn", # required
    #       }
    #
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
    # @note When making an API call, you may pass DataflowEndpoint
    #   data as a hash:
    #
    #       {
    #         address: {
    #           name: "String", # required
    #           port: 1, # required
    #         },
    #         mtu: 1,
    #         name: "SafeName",
    #         status: "created", # accepts created, creating, deleted, deleting, failed
    #       }
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
    # @note When making an API call, you may pass DataflowEndpointConfig
    #   data as a hash:
    #
    #       {
    #         dataflow_endpoint_name: "String", # required
    #         dataflow_endpoint_region: "String",
    #       }
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
    # @note When making an API call, you may pass DecodeConfig
    #   data as a hash:
    #
    #       {
    #         unvalidated_json: "JsonString", # required
    #       }
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

    # @note When making an API call, you may pass DeleteConfigRequest
    #   data as a hash:
    #
    #       {
    #         config_id: "String", # required
    #         config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #       }
    #
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

    # @note When making an API call, you may pass DeleteDataflowEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataflow_endpoint_group_id: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass DeleteMissionProfileRequest
    #   data as a hash:
    #
    #       {
    #         mission_profile_id: "String", # required
    #       }
    #
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
    # @note When making an API call, you may pass DemodulationConfig
    #   data as a hash:
    #
    #       {
    #         unvalidated_json: "JsonString", # required
    #       }
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

    # @note When making an API call, you may pass DescribeContactRequest
    #   data as a hash:
    #
    #       {
    #         contact_id: "String", # required
    #       }
    #
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
    #   End time of a contact.
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
    #   Start time of a contact.
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

    # Object that represents EIRP.
    #
    # @note When making an API call, you may pass Eirp
    #   data as a hash:
    #
    #       {
    #         units: "dBW", # required, accepts dBW
    #         value: 1.0, # required
    #       }
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
    # @note When making an API call, you may pass EndpointDetails
    #   data as a hash:
    #
    #       {
    #         endpoint: {
    #           address: {
    #             name: "String", # required
    #             port: 1, # required
    #           },
    #           mtu: 1,
    #           name: "SafeName",
    #           status: "created", # accepts created, creating, deleted, deleting, failed
    #         },
    #         security_details: {
    #           role_arn: "RoleArn", # required
    #           security_group_ids: ["String"], # required
    #           subnet_ids: ["String"], # required
    #         },
    #       }
    #
    # @!attribute [rw] endpoint
    #   A dataflow endpoint.
    #   @return [Types::DataflowEndpoint]
    #
    # @!attribute [rw] security_details
    #   Endpoint security details.
    #   @return [Types::SecurityDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/groundstation-2019-05-23/EndpointDetails AWS API Documentation
    #
    class EndpointDetails < Struct.new(
      :endpoint,
      :security_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object that describes the frequency.
    #
    # @note When making an API call, you may pass Frequency
    #   data as a hash:
    #
    #       {
    #         units: "GHz", # required, accepts GHz, MHz, kHz
    #         value: 1.0, # required
    #       }
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
    # @note When making an API call, you may pass FrequencyBandwidth
    #   data as a hash:
    #
    #       {
    #         units: "GHz", # required, accepts GHz, MHz, kHz
    #         value: 1.0, # required
    #       }
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

    # @note When making an API call, you may pass GetConfigRequest
    #   data as a hash:
    #
    #       {
    #         config_id: "String", # required
    #         config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #       }
    #
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

    # @note When making an API call, you may pass GetDataflowEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         dataflow_endpoint_group_id: "String", # required
    #       }
    #
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
      :dataflow_endpoint_group_arn,
      :dataflow_endpoint_group_id,
      :endpoints_details,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetMinuteUsageRequest
    #   data as a hash:
    #
    #       {
    #         month: 1, # required
    #         year: 1, # required
    #       }
    #
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

    # @note When making an API call, you may pass GetMissionProfileRequest
    #   data as a hash:
    #
    #       {
    #         mission_profile_id: "String", # required
    #       }
    #
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
      :tags,
      :tracking_config_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSatelliteRequest
    #   data as a hash:
    #
    #       {
    #         satellite_id: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass ListConfigsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListContactsRequest
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now, # required
    #         ground_station: "String",
    #         max_results: 1,
    #         mission_profile_arn: "MissionProfileArn",
    #         next_token: "String",
    #         satellite_arn: "satelliteArn",
    #         start_time: Time.now, # required
    #         status_list: ["AVAILABLE"], # required, accepts AVAILABLE, AWS_CANCELLED, AWS_FAILED, CANCELLED, CANCELLING, COMPLETED, FAILED, FAILED_TO_SCHEDULE, PASS, POSTPASS, PREPASS, SCHEDULED, SCHEDULING
    #       }
    #
    # @!attribute [rw] end_time
    #   End time of a contact.
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
    #   Start time of a contact.
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

    # @note When making an API call, you may pass ListDataflowEndpointGroupsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListGroundStationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #         satellite_id: "String",
    #       }
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

    # @note When making an API call, you may pass ListMissionProfilesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListSatellitesRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "String",
    #       }
    #
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

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #       }
    #
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

    # @note When making an API call, you may pass ReserveContactRequest
    #   data as a hash:
    #
    #       {
    #         end_time: Time.now, # required
    #         ground_station: "String", # required
    #         mission_profile_arn: "MissionProfileArn", # required
    #         satellite_arn: "satelliteArn", # required
    #         start_time: Time.now, # required
    #         tags: {
    #           "String" => "String",
    #         },
    #       }
    #
    # @!attribute [rw] end_time
    #   End time of a contact.
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
    #   Start time of a contact.
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

    # Item in a list of satellites.
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
      :ground_stations,
      :norad_satellite_id,
      :satellite_arn,
      :satellite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about endpoints.
    #
    # @note When making an API call, you may pass SecurityDetails
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleArn", # required
    #         security_group_ids: ["String"], # required
    #         subnet_ids: ["String"], # required
    #       }
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
    # @note When making an API call, you may pass SocketAddress
    #   data as a hash:
    #
    #       {
    #         name: "String", # required
    #         port: 1, # required
    #       }
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
    # @note When making an API call, you may pass SpectrumConfig
    #   data as a hash:
    #
    #       {
    #         bandwidth: { # required
    #           units: "GHz", # required, accepts GHz, MHz, kHz
    #           value: 1.0, # required
    #         },
    #         center_frequency: { # required
    #           units: "GHz", # required, accepts GHz, MHz, kHz
    #           value: 1.0, # required
    #         },
    #         polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #       }
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

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tags: { # required
    #           "String" => "String",
    #         },
    #       }
    #
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

    # Object that determines whether tracking should be used during a
    # contact executed with this `Config` in the mission profile.
    #
    # @note When making an API call, you may pass TrackingConfig
    #   data as a hash:
    #
    #       {
    #         autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #       }
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

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateConfigRequest
    #   data as a hash:
    #
    #       {
    #         config_data: { # required
    #           antenna_downlink_config: {
    #             spectrum_config: { # required
    #               bandwidth: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #           },
    #           antenna_downlink_demod_decode_config: {
    #             decode_config: { # required
    #               unvalidated_json: "JsonString", # required
    #             },
    #             demodulation_config: { # required
    #               unvalidated_json: "JsonString", # required
    #             },
    #             spectrum_config: { # required
    #               bandwidth: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #           },
    #           antenna_uplink_config: {
    #             spectrum_config: { # required
    #               center_frequency: { # required
    #                 units: "GHz", # required, accepts GHz, MHz, kHz
    #                 value: 1.0, # required
    #               },
    #               polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #             },
    #             target_eirp: { # required
    #               units: "dBW", # required, accepts dBW
    #               value: 1.0, # required
    #             },
    #             transmit_disabled: false,
    #           },
    #           dataflow_endpoint_config: {
    #             dataflow_endpoint_name: "String", # required
    #             dataflow_endpoint_region: "String",
    #           },
    #           tracking_config: {
    #             autotrack: "PREFERRED", # required, accepts PREFERRED, REMOVED, REQUIRED
    #           },
    #           uplink_echo_config: {
    #             antenna_uplink_config_arn: "ConfigArn", # required
    #             enabled: false, # required
    #           },
    #         },
    #         config_id: "String", # required
    #         config_type: "antenna-downlink", # required, accepts antenna-downlink, antenna-downlink-demod-decode, antenna-uplink, dataflow-endpoint, tracking, uplink-echo
    #         name: "SafeName", # required
    #       }
    #
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

    # @note When making an API call, you may pass UpdateMissionProfileRequest
    #   data as a hash:
    #
    #       {
    #         contact_post_pass_duration_seconds: 1,
    #         contact_pre_pass_duration_seconds: 1,
    #         dataflow_edges: [
    #           ["ConfigArn"],
    #         ],
    #         minimum_viable_contact_duration_seconds: 1,
    #         mission_profile_id: "String", # required
    #         name: "SafeName",
    #         tracking_config_arn: "ConfigArn",
    #       }
    #
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
    # @note When making an API call, you may pass UplinkEchoConfig
    #   data as a hash:
    #
    #       {
    #         antenna_uplink_config_arn: "ConfigArn", # required
    #         enabled: false, # required
    #       }
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
    # @note When making an API call, you may pass UplinkSpectrumConfig
    #   data as a hash:
    #
    #       {
    #         center_frequency: { # required
    #           units: "GHz", # required, accepts GHz, MHz, kHz
    #           value: 1.0, # required
    #         },
    #         polarization: "LEFT_HAND", # accepts LEFT_HAND, NONE, RIGHT_HAND
    #       }
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
