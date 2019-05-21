# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::GlobalAccelerator
  module Types

    # An accelerator is a complex type that includes one or more listeners
    # that process inbound connections and then direct traffic to one or
    # more endpoint groups, each of which includes endpoints, such as load
    # balancers.
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens
    #   (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The value for the address type must be IPv4.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether theaccelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If
    #   set to false, accelerator can be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_sets
    #   IP address set associated with the accelerator.
    #   @return [Array<Types::IpSet>]
    #
    # @!attribute [rw] status
    #   Describes the deployment status of the accelerator.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The date and time that the accelerator was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_time
    #   The date and time that the accelerator was last modified.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/Accelerator AWS API Documentation
    #
    class Accelerator < Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :status,
      :created_time,
      :last_modified_time)
      include Aws::Structure
    end

    # Attributes of an accelerator.
    #
    # @!attribute [rw] flow_logs_enabled
    #   Indicates whether flow logs are enabled. The default value is false.
    #   If the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must
    #   be specified.
    #
    #   For more information, see [Flow Logs][1] in the *AWS Global
    #   Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants AWS Global Accelerator permission
    #   to write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   The prefix for the location in the Amazon S3 bucket for the flow
    #   logs. Attribute is required if `FlowLogsEnabled` is `true`. If you
    #   don’t specify a prefix, the flow logs are stored in the root of the
    #   bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AcceleratorAttributes AWS API Documentation
    #
    class AcceleratorAttributes < Struct.new(
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      include Aws::Structure
    end

    # The accelerator that you specified could not be disabled.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AcceleratorNotDisabledException AWS API Documentation
    #
    class AcceleratorNotDisabledException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The accelerator that you specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AcceleratorNotFoundException AWS API Documentation
    #
    class AcceleratorNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The listener that you specified has an endpoint group associated with
    # it. You must remove all dependent resources from a listener before you
    # can delete it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AssociatedEndpointGroupFoundException AWS API Documentation
    #
    class AssociatedEndpointGroupFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The accelerator that you specified has a listener associated with it.
    # You must remove all dependent resources from an accelerator before you
    # can delete it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AssociatedListenerFoundException AWS API Documentation
    #
    class AssociatedListenerFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAcceleratorRequest
    #   data as a hash:
    #
    #       {
    #         name: "GenericString", # required
    #         ip_address_type: "IPV4", # accepts IPV4
    #         enabled: false,
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] name
    #   The name of an accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens
    #   (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The value for the address type must be IPv4.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, an accelerator cannot be deleted. If
    #   set to false, the accelerator can be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of an accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateAcceleratorRequest AWS API Documentation
    #
    class CreateAcceleratorRequest < Struct.new(
      :name,
      :ip_address_type,
      :enabled,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   The accelerator that is created by specifying a listener and the
    #   supported IP address types.
    #   @return [Types::Accelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateAcceleratorResponse AWS API Documentation
    #
    class CreateAcceleratorResponse < Struct.new(
      :accelerator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         listener_arn: "GenericString", # required
    #         endpoint_group_region: "GenericString", # required
    #         endpoint_configurations: [
    #           {
    #             endpoint_id: "GenericString",
    #             weight: 1,
    #           },
    #         ],
    #         traffic_dial_percentage: 1.0,
    #         health_check_port: 1,
    #         health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #         health_check_path: "GenericString",
    #         health_check_interval_seconds: 1,
    #         threshold_count: 1,
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The name of the AWS Region where the endpoint group is located. A
    #   listener can have only one endpoint group in a specific Region.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointConfiguration>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an AWS Region. Additional
    #   traffic is distributed to other endpoint groups for this listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down)
    #   traffic to a specific Region. The percentage is applied to the
    #   traffic that would otherwise have been routed to the Region based on
    #   optimal routing.
    #
    #   The default value is 100.
    #   @return [Float]
    #
    # @!attribute [rw] health_check_port
    #   The port that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If
    #   listener port is a list of ports, Global Accelerator uses the first
    #   port in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash
    #   (/).
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_count
    #   The number of consecutive health checks required to set the state of
    #   a healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #   @return [Integer]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateEndpointGroupRequest AWS API Documentation
    #
    class CreateEndpointGroupRequest < Struct.new(
      :listener_arn,
      :endpoint_group_region,
      :endpoint_configurations,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group
    #   The information about the endpoint group that was created.
    #   @return [Types::EndpointGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateEndpointGroupResponse AWS API Documentation
    #
    class CreateEndpointGroupResponse < Struct.new(
      :endpoint_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateListenerRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString", # required
    #         port_ranges: [ # required
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #           },
    #         ],
    #         protocol: "TCP", # required, accepts TCP, UDP
    #         client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #         idempotency_token: "IdempotencyToken", # required
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of your accelerator.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The list of port ranges to support for connections from clients to
    #   your accelerator.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocol
    #   The protocol for connections from clients to your accelerator.
    #   @return [String]
    #
    # @!attribute [rw] client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Clienty affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   AWS Global Accelerator uses a consistent-flow hashing algorithm to
    #   choose the optimal endpoint for a connection. If client affinity is
    #   `NONE`, Global Accelerator uses the "five-tuple" (5-tuple)
    #   properties—source IP address, source port, destination IP address,
    #   destination port, and protocol—to select the hash value, and then
    #   chooses the best endpoint. However, with this setting, if someone
    #   uses different ports to connect to Global Accelerator, their
    #   connections might not be always routed to the same endpoint because
    #   the hash value changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #   @return [String]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateListenerRequest AWS API Documentation
    #
    class CreateListenerRequest < Struct.new(
      :accelerator_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      :idempotency_token)
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   The listener that you've created.
    #   @return [Types::Listener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateListenerResponse AWS API Documentation
    #
    class CreateListenerResponse < Struct.new(
      :listener)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAcceleratorRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of an accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteAcceleratorRequest AWS API Documentation
    #
    class DeleteAcceleratorRequest < Struct.new(
      :accelerator_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_group_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteEndpointGroupRequest AWS API Documentation
    #
    class DeleteEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteListenerRequest
    #   data as a hash:
    #
    #       {
    #         listener_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteListenerRequest AWS API Documentation
    #
    class DeleteListenerRequest < Struct.new(
      :listener_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAcceleratorAttributesRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString",
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator with the
    #   attributes that you want to describe. Value is required.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorAttributesRequest AWS API Documentation
    #
    class DescribeAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn)
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_attributes
    #   The attributes of the accelerator.
    #   @return [Types::AcceleratorAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorAttributesResponse AWS API Documentation
    #
    class DescribeAcceleratorAttributesResponse < Struct.new(
      :accelerator_attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeAcceleratorRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorRequest AWS API Documentation
    #
    class DescribeAcceleratorRequest < Struct.new(
      :accelerator_arn)
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   The description of the accelerator.
    #   @return [Types::Accelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorResponse AWS API Documentation
    #
    class DescribeAcceleratorResponse < Struct.new(
      :accelerator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_group_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeEndpointGroupRequest AWS API Documentation
    #
    class DescribeEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group
    #   The description of an endpoint group.
    #   @return [Types::EndpointGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeEndpointGroupResponse AWS API Documentation
    #
    class DescribeEndpointGroupResponse < Struct.new(
      :endpoint_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeListenerRequest
    #   data as a hash:
    #
    #       {
    #         listener_arn: "GenericString", # required
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeListenerRequest AWS API Documentation
    #
    class DescribeListenerRequest < Struct.new(
      :listener_arn)
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   The description of a listener.
    #   @return [Types::Listener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeListenerResponse AWS API Documentation
    #
    class DescribeListenerResponse < Struct.new(
      :listener)
      include Aws::Structure
    end

    # A complex type for endpoints.
    #
    # @note When making an API call, you may pass EndpointConfiguration
    #   data as a hash:
    #
    #       {
    #         endpoint_id: "GenericString",
    #         weight: 1,
    #       }
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. If the endpoint is a Network Load Balancer
    #   or Application Load Balancer, this is the Amazon Resource Name (ARN)
    #   of the resource. If the endpoint is an Elastic IP address, this is
    #   the Elastic IP address allocation ID.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight associated with the endpoint. When you add weights to
    #   endpoints, you configure AWS Global Accelerator to route traffic
    #   based on proportions that you specify. For example, you might
    #   specify endpoint weights of 4, 5, 5, and 6 (sum=20). The result is
    #   that 4/20 of your traffic, on average, is routed to the first
    #   endpoint, 5/20 is routed both to the second and third endpoints, and
    #   6/20 is routed to the last endpoint. For more information, see
    #   [Endpoint Weights][1] in the *AWS Global Accelerator Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointConfiguration AWS API Documentation
    #
    class EndpointConfiguration < Struct.new(
      :endpoint_id,
      :weight)
      include Aws::Structure
    end

    # A complex type for an endpoint. Each endpoint group can include one or
    # more endpoints, such as load balancers.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. If the endpoint is a Network Load Balancer
    #   or Application Load Balancer, this is the Amazon Resource Name (ARN)
    #   of the resource. If the endpoint is an Elastic IP address, this is
    #   the Elastic IP address allocation ID.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight associated with the endpoint. When you add weights to
    #   endpoints, you configure AWS Global Accelerator to route traffic
    #   based on proportions that you specify. For example, you might
    #   specify endpoint weights of 4, 5, 5, and 6 (sum=20). The result is
    #   that 4/20 of your traffic, on average, is routed to the first
    #   endpoint, 5/20 is routed both to the second and third endpoints, and
    #   6/20 is routed to the last endpoint. For more information, see
    #   [Endpoint Weights][1] in the *AWS Global Accelerator Developer
    #   Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html
    #   @return [Integer]
    #
    # @!attribute [rw] health_state
    #   The health status of the endpoint.
    #   @return [String]
    #
    # @!attribute [rw] health_reason
    #   The reason code associated with why the endpoint is not healthy. If
    #   the endpoint state is healthy, a reason code is not provided.
    #
    #   If the endpoint state is **unhealthy**, the reason code can be one
    #   of the following values:
    #
    #   * **Timeout**\: The health check requests to the endpoint are timing
    #     out before returning a status.
    #
    #   * **Failed**\: The health check failed, for example because the
    #     endpoint response was invalid (malformed).
    #
    #   If the endpoint state is **initial**, the reason code can be one of
    #   the following values:
    #
    #   * **ProvisioningInProgress**\: The endpoint is in the process of
    #     being provisioned.
    #
    #   * **InitialHealthChecking**\: Global Accelerator is still setting up
    #     the minimum number of health checks for the endpoint that are
    #     required to determine its health status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointDescription AWS API Documentation
    #
    class EndpointDescription < Struct.new(
      :endpoint_id,
      :weight,
      :health_state,
      :health_reason)
      include Aws::Structure
    end

    # A complex type for the endpoint group. An AWS Region can have only one
    # endpoint group for a specific listener.
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The AWS Region that this endpoint group belongs.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_descriptions
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointDescription>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an AWS Region. Additional
    #   traffic is distributed to other endpoint groups for this listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down)
    #   traffic to a specific Region. The percentage is applied to the
    #   traffic that would otherwise have been routed to the Region based on
    #   optimal routing.
    #
    #   The default value is 100.
    #   @return [Float]
    #
    # @!attribute [rw] health_check_port
    #   The port that Global Accelerator uses to perform health checks on
    #   endpoints that are part of this endpoint group.
    #
    #   The default port is the port for the listener that this endpoint
    #   group is associated with. If the listener port is a list, Global
    #   Accelerator uses the first specified port in the list of ports.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol that Global Accelerator uses to perform health checks
    #   on endpoints that are part of this endpoint group. The default value
    #   is TCP.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   If the protocol is HTTP/S, then this value provides the ping path
    #   that Global Accelerator uses for the destination on the endpoints
    #   for health checks. The default is slash (/).
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between health checks for each
    #   endpoint. The default value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_count
    #   The number of consecutive health checks required to set the state of
    #   a healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointGroup AWS API Documentation
    #
    class EndpointGroup < Struct.new(
      :endpoint_group_arn,
      :endpoint_group_region,
      :endpoint_descriptions,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count)
      include Aws::Structure
    end

    # The endpoint group that you specified already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointGroupAlreadyExistsException AWS API Documentation
    #
    class EndpointGroupAlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The endpoint group that you specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointGroupNotFoundException AWS API Documentation
    #
    class EndpointGroupNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # There was an internal error for AWS Global Accelerator.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      include Aws::Structure
    end

    # An argument that you specified is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/InvalidArgumentException AWS API Documentation
    #
    class InvalidArgumentException < Struct.new(
      :message)
      include Aws::Structure
    end

    # There isn't another item to return.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/InvalidNextTokenException AWS API Documentation
    #
    class InvalidNextTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # The port numbers that you specified are not valid numbers or are not
    # unique for this accelerator.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/InvalidPortRangeException AWS API Documentation
    #
    class InvalidPortRangeException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type for the set of IP addresses for an accelerator.
    #
    # @!attribute [rw] ip_family
    #   The types of IP addresses included in this IP set.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The array of IP addresses in the IP address set. An IP address set
    #   can have a maximum of two IP addresses.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/IpSet AWS API Documentation
    #
    class IpSet < Struct.new(
      :ip_family,
      :ip_addresses)
      include Aws::Structure
    end

    # Processing your request would cause you to exceed an AWS Global
    # Accelerator limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAcceleratorsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] max_results
    #   The number of Global Accelerator objects that you want to return
    #   with this call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListAcceleratorsRequest AWS API Documentation
    #
    class ListAcceleratorsRequest < Struct.new(
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] accelerators
    #   The list of accelerators for a customer account.
    #   @return [Array<Types::Accelerator>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListAcceleratorsResponse AWS API Documentation
    #
    class ListAcceleratorsResponse < Struct.new(
      :accelerators,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEndpointGroupsRequest
    #   data as a hash:
    #
    #       {
    #         listener_arn: "GenericString", # required
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of endpoint group objects that you want to return with
    #   this call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListEndpointGroupsRequest AWS API Documentation
    #
    class ListEndpointGroupsRequest < Struct.new(
      :listener_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_groups
    #   The list of the endpoint groups associated with a listener.
    #   @return [Array<Types::EndpointGroup>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListEndpointGroupsResponse AWS API Documentation
    #
    class ListEndpointGroupsResponse < Struct.new(
      :endpoint_groups,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListListenersRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString", # required
    #         max_results: 1,
    #         next_token: "GenericString",
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator for which you want
    #   to list listener objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of listener objects that you want to return with this
    #   call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListListenersRequest AWS API Documentation
    #
    class ListListenersRequest < Struct.new(
      :accelerator_arn,
      :max_results,
      :next_token)
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   The list of listeners for an accelerator.
    #   @return [Array<Types::Listener>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListListenersResponse AWS API Documentation
    #
    class ListListenersResponse < Struct.new(
      :listeners,
      :next_token)
      include Aws::Structure
    end

    # A complex type for a listener.
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The list of port ranges for the connections from clients to the
    #   accelerator.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocol
    #   The protocol for the connections from clients to the accelerator.
    #   @return [String]
    #
    # @!attribute [rw] client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Clienty affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   AWS Global Accelerator uses a consistent-flow hashing algorithm to
    #   choose the optimal endpoint for a connection. If client affinity is
    #   `NONE`, Global Accelerator uses the "five-tuple" (5-tuple)
    #   properties—source IP address, source port, destination IP address,
    #   destination port, and protocol—to select the hash value, and then
    #   chooses the best endpoint. However, with this setting, if someone
    #   uses different ports to connect to Global Accelerator, their
    #   connections might not be always routed to the same endpoint because
    #   the hash value changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/Listener AWS API Documentation
    #
    class Listener < Struct.new(
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity)
      include Aws::Structure
    end

    # The listener that you specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListenerNotFoundException AWS API Documentation
    #
    class ListenerNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # A complex type for a range of ports for a listener.
    #
    # @note When making an API call, you may pass PortRange
    #   data as a hash:
    #
    #       {
    #         from_port: 1,
    #         to_port: 1,
    #       }
    #
    # @!attribute [rw] from_port
    #   The first port in the range of ports, inclusive.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port in the range of ports, inclusive.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/PortRange AWS API Documentation
    #
    class PortRange < Struct.new(
      :from_port,
      :to_port)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAcceleratorAttributesRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString",
    #         flow_logs_enabled: false,
    #         flow_logs_s3_bucket: "GenericString",
    #         flow_logs_s3_prefix: "GenericString",
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator that you want to
    #   update. Attribute is required.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow Logs][1] in the *AWS Global
    #   Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants AWS Global Accelerator permission
    #   to write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`. If
    #   you don’t specify a prefix, the flow logs are stored in the root of
    #   the bucket.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorAttributesRequest AWS API Documentation
    #
    class UpdateAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_attributes
    #   Updated attributes for the accelerator.
    #   @return [Types::AcceleratorAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorAttributesResponse AWS API Documentation
    #
    class UpdateAcceleratorAttributesResponse < Struct.new(
      :accelerator_attributes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAcceleratorRequest
    #   data as a hash:
    #
    #       {
    #         accelerator_arn: "GenericString", # required
    #         name: "GenericString",
    #         ip_address_type: "IPV4", # accepts IPV4
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the accelerator. The name can have a maximum of 32
    #   characters, must contain only alphanumeric characters or hyphens
    #   (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The value for the address type must be IPv4.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether an accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If
    #   set to false, the accelerator can be deleted.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorRequest AWS API Documentation
    #
    class UpdateAcceleratorRequest < Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled)
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   Information about the updated accelerator.
    #   @return [Types::Accelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorResponse AWS API Documentation
    #
    class UpdateAcceleratorResponse < Struct.new(
      :accelerator)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEndpointGroupRequest
    #   data as a hash:
    #
    #       {
    #         endpoint_group_arn: "GenericString", # required
    #         endpoint_configurations: [
    #           {
    #             endpoint_id: "GenericString",
    #             weight: 1,
    #           },
    #         ],
    #         traffic_dial_percentage: 1.0,
    #         health_check_port: 1,
    #         health_check_protocol: "TCP", # accepts TCP, HTTP, HTTPS
    #         health_check_path: "GenericString",
    #         health_check_interval_seconds: 1,
    #         threshold_count: 1,
    #       }
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointConfiguration>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an AWS Region. Additional
    #   traffic is distributed to other endpoint groups for this listener.
    #
    #   Use this action to increase (dial up) or decrease (dial down)
    #   traffic to a specific Region. The percentage is applied to the
    #   traffic that would otherwise have been routed to the Region based on
    #   optimal routing.
    #
    #   The default value is 100.
    #   @return [Float]
    #
    # @!attribute [rw] health_check_port
    #   The port that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If
    #   the listener port is a list of ports, Global Accelerator uses the
    #   first port in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol that AWS Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default value is
    #   TCP.
    #   @return [String]
    #
    # @!attribute [rw] health_check_path
    #   If the protocol is HTTP/S, then this specifies the path that is the
    #   destination for health check targets. The default value is slash
    #   (/).
    #   @return [String]
    #
    # @!attribute [rw] health_check_interval_seconds
    #   The time—10 seconds or 30 seconds—between each health check for an
    #   endpoint. The default value is 30.
    #   @return [Integer]
    #
    # @!attribute [rw] threshold_count
    #   The number of consecutive health checks required to set the state of
    #   a healthy endpoint to unhealthy, or to set an unhealthy endpoint to
    #   healthy. The default value is 3.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateEndpointGroupRequest AWS API Documentation
    #
    class UpdateEndpointGroupRequest < Struct.new(
      :endpoint_group_arn,
      :endpoint_configurations,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count)
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group
    #   The information about the endpoint group that was updated.
    #   @return [Types::EndpointGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateEndpointGroupResponse AWS API Documentation
    #
    class UpdateEndpointGroupResponse < Struct.new(
      :endpoint_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateListenerRequest
    #   data as a hash:
    #
    #       {
    #         listener_arn: "GenericString", # required
    #         port_ranges: [
    #           {
    #             from_port: 1,
    #             to_port: 1,
    #           },
    #         ],
    #         protocol: "TCP", # accepts TCP, UDP
    #         client_affinity: "NONE", # accepts NONE, SOURCE_IP
    #       }
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to update.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The updated list of port ranges for the connections from clients to
    #   the accelerator.
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] protocol
    #   The updated protocol for the connections from clients to the
    #   accelerator.
    #   @return [String]
    #
    # @!attribute [rw] client_affinity
    #   Client affinity lets you direct all requests from a user to the same
    #   endpoint, if you have stateful applications, regardless of the port
    #   and protocol of the client request. Clienty affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   AWS Global Accelerator uses a consistent-flow hashing algorithm to
    #   choose the optimal endpoint for a connection. If client affinity is
    #   `NONE`, Global Accelerator uses the "five-tuple" (5-tuple)
    #   properties—source IP address, source port, destination IP address,
    #   destination port, and protocol—to select the hash value, and then
    #   chooses the best endpoint. However, with this setting, if someone
    #   uses different ports to connect to Global Accelerator, their
    #   connections might not be always routed to the same endpoint because
    #   the hash value changes.
    #
    #   If you want a given client to always be routed to the same endpoint,
    #   set client affinity to `SOURCE_IP` instead. When you use the
    #   `SOURCE_IP` setting, Global Accelerator uses the "two-tuple"
    #   (2-tuple) properties— source (client) IP address and destination IP
    #   address—to select the hash value.
    #
    #   The default value is `NONE`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateListenerRequest AWS API Documentation
    #
    class UpdateListenerRequest < Struct.new(
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity)
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   Information for the updated listener.
    #   @return [Types::Listener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateListenerResponse AWS API Documentation
    #
    class UpdateListenerResponse < Struct.new(
      :listener)
      include Aws::Structure
    end

  end
end
