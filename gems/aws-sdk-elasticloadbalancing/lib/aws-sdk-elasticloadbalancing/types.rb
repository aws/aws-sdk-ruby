# frozen_string_literal: true

# This is generated code!

module Aws::ElasticLoadBalancing
  # This module contains the types returned by client operations.
  module Types

    # <p>Information about the <code>AccessLog</code> attribute.</p>
    # @!attribute enabled
    #   <p>Specifies whether access logs are enabled for the load balancer.</p>
    #   @return [Boolean]
    # @!attribute s3_bucket_name
    #   <p>The name of the Amazon S3 bucket where the access logs are stored.</p>
    #   @return [String]
    # @!attribute emit_interval
    #   <p>The interval for publishing the access logs. You can specify an interval of either 5 minutes or 60 minutes.</p>
    #           <p>Default: 60 minutes</p>
    #   @return [Integer]
    # @!attribute s3_bucket_prefix
    #   <p>The logical hierarchy you created for your Amazon S3 bucket, for example <code>my-bucket-prefix/prod</code>.  
    #               If the prefix is not provided, the log is placed at the root level of the bucket.</p>
    #   @return [String]
    class AccessLog < Struct.new(
      :enabled,
      :s3_bucket_name,
      :emit_interval,
      :s3_bucket_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>The specified load balancer does not exist.</p>
    # @!attribute message
    #   @return [String]
    class AccessPointNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for EnableAvailabilityZonesForLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>The Availability Zones. These must be in the same region as the load balancer.</p>
    #   @return [Array<String>]
    class AddAvailabilityZonesInput < Struct.new(
      :load_balancer_name,
      :availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of EnableAvailabilityZonesForLoadBalancer.</p>
    # @!attribute availability_zones
    #   <p>The updated list of Availability Zones for the load balancer.</p>
    #   @return [Array<String>]
    class AddAvailabilityZonesOutput < Struct.new(
      :availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for AddTags.</p>
    # @!attribute load_balancer_names
    #   <p>The name of the load balancer. You can specify one load balancer only.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    class AddTagsInput < Struct.new(
      :load_balancer_names,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of AddTags.</p>
    class AddTagsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about additional load balancer attributes.</p>
    # @!attribute key
    #   <p>The name of the attribute.</p>
    #           <p>The following attribute is supported.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>elb.http.desyncmitigationmode</code> - Determines how the load balancer handles requests that  
    #                       might pose a security risk to your application. The possible values are <code>monitor</code>, 
    #                       <code>defensive</code>, and <code>strictest</code>. The default is <code>defensive</code>.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute value
    #   <p>This value of the attribute.</p>
    #   @return [String]
    class AdditionalAttribute < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy for application-controlled session stickiness.</p>
    # @!attribute policy_name
    #   <p>The mnemonic name for the policy being created. The name must be unique within a set of policies for this load balancer.</p>
    #   @return [String]
    # @!attribute cookie_name
    #   <p>The name of the application cookie used for stickiness.</p>
    #   @return [String]
    class AppCookieStickinessPolicy < Struct.new(
      :policy_name,
      :cookie_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for ApplySecurityGroupsToLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute security_groups
    #   <p>The IDs of the security groups to associate with the load balancer. Note that you cannot specify the name of the security group.</p>
    #   @return [Array<String>]
    class ApplySecurityGroupsToLoadBalancerInput < Struct.new(
      :load_balancer_name,
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of ApplySecurityGroupsToLoadBalancer.</p>
    # @!attribute security_groups
    #   <p>The IDs of the security groups associated with the load balancer.</p>
    #   @return [Array<String>]
    class ApplySecurityGroupsToLoadBalancerOutput < Struct.new(
      :security_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for AttachLoaBalancerToSubnets.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of the subnets to add. You can add only one subnet per Availability Zone.</p>
    #   @return [Array<String>]
    class AttachLoadBalancerToSubnetsInput < Struct.new(
      :load_balancer_name,
      :subnets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of AttachLoadBalancerToSubnets.</p>
    # @!attribute subnets
    #   <p>The IDs of the subnets attached to the load balancer.</p>
    #   @return [Array<String>]
    class AttachLoadBalancerToSubnetsOutput < Struct.new(
      :subnets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the configuration of an EC2 instance.</p>
    # @!attribute instance_port
    #   <p>The port on which the EC2 instance is listening.</p>
    #   @return [Integer]
    # @!attribute policy_names
    #   <p>The names of the policies enabled for the EC2 instance.</p>
    #   @return [Array<String>]
    class BackendServerDescription < Struct.new(
      :instance_port,
      :policy_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified ARN does not refer to a valid SSL certificate in AWS Identity and Access Management (IAM) 
    #             or AWS Certificate Manager (ACM). Note that if you recently uploaded the certificate to IAM, this error might 
    #             indicate that the certificate is not fully available yet.</p>
    # @!attribute message
    #   @return [String]
    class CertificateNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for ConfigureHealthCheck.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute health_check
    #   <p>The configuration information.</p>
    #   @return [Types::HealthCheck]
    class ConfigureHealthCheckInput < Struct.new(
      :load_balancer_name,
      :health_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of ConfigureHealthCheck.</p>
    # @!attribute health_check
    #   <p>The updated health check.</p>
    #   @return [Types::HealthCheck]
    class ConfigureHealthCheckOutput < Struct.new(
      :health_check,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the <code>ConnectionDraining</code> attribute.</p>
    # @!attribute enabled
    #   <p>Specifies whether connection draining is enabled for the load balancer.</p>
    #   @return [Boolean]
    # @!attribute timeout
    #   <p>The maximum time, in seconds, to keep the existing connections open before deregistering the instances.</p>
    #   @return [Integer]
    class ConnectionDraining < Struct.new(
      :enabled,
      :timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Information about the <code>ConnectionSettings</code> attribute.</p>
    # @!attribute idle_timeout
    #   <p>The time, in seconds, that the connection is allowed to be idle (no data has been sent over the connection) before it is closed by the load balancer.</p>
    #   @return [Integer]
    class ConnectionSettings < Struct.new(
      :idle_timeout,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #           <p>This name must be unique within your set of load balancers for the region, must have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, and cannot begin or end with a hyphen.</p>
    #   @return [String]
    # @!attribute listeners
    #   <p>The listeners.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Array<Types::Listener>]
    # @!attribute availability_zones
    #   <p>One or more Availability Zones from the same region as the load balancer.</p>
    #           <p>You must specify at least one Availability Zone.</p>
    #           <p>You can add more Availability Zones after you create the load balancer using 
    #               <a>EnableAvailabilityZonesForLoadBalancer</a>.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The IDs of the subnets in your VPC to attach to the load balancer.
    #               Specify one subnet per Availability Zone specified in <code>AvailabilityZones</code>.</p>
    #   @return [Array<String>]
    # @!attribute security_groups
    #   <p>The IDs of the security groups to assign to the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute scheme
    #   <p>The type of a load balancer. Valid only for load balancers in a VPC.</p>          
    #           <p>By default, Elastic Load Balancing creates an Internet-facing load balancer with a DNS name that resolves to public IP addresses.
    #               For more information about Internet-facing and Internal load balancers, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme">Load Balancer Scheme</a>
    #               in the <i>Elastic Load Balancing User Guide</i>.</p>
    #           <p>Specify <code>internal</code> to create a load balancer with a DNS name that resolves to private IP addresses.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>A list of tags to assign to the load balancer.</p>
    #           <p>For more information about tagging your load balancer, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/add-remove-tags.html">Tag Your Classic Load Balancer</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Array<Types::Tag>]
    class CreateAccessPointInput < Struct.new(
      :load_balancer_name,
      :listeners,
      :availability_zones,
      :subnets,
      :security_groups,
      :scheme,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for CreateLoadBalancer.</p>
    # @!attribute dns_name
    #   <p>The DNS name of the load balancer.</p>
    #   @return [String]
    class CreateAccessPointOutput < Struct.new(
      :dns_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateAppCookieStickinessPolicy.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    #   @return [String]
    # @!attribute cookie_name
    #   <p>The name of the application cookie used for stickiness.</p>
    #   @return [String]
    class CreateAppCookieStickinessPolicyInput < Struct.new(
      :load_balancer_name,
      :policy_name,
      :cookie_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for CreateAppCookieStickinessPolicy.</p>
    class CreateAppCookieStickinessPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateLBCookieStickinessPolicy.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy being created. Policy names must consist of alphanumeric characters and dashes (-). This name must be unique within the set of policies for this load balancer.</p>
    #   @return [String]
    # @!attribute cookie_expiration_period
    #   <p>The time period, in seconds, after which the cookie should be considered stale. If you do not specify this parameter, the default value is 0, which indicates that the sticky session should last for the duration of the browser session.</p>
    #   @return [Integer]
    class CreateLBCookieStickinessPolicyInput < Struct.new(
      :load_balancer_name,
      :policy_name,
      :cookie_expiration_period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for CreateLBCookieStickinessPolicy.</p>
    class CreateLBCookieStickinessPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateLoadBalancerListeners.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute listeners
    #   <p>The listeners.</p>
    #   @return [Array<Types::Listener>]
    class CreateLoadBalancerListenerInput < Struct.new(
      :load_balancer_name,
      :listeners,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateLoadBalancerListener.</p>
    class CreateLoadBalancerListenerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for CreateLoadBalancerPolicy.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the load balancer policy to be created. This name must be unique within the set of policies for this load balancer.</p>
    #   @return [String]
    # @!attribute policy_type_name
    #   <p>The name of the base policy type.
    #      	   To get the list of policy types, use <a>DescribeLoadBalancerPolicyTypes</a>.</p>
    #   @return [String]
    # @!attribute policy_attributes
    #   <p>The policy attributes.</p>
    #   @return [Array<Types::PolicyAttribute>]
    class CreateLoadBalancerPolicyInput < Struct.new(
      :load_balancer_name,
      :policy_name,
      :policy_type_name,
      :policy_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of CreateLoadBalancerPolicy.</p>
    class CreateLoadBalancerPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the <code>CrossZoneLoadBalancing</code> attribute.</p>
    # @!attribute enabled
    #   <p>Specifies whether cross-zone load balancing is enabled for the load balancer.</p>
    #   @return [Boolean]
    class CrossZoneLoadBalancing < Struct.new(
      :enabled,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enabled] = false unless options.key?(:enabled)
        super
      end
    end

    # <p>Contains the parameters for DeleteLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    class DeleteAccessPointInput < Struct.new(
      :load_balancer_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DeleteLoadBalancer.</p>
    class DeleteAccessPointOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DeleteLoadBalancerListeners.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute load_balancer_ports
    #   <p>The client port numbers of the listeners.</p>
    #   @return [Array<Integer>]
    class DeleteLoadBalancerListenerInput < Struct.new(
      :load_balancer_name,
      :load_balancer_ports,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DeleteLoadBalancerListeners.</p>
    class DeleteLoadBalancerListenerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DeleteLoadBalancerPolicy.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    class DeleteLoadBalancerPolicyInput < Struct.new(
      :load_balancer_name,
      :policy_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DeleteLoadBalancerPolicy.</p>
    class DeleteLoadBalancerPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A request made by Elastic Load Balancing to another service exceeds the maximum request rate permitted for your account.</p>
    # @!attribute message
    #   @return [String]
    class DependencyThrottleException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DeregisterInstancesFromLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>The IDs of the instances.</p>
    #   @return [Array<Types::Instance>]
    class DeregisterEndPointsInput < Struct.new(
      :load_balancer_name,
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DeregisterInstancesFromLoadBalancer.</p>
    # @!attribute instances
    #   <p>The remaining instances registered with the load balancer.</p>
    #   @return [Array<Types::Instance>]
    class DeregisterEndPointsOutput < Struct.new(
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeLoadBalancers.</p>
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers.</p>
    #   @return [Array<String>]
    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call (a number from 1 to 400). The default is 400.</p>
    #   @return [Integer]
    class DescribeAccessPointsInput < Struct.new(
      :load_balancer_names,
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeLoadBalancers.</p>
    # @!attribute load_balancer_descriptions
    #   <p>Information about the load balancers.</p>
    #   @return [Array<Types::LoadBalancerDescription>]
    # @!attribute next_marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    #   @return [String]
    class DescribeAccessPointsOutput < Struct.new(
      :load_balancer_descriptions,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute marker
    #   <p>The marker for the next set of results. (You received this marker from a previous call.)</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of results to return with this call.</p>
    #   @return [Integer]
    class DescribeAccountLimitsInput < Struct.new(
      :marker,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute limits
    #   <p>Information about the limits.</p>
    #   @return [Array<Types::Limit>]
    # @!attribute next_marker
    #   <p>The marker to use when requesting the next set of results. If there are no additional results, the string is empty.</p>
    #   @return [String]
    class DescribeAccountLimitsOutput < Struct.new(
      :limits,
      :next_marker,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeInstanceHealth.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>The IDs of the instances.</p>
    #   @return [Array<Types::Instance>]
    class DescribeEndPointStateInput < Struct.new(
      :load_balancer_name,
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for DescribeInstanceHealth.</p>
    # @!attribute instance_states
    #   <p>Information about the health of the instances.</p>
    #   @return [Array<Types::InstanceState>]
    class DescribeEndPointStateOutput < Struct.new(
      :instance_states,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeLoadBalancerAttributes.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    class DescribeLoadBalancerAttributesInput < Struct.new(
      :load_balancer_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DescribeLoadBalancerAttributes.</p>
    # @!attribute load_balancer_attributes
    #   <p>Information about the load balancer attributes.</p>
    #   @return [Types::LoadBalancerAttributes]
    class DescribeLoadBalancerAttributesOutput < Struct.new(
      :load_balancer_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeLoadBalancerPolicies.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute policy_names
    #   <p>The names of the policies.</p>
    #   @return [Array<String>]
    class DescribeLoadBalancerPoliciesInput < Struct.new(
      :load_balancer_name,
      :policy_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DescribeLoadBalancerPolicies.</p>
    # @!attribute policy_descriptions
    #   <p>Information about the policies.</p>
    #   @return [Array<Types::PolicyDescription>]
    class DescribeLoadBalancerPoliciesOutput < Struct.new(
      :policy_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeLoadBalancerPolicyTypes.</p>
    # @!attribute policy_type_names
    #   <p>The names of the policy types. If no names are specified, describes all policy types defined by Elastic Load Balancing.</p>
    #   @return [Array<String>]
    class DescribeLoadBalancerPolicyTypesInput < Struct.new(
      :policy_type_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DescribeLoadBalancerPolicyTypes.</p>
    # @!attribute policy_type_descriptions
    #   <p>Information about the policy types.</p>
    #   @return [Array<Types::PolicyTypeDescription>]
    class DescribeLoadBalancerPolicyTypesOutput < Struct.new(
      :policy_type_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DescribeTags.</p>
    # @!attribute load_balancer_names
    #   <p>The names of the load balancers.</p>
    #   @return [Array<String>]
    class DescribeTagsInput < Struct.new(
      :load_balancer_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for DescribeTags.</p>
    # @!attribute tag_descriptions
    #   <p>Information about the tags.</p>
    #   @return [Array<Types::TagDescription>]
    class DescribeTagsOutput < Struct.new(
      :tag_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DetachLoadBalancerFromSubnets.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute subnets
    #   <p>The IDs of the subnets.</p>
    #   @return [Array<String>]
    class DetachLoadBalancerFromSubnetsInput < Struct.new(
      :load_balancer_name,
      :subnets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of DetachLoadBalancerFromSubnets.</p>
    # @!attribute subnets
    #   <p>The IDs of the remaining subnets for the load balancer.</p>
    #   @return [Array<String>]
    class DetachLoadBalancerFromSubnetsOutput < Struct.new(
      :subnets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified load balancer name already exists for this account.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateAccessPointNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A listener already exists for the specified load balancer name and port, but with a different instance port, protocol, or SSL certificate.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateListenerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A policy with the specified name already exists for this load balancer.</p>
    # @!attribute message
    #   @return [String]
    class DuplicatePolicyNameException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag key was specified more than once.</p>
    # @!attribute message
    #   @return [String]
    class DuplicateTagKeysException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a health check.</p>
    # @!attribute target
    #   <p>The instance being checked. The protocol is either TCP, HTTP, HTTPS, or SSL. The range of valid ports is one (1) through 65535.</p>
    #           <p>TCP is the default, specified as a TCP: port pair, for example "TCP:5000". In this case, a health check simply attempts to open a TCP connection to the instance on the specified port. Failure to connect within the configured timeout is considered unhealthy.</p>
    #           <p>SSL is also specified as SSL: port pair, for example, SSL:5000.</p>
    #           <p>For HTTP/HTTPS, you must include a ping path in the string. HTTP is specified as a HTTP:port;/;PathToPing; grouping, for example "HTTP:80/weather/us/wa/seattle". In this case, a HTTP GET request is issued to the instance on the given port and path. Any answer other than "200 OK" within the timeout period is considered unhealthy.</p>
    #            <p>The total length of the HTTP ping target must be 1024 16-bit Unicode characters or less.</p>
    #   @return [String]
    # @!attribute interval
    #   <p>The approximate interval, in seconds, between health checks of an individual instance.</p>
    #   @return [Integer]
    # @!attribute timeout
    #   <p>The amount of time, in seconds, during which no response means a failed health check.</p>
    #           <p>This value must be less than the <code>Interval</code> value.</p>
    #   @return [Integer]
    # @!attribute unhealthy_threshold
    #   <p>The number of consecutive health check failures required before moving the instance to the <code>Unhealthy</code> state.</p>
    #   @return [Integer]
    # @!attribute healthy_threshold
    #   <p>The number of consecutive health checks successes required before moving the instance to the <code>Healthy</code> state.</p>
    #   @return [Integer]
    class HealthCheck < Struct.new(
      :target,
      :interval,
      :timeout,
      :unhealthy_threshold,
      :healthy_threshold,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The ID of an EC2 instance.</p>
    # @!attribute instance_id
    #   <p>The instance ID.</p>
    #   @return [String]
    class Instance < Struct.new(
      :instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the state of an EC2 instance.</p>
    # @!attribute instance_id
    #   <p>The ID of the instance.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The current state of the instance.</p>
    #           <p>Valid values: <code>InService</code> | <code>OutOfService</code> | <code>Unknown</code>
    #            </p>
    #   @return [String]
    # @!attribute reason_code
    #   <p>Information about the cause of <code>OutOfService</code> instances.
    #            Specifically, whether the cause is Elastic Load Balancing or the instance.</p>
    #           <p>Valid values: <code>ELB</code> | <code>Instance</code> | <code>N/A</code>
    #            </p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the instance state. This string can contain one or more of the following messages.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>N/A</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>A transient error occurred. Please try again later.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance has failed at least the UnhealthyThreshold number of health checks consecutively.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance has not passed the configured HealthyThreshold number of health checks consecutively.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance registration is still in progress.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance is in the EC2 Availability Zone for which LoadBalancer is not configured to route traffic to.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance is not currently registered with the LoadBalancer.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance deregistration currently in progress.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Disable Availability Zone is currently in progress.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance is in pending state.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance is in stopped state.</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>Instance is in terminated state.</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class InstanceState < Struct.new(
      :instance_id,
      :state,
      :reason_code,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The requested configuration change is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidConfigurationRequestException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified endpoint is not valid.</p>
    # @!attribute message
    #   @return [String]
    class InvalidEndPointException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified value for the schema is not valid. You can only specify a scheme for load balancers in a VPC.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSchemeException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the specified security groups do not exist.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSecurityGroupException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified VPC has no associated Internet gateway.</p>
    # @!attribute message
    #   @return [String]
    class InvalidSubnetException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy for duration-based session stickiness.</p>
    # @!attribute policy_name
    #   <p>The name of the policy. This name must be unique within the set of policies for this load balancer.</p>
    #   @return [String]
    # @!attribute cookie_expiration_period
    #   <p>The time period, in seconds, after which the cookie should be considered stale. If this parameter is not specified, the stickiness session lasts for the duration of the browser session.</p>
    #   @return [Integer]
    class LBCookieStickinessPolicy < Struct.new(
      :policy_name,
      :cookie_expiration_period,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about an Elastic Load Balancing resource limit for your AWS account.</p>
    # @!attribute name
    #   <p>The name of the limit. The possible values are:</p>
    #           <ul>
    #               <li>
    #                   <p>classic-listeners</p>
    #               </li>
    #               <li>
    #                   <p>classic-load-balancers</p>
    #               </li>
    #               <li>
    #                   <p>classic-registered-instances</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute max
    #   <p>The maximum value of the limit.</p>
    #   @return [String]
    class Limit < Struct.new(
      :name,
      :max,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a listener.</p>
    #         <p>For information about the protocols and the ports supported by Elastic Load Balancing, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/elb-listener-config.html">Listeners for Your Classic Load Balancer</a>
    #             in the <i>Classic Load Balancers Guide</i>.</p>
    # @!attribute protocol
    #   <p>The load balancer transport protocol to use for routing: HTTP, HTTPS, TCP, or SSL.</p>
    #   @return [String]
    # @!attribute load_balancer_port
    #   <p>The port on which the load balancer is listening. On EC2-VPC, you can specify any port from the range 1-65535. On EC2-Classic, you can specify any port from the following list: 25, 80, 443, 465, 587, 1024-65535.</p>
    #   @return [Integer]
    # @!attribute instance_protocol
    #   <p>The protocol to use for routing traffic to instances: HTTP, HTTPS, TCP, or SSL.</p>
    #            <p>If the front-end protocol is TCP or SSL, the back-end protocol must be TCP or SSL. 
    #              If the front-end protocol is HTTP or HTTPS, the back-end protocol must be HTTP or HTTPS.</p>
    #            <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is secure,
    #             (HTTPS or SSL), the listener's <code>InstanceProtocol</code> must also be secure.</p> 
    #           <p>If there is another listener with the same <code>InstancePort</code> whose <code>InstanceProtocol</code> is HTTP or TCP,
    #              the listener's <code>InstanceProtocol</code> must be HTTP or TCP.</p>
    #   @return [String]
    # @!attribute instance_port
    #   <p>The port on which the instance is listening.</p>
    #   @return [Integer]
    # @!attribute ssl_certificate_id
    #   <p>The Amazon Resource Name (ARN) of the server certificate.</p>
    #   @return [String]
    class Listener < Struct.new(
      :protocol,
      :load_balancer_port,
      :instance_protocol,
      :instance_port,
      :ssl_certificate_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:load_balancer_port] = 0 unless options.key?(:load_balancer_port)
        super
      end
    end

    # <p>The policies enabled for a listener.</p>
    # @!attribute listener
    #   <p>The listener.</p>
    #   @return [Types::Listener]
    # @!attribute policy_names
    #   <p>The policies. If there are no policies enabled, the list is empty.</p>
    #   @return [Array<String>]
    class ListenerDescription < Struct.new(
      :listener,
      :policy_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The load balancer does not have a listener configured at the specified port.</p>
    # @!attribute message
    #   @return [String]
    class ListenerNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified load balancer attribute does not exist.</p>
    # @!attribute message
    #   @return [String]
    class LoadBalancerAttributeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The attributes for a load balancer.</p>
    # @!attribute cross_zone_load_balancing
    #   <p>If enabled, the load balancer routes the request traffic evenly across all instances regardless of the Availability Zones.</p> 
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html">Configure Cross-Zone Load Balancing</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Types::CrossZoneLoadBalancing]
    # @!attribute access_log
    #   <p>If enabled, the load balancer captures detailed information of all requests and delivers the information to the Amazon S3 bucket that you specify.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-access-logs.html">Enable Access Logs</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Types::AccessLog]
    # @!attribute connection_draining
    #   <p>If enabled, the load balancer allows existing requests to complete before the load balancer shifts traffic away from a deregistered or unhealthy instance.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html">Configure Connection Draining</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Types::ConnectionDraining]
    # @!attribute connection_settings
    #   <p>If enabled, the load balancer allows the connections to remain idle (no data is sent over the connection) for the specified duration.</p>
    #           <p>By default, Elastic Load Balancing maintains a 60-second idle connection timeout for both front-end and back-end connections of your load balancer.
    #               For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html">Configure Idle Connection Timeout</a>
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [Types::ConnectionSettings]
    # @!attribute additional_attributes
    #   <p>Any additional attributes.</p>
    #   @return [Array<Types::AdditionalAttribute>]
    class LoadBalancerAttributes < Struct.new(
      :cross_zone_load_balancing,
      :access_log,
      :connection_draining,
      :connection_settings,
      :additional_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a load balancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute dns_name
    #   <p>The DNS name of the load balancer.</p>
    #   @return [String]
    # @!attribute canonical_hosted_zone_name
    #   <p>The DNS name of the load balancer.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/using-domain-names-with-elb.html">Configure a Custom Domain Name</a> 
    #               in the <i>Classic Load Balancers Guide</i>.</p>
    #   @return [String]
    # @!attribute canonical_hosted_zone_name_id
    #   <p>The ID of the Amazon Route 53 hosted zone for the load balancer.</p>
    #   @return [String]
    # @!attribute listener_descriptions
    #   <p>The listeners for the load balancer.</p>
    #   @return [Array<Types::ListenerDescription>]
    # @!attribute policies
    #   <p>The policies defined for the load balancer.</p>
    #   @return [Types::Policies]
    # @!attribute backend_server_descriptions
    #   <p>Information about your EC2 instances.</p>
    #   @return [Array<Types::BackendServerDescription>]
    # @!attribute availability_zones
    #   <p>The Availability Zones for the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute subnets
    #   <p>The IDs of the subnets for the load balancer.</p>
    #   @return [Array<String>]
    # @!attribute vpc_id
    #   <p>The ID of the VPC for the load balancer.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>The IDs of the instances for the load balancer.</p>
    #   @return [Array<Types::Instance>]
    # @!attribute health_check
    #   <p>Information about the health checks conducted on the load balancer.</p>
    #   @return [Types::HealthCheck]
    # @!attribute source_security_group
    #   <p>The security group for the load balancer, which you can use as part of your inbound rules for your registered instances. 
    #               To only allow traffic from load balancers, add a security group rule that specifies this source security group as the inbound source.</p>
    #   @return [Types::SourceSecurityGroup]
    # @!attribute security_groups
    #   <p>The security groups for the load balancer. Valid only for load balancers in a VPC.</p>
    #   @return [Array<String>]
    # @!attribute created_time
    #   <p>The date and time the load balancer was created.</p>
    #   @return [Time]
    # @!attribute scheme
    #   <p>The type of load balancer. Valid only for load balancers in a VPC.</p>
    #            <p>If <code>Scheme</code> is <code>internet-facing</code>, the load balancer
    #              has a public DNS name that resolves to a public IP address.</p>
    #           <p>If <code>Scheme</code> is <code>internal</code>, the load balancer has a public 
    #              DNS name that resolves to a private IP address.</p>
    #   @return [String]
    class LoadBalancerDescription < Struct.new(
      :load_balancer_name,
      :dns_name,
      :canonical_hosted_zone_name,
      :canonical_hosted_zone_name_id,
      :listener_descriptions,
      :policies,
      :backend_server_descriptions,
      :availability_zones,
      :subnets,
      :vpc_id,
      :instances,
      :health_check,
      :source_security_group,
      :security_groups,
      :created_time,
      :scheme,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for ModifyLoadBalancerAttributes.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute load_balancer_attributes
    #   <p>The attributes for the load balancer.</p>
    #   @return [Types::LoadBalancerAttributes]
    class ModifyLoadBalancerAttributesInput < Struct.new(
      :load_balancer_name,
      :load_balancer_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of ModifyLoadBalancerAttributes.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute load_balancer_attributes
    #   <p>Information about the load balancer attributes.</p>
    #   @return [Types::LoadBalancerAttributes]
    class ModifyLoadBalancerAttributesOutput < Struct.new(
      :load_balancer_name,
      :load_balancer_attributes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation is not allowed.</p>
    # @!attribute message
    #   @return [String]
    class OperationNotPermittedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The policies for a load balancer.</p>
    # @!attribute app_cookie_stickiness_policies
    #   <p>The stickiness policies created using <a>CreateAppCookieStickinessPolicy</a>.</p>
    #   @return [Array<Types::AppCookieStickinessPolicy>]
    # @!attribute lb_cookie_stickiness_policies
    #   <p>The stickiness policies created using <a>CreateLBCookieStickinessPolicy</a>.</p>
    #   @return [Array<Types::LBCookieStickinessPolicy>]
    # @!attribute other_policies
    #   <p>The policies other than the stickiness policies.</p>
    #   @return [Array<String>]
    class Policies < Struct.new(
      :app_cookie_stickiness_policies,
      :lb_cookie_stickiness_policies,
      :other_policies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy attribute.</p>
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class PolicyAttribute < Struct.new(
      :attribute_name,
      :attribute_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy attribute.</p>
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute attribute_value
    #   <p>The value of the attribute.</p>
    #   @return [String]
    class PolicyAttributeDescription < Struct.new(
      :attribute_name,
      :attribute_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy attribute type.</p>
    # @!attribute attribute_name
    #   <p>The name of the attribute.</p>
    #   @return [String]
    # @!attribute attribute_type
    #   <p>The type of the attribute. For example, <code>Boolean</code> or <code>Integer</code>.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the attribute.</p>
    #   @return [String]
    # @!attribute default_value
    #   <p>The default value of the attribute, if applicable.</p>
    #   @return [String]
    # @!attribute cardinality
    #   <p>The cardinality of the attribute.</p> 
    #           <p>Valid values:</p>
    #               <ul>
    #               <li>
    #                  <p>ONE(1) : Single value required</p>
    #               </li>
    #               <li>
    #                  <p>ZERO_OR_ONE(0..1) : Up to one value is allowed</p>
    #               </li>
    #               <li>
    #                  <p>ZERO_OR_MORE(0..*) : Optional. Multiple values are allowed</p>
    #               </li>
    #               <li>
    #                  <p>ONE_OR_MORE(1..*0) : Required. Multiple values are allowed</p>
    #               </li>
    #            </ul>
    #   @return [String]
    class PolicyAttributeTypeDescription < Struct.new(
      :attribute_name,
      :attribute_type,
      :description,
      :default_value,
      :cardinality,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy.</p>
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_type_name
    #   <p>The name of the policy type.</p>
    #   @return [String]
    # @!attribute policy_attribute_descriptions
    #   <p>The policy attributes.</p>
    #   @return [Array<Types::PolicyAttributeDescription>]
    class PolicyDescription < Struct.new(
      :policy_name,
      :policy_type_name,
      :policy_attribute_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the specified policies do not exist.</p>
    # @!attribute message
    #   @return [String]
    class PolicyNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a policy type.</p>
    # @!attribute policy_type_name
    #   <p>The name of the policy type.</p>
    #   @return [String]
    # @!attribute description
    #   <p>A description of the policy type.</p>
    #   @return [String]
    # @!attribute policy_attribute_type_descriptions
    #   <p>The description of the policy attributes associated with the policies defined by Elastic Load Balancing.</p>
    #   @return [Array<Types::PolicyAttributeTypeDescription>]
    class PolicyTypeDescription < Struct.new(
      :policy_type_name,
      :description,
      :policy_attribute_type_descriptions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the specified policy types do not exist.</p>
    # @!attribute message
    #   @return [String]
    class PolicyTypeNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for RegisterInstancesWithLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute instances
    #   <p>The IDs of the instances.</p>
    #   @return [Array<Types::Instance>]
    class RegisterEndPointsInput < Struct.new(
      :load_balancer_name,
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of RegisterInstancesWithLoadBalancer.</p>
    # @!attribute instances
    #   <p>The updated list of instances for the load balancer.</p>
    #   @return [Array<Types::Instance>]
    class RegisterEndPointsOutput < Struct.new(
      :instances,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for DisableAvailabilityZonesForLoadBalancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute availability_zones
    #   <p>The Availability Zones.</p>
    #   @return [Array<String>]
    class RemoveAvailabilityZonesInput < Struct.new(
      :load_balancer_name,
      :availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output for DisableAvailabilityZonesForLoadBalancer.</p>
    # @!attribute availability_zones
    #   <p>The remaining Availability Zones for the load balancer.</p>
    #   @return [Array<String>]
    class RemoveAvailabilityZonesOutput < Struct.new(
      :availability_zones,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for RemoveTags.</p>
    # @!attribute load_balancer_names
    #   <p>The name of the load balancer. You can specify a maximum of one load balancer name.</p>
    #   @return [Array<String>]
    # @!attribute tags
    #   <p>The list of tag keys to remove.</p>
    #   @return [Array<Types::TagKeyOnly>]
    class RemoveTagsInput < Struct.new(
      :load_balancer_names,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of RemoveTags.</p>
    class RemoveTagsOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for SetLoadBalancerListenerSSLCertificate.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute load_balancer_port
    #   <p>The port that uses the specified SSL certificate.</p>
    #   @return [Integer]
    # @!attribute ssl_certificate_id
    #   <p>The Amazon Resource Name (ARN) of the SSL certificate.</p>
    #   @return [String]
    class SetLoadBalancerListenerSSLCertificateInput < Struct.new(
      :load_balancer_name,
      :load_balancer_port,
      :ssl_certificate_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of SetLoadBalancerListenerSSLCertificate.</p>
    class SetLoadBalancerListenerSSLCertificateOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for SetLoadBalancerPoliciesForBackendServer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute instance_port
    #   <p>The port number associated with the EC2 instance.</p>
    #   @return [Integer]
    # @!attribute policy_names
    #   <p>The names of the policies. If the list is empty, then all current polices are removed from the EC2 instance.</p>
    #   @return [Array<String>]
    class SetLoadBalancerPoliciesForBackendServerInput < Struct.new(
      :load_balancer_name,
      :instance_port,
      :policy_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of SetLoadBalancerPoliciesForBackendServer.</p>
    class SetLoadBalancerPoliciesForBackendServerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the parameters for SetLoadBalancePoliciesOfListener.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute load_balancer_port
    #   <p>The external port of the load balancer.</p>
    #   @return [Integer]
    # @!attribute policy_names
    #   <p>The names of the policies. This list must include all policies to be enabled. If you omit a policy that is currently enabled, it is disabled. If the list is empty, all current policies are disabled.</p>
    #   @return [Array<String>]
    class SetLoadBalancerPoliciesOfListenerInput < Struct.new(
      :load_balancer_name,
      :load_balancer_port,
      :policy_names,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains the output of SetLoadBalancePoliciesOfListener.</p>
    class SetLoadBalancerPoliciesOfListenerOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a source security group.</p>
    # @!attribute owner_alias
    #   <p>The owner of the security group.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>The name of the security group.</p>
    #   @return [String]
    class SourceSecurityGroup < Struct.new(
      :owner_alias,
      :group_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>One or more of the specified subnets do not exist.</p>
    # @!attribute message
    #   @return [String]
    class SubnetNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about a tag.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The tags associated with a load balancer.</p>
    # @!attribute load_balancer_name
    #   <p>The name of the load balancer.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags.</p>
    #   @return [Array<Types::Tag>]
    class TagDescription < Struct.new(
      :load_balancer_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The key of a tag.</p>
    # @!attribute key
    #   <p>The name of the key.</p>
    #   @return [String]
    class TagKeyOnly < Struct.new(
      :key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The quota for the number of load balancers has been reached.</p>
    # @!attribute message
    #   @return [String]
    class TooManyAccessPointsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The quota for the number of policies for this load balancer has been reached.</p>
    # @!attribute message
    #   @return [String]
    class TooManyPoliciesException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The quota for the number of tags that can be assigned to a load balancer has been reached.</p>
    # @!attribute message
    #   @return [String]
    class TooManyTagsException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified protocol or signature version is not supported.</p>
    # @!attribute message
    #   @return [String]
    class UnsupportedProtocolException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
