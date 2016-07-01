# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module ElasticLoadBalancing
    module Types

      # Information about the `AccessLog` attribute.
      # @note When making an API call, pass AccessLog
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #         s3_bucket_name: "S3BucketName",
      #         emit_interval: 1,
      #         s3_bucket_prefix: "AccessLogPrefix",
      #       }
      class AccessLog < Aws::Structure.new(
        :enabled,
        :s3_bucket_name,
        :emit_interval,
        :s3_bucket_prefix)

        # @!attribute [rw] enabled
        #   Specifies whether access log is enabled for the load balancer.
        #   @return [Boolean]

        # @!attribute [rw] s3_bucket_name
        #   The name of the Amazon S3 bucket where the access logs are stored.
        #   @return [String]

        # @!attribute [rw] emit_interval
        #   The interval for publishing the access logs. You can specify an
        #   interval of either 5 minutes or 60 minutes.
        #
        #   Default: 60 minutes
        #   @return [Integer]

        # @!attribute [rw] s3_bucket_prefix
        #   The logical hierarchy you created for your Amazon S3 bucket, for
        #   example `my-bucket-prefix/prod`. If the prefix is not provided, the
        #   log is placed at the root level of the bucket.
        #   @return [String]

      end

      # @note When making an API call, pass AddAvailabilityZonesInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         availability_zones: ["AvailabilityZone"], # required
      #       }
      class AddAvailabilityZonesInput < Aws::Structure.new(
        :load_balancer_name,
        :availability_zones)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] availability_zones
        #   The Availability Zones. These must be in the same region as the load
        #   balancer.
        #   @return [Array<String>]

      end

      class AddAvailabilityZonesOutput < Aws::Structure.new(
        :availability_zones)

        # @!attribute [rw] availability_zones
        #   The updated list of Availability Zones for the load balancer.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass AddTagsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_names: ["AccessPointName"], # required
      #         tags: [ # required
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      class AddTagsInput < Aws::Structure.new(
        :load_balancer_names,
        :tags)

        # @!attribute [rw] load_balancer_names
        #   The name of the load balancer. You can specify one load balancer
        #   only.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   The tags.
        #   @return [Array<Types::Tag>]

      end

      class AddTagsOutput < Aws::EmptyStructure; end

      # This data type is reserved.
      # @note When making an API call, pass AdditionalAttribute
      #   data as a hash:
      #
      #       {
      #         key: "StringVal",
      #         value: "StringVal",
      #       }
      class AdditionalAttribute < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   This parameter is reserved.
        #   @return [String]

        # @!attribute [rw] value
        #   This parameter is reserved.
        #   @return [String]

      end

      # Information about a policy for application-controlled session
      # stickiness.
      class AppCookieStickinessPolicy < Aws::Structure.new(
        :policy_name,
        :cookie_name)

        # @!attribute [rw] policy_name
        #   The mnemonic name for the policy being created. The name must be
        #   unique within a set of policies for this load balancer.
        #   @return [String]

        # @!attribute [rw] cookie_name
        #   The name of the application cookie used for stickiness.
        #   @return [String]

      end

      # @note When making an API call, pass ApplySecurityGroupsToLoadBalancerInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         security_groups: ["SecurityGroupId"], # required
      #       }
      class ApplySecurityGroupsToLoadBalancerInput < Aws::Structure.new(
        :load_balancer_name,
        :security_groups)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] security_groups
        #   The IDs of the security groups to associate with the load balancer.
        #   Note that you cannot specify the name of the security group.
        #   @return [Array<String>]

      end

      class ApplySecurityGroupsToLoadBalancerOutput < Aws::Structure.new(
        :security_groups)

        # @!attribute [rw] security_groups
        #   The IDs of the security groups associated with the load balancer.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass AttachLoadBalancerToSubnetsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         subnets: ["SubnetId"], # required
      #       }
      class AttachLoadBalancerToSubnetsInput < Aws::Structure.new(
        :load_balancer_name,
        :subnets)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] subnets
        #   The IDs of the subnets to add for the load balancer. You can add
        #   only one subnet per Availability Zone.
        #   @return [Array<String>]

      end

      class AttachLoadBalancerToSubnetsOutput < Aws::Structure.new(
        :subnets)

        # @!attribute [rw] subnets
        #   The IDs of the subnets attached to the load balancer.
        #   @return [Array<String>]

      end

      # Information about the configuration of a back-end server.
      class BackendServerDescription < Aws::Structure.new(
        :instance_port,
        :policy_names)

        # @!attribute [rw] instance_port
        #   The port on which the back-end server is listening.
        #   @return [Integer]

        # @!attribute [rw] policy_names
        #   The names of the policies enabled for the back-end server.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass ConfigureHealthCheckInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         health_check: { # required
      #           target: "HealthCheckTarget", # required
      #           interval: 1, # required
      #           timeout: 1, # required
      #           unhealthy_threshold: 1, # required
      #           healthy_threshold: 1, # required
      #         },
      #       }
      class ConfigureHealthCheckInput < Aws::Structure.new(
        :load_balancer_name,
        :health_check)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] health_check
        #   The configuration information for the new health check.
        #   @return [Types::HealthCheck]

      end

      class ConfigureHealthCheckOutput < Aws::Structure.new(
        :health_check)

        # @!attribute [rw] health_check
        #   The updated health check.
        #   @return [Types::HealthCheck]

      end

      # Information about the `ConnectionDraining` attribute.
      # @note When making an API call, pass ConnectionDraining
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #         timeout: 1,
      #       }
      class ConnectionDraining < Aws::Structure.new(
        :enabled,
        :timeout)

        # @!attribute [rw] enabled
        #   Specifies whether connection draining is enabled for the load
        #   balancer.
        #   @return [Boolean]

        # @!attribute [rw] timeout
        #   The maximum time, in seconds, to keep the existing connections open
        #   before deregistering the instances.
        #   @return [Integer]

      end

      # Information about the `ConnectionSettings` attribute.
      # @note When making an API call, pass ConnectionSettings
      #   data as a hash:
      #
      #       {
      #         idle_timeout: 1, # required
      #       }
      class ConnectionSettings < Aws::Structure.new(
        :idle_timeout)

        # @!attribute [rw] idle_timeout
        #   The time, in seconds, that the connection is allowed to be idle (no
        #   data has been sent over the connection) before it is closed by the
        #   load balancer.
        #   @return [Integer]

      end

      # @note When making an API call, pass CreateAccessPointInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         listeners: [ # required
      #           {
      #             protocol: "Protocol", # required
      #             load_balancer_port: 1, # required
      #             instance_protocol: "Protocol",
      #             instance_port: 1, # required
      #             ssl_certificate_id: "SSLCertificateId",
      #           },
      #         ],
      #         availability_zones: ["AvailabilityZone"],
      #         subnets: ["SubnetId"],
      #         security_groups: ["SecurityGroupId"],
      #         scheme: "LoadBalancerScheme",
      #         tags: [
      #           {
      #             key: "TagKey", # required
      #             value: "TagValue",
      #           },
      #         ],
      #       }
      class CreateAccessPointInput < Aws::Structure.new(
        :load_balancer_name,
        :listeners,
        :availability_zones,
        :subnets,
        :security_groups,
        :scheme,
        :tags)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #
        #   This name must be unique within your set of load balancers for the
        #   region, must have a maximum of 32 characters, must contain only
        #   alphanumeric characters or hyphens, and cannot begin or end with a
        #   hyphen.
        #   @return [String]

        # @!attribute [rw] listeners
        #   The listeners.
        #
        #   For more information, see [Listeners for Your Load Balancer][1] in
        #   the *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html
        #   @return [Array<Types::Listener>]

        # @!attribute [rw] availability_zones
        #   One or more Availability Zones from the same region as the load
        #   balancer. Traffic is equally distributed across all specified
        #   Availability Zones.
        #
        #   You must specify at least one Availability Zone.
        #
        #   You can add more Availability Zones after you create the load
        #   balancer using EnableAvailabilityZonesForLoadBalancer.
        #   @return [Array<String>]

        # @!attribute [rw] subnets
        #   The IDs of the subnets in your VPC to attach to the load balancer.
        #   Specify one subnet per Availability Zone specified in
        #   `AvailabilityZones`.
        #   @return [Array<String>]

        # @!attribute [rw] security_groups
        #   The IDs of the security groups to assign to the load balancer.
        #   @return [Array<String>]

        # @!attribute [rw] scheme
        #   The type of a load balancer. Valid only for load balancers in a VPC.
        #
        #   By default, Elastic Load Balancing creates an Internet-facing load
        #   balancer with a publicly resolvable DNS name, which resolves to
        #   public IP addresses. For more information about Internet-facing and
        #   Internal load balancers, see [Internet-facing and Internal Load
        #   Balancers][1] in the *Elastic Load Balancing Developer Guide*.
        #
        #   Specify `internal` to create an internal load balancer with a DNS
        #   name that resolves to private IP addresses.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/vpc-loadbalancer-types.html
        #   @return [String]

        # @!attribute [rw] tags
        #   A list of tags to assign to the load balancer.
        #
        #   For more information about tagging your load balancer, see
        #   [Tagging][1] in the *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/TerminologyandKeyConcepts.html#tagging-elb
        #   @return [Array<Types::Tag>]

      end

      class CreateAccessPointOutput < Aws::Structure.new(
        :dns_name)

        # @!attribute [rw] dns_name
        #   The DNS name of the load balancer.
        #   @return [String]

      end

      # @note When making an API call, pass CreateAppCookieStickinessPolicyInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         policy_name: "PolicyName", # required
      #         cookie_name: "CookieName", # required
      #       }
      class CreateAppCookieStickinessPolicyInput < Aws::Structure.new(
        :load_balancer_name,
        :policy_name,
        :cookie_name)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy being created. Policy names must consist of
        #   alphanumeric characters and dashes (-). This name must be unique
        #   within the set of policies for this load balancer.
        #   @return [String]

        # @!attribute [rw] cookie_name
        #   The name of the application cookie used for stickiness.
        #   @return [String]

      end

      class CreateAppCookieStickinessPolicyOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass CreateLBCookieStickinessPolicyInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         policy_name: "PolicyName", # required
      #         cookie_expiration_period: 1,
      #       }
      class CreateLBCookieStickinessPolicyInput < Aws::Structure.new(
        :load_balancer_name,
        :policy_name,
        :cookie_expiration_period)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy being created. Policy names must consist of
        #   alphanumeric characters and dashes (-). This name must be unique
        #   within the set of policies for this load balancer.
        #   @return [String]

        # @!attribute [rw] cookie_expiration_period
        #   The time period, in seconds, after which the cookie should be
        #   considered stale. If you do not specify this parameter, the sticky
        #   session lasts for the duration of the browser session.
        #   @return [Integer]

      end

      class CreateLBCookieStickinessPolicyOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass CreateLoadBalancerListenerInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         listeners: [ # required
      #           {
      #             protocol: "Protocol", # required
      #             load_balancer_port: 1, # required
      #             instance_protocol: "Protocol",
      #             instance_port: 1, # required
      #             ssl_certificate_id: "SSLCertificateId",
      #           },
      #         ],
      #       }
      class CreateLoadBalancerListenerInput < Aws::Structure.new(
        :load_balancer_name,
        :listeners)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] listeners
        #   The listeners.
        #   @return [Array<Types::Listener>]

      end

      class CreateLoadBalancerListenerOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass CreateLoadBalancerPolicyInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         policy_name: "PolicyName", # required
      #         policy_type_name: "PolicyTypeName", # required
      #         policy_attributes: [
      #           {
      #             attribute_name: "AttributeName",
      #             attribute_value: "AttributeValue",
      #           },
      #         ],
      #       }
      class CreateLoadBalancerPolicyInput < Aws::Structure.new(
        :load_balancer_name,
        :policy_name,
        :policy_type_name,
        :policy_attributes)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the load balancer policy to be created. This name must
        #   be unique within the set of policies for this load balancer.
        #   @return [String]

        # @!attribute [rw] policy_type_name
        #   The name of the base policy type. To get the list of policy types,
        #   use DescribeLoadBalancerPolicyTypes.
        #   @return [String]

        # @!attribute [rw] policy_attributes
        #   The attributes for the policy.
        #   @return [Array<Types::PolicyAttribute>]

      end

      class CreateLoadBalancerPolicyOutput < Aws::EmptyStructure; end

      # Information about the `CrossZoneLoadBalancing` attribute.
      # @note When making an API call, pass CrossZoneLoadBalancing
      #   data as a hash:
      #
      #       {
      #         enabled: false, # required
      #       }
      class CrossZoneLoadBalancing < Aws::Structure.new(
        :enabled)

        # @!attribute [rw] enabled
        #   Specifies whether cross-zone load balancing is enabled for the load
        #   balancer.
        #   @return [Boolean]

      end

      # @note When making an API call, pass DeleteAccessPointInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #       }
      class DeleteAccessPointInput < Aws::Structure.new(
        :load_balancer_name)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

      end

      class DeleteAccessPointOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass DeleteLoadBalancerListenerInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         load_balancer_ports: [1], # required
      #       }
      class DeleteLoadBalancerListenerInput < Aws::Structure.new(
        :load_balancer_name,
        :load_balancer_ports)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] load_balancer_ports
        #   The client port numbers of the listeners.
        #   @return [Array<Integer>]

      end

      class DeleteLoadBalancerListenerOutput < Aws::EmptyStructure; end

      # =
      # @note When making an API call, pass DeleteLoadBalancerPolicyInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         policy_name: "PolicyName", # required
      #       }
      class DeleteLoadBalancerPolicyInput < Aws::Structure.new(
        :load_balancer_name,
        :policy_name)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

      end

      class DeleteLoadBalancerPolicyOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass DeregisterEndPointsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         instances: [ # required
      #           {
      #             instance_id: "InstanceId",
      #           },
      #         ],
      #       }
      class DeregisterEndPointsInput < Aws::Structure.new(
        :load_balancer_name,
        :instances)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] instances
        #   The IDs of the instances.
        #   @return [Array<Types::Instance>]

      end

      class DeregisterEndPointsOutput < Aws::Structure.new(
        :instances)

        # @!attribute [rw] instances
        #   The remaining instances registered with the load balancer.
        #   @return [Array<Types::Instance>]

      end

      # @note When making an API call, pass DescribeAccessPointsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_names: ["AccessPointName"],
      #         marker: "Marker",
      #         page_size: 1,
      #       }
      class DescribeAccessPointsInput < Aws::Structure.new(
        :load_balancer_names,
        :marker,
        :page_size)

        # @!attribute [rw] load_balancer_names
        #   The names of the load balancers.
        #   @return [Array<String>]

        # @!attribute [rw] marker
        #   The marker for the next set of results. (You received this marker
        #   from a previous call.)
        #   @return [String]

        # @!attribute [rw] page_size
        #   The maximum number of results to return with this call (a number
        #   from 1 to 400). The default is 400.
        #   @return [Integer]

      end

      class DescribeAccessPointsOutput < Aws::Structure.new(
        :load_balancer_descriptions,
        :next_marker)

        # @!attribute [rw] load_balancer_descriptions
        #   Information about the load balancers.
        #   @return [Array<Types::LoadBalancerDescription>]

        # @!attribute [rw] next_marker
        #   The marker to use when requesting the next set of results. If there
        #   are no additional results, the string is empty.
        #   @return [String]

      end

      # @note When making an API call, pass DescribeEndPointStateInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         instances: [
      #           {
      #             instance_id: "InstanceId",
      #           },
      #         ],
      #       }
      class DescribeEndPointStateInput < Aws::Structure.new(
        :load_balancer_name,
        :instances)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] instances
        #   The IDs of the instances.
        #   @return [Array<Types::Instance>]

      end

      class DescribeEndPointStateOutput < Aws::Structure.new(
        :instance_states)

        # @!attribute [rw] instance_states
        #   Information about the health of the instances.
        #   @return [Array<Types::InstanceState>]

      end

      # @note When making an API call, pass DescribeLoadBalancerAttributesInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #       }
      class DescribeLoadBalancerAttributesInput < Aws::Structure.new(
        :load_balancer_name)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

      end

      class DescribeLoadBalancerAttributesOutput < Aws::Structure.new(
        :load_balancer_attributes)

        # @!attribute [rw] load_balancer_attributes
        #   Information about the load balancer attributes.
        #   @return [Types::LoadBalancerAttributes]

      end

      # @note When making an API call, pass DescribeLoadBalancerPoliciesInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName",
      #         policy_names: ["PolicyName"],
      #       }
      class DescribeLoadBalancerPoliciesInput < Aws::Structure.new(
        :load_balancer_name,
        :policy_names)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] policy_names
        #   The names of the policies.
        #   @return [Array<String>]

      end

      class DescribeLoadBalancerPoliciesOutput < Aws::Structure.new(
        :policy_descriptions)

        # @!attribute [rw] policy_descriptions
        #   Information about the policies.
        #   @return [Array<Types::PolicyDescription>]

      end

      # @note When making an API call, pass DescribeLoadBalancerPolicyTypesInput
      #   data as a hash:
      #
      #       {
      #         policy_type_names: ["PolicyTypeName"],
      #       }
      class DescribeLoadBalancerPolicyTypesInput < Aws::Structure.new(
        :policy_type_names)

        # @!attribute [rw] policy_type_names
        #   The names of the policy types. If no names are specified, describes
        #   all policy types defined by Elastic Load Balancing.
        #   @return [Array<String>]

      end

      class DescribeLoadBalancerPolicyTypesOutput < Aws::Structure.new(
        :policy_type_descriptions)

        # @!attribute [rw] policy_type_descriptions
        #   Information about the policy types.
        #   @return [Array<Types::PolicyTypeDescription>]

      end

      # @note When making an API call, pass DescribeTagsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_names: ["AccessPointName"], # required
      #       }
      class DescribeTagsInput < Aws::Structure.new(
        :load_balancer_names)

        # @!attribute [rw] load_balancer_names
        #   The names of the load balancers.
        #   @return [Array<String>]

      end

      class DescribeTagsOutput < Aws::Structure.new(
        :tag_descriptions)

        # @!attribute [rw] tag_descriptions
        #   Information about the tags.
        #   @return [Array<Types::TagDescription>]

      end

      # @note When making an API call, pass DetachLoadBalancerFromSubnetsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         subnets: ["SubnetId"], # required
      #       }
      class DetachLoadBalancerFromSubnetsInput < Aws::Structure.new(
        :load_balancer_name,
        :subnets)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] subnets
        #   The IDs of the subnets.
        #   @return [Array<String>]

      end

      class DetachLoadBalancerFromSubnetsOutput < Aws::Structure.new(
        :subnets)

        # @!attribute [rw] subnets
        #   The IDs of the remaining subnets for the load balancer.
        #   @return [Array<String>]

      end

      # Information about a health check.
      # @note When making an API call, pass HealthCheck
      #   data as a hash:
      #
      #       {
      #         target: "HealthCheckTarget", # required
      #         interval: 1, # required
      #         timeout: 1, # required
      #         unhealthy_threshold: 1, # required
      #         healthy_threshold: 1, # required
      #       }
      class HealthCheck < Aws::Structure.new(
        :target,
        :interval,
        :timeout,
        :unhealthy_threshold,
        :healthy_threshold)

        # @!attribute [rw] target
        #   The instance being checked. The protocol is either TCP, HTTP, HTTPS,
        #   or SSL. The range of valid ports is one (1) through 65535.
        #
        #   TCP is the default, specified as a TCP: port pair, for example
        #   \"TCP:5000\". In this case, a health check simply attempts to open a
        #   TCP connection to the instance on the specified port. Failure to
        #   connect within the configured timeout is considered unhealthy.
        #
        #   SSL is also specified as SSL: port pair, for example, SSL:5000.
        #
        #   For HTTP/HTTPS, you must include a ping path in the string. HTTP is
        #   specified as a HTTP:port;/;PathToPing; grouping, for example
        #   \"HTTP:80/weather/us/wa/seattle\". In this case, a HTTP GET request
        #   is issued to the instance on the given port and path. Any answer
        #   other than \"200 OK\" within the timeout period is considered
        #   unhealthy.
        #
        #   The total length of the HTTP ping target must be 1024 16-bit Unicode
        #   characters or less.
        #   @return [String]

        # @!attribute [rw] interval
        #   The approximate interval, in seconds, between health checks of an
        #   individual instance.
        #   @return [Integer]

        # @!attribute [rw] timeout
        #   The amount of time, in seconds, during which no response means a
        #   failed health check.
        #
        #   This value must be less than the `Interval` value.
        #   @return [Integer]

        # @!attribute [rw] unhealthy_threshold
        #   The number of consecutive health check failures required before
        #   moving the instance to the `Unhealthy` state.
        #   @return [Integer]

        # @!attribute [rw] healthy_threshold
        #   The number of consecutive health checks successes required before
        #   moving the instance to the `Healthy` state.
        #   @return [Integer]

      end

      # The ID of a back-end instance.
      # @note When making an API call, pass Instance
      #   data as a hash:
      #
      #       {
      #         instance_id: "InstanceId",
      #       }
      class Instance < Aws::Structure.new(
        :instance_id)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

      end

      # Information about the state of a back-end instance.
      class InstanceState < Aws::Structure.new(
        :instance_id,
        :state,
        :reason_code,
        :description)

        # @!attribute [rw] instance_id
        #   The ID of the instance.
        #   @return [String]

        # @!attribute [rw] state
        #   The current state of the instance.
        #
        #   Valid values: `InService` \| `OutOfService` \| `Unknown`
        #   @return [String]

        # @!attribute [rw] reason_code
        #   Information about the cause of `OutOfService` instances.
        #   Specifically, whether the cause is Elastic Load Balancing or the
        #   instance.
        #
        #   Valid values: `ELB` \| `Instance` \| `N/A`
        #   @return [String]

        # @!attribute [rw] description
        #   A description of the instance state. This string can contain one or
        #   more of the following messages.
        #
        #   * `N/A`
        #
        #   * `A transient error occurred. Please try again later.`
        #
        #   * `Instance has failed at least the UnhealthyThreshold number of
        #     health checks consecutively.`
        #
        #   * `Instance has not passed the configured HealthyThreshold number of
        #     health checks consecutively.`
        #
        #   * `Instance registration is still in progress.`
        #
        #   * `Instance is in the EC2 Availability Zone for which LoadBalancer
        #     is not configured to route traffic to.`
        #
        #   * `Instance is not currently registered with the LoadBalancer.`
        #
        #   * `Instance deregistration currently in progress.`
        #
        #   * `Disable Availability Zone is currently in progress.`
        #
        #   * `Instance is in pending state.`
        #
        #   * `Instance is in stopped state.`
        #
        #   * `Instance is in terminated state.`
        #   @return [String]

      end

      # Information about a policy for duration-based session stickiness.
      class LBCookieStickinessPolicy < Aws::Structure.new(
        :policy_name,
        :cookie_expiration_period)

        # @!attribute [rw] policy_name
        #   The name for the policy being created. The name must be unique
        #   within the set of policies for this load balancer.
        #   @return [String]

        # @!attribute [rw] cookie_expiration_period
        #   The time period, in seconds, after which the cookie should be
        #   considered stale. If this parameter is not specified, the stickiness
        #   session lasts for the duration of the browser session.
        #   @return [Integer]

      end

      # Information about a listener.
      #
      # For information about the protocols and the ports supported by Elastic
      # Load Balancing, see [Listener Configurations for Elastic Load
      # Balancing][1] in the *Elastic Load Balancing Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html
      # @note When making an API call, pass Listener
      #   data as a hash:
      #
      #       {
      #         protocol: "Protocol", # required
      #         load_balancer_port: 1, # required
      #         instance_protocol: "Protocol",
      #         instance_port: 1, # required
      #         ssl_certificate_id: "SSLCertificateId",
      #       }
      class Listener < Aws::Structure.new(
        :protocol,
        :load_balancer_port,
        :instance_protocol,
        :instance_port,
        :ssl_certificate_id)

        # @!attribute [rw] protocol
        #   The load balancer transport protocol to use for routing: HTTP,
        #   HTTPS, TCP, or SSL.
        #   @return [String]

        # @!attribute [rw] load_balancer_port
        #   The port on which the load balancer is listening. On EC2-VPC, you
        #   can specify any port from the range 1-65535. On EC2-Classic, you can
        #   specify any port from the following list: 25, 80, 443, 465, 587,
        #   1024-65535.
        #   @return [Integer]

        # @!attribute [rw] instance_protocol
        #   The protocol to use for routing traffic to back-end instances: HTTP,
        #   HTTPS, TCP, or SSL.
        #
        #   If the front-end protocol is HTTP, HTTPS, TCP, or SSL,
        #   `InstanceProtocol` must be at the same protocol.
        #
        #   If there is another listener with the same `InstancePort` whose
        #   `InstanceProtocol` is secure, (HTTPS or SSL), the listener\'s
        #   `InstanceProtocol` must also be secure.
        #
        #   If there is another listener with the same `InstancePort` whose
        #   `InstanceProtocol` is HTTP or TCP, the listener\'s
        #   `InstanceProtocol` must be HTTP or TCP.
        #   @return [String]

        # @!attribute [rw] instance_port
        #   The port on which the instance is listening.
        #   @return [Integer]

        # @!attribute [rw] ssl_certificate_id
        #   The Amazon Resource Name (ARN) of the server certificate.
        #   @return [String]

      end

      # The policies enabled for a listener.
      class ListenerDescription < Aws::Structure.new(
        :listener,
        :policy_names)

        # @!attribute [rw] listener
        #   Information about a listener.
        #
        #   For information about the protocols and the ports supported by
        #   Elastic Load Balancing, see [Listener Configurations for Elastic
        #   Load Balancing][1] in the *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/elb-listener-config.html
        #   @return [Types::Listener]

        # @!attribute [rw] policy_names
        #   The policies. If there are no policies enabled, the list is empty.
        #   @return [Array<String>]

      end

      # The attributes for a load balancer.
      # @note When making an API call, pass LoadBalancerAttributes
      #   data as a hash:
      #
      #       {
      #         cross_zone_load_balancing: {
      #           enabled: false, # required
      #         },
      #         access_log: {
      #           enabled: false, # required
      #           s3_bucket_name: "S3BucketName",
      #           emit_interval: 1,
      #           s3_bucket_prefix: "AccessLogPrefix",
      #         },
      #         connection_draining: {
      #           enabled: false, # required
      #           timeout: 1,
      #         },
      #         connection_settings: {
      #           idle_timeout: 1, # required
      #         },
      #         additional_attributes: [
      #           {
      #             key: "StringVal",
      #             value: "StringVal",
      #           },
      #         ],
      #       }
      class LoadBalancerAttributes < Aws::Structure.new(
        :cross_zone_load_balancing,
        :access_log,
        :connection_draining,
        :connection_settings,
        :additional_attributes)

        # @!attribute [rw] cross_zone_load_balancing
        #   If enabled, the load balancer routes the request traffic evenly
        #   across all back-end instances regardless of the Availability Zones.
        #
        #   For more information, see [Enable Cross-Zone Load Balancing][1] in
        #   the *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/enable-disable-crosszone-lb.html
        #   @return [Types::CrossZoneLoadBalancing]

        # @!attribute [rw] access_log
        #   If enabled, the load balancer captures detailed information of all
        #   requests and delivers the information to the Amazon S3 bucket that
        #   you specify.
        #
        #   For more information, see [Enable Access Logs][1] in the *Elastic
        #   Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/enable-access-logs.html
        #   @return [Types::AccessLog]

        # @!attribute [rw] connection_draining
        #   If enabled, the load balancer allows existing requests to complete
        #   before the load balancer shifts traffic away from a deregistered or
        #   unhealthy back-end instance.
        #
        #   For more information, see [Enable Connection Draining][1] in the
        #   *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/config-conn-drain.html
        #   @return [Types::ConnectionDraining]

        # @!attribute [rw] connection_settings
        #   If enabled, the load balancer allows the connections to remain idle
        #   (no data is sent over the connection) for the specified duration.
        #
        #   By default, Elastic Load Balancing maintains a 60-second idle
        #   connection timeout for both front-end and back-end connections of
        #   your load balancer. For more information, see [Configure Idle
        #   Connection Timeout][1] in the *Elastic Load Balancing Developer
        #   Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/config-idle-timeout.html
        #   @return [Types::ConnectionSettings]

        # @!attribute [rw] additional_attributes
        #   This parameter is reserved.
        #   @return [Array<Types::AdditionalAttribute>]

      end

      # Information about a load balancer.
      class LoadBalancerDescription < Aws::Structure.new(
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
        :scheme)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] dns_name
        #   The external DNS name of the load balancer.
        #   @return [String]

        # @!attribute [rw] canonical_hosted_zone_name
        #   The Amazon Route 53 hosted zone associated with the load balancer.
        #
        #   For more information, see [Using Domain Names With Elastic Load
        #   Balancing][1] in the *Elastic Load Balancing Developer Guide*.
        #
        #
        #
        #   [1]: http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/using-domain-names-with-elb.html
        #   @return [String]

        # @!attribute [rw] canonical_hosted_zone_name_id
        #   The ID of the Amazon Route 53 hosted zone name associated with the
        #   load balancer.
        #   @return [String]

        # @!attribute [rw] listener_descriptions
        #   The listeners for the load balancer.
        #   @return [Array<Types::ListenerDescription>]

        # @!attribute [rw] policies
        #   The policies defined for the load balancer.
        #   @return [Types::Policies]

        # @!attribute [rw] backend_server_descriptions
        #   Information about the back-end servers.
        #   @return [Array<Types::BackendServerDescription>]

        # @!attribute [rw] availability_zones
        #   The Availability Zones for the load balancer.
        #   @return [Array<String>]

        # @!attribute [rw] subnets
        #   The IDs of the subnets for the load balancer.
        #   @return [Array<String>]

        # @!attribute [rw] vpc_id
        #   The ID of the VPC for the load balancer.
        #   @return [String]

        # @!attribute [rw] instances
        #   The IDs of the instances for the load balancer.
        #   @return [Array<Types::Instance>]

        # @!attribute [rw] health_check
        #   Information about the health checks conducted on the load balancer.
        #   @return [Types::HealthCheck]

        # @!attribute [rw] source_security_group
        #   The security group that you can use as part of your inbound rules
        #   for your load balancer\'s back-end application instances. To only
        #   allow traffic from load balancers, add a security group rule to your
        #   back end instance that specifies this source security group as the
        #   inbound source.
        #   @return [Types::SourceSecurityGroup]

        # @!attribute [rw] security_groups
        #   The security groups for the load balancer. Valid only for load
        #   balancers in a VPC.
        #   @return [Array<String>]

        # @!attribute [rw] created_time
        #   The date and time the load balancer was created.
        #   @return [Time]

        # @!attribute [rw] scheme
        #   The type of load balancer. Valid only for load balancers in a VPC.
        #
        #   If `Scheme` is `internet-facing`, the load balancer has a public DNS
        #   name that resolves to a public IP address.
        #
        #   If `Scheme` is `internal`, the load balancer has a public DNS name
        #   that resolves to a private IP address.
        #   @return [String]

      end

      # @note When making an API call, pass ModifyLoadBalancerAttributesInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         load_balancer_attributes: { # required
      #           cross_zone_load_balancing: {
      #             enabled: false, # required
      #           },
      #           access_log: {
      #             enabled: false, # required
      #             s3_bucket_name: "S3BucketName",
      #             emit_interval: 1,
      #             s3_bucket_prefix: "AccessLogPrefix",
      #           },
      #           connection_draining: {
      #             enabled: false, # required
      #             timeout: 1,
      #           },
      #           connection_settings: {
      #             idle_timeout: 1, # required
      #           },
      #           additional_attributes: [
      #             {
      #               key: "StringVal",
      #               value: "StringVal",
      #             },
      #           ],
      #         },
      #       }
      class ModifyLoadBalancerAttributesInput < Aws::Structure.new(
        :load_balancer_name,
        :load_balancer_attributes)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] load_balancer_attributes
        #   The attributes of the load balancer.
        #   @return [Types::LoadBalancerAttributes]

      end

      class ModifyLoadBalancerAttributesOutput < Aws::Structure.new(
        :load_balancer_name,
        :load_balancer_attributes)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] load_balancer_attributes
        #   The attributes for a load balancer.
        #   @return [Types::LoadBalancerAttributes]

      end

      # The policies for a load balancer.
      class Policies < Aws::Structure.new(
        :app_cookie_stickiness_policies,
        :lb_cookie_stickiness_policies,
        :other_policies)

        # @!attribute [rw] app_cookie_stickiness_policies
        #   The stickiness policies created using
        #   CreateAppCookieStickinessPolicy.
        #   @return [Array<Types::AppCookieStickinessPolicy>]

        # @!attribute [rw] lb_cookie_stickiness_policies
        #   The stickiness policies created using
        #   CreateLBCookieStickinessPolicy.
        #   @return [Array<Types::LBCookieStickinessPolicy>]

        # @!attribute [rw] other_policies
        #   The policies other than the stickiness policies.
        #   @return [Array<String>]

      end

      # Information about a policy attribute.
      # @note When making an API call, pass PolicyAttribute
      #   data as a hash:
      #
      #       {
      #         attribute_name: "AttributeName",
      #         attribute_value: "AttributeValue",
      #       }
      class PolicyAttribute < Aws::Structure.new(
        :attribute_name,
        :attribute_value)

        # @!attribute [rw] attribute_name
        #   The name of the attribute.
        #   @return [String]

        # @!attribute [rw] attribute_value
        #   The value of the attribute.
        #   @return [String]

      end

      # Information about a policy attribute.
      class PolicyAttributeDescription < Aws::Structure.new(
        :attribute_name,
        :attribute_value)

        # @!attribute [rw] attribute_name
        #   The name of the attribute.
        #   @return [String]

        # @!attribute [rw] attribute_value
        #   The value of the attribute.
        #   @return [String]

      end

      # Information about a policy attribute type.
      class PolicyAttributeTypeDescription < Aws::Structure.new(
        :attribute_name,
        :attribute_type,
        :description,
        :default_value,
        :cardinality)

        # @!attribute [rw] attribute_name
        #   The name of the attribute.
        #   @return [String]

        # @!attribute [rw] attribute_type
        #   The type of the attribute. For example, `Boolean` or `Integer`.
        #   @return [String]

        # @!attribute [rw] description
        #   A description of the attribute.
        #   @return [String]

        # @!attribute [rw] default_value
        #   The default value of the attribute, if applicable.
        #   @return [String]

        # @!attribute [rw] cardinality
        #   The cardinality of the attribute.
        #
        #   Valid values:
        #
        #   * ONE(1) : Single value required
        #   * ZERO\_OR\_ONE(0..1) : Up to one value can be supplied
        #   * ZERO\_OR\_MORE(0..\*) : Optional. Multiple values are allowed
        #   * ONE\_OR\_MORE(1..\*0) : Required. Multiple values are allowed
        #   @return [String]

      end

      # Information about a policy.
      class PolicyDescription < Aws::Structure.new(
        :policy_name,
        :policy_type_name,
        :policy_attribute_descriptions)

        # @!attribute [rw] policy_name
        #   The name of the policy.
        #   @return [String]

        # @!attribute [rw] policy_type_name
        #   The name of the policy type.
        #   @return [String]

        # @!attribute [rw] policy_attribute_descriptions
        #   The policy attributes.
        #   @return [Array<Types::PolicyAttributeDescription>]

      end

      # Information about a policy type.
      class PolicyTypeDescription < Aws::Structure.new(
        :policy_type_name,
        :description,
        :policy_attribute_type_descriptions)

        # @!attribute [rw] policy_type_name
        #   The name of the policy type.
        #   @return [String]

        # @!attribute [rw] description
        #   A description of the policy type.
        #   @return [String]

        # @!attribute [rw] policy_attribute_type_descriptions
        #   The description of the policy attributes associated with the
        #   policies defined by Elastic Load Balancing.
        #   @return [Array<Types::PolicyAttributeTypeDescription>]

      end

      # @note When making an API call, pass RegisterEndPointsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         instances: [ # required
      #           {
      #             instance_id: "InstanceId",
      #           },
      #         ],
      #       }
      class RegisterEndPointsInput < Aws::Structure.new(
        :load_balancer_name,
        :instances)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] instances
        #   The IDs of the instances.
        #   @return [Array<Types::Instance>]

      end

      class RegisterEndPointsOutput < Aws::Structure.new(
        :instances)

        # @!attribute [rw] instances
        #   The updated list of instances for the load balancer.
        #   @return [Array<Types::Instance>]

      end

      # @note When making an API call, pass RemoveAvailabilityZonesInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         availability_zones: ["AvailabilityZone"], # required
      #       }
      class RemoveAvailabilityZonesInput < Aws::Structure.new(
        :load_balancer_name,
        :availability_zones)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] availability_zones
        #   The Availability Zones.
        #   @return [Array<String>]

      end

      class RemoveAvailabilityZonesOutput < Aws::Structure.new(
        :availability_zones)

        # @!attribute [rw] availability_zones
        #   The remaining Availability Zones for the load balancer.
        #   @return [Array<String>]

      end

      # @note When making an API call, pass RemoveTagsInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_names: ["AccessPointName"], # required
      #         tags: [ # required
      #           {
      #             key: "TagKey",
      #           },
      #         ],
      #       }
      class RemoveTagsInput < Aws::Structure.new(
        :load_balancer_names,
        :tags)

        # @!attribute [rw] load_balancer_names
        #   The name of the load balancer. You can specify a maximum of one load
        #   balancer name.
        #   @return [Array<String>]

        # @!attribute [rw] tags
        #   The list of tag keys to remove.
        #   @return [Array<Types::TagKeyOnly>]

      end

      class RemoveTagsOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass SetLoadBalancerListenerSSLCertificateInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         load_balancer_port: 1, # required
      #         ssl_certificate_id: "SSLCertificateId", # required
      #       }
      class SetLoadBalancerListenerSSLCertificateInput < Aws::Structure.new(
        :load_balancer_name,
        :load_balancer_port,
        :ssl_certificate_id)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] load_balancer_port
        #   The port that uses the specified SSL certificate.
        #   @return [Integer]

        # @!attribute [rw] ssl_certificate_id
        #   The Amazon Resource Name (ARN) of the SSL certificate.
        #   @return [String]

      end

      class SetLoadBalancerListenerSSLCertificateOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass SetLoadBalancerPoliciesForBackendServerInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         instance_port: 1, # required
      #         policy_names: ["PolicyName"], # required
      #       }
      class SetLoadBalancerPoliciesForBackendServerInput < Aws::Structure.new(
        :load_balancer_name,
        :instance_port,
        :policy_names)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] instance_port
        #   The port number associated with the back-end server.
        #   @return [Integer]

        # @!attribute [rw] policy_names
        #   The names of the policies. If the list is empty, then all current
        #   polices are removed from the back-end server.
        #   @return [Array<String>]

      end

      class SetLoadBalancerPoliciesForBackendServerOutput < Aws::EmptyStructure; end

      # @note When making an API call, pass SetLoadBalancerPoliciesOfListenerInput
      #   data as a hash:
      #
      #       {
      #         load_balancer_name: "AccessPointName", # required
      #         load_balancer_port: 1, # required
      #         policy_names: ["PolicyName"], # required
      #       }
      class SetLoadBalancerPoliciesOfListenerInput < Aws::Structure.new(
        :load_balancer_name,
        :load_balancer_port,
        :policy_names)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] load_balancer_port
        #   The external port of the load balancer for the policy.
        #   @return [Integer]

        # @!attribute [rw] policy_names
        #   The names of the policies. If the list is empty, the current policy
        #   is removed from the listener.
        #   @return [Array<String>]

      end

      class SetLoadBalancerPoliciesOfListenerOutput < Aws::EmptyStructure; end

      # Information about a source security group.
      class SourceSecurityGroup < Aws::Structure.new(
        :owner_alias,
        :group_name)

        # @!attribute [rw] owner_alias
        #   The owner of the security group.
        #   @return [String]

        # @!attribute [rw] group_name
        #   The name of the security group.
        #   @return [String]

      end

      # Information about a tag.
      # @note When making an API call, pass Tag
      #   data as a hash:
      #
      #       {
      #         key: "TagKey", # required
      #         value: "TagValue",
      #       }
      class Tag < Aws::Structure.new(
        :key,
        :value)

        # @!attribute [rw] key
        #   The key of the tag.
        #   @return [String]

        # @!attribute [rw] value
        #   The value of the tag.
        #   @return [String]

      end

      # The tags associated with a load balancer.
      class TagDescription < Aws::Structure.new(
        :load_balancer_name,
        :tags)

        # @!attribute [rw] load_balancer_name
        #   The name of the load balancer.
        #   @return [String]

        # @!attribute [rw] tags
        #   The tags.
        #   @return [Array<Types::Tag>]

      end

      # The key of a tag.
      # @note When making an API call, pass TagKeyOnly
      #   data as a hash:
      #
      #       {
      #         key: "TagKey",
      #       }
      class TagKeyOnly < Aws::Structure.new(
        :key)

        # @!attribute [rw] key
        #   The name of the key.
        #   @return [String]

      end

    end
  end
end
