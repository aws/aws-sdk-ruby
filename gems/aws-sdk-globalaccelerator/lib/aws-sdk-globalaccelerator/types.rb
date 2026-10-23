# frozen_string_literal: true

# This is generated code!

module Aws::GlobalAccelerator
  # This module contains the types returned by client operations.
  module Types

    # <p>An accelerator is a complex type that includes one or more listeners that process inbound connections and then direct
    # 			traffic to one or more endpoint groups, each of which includes endpoints, such as load balancers.</p>
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the accelerator. The name must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>
    #   @return [Boolean]
    # @!attribute ip_sets
    #   <p>The static IP addresses that Global Accelerator associates with the accelerator.</p>
    #   @return [Array<Types::IpSet>]
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name that Global Accelerator creates that points to an accelerator's static IPv4 addresses.</p>
    #            <p>The naming convention for the DNS name for an accelerator is the following: A lowercase letter a,
    #   			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
    #   			a1234567890abcdef.awsglobalaccelerator.com.</p>
    #            <p>If you have a dual-stack accelerator, you also have a second DNS name, <code>DualStackDnsName</code>, that points to both 
    #    			the A record and the AAAA record for all four static addresses for the accelerator: two IPv4 addresses and two IPv6 addresses.</p>
    #            <p>For more information about the default DNS name, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html">
    #   			Support for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the deployment status of the accelerator.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the accelerator was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time that the accelerator was last modified.</p>
    #   @return [Time]
    # @!attribute dual_stack_dns_name
    #   <p>The Domain Name System (DNS) name that Global Accelerator creates that points to a dual-stack accelerator's four static IP addresses:
    #   			two IPv4 addresses and two IPv6 addresses.</p>
    #            <p>The naming convention for the dual-stack DNS name is the following: A lowercase letter a,
    #   			followed by a 16-bit random hex string, followed by .dualstack.awsglobalaccelerator.com. For example:
    #   			a1234567890abcdef.dualstack.awsglobalaccelerator.com.</p>
    #            <p>Note: Global Accelerator also assigns a default DNS name, <code>DnsName</code>, to your accelerator that points just to the static IPv4 addresses. </p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-accelerators.html#about-accelerators.dns-addressing">
    #   			Support for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute events
    #   <p>A history of changes that you make to an accelerator in Global Accelerator.</p>
    #   @return [Array<Types::AcceleratorEvent>]
    class Accelerator < Struct.new(
      nil,
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
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes of an accelerator.</p>
    # @!attribute flow_logs_enabled
    #   <p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow logs</a> in
    #   		    the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   			bucket.</p>
    #   @return [String]
    # @!attribute flow_logs_s3_prefix
    #   <p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>.</p>
    #            <p>If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #            <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    #   @return [String]
    class AcceleratorAttributes < Struct.new(
      nil,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains a <code>Timestamp</code> value and <code>Message</code> for changes 
    # 			that you make to an accelerator in Global Accelerator. Messages stored here provide progress or error information when 
    # 			you update an accelerator from IPv4 to dual-stack, or from dual-stack to IPv4. Global Accelerator stores a maximum 
    # 			of ten event messages. </p>
    # @!attribute message
    #   <p>A string that contains an <code>Event</code> message describing changes or errors
    #   			when you update an accelerator in Global Accelerator from IPv4 to dual-stack, or dual-stack to IPv4.</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>A timestamp for when you update an accelerator in Global Accelerator from IPv4 to dual-stack, or dual-stack to IPv4.</p>
    #   @return [Time]
    class AcceleratorEvent < Struct.new(
      nil,
      :message,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The accelerator that you specified could not be disabled.</p>
    # @!attribute message
    #   @return [String]
    class AcceleratorNotDisabledException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The accelerator that you specified doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class AcceleratorNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You don't have access permission.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects to add to a custom routing accelerator.</p>
    #   @return [Array<Types::CustomRoutingEndpointConfiguration>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    #   @return [String]
    class AddCustomRoutingEndpointsRequest < Struct.new(
      nil,
      :endpoint_configurations,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_descriptions
    #   <p>The endpoint objects added to the custom routing accelerator.</p>
    #   @return [Array<Types::CustomRoutingEndpointDescription>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group for the custom routing endpoint.</p>
    #   @return [String]
    class AddCustomRoutingEndpointsResponse < Struct.new(
      nil,
      :endpoint_descriptions,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    #   @return [Array<Types::EndpointConfiguration>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    class AddEndpointsRequest < Struct.new(
      nil,
      :endpoint_configurations,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_descriptions
    #   <p>The list of endpoint objects.</p>
    #   @return [Array<Types::EndpointDescription>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    class AddEndpointsResponse < Struct.new(
      nil,
      :endpoint_descriptions,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation. This must be the exact range that you provisioned. 
    #   			You can't advertise only a portion of the provisioned range.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    class AdvertiseByoipCidrRequest < Struct.new(
      nil,
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #   @return [Types::ByoipCidr]
    class AdvertiseByoipCidrResponse < Struct.new(
      nil,
      :byoip_cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #   @return [String]
    # @!attribute destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to allow to receive 
    #   			traffic. The IP addresses must be a subset of the IP addresses that you specified for the endpoint group.</p>
    #            <p>
    #               <code>DestinationAddresses</code> is required if <code>AllowAllTrafficToEndpoint</code> is <code>FALSE</code> or is
    #   		not specified.</p>
    #   @return [Array<String>]
    # @!attribute destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) that you want to allow to receive traffic.</p>
    #   @return [Array<Integer>]
    # @!attribute allow_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint can receive traffic 
    #   			from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #            <p>When set to TRUE, <i>all</i> destinations in the custom routing VPC subnet can receive traffic. Note 
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #            <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that are allowed
    #   			to receive traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #            <p>The default value is FALSE.</p>
    #   @return [Boolean]
    class AllowCustomRoutingTrafficRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :allow_all_traffic_to_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The listener that you specified has an endpoint group associated with it. You must remove all dependent resources
    # 			from a listener before you can delete it.</p>
    # @!attribute message
    #   @return [String]
    class AssociatedEndpointGroupFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The accelerator that you specified has a listener associated with it. You must remove all dependent resources from an
    # 			accelerator before you can delete it.</p>
    # @!attribute message
    #   @return [String]
    class AssociatedListenerFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A cross-account attachment in Global Accelerator. A cross-account attachment
    # 			specifies the <i>principals</i> who have permission to work with <i>resources</i> 
    # 			in your account, which you also list in the attachment.</p>
    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the cross-account attachment.</p>
    #   @return [String]
    # @!attribute principals
    #   <p>The principals included in the cross-account attachment.</p>
    #   @return [Array<String>]
    # @!attribute resources
    #   <p>The resources included in the cross-account attachment.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute last_modified_time
    #   <p>The date and time that the cross-account attachment was last modified.</p>
    #   @return [Time]
    # @!attribute created_time
    #   <p>The date and time that the cross-account attachment was created.</p>
    #   @return [Time]
    class Attachment < Struct.new(
      nil,
      :attachment_arn,
      :name,
      :principals,
      :resources,
      :last_modified_time,
      :created_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>No cross-account attachment was found.</p>
    # @!attribute message
    #   @return [String]
    class AttachmentNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an IP address range that is provisioned for use with your Amazon Web Services resources through 
    # 			bring your own IP address (BYOIP).</p>
    #          <p>The following describes each BYOIP <code>State</code> that your IP address range can be in.</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>PENDING_PROVISIONING</b> — 
    # 				You’ve submitted a request to provision an IP address range but it is not yet provisioned with 
    # 			    Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>READY</b> — The address range is provisioned 
    # 			    with Global Accelerator and can be advertised.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_ADVERTISING</b> — You’ve submitted a 
    # 			    request for Global Accelerator to advertise an address range but it is not yet being advertised.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>ADVERTISING</b> — The address range is 
    # 			    being advertised by Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_WITHDRAWING</b> — You’ve submitted 
    # 				a request to withdraw an address range from being advertised but it is still being advertised 
    # 				by Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>PENDING_DEPROVISIONING</b> — You’ve submitted a 
    # 			    request to deprovision an address range from Global Accelerator but it is still provisioned.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>DEPROVISIONED</b> — The address range is deprovisioned 
    # 			    from Global Accelerator.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_PROVISION </b> — The request to 
    # 			    provision the address range from Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact Amazon Web Services support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_ADVERTISING</b> — The request for Global Accelerator
    # 				to advertise the address range was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact Amazon Web Services support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_WITHDRAW</b> — The request to withdraw 
    # 			    the address range from advertising by Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact Amazon Web Services support.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>FAILED_DEPROVISION </b> — The request to 
    # 			    deprovision the address range from Global Accelerator was not successful. Please make sure that
    # 				you provide all of the correct information, and try again. If the request fails
    # 				a second time, contact Amazon Web Services support.</p>
    #             </li>
    #          </ul>
    # @!attribute cidr
    #   <p>The address range, in CIDR notation.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The state of the address pool.</p>
    #   @return [String]
    # @!attribute events
    #   <p>A history of status changes for an IP address range that you bring to Global Accelerator
    #   			through bring your own IP address (BYOIP).</p>
    #   @return [Array<Types::ByoipCidrEvent>]
    class ByoipCidr < Struct.new(
      nil,
      :cidr,
      :state,
      :events,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains a <code>Message</code> and a <code>Timestamp</code> value for changes 
    # 			that you make in the status of an IP address range that you bring to Global Accelerator through bring your own IP 
    # 			address (BYOIP).</p>
    # @!attribute message
    #   <p>A string that contains an <code>Event</code> message describing changes that you make in the status 
    #   			of an IP address range that you bring to Global Accelerator through bring your own IP address (BYOIP).</p>
    #   @return [String]
    # @!attribute timestamp
    #   <p>A timestamp for when you make a status change for an IP address range that you bring to Global Accelerator through 
    #   			bring your own IP address (BYOIP).</p>
    #   @return [Time]
    class ByoipCidrEvent < Struct.new(
      nil,
      :message,
      :timestamp,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The CIDR that you specified was not found or is incorrect.</p>
    # @!attribute message
    #   @return [String]
    class ByoipCidrNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Provides authorization for Amazon to bring a specific IP address range to a specific Amazon Web Services 
    # 			account using bring your own IP addresses (BYOIP). </p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own 
    # 		    IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @!attribute message
    #   <p>The plain-text authorization message for the prefix and account.</p>
    #   @return [String]
    # @!attribute signature
    #   <p>The signed authorization message for the prefix and account.</p>
    #   @return [String]
    class CidrAuthorizationContext < Struct.new(
      nil,
      :message,
      :signature,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You can't use both of those options.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   			periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address 
    #   			from your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>
    #            <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. 
    #   	    	When you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns 
    #   	    	you a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges 
    #   	    	to Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is 
    #   			because Global Accelerator assigns each address range to a different network zone, for high availability.</p>
    #            <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #            <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
    #   			accelerator with the new addresses.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring 
    #   		    your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #   @return [Boolean]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of an accelerator.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Create tags for an accelerator.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   		    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateAcceleratorRequest < Struct.new(
      nil,
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>The accelerator that is created by specifying a listener and the supported IP address types.</p>
    #   @return [Types::Accelerator]
    class CreateAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the cross-account attachment. </p>
    #   @return [String]
    # @!attribute principals
    #   <p>The principals to include in the cross-account attachment. A principal can be an Amazon Web Services account
    #   			number or the Amazon Resource Name (ARN) for an accelerator. </p>
    #   @return [Array<String>]
    # @!attribute resources
    #   <p>The Amazon Resource Names (ARNs) for the resources to include in the cross-account attachment. A resource can
    #   			be any supported Amazon Web Services resource type for Global Accelerator or a CIDR range for a
    #   			bring your own IP address (BYOIP) address pool. </p>
    #   @return [Array<Types::Resource>]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Add tags for a cross-account attachment.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   			in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateCrossAccountAttachmentRequest < Struct.new(
      nil,
      :name,
      :principals,
      :resources,
      :idempotency_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cross_account_attachment
    #   <p>Information about the cross-account attachment.</p>
    #   @return [Types::Attachment]
    class CreateCrossAccountAttachmentResponse < Struct.new(
      nil,
      :cross_account_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of a custom routing accelerator. The name can have a maximum of 64 characters, must contain 
    #   		only alphanumeric characters or hyphens (-), and must not begin or end with a hyphen.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>Optionally, if you've added your own IP address pool to Global Accelerator (BYOIP), you can choose an IPv4 address 
    #   			from your own pool to use for the accelerator's static IPv4 address when you create an accelerator. </p>
    #            <p>After you bring an address range to Amazon Web Services, it appears in your account as an address pool. 
    #   			When you create an accelerator, you can assign one IPv4 address from your range to it. Global Accelerator assigns 
    #   			you a second static IPv4 address from an Amazon IP address range. If you bring two IPv4 address ranges 
    #   			to Amazon Web Services, you can assign one IPv4 address from each range to your accelerator. This restriction is 
    #   			because Global Accelerator assigns each address range to a different network zone, for high availability.</p>
    #            <p>You can specify one or two addresses, separated by a space. Do not include the /32 suffix.</p>
    #            <p>Note that you can't update IP addresses for an existing accelerator. To change them, you must create a new 
    #   			accelerator with the new addresses.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring 
    #   			your own IP addresses (BYOIP)</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, an accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #   @return [Boolean]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that
    #   			is, the uniqueness—of the request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>Create tags for an accelerator.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html">Tagging
    #   	    in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateCustomRoutingAcceleratorRequest < Struct.new(
      nil,
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      :idempotency_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>The accelerator that is created.</p>
    #   @return [Types::CustomRoutingAccelerator]
    class CreateCustomRoutingAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener for a custom routing endpoint.</p>
    #   @return [String]
    # @!attribute endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   		specific Region.</p>
    #   @return [String]
    # @!attribute destination_configurations
    #   <p>Sets the port range and protocol for all endpoints (virtual private cloud subnets) in a custom routing endpoint group to accept 
    #   		client traffic on.</p>
    #   @return [Array<Types::CustomRoutingDestinationConfiguration>]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #   @return [String]
    class CreateCustomRoutingEndpointGroupRequest < Struct.new(
      nil,
      :listener_arn,
      :endpoint_group_region,
      :destination_configurations,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group created for a custom routing accelerator.</p>
    #   @return [Types::CustomRoutingEndpointGroup]
    class CreateCustomRoutingEndpointGroupResponse < Struct.new(
      nil,
      :endpoint_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for a custom routing listener.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #            <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About 
    #   		endpoints for custom routing accelerators</a>.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   		uniqueness—of the request.</p>
    #   @return [String]
    class CreateCustomRoutingListenerRequest < Struct.new(
      nil,
      :accelerator_arn,
      :port_ranges,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>The listener that you've created for a custom routing accelerator.</p>
    #   @return [Types::CustomRoutingListener]
    class CreateCustomRoutingListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located. A listener can have only one endpoint group in a
    #   			specific Region.</p>
    #   @return [String]
    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects.</p>
    #   @return [Array<Types::EndpointConfiguration>]
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #            <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #            <p>The default value is 100.</p>
    #   @return [Float]
    # @!attribute health_check_port
    #   <p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   	        is the listener port that this endpoint group is associated with. If listener port is a list of ports, Global Accelerator uses the
    #   			first port in the list.</p>
    #   @return [Integer]
    # @!attribute health_check_protocol
    #   <p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #   @return [String]
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #   @return [Integer]
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #   @return [Integer]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #   @return [String]
    # @!attribute port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group.
    #   			For example, you can create a port override in which the listener 
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
    #   			and 1443, respectively, on the endpoints.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Overriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<Types::PortOverride>]
    class CreateEndpointGroupRequest < Struct.new(
      nil,
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
      :port_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group that was created.</p>
    #   @return [Types::EndpointGroup]
    class CreateEndpointGroupResponse < Struct.new(
      nil,
      :endpoint_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of your accelerator.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The list of port ranges to support for connections from clients to your accelerator.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute protocol
    #   <p>The protocol for connections from clients to your accelerator.</p>
    #   @return [String]
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #            <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   	        affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #            <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   		    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #            <p>The default value is <code>NONE</code>.</p>
    #   @return [String]
    # @!attribute idempotency_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency—that is, the
    #   			uniqueness—of the request.</p>
    #   @return [String]
    class CreateListenerRequest < Struct.new(
      nil,
      :accelerator_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      :idempotency_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>The listener that you've created.</p>
    #   @return [Types::Listener]
    class CreateListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An endpoint (Amazon Web Services resource) or an IP address range, in CIDR format, that is 
    # 			listed in a cross-account attachment. A cross-account resource can be added to an accelerator by 
    # 			specified principals, which are also listed in the attachment.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/cross-account-resources.html">
    # 			Working with cross-account attachments and resources in Global Accelerator</a> in the <i>
    # 				Global Accelerator Developer Guide</i>.</p>
    # @!attribute endpoint_id
    #   <p>The endpoint ID for the endpoint that is listed in a cross-account attachment and
    #   			can be added to an accelerator by specified principals.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>An IP address range, in CIDR format, that is specified as an Amazon Web Services resource. The address must
    #   			be provisioned and advertised in Global Accelerator by following the bring your own IP address (BYOIP) process 
    #   			for Global Accelerator.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the resources (endpoints or
    #   			CIDR range) that can be added to accelerators and principals that have permission to add them.</p>
    #   @return [String]
    class CrossAccountResource < Struct.new(
      nil,
      :endpoint_id,
      :cidr,
      :attachment_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes of a custom routing accelerator.</p>
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the accelerator. The name must contain only alphanumeric characters or
    #   			hyphens (-), and must not begin or end with a hyphen.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    #   @return [String]
    # @!attribute enabled
    #   <p>Indicates whether the accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, accelerator can be deleted.</p>
    #   @return [Boolean]
    # @!attribute ip_sets
    #   <p>The static IP addresses that Global Accelerator associates with the accelerator.</p>
    #   @return [Array<Types::IpSet>]
    # @!attribute dns_name
    #   <p>The Domain Name System (DNS) name that Global Accelerator creates that points to an accelerator's static IPv4 addresses. </p>
    #            <p>The naming convention for the DNS name is the following: A lowercase letter a,
    #   			followed by a 16-bit random hex string, followed by .awsglobalaccelerator.com. For example:
    #   			a1234567890abcdef.awsglobalaccelerator.com.</p>
    #            <p>If you have a dual-stack accelerator, you also have a second DNS name, <code>DualStackDnsName</code>, that points to both the A record 
    #   			and the AAAA record for all four static addresses for the accelerator: two IPv4 addresses and two IPv6 addresses.</p>
    #            <p>For more information about the default DNS name, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/dns-addressing-custom-domains.dns-addressing.html">
    #   			Support for DNS addressing in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Describes the deployment status of the accelerator.</p>
    #   @return [String]
    # @!attribute created_time
    #   <p>The date and time that the accelerator was created.</p>
    #   @return [Time]
    # @!attribute last_modified_time
    #   <p>The date and time that the accelerator was last modified.</p>
    #   @return [Time]
    class CustomRoutingAccelerator < Struct.new(
      nil,
      :accelerator_arn,
      :name,
      :ip_address_type,
      :enabled,
      :ip_sets,
      :dns_name,
      :status,
      :created_time,
      :last_modified_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes of a custom routing accelerator.</p>
    # @!attribute flow_logs_enabled
    #   <p>Indicates whether flow logs are enabled. The default value is false. If the value is true,
    #   			<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow logs</a> in
    #   		    the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   			bucket.</p>
    #   @return [String]
    # @!attribute flow_logs_s3_prefix
    #   <p>The prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   			<code>FlowLogsEnabled</code> is <code>true</code>.</p>
    #            <p>If you don’t specify a prefix, the flow logs are stored in the
    #   			root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #            <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    #   @return [String]
    class CustomRoutingAcceleratorAttributes < Struct.new(
      nil,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For a custom routing accelerator, sets the port range and protocol for all endpoints (virtual
    # 			private cloud subnets) in an endpoint group to accept client traffic on.</p>
    # @!attribute from_port
    #   <p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #   @return [Integer]
    # @!attribute protocols
    #   <p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>
    #   @return [Array<String>]
    class CustomRoutingDestinationConfiguration < Struct.new(
      nil,
      :from_port,
      :to_port,
      :protocols,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>For a custom routing accelerator, describes the port range and protocol for all endpoints
    # 			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>
    # @!attribute from_port
    #   <p>The first port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port, inclusive, in the range of ports for the endpoint group that is associated with a custom routing accelerator.</p>
    #   @return [Integer]
    # @!attribute protocols
    #   <p>The protocol for the endpoint group that is associated with a custom routing accelerator. The protocol can be either TCP or UDP.</p>
    #   @return [Array<String>]
    class CustomRoutingDestinationDescription < Struct.new(
      nil,
      :from_port,
      :to_port,
      :protocols,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The list of endpoint objects. For custom routing, this is a list of virtual private cloud (VPC) subnet IDs.</p>
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
    #   			subnet ID. </p>
    #   @return [String]
    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the endpoints (resources)
    #   			that can be added to accelerators and principals that have permission to add the endpoints.</p>
    #   @return [String]
    class CustomRoutingEndpointConfiguration < Struct.new(
      nil,
      :endpoint_id,
      :attachment_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for an endpoint for a custom routing accelerator. Each endpoint group can include one or more endpoints, 
    # 			which are virtual private cloud (VPC) subnets.</p>
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC)
    #   			subnet ID. </p>
    #   @return [String]
    class CustomRoutingEndpointDescription < Struct.new(
      nil,
      :endpoint_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for the endpoint group for a custom routing accelerator. An Amazon Web Services Region can have only one endpoint group for a specific listener.
    # 		</p>
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located.</p>
    #   @return [String]
    # @!attribute destination_descriptions
    #   <p>For a custom routing accelerator, describes the port range and protocol for all endpoints
    #   			(virtual private cloud subnets) in an endpoint group to accept client traffic on.</p>
    #   @return [Array<Types::CustomRoutingDestinationDescription>]
    # @!attribute endpoint_descriptions
    #   <p>For a custom routing accelerator, describes the endpoints (virtual private cloud subnets) in an
    #   			endpoint group to accept client traffic on.</p>
    #   @return [Array<Types::CustomRoutingEndpointDescription>]
    class CustomRoutingEndpointGroup < Struct.new(
      nil,
      :endpoint_group_arn,
      :endpoint_group_region,
      :destination_descriptions,
      :endpoint_descriptions,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for a listener for a custom routing accelerator.</p>
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The port range to support for connections from clients to your accelerator.</p>
    #            <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About 
    #   				endpoints for custom routing accelerators</a>.</p>
    #   @return [Array<Types::PortRange>]
    class CustomRoutingListener < Struct.new(
      nil,
      :listener_arn,
      :port_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator.</p>
    #   @return [String]
    class DeleteAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the cross-account attachment to delete.</p>
    #   @return [String]
    class DeleteCrossAccountAttachmentRequest < Struct.new(
      nil,
      :attachment_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to delete.</p>
    #   @return [String]
    class DeleteCustomRoutingAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #   @return [String]
    class DeleteCustomRoutingEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to delete.</p>
    #   @return [String]
    class DeleteCustomRoutingListenerRequest < Struct.new(
      nil,
      :listener_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to delete.</p>
    #   @return [String]
    class DeleteEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    class DeleteListenerRequest < Struct.new(
      nil,
      :listener_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. For custom routing accelerators, this is the virtual private cloud (VPC) subnet ID.</p>
    #   @return [String]
    # @!attribute destination_addresses
    #   <p>A list of specific Amazon EC2 instance IP addresses (destination addresses) in a subnet that you want to prevent from receiving 
    #   			traffic. The IP addresses must be a subset of the IP addresses allowed for the VPC subnet associated with the 
    #   			endpoint group.</p>
    #   @return [Array<String>]
    # @!attribute destination_ports
    #   <p>A list of specific Amazon EC2 instance ports (destination ports) in a subnet endpoint that you want to prevent from 
    #   			receiving traffic.</p>
    #   @return [Array<Integer>]
    # @!attribute deny_all_traffic_to_endpoint
    #   <p>Indicates whether all destination IP addresses and ports for a specified VPC subnet endpoint <i>cannot</i> 
    #   			receive traffic from a custom routing accelerator. The value is TRUE or FALSE. </p>
    #            <p>When set to TRUE, <i>no</i> destinations in the custom routing VPC subnet can receive traffic. Note 
    #   			that you cannot specify destination IP addresses and ports when the value is set to TRUE.</p>
    #            <p>When set to FALSE (or not specified), you <i>must</i> specify a list of destination IP addresses that cannot receive
    #   			traffic. A list of ports is optional. If you don't specify a list of ports, the ports that can accept traffic is
    #   			the same as the ports configured for the endpoint group.</p>
    #            <p>The default value is FALSE.</p>
    #   @return [Boolean]
    class DenyCustomRoutingTrafficRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      :endpoint_id,
      :destination_addresses,
      :destination_ports,
      :deny_all_traffic_to_endpoint,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation. The prefix must be the same prefix that you specified 
    #   			when you provisioned the address range.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    class DeprovisionByoipCidrRequest < Struct.new(
      nil,
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #   @return [Types::ByoipCidr]
    class DeprovisionByoipCidrResponse < Struct.new(
      nil,
      :byoip_cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator with the attributes that you want to describe.</p>
    #   @return [String]
    class DescribeAcceleratorAttributesRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>The attributes of the accelerator.</p>
    #   @return [Types::AcceleratorAttributes]
    class DescribeAcceleratorAttributesResponse < Struct.new(
      nil,
      :accelerator_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #   @return [String]
    class DescribeAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>The description of the accelerator.</p>
    #   @return [Types::Accelerator]
    class DescribeAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) for the cross-account attachment to describe.</p>
    #   @return [String]
    class DescribeCrossAccountAttachmentRequest < Struct.new(
      nil,
      :attachment_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cross_account_attachment
    #   <p>Information about the cross-account attachment.</p>
    #   @return [Types::Attachment]
    class DescribeCrossAccountAttachmentResponse < Struct.new(
      nil,
      :cross_account_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to describe the attributes for.</p>
    #   @return [String]
    class DescribeCustomRoutingAcceleratorAttributesRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>The attributes of the custom routing accelerator.</p>
    #   @return [Types::CustomRoutingAcceleratorAttributes]
    class DescribeCustomRoutingAcceleratorAttributesResponse < Struct.new(
      nil,
      :accelerator_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to describe.</p>
    #   @return [String]
    class DescribeCustomRoutingAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>The description of the custom routing accelerator.</p>
    #   @return [Types::CustomRoutingAccelerator]
    class DescribeCustomRoutingAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #   @return [String]
    class DescribeCustomRoutingEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group
    #   <p>The description of an endpoint group for a custom routing accelerator.</p>
    #   @return [Types::CustomRoutingEndpointGroup]
    class DescribeCustomRoutingEndpointGroupResponse < Struct.new(
      nil,
      :endpoint_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #   @return [String]
    class DescribeCustomRoutingListenerRequest < Struct.new(
      nil,
      :listener_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>The description of a listener for a custom routing accelerator.</p>
    #   @return [Types::CustomRoutingListener]
    class DescribeCustomRoutingListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to describe.</p>
    #   @return [String]
    class DescribeEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group
    #   <p>The description of an endpoint group.</p>
    #   @return [Types::EndpointGroup]
    class DescribeEndpointGroupResponse < Struct.new(
      nil,
      :endpoint_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to describe.</p>
    #   @return [String]
    class DescribeListenerRequest < Struct.new(
      nil,
      :listener_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>The description of a listener.</p>
    #   @return [Types::Listener]
    class DescribeListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The port mappings for a specified endpoint IP address (destination).</p>
    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator 
    #   			that you have port mappings for.</p>
    #   @return [String]
    # @!attribute accelerator_socket_addresses
    #   <p>The IP address/port combinations (sockets) that map to a given destination socket
    #   			address.</p>
    #   @return [Array<Types::SocketAddress>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    #   @return [String]
    # @!attribute endpoint_group_region
    #   <p>The Amazon Web Services Region for the endpoint group.</p>
    #   @return [String]
    # @!attribute destination_socket_address
    #   <p>The endpoint IP address/port combination for traffic received on the accelerator socket address.</p>
    #   @return [Types::SocketAddress]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    #   @return [String]
    # @!attribute destination_traffic_state
    #   <p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
    #   			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>
    #   @return [String]
    class DestinationPortMapping < Struct.new(
      nil,
      :accelerator_arn,
      :accelerator_socket_addresses,
      :endpoint_group_arn,
      :endpoint_id,
      :endpoint_group_region,
      :destination_socket_address,
      :ip_address_type,
      :destination_traffic_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class EndpointAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for endpoints. A resource must be valid and active when you add it as an endpoint.</p>
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
    #   			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
    #   			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. A resource must be valid and active 
    #   			when you add it as an endpoint.</p>
    #            <p>For cross-account endpoints, this must be the ARN of the resource.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight associated with the endpoint. When you add weights to endpoints, you configure Global Accelerator to route traffic
    #   			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
    #   			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
    #   			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html">Endpoint weights</a> in the
    #   	        <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Integer]
    # @!attribute client_ip_preservation_enabled
    #   <p>Indicates whether client IP address preservation is enabled for an endpoint. 
    #   			The value is true or false. The default value is true for Application Load Balancer endpoints. </p>
    #            <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as 
    #   			traffic travels to applications on the endpoint fronted by the accelerator.</p>
    #            <p>Client IP address preservation is supported, in specific Amazon Web Services Regions, for endpoints that are Application Load 
    #   			Balancers, Amazon EC2 instances, and Network Load Balancers with security groups. IMPORTANT: You cannot use client IP address preservation
    #   			with Network Load Balancers with TLS listeners.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html">
    #   			Preserve client IP addresses in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment that specifies the endpoints (resources)
    #   			that can be added to accelerators and principals that have permission to add the endpoints.</p>
    #   @return [String]
    class EndpointConfiguration < Struct.new(
      nil,
      :endpoint_id,
      :weight,
      :client_ip_preservation_enabled,
      :attachment_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for an endpoint. Each endpoint group can include one or more endpoints, such as load
    # 			balancers.</p>
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
    #   			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
    #   			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>
    #            <p>An Application Load Balancer can be either internal or internet-facing.</p>
    #   @return [String]
    # @!attribute weight
    #   <p>The weight associated with the endpoint. When you add weights to endpoints, you configure Global Accelerator to route traffic
    #   			based on proportions that you specify. For example, you might specify endpoint weights of 4, 5, 5, and 6 (sum=20). The
    #   			result is that 4/20 of your traffic, on average, is routed to the first endpoint, 5/20 is routed both to the second
    #   			and third endpoints, and 6/20 is routed to the last endpoint. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints-endpoint-weights.html">Endpoint weights</a> in the
    #   	        <i>Global Accelerator Developer Guide</i>. </p>
    #   @return [Integer]
    # @!attribute health_state
    #   <p>The health status of the endpoint.</p>
    #   @return [String]
    # @!attribute health_reason
    #   <p>Returns a null result.</p>
    #   @return [String]
    # @!attribute client_ip_preservation_enabled
    #   <p>Indicates whether client IP address preservation is enabled for an endpoint. 
    #   			The value is true or false. The default value is true for Application Load Balancers endpoints. </p>
    #            <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as 
    #   			traffic travels to applications on the endpoint fronted by the accelerator.</p>
    #            <p>Client IP address preservation is supported, in specific Amazon Web Services Regions, for endpoints that are Application Load 
    #   			Balancers, Amazon EC2 instances, and Network Load Balancers with security groups. IMPORTANT: You cannot use client IP address preservation
    #   			with Network Load Balancers with TLS listeners.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/preserve-client-ip-address.html">
    #   			Preserve client IP addresses in Global Accelerator</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    class EndpointDescription < Struct.new(
      nil,
      :endpoint_id,
      :weight,
      :health_state,
      :health_reason,
      :client_ip_preservation_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for the endpoint group. An Amazon Web Services Region can have only one endpoint group for a specific listener.
    # 		</p>
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_group_region
    #   <p>The Amazon Web Services Region where the endpoint group is located.</p>
    #   @return [String]
    # @!attribute endpoint_descriptions
    #   <p>The list of endpoint objects.</p>
    #   @return [Array<Types::EndpointDescription>]
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #            <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #            <p>The default value is 100.</p>
    #   @return [Float]
    # @!attribute health_check_port
    #   <p>The port that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. </p>
    #            <p>The default port is the port for the listener that this endpoint group is associated with. If the listener port is a
    #   		    list, Global Accelerator uses the first specified port in the list of ports.</p>
    #   @return [Integer]
    # @!attribute health_check_protocol
    #   <p>The protocol that Global Accelerator uses to perform health checks on endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #   @return [String]
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this value provides the ping path that Global Accelerator uses for the destination on the
    #   			endpoints for health checks. The default is slash (/).</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between health checks for each endpoint. The default value is 30.</p>
    #   @return [Integer]
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #   @return [Integer]
    # @!attribute port_overrides
    #   <p>Allows you to override the destination ports used to route traffic to an endpoint. 
    #   			Using a port override lets you map a list of external destination ports (that your
    #   			users send traffic to) to a list of internal destination ports that you want an application 
    #   			endpoint to receive traffic on. </p>
    #   @return [Array<Types::PortOverride>]
    class EndpointGroup < Struct.new(
      nil,
      :endpoint_group_arn,
      :endpoint_group_region,
      :endpoint_descriptions,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :port_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint group that you specified already exists.</p>
    # @!attribute message
    #   @return [String]
    class EndpointGroupAlreadyExistsException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint group that you specified doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class EndpointGroupNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for an endpoint. Specifies information about the endpoint to remove from the endpoint group.</p>
    # @!attribute endpoint_id
    #   <p>An ID for the endpoint. If the endpoint is a Network Load Balancer or Application Load Balancer, this is the Amazon
    #   			Resource Name (ARN) of the resource. If the endpoint is an Elastic IP address, this is the Elastic IP address
    #   			allocation ID. For Amazon EC2 instances, this is the EC2 instance ID. </p>
    #            <p>An Application Load Balancer can be either internal or internet-facing.</p>
    #   @return [String]
    # @!attribute client_ip_preservation_enabled
    #   <p>Indicates whether client IP address preservation is enabled for an endpoint. The value is true or false. </p>
    #            <p>If the value is set to true, the client's IP address is preserved in the <code>X-Forwarded-For</code> request header as 
    #   			traffic travels to applications on the endpoint fronted by the accelerator.</p>
    #   @return [Boolean]
    class EndpointIdentifier < Struct.new(
      nil,
      :endpoint_id,
      :client_ip_preservation_enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The endpoint that you specified doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class EndpointNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The CIDR that you specified is not valid for this action. For example, the state of the CIDR might be
    # 		incorrect for this action.</p>
    # @!attribute message
    #   @return [String]
    class IncorrectCidrStateException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There was an internal error for Global Accelerator.</p>
    # @!attribute message
    #   @return [String]
    class InternalServiceErrorException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An argument that you specified is invalid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidArgumentException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There isn't another item to return.</p>
    # @!attribute message
    #   @return [String]
    class InvalidNextTokenException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The port numbers that you specified are not valid numbers or are not unique for this accelerator.</p>
    # @!attribute message
    #   @return [String]
    class InvalidPortRangeException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for the set of IP addresses for an accelerator.</p>
    # @!attribute ip_family
    #   <p>IpFamily is deprecated and has been replaced by IpAddressFamily.</p>
    #   @deprecated
    #     IpFamily has been replaced by IpAddressFamily
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The array of IP addresses in the IP address set. An IP address set can have a maximum of two IP addresses.</p>
    #   @return [Array<String>]
    # @!attribute ip_address_family
    #   <p>The types of IP addresses included in this IP set. </p>
    #   @return [String]
    class IpSet < Struct.new(
      nil,
      :ip_family,
      :ip_addresses,
      :ip_address_family,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Processing your request would cause you to exceed an Global Accelerator limit.</p>
    # @!attribute message
    #   @return [String]
    class LimitExceededException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListAcceleratorsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerators
    #   <p>The list of accelerators for a customer account.</p>
    #   @return [Array<Types::Accelerator>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListAcceleratorsResponse < Struct.new(
      nil,
      :accelerators,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return with a single call. To retrieve the remaining results, make
    #   			another call with the returned <code>nextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListByoipCidrsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute byoip_cidrs
    #   <p>Information about your address ranges.</p>
    #   @return [Array<Types::ByoipCidr>]
    # @!attribute next_token
    #   <p>The token for the next page of results.</p>
    #   @return [String]
    class ListByoipCidrsResponse < Struct.new(
      nil,
      :byoip_cidrs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of cross-account attachment objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCrossAccountAttachmentsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cross_account_attachments
    #   <p>Information about the cross-account attachments.</p>
    #   @return [Array<Types::Attachment>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCrossAccountAttachmentsResponse < Struct.new(
      nil,
      :cross_account_attachments,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class ListCrossAccountResourceAccountsRequest < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_owner_aws_account_ids
    #   <p>The account IDs of principals (resource owners) in a cross-account attachment who can work
    #   			with resources listed in the same attachment.</p>
    #   @return [Array<String>]
    class ListCrossAccountResourceAccountsResponse < Struct.new(
      nil,
      :resource_owner_aws_account_ids,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of an accelerator in a cross-account attachment.</p>
    #   @return [String]
    # @!attribute resource_owner_aws_account_id
    #   <p>The account ID of a resource owner in a cross-account attachment.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of cross-account resource objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCrossAccountResourcesRequest < Struct.new(
      nil,
      :accelerator_arn,
      :resource_owner_aws_account_id,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cross_account_resources
    #   <p>The cross-account resources used with an accelerator.</p>
    #   @return [Array<Types::CrossAccountResource>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCrossAccountResourcesResponse < Struct.new(
      nil,
      :cross_account_resources,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The number of custom routing Global Accelerator objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingAcceleratorsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerators
    #   <p>The list of custom routing accelerators for a customer account.</p>
    #   @return [Array<Types::CustomRoutingAccelerator>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingAcceleratorsResponse < Struct.new(
      nil,
      :accelerators,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to list endpoint groups for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingEndpointGroupsRequest < Struct.new(
      nil,
      :listener_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_groups
    #   <p>The list of the endpoint groups associated with a listener for a custom routing accelerator.</p>
    #   @return [Array<Types::CustomRoutingEndpointGroup>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingEndpointGroupsResponse < Struct.new(
      nil,
      :endpoint_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list listeners for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingListenersRequest < Struct.new(
      nil,
      :accelerator_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listeners
    #   <p>The list of listeners for a custom routing accelerator.</p>
    #   @return [Array<Types::CustomRoutingListener>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingListenersResponse < Struct.new(
      nil,
      :listeners,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_id
    #   <p>The ID for the virtual private cloud (VPC) subnet.</p>
    #   @return [String]
    # @!attribute destination_address
    #   <p>The endpoint IP address in a virtual private cloud (VPC) subnet for which you want to receive back port
    #   		mappings.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingPortMappingsByDestinationRequest < Struct.new(
      nil,
      :endpoint_id,
      :destination_address,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute destination_port_mappings
    #   <p>The port mappings for the endpoint IP address that you specified in the request.</p>
    #   @return [Array<Types::DestinationPortMapping>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingPortMappingsByDestinationResponse < Struct.new(
      nil,
      :destination_port_mappings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list the custom routing port mappings for.</p>
    #   @return [String]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to list the custom routing port mappings for.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of destination port mappings that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingPortMappingsRequest < Struct.new(
      nil,
      :accelerator_arn,
      :endpoint_group_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute port_mappings
    #   <p>The port mappings for a custom routing accelerator.</p>
    #   @return [Array<Types::PortMapping>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListCustomRoutingPortMappingsResponse < Struct.new(
      nil,
      :port_mappings,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of endpoint group objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListEndpointGroupsRequest < Struct.new(
      nil,
      :listener_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_groups
    #   <p>The list of the endpoint groups associated with a listener.</p>
    #   @return [Array<Types::EndpointGroup>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListEndpointGroupsResponse < Struct.new(
      nil,
      :endpoint_groups,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator for which you want to list listener objects.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The number of listener objects that you want to return with this call. The default value is 10.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListListenersRequest < Struct.new(
      nil,
      :accelerator_arn,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listeners
    #   <p>The list of listeners for an accelerator.</p>
    #   @return [Array<Types::Listener>]
    # @!attribute next_token
    #   <p>The token for the next set of results. You receive this token from a previous call.</p>
    #   @return [String]
    class ListListenersResponse < Struct.new(
      nil,
      :listeners,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to list tags for. An ARN uniquely identifies an accelerator.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>Root level tag for the Tags parameters.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for a listener.</p>
    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The list of port ranges for the connections from clients to the accelerator.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute protocol
    #   <p>The protocol for the connections from clients to the accelerator.</p>
    #   @return [String]
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #            <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   	        affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #            <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   		    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #            <p>The default value is <code>NONE</code>.</p>
    #   @return [String]
    class Listener < Struct.new(
      nil,
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The listener that you specified doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ListenerNotFoundException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Returns the ports and associated IP addresses and ports of Amazon EC2 instances in your virtual
    # 		    private cloud (VPC) subnets. Custom routing is a port mapping protocol in Global Accelerator that
    # 		    statically associates port ranges with VPC subnets, which allows Global Accelerator to route to
    # 			specific instances and ports within one or more subnets. </p>
    # @!attribute accelerator_port
    #   <p>The accelerator port.</p>
    #   @return [Integer]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_id
    #   <p>The IP address of the VPC subnet (the subnet ID).</p>
    #   @return [String]
    # @!attribute destination_socket_address
    #   <p>The EC2 instance IP address and port number in the virtual private cloud (VPC) subnet.</p>
    #   @return [Types::SocketAddress]
    # @!attribute protocols
    #   <p>The protocols supported by the endpoint group.</p>
    #   @return [Array<String>]
    # @!attribute destination_traffic_state
    #   <p>Indicates whether or not a port mapping destination can receive traffic. The value is either ALLOW, if
    #   			traffic is allowed to the destination, or DENY, if traffic is not allowed to the destination.</p>
    #   @return [String]
    class PortMapping < Struct.new(
      nil,
      :accelerator_port,
      :endpoint_group_arn,
      :endpoint_id,
      :destination_socket_address,
      :protocols,
      :destination_traffic_state,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Override specific listener ports used to route traffic to endpoints that are part of an endpoint group.
    # 			For example, you can create a port override in which the listener 
    # 			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
    # 			and 1443, respectively, on the endpoints.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    # 		    Overriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    # @!attribute listener_port
    #   <p>The listener port that you want to map to a specific endpoint port. This is the port that user traffic
    #   		    arrives to the Global Accelerator on.</p>
    #   @return [Integer]
    # @!attribute endpoint_port
    #   <p>The endpoint port that you want a listener port to be mapped to. This is the port on the endpoint,
    #   		    such as the Application Load Balancer or Amazon EC2 instance.</p>
    #   @return [Integer]
    class PortOverride < Struct.new(
      nil,
      :listener_port,
      :endpoint_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type for a range of ports for a listener.</p>
    # @!attribute from_port
    #   <p>The first port in the range of ports, inclusive.</p>
    #   @return [Integer]
    # @!attribute to_port
    #   <p>The last port in the range of ports, inclusive.</p>
    #   @return [Integer]
    class PortRange < Struct.new(
      nil,
      :from_port,
      :to_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr
    #   <p>The public IPv4 address range, in CIDR notation. The most specific IP prefix that you can
    #   			specify is /24. The address range cannot overlap with another address range that you've brought 
    #   			to this Amazon Web Services Region or another Region.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    # @!attribute cidr_authorization_context
    #   <p>A signed document that proves that you are authorized to bring the specified IP address range to
    #   			Amazon using BYOIP.
    #   		</p>
    #   @return [Types::CidrAuthorizationContext]
    class ProvisionByoipCidrRequest < Struct.new(
      nil,
      :cidr,
      :cidr_authorization_context,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the address range.</p>
    #   @return [Types::ByoipCidr]
    class ProvisionByoipCidrResponse < Struct.new(
      nil,
      :byoip_cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_ids
    #   <p>The IDs for the endpoints. For custom routing accelerators, endpoint IDs are the virtual private cloud (VPC)
    #   		subnet IDs. </p>
    #   @return [Array<String>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group to remove endpoints from.</p>
    #   @return [String]
    class RemoveCustomRoutingEndpointsRequest < Struct.new(
      nil,
      :endpoint_ids,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_identifiers
    #   <p>The identifiers of the endpoints that you want to remove.</p>
    #   @return [Array<Types::EndpointIdentifier>]
    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    class RemoveEndpointsRequest < Struct.new(
      nil,
      :endpoint_identifiers,
      :endpoint_group_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A resource is one of the following: the ARN for an Amazon Web Services resource that is supported by 
    # 			Global Accelerator to be added as an endpoint, or a CIDR range that specifies a bring your own IP (BYOIP) address pool.</p>
    # @!attribute endpoint_id
    #   <p>The endpoint ID for the endpoint that is specified as a Amazon Web Services resource. </p>
    #            <p>An endpoint ID for the cross-account feature is the ARN of an Amazon Web Services resource, such as a 
    #   			Network Load Balancer, that Global Accelerator supports as an endpoint for an accelerator.</p>
    #   @return [String]
    # @!attribute cidr
    #   <p>An IP address range, in CIDR format, that is specified as resource. The address must
    #   			be provisioned and advertised in Global Accelerator by following the bring your own IP address (BYOIP) process 
    #   			for Global Accelerator</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    # @!attribute region
    #   <p>The Amazon Web Services Region where a shared endpoint resource is located.</p>
    #   @return [String]
    class Resource < Struct.new(
      nil,
      :endpoint_id,
      :cidr,
      :region,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:endpoint_id] = '' unless options.key?(:endpoint_id)
        super
      end
    end

    # <p>An IP address/port combination.</p>
    # @!attribute ip_address
    #   <p>The IP address for the socket address.</p>
    #   @return [String]
    # @!attribute port
    #   <p>The port for the socket address.</p>
    #   @return [Integer]
    class SocketAddress < Struct.new(
      nil,
      :ip_address,
      :port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A complex type that contains a <code>Tag</code> key and <code>Tag</code> value.</p>
    # @!attribute key
    #   <p>A string that contains a <code>Tag</code> key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>A string that contains a <code>Tag</code> value.</p>
    #   @return [String]
    class Tag < Struct.new(
      nil,
      :key,
      :value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to add tags to. An ARN uniquely identifies a resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to a resource. A tag consists of a key and a value that you define.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>There's already a transaction in progress. Another transaction can't be processed.</p>
    # @!attribute message
    #   @return [String]
    class TransactionInProgressException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the Global Accelerator resource to remove tags from. An ARN uniquely identifies a resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key pairs that you want to remove from the specified resources.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator that you want to update.</p>
    #   @return [String]
    # @!attribute flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   				<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow Logs</a> in
    #   		    the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   		    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   			bucket.</p>
    #   @return [String]
    # @!attribute flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   				<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #            <p>If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), 
    #   			like the following:</p>
    #            <p>s3-bucket_name//AWSLogs/aws_account_id</p>
    #   @return [String]
    class UpdateAcceleratorAttributesRequest < Struct.new(
      nil,
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>Updated attributes for the accelerator.</p>
    #   @return [Types::AcceleratorAttributes]
    class UpdateAcceleratorAttributesResponse < Struct.new(
      nil,
      :accelerator_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   			periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a standard accelerator, the value can be IPV4 or DUAL_STACK.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The IP addresses for an accelerator.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #   @return [Boolean]
    class UpdateAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>Information about the updated accelerator.</p>
    #   @return [Types::Accelerator]
    class UpdateAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute attachment_arn
    #   <p>The Amazon Resource Name (ARN) of the cross-account attachment to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the cross-account attachment.  </p>
    #   @return [String]
    # @!attribute add_principals
    #   <p>The principals to add to the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)
    #   			of an accelerator that the attachment gives permission to work with resources from another account. The resources
    #   			are also listed in the attachment.</p>
    #            <p>To add more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>
    #   @return [Array<String>]
    # @!attribute remove_principals
    #   <p>The principals to remove from the cross-account attachment. A principal is an account or the Amazon Resource Name (ARN)
    #   			of an accelerator that the attachment gives permission to work with resources from another account. The resources
    #   			are also listed in the attachment.</p>
    #            <p>To remove more than one principal, separate the account numbers or accelerator ARNs, or both, with commas.</p>
    #   @return [Array<String>]
    # @!attribute add_resources
    #   <p>The resources to add to the cross-account attachment. A resource listed in a cross-account attachment can be used
    #   			with an accelerator by the principals that are listed in the attachment.</p>
    #            <p>To add more than one resource, separate the resource ARNs with commas.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute remove_resources
    #   <p>The resources to remove from the cross-account attachment. A resource listed in a cross-account attachment can be used
    #   			with an accelerator by the principals that are listed in the attachment.</p>
    #            <p>To remove more than one resource, separate the resource ARNs with commas.</p>
    #   @return [Array<Types::Resource>]
    class UpdateCrossAccountAttachmentRequest < Struct.new(
      nil,
      :attachment_arn,
      :name,
      :add_principals,
      :remove_principals,
      :add_resources,
      :remove_resources,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cross_account_attachment
    #   <p>Information about the updated cross-account attachment.</p>
    #   @return [Types::Attachment]
    class UpdateCrossAccountAttachmentResponse < Struct.new(
      nil,
      :cross_account_attachment,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the custom routing accelerator to update attributes for.</p>
    #   @return [String]
    # @!attribute flow_logs_enabled
    #   <p>Update whether flow logs are enabled. The default value is false. If the value is true,
    #   		<code>FlowLogsS3Bucket</code> and <code>FlowLogsS3Prefix</code> must be specified.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/monitoring-global-accelerator.flow-logs.html">Flow logs</a> in
    #   	    the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Boolean]
    # @!attribute flow_logs_s3_bucket
    #   <p>The name of the Amazon S3 bucket for the flow logs. Attribute is required if <code>FlowLogsEnabled</code> is
    #   	    <code>true</code>. The bucket must exist and have a bucket policy that grants Global Accelerator permission to write to the
    #   		bucket.</p>
    #   @return [String]
    # @!attribute flow_logs_s3_prefix
    #   <p>Update the prefix for the location in the Amazon S3 bucket for the flow logs. Attribute is required if
    #   		<code>FlowLogsEnabled</code> is <code>true</code>. </p>
    #            <p>If you don’t specify a prefix, the flow logs are stored in the
    #   		root of the bucket. If you specify slash (/) for the S3 bucket prefix, the log file bucket folder structure will include a double slash (//), like the following:</p>
    #            <p>DOC-EXAMPLE-BUCKET//AWSLogs/aws_account_id</p>
    #   @return [String]
    class UpdateCustomRoutingAcceleratorAttributesRequest < Struct.new(
      nil,
      :accelerator_arn,
      :flow_logs_enabled,
      :flow_logs_s3_bucket,
      :flow_logs_s3_prefix,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_attributes
    #   <p>Updated custom routing accelerator.</p>
    #   @return [Types::CustomRoutingAcceleratorAttributes]
    class UpdateCustomRoutingAcceleratorAttributesResponse < Struct.new(
      nil,
      :accelerator_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator_arn
    #   <p>The Amazon Resource Name (ARN) of the accelerator to update.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the accelerator. The name can have a maximum of 64 characters, must contain only alphanumeric characters, 
    #   		periods (.), or hyphens (-), and must not begin or end with a hyphen or period.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type that an accelerator supports. For a custom routing accelerator, the value must be IPV4.</p>
    #   @return [String]
    # @!attribute ip_addresses
    #   <p>The IP addresses for an accelerator.</p>
    #   @return [Array<String>]
    # @!attribute enabled
    #   <p>Indicates whether an accelerator is enabled. The value is true or false. The default value is true. </p>
    #            <p>If the value is set to true, the accelerator cannot be deleted. If set to false, the accelerator can be deleted.</p>
    #   @return [Boolean]
    class UpdateCustomRoutingAcceleratorRequest < Struct.new(
      nil,
      :accelerator_arn,
      :name,
      :ip_address_type,
      :ip_addresses,
      :enabled,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute accelerator
    #   <p>Information about the updated custom routing accelerator.</p>
    #   @return [Types::CustomRoutingAccelerator]
    class UpdateCustomRoutingAcceleratorResponse < Struct.new(
      nil,
      :accelerator,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The updated port range to support for connections from clients to your accelerator. If you remove ports that are
    #   	currently being used by a subnet endpoint, the call fails.</p>
    #            <p>Separately, you set port ranges for endpoints. For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-custom-routing-endpoints.html">About 
    #   		endpoints for custom routing accelerators</a>.</p>
    #   @return [Array<Types::PortRange>]
    class UpdateCustomRoutingListenerRequest < Struct.new(
      nil,
      :listener_arn,
      :port_ranges,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>Information for the updated listener for a custom routing accelerator.</p>
    #   @return [Types::CustomRoutingListener]
    class UpdateCustomRoutingListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group_arn
    #   <p>The Amazon Resource Name (ARN) of the endpoint group.</p>
    #   @return [String]
    # @!attribute endpoint_configurations
    #   <p>The list of endpoint objects. A resource must be valid and active when you add it as an endpoint.</p>
    #   @return [Array<Types::EndpointConfiguration>]
    # @!attribute traffic_dial_percentage
    #   <p>The percentage of traffic to send to an Amazon Web Services Region. Additional traffic is distributed to other endpoint groups for
    #   			this listener. </p>
    #            <p>Use this action to increase (dial up) or decrease (dial down) traffic to a specific Region. The percentage is
    #   			applied to the traffic that would otherwise have been routed to the Region based on optimal routing.</p>
    #            <p>The default value is 100.</p>
    #   @return [Float]
    # @!attribute health_check_port
    #   <p>The port that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default port
    #   	        is the listener port that this endpoint group is associated with. If the listener port is a list of ports, Global Accelerator uses
    #   			the first port in the list.</p>
    #   @return [Integer]
    # @!attribute health_check_protocol
    #   <p>The protocol that Global Accelerator uses to check the health of endpoints that are part of this endpoint group. The default
    #   			value is TCP.</p>
    #   @return [String]
    # @!attribute health_check_path
    #   <p>If the protocol is HTTP/S, then this specifies the path that is the destination for health check targets. The
    #   			default value is slash (/).</p>
    #   @return [String]
    # @!attribute health_check_interval_seconds
    #   <p>The time—10 seconds or 30 seconds—between each health check for an endpoint. The default value is 30.</p>
    #   @return [Integer]
    # @!attribute threshold_count
    #   <p>The number of consecutive health checks required to set the state of a healthy endpoint to unhealthy, or to set an
    #   			unhealthy endpoint to healthy. The default value is 3.</p>
    #   @return [Integer]
    # @!attribute port_overrides
    #   <p>Override specific listener ports used to route traffic to endpoints that are part of this endpoint group. 
    #   			For example, you can create a port override in which the listener 
    #   			receives user traffic on ports 80 and 443, but your accelerator routes that traffic to ports 1080 
    #   			and 1443, respectively, on the endpoints.</p>
    #            <p>For more information, see <a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoint-groups-port-override.html">
    #   			Overriding listener ports</a> in the <i>Global Accelerator Developer Guide</i>.</p>
    #   @return [Array<Types::PortOverride>]
    class UpdateEndpointGroupRequest < Struct.new(
      nil,
      :endpoint_group_arn,
      :endpoint_configurations,
      :traffic_dial_percentage,
      :health_check_port,
      :health_check_protocol,
      :health_check_path,
      :health_check_interval_seconds,
      :threshold_count,
      :port_overrides,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint_group
    #   <p>The information about the endpoint group that was updated.</p>
    #   @return [Types::EndpointGroup]
    class UpdateEndpointGroupResponse < Struct.new(
      nil,
      :endpoint_group,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener_arn
    #   <p>The Amazon Resource Name (ARN) of the listener to update.</p>
    #   @return [String]
    # @!attribute port_ranges
    #   <p>The updated list of port ranges for the connections from clients to the accelerator.</p>
    #   @return [Array<Types::PortRange>]
    # @!attribute protocol
    #   <p>The updated protocol for the connections from clients to the accelerator.</p>
    #   @return [String]
    # @!attribute client_affinity
    #   <p>Client affinity lets you direct all requests from a user to the same endpoint, if you have stateful applications,
    #   			regardless of the port and protocol of the client request. Client affinity gives you control over whether to always
    #   			route each client to the same specific endpoint.</p>
    #            <p>Global Accelerator uses a consistent-flow hashing algorithm to choose the optimal endpoint for a connection. If client
    #   	        affinity is <code>NONE</code>, Global Accelerator uses the "five-tuple" (5-tuple) properties—source IP address, source port,
    #   			destination IP address, destination port, and protocol—to select the hash value, and then chooses the best
    #   			endpoint. However, with this setting, if someone uses different ports to connect to Global Accelerator, their connections might not
    #   			be always routed to the same endpoint because the hash value changes. </p>
    #            <p>If you want a given client to always be routed to the same endpoint, set client affinity to <code>SOURCE_IP</code>
    #   		    instead. When you use the <code>SOURCE_IP</code> setting, Global Accelerator uses the "two-tuple" (2-tuple) properties—
    #   			source (client) IP address and destination IP address—to select the hash value.</p>
    #            <p>The default value is <code>NONE</code>.</p>
    #   @return [String]
    class UpdateListenerRequest < Struct.new(
      nil,
      :listener_arn,
      :port_ranges,
      :protocol,
      :client_affinity,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute listener
    #   <p>Information for the updated listener.</p>
    #   @return [Types::Listener]
    class UpdateListenerResponse < Struct.new(
      nil,
      :listener,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute cidr
    #   <p>The address range, in CIDR notation.</p>
    #            <p> For more information, see
    #   			<a href="https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html">Bring your own IP addresses (BYOIP)</a> in 
    #   			the Global Accelerator Developer Guide.</p>
    #   @return [String]
    class WithdrawByoipCidrRequest < Struct.new(
      nil,
      :cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute byoip_cidr
    #   <p>Information about the BYOIP address pool.</p>
    #   @return [Types::ByoipCidr]
    class WithdrawByoipCidrResponse < Struct.new(
      nil,
      :byoip_cidr,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
