# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
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
    #   The name of the accelerator. The name must contain only alphanumeric
    #   characters or hyphens (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a standard
    #   accelerator, the value can be IPV4 or DUAL\_STACK.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If
    #   set to false, accelerator can be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_sets
    #   The static IP addresses that Global Accelerator associates with the
    #   accelerator.
    #   @return [Array<Types::IpSet>]
    #
    # @!attribute [rw] dns_name
    #   The Domain Name System (DNS) name that Global Accelerator creates
    #   that points to an accelerator's static IPv4 addresses.
    #
    #   The naming convention for the DNS name for an accelerator is the
    #   following: A lowercase letter a, followed by a 16-bit random hex
    #   string, followed by .awsglobalaccelerator.com. For example:
    #   a1234567890abcdef.awsglobalaccelerator.com.
    #
    #   If you have a dual-stack accelerator, you also have a second DNS
    #   name, `DualStackDnsName`, that points to both the A record and the
    #   AAAA record for all four static addresses for the accelerator: two
    #   IPv4 addresses and two IPv6 addresses.
    #
    #   For more information about the default DNS name, see [ Support for
    #   DNS addressing in Global Accelerator][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html
    #   @return [String]
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
    # @!attribute [rw] dual_stack_dns_name
    #   The Domain Name System (DNS) name that Global Accelerator creates
    #   that points to a dual-stack accelerator's four static IP addresses:
    #   two IPv4 addresses and two IPv6 addresses.
    #
    #   The naming convention for the dual-stack DNS name is the following:
    #   A lowercase letter a, followed by a 16-bit random hex string,
    #   followed by .dualstack.awsglobalaccelerator.com. For example:
    #   a1234567890abcdef.dualstack.awsglobalaccelerator.com.
    #
    #   Note: Global Accelerator also assigns a default DNS name, `DnsName`,
    #   to your accelerator that points just to the static IPv4 addresses.
    #
    #   For more information, see [ Support for DNS addressing in Global
    #   Accelerator][1] in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A history of changes that you make to an accelerator in Global
    #   Accelerator.
    #   @return [Array<Types::AcceleratorEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/Accelerator AWS API Documentation
    #
    class Accelerator < Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :dns_name,
      :status,
      :created_time,
      :last_modified_time,
      :dual_stack_dns_name,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of an accelerator.
    #
    # @!attribute [rw] flow_logs_enabled
    #   Indicates whether flow logs are enabled. The default value is false.
    #   If the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must
    #   be specified.
    #
    #   For more information, see [Flow logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   The prefix for the location in the Amazon S3 bucket for the flow
    #   logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you specify slash (/) for the S3 bucket prefix, the log file
    #   bucket folder structure will include a double slash (//), like the
    #   following:
    #
    #   s3-bucket\_name//AWSLogs/aws\_account\_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AcceleratorAttributes AWS API Documentation
    #
    class AcceleratorAttributes < Struct.new(
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains a `Timestamp` value and `Message` for
    # changes that you make to an accelerator in Global Accelerator.
    # Messages stored here provide progress or error information when you
    # update an accelerator from IPv4 to dual-stack, or from dual-stack to
    # IPv4. Global Accelerator stores a maximum of ten event messages.
    #
    # @!attribute [rw] message
    #   A string that contains an `Event` message describing changes or
    #   errors when you update an accelerator in Global Accelerator from
    #   IPv4 to dual-stack, or dual-stack to IPv4.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   A timestamp for when you update an accelerator in Global Accelerator
    #   from IPv4 to dual-stack, or dual-stack to IPv4.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AcceleratorEvent AWS API Documentation
    #
    class AcceleratorEvent < Struct.new(
      :message,
      :timestamp)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # You don't have access permission.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects to add to a custom routing accelerator.
    #   @return [Array<Types::CustomRoutingEndpointConfiguration>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group for the custom
    #   routing endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddCustomRoutingEndpointsRequest AWS API Documentation
    #
    class AddCustomRoutingEndpointsRequest < Struct.new(
      :endpoint_configurations,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_descriptions
    #   The endpoint objects added to the custom routing accelerator.
    #   @return [Array<Types::CustomRoutingEndpointDescription>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group for the custom
    #   routing endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddCustomRoutingEndpointsResponse AWS API Documentation
    #
    class AddCustomRoutingEndpointsResponse < Struct.new(
      :endpoint_descriptions,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointConfiguration>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddEndpointsRequest AWS API Documentation
    #
    class AddEndpointsRequest < Struct.new(
      :endpoint_configurations,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_descriptions
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointDescription>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AddEndpointsResponse AWS API Documentation
    #
    class AddEndpointsResponse < Struct.new(
      :endpoint_descriptions,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr
    #   The address range, in CIDR notation. This must be the exact range
    #   that you provisioned. You can't advertise only a portion of the
    #   provisioned range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AdvertiseByoipCidrRequest AWS API Documentation
    #
    class AdvertiseByoipCidrRequest < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] byoip_cidr
    #   Information about the address range.
    #   @return [Types::ByoipCidr]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AdvertiseByoipCidrResponse AWS API Documentation
    #
    class AdvertiseByoipCidrResponse < Struct.new(
      :byoip_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_addresses
    #   A list of specific Amazon EC2 instance IP addresses (destination
    #   addresses) in a subnet that you want to allow to receive traffic.
    #   The IP addresses must be a subset of the IP addresses that you
    #   specified for the endpoint group.
    #
    #   `DestinationAddresses` is required if `AllowAllTrafficToEndpoint` is
    #   `FALSE` or is not specified.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_ports
    #   A list of specific Amazon EC2 instance ports (destination ports)
    #   that you want to allow to receive traffic.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] allow_all_traffic_to_endpoint
    #   Indicates whether all destination IP addresses and ports for a
    #   specified VPC subnet endpoint can receive traffic from a custom
    #   routing accelerator. The value is TRUE or FALSE.
    #
    #   When set to TRUE, *all* destinations in the custom routing VPC
    #   subnet can receive traffic. Note that you cannot specify destination
    #   IP addresses and ports when the value is set to TRUE.
    #
    #   When set to FALSE (or not specified), you *must* specify a list of
    #   destination IP addresses that are allowed to receive traffic. A list
    #   of ports is optional. If you don't specify a list of ports, the
    #   ports that can accept traffic is the same as the ports configured
    #   for the endpoint group.
    #
    #   The default value is FALSE.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/AllowCustomRoutingTrafficRequest AWS API Documentation
    #
    class AllowCustomRoutingTrafficRequest < Struct.new(
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :allow_all_traffic_to_endpoint)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an IP address range that is provisioned for use with
    # your Amazon Web Services resources through bring your own IP address
    # (BYOIP).
    #
    # The following describes each BYOIP `State` that your IP address range
    # can be in.
    #
    # * **PENDING\_PROVISIONING** — You’ve submitted a request to provision
    #   an IP address range but it is not yet provisioned with Global
    #   Accelerator.
    #
    # * **READY** — The address range is provisioned with Global Accelerator
    #   and can be advertised.
    #
    # * **PENDING\_ADVERTISING** — You’ve submitted a request for Global
    #   Accelerator to advertise an address range but it is not yet being
    #   advertised.
    #
    # * **ADVERTISING** — The address range is being advertised by Global
    #   Accelerator.
    #
    # * **PENDING\_WITHDRAWING** — You’ve submitted a request to withdraw an
    #   address range from being advertised but it is still being advertised
    #   by Global Accelerator.
    #
    # * **PENDING\_DEPROVISIONING** — You’ve submitted a request to
    #   deprovision an address range from Global Accelerator but it is still
    #   provisioned.
    #
    # * **DEPROVISIONED** — The address range is deprovisioned from Global
    #   Accelerator.
    #
    # * <b>FAILED\_PROVISION </b> — The request to provision the address
    #   range from Global Accelerator was not successful. Please make sure
    #   that you provide all of the correct information, and try again. If
    #   the request fails a second time, contact Amazon Web Services
    #   support.
    #
    # * **FAILED\_ADVERTISING** — The request for Global Accelerator to
    #   advertise the address range was not successful. Please make sure
    #   that you provide all of the correct information, and try again. If
    #   the request fails a second time, contact Amazon Web Services
    #   support.
    #
    # * **FAILED\_WITHDRAW** — The request to withdraw the address range
    #   from advertising by Global Accelerator was not successful. Please
    #   make sure that you provide all of the correct information, and try
    #   again. If the request fails a second time, contact Amazon Web
    #   Services support.
    #
    # * <b>FAILED\_DEPROVISION </b> — The request to deprovision the address
    #   range from Global Accelerator was not successful. Please make sure
    #   that you provide all of the correct information, and try again. If
    #   the request fails a second time, contact Amazon Web Services
    #   support.
    #
    # @!attribute [rw] cidr
    #   The address range, in CIDR notation.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The state of the address pool.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A history of status changes for an IP address range that you bring
    #   to Global Accelerator through bring your own IP address (BYOIP).
    #   @return [Array<Types::ByoipCidrEvent>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ByoipCidr AWS API Documentation
    #
    class ByoipCidr < Struct.new(
      :cidr,
      :state,
      :events)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains a `Message` and a `Timestamp` value for
    # changes that you make in the status of an IP address range that you
    # bring to Global Accelerator through bring your own IP address (BYOIP).
    #
    # @!attribute [rw] message
    #   A string that contains an `Event` message describing changes that
    #   you make in the status of an IP address range that you bring to
    #   Global Accelerator through bring your own IP address (BYOIP).
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   A timestamp for when you make a status change for an IP address
    #   range that you bring to Global Accelerator through bring your own IP
    #   address (BYOIP).
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ByoipCidrEvent AWS API Documentation
    #
    class ByoipCidrEvent < Struct.new(
      :message,
      :timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIDR that you specified was not found or is incorrect.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ByoipCidrNotFoundException AWS API Documentation
    #
    class ByoipCidrNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides authorization for Amazon to bring a specific IP address range
    # to a specific Amazon Web Services account using bring your own IP
    # addresses (BYOIP).
    #
    # For more information, see [Bring your own IP addresses (BYOIP)][1] in
    # the *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #
    # @!attribute [rw] message
    #   The plain-text authorization message for the prefix and account.
    #   @return [String]
    #
    # @!attribute [rw] signature
    #   The signed authorization message for the prefix and account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CidrAuthorizationContext AWS API Documentation
    #
    class CidrAuthorizationContext < Struct.new(
      :message,
      :signature)
      SENSITIVE = []
      include Aws::Structure
    end

    # You can't use both of those options.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.),
    #   or hyphens (-), and must not begin or end with a hyphen or period.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a standard
    #   accelerator, the value can be IPV4 or DUAL\_STACK.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   Optionally, if you've added your own IP address pool to Global
    #   Accelerator (BYOIP), you can choose an IPv4 address from your own
    #   pool to use for the accelerator's static IPv4 address when you
    #   create an accelerator.
    #
    #   After you bring an address range to Amazon Web Services, it appears
    #   in your account as an address pool. When you create an accelerator,
    #   you can assign one IPv4 address from your range to it. Global
    #   Accelerator assigns you a second static IPv4 address from an Amazon
    #   IP address range. If you bring two IPv4 address ranges to Amazon Web
    #   Services, you can assign one IPv4 address from each range to your
    #   accelerator. This restriction is because Global Accelerator assigns
    #   each address range to a different network zone, for high
    #   availability.
    #
    #   You can specify one or two addresses, separated by a space. Do not
    #   include the /32 suffix.
    #
    #   Note that you can't update IP addresses for an existing
    #   accelerator. To change them, you must create a new accelerator with
    #   the new addresses.
    #
    #   For more information, see [Bring your own IP addresses (BYOIP)][1]
    #   in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #   @return [Array<String>]
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for an accelerator.
    #
    #   For more information, see [Tagging in Global Accelerator][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateAcceleratorRequest AWS API Documentation
    #
    class CreateAcceleratorRequest < Struct.new(
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of a custom routing accelerator. The name can have a
    #   maximum of 64 characters, must contain only alphanumeric characters
    #   or hyphens (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a custom
    #   routing accelerator, the value must be IPV4.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   Optionally, if you've added your own IP address pool to Global
    #   Accelerator (BYOIP), you can choose an IPv4 address from your own
    #   pool to use for the accelerator's static IPv4 address when you
    #   create an accelerator.
    #
    #   After you bring an address range to Amazon Web Services, it appears
    #   in your account as an address pool. When you create an accelerator,
    #   you can assign one IPv4 address from your range to it. Global
    #   Accelerator assigns you a second static IPv4 address from an Amazon
    #   IP address range. If you bring two IPv4 address ranges to Amazon Web
    #   Services, you can assign one IPv4 address from each range to your
    #   accelerator. This restriction is because Global Accelerator assigns
    #   each address range to a different network zone, for high
    #   availability.
    #
    #   You can specify one or two addresses, separated by a space. Do not
    #   include the /32 suffix.
    #
    #   Note that you can't update IP addresses for an existing
    #   accelerator. To change them, you must create a new accelerator with
    #   the new addresses.
    #
    #   For more information, see [Bring your own IP addresses (BYOIP)][1]
    #   in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html
    #   @return [Array<String>]
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
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   Create tags for an accelerator.
    #
    #   For more information, see [Tagging in Global Accelerator][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingAcceleratorRequest AWS API Documentation
    #
    class CreateCustomRoutingAcceleratorRequest < Struct.new(
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   The accelerator that is created.
    #   @return [Types::CustomRoutingAccelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingAcceleratorResponse AWS API Documentation
    #
    class CreateCustomRoutingAcceleratorResponse < Struct.new(
      :accelerator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener for a custom routing
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located.
    #   A listener can have only one endpoint group in a specific Region.
    #   @return [String]
    #
    # @!attribute [rw] destination_configurations
    #   Sets the port range and protocol for all endpoints (virtual private
    #   cloud subnets) in a custom routing endpoint group to accept client
    #   traffic on.
    #   @return [Array<Types::CustomRoutingDestinationConfiguration>]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingEndpointGroupRequest AWS API Documentation
    #
    class CreateCustomRoutingEndpointGroupRequest < Struct.new(
      :listener_arn,
      :endpoint_group_region,
      :destination_configurations,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group
    #   The information about the endpoint group created for a custom
    #   routing accelerator.
    #   @return [Types::CustomRoutingEndpointGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingEndpointGroupResponse AWS API Documentation
    #
    class CreateCustomRoutingEndpointGroupResponse < Struct.new(
      :endpoint_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator for a custom
    #   routing listener.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The port range to support for connections from clients to your
    #   accelerator.
    #
    #   Separately, you set port ranges for endpoints. For more information,
    #   see [About endpoints for custom routing accelerators][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html
    #   @return [Array<Types::PortRange>]
    #
    # @!attribute [rw] idempotency_token
    #   A unique, case-sensitive identifier that you provide to ensure the
    #   idempotency—that is, the uniqueness—of the request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingListenerRequest AWS API Documentation
    #
    class CreateCustomRoutingListenerRequest < Struct.new(
      :accelerator_arn,
      :port_ranges,
      :idempotency_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   The listener that you've created for a custom routing accelerator.
    #   @return [Types::CustomRoutingListener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CreateCustomRoutingListenerResponse AWS API Documentation
    #
    class CreateCustomRoutingListenerResponse < Struct.new(
      :listener)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located.
    #   A listener can have only one endpoint group in a specific Region.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointConfiguration>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an Amazon Web Services Region.
    #   Additional traffic is distributed to other endpoint groups for this
    #   listener.
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
    #   The port that Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If
    #   listener port is a list of ports, Global Accelerator uses the first
    #   port in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol that Global Accelerator uses to check the health of
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] port_overrides
    #   Override specific listener ports used to route traffic to endpoints
    #   that are part of this endpoint group. For example, you can create a
    #   port override in which the listener receives user traffic on ports
    #   80 and 443, but your accelerator routes that traffic to ports 1080
    #   and 1443, respectively, on the endpoints.
    #
    #   For more information, see [ Overriding listener ports][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html
    #   @return [Array<Types::PortOverride>]
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
      :idempotency_token,
      :port_overrides)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   and protocol of the client request. Client affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   Global Accelerator uses a consistent-flow hashing algorithm to
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
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of a custom routing accelerator.
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the accelerator. The name must contain only alphanumeric
    #   characters or hyphens (-), and must not begin or end with a hyphen.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a custom
    #   routing accelerator, the value must be IPV4.
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   Indicates whether the accelerator is enabled. The value is true or
    #   false. The default value is true.
    #
    #   If the value is set to true, the accelerator cannot be deleted. If
    #   set to false, accelerator can be deleted.
    #   @return [Boolean]
    #
    # @!attribute [rw] ip_sets
    #   The static IP addresses that Global Accelerator associates with the
    #   accelerator.
    #   @return [Array<Types::IpSet>]
    #
    # @!attribute [rw] dns_name
    #   The Domain Name System (DNS) name that Global Accelerator creates
    #   that points to an accelerator's static IPv4 addresses.
    #
    #   The naming convention for the DNS name is the following: A lowercase
    #   letter a, followed by a 16-bit random hex string, followed by
    #   .awsglobalaccelerator.com. For example:
    #   a1234567890abcdef.awsglobalaccelerator.com.
    #
    #   If you have a dual-stack accelerator, you also have a second DNS
    #   name, `DualStackDnsName`, that points to both the A record and the
    #   AAAA record for all four static addresses for the accelerator: two
    #   IPv4 addresses and two IPv6 addresses.
    #
    #   For more information about the default DNS name, see [ Support for
    #   DNS addressing in Global Accelerator][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html
    #   @return [String]
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingAccelerator AWS API Documentation
    #
    class CustomRoutingAccelerator < Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :dns_name,
      :status,
      :created_time,
      :last_modified_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of a custom routing accelerator.
    #
    # @!attribute [rw] flow_logs_enabled
    #   Indicates whether flow logs are enabled. The default value is false.
    #   If the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must
    #   be specified.
    #
    #   For more information, see [Flow logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   The prefix for the location in the Amazon S3 bucket for the flow
    #   logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you don’t specify a prefix, the flow logs are stored in the root
    #   of the bucket. If you specify slash (/) for the S3 bucket prefix,
    #   the log file bucket folder structure will include a double slash
    #   (//), like the following:
    #
    #   DOC-EXAMPLE-BUCKET//AWSLogs/aws\_account\_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingAcceleratorAttributes AWS API Documentation
    #
    class CustomRoutingAcceleratorAttributes < Struct.new(
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a custom routing accelerator, sets the port range and protocol for
    # all endpoints (virtual private cloud subnets) in an endpoint group to
    # accept client traffic on.
    #
    # @!attribute [rw] from_port
    #   The first port, inclusive, in the range of ports for the endpoint
    #   group that is associated with a custom routing accelerator.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port, inclusive, in the range of ports for the endpoint
    #   group that is associated with a custom routing accelerator.
    #   @return [Integer]
    #
    # @!attribute [rw] protocols
    #   The protocol for the endpoint group that is associated with a custom
    #   routing accelerator. The protocol can be either TCP or UDP.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingDestinationConfiguration AWS API Documentation
    #
    class CustomRoutingDestinationConfiguration < Struct.new(
      :from_port,
      :to_port,
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # For a custom routing accelerator, describes the port range and
    # protocol for all endpoints (virtual private cloud subnets) in an
    # endpoint group to accept client traffic on.
    #
    # @!attribute [rw] from_port
    #   The first port, inclusive, in the range of ports for the endpoint
    #   group that is associated with a custom routing accelerator.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The last port, inclusive, in the range of ports for the endpoint
    #   group that is associated with a custom routing accelerator.
    #   @return [Integer]
    #
    # @!attribute [rw] protocols
    #   The protocol for the endpoint group that is associated with a custom
    #   routing accelerator. The protocol can be either TCP or UDP.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingDestinationDescription AWS API Documentation
    #
    class CustomRoutingDestinationDescription < Struct.new(
      :from_port,
      :to_port,
      :protocols)
      SENSITIVE = []
      include Aws::Structure
    end

    # The list of endpoint objects. For custom routing, this is a list of
    # virtual private cloud (VPC) subnet IDs.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingEndpointConfiguration AWS API Documentation
    #
    class CustomRoutingEndpointConfiguration < Struct.new(
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for an endpoint for a custom routing accelerator. Each
    # endpoint group can include one or more endpoints, which are virtual
    # private cloud (VPC) subnets.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingEndpointDescription AWS API Documentation
    #
    class CustomRoutingEndpointDescription < Struct.new(
      :endpoint_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for the endpoint group for a custom routing
    # accelerator. An Amazon Web Services Region can have only one endpoint
    # group for a specific listener.
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located.
    #   @return [String]
    #
    # @!attribute [rw] destination_descriptions
    #   For a custom routing accelerator, describes the port range and
    #   protocol for all endpoints (virtual private cloud subnets) in an
    #   endpoint group to accept client traffic on.
    #   @return [Array<Types::CustomRoutingDestinationDescription>]
    #
    # @!attribute [rw] endpoint_descriptions
    #   For a custom routing accelerator, describes the endpoints (virtual
    #   private cloud subnets) in an endpoint group to accept client traffic
    #   on.
    #   @return [Array<Types::CustomRoutingEndpointDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingEndpointGroup AWS API Documentation
    #
    class CustomRoutingEndpointGroup < Struct.new(
      :endpoint_group_arn,
      :endpoint_group_region,
      :destination_descriptions,
      :endpoint_descriptions)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for a listener for a custom routing accelerator.
    #
    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The port range to support for connections from clients to your
    #   accelerator.
    #
    #   Separately, you set port ranges for endpoints. For more information,
    #   see [About endpoints for custom routing accelerators][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html
    #   @return [Array<Types::PortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/CustomRoutingListener AWS API Documentation
    #
    class CustomRoutingListener < Struct.new(
      :listener_arn,
      :port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of an accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteAcceleratorRequest AWS API Documentation
    #
    class DeleteAcceleratorRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingAcceleratorRequest AWS API Documentation
    #
    class DeleteCustomRoutingAcceleratorRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingEndpointGroupRequest AWS API Documentation
    #
    class DeleteCustomRoutingEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteCustomRoutingListenerRequest AWS API Documentation
    #
    class DeleteCustomRoutingListenerRequest < Struct.new(
      :listener_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteEndpointGroupRequest AWS API Documentation
    #
    class DeleteEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeleteListenerRequest AWS API Documentation
    #
    class DeleteListenerRequest < Struct.new(
      :listener_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. For custom routing accelerators, this is the
    #   virtual private cloud (VPC) subnet ID.
    #   @return [String]
    #
    # @!attribute [rw] destination_addresses
    #   A list of specific Amazon EC2 instance IP addresses (destination
    #   addresses) in a subnet that you want to prevent from receiving
    #   traffic. The IP addresses must be a subset of the IP addresses
    #   allowed for the VPC subnet associated with the endpoint group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_ports
    #   A list of specific Amazon EC2 instance ports (destination ports) in
    #   a subnet endpoint that you want to prevent from receiving traffic.
    #   @return [Array<Integer>]
    #
    # @!attribute [rw] deny_all_traffic_to_endpoint
    #   Indicates whether all destination IP addresses and ports for a
    #   specified VPC subnet endpoint *cannot* receive traffic from a custom
    #   routing accelerator. The value is TRUE or FALSE.
    #
    #   When set to TRUE, *no* destinations in the custom routing VPC subnet
    #   can receive traffic. Note that you cannot specify destination IP
    #   addresses and ports when the value is set to TRUE.
    #
    #   When set to FALSE (or not specified), you *must* specify a list of
    #   destination IP addresses that cannot receive traffic. A list of
    #   ports is optional. If you don't specify a list of ports, the ports
    #   that can accept traffic is the same as the ports configured for the
    #   endpoint group.
    #
    #   The default value is FALSE.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DenyCustomRoutingTrafficRequest AWS API Documentation
    #
    class DenyCustomRoutingTrafficRequest < Struct.new(
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :deny_all_traffic_to_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr
    #   The address range, in CIDR notation. The prefix must be the same
    #   prefix that you specified when you provisioned the address range.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeprovisionByoipCidrRequest AWS API Documentation
    #
    class DeprovisionByoipCidrRequest < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] byoip_cidr
    #   Information about the address range.
    #   @return [Types::ByoipCidr]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DeprovisionByoipCidrResponse AWS API Documentation
    #
    class DeprovisionByoipCidrResponse < Struct.new(
      :byoip_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator with the
    #   attributes that you want to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorAttributesRequest AWS API Documentation
    #
    class DescribeAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeAcceleratorRequest AWS API Documentation
    #
    class DescribeAcceleratorRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   describe the attributes for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAcceleratorAttributesRequest AWS API Documentation
    #
    class DescribeCustomRoutingAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_attributes
    #   The attributes of the custom routing accelerator.
    #   @return [Types::CustomRoutingAcceleratorAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAcceleratorAttributesResponse AWS API Documentation
    #
    class DescribeCustomRoutingAcceleratorAttributesResponse < Struct.new(
      :accelerator_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAcceleratorRequest AWS API Documentation
    #
    class DescribeCustomRoutingAcceleratorRequest < Struct.new(
      :accelerator_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   The description of the custom routing accelerator.
    #   @return [Types::CustomRoutingAccelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingAcceleratorResponse AWS API Documentation
    #
    class DescribeCustomRoutingAcceleratorResponse < Struct.new(
      :accelerator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingEndpointGroupRequest AWS API Documentation
    #
    class DescribeCustomRoutingEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group
    #   The description of an endpoint group for a custom routing
    #   accelerator.
    #   @return [Types::CustomRoutingEndpointGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingEndpointGroupResponse AWS API Documentation
    #
    class DescribeCustomRoutingEndpointGroupResponse < Struct.new(
      :endpoint_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingListenerRequest AWS API Documentation
    #
    class DescribeCustomRoutingListenerRequest < Struct.new(
      :listener_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   The description of a listener for a custom routing accelerator.
    #   @return [Types::CustomRoutingListener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeCustomRoutingListenerResponse AWS API Documentation
    #
    class DescribeCustomRoutingListenerResponse < Struct.new(
      :listener)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeEndpointGroupRequest AWS API Documentation
    #
    class DescribeEndpointGroupRequest < Struct.new(
      :endpoint_group_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to describe.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DescribeListenerRequest AWS API Documentation
    #
    class DescribeListenerRequest < Struct.new(
      :listener_arn)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # The port mappings for a specified endpoint IP address (destination).
    #
    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator
    #   that you have port mappings for.
    #   @return [String]
    #
    # @!attribute [rw] accelerator_socket_addresses
    #   The IP address/port combinations (sockets) that map to a given
    #   destination socket address.
    #   @return [Array<Types::SocketAddress>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The ID for the virtual private cloud (VPC) subnet.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The Amazon Web Services Region for the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] destination_socket_address
    #   The endpoint IP address/port combination for traffic received on the
    #   accelerator socket address.
    #   @return [Types::SocketAddress]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a custom
    #   routing accelerator, the value must be IPV4.
    #   @return [String]
    #
    # @!attribute [rw] destination_traffic_state
    #   Indicates whether or not a port mapping destination can receive
    #   traffic. The value is either ALLOW, if traffic is allowed to the
    #   destination, or DENY, if traffic is not allowed to the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/DestinationPortMapping AWS API Documentation
    #
    class DestinationPortMapping < Struct.new(
      :accelerator_arn,
      :accelerator_socket_addresses,
      :endpoint_group_arn,
      :endpoint_id,
      :endpoint_group_region,
      :destination_socket_address,
      :ip_address_type,
      :destination_traffic_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint that you specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointAlreadyExistsException AWS API Documentation
    #
    class EndpointAlreadyExistsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for endpoints. A resource must be valid and active when
    # you add it as an endpoint.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. If the endpoint is a Network Load Balancer
    #   or Application Load Balancer, this is the Amazon Resource Name (ARN)
    #   of the resource. If the endpoint is an Elastic IP address, this is
    #   the Elastic IP address allocation ID. For Amazon EC2 instances, this
    #   is the EC2 instance ID. A resource must be valid and active when you
    #   add it as an endpoint.
    #
    #   An Application Load Balancer can be either internal or
    #   internet-facing.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight associated with the endpoint. When you add weights to
    #   endpoints, you configure Global Accelerator to route traffic based
    #   on proportions that you specify. For example, you might specify
    #   endpoint weights of 4, 5, 5, and 6 (sum=20). The result is that 4/20
    #   of your traffic, on average, is routed to the first endpoint, 5/20
    #   is routed both to the second and third endpoints, and 6/20 is routed
    #   to the last endpoint. For more information, see [Endpoint
    #   weights][1] in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html
    #   @return [Integer]
    #
    # @!attribute [rw] client_ip_preservation_enabled
    #   Indicates whether client IP address preservation is enabled for an
    #   endpoint. The value is true or false. The default value is true for
    #   new accelerators.
    #
    #   If the value is set to true, the client's IP address is preserved
    #   in the `X-Forwarded-For` request header as traffic travels to
    #   applications on the endpoint fronted by the accelerator.
    #
    #   Client IP address preservation is supported, in specific Amazon Web
    #   Services Regions, for endpoints that are Application Load Balancers
    #   and Amazon EC2 instances.
    #
    #   For more information, see [ Preserve client IP addresses in Global
    #   Accelerator][1] in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointConfiguration AWS API Documentation
    #
    class EndpointConfiguration < Struct.new(
      :endpoint_id,
      :weight,
      :client_ip_preservation_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for an endpoint. Each endpoint group can include one or
    # more endpoints, such as load balancers.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. If the endpoint is a Network Load Balancer
    #   or Application Load Balancer, this is the Amazon Resource Name (ARN)
    #   of the resource. If the endpoint is an Elastic IP address, this is
    #   the Elastic IP address allocation ID. For Amazon EC2 instances, this
    #   is the EC2 instance ID.
    #
    #   An Application Load Balancer can be either internal or
    #   internet-facing.
    #   @return [String]
    #
    # @!attribute [rw] weight
    #   The weight associated with the endpoint. When you add weights to
    #   endpoints, you configure Global Accelerator to route traffic based
    #   on proportions that you specify. For example, you might specify
    #   endpoint weights of 4, 5, 5, and 6 (sum=20). The result is that 4/20
    #   of your traffic, on average, is routed to the first endpoint, 5/20
    #   is routed both to the second and third endpoints, and 6/20 is routed
    #   to the last endpoint. For more information, see [Endpoint
    #   weights][1] in the *Global Accelerator Developer Guide*.
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
    #   Returns a null result.
    #   @return [String]
    #
    # @!attribute [rw] client_ip_preservation_enabled
    #   Indicates whether client IP address preservation is enabled for an
    #   endpoint. The value is true or false. The default value is true for
    #   new accelerators.
    #
    #   If the value is set to true, the client's IP address is preserved
    #   in the `X-Forwarded-For` request header as traffic travels to
    #   applications on the endpoint fronted by the accelerator.
    #
    #   Client IP address preservation is supported, in specific Amazon Web
    #   Services Regions, for endpoints that are Application Load Balancers
    #   and Amazon EC2 instances.
    #
    #   For more information, see [ Preserve client IP addresses in Global
    #   Accelerator][1] in the *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointDescription AWS API Documentation
    #
    class EndpointDescription < Struct.new(
      :endpoint_id,
      :weight,
      :health_state,
      :health_reason,
      :client_ip_preservation_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for the endpoint group. An Amazon Web Services Region
    # can have only one endpoint group for a specific listener.
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_region
    #   The Amazon Web Services Region where the endpoint group is located.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_descriptions
    #   The list of endpoint objects.
    #   @return [Array<Types::EndpointDescription>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an Amazon Web Services Region.
    #   Additional traffic is distributed to other endpoint groups for this
    #   listener.
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
    # @!attribute [rw] port_overrides
    #   Allows you to override the destination ports used to route traffic
    #   to an endpoint. Using a port override lets you map a list of
    #   external destination ports (that your users send traffic to) to a
    #   list of internal destination ports that you want an application
    #   endpoint to receive traffic on.
    #   @return [Array<Types::PortOverride>]
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
      :threshold_count,
      :port_overrides)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for an endpoint. Specifies information about the
    # endpoint to remove from the endpoint group.
    #
    # @!attribute [rw] endpoint_id
    #   An ID for the endpoint. If the endpoint is a Network Load Balancer
    #   or Application Load Balancer, this is the Amazon Resource Name (ARN)
    #   of the resource. If the endpoint is an Elastic IP address, this is
    #   the Elastic IP address allocation ID. For Amazon EC2 instances, this
    #   is the EC2 instance ID.
    #
    #   An Application Load Balancer can be either internal or
    #   internet-facing.
    #   @return [String]
    #
    # @!attribute [rw] client_ip_preservation_enabled
    #   Indicates whether client IP address preservation is enabled for an
    #   endpoint. The value is true or false.
    #
    #   If the value is set to true, the client's IP address is preserved
    #   in the `X-Forwarded-For` request header as traffic travels to
    #   applications on the endpoint fronted by the accelerator.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointIdentifier AWS API Documentation
    #
    class EndpointIdentifier < Struct.new(
      :endpoint_id,
      :client_ip_preservation_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # The endpoint that you specified doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/EndpointNotFoundException AWS API Documentation
    #
    class EndpointNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The CIDR that you specified is not valid for this action. For example,
    # the state of the CIDR might be incorrect for this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/IncorrectCidrStateException AWS API Documentation
    #
    class IncorrectCidrStateException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # There was an internal error for Global Accelerator.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/InternalServiceErrorException AWS API Documentation
    #
    class InternalServiceErrorException < Struct.new(
      :message)
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for the set of IP addresses for an accelerator.
    #
    # @!attribute [rw] ip_family
    #   IpFamily is deprecated and has been replaced by IpAddressFamily.
    #   @return [String]
    #
    # @!attribute [rw] ip_addresses
    #   The array of IP addresses in the IP address set. An IP address set
    #   can have a maximum of two IP addresses.
    #   @return [Array<String>]
    #
    # @!attribute [rw] ip_address_family
    #   The types of IP addresses included in this IP set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/IpSet AWS API Documentation
    #
    class IpSet < Struct.new(
      :ip_family,
      :ip_addresses,
      :ip_address_family)
      SENSITIVE = []
      include Aws::Structure
    end

    # Processing your request would cause you to exceed an Global
    # Accelerator limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return with a single call. To
    #   retrieve the remaining results, make another call with the returned
    #   `nextToken` value.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListByoipCidrsRequest AWS API Documentation
    #
    class ListByoipCidrsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] byoip_cidrs
    #   Information about your address ranges.
    #   @return [Array<Types::ByoipCidr>]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListByoipCidrsResponse AWS API Documentation
    #
    class ListByoipCidrsResponse < Struct.new(
      :byoip_cidrs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The number of custom routing Global Accelerator objects that you
    #   want to return with this call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingAcceleratorsRequest AWS API Documentation
    #
    class ListCustomRoutingAcceleratorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerators
    #   The list of custom routing accelerators for a customer account.
    #   @return [Array<Types::CustomRoutingAccelerator>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingAcceleratorsResponse AWS API Documentation
    #
    class ListCustomRoutingAcceleratorsResponse < Struct.new(
      :accelerators,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to list endpoint
    #   groups for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingEndpointGroupsRequest AWS API Documentation
    #
    class ListCustomRoutingEndpointGroupsRequest < Struct.new(
      :listener_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_groups
    #   The list of the endpoint groups associated with a listener for a
    #   custom routing accelerator.
    #   @return [Array<Types::CustomRoutingEndpointGroup>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingEndpointGroupsResponse AWS API Documentation
    #
    class ListCustomRoutingEndpointGroupsResponse < Struct.new(
      :endpoint_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list listeners
    #   for.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingListenersRequest AWS API Documentation
    #
    class ListCustomRoutingListenersRequest < Struct.new(
      :accelerator_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listeners
    #   The list of listeners for a custom routing accelerator.
    #   @return [Array<Types::CustomRoutingListener>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingListenersResponse AWS API Documentation
    #
    class ListCustomRoutingListenersResponse < Struct.new(
      :listeners,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_id
    #   The ID for the virtual private cloud (VPC) subnet.
    #   @return [String]
    #
    # @!attribute [rw] destination_address
    #   The endpoint IP address in a virtual private cloud (VPC) subnet for
    #   which you want to receive back port mappings.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of destination port mappings that you want to return with
    #   this call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappingsByDestinationRequest AWS API Documentation
    #
    class ListCustomRoutingPortMappingsByDestinationRequest < Struct.new(
      :endpoint_id,
      :destination_address,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] destination_port_mappings
    #   The port mappings for the endpoint IP address that you specified in
    #   the request.
    #   @return [Array<Types::DestinationPortMapping>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappingsByDestinationResponse AWS API Documentation
    #
    class ListCustomRoutingPortMappingsByDestinationResponse < Struct.new(
      :destination_port_mappings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list the custom
    #   routing port mappings for.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to list the
    #   custom routing port mappings for.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The number of destination port mappings that you want to return with
    #   this call. The default value is 10.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappingsRequest AWS API Documentation
    #
    class ListCustomRoutingPortMappingsRequest < Struct.new(
      :accelerator_arn,
      :endpoint_group_arn,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] port_mappings
    #   The port mappings for a custom routing accelerator.
    #   @return [Array<Types::PortMapping>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. You receive this token from a
    #   previous call.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListCustomRoutingPortMappingsResponse AWS API Documentation
    #
    class ListCustomRoutingPortMappingsResponse < Struct.new(
      :port_mappings,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the accelerator to list tags for.
    #   An ARN uniquely identifies an accelerator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   Root level tag for the Tags parameters.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
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
    #   and protocol of the client request. Client affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   Global Accelerator uses a consistent-flow hashing algorithm to
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # Returns the ports and associated IP addresses and ports of Amazon EC2
    # instances in your virtual private cloud (VPC) subnets. Custom routing
    # is a port mapping protocol in Global Accelerator that statically
    # associates port ranges with VPC subnets, which allows Global
    # Accelerator to route to specific instances and ports within one or
    # more subnets.
    #
    # @!attribute [rw] accelerator_port
    #   The accelerator port.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_id
    #   The IP address of the VPC subnet (the subnet ID).
    #   @return [String]
    #
    # @!attribute [rw] destination_socket_address
    #   The EC2 instance IP address and port number in the virtual private
    #   cloud (VPC) subnet.
    #   @return [Types::SocketAddress]
    #
    # @!attribute [rw] protocols
    #   The protocols supported by the endpoint group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] destination_traffic_state
    #   Indicates whether or not a port mapping destination can receive
    #   traffic. The value is either ALLOW, if traffic is allowed to the
    #   destination, or DENY, if traffic is not allowed to the destination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/PortMapping AWS API Documentation
    #
    class PortMapping < Struct.new(
      :accelerator_port,
      :endpoint_group_arn,
      :endpoint_id,
      :destination_socket_address,
      :protocols,
      :destination_traffic_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Override specific listener ports used to route traffic to endpoints
    # that are part of an endpoint group. For example, you can create a port
    # override in which the listener receives user traffic on ports 80 and
    # 443, but your accelerator routes that traffic to ports 1080 and 1443,
    # respectively, on the endpoints.
    #
    # For more information, see [ Overriding listener ports][1] in the
    # *Global Accelerator Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html
    #
    # @!attribute [rw] listener_port
    #   The listener port that you want to map to a specific endpoint port.
    #   This is the port that user traffic arrives to the Global Accelerator
    #   on.
    #   @return [Integer]
    #
    # @!attribute [rw] endpoint_port
    #   The endpoint port that you want a listener port to be mapped to.
    #   This is the port on the endpoint, such as the Application Load
    #   Balancer or Amazon EC2 instance.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/PortOverride AWS API Documentation
    #
    class PortOverride < Struct.new(
      :listener_port,
      :endpoint_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type for a range of ports for a listener.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr
    #   The public IPv4 address range, in CIDR notation. The most specific
    #   IP prefix that you can specify is /24. The address range cannot
    #   overlap with another address range that you've brought to this or
    #   another Region.
    #   @return [String]
    #
    # @!attribute [rw] cidr_authorization_context
    #   A signed document that proves that you are authorized to bring the
    #   specified IP address range to Amazon using BYOIP.
    #   @return [Types::CidrAuthorizationContext]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ProvisionByoipCidrRequest AWS API Documentation
    #
    class ProvisionByoipCidrRequest < Struct.new(
      :cidr,
      :cidr_authorization_context)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] byoip_cidr
    #   Information about the address range.
    #   @return [Types::ByoipCidr]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/ProvisionByoipCidrResponse AWS API Documentation
    #
    class ProvisionByoipCidrResponse < Struct.new(
      :byoip_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_ids
    #   The IDs for the endpoints. For custom routing accelerators, endpoint
    #   IDs are the virtual private cloud (VPC) subnet IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group to remove
    #   endpoints from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/RemoveCustomRoutingEndpointsRequest AWS API Documentation
    #
    class RemoveCustomRoutingEndpointsRequest < Struct.new(
      :endpoint_ids,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_identifiers
    #   The identifiers of the endpoints that you want to remove.
    #   @return [Array<Types::EndpointIdentifier>]
    #
    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/RemoveEndpointsRequest AWS API Documentation
    #
    class RemoveEndpointsRequest < Struct.new(
      :endpoint_identifiers,
      :endpoint_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IP address/port combination.
    #
    # @!attribute [rw] ip_address
    #   The IP address for the socket address.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port for the socket address.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/SocketAddress AWS API Documentation
    #
    class SocketAddress < Struct.new(
      :ip_address,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # A complex type that contains a `Tag` key and `Tag` value.
    #
    # @!attribute [rw] key
    #   A string that contains a `Tag` key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A string that contains a `Tag` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   add tags to. An ARN uniquely identifies a resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to a resource. A tag consists of a key and a value
    #   that you define.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # There's already a transaction in progress. Another transaction can't
    # be processed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/TransactionInProgressException AWS API Documentation
    #
    class TransactionInProgressException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the Global Accelerator resource to
    #   remove tags from. An ARN uniquely identifies a resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key pairs that you want to remove from the specified
    #   resources.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator that you want to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow Logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you specify slash (/) for the S3 bucket prefix, the log file
    #   bucket folder structure will include a double slash (//), like the
    #   following:
    #
    #   s3-bucket\_name//AWSLogs/aws\_account\_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateAcceleratorAttributesRequest AWS API Documentation
    #
    class UpdateAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.),
    #   or hyphens (-), and must not begin or end with a hyphen or period.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a standard
    #   accelerator, the value can be IPV4 or DUAL\_STACK.
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the custom routing accelerator to
    #   update attributes for.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_enabled
    #   Update whether flow logs are enabled. The default value is false. If
    #   the value is true, `FlowLogsS3Bucket` and `FlowLogsS3Prefix` must be
    #   specified.
    #
    #   For more information, see [Flow logs][1] in the *Global Accelerator
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html
    #   @return [Boolean]
    #
    # @!attribute [rw] flow_logs_s3_bucket
    #   The name of the Amazon S3 bucket for the flow logs. Attribute is
    #   required if `FlowLogsEnabled` is `true`. The bucket must exist and
    #   have a bucket policy that grants Global Accelerator permission to
    #   write to the bucket.
    #   @return [String]
    #
    # @!attribute [rw] flow_logs_s3_prefix
    #   Update the prefix for the location in the Amazon S3 bucket for the
    #   flow logs. Attribute is required if `FlowLogsEnabled` is `true`.
    #
    #   If you don’t specify a prefix, the flow logs are stored in the root
    #   of the bucket. If you specify slash (/) for the S3 bucket prefix,
    #   the log file bucket folder structure will include a double slash
    #   (//), like the following:
    #
    #   DOC-EXAMPLE-BUCKET//AWSLogs/aws\_account\_id
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAcceleratorAttributesRequest AWS API Documentation
    #
    class UpdateCustomRoutingAcceleratorAttributesRequest < Struct.new(
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_attributes
    #   Updated custom routing accelerator.
    #   @return [Types::CustomRoutingAcceleratorAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAcceleratorAttributesResponse AWS API Documentation
    #
    class UpdateCustomRoutingAcceleratorAttributesResponse < Struct.new(
      :accelerator_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator_arn
    #   The Amazon Resource Name (ARN) of the accelerator to update.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the accelerator. The name can have a maximum of 64
    #   characters, must contain only alphanumeric characters, periods (.),
    #   or hyphens (-), and must not begin or end with a hyphen or period.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type that an accelerator supports. For a custom
    #   routing accelerator, the value must be IPV4.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAcceleratorRequest AWS API Documentation
    #
    class UpdateCustomRoutingAcceleratorRequest < Struct.new(
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] accelerator
    #   Information about the updated custom routing accelerator.
    #   @return [Types::CustomRoutingAccelerator]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingAcceleratorResponse AWS API Documentation
    #
    class UpdateCustomRoutingAcceleratorResponse < Struct.new(
      :accelerator)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener_arn
    #   The Amazon Resource Name (ARN) of the listener to update.
    #   @return [String]
    #
    # @!attribute [rw] port_ranges
    #   The updated port range to support for connections from clients to
    #   your accelerator. If you remove ports that are currently being used
    #   by a subnet endpoint, the call fails.
    #
    #   Separately, you set port ranges for endpoints. For more information,
    #   see [About endpoints for custom routing accelerators][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html
    #   @return [Array<Types::PortRange>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingListenerRequest AWS API Documentation
    #
    class UpdateCustomRoutingListenerRequest < Struct.new(
      :listener_arn,
      :port_ranges)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] listener
    #   Information for the updated listener for a custom routing
    #   accelerator.
    #   @return [Types::CustomRoutingListener]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/UpdateCustomRoutingListenerResponse AWS API Documentation
    #
    class UpdateCustomRoutingListenerResponse < Struct.new(
      :listener)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint_group_arn
    #   The Amazon Resource Name (ARN) of the endpoint group.
    #   @return [String]
    #
    # @!attribute [rw] endpoint_configurations
    #   The list of endpoint objects. A resource must be valid and active
    #   when you add it as an endpoint.
    #   @return [Array<Types::EndpointConfiguration>]
    #
    # @!attribute [rw] traffic_dial_percentage
    #   The percentage of traffic to send to an Amazon Web Services Region.
    #   Additional traffic is distributed to other endpoint groups for this
    #   listener.
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
    #   The port that Global Accelerator uses to check the health of
    #   endpoints that are part of this endpoint group. The default port is
    #   the listener port that this endpoint group is associated with. If
    #   the listener port is a list of ports, Global Accelerator uses the
    #   first port in the list.
    #   @return [Integer]
    #
    # @!attribute [rw] health_check_protocol
    #   The protocol that Global Accelerator uses to check the health of
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
    # @!attribute [rw] port_overrides
    #   Override specific listener ports used to route traffic to endpoints
    #   that are part of this endpoint group. For example, you can create a
    #   port override in which the listener receives user traffic on ports
    #   80 and 443, but your accelerator routes that traffic to ports 1080
    #   and 1443, respectively, on the endpoints.
    #
    #   For more information, see [ Overriding listener ports][1] in the
    #   *Global Accelerator Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html
    #   @return [Array<Types::PortOverride>]
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
      :threshold_count,
      :port_overrides)
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

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
    #   and protocol of the client request. Client affinity gives you
    #   control over whether to always route each client to the same
    #   specific endpoint.
    #
    #   Global Accelerator uses a consistent-flow hashing algorithm to
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
      SENSITIVE = []
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
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] cidr
    #   The address range, in CIDR notation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/WithdrawByoipCidrRequest AWS API Documentation
    #
    class WithdrawByoipCidrRequest < Struct.new(
      :cidr)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] byoip_cidr
    #   Information about the address pool.
    #   @return [Types::ByoipCidr]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/globalaccelerator-2018-08-08/WithdrawByoipCidrResponse AWS API Documentation
    #
    class WithdrawByoipCidrResponse < Struct.new(
      :byoip_cidr)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
