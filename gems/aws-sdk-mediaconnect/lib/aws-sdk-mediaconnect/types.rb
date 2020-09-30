# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MediaConnect
  module Types

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputs420Exception AWS API Documentation
    #
    class AddFlowOutputs420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds outputs to an existing flow. You can create up to 50 outputs per
    # flow.
    #
    # @note When making an API call, you may pass AddFlowOutputsRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         outputs: [ # required
    #           {
    #             cidr_allow_list: ["__string"],
    #             description: "__string",
    #             destination: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             max_latency: 1,
    #             name: "__string",
    #             port: 1,
    #             protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #             remote_id: "__string",
    #             smoothing_latency: 1,
    #             stream_id: "__string",
    #             vpc_interface_attachment: {
    #               vpc_interface_name: "__string",
    #             },
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   A list of outputs that you want to add.
    #   @return [Array<Types::AddOutputRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputsRequest AWS API Documentation
    #
    class AddFlowOutputsRequest < Struct.new(
      :flow_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful AddOutput request. The response includes
    # the details of the newly added outputs.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these outputs were added to.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The details of the newly added outputs.
    #   @return [Array<Types::Output>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowOutputsResponse AWS API Documentation
    #
    class AddFlowOutputsResponse < Struct.new(
      :flow_arn,
      :outputs)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds sources to an existing flow.
    #
    # @note When making an API call, you may pass AddFlowSourcesRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         sources: [ # required
    #           {
    #             decryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             description: "__string",
    #             entitlement_arn: "__string",
    #             ingest_port: 1,
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             name: "__string",
    #             protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #             stream_id: "__string",
    #             vpc_interface_name: "__string",
    #             whitelist_cidr: "__string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   A list of sources that you want to add.
    #   @return [Array<Types::SetSourceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSourcesRequest AWS API Documentation
    #
    class AddFlowSourcesRequest < Struct.new(
      :flow_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful AddFlowSources request. The response
    # includes the details of the newly added sources.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these sources were added to.
    #   @return [String]
    #
    # @!attribute [rw] sources
    #   The details of the newly added sources.
    #   @return [Array<Types::Source>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowSourcesResponse AWS API Documentation
    #
    class AddFlowSourcesResponse < Struct.new(
      :flow_arn,
      :sources)
      SENSITIVE = []
      include Aws::Structure
    end

    # Adds VPC interfaces to an existing flow.
    #
    # @note When making an API call, you may pass AddFlowVpcInterfacesRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         vpc_interfaces: [ # required
    #           {
    #             name: "__string", # required
    #             role_arn: "__string", # required
    #             security_group_ids: ["__string"], # required
    #             subnet_id: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   A list of VPC interfaces that you want to add.
    #   @return [Array<Types::VpcInterfaceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfacesRequest AWS API Documentation
    #
    class AddFlowVpcInterfacesRequest < Struct.new(
      :flow_arn,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful AddFlowVpcInterfaces request. The response
    # includes the details of the newly added VPC interfaces.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these VPC interfaces were added to.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   The details of the newly added VPC interfaces.
    #   @return [Array<Types::VpcInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddFlowVpcInterfacesResponse AWS API Documentation
    #
    class AddFlowVpcInterfacesResponse < Struct.new(
      :flow_arn,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The output that you want to add to this flow.
    #
    # @note When making an API call, you may pass AddOutputRequest
    #   data as a hash:
    #
    #       {
    #         cidr_allow_list: ["__string"],
    #         description: "__string",
    #         destination: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1,
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         remote_id: "__string",
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the output. This description appears only on the
    #   AWS Elemental MediaConnect console and will not be seen by the end
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The IP address from which video will be sent to output destinations.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key).
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the output. This value must be unique within the current
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the output.
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull output stream.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddOutputRequest AWS API Documentation
    #
    class AddOutputRequest < Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :max_latency,
      :name,
      :port,
      :protocol,
      :remote_id,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlow420Exception AWS API Documentation
    #
    class CreateFlow420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a new flow. The request must include one source. The request
    # optionally can include outputs (up to 50) and one entitlement.
    #
    # @note When making an API call, you may pass CreateFlowRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "__string",
    #         entitlements: [
    #           {
    #             data_transfer_subscriber_fee_percent: 1,
    #             description: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #             name: "__string",
    #             subscribers: ["__string"], # required
    #           },
    #         ],
    #         name: "__string", # required
    #         outputs: [
    #           {
    #             cidr_allow_list: ["__string"],
    #             description: "__string",
    #             destination: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             max_latency: 1,
    #             name: "__string",
    #             port: 1,
    #             protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #             remote_id: "__string",
    #             smoothing_latency: 1,
    #             stream_id: "__string",
    #             vpc_interface_attachment: {
    #               vpc_interface_name: "__string",
    #             },
    #           },
    #         ],
    #         source: {
    #           decryption: {
    #             algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #             constant_initialization_vector: "__string",
    #             device_id: "__string",
    #             key_type: "speke", # accepts speke, static-key
    #             region: "__string",
    #             resource_id: "__string",
    #             role_arn: "__string", # required
    #             secret_arn: "__string",
    #             url: "__string",
    #           },
    #           description: "__string",
    #           entitlement_arn: "__string",
    #           ingest_port: 1,
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           name: "__string",
    #           protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #           stream_id: "__string",
    #           vpc_interface_name: "__string",
    #           whitelist_cidr: "__string",
    #         },
    #         source_failover_config: {
    #           recovery_window: 1,
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #         sources: [
    #           {
    #             decryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             description: "__string",
    #             entitlement_arn: "__string",
    #             ingest_port: 1,
    #             max_bitrate: 1,
    #             max_latency: 1,
    #             name: "__string",
    #             protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #             stream_id: "__string",
    #             vpc_interface_name: "__string",
    #             whitelist_cidr: "__string",
    #           },
    #         ],
    #         vpc_interfaces: [
    #           {
    #             name: "__string", # required
    #             role_arn: "__string", # required
    #             security_group_ids: ["__string"], # required
    #             subnet_id: "__string", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current AWS
    #   Region.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   The entitlements that you want to grant on a flow.
    #   @return [Array<Types::GrantEntitlementRequest>]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs that you want to add to this flow.
    #   @return [Array<Types::AddOutputRequest>]
    #
    # @!attribute [rw] source
    #   The settings for the source of the flow.
    #   @return [Types::SetSourceRequest]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   @return [Array<Types::SetSourceRequest>]
    #
    # @!attribute [rw] vpc_interfaces
    #   The VPC interfaces you want on the flow.
    #   @return [Array<Types::VpcInterfaceRequest>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlowRequest AWS API Documentation
    #
    class CreateFlowRequest < Struct.new(
      :availability_zone,
      :entitlements,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful CreateFlow request.
    #
    # @!attribute [rw] flow
    #   The settings for a flow, including its source, outputs, and
    #   entitlements.
    #   @return [Types::Flow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlowResponse AWS API Documentation
    #
    class CreateFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlowRequest AWS API Documentation
    #
    class DeleteFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DeleteFlow request.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that was deleted.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the DeleteFlow process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DeleteFlowResponse AWS API Documentation
    #
    class DeleteFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowRequest AWS API Documentation
    #
    class DescribeFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeFlow request.
    #
    # @!attribute [rw] flow
    #   The settings for a flow, including its source, outputs, and
    #   entitlements.
    #   @return [Types::Flow]
    #
    # @!attribute [rw] messages
    #   Messages that provide the state of the flow.
    #   @return [Types::Messages]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeFlowResponse AWS API Documentation
    #
    class DescribeFlowResponse < Struct.new(
      :flow,
      :messages)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOfferingRequest
    #   data as a hash:
    #
    #       {
    #         offering_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] offering_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOfferingRequest AWS API Documentation
    #
    class DescribeOfferingRequest < Struct.new(
      :offering_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeOffering request.
    #
    # @!attribute [rw] offering
    #   A savings plan that reserves a certain amount of outbound bandwidth
    #   usage at a discounted rate each month over a period of time.
    #   @return [Types::Offering]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeOfferingResponse AWS API Documentation
    #
    class DescribeOfferingResponse < Struct.new(
      :offering)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservationRequest
    #   data as a hash:
    #
    #       {
    #         reservation_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] reservation_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservationRequest AWS API Documentation
    #
    class DescribeReservationRequest < Struct.new(
      :reservation_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful DescribeReservation request.
    #
    # @!attribute [rw] reservation
    #   A pricing agreement for a discounted rate for a specific outbound
    #   bandwidth that your MediaConnect account will use each month over a
    #   specific time period. The discounted rate in the reservation applies
    #   to outbound bandwidth for all flows from your account until your
    #   account reaches the amount of bandwidth in your reservation. If you
    #   use more outbound bandwidth than the agreed upon amount in a single
    #   month, the overage is charged at the on-demand rate.
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/DescribeReservationResponse AWS API Documentation
    #
    class DescribeReservationResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @note When making an API call, you may pass Encryption
    #   data as a hash:
    #
    #       {
    #         algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #         constant_initialization_vector: "__string",
    #         device_id: "__string",
    #         key_type: "speke", # accepts speke, static-key
    #         region: "__string",
    #         resource_id: "__string",
    #         role_arn: "__string", # required
    #         secret_arn: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   to be used with the key for encrypting content. This parameter is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The value of one of the devices that you configured with your
    #   digital rights management (DRM) platform key provider. This
    #   parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region that the API Gateway proxy endpoint was created in.
    #   This parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   An identifier for the content. The service sends this value to the
    #   key server to identify the current endpoint. The resource ID is also
    #   known as the content ID. This parameter is required for SPEKE
    #   encryption and is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   AWS Elemental MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that you created in AWS Secrets Manager to
    #   store the encryption key. This parameter is required for static key
    #   encryption and is not valid for SPEKE encryption.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL from the API Gateway proxy that you set up to talk to your
    #   key server. This parameter is required for SPEKE encryption and is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a flow entitlement.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output that is
    #   associated with this entitlement.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether the entitlement is enabled.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The AWS account IDs that you want to share your content with. The
    #   receiving accounts (subscribers) will be allowed to create their own
    #   flow using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Entitlement AWS API Documentation
    #
    class Entitlement < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :name,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for source failover
    #
    # @note When making an API call, you may pass FailoverConfig
    #   data as a hash:
    #
    #       {
    #         recovery_window: 1,
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] recovery_window
    #   Search window time to look for dash-7 packets
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/FailoverConfig AWS API Documentation
    #
    class FailoverConfig < Struct.new(
      :recovery_window,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a flow, including its source, outputs, and
    # entitlements.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that you want to create the flow in. These
    #   options are limited to the Availability Zones within the current
    #   AWS.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow. This value is not used or seen outside of
    #   the current AWS Elemental MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] egress_ip
    #   The IP address from which video will be sent to output destinations.
    #   @return [String]
    #
    # @!attribute [rw] entitlements
    #   The entitlements in this flow.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] flow_arn
    #   The Amazon Resource Name (ARN), a unique identifier for any AWS
    #   resource, of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] outputs
    #   The outputs in this flow.
    #   @return [Array<Types::Output>]
    #
    # @!attribute [rw] source
    #   The settings for the source of the flow.
    #   @return [Types::Source]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover
    #   @return [Types::FailoverConfig]
    #
    # @!attribute [rw] sources
    #   @return [Array<Types::Source>]
    #
    # @!attribute [rw] status
    #   The current status of the flow.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interfaces
    #   The VPC Interfaces for this flow.
    #   @return [Array<Types::VpcInterface>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Flow AWS API Documentation
    #
    class Flow < Struct.new(
      :availability_zone,
      :description,
      :egress_ip,
      :entitlements,
      :flow_arn,
      :name,
      :outputs,
      :source,
      :source_failover_config,
      :sources,
      :status,
      :vpc_interfaces)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entitlements that you want to grant on a flow.
    #
    # @note When making an API call, you may pass GrantEntitlementRequest
    #   data as a hash:
    #
    #       {
    #         data_transfer_subscriber_fee_percent: 1,
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         name: "__string",
    #         subscribers: ["__string"], # required
    #       }
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the entitlement. This description appears only on
    #   the AWS Elemental MediaConnect console and will not be seen by the
    #   subscriber or end user.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output that is
    #   associated with this entitlement.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether the new entitlement should be enabled or
    #   disabled as soon as it is created. If you don’t specify the
    #   entitlementStatus field in your request, MediaConnect sets it to
    #   ENABLED.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the entitlement. This value must be unique within the
    #   current flow.
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The AWS account IDs that you want to share your content with. The
    #   receiving accounts (subscribers) will be allowed to create their own
    #   flows using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantEntitlementRequest AWS API Documentation
    #
    class GrantEntitlementRequest < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :encryption,
      :entitlement_status,
      :name,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlements420Exception AWS API Documentation
    #
    class GrantFlowEntitlements420Exception < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Grants an entitlement on a flow.
    #
    # @note When making an API call, you may pass GrantFlowEntitlementsRequest
    #   data as a hash:
    #
    #       {
    #         entitlements: [ # required
    #           {
    #             data_transfer_subscriber_fee_percent: 1,
    #             description: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               constant_initialization_vector: "__string",
    #               device_id: "__string",
    #               key_type: "speke", # accepts speke, static-key
    #               region: "__string",
    #               resource_id: "__string",
    #               role_arn: "__string", # required
    #               secret_arn: "__string",
    #               url: "__string",
    #             },
    #             entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #             name: "__string",
    #             subscribers: ["__string"], # required
    #           },
    #         ],
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] entitlements
    #   The list of entitlements that you want to grant.
    #   @return [Array<Types::GrantEntitlementRequest>]
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlementsRequest AWS API Documentation
    #
    class GrantFlowEntitlementsRequest < Struct.new(
      :entitlements,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entitlements that were just granted.
    #
    # @!attribute [rw] entitlements
    #   The entitlements that were just granted.
    #   @return [Array<Types::Entitlement>]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that these entitlements were granted to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/GrantFlowEntitlementsResponse AWS API Documentation
    #
    class GrantFlowEntitlementsResponse < Struct.new(
      :entitlements,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/InternalServerErrorException AWS API Documentation
    #
    class InternalServerErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEntitlementsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlementsRequest AWS API Documentation
    #
    class ListEntitlementsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListEntitlements request. The response
    # includes the ARN of each entitlement, the name of the associated flow,
    # and the NextToken to use in a subsequent ListEntitlements request.
    #
    # @!attribute [rw] entitlements
    #   A list of entitlements that have been granted to you from other AWS
    #   accounts.
    #   @return [Array<Types::ListedEntitlement>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results that you want to
    #   see. For example, you submit a ListEntitlements request with
    #   MaxResults set at 5. The service returns the first batch of results
    #   (up to 5) and a NextToken value. To see the next batch of results,
    #   you can submit the ListEntitlements request a second time and
    #   specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListEntitlementsResponse AWS API Documentation
    #
    class ListEntitlementsResponse < Struct.new(
      :entitlements,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListFlowsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlowsRequest AWS API Documentation
    #
    class ListFlowsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListFlows request. The response includes
    # flow summaries and the NextToken to use in a subsequent ListFlows
    # request.
    #
    # @!attribute [rw] flows
    #   A list of flow summaries.
    #   @return [Array<Types::ListedFlow>]
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results that you want to
    #   see. For example, you submit a ListFlows request with MaxResults set
    #   at 5. The service returns the first batch of results (up to 5) and a
    #   NextToken value. To see the next batch of results, you can submit
    #   the ListFlows request a second time and specify the NextToken value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListFlowsResponse AWS API Documentation
    #
    class ListFlowsResponse < Struct.new(
      :flows,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListOfferingsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferingsRequest AWS API Documentation
    #
    class ListOfferingsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListOfferings request. The response
    # includes the details of each offering that your account is eligible
    # for. The response includes the following information for each
    # offering: description, duration, outbound bandwidth, price, Amazon
    # Resource Name (ARN), and the NextToken to use in a subsequent
    # ListOfferings request.
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results that you want to
    #   see. For example, you submit a ListOfferings request with MaxResults
    #   set at 5. The service returns the first batch of results (up to 5)
    #   and a NextToken value. To see the next batch of results, you can
    #   submit the ListOfferings request a second time and specify the
    #   NextToken value.
    #   @return [String]
    #
    # @!attribute [rw] offerings
    #   A list of offerings that are available to this account in the
    #   current AWS Region.
    #   @return [Array<Types::Offering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListOfferingsResponse AWS API Documentation
    #
    class ListOfferingsResponse < Struct.new(
      :next_token,
      :offerings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListReservationsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "__string",
    #       }
    #
    # @!attribute [rw] max_results
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservationsRequest AWS API Documentation
    #
    class ListReservationsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful ListReservations request. The response
    # includes the details of each offering that your account is eligible
    # for. The response includes the following information for each
    # offering: description, duration, outbound bandwidth, price, Amazon
    # Resource Name (ARN), and the NextToken to use in a subsequent
    # ListOfferings request.
    #
    # @!attribute [rw] next_token
    #   The token that identifies which batch of results that you want to
    #   see. For example, you submit a ListReservations request with
    #   MaxResults set at 5. The service returns the first batch of results
    #   (up to 5) and a NextToken value. To see the next batch of results,
    #   you can submit the ListReservations request a second time and
    #   specify the NextToken value.
    #   @return [String]
    #
    # @!attribute [rw] reservations
    #   A list of all reservations that have been purchased by this account
    #   in the current AWS Region.
    #   @return [Array<Types::Reservation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListReservationsResponse AWS API Documentation
    #
    class ListReservationsResponse < Struct.new(
      :next_token,
      :reservations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags for the resource.
    #
    # @!attribute [rw] tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # An entitlement that has been granted to you from other AWS accounts.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_name
    #   The name of the entitlement.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedEntitlement AWS API Documentation
    #
    class ListedEntitlement < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :entitlement_arn,
      :entitlement_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides a summary of a flow, including its ARN, Availability Zone,
    # and source type.
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone that the flow was created in.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the flow.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source. This value is either owned (originated somewhere
    #   other than an AWS Elemental MediaConnect flow owned by another AWS
    #   account) or entitled (originated at an AWS Elemental MediaConnect
    #   flow owned by another AWS account).
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the flow.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ListedFlow AWS API Documentation
    #
    class ListedFlow < Struct.new(
      :availability_zone,
      :description,
      :flow_arn,
      :name,
      :source_type,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Messages that provide the state of the flow.
    #
    # @!attribute [rw] errors
    #   A list of errors that might have been generated from processes on
    #   this flow.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Messages AWS API Documentation
    #
    class Messages < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/NotFoundException AWS API Documentation
    #
    class NotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A savings plan that reserves a certain amount of outbound bandwidth
    # usage at a discounted rate each month over a period of time.
    #
    # @!attribute [rw] currency_code
    #   The type of currency that is used for billing. The currencyCode used
    #   for all reservations is US dollars.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time that your reservation would be active.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   The unit of measurement for the duration of the offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   A description of the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_per_unit
    #   The cost of a single unit. This value, in combination with
    #   priceUnits, makes up the rate.
    #   @return [String]
    #
    # @!attribute [rw] price_units
    #   The unit of measurement that is used for billing. This value, in
    #   combination with pricePerUnit, makes up the rate.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A definition of the amount of outbound bandwidth that you would be
    #   reserving if you purchase the offering.
    #   @return [Types::ResourceSpecification]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Offering AWS API Documentation
    #
    class Offering < Struct.new(
      :currency_code,
      :duration,
      :duration_units,
      :offering_arn,
      :offering_description,
      :price_per_unit,
      :price_units,
      :resource_specification)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for an output.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] description
    #   A description of the output.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The address where you want to send the output.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key).
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement on the originator''s flow. This value
    #   is relevant only on entitled flows.
    #   @return [String]
    #
    # @!attribute [rw] media_live_input_arn
    #   The input ARN of the AWS Elemental MediaLive channel. This parameter
    #   is relevant only for outputs that were added by creating a MediaLive
    #   input.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the output. This value must be unique within the current
    #   flow.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] transport
    #   Attributes related to the transport stream that are used in the
    #   output.
    #   @return [Types::Transport]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Output AWS API Documentation
    #
    class Output < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :description,
      :destination,
      :encryption,
      :entitlement_arn,
      :media_live_input_arn,
      :name,
      :output_arn,
      :port,
      :transport,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # Submits a request to purchase an offering, which creates a reservation
    # in your AWS account. If you already have an active reservation, you
    # can't purchase another offering.
    #
    # @note When making an API call, you may pass PurchaseOfferingRequest
    #   data as a hash:
    #
    #       {
    #         offering_arn: "__string", # required
    #         reservation_name: "__string", # required
    #         start: "__string", # required
    #       }
    #
    # @!attribute [rw] offering_arn
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The name that you want to use for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] start
    #   The date and time that you want the reservation to begin, in
    #   Coordinated Universal Time (UTC). You can specify any date and time
    #   between 12:00am on the first day of the current month to the current
    #   time on today's date, inclusive. Specify the start in a 24-hour
    #   notation. Use the following format: YYYY-MM-DDTHH:mm:SSZ, where T
    #   and Z are literal characters. For example, to specify 11:30pm on
    #   March 5, 2020, enter 2020-03-05T23:30:00Z.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOfferingRequest AWS API Documentation
    #
    class PurchaseOfferingRequest < Struct.new(
      :offering_arn,
      :reservation_name,
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful PurchaseOffering request.
    #
    # @!attribute [rw] reservation
    #   A pricing agreement for a discounted rate for a specific outbound
    #   bandwidth that your MediaConnect account will use each month over a
    #   specific time period. The discounted rate in the reservation applies
    #   to outbound bandwidth for all flows from your account until your
    #   account reaches the amount of bandwidth in your reservation. If you
    #   use more outbound bandwidth than the agreed upon amount in a single
    #   month, the overage is charged at the on-demand rate.
    #   @return [Types::Reservation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/PurchaseOfferingResponse AWS API Documentation
    #
    class PurchaseOfferingResponse < Struct.new(
      :reservation)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveFlowOutputRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         output_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutputRequest AWS API Documentation
    #
    class RemoveFlowOutputRequest < Struct.new(
      :flow_arn,
      :output_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful RemoveFlowOutput request including the flow
    # ARN and the output ARN that was removed.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the output you removed.
    #   @return [String]
    #
    # @!attribute [rw] output_arn
    #   The ARN of the output that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowOutputResponse AWS API Documentation
    #
    class RemoveFlowOutputResponse < Struct.new(
      :flow_arn,
      :output_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveFlowSourceRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         source_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSourceRequest AWS API Documentation
    #
    class RemoveFlowSourceRequest < Struct.new(
      :flow_arn,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful RemoveFlowSource request including the flow
    # ARN and the source ARN that was removed.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the source you removed.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowSourceResponse AWS API Documentation
    #
    class RemoveFlowSourceResponse < Struct.new(
      :flow_arn,
      :source_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveFlowVpcInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         vpc_interface_name: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterfaceRequest AWS API Documentation
    #
    class RemoveFlowVpcInterfaceRequest < Struct.new(
      :flow_arn,
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful RemoveFlowVpcInterface request including
    # the flow ARN and the VPC interface name that was removed.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the VPC interface you
    #   removed.
    #   @return [String]
    #
    # @!attribute [rw] non_deleted_network_interface_ids
    #   IDs of network interfaces associated with the removed VPC interface
    #   that Media Connect was unable to remove.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface that was removed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RemoveFlowVpcInterfaceResponse AWS API Documentation
    #
    class RemoveFlowVpcInterfaceResponse < Struct.new(
      :flow_arn,
      :non_deleted_network_interface_ids,
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pricing agreement for a discounted rate for a specific outbound
    # bandwidth that your MediaConnect account will use each month over a
    # specific time period. The discounted rate in the reservation applies
    # to outbound bandwidth for all flows from your account until your
    # account reaches the amount of bandwidth in your reservation. If you
    # use more outbound bandwidth than the agreed upon amount in a single
    # month, the overage is charged at the on-demand rate.
    #
    # @!attribute [rw] currency_code
    #   The type of currency that is used for billing. The currencyCode used
    #   for your reservation is US dollars.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The length of time that this reservation is active. MediaConnect
    #   defines this value in the offering.
    #   @return [Integer]
    #
    # @!attribute [rw] duration_units
    #   The unit of measurement for the duration of the reservation.
    #   MediaConnect defines this value in the offering.
    #   @return [String]
    #
    # @!attribute [rw] end
    #   The day and time that this reservation expires. This value is
    #   calculated based on the start date and time that you set and the
    #   offering's duration.
    #   @return [String]
    #
    # @!attribute [rw] offering_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_description
    #   A description of the offering. MediaConnect defines this value in
    #   the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_per_unit
    #   The cost of a single unit. This value, in combination with
    #   priceUnits, makes up the rate. MediaConnect defines this value in
    #   the offering.
    #   @return [String]
    #
    # @!attribute [rw] price_units
    #   The unit of measurement that is used for billing. This value, in
    #   combination with pricePerUnit, makes up the rate. MediaConnect
    #   defines this value in the offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_arn
    #   The Amazon Resource Name (ARN) that MediaConnect assigns to the
    #   reservation when you purchase an offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_name
    #   The name that you assigned to the reservation when you purchased the
    #   offering.
    #   @return [String]
    #
    # @!attribute [rw] reservation_state
    #   The status of your reservation.
    #   @return [String]
    #
    # @!attribute [rw] resource_specification
    #   A definition of the amount of outbound bandwidth that you would be
    #   reserving if you purchase the offering. MediaConnect defines the
    #   values that make up the resourceSpecification in the offering.
    #   @return [Types::ResourceSpecification]
    #
    # @!attribute [rw] start
    #   The day and time that the reservation becomes active. You set this
    #   value when you purchase the offering.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Reservation AWS API Documentation
    #
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
      :start)
      SENSITIVE = []
      include Aws::Structure
    end

    # A definition of what is being billed for, including the type and
    # amount.
    #
    # @!attribute [rw] reserved_bitrate
    #   The amount of outbound bandwidth that is discounted in the offering.
    #   @return [Integer]
    #
    # @!attribute [rw] resource_type
    #   The type of resource and the unit that is being billed for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ResourceSpecification AWS API Documentation
    #
    class ResourceSpecification < Struct.new(
      :reserved_bitrate,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   The error message returned by AWS Elemental MediaConnect.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ResponseError AWS API Documentation
    #
    class ResponseError < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeFlowEntitlementRequest
    #   data as a hash:
    #
    #       {
    #         entitlement_arn: "__string", # required
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] entitlement_arn
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlementRequest AWS API Documentation
    #
    class RevokeFlowEntitlementRequest < Struct.new(
      :entitlement_arn,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful RevokeFlowEntitlement request. The response
    # includes the ARN of the flow that was updated and the ARN of the
    # entitlement that was revoked.
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that was revoked.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that the entitlement was revoked from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/RevokeFlowEntitlementResponse AWS API Documentation
    #
    class RevokeFlowEntitlementResponse < Struct.new(
      :entitlement_arn,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the source of the flow.
    #
    # @note When making an API call, you may pass SetSourceRequest
    #   data as a hash:
    #
    #       {
    #         decryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string", # required
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         name: "__string",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         stream_id: "__string",
    #         vpc_interface_name: "__string",
    #         whitelist_cidr: "__string",
    #       }
    #
    # @!attribute [rw] decryption
    #   The type of encryption that is used on the content ingested from
    #   this source.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] description
    #   A description for the source. This value is not used or seen outside
    #   of the current AWS Elemental MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this
    #   flow. The entitlement is set by the flow originator, and the ARN is
    #   generated as part of the originator's flow.
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow will be listening on for incoming content.
    #   @return [Integer]
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the source.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source.
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface to use for this source.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should be in the form of
    #   a Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/SetSourceRequest AWS API Documentation
    #
    class SetSourceRequest < Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :name,
      :protocol,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the source of the flow.
    #
    # @!attribute [rw] data_transfer_subscriber_fee_percent
    #   Percentage from 0-100 of the data transfer cost to be billed to the
    #   subscriber.
    #   @return [Integer]
    #
    # @!attribute [rw] decryption
    #   The type of encryption that is used on the content ingested from
    #   this source.
    #   @return [Types::Encryption]
    #
    # @!attribute [rw] description
    #   A description for the source. This value is not used or seen outside
    #   of the current AWS Elemental MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to content
    #   that comes from another AWS account. The entitlement is set by the
    #   content originator and the ARN is generated as part of the
    #   originator's flow.
    #   @return [String]
    #
    # @!attribute [rw] ingest_ip
    #   The IP address that the flow will be listening on for incoming
    #   content.
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow will be listening on for incoming content.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the source.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   The ARN of the source.
    #   @return [String]
    #
    # @!attribute [rw] transport
    #   Attributes related to the transport stream that are used in the
    #   source.
    #   @return [Types::Transport]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC Interface this Source is configured with.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should be in the form of
    #   a Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Source AWS API Documentation
    #
    class Source < Struct.new(
      :data_transfer_subscriber_fee_percent,
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_ip,
      :ingest_port,
      :name,
      :source_arn,
      :transport,
      :vpc_interface_name,
      :whitelist_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlowRequest AWS API Documentation
    #
    class StartFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful StartFlow request.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you started.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the StartFlow process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StartFlowResponse AWS API Documentation
    #
    class StartFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlowRequest AWS API Documentation
    #
    class StopFlowRequest < Struct.new(
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful StopFlow request.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you stopped.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the flow when the StopFlow process begins.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/StopFlowResponse AWS API Documentation
    #
    class StopFlowResponse < Struct.new(
      :flow_arn,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # The tags to add to the resource. Tag keys can have a maximum character
    # length of 128 characters, and tag values can have a maximum length of
    # 256 characters.
    #
    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tags: { # required
    #           "__string" => "__string",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A map from tag keys to values. Tag keys can have a maximum character
    #   length of 128 characters, and tag values can have a maximum length
    #   of 256 characters.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception raised by AWS Elemental MediaConnect. See the error message
    # and documentation for the operation for more information on the cause
    # of this exception.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/TooManyRequestsException AWS API Documentation
    #
    class TooManyRequestsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes related to the transport stream that are used in a source
    # or output.
    #
    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source or output.
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull stream.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Transport AWS API Documentation
    #
    class Transport < Struct.new(
      :cidr_allow_list,
      :max_bitrate,
      :max_latency,
      :protocol,
      :remote_id,
      :smoothing_latency,
      :stream_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "__string", # required
    #         tag_keys: ["__string"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @note When making an API call, you may pass UpdateEncryption
    #   data as a hash:
    #
    #       {
    #         algorithm: "aes128", # accepts aes128, aes192, aes256
    #         constant_initialization_vector: "__string",
    #         device_id: "__string",
    #         key_type: "speke", # accepts speke, static-key
    #         region: "__string",
    #         resource_id: "__string",
    #         role_arn: "__string",
    #         secret_arn: "__string",
    #         url: "__string",
    #       }
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] constant_initialization_vector
    #   A 128-bit, 16-byte hex value represented by a 32-character string,
    #   to be used with the key for encrypting content. This parameter is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] device_id
    #   The value of one of the devices that you configured with your
    #   digital rights management (DRM) platform key provider. This
    #   parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS Region that the API Gateway proxy endpoint was created in.
    #   This parameter is required for SPEKE encryption and is not valid for
    #   static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   An identifier for the content. The service sends this value to the
    #   key server to identify the current endpoint. The resource ID is also
    #   known as the content ID. This parameter is required for SPEKE
    #   encryption and is not valid for static key encryption.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   AWS Elemental MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret that you created in AWS Secrets Manager to
    #   store the encryption key. This parameter is required for static key
    #   encryption and is not valid for SPEKE encryption.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL from the API Gateway proxy that you set up to talk to your
    #   key server. This parameter is required for SPEKE encryption and is
    #   not valid for static key encryption.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateEncryption AWS API Documentation
    #
    class UpdateEncryption < Struct.new(
      :algorithm,
      :constant_initialization_vector,
      :device_id,
      :key_type,
      :region,
      :resource_id,
      :role_arn,
      :secret_arn,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for source failover
    #
    # @note When making an API call, you may pass UpdateFailoverConfig
    #   data as a hash:
    #
    #       {
    #         recovery_window: 1,
    #         state: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
    # @!attribute [rw] recovery_window
    #   Recovery window time to look for dash-7 packets
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFailoverConfig AWS API Documentation
    #
    class UpdateFailoverConfig < Struct.new(
      :recovery_window,
      :state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updates that you want to make to a specific entitlement.
    #
    # @note When making an API call, you may pass UpdateFlowEntitlementRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         entitlement_arn: "__string", # required
    #         entitlement_status: "ENABLED", # accepts ENABLED, DISABLED
    #         flow_arn: "__string", # required
    #         subscribers: ["__string"],
    #       }
    #
    # @!attribute [rw] description
    #   A description of the entitlement. This description appears only on
    #   the AWS Elemental MediaConnect console and will not be seen by the
    #   subscriber or end user.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of encryption that will be used on the output associated
    #   with this entitlement.
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] entitlement_arn
    #   @return [String]
    #
    # @!attribute [rw] entitlement_status
    #   An indication of whether you want to enable the entitlement to allow
    #   access, or disable it to stop streaming content to the subscriber’s
    #   flow temporarily. If you don’t specify the entitlementStatus field
    #   in your request, MediaConnect leaves the value unchanged.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] subscribers
    #   The AWS account IDs that you want to share your content with. The
    #   receiving accounts (subscribers) will be allowed to create their own
    #   flow using your content as the source.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlementRequest AWS API Documentation
    #
    class UpdateFlowEntitlementRequest < Struct.new(
      :description,
      :encryption,
      :entitlement_arn,
      :entitlement_status,
      :flow_arn,
      :subscribers)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateFlowEntitlement request. The response
    # includes the ARN of the flow that was updated and the updated
    # entitlement configuration.
    #
    # @!attribute [rw] entitlement
    #   The new configuration of the entitlement that you updated.
    #   @return [Types::Entitlement]
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that this entitlement was granted on.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowEntitlementResponse AWS API Documentation
    #
    class UpdateFlowEntitlementResponse < Struct.new(
      :entitlement,
      :flow_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The updates that you want to make to an existing output of an existing
    # flow.
    #
    # @note When making an API call, you may pass UpdateFlowOutputRequest
    #   data as a hash:
    #
    #       {
    #         cidr_allow_list: ["__string"],
    #         description: "__string",
    #         destination: "__string",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         flow_arn: "__string", # required
    #         max_latency: 1,
    #         output_arn: "__string", # required
    #         port: 1,
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         remote_id: "__string",
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #         vpc_interface_attachment: {
    #           vpc_interface_name: "__string",
    #         },
    #       }
    #
    # @!attribute [rw] cidr_allow_list
    #   The range of IP addresses that should be allowed to initiate output
    #   requests to this flow. These IP addresses should be in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [Array<String>]
    #
    # @!attribute [rw] description
    #   A description of the output. This description appears only on the
    #   AWS Elemental MediaConnect console and will not be seen by the end
    #   user.
    #   @return [String]
    #
    # @!attribute [rw] destination
    #   The IP address where you want to send the output.
    #   @return [String]
    #
    # @!attribute [rw] encryption
    #   The type of key used for the encryption. If no keyType is provided,
    #   the service will use the default setting (static-key).
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] output_arn
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port to use when content is distributed to this output.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol to use for the output.
    #   @return [String]
    #
    # @!attribute [rw] remote_id
    #   The remote ID for the Zixi-pull stream.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RIST, RTP, and RTP-FEC
    #   streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_attachment
    #   The name of the VPC interface attachment to use for this output.
    #   @return [Types::VpcInterfaceAttachment]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputRequest AWS API Documentation
    #
    class UpdateFlowOutputRequest < Struct.new(
      :cidr_allow_list,
      :description,
      :destination,
      :encryption,
      :flow_arn,
      :max_latency,
      :output_arn,
      :port,
      :protocol,
      :remote_id,
      :smoothing_latency,
      :stream_id,
      :vpc_interface_attachment)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateFlowOutput request including the flow
    # ARN and the updated output.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that is associated with the updated output.
    #   @return [String]
    #
    # @!attribute [rw] output
    #   The new settings of the output that you updated.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputResponse AWS API Documentation
    #
    class UpdateFlowOutputResponse < Struct.new(
      :flow_arn,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing flow.
    #
    # @note When making an API call, you may pass UpdateFlowRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         source_failover_config: {
    #           recovery_window: 1,
    #           state: "ENABLED", # accepts ENABLED, DISABLED
    #         },
    #       }
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] source_failover_config
    #   The settings for source failover
    #   @return [Types::UpdateFailoverConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowRequest AWS API Documentation
    #
    class UpdateFlowRequest < Struct.new(
      :flow_arn,
      :source_failover_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # Updates an existing flow.
    #
    # @!attribute [rw] flow
    #   The settings for a flow, including its source, outputs, and
    #   entitlements.
    #   @return [Types::Flow]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowResponse AWS API Documentation
    #
    class UpdateFlowResponse < Struct.new(
      :flow)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for the updated source of the flow.
    #
    # @note When making an API call, you may pass UpdateFlowSourceRequest
    #   data as a hash:
    #
    #       {
    #         decryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           constant_initialization_vector: "__string",
    #           device_id: "__string",
    #           key_type: "speke", # accepts speke, static-key
    #           region: "__string",
    #           resource_id: "__string",
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #           url: "__string",
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         flow_arn: "__string", # required
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp, zixi-pull, rist
    #         source_arn: "__string", # required
    #         stream_id: "__string",
    #         vpc_interface_name: "__string",
    #         whitelist_cidr: "__string",
    #       }
    #
    # @!attribute [rw] decryption
    #   The type of encryption used on the content ingested from this
    #   source.
    #   @return [Types::UpdateEncryption]
    #
    # @!attribute [rw] description
    #   A description for the source. This value is not used or seen outside
    #   of the current AWS Elemental MediaConnect account.
    #   @return [String]
    #
    # @!attribute [rw] entitlement_arn
    #   The ARN of the entitlement that allows you to subscribe to this
    #   flow. The entitlement is set by the flow originator, and the ARN is
    #   generated as part of the originator's flow.
    #   @return [String]
    #
    # @!attribute [rw] flow_arn
    #   @return [String]
    #
    # @!attribute [rw] ingest_port
    #   The port that the flow will be listening on for incoming content.
    #   @return [Integer]
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate for RIST, RTP, and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds. This parameter applies only to
    #   RIST-based and Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source.
    #   @return [String]
    #
    # @!attribute [rw] source_arn
    #   @return [String]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC Interface to configure this Source with.
    #   @return [String]
    #
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should be in the form of
    #   a Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSourceRequest AWS API Documentation
    #
    class UpdateFlowSourceRequest < Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :flow_arn,
      :ingest_port,
      :max_bitrate,
      :max_latency,
      :protocol,
      :source_arn,
      :stream_id,
      :vpc_interface_name,
      :whitelist_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of a successful UpdateFlowSource request. The response
    # includes the ARN of the flow that was updated and the updated source
    # configuration.
    #
    # @!attribute [rw] flow_arn
    #   The ARN of the flow that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The settings for the source of the flow.
    #   @return [Types::Source]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowSourceResponse AWS API Documentation
    #
    class UpdateFlowSourceResponse < Struct.new(
      :flow_arn,
      :source)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for a VPC Source.
    #
    # @!attribute [rw] name
    #   Immutable and has to be a unique against other VpcInterfaces in this
    #   Flow
    #   @return [String]
    #
    # @!attribute [rw] network_interface_ids
    #   IDs of the network interfaces created in customer's account by
    #   MediaConnect.
    #   @return [Array<String>]
    #
    # @!attribute [rw] role_arn
    #   Role Arn MediaConnect can assumes to create ENIs in customer's
    #   account
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security Group IDs to be used on ENI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   Subnet must be in the AZ of the Flow
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterface AWS API Documentation
    #
    class VpcInterface < Struct.new(
      :name,
      :network_interface_ids,
      :role_arn,
      :security_group_ids,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The settings for attaching a VPC interface to an output.
    #
    # @note When making an API call, you may pass VpcInterfaceAttachment
    #   data as a hash:
    #
    #       {
    #         vpc_interface_name: "__string",
    #       }
    #
    # @!attribute [rw] vpc_interface_name
    #   The name of the VPC interface to use for this output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterfaceAttachment AWS API Documentation
    #
    class VpcInterfaceAttachment < Struct.new(
      :vpc_interface_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Desired VPC Interface for a Flow
    #
    # @note When making an API call, you may pass VpcInterfaceRequest
    #   data as a hash:
    #
    #       {
    #         name: "__string", # required
    #         role_arn: "__string", # required
    #         security_group_ids: ["__string"], # required
    #         subnet_id: "__string", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of the VPC Interface. This value must be unique within the
    #   current flow.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Role Arn MediaConnect can assumes to create ENIs in customer's
    #   account
    #   @return [String]
    #
    # @!attribute [rw] security_group_ids
    #   Security Group IDs to be used on ENI.
    #   @return [Array<String>]
    #
    # @!attribute [rw] subnet_id
    #   Subnet must be in the AZ of the Flow
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/VpcInterfaceRequest AWS API Documentation
    #
    class VpcInterfaceRequest < Struct.new(
      :name,
      :role_arn,
      :security_group_ids,
      :subnet_id)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
