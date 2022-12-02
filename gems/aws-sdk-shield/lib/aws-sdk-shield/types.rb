# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Shield
  module Types

    # Exception that indicates the specified `AttackId` does not exist, or
    # the requester does not have the appropriate permissions to access the
    # `AttackId`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # In order to grant the necessary access to the Shield Response Team
    # (SRT) the user submitting the request must have the `iam:PassRole`
    # permission. This error indicates the user did not have the appropriate
    # permissions. For more information, see [Granting a User Permissions to
    # Pass a Role to an Amazon Web Services Service][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AccessDeniedForDependencyException AWS API Documentation
    #
    class AccessDeniedForDependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The automatic application layer DDoS mitigation settings for a
    # Protection. This configuration determines whether Shield Advanced
    # automatically manages rules in the web ACL in order to respond to
    # application layer events that Shield Advanced determines to be DDoS
    # attacks.
    #
    # @!attribute [rw] status
    #   Indicates whether automatic application layer DDoS mitigation is
    #   enabled for the protection.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action setting that Shield Advanced should use in the
    #   WAF rules that it creates on behalf of the protected resource in
    #   response to DDoS attacks. You specify this as part of the
    #   configuration for the automatic application layer DDoS mitigation
    #   feature, when you enable or update automatic mitigation. Shield
    #   Advanced creates the WAF rules in a Shield Advanced-managed rule
    #   group, inside the web ACL that you have associated with the
    #   resource.
    #   @return [Types::ResponseAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ApplicationLayerAutomaticResponseConfiguration AWS API Documentation
    #
    class ApplicationLayerAutomaticResponseConfiguration < Struct.new(
      :status,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] log_bucket
    #   The Amazon S3 bucket that contains the logs that you want to share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucketRequest AWS API Documentation
    #
    class AssociateDRTLogBucketRequest < Struct.new(
      :log_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucketResponse AWS API Documentation
    #
    class AssociateDRTLogBucketResponse < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role the SRT will use to
    #   access your Amazon Web Services account.
    #
    #   Prior to making the `AssociateDRTRole` request, you must attach the
    #   [AWSShieldDRTAccessPolicy][1] managed policy to this role. For more
    #   information see [Attaching and Detaching IAM Policies](
    #   https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_manage-attach-detach.html).
    #
    #
    #
    #   [1]: https://console.aws.amazon.com/iam/home?#/policies/arn:aws:iam::aws:policy/service-role/AWSShieldDRTAccessPolicy
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRoleRequest AWS API Documentation
    #
    class AssociateDRTRoleRequest < Struct.new(
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRoleResponse AWS API Documentation
    #
    class AssociateDRTRoleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to add the
    #   health check association to.
    #   @return [String]
    #
    # @!attribute [rw] health_check_arn
    #   The Amazon Resource Name (ARN) of the health check to associate with
    #   the protection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateHealthCheckRequest AWS API Documentation
    #
    class AssociateHealthCheckRequest < Struct.new(
      :protection_id,
      :health_check_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateHealthCheckResponse AWS API Documentation
    #
    class AssociateHealthCheckResponse < Aws::EmptyStructure; end

    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the Shield Response
    #   Team (SRT) can use to contact you for escalations to the SRT and to
    #   initiate proactive customer support.
    #
    #   To enable proactive engagement, the contact list must include at
    #   least one phone number.
    #
    #   <note markdown="1"> The contacts that you provide here replace any contacts that were
    #   already defined. If you already have contacts defined and want to
    #   use them, retrieve the list using `DescribeEmergencyContactSettings`
    #   and then provide it here.
    #
    #    </note>
    #   @return [Array<Types::EmergencyContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateProactiveEngagementDetailsRequest AWS API Documentation
    #
    class AssociateProactiveEngagementDetailsRequest < Struct.new(
      :emergency_contact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateProactiveEngagementDetailsResponse AWS API Documentation
    #
    class AssociateProactiveEngagementDetailsResponse < Aws::EmptyStructure; end

    # The details of a DDoS attack.
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) of the attack.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource that was attacked.
    #   @return [String]
    #
    # @!attribute [rw] sub_resources
    #   If applicable, additional detail about the resource being attacked,
    #   for example, IP address or URL.
    #   @return [Array<Types::SubResourceSummary>]
    #
    # @!attribute [rw] start_time
    #   The time the attack started, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the attack ended, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] attack_counters
    #   List of counters that describe the attack for the specified time
    #   period.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @!attribute [rw] attack_properties
    #   The array of objects that provide details of the Shield event.
    #
    #   For infrastructure layer events (L3 and L4 events), you can view
    #   metrics for top contributors in Amazon CloudWatch metrics. For more
    #   information, see [Shield metrics and alarms][1] in the *WAF
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms
    #   @return [Array<Types::AttackProperty>]
    #
    # @!attribute [rw] mitigations
    #   List of mitigation actions taken for the attack.
    #   @return [Array<Types::Mitigation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackDetail AWS API Documentation
    #
    class AttackDetail < Struct.new(
      :attack_id,
      :resource_arn,
      :sub_resources,
      :start_time,
      :end_time,
      :attack_counters,
      :attack_properties,
      :mitigations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of a Shield event. This is provided as part of an
    # AttackDetail.
    #
    # @!attribute [rw] attack_layer
    #   The type of Shield event that was observed. `NETWORK` indicates
    #   layer 3 and layer 4 events and `APPLICATION` indicates layer 7
    #   events.
    #
    #   For infrastructure layer events (L3 and L4 events), you can view
    #   metrics for top contributors in Amazon CloudWatch metrics. For more
    #   information, see [Shield metrics and alarms][1] in the *WAF
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/waf/latest/developerguide/monitoring-cloudwatch.html#set-ddos-alarms
    #   @return [String]
    #
    # @!attribute [rw] attack_property_identifier
    #   Defines the Shield event property information that is provided. The
    #   `WORDPRESS_PINGBACK_REFLECTOR` and `WORDPRESS_PINGBACK_SOURCE`
    #   values are valid only for WordPress reflective pingback events.
    #   @return [String]
    #
    # @!attribute [rw] top_contributors
    #   Contributor objects for the top five contributors to a Shield event.
    #   A contributor is a source of traffic that Shield Advanced identifies
    #   as responsible for some or all of an event.
    #   @return [Array<Types::Contributor>]
    #
    # @!attribute [rw] unit
    #   The unit used for the `Contributor` `Value` property.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   The total contributions made to this Shield event by all
    #   contributors.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackProperty AWS API Documentation
    #
    class AttackProperty < Struct.new(
      :attack_layer,
      :attack_property_identifier,
      :top_contributors,
      :unit,
      :total)
      SENSITIVE = []
      include Aws::Structure
    end

    # A single attack statistics data record. This is returned by
    # DescribeAttackStatistics along with a time range indicating the time
    # period that the attack statistics apply to.
    #
    # @!attribute [rw] attack_volume
    #   Information about the volume of attacks during the time period. If
    #   the accompanying `AttackCount` is zero, this setting might be empty.
    #   @return [Types::AttackVolume]
    #
    # @!attribute [rw] attack_count
    #   The number of attacks detected during the time period. This is
    #   always present, but might be zero.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackStatisticsDataItem AWS API Documentation
    #
    class AttackStatisticsDataItem < Struct.new(
      :attack_volume,
      :attack_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes all DDoS attacks for a specified time period.
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) of the attack.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource that was attacked.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start time of the attack, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the attack, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] attack_vectors
    #   The list of attacks for a specified time period.
    #   @return [Array<Types::AttackVectorDescription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackSummary AWS API Documentation
    #
    class AttackSummary < Struct.new(
      :attack_id,
      :resource_arn,
      :start_time,
      :end_time,
      :attack_vectors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the attack.
    #
    # @!attribute [rw] vector_type
    #   The attack type. Valid values:
    #
    #   * UDP\_TRAFFIC
    #
    #   * UDP\_FRAGMENT
    #
    #   * GENERIC\_UDP\_REFLECTION
    #
    #   * DNS\_REFLECTION
    #
    #   * NTP\_REFLECTION
    #
    #   * CHARGEN\_REFLECTION
    #
    #   * SSDP\_REFLECTION
    #
    #   * PORT\_MAPPER
    #
    #   * RIP\_REFLECTION
    #
    #   * SNMP\_REFLECTION
    #
    #   * MSSQL\_REFLECTION
    #
    #   * NET\_BIOS\_REFLECTION
    #
    #   * SYN\_FLOOD
    #
    #   * ACK\_FLOOD
    #
    #   * REQUEST\_FLOOD
    #
    #   * HTTP\_REFLECTION
    #
    #   * UDS\_REFLECTION
    #
    #   * MEMCACHED\_REFLECTION
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackVectorDescription AWS API Documentation
    #
    class AttackVectorDescription < Struct.new(
      :vector_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the volume of attacks during the time period,
    # included in an AttackStatisticsDataItem. If the accompanying
    # `AttackCount` in the statistics object is zero, this setting might be
    # empty.
    #
    # @!attribute [rw] bits_per_second
    #   A statistics object that uses bits per second as the unit. This is
    #   included for network level attacks.
    #   @return [Types::AttackVolumeStatistics]
    #
    # @!attribute [rw] packets_per_second
    #   A statistics object that uses packets per second as the unit. This
    #   is included for network level attacks.
    #   @return [Types::AttackVolumeStatistics]
    #
    # @!attribute [rw] requests_per_second
    #   A statistics object that uses requests per second as the unit. This
    #   is included for application level attacks, and is only available for
    #   accounts that are subscribed to Shield Advanced.
    #   @return [Types::AttackVolumeStatistics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackVolume AWS API Documentation
    #
    class AttackVolume < Struct.new(
      :bits_per_second,
      :packets_per_second,
      :requests_per_second)
      SENSITIVE = []
      include Aws::Structure
    end

    # Statistics objects for the various data types in AttackVolume.
    #
    # @!attribute [rw] max
    #   The maximum attack volume observed for the given unit.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AttackVolumeStatistics AWS API Documentation
    #
    class AttackVolumeStatistics < Struct.new(
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that Shield Advanced should configure its WAF rules with the
    # WAF `Block` action.
    #
    # This is only used in the context of the `ResponseAction` setting.
    #
    # JSON specification: `"Block": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/BlockAction AWS API Documentation
    #
    class BlockAction < Aws::EmptyStructure; end

    # A contributor to the attack and their contribution.
    #
    # @!attribute [rw] name
    #   The name of the contributor. The type of name that you'll find here
    #   depends on the `AttackPropertyIdentifier` setting in the
    #   `AttackProperty` where this contributor is defined. For example, if
    #   the `AttackPropertyIdentifier` is `SOURCE_COUNTRY`, the `Name` could
    #   be `United States`.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The contribution of this contributor expressed in Protection units.
    #   For example `10,000`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Contributor AWS API Documentation
    #
    class Contributor < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies that Shield Advanced should configure its WAF rules with the
    # WAF `Count` action.
    #
    # This is only used in the context of the `ResponseAction` setting.
    #
    # JSON specification: `"Count": \{\}`
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CountAction AWS API Documentation
    #
    class CountAction < Aws::EmptyStructure; end

    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @!attribute [rw] aggregation
    #   Defines how Shield combines resource data for the group in order to
    #   detect, mitigate, and report events.
    #
    #   * Sum - Use the total traffic across the group. This is a good
    #     choice for most cases. Examples include Elastic IP addresses for
    #     EC2 instances that scale manually or automatically.
    #
    #   * Mean - Use the average of the traffic across the group. This is a
    #     good choice for resources that share traffic uniformly. Examples
    #     include accelerators and load balancers.
    #
    #   * Max - Use the highest traffic from each resource. This is useful
    #     for resources that don't share traffic and for resources that
    #     share that traffic in a non-uniform way. Examples include Amazon
    #     CloudFront and origin resources for CloudFront distributions.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The criteria to use to choose the protected resources for inclusion
    #   in the group. You can include all resources that have protections,
    #   provide a list of resource Amazon Resource Names (ARNs), or include
    #   all resources of a specified resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to include in the protection group. All protected
    #   resources of this type are included in the protection group. Newly
    #   protected resources of this type are automatically added to the
    #   group. You must set this when you set `Pattern` to
    #   `BY_RESOURCE_TYPE` and you must not set it for any other `Pattern`
    #   setting.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The Amazon Resource Names (ARNs) of the resources to include in the
    #   protection group. You must set this when you set `Pattern` to
    #   `ARBITRARY` and you must not set it for any other `Pattern` setting.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   One or more tag key-value pairs for the protection group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionGroupRequest AWS API Documentation
    #
    class CreateProtectionGroupRequest < Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionGroupResponse AWS API Documentation
    #
    class CreateProtectionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] name
    #   Friendly name for the `Protection` you are creating.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource to be protected.
    #
    #   The ARN should be in one of the following formats:
    #
    #   * For an Application Load Balancer:
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/app/load-balancer-name/load-balancer-id
    #     `
    #
    #   * For an Elastic Load Balancer (Classic Load Balancer):
    #     `arn:aws:elasticloadbalancing:region:account-id:loadbalancer/load-balancer-name
    #     `
    #
    #   * For an Amazon CloudFront distribution:
    #     `arn:aws:cloudfront::account-id:distribution/distribution-id `
    #
    #   * For an Global Accelerator standard accelerator:
    #     `arn:aws:globalaccelerator::account-id:accelerator/accelerator-id
    #     `
    #
    #   * For Amazon Route 53: `arn:aws:route53:::hostedzone/hosted-zone-id
    #     `
    #
    #   * For an Elastic IP address:
    #     `arn:aws:ec2:region:account-id:eip-allocation/allocation-id `
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tag key-value pairs for the Protection object that is
    #   created.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionRequest AWS API Documentation
    #
    class CreateProtectionRequest < Struct.new(
      :name,
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object that is
    #   created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionResponse AWS API Documentation
    #
    class CreateProtectionResponse < Struct.new(
      :protection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscriptionRequest AWS API Documentation
    #
    class CreateSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateSubscriptionResponse AWS API Documentation
    #
    class CreateSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionGroupRequest AWS API Documentation
    #
    class DeleteProtectionGroupRequest < Struct.new(
      :protection_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionGroupResponse AWS API Documentation
    #
    class DeleteProtectionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionRequest AWS API Documentation
    #
    class DeleteProtectionRequest < Struct.new(
      :protection_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionResponse AWS API Documentation
    #
    class DeleteProtectionResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscriptionRequest AWS API Documentation
    #
    class DeleteSubscriptionRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteSubscriptionResponse AWS API Documentation
    #
    class DeleteSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] attack_id
    #   The unique identifier (ID) for the attack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackRequest AWS API Documentation
    #
    class DescribeAttackRequest < Struct.new(
      :attack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attack
    #   The attack that you requested.
    #   @return [Types::AttackDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackResponse AWS API Documentation
    #
    class DescribeAttackResponse < Struct.new(
      :attack)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackStatisticsRequest AWS API Documentation
    #
    class DescribeAttackStatisticsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] time_range
    #   The time range of the attack.
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] data_items
    #   The data that describes the attacks detected during the time period.
    #   @return [Array<Types::AttackStatisticsDataItem>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackStatisticsResponse AWS API Documentation
    #
    class DescribeAttackStatisticsResponse < Struct.new(
      :time_range,
      :data_items)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccessRequest AWS API Documentation
    #
    class DescribeDRTAccessRequest < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role the SRT used to access
    #   your Amazon Web Services account.
    #   @return [String]
    #
    # @!attribute [rw] log_bucket_list
    #   The list of Amazon S3 buckets accessed by the SRT.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccessResponse AWS API Documentation
    #
    class DescribeDRTAccessResponse < Struct.new(
      :role_arn,
      :log_bucket_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettingsRequest AWS API Documentation
    #
    class DescribeEmergencyContactSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the Shield Response
    #   Team (SRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the SRT and to initiate proactive
    #   customer support.
    #   @return [Array<Types::EmergencyContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettingsResponse AWS API Documentation
    #
    class DescribeEmergencyContactSettingsResponse < Struct.new(
      :emergency_contact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionGroupRequest AWS API Documentation
    #
    class DescribeProtectionGroupRequest < Struct.new(
      :protection_group_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_group
    #   A grouping of protected resources that you and Shield Advanced can
    #   monitor as a collective. This resource grouping improves the
    #   accuracy of detection and reduces false positives.
    #   @return [Types::ProtectionGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionGroupResponse AWS API Documentation
    #
    class DescribeProtectionGroupResponse < Struct.new(
      :protection_group)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to describe.
    #   You must provide either the `ResourceArn` of the protected resource
    #   or the `ProtectionID` of the protection, but not both.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the protected Amazon Web Services
    #   resource. You must provide either the `ResourceArn` of the protected
    #   resource or the `ProtectionID` of the protection, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionRequest AWS API Documentation
    #
    class DescribeProtectionRequest < Struct.new(
      :protection_id,
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection
    #   The Protection that you requested.
    #   @return [Types::Protection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionResponse AWS API Documentation
    #
    class DescribeProtectionResponse < Struct.new(
      :protection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionRequest AWS API Documentation
    #
    class DescribeSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] subscription
    #   The Shield Advanced subscription details for an account.
    #   @return [Types::Subscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionResponse AWS API Documentation
    #
    class DescribeSubscriptionResponse < Struct.new(
      :subscription)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the protected resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableApplicationLayerAutomaticResponseRequest AWS API Documentation
    #
    class DisableApplicationLayerAutomaticResponseRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableApplicationLayerAutomaticResponseResponse AWS API Documentation
    #
    class DisableApplicationLayerAutomaticResponseResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableProactiveEngagementRequest AWS API Documentation
    #
    class DisableProactiveEngagementRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableProactiveEngagementResponse AWS API Documentation
    #
    class DisableProactiveEngagementResponse < Aws::EmptyStructure; end

    # @!attribute [rw] log_bucket
    #   The Amazon S3 bucket that contains the logs that you want to share.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucketRequest AWS API Documentation
    #
    class DisassociateDRTLogBucketRequest < Struct.new(
      :log_bucket)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucketResponse AWS API Documentation
    #
    class DisassociateDRTLogBucketResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTRoleRequest AWS API Documentation
    #
    class DisassociateDRTRoleRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTRoleResponse AWS API Documentation
    #
    class DisassociateDRTRoleResponse < Aws::EmptyStructure; end

    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to remove the
    #   health check association from.
    #   @return [String]
    #
    # @!attribute [rw] health_check_arn
    #   The Amazon Resource Name (ARN) of the health check that is
    #   associated with the protection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateHealthCheckRequest AWS API Documentation
    #
    class DisassociateHealthCheckRequest < Struct.new(
      :protection_id,
      :health_check_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateHealthCheckResponse AWS API Documentation
    #
    class DisassociateHealthCheckResponse < Aws::EmptyStructure; end

    # Contact information that the SRT can use to contact you if you have
    # proactive engagement enabled, for escalations to the SRT and to
    # initiate proactive customer support.
    #
    # @!attribute [rw] email_address
    #   The email address for the contact.
    #   @return [String]
    #
    # @!attribute [rw] phone_number
    #   The phone number for the contact.
    #   @return [String]
    #
    # @!attribute [rw] contact_notes
    #   Additional notes regarding the contact.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EmergencyContact AWS API Documentation
    #
    class EmergencyContact < Struct.new(
      :email_address,
      :phone_number,
      :contact_notes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the protected resource.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action setting that Shield Advanced should use in the
    #   WAF rules that it creates on behalf of the protected resource in
    #   response to DDoS attacks. You specify this as part of the
    #   configuration for the automatic application layer DDoS mitigation
    #   feature, when you enable or update automatic mitigation. Shield
    #   Advanced creates the WAF rules in a Shield Advanced-managed rule
    #   group, inside the web ACL that you have associated with the
    #   resource.
    #   @return [Types::ResponseAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableApplicationLayerAutomaticResponseRequest AWS API Documentation
    #
    class EnableApplicationLayerAutomaticResponseRequest < Struct.new(
      :resource_arn,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableApplicationLayerAutomaticResponseResponse AWS API Documentation
    #
    class EnableApplicationLayerAutomaticResponseResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableProactiveEngagementRequest AWS API Documentation
    #
    class EnableProactiveEngagementRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/EnableProactiveEngagementResponse AWS API Documentation
    #
    class EnableProactiveEngagementResponse < Aws::EmptyStructure; end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/GetSubscriptionStateRequest AWS API Documentation
    #
    class GetSubscriptionStateRequest < Aws::EmptyStructure; end

    # @!attribute [rw] subscription_state
    #   The status of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/GetSubscriptionStateResponse AWS API Documentation
    #
    class GetSubscriptionStateResponse < Struct.new(
      :subscription_state)
      SENSITIVE = []
      include Aws::Structure
    end

    # Narrows the set of protections that the call retrieves. You can
    # retrieve a single protection by providing its name or the ARN (Amazon
    # Resource Name) of its protected resource. You can also retrieve all
    # protections for a specific resource type. You can provide up to one
    # criteria per filter type. Shield Advanced returns protections that
    # exactly match all of the filter criteria that you provide.
    #
    # @!attribute [rw] resource_arns
    #   The ARN (Amazon Resource Name) of the resource whose protection you
    #   want to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protection_names
    #   The name of the protection that you want to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The type of protected resource whose protections you want to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InclusionProtectionFilters AWS API Documentation
    #
    class InclusionProtectionFilters < Struct.new(
      :resource_arns,
      :protection_names,
      :resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Narrows the set of protection groups that the call retrieves. You can
    # retrieve a single protection group by its name and you can retrieve
    # all protection groups that are configured with a specific pattern,
    # aggregation, or resource type. You can provide up to one criteria per
    # filter type. Shield Advanced returns the protection groups that
    # exactly match all of the search criteria that you provide.
    #
    # @!attribute [rw] protection_group_ids
    #   The ID of the protection group that you want to retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] patterns
    #   The pattern specification of the protection groups that you want to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_types
    #   The resource type configuration of the protection groups that you
    #   want to retrieve. In the protection group configuration, you specify
    #   the resource type when you set the group's `Pattern` to
    #   `BY_RESOURCE_TYPE`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] aggregations
    #   The aggregation setting of the protection groups that you want to
    #   retrieve.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InclusionProtectionGroupFilters AWS API Documentation
    #
    class InclusionProtectionGroupFilters < Struct.new(
      :protection_group_ids,
      :patterns,
      :resource_types,
      :aggregations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that a problem occurred with the service
    # infrastructure. You can retry the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the operation would not cause any change
    # to occur.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the `NextToken` specified in the request
    # is invalid. Submit the request using the `NextToken` value that was
    # returned in the prior response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the parameters passed to the API are
    # invalid. If available, this exception includes details in additional
    # properties.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   Additional information about the exception.
    #   @return [String]
    #
    # @!attribute [rw] fields
    #   Fields that caused the exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message,
      :reason,
      :fields)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the resource is invalid. You might not
    # have access to the resource, or the resource might not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidResourceException AWS API Documentation
    #
    class InvalidResourceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies how many protections of a given type you can create.
    #
    # @!attribute [rw] type
    #   The type of protection.
    #   @return [String]
    #
    # @!attribute [rw] max
    #   The maximum number of protections that can be created for the
    #   specified `Type`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Limit AWS API Documentation
    #
    class Limit < Struct.new(
      :type,
      :max)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the operation would exceed a limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of limit that would be exceeded.
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   The threshold that would be exceeded.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/LimitsExceededException AWS API Documentation
    #
    class LimitsExceededException < Struct.new(
      :message,
      :type,
      :limit)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   The ARNs (Amazon Resource Names) of the resources that were
    #   attacked. If you leave this blank, all applicable resources for this
    #   account will be included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start of the time period for the attacks. This is a `timestamp`
    #   type. The request syntax listing for this call indicates a `number`
    #   type, but you can provide the time in any valid [timestamp
    #   format][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] end_time
    #   The end of the time period for the attacks. This is a `timestamp`
    #   type. The request syntax listing for this call indicates a `number`
    #   type, but you can provide the time in any valid [timestamp
    #   format][1] setting.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-parameters-types.html#parameter-type-timestamp
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The greatest number of objects that you want Shield Advanced to
    #   return to the list request. Shield Advanced might return fewer
    #   objects than you indicate in this setting, even if more objects are
    #   available. If there are more objects remaining, Shield Advanced will
    #   always also return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacksRequest AWS API Documentation
    #
    class ListAttacksRequest < Struct.new(
      :resource_arns,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] attack_summaries
    #   The attack information for the specified time range.
    #   @return [Array<Types::AttackSummary>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacksResponse AWS API Documentation
    #
    class ListAttacksResponse < Struct.new(
      :attack_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The greatest number of objects that you want Shield Advanced to
    #   return to the list request. Shield Advanced might return fewer
    #   objects than you indicate in this setting, even if more objects are
    #   available. If there are more objects remaining, Shield Advanced will
    #   always also return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] inclusion_filters
    #   Narrows the set of protection groups that the call retrieves. You
    #   can retrieve a single protection group by its name and you can
    #   retrieve all protection groups that are configured with specific
    #   pattern or aggregation settings. You can provide up to one criteria
    #   per filter type. Shield Advanced returns the protection groups that
    #   exactly match all of the search criteria that you provide.
    #   @return [Types::InclusionProtectionGroupFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionGroupsRequest AWS API Documentation
    #
    class ListProtectionGroupsRequest < Struct.new(
      :next_token,
      :max_results,
      :inclusion_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_groups
    #   @return [Array<Types::ProtectionGroup>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionGroupsResponse AWS API Documentation
    #
    class ListProtectionGroupsResponse < Struct.new(
      :protection_groups,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The greatest number of objects that you want Shield Advanced to
    #   return to the list request. Shield Advanced might return fewer
    #   objects than you indicate in this setting, even if more objects are
    #   available. If there are more objects remaining, Shield Advanced will
    #   always also return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #   @return [Integer]
    #
    # @!attribute [rw] inclusion_filters
    #   Narrows the set of protections that the call retrieves. You can
    #   retrieve a single protection by providing its name or the ARN
    #   (Amazon Resource Name) of its protected resource. You can also
    #   retrieve all protections for a specific resource type. You can
    #   provide up to one criteria per filter type. Shield Advanced returns
    #   protections that exactly match all of the filter criteria that you
    #   provide.
    #   @return [Types::InclusionProtectionFilters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsRequest AWS API Documentation
    #
    class ListProtectionsRequest < Struct.new(
      :next_token,
      :max_results,
      :inclusion_filters)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protections
    #   The array of enabled Protection objects.
    #   @return [Array<Types::Protection>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsResponse AWS API Documentation
    #
    class ListProtectionsResponse < Struct.new(
      :protections,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #
    #   On your first call to a list operation, leave this setting empty.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The greatest number of objects that you want Shield Advanced to
    #   return to the list request. Shield Advanced might return fewer
    #   objects than you indicate in this setting, even if more objects are
    #   available. If there are more objects remaining, Shield Advanced will
    #   always also return a `NextToken` value in the response.
    #
    #   The default setting is 20.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListResourcesInProtectionGroupRequest AWS API Documentation
    #
    class ListResourcesInProtectionGroupRequest < Struct.new(
      :protection_group_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arns
    #   The Amazon Resource Names (ARNs) of the resources that are included
    #   in the protection group.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   When you request a list of objects from Shield Advanced, if the
    #   response does not include all of the remaining available objects,
    #   Shield Advanced includes a `NextToken` value in the response. You
    #   can retrieve the next batch of objects by requesting the list again
    #   and providing the token that was returned by the prior call in your
    #   request.
    #
    #   You can indicate the maximum number of objects that you want Shield
    #   Advanced to return for a single call with the `MaxResults` setting.
    #   Shield Advanced will not return more than `MaxResults` objects, but
    #   may return fewer, even if more objects are still available.
    #
    #   Whenever more objects remain that Shield Advanced has not yet
    #   returned to you, the response will include a `NextToken` value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListResourcesInProtectionGroupResponse AWS API Documentation
    #
    class ListResourcesInProtectionGroupResponse < Struct.new(
      :resource_arns,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with the specified
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # You are trying to update a subscription that has not yet completed the
    # 1-year commitment. You can change the `AutoRenew` parameter during the
    # last 30 days of your subscription. This exception indicates that you
    # are attempting to change `AutoRenew` prior to that period.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/LockedSubscriptionException AWS API Documentation
    #
    class LockedSubscriptionException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The mitigation applied to a DDoS attack.
    #
    # @!attribute [rw] mitigation_name
    #   The name of the mitigation taken for this attack.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Mitigation AWS API Documentation
    #
    class Mitigation < Struct.new(
      :mitigation_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The ARN of the role that you specified does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/NoAssociatedRoleException AWS API Documentation
    #
    class NoAssociatedRoleException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception that indicates that the resource state has been modified by
    # another client. Retrieve the resource and then retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/OptimisticLockException AWS API Documentation
    #
    class OptimisticLockException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object that represents a resource that is under DDoS protection.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the protection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the protection. For example, `My CloudFront
    #   distributions`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the Amazon Web Services resource
    #   that is protected.
    #   @return [String]
    #
    # @!attribute [rw] health_check_ids
    #   The unique identifier (ID) for the Route 53 health check that's
    #   associated with the protection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protection_arn
    #   The ARN (Amazon Resource Name) of the protection.
    #   @return [String]
    #
    # @!attribute [rw] application_layer_automatic_response_configuration
    #   The automatic application layer DDoS mitigation settings for the
    #   protection. This configuration determines whether Shield Advanced
    #   automatically manages rules in the web ACL in order to respond to
    #   application layer events that Shield Advanced determines to be DDoS
    #   attacks.
    #   @return [Types::ApplicationLayerAutomaticResponseConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Protection AWS API Documentation
    #
    class Protection < Struct.new(
      :id,
      :name,
      :resource_arn,
      :health_check_ids,
      :protection_arn,
      :application_layer_automatic_response_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # A grouping of protected resources that you and Shield Advanced can
    # monitor as a collective. This resource grouping improves the accuracy
    # of detection and reduces false positives.
    #
    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @!attribute [rw] aggregation
    #   Defines how Shield combines resource data for the group in order to
    #   detect, mitigate, and report events.
    #
    #   * Sum - Use the total traffic across the group. This is a good
    #     choice for most cases. Examples include Elastic IP addresses for
    #     EC2 instances that scale manually or automatically.
    #
    #   * Mean - Use the average of the traffic across the group. This is a
    #     good choice for resources that share traffic uniformly. Examples
    #     include accelerators and load balancers.
    #
    #   * Max - Use the highest traffic from each resource. This is useful
    #     for resources that don't share traffic and for resources that
    #     share that traffic in a non-uniform way. Examples include Amazon
    #     CloudFront distributions and origin resources for CloudFront
    #     distributions.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The criteria to use to choose the protected resources for inclusion
    #   in the group. You can include all resources that have protections,
    #   provide a list of resource ARNs (Amazon Resource Names), or include
    #   all resources of a specified resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to include in the protection group. All protected
    #   resources of this type are included in the protection group. You
    #   must set this when you set `Pattern` to `BY_RESOURCE_TYPE` and you
    #   must not set it for any other `Pattern` setting.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The ARNs (Amazon Resource Names) of the resources to include in the
    #   protection group. You must set this when you set `Pattern` to
    #   `ARBITRARY` and you must not set it for any other `Pattern` setting.
    #   @return [Array<String>]
    #
    # @!attribute [rw] protection_group_arn
    #   The ARN (Amazon Resource Name) of the protection group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ProtectionGroup AWS API Documentation
    #
    class ProtectionGroup < Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members,
      :protection_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits settings on protection groups with arbitrary pattern type.
    #
    # @!attribute [rw] max_members
    #   The maximum number of resources you can specify for a single
    #   arbitrary pattern in a protection group.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ProtectionGroupArbitraryPatternLimits AWS API Documentation
    #
    class ProtectionGroupArbitraryPatternLimits < Struct.new(
      :max_members)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits settings on protection groups for your subscription.
    #
    # @!attribute [rw] max_protection_groups
    #   The maximum number of protection groups that you can have at one
    #   time.
    #   @return [Integer]
    #
    # @!attribute [rw] pattern_type_limits
    #   Limits settings by pattern type in the protection groups for your
    #   subscription.
    #   @return [Types::ProtectionGroupPatternTypeLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ProtectionGroupLimits AWS API Documentation
    #
    class ProtectionGroupLimits < Struct.new(
      :max_protection_groups,
      :pattern_type_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits settings by pattern type in the protection groups for your
    # subscription.
    #
    # @!attribute [rw] arbitrary_pattern_limits
    #   Limits settings on protection groups with arbitrary pattern type.
    #   @return [Types::ProtectionGroupArbitraryPatternLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ProtectionGroupPatternTypeLimits AWS API Documentation
    #
    class ProtectionGroupPatternTypeLimits < Struct.new(
      :arbitrary_pattern_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits settings on protections for your subscription.
    #
    # @!attribute [rw] protected_resource_type_limits
    #   The maximum number of resource types that you can specify in a
    #   protection.
    #   @return [Array<Types::Limit>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ProtectionLimits AWS API Documentation
    #
    class ProtectionLimits < Struct.new(
      :protected_resource_type_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception indicating the specified resource already exists. If
    # available, this exception includes details in additional properties.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that already exists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception indicating the specified resource does not exist. If
    # available, this exception includes details in additional properties.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   Type of resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the action setting that Shield Advanced should use in the
    # WAF rules that it creates on behalf of the protected resource in
    # response to DDoS attacks. You specify this as part of the
    # configuration for the automatic application layer DDoS mitigation
    # feature, when you enable or update automatic mitigation. Shield
    # Advanced creates the WAF rules in a Shield Advanced-managed rule
    # group, inside the web ACL that you have associated with the resource.
    #
    # @!attribute [rw] block
    #   Specifies that Shield Advanced should configure its WAF rules with
    #   the WAF `Block` action.
    #
    #   You must specify exactly one action, either `Block` or `Count`.
    #   @return [Types::BlockAction]
    #
    # @!attribute [rw] count
    #   Specifies that Shield Advanced should configure its WAF rules with
    #   the WAF `Count` action.
    #
    #   You must specify exactly one action, either `Block` or `Count`.
    #   @return [Types::CountAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ResponseAction AWS API Documentation
    #
    class ResponseAction < Struct.new(
      :block,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attack information for the specified SubResource.
    #
    # @!attribute [rw] type
    #   The `SubResource` type.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the `SubResource`.
    #   @return [String]
    #
    # @!attribute [rw] attack_vectors
    #   The list of attack types and associated counters.
    #   @return [Array<Types::SummarizedAttackVector>]
    #
    # @!attribute [rw] counters
    #   The counters that describe the details of the attack.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SubResourceSummary AWS API Documentation
    #
    class SubResourceSummary < Struct.new(
      :type,
      :id,
      :attack_vectors,
      :counters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the Shield Advanced subscription for an account.
    #
    # @!attribute [rw] start_time
    #   The start time of the subscription, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time your subscription will end.
    #   @return [Time]
    #
    # @!attribute [rw] time_commitment_in_seconds
    #   The length, in seconds, of the Shield Advanced subscription for the
    #   account.
    #   @return [Integer]
    #
    # @!attribute [rw] auto_renew
    #   If `ENABLED`, the subscription will be automatically renewed at the
    #   end of the existing subscription period.
    #
    #   When you initally create a subscription, `AutoRenew` is set to
    #   `ENABLED`. You can change this by submitting an `UpdateSubscription`
    #   request. If the `UpdateSubscription` request does not included a
    #   value for `AutoRenew`, the existing value for `AutoRenew` remains
    #   unchanged.
    #   @return [String]
    #
    # @!attribute [rw] limits
    #   Specifies how many protections of a given type you can create.
    #   @return [Array<Types::Limit>]
    #
    # @!attribute [rw] proactive_engagement_status
    #   If `ENABLED`, the Shield Response Team (SRT) will use email and
    #   phone to notify contacts about escalations to the SRT and to
    #   initiate proactive customer support.
    #
    #   If `PENDING`, you have requested proactive engagement and the
    #   request is pending. The status changes to `ENABLED` when your
    #   request is fully processed.
    #
    #   If `DISABLED`, the SRT will not proactively notify contacts about
    #   escalations or to initiate proactive customer support.
    #   @return [String]
    #
    # @!attribute [rw] subscription_limits
    #   Limits settings for your subscription.
    #   @return [Types::SubscriptionLimits]
    #
    # @!attribute [rw] subscription_arn
    #   The ARN (Amazon Resource Name) of the subscription.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Subscription AWS API Documentation
    #
    class Subscription < Struct.new(
      :start_time,
      :end_time,
      :time_commitment_in_seconds,
      :auto_renew,
      :limits,
      :proactive_engagement_status,
      :subscription_limits,
      :subscription_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Limits settings for your subscription.
    #
    # @!attribute [rw] protection_limits
    #   Limits settings on protections for your subscription.
    #   @return [Types::ProtectionLimits]
    #
    # @!attribute [rw] protection_group_limits
    #   Limits settings on protection groups for your subscription.
    #   @return [Types::ProtectionGroupLimits]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SubscriptionLimits AWS API Documentation
    #
    class SubscriptionLimits < Struct.new(
      :protection_limits,
      :protection_group_limits)
      SENSITIVE = []
      include Aws::Structure
    end

    # A summary of information about the attack.
    #
    # @!attribute [rw] vector_type
    #   The attack type, for example, SNMP reflection or SYN flood.
    #   @return [String]
    #
    # @!attribute [rw] vector_counters
    #   The list of counters that describe the details of the attack.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SummarizedAttackVector AWS API Documentation
    #
    class SummarizedAttackVector < Struct.new(
      :vector_type,
      :vector_counters)
      SENSITIVE = []
      include Aws::Structure
    end

    # The counter that describes a DDoS attack.
    #
    # @!attribute [rw] name
    #   The counter name.
    #   @return [String]
    #
    # @!attribute [rw] max
    #   The maximum value of the counter for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] average
    #   The average value of the counter for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] sum
    #   The total of counter values for a specified time period.
    #   @return [Float]
    #
    # @!attribute [rw] n
    #   The number of counters for a specified time period.
    #   @return [Integer]
    #
    # @!attribute [rw] unit
    #   The unit of the counters.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/SummarizedCounter AWS API Documentation
    #
    class SummarizedCounter < Struct.new(
      :name,
      :max,
      :average,
      :sum,
      :n,
      :unit)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag associated with an Amazon Web Services resource. Tags are
    # key:value pairs that you can use to categorize and manage your
    # resources, for purposes like billing or other management. Typically,
    # the tag key represents a category, such as "environment", and the
    # tag value represents a specific value within that category, such as
    # "test," "development," or "production". Or you might set the tag
    # key to "customer" and the value to the customer name or ID. You can
    # specify one or more tags to add to each Amazon Web Services resource,
    # up to 50 tags for a resource.
    #
    # @!attribute [rw] key
    #   Part of the key:value pair that defines a tag. You can use a tag key
    #   to describe a category of information, such as "customer." Tag
    #   keys are case-sensitive.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   Part of the key:value pair that defines a tag. You can use a tag
    #   value to describe a specific value within a category, such as
    #   "companyA" or "companyB." Tag values are case-sensitive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   or update tags for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags that you want to modify or add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The time range.
    #
    # @!attribute [rw] from_inclusive
    #   The start time, in Unix time in seconds.
    #   @return [Time]
    #
    # @!attribute [rw] to_exclusive
    #   The end time, in Unix time in seconds.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :from_inclusive,
      :to_exclusive)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key for each tag that you want to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   Specifies the action setting that Shield Advanced should use in the
    #   WAF rules that it creates on behalf of the protected resource in
    #   response to DDoS attacks. You specify this as part of the
    #   configuration for the automatic application layer DDoS mitigation
    #   feature, when you enable or update automatic mitigation. Shield
    #   Advanced creates the WAF rules in a Shield Advanced-managed rule
    #   group, inside the web ACL that you have associated with the
    #   resource.
    #   @return [Types::ResponseAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateApplicationLayerAutomaticResponseRequest AWS API Documentation
    #
    class UpdateApplicationLayerAutomaticResponseRequest < Struct.new(
      :resource_arn,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateApplicationLayerAutomaticResponseResponse AWS API Documentation
    #
    class UpdateApplicationLayerAutomaticResponseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the Shield Response
    #   Team (SRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the SRT and to initiate proactive
    #   customer support.
    #
    #   If you have proactive engagement enabled, the contact list must
    #   include at least one phone number.
    #   @return [Array<Types::EmergencyContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettingsRequest AWS API Documentation
    #
    class UpdateEmergencyContactSettingsRequest < Struct.new(
      :emergency_contact_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettingsResponse AWS API Documentation
    #
    class UpdateEmergencyContactSettingsResponse < Aws::EmptyStructure; end

    # @!attribute [rw] protection_group_id
    #   The name of the protection group. You use this to identify the
    #   protection group in lists and to manage the protection group, for
    #   example to update, delete, or describe it.
    #   @return [String]
    #
    # @!attribute [rw] aggregation
    #   Defines how Shield combines resource data for the group in order to
    #   detect, mitigate, and report events.
    #
    #   * Sum - Use the total traffic across the group. This is a good
    #     choice for most cases. Examples include Elastic IP addresses for
    #     EC2 instances that scale manually or automatically.
    #
    #   * Mean - Use the average of the traffic across the group. This is a
    #     good choice for resources that share traffic uniformly. Examples
    #     include accelerators and load balancers.
    #
    #   * Max - Use the highest traffic from each resource. This is useful
    #     for resources that don't share traffic and for resources that
    #     share that traffic in a non-uniform way. Examples include Amazon
    #     CloudFront distributions and origin resources for CloudFront
    #     distributions.
    #   @return [String]
    #
    # @!attribute [rw] pattern
    #   The criteria to use to choose the protected resources for inclusion
    #   in the group. You can include all resources that have protections,
    #   provide a list of resource Amazon Resource Names (ARNs), or include
    #   all resources of a specified resource type.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type to include in the protection group. All protected
    #   resources of this type are included in the protection group. You
    #   must set this when you set `Pattern` to `BY_RESOURCE_TYPE` and you
    #   must not set it for any other `Pattern` setting.
    #   @return [String]
    #
    # @!attribute [rw] members
    #   The Amazon Resource Names (ARNs) of the resources to include in the
    #   protection group. You must set this when you set `Pattern` to
    #   `ARBITRARY` and you must not set it for any other `Pattern` setting.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateProtectionGroupRequest AWS API Documentation
    #
    class UpdateProtectionGroupRequest < Struct.new(
      :protection_group_id,
      :aggregation,
      :pattern,
      :resource_type,
      :members)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateProtectionGroupResponse AWS API Documentation
    #
    class UpdateProtectionGroupResponse < Aws::EmptyStructure; end

    # @!attribute [rw] auto_renew
    #   When you initally create a subscription, `AutoRenew` is set to
    #   `ENABLED`. If `ENABLED`, the subscription will be automatically
    #   renewed at the end of the existing subscription period. You can
    #   change this by submitting an `UpdateSubscription` request. If the
    #   `UpdateSubscription` request does not included a value for
    #   `AutoRenew`, the existing value for `AutoRenew` remains unchanged.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscriptionRequest AWS API Documentation
    #
    class UpdateSubscriptionRequest < Struct.new(
      :auto_renew)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscriptionResponse AWS API Documentation
    #
    class UpdateSubscriptionResponse < Aws::EmptyStructure; end

    # Provides information about a particular parameter passed inside a
    # request that resulted in an exception.
    #
    # @!attribute [rw] name
    #   The name of the parameter that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message describing why the parameter failed validation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
