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
      include Aws::Structure
    end

    # Adds outputs to an existing flow. You can create up to 20 outputs per
    # flow.
    #
    # @note When making an API call, you may pass AddFlowOutputsRequest
    #   data as a hash:
    #
    #       {
    #         flow_arn: "__string", # required
    #         outputs: [ # required
    #           {
    #             description: "__string",
    #             destination: "__string", # required
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               key_type: "static-key", # accepts static-key
    #               role_arn: "__string", # required
    #               secret_arn: "__string", # required
    #             },
    #             max_latency: 1,
    #             name: "__string",
    #             port: 1, # required
    #             protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp
    #             smoothing_latency: 1,
    #             stream_id: "__string",
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
      include Aws::Structure
    end

    # The output that you want to add to this flow.
    #
    # @note When making an API call, you may pass AddOutputRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         destination: "__string", # required
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         max_latency: 1,
    #         name: "__string",
    #         port: 1, # required
    #         protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #       }
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
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RTP and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/AddOutputRequest AWS API Documentation
    #
    class AddOutputRequest < Struct.new(
      :description,
      :destination,
      :encryption,
      :max_latency,
      :name,
      :port,
      :protocol,
      :smoothing_latency,
      :stream_id)
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
      include Aws::Structure
    end

    # Creates a new flow. The request must include one source. The request
    # optionally can include outputs (up to 20) and one entitlement.
    #
    # @note When making an API call, you may pass CreateFlowRequest
    #   data as a hash:
    #
    #       {
    #         availability_zone: "__string",
    #         entitlements: [
    #           {
    #             description: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               key_type: "static-key", # accepts static-key
    #               role_arn: "__string", # required
    #               secret_arn: "__string", # required
    #             },
    #             name: "__string",
    #             subscribers: ["__string"], # required
    #           },
    #         ],
    #         name: "__string", # required
    #         outputs: [
    #           {
    #             description: "__string",
    #             destination: "__string", # required
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               key_type: "static-key", # accepts static-key
    #               role_arn: "__string", # required
    #               secret_arn: "__string", # required
    #             },
    #             max_latency: 1,
    #             name: "__string",
    #             port: 1, # required
    #             protocol: "zixi-push", # required, accepts zixi-push, rtp-fec, rtp
    #             smoothing_latency: 1,
    #             stream_id: "__string",
    #           },
    #         ],
    #         source: { # required
    #           decryption: {
    #             algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #             key_type: "static-key", # accepts static-key
    #             role_arn: "__string", # required
    #             secret_arn: "__string", # required
    #           },
    #           description: "__string",
    #           entitlement_arn: "__string",
    #           ingest_port: 1,
    #           max_bitrate: 1,
    #           max_latency: 1,
    #           name: "__string",
    #           protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #           stream_id: "__string",
    #           whitelist_cidr: "__string",
    #         },
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/CreateFlowRequest AWS API Documentation
    #
    class CreateFlowRequest < Struct.new(
      :availability_zone,
      :entitlements,
      :name,
      :outputs,
      :source)
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
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @note When making an API call, you may pass Encryption
    #   data as a hash:
    #
    #       {
    #         algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #         key_type: "static-key", # accepts static-key
    #         role_arn: "__string", # required
    #         secret_arn: "__string", # required
    #       }
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   AWS Elemental MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN that was assigned to the secret that you created in AWS
    #   Secrets Manager to store the encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Encryption AWS API Documentation
    #
    class Encryption < Struct.new(
      :algorithm,
      :key_type,
      :role_arn,
      :secret_arn)
      include Aws::Structure
    end

    # The settings for a flow entitlement.
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
      :description,
      :encryption,
      :entitlement_arn,
      :name,
      :subscribers)
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
    # @!attribute [rw] status
    #   The current status of the flow.
    #   @return [String]
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
      :status)
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
      include Aws::Structure
    end

    # The entitlements that you want to grant on a flow.
    #
    # @note When making an API call, you may pass GrantEntitlementRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         encryption: {
    #           algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         name: "__string",
    #         subscribers: ["__string"], # required
    #       }
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
      :description,
      :encryption,
      :name,
      :subscribers)
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
    #             description: "__string",
    #             encryption: {
    #               algorithm: "aes128", # required, accepts aes128, aes192, aes256
    #               key_type: "static-key", # accepts static-key
    #               role_arn: "__string", # required
    #               secret_arn: "__string", # required
    #             },
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
      include Aws::Structure
    end

    # An entitlement that has been granted to you from other AWS accounts.
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
      :entitlement_arn,
      :entitlement_name)
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
      include Aws::Structure
    end

    # The settings for an output.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Output AWS API Documentation
    #
    class Output < Struct.new(
      :description,
      :destination,
      :encryption,
      :entitlement_arn,
      :media_live_input_arn,
      :name,
      :output_arn,
      :port,
      :transport)
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
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string", # required
    #           secret_arn: "__string", # required
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         name: "__string",
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #         stream_id: "__string",
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
    #   The smoothing max bitrate for RTP and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
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
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
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
      :whitelist_cidr)
      include Aws::Structure
    end

    # The settings for the source of the flow.
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
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
    #   10.0.0.0/16.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/Source AWS API Documentation
    #
    class Source < Struct.new(
      :decryption,
      :description,
      :entitlement_arn,
      :ingest_ip,
      :ingest_port,
      :name,
      :source_arn,
      :transport,
      :whitelist_cidr)
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
      include Aws::Structure
    end

    # Attributes related to the transport stream that are used in a source
    # or output.
    #
    # @!attribute [rw] max_bitrate
    #   The smoothing max bitrate for RTP and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
    #   @return [Integer]
    #
    # @!attribute [rw] protocol
    #   The protocol that is used by the source or output.
    #   @return [String]
    #
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RTP and RTP-FEC streams.
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
      :max_bitrate,
      :max_latency,
      :protocol,
      :smoothing_latency,
      :stream_id)
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
      include Aws::Structure
    end

    # Information about the encryption of the flow.
    #
    # @note When making an API call, you may pass UpdateEncryption
    #   data as a hash:
    #
    #       {
    #         algorithm: "aes128", # accepts aes128, aes192, aes256
    #         key_type: "static-key", # accepts static-key
    #         role_arn: "__string",
    #         secret_arn: "__string",
    #       }
    #
    # @!attribute [rw] algorithm
    #   The type of algorithm that is used for the encryption (such as
    #   aes128, aes192, or aes256).
    #   @return [String]
    #
    # @!attribute [rw] key_type
    #   The type of key that is used for the encryption. If no keyType is
    #   provided, the service will use the default setting (static-key).
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the role that you created during setup (when you set up
    #   AWS Elemental MediaConnect as a trusted entity).
    #   @return [String]
    #
    # @!attribute [rw] secret_arn
    #   The ARN that was assigned to the secret that you created in AWS
    #   Secrets Manager to store the encryption key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateEncryption AWS API Documentation
    #
    class UpdateEncryption < Struct.new(
      :algorithm,
      :key_type,
      :role_arn,
      :secret_arn)
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
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #         },
    #         entitlement_arn: "__string", # required
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
      :flow_arn,
      :subscribers)
      include Aws::Structure
    end

    # The result of a successful UpdateFlowEntitlement request. The response
    # includes the ARN of the flow that was updated and the updated
    # entitlement configuration.
    #
    # @!attribute [rw] entitlement
    #   The settings for a flow entitlement.
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
      include Aws::Structure
    end

    # The updates that you want to make to an existing output of an existing
    # flow.
    #
    # @note When making an API call, you may pass UpdateFlowOutputRequest
    #   data as a hash:
    #
    #       {
    #         description: "__string",
    #         destination: "__string",
    #         encryption: {
    #           algorithm: "aes128", # accepts aes128, aes192, aes256
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #         },
    #         flow_arn: "__string", # required
    #         max_latency: 1,
    #         output_arn: "__string", # required
    #         port: 1,
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #         smoothing_latency: 1,
    #         stream_id: "__string",
    #       }
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
    # @!attribute [rw] smoothing_latency
    #   The smoothing latency in milliseconds for RTP and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] stream_id
    #   The stream ID that you want to use for this transport. This
    #   parameter applies only to Zixi-based streams.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputRequest AWS API Documentation
    #
    class UpdateFlowOutputRequest < Struct.new(
      :description,
      :destination,
      :encryption,
      :flow_arn,
      :max_latency,
      :output_arn,
      :port,
      :protocol,
      :smoothing_latency,
      :stream_id)
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
    #   The settings for an output.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mediaconnect-2018-11-14/UpdateFlowOutputResponse AWS API Documentation
    #
    class UpdateFlowOutputResponse < Struct.new(
      :flow_arn,
      :output)
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
    #           key_type: "static-key", # accepts static-key
    #           role_arn: "__string",
    #           secret_arn: "__string",
    #         },
    #         description: "__string",
    #         entitlement_arn: "__string",
    #         flow_arn: "__string", # required
    #         ingest_port: 1,
    #         max_bitrate: 1,
    #         max_latency: 1,
    #         protocol: "zixi-push", # accepts zixi-push, rtp-fec, rtp
    #         source_arn: "__string", # required
    #         stream_id: "__string",
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
    #   The smoothing max bitrate for RTP and RTP-FEC streams.
    #   @return [Integer]
    #
    # @!attribute [rw] max_latency
    #   The maximum latency in milliseconds for Zixi-based streams.
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
    # @!attribute [rw] whitelist_cidr
    #   The range of IP addresses that should be allowed to contribute
    #   content to your source. These IP addresses should in the form of a
    #   Classless Inter-Domain Routing (CIDR) block; for example,
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
      :whitelist_cidr)
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
      include Aws::Structure
    end

  end
end
