# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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
      include Aws::Structure
    end

    # In order to grant the necessary access to the DDoS Response Team
    # (DRT), the user submitting the request must have the `iam:PassRole`
    # permission. This error indicates the user did not have the appropriate
    # permissions. For more information, see [Granting a User Permissions to
    # Pass a Role to an AWS Service][1].
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateDRTLogBucketRequest
    #   data as a hash:
    #
    #       {
    #         log_bucket: "LogBucket", # required
    #       }
    #
    # @!attribute [rw] log_bucket
    #   The Amazon S3 bucket that contains your AWS WAF logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucketRequest AWS API Documentation
    #
    class AssociateDRTLogBucketRequest < Struct.new(
      :log_bucket)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTLogBucketResponse AWS API Documentation
    #
    class AssociateDRTLogBucketResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateDRTRoleRequest
    #   data as a hash:
    #
    #       {
    #         role_arn: "RoleArn", # required
    #       }
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role the DRT will use to
    #   access your AWS account.
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateDRTRoleResponse AWS API Documentation
    #
    class AssociateDRTRoleResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId", # required
    #         health_check_arn: "HealthCheckArn", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/AssociateHealthCheckResponse AWS API Documentation
    #
    class AssociateHealthCheckResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass AssociateProactiveEngagementDetailsRequest
    #   data as a hash:
    #
    #       {
    #         emergency_contact_list: [ # required
    #           {
    #             email_address: "EmailAddress", # required
    #             phone_number: "PhoneNumber",
    #             contact_notes: "ContactNotes",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the DDoS Response
    #   Team (DRT) can use to contact you for escalations to the DRT and to
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
    #   The time the attack started, in Unix time in seconds. For more
    #   information see [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The time the attack ended, in Unix time in seconds. For more
    #   information see [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @!attribute [rw] attack_counters
    #   List of counters that describe the attack for the specified time
    #   period.
    #   @return [Array<Types::SummarizedCounter>]
    #
    # @!attribute [rw] attack_properties
    #   The array of AttackProperty objects.
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
      include Aws::Structure
    end

    # Details of the described attack.
    #
    # @!attribute [rw] attack_layer
    #   The type of distributed denial of service (DDoS) event that was
    #   observed. `NETWORK` indicates layer 3 and layer 4 events and
    #   `APPLICATION` indicates layer 7 events.
    #   @return [String]
    #
    # @!attribute [rw] attack_property_identifier
    #   Defines the DDoS attack property information that is provided. The
    #   `WORDPRESS_PINGBACK_REFLECTOR` and `WORDPRESS_PINGBACK_SOURCE`
    #   values are valid only for WordPress reflective pingback DDoS
    #   attacks.
    #   @return [String]
    #
    # @!attribute [rw] top_contributors
    #   The array of Contributor objects that includes the top five
    #   contributors to an attack.
    #   @return [Array<Types::Contributor>]
    #
    # @!attribute [rw] unit
    #   The unit of the `Value` of the contributions.
    #   @return [String]
    #
    # @!attribute [rw] total
    #   The total contributions made to this attack by all contributors, not
    #   just the five listed in the `TopContributors` list.
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
    #   The start time of the attack, in Unix time in seconds. For more
    #   information see [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end time of the attack, in Unix time in seconds. For more
    #   information see [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
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
      include Aws::Structure
    end

    # A contributor to the attack and their contribution.
    #
    # @!attribute [rw] name
    #   The name of the contributor. This is dependent on the
    #   `AttackPropertyIdentifier`. For example, if the
    #   `AttackPropertyIdentifier` is `SOURCE_COUNTRY`, the `Name` could be
    #   `United States`.
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
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateProtectionRequest
    #   data as a hash:
    #
    #       {
    #         name: "ProtectionName", # required
    #         resource_arn: "ResourceArn", # required
    #       }
    #
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
    #   * For an AWS CloudFront distribution:
    #     `arn:aws:cloudfront::account-id:distribution/distribution-id `
    #
    #   * For an AWS Global Accelerator accelerator:
    #     `arn:aws:globalaccelerator::account-id:accelerator/accelerator-id
    #     `
    #
    #   * For Amazon Route 53: `arn:aws:route53:::hostedzone/hosted-zone-id
    #     `
    #
    #   * For an Elastic IP address:
    #     `arn:aws:ec2:region:account-id:eip-allocation/allocation-id `
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/CreateProtectionRequest AWS API Documentation
    #
    class CreateProtectionRequest < Struct.new(
      :name,
      :resource_arn)
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

    # @note When making an API call, you may pass DeleteProtectionRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId", # required
    #       }
    #
    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DeleteProtectionRequest AWS API Documentation
    #
    class DeleteProtectionRequest < Struct.new(
      :protection_id)
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

    # @note When making an API call, you may pass DescribeAttackRequest
    #   data as a hash:
    #
    #       {
    #         attack_id: "AttackId", # required
    #       }
    #
    # @!attribute [rw] attack_id
    #   The unique identifier (ID) for the attack that to be described.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackRequest AWS API Documentation
    #
    class DescribeAttackRequest < Struct.new(
      :attack_id)
      include Aws::Structure
    end

    # @!attribute [rw] attack
    #   The attack that is described.
    #   @return [Types::AttackDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeAttackResponse AWS API Documentation
    #
    class DescribeAttackResponse < Struct.new(
      :attack)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccessRequest AWS API Documentation
    #
    class DescribeDRTAccessRequest < Aws::EmptyStructure; end

    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role the DRT used to access
    #   your AWS account.
    #   @return [String]
    #
    # @!attribute [rw] log_bucket_list
    #   The list of Amazon S3 buckets accessed by the DRT.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeDRTAccessResponse AWS API Documentation
    #
    class DescribeDRTAccessResponse < Struct.new(
      :role_arn,
      :log_bucket_list)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettingsRequest AWS API Documentation
    #
    class DescribeEmergencyContactSettingsRequest < Aws::EmptyStructure; end

    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the DDoS Response
    #   Team (DRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the DRT and to initiate proactive
    #   customer support.
    #   @return [Array<Types::EmergencyContact>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeEmergencyContactSettingsResponse AWS API Documentation
    #
    class DescribeEmergencyContactSettingsResponse < Struct.new(
      :emergency_contact_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeProtectionRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId",
    #         resource_arn: "ResourceArn",
    #       }
    #
    # @!attribute [rw] protection_id
    #   The unique identifier (ID) for the Protection object that is
    #   described. When submitting the `DescribeProtection` request you must
    #   provide either the `ResourceArn` or the `ProtectionID`, but not
    #   both.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the AWS resource for the
    #   Protection object that is described. When submitting the
    #   `DescribeProtection` request you must provide either the
    #   `ResourceArn` or the `ProtectionID`, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionRequest AWS API Documentation
    #
    class DescribeProtectionRequest < Struct.new(
      :protection_id,
      :resource_arn)
      include Aws::Structure
    end

    # @!attribute [rw] protection
    #   The Protection object that is described.
    #   @return [Types::Protection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeProtectionResponse AWS API Documentation
    #
    class DescribeProtectionResponse < Struct.new(
      :protection)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionRequest AWS API Documentation
    #
    class DescribeSubscriptionRequest < Aws::EmptyStructure; end

    # @!attribute [rw] subscription
    #   The AWS Shield Advanced subscription details for an account.
    #   @return [Types::Subscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DescribeSubscriptionResponse AWS API Documentation
    #
    class DescribeSubscriptionResponse < Struct.new(
      :subscription)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableProactiveEngagementRequest AWS API Documentation
    #
    class DisableProactiveEngagementRequest < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisableProactiveEngagementResponse AWS API Documentation
    #
    class DisableProactiveEngagementResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DisassociateDRTLogBucketRequest
    #   data as a hash:
    #
    #       {
    #         log_bucket: "LogBucket", # required
    #       }
    #
    # @!attribute [rw] log_bucket
    #   The Amazon S3 bucket that contains your AWS WAF logs.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateDRTLogBucketRequest AWS API Documentation
    #
    class DisassociateDRTLogBucketRequest < Struct.new(
      :log_bucket)
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

    # @note When making an API call, you may pass DisassociateHealthCheckRequest
    #   data as a hash:
    #
    #       {
    #         protection_id: "ProtectionId", # required
    #         health_check_arn: "HealthCheckArn", # required
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/DisassociateHealthCheckResponse AWS API Documentation
    #
    class DisassociateHealthCheckResponse < Aws::EmptyStructure; end

    # Contact information that the DRT can use to contact you if you have
    # proactive engagement enabled, for escalations to the DRT and to
    # initiate proactive customer support.
    #
    # @note When making an API call, you may pass EmergencyContact
    #   data as a hash:
    #
    #       {
    #         email_address: "EmailAddress", # required
    #         phone_number: "PhoneNumber",
    #         contact_notes: "ContactNotes",
    #       }
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
      include Aws::Structure
    end

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
      include Aws::Structure
    end

    # Exception that indicates that the NextToken specified in the request
    # is invalid. Submit the request using the NextToken value that was
    # returned in the response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidPaginationTokenException AWS API Documentation
    #
    class InvalidPaginationTokenException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Exception that indicates that the parameters passed to the API are
    # invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/InvalidParameterException AWS API Documentation
    #
    class InvalidParameterException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # Exception that indicates that the operation would exceed a limit.
    #
    # `Type` is the type of limit that would be exceeded.
    #
    # `Limit` is the threshold that would be exceeded.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] type
    #   @return [String]
    #
    # @!attribute [rw] limit
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/LimitsExceededException AWS API Documentation
    #
    class LimitsExceededException < Struct.new(
      :message,
      :type,
      :limit)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttacksRequest
    #   data as a hash:
    #
    #       {
    #         resource_arns: ["ResourceArn"],
    #         start_time: {
    #           from_inclusive: Time.now,
    #           to_exclusive: Time.now,
    #         },
    #         end_time: {
    #           from_inclusive: Time.now,
    #           to_exclusive: Time.now,
    #         },
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arns
    #   The ARN (Amazon Resource Name) of the resource that was attacked. If
    #   this is left blank, all applicable resources for this account will
    #   be included.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The start of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] end_time
    #   The end of the time period for the attacks. This is a `timestamp`
    #   type. The sample request above indicates a `number` type because the
    #   default used by WAF is Unix time in seconds. However any valid
    #   [timestamp format][1] is allowed.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Types::TimeRange]
    #
    # @!attribute [rw] next_token
    #   The `ListAttacksRequest.NextMarker` value from a previous call to
    #   `ListAttacksRequest`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of AttackSummary objects to be returned. If this
    #   is left blank, the first 20 results will be returned.
    #
    #   This is a maximum value; it is possible that AWS WAF will return the
    #   results in smaller batches. That is, the number of AttackSummary
    #   objects returned could be less than `MaxResults`, even if there are
    #   still more AttackSummary objects yet to return. If there are more
    #   AttackSummary objects to return, AWS WAF will always also return a
    #   `NextToken`.
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
      include Aws::Structure
    end

    # @!attribute [rw] attack_summaries
    #   The attack information for the specified time range.
    #   @return [Array<Types::AttackSummary>]
    #
    # @!attribute [rw] next_token
    #   The token returned by a previous call to indicate that there is more
    #   data available. If not null, more results are available. Pass this
    #   value for the `NextMarker` parameter in a subsequent call to
    #   `ListAttacks` to retrieve the next set of items.
    #
    #   AWS WAF might return the list of AttackSummary objects in batches
    #   smaller than the number specified by MaxResults. If there are more
    #   AttackSummary objects to return, AWS WAF will always also return a
    #   `NextToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListAttacksResponse AWS API Documentation
    #
    class ListAttacksResponse < Struct.new(
      :attack_summaries,
      :next_token)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProtectionsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "Token",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   The `ListProtectionsRequest.NextToken` value from a previous call to
    #   `ListProtections`. Pass null if this is the first call.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of Protection objects to be returned. If this is
    #   left blank the first 20 results will be returned.
    #
    #   This is a maximum value; it is possible that AWS WAF will return the
    #   results in smaller batches. That is, the number of Protection
    #   objects returned could be less than `MaxResults`, even if there are
    #   still more Protection objects yet to return. If there are more
    #   Protection objects to return, AWS WAF will always also return a
    #   `NextToken`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsRequest AWS API Documentation
    #
    class ListProtectionsRequest < Struct.new(
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] protections
    #   The array of enabled Protection objects.
    #   @return [Array<Types::Protection>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   Protections than the value of MaxResults, AWS Shield Advanced
    #   returns a NextToken value in the response that allows you to list
    #   another group of Protections. For the second and subsequent
    #   ListProtections requests, specify the value of NextToken from the
    #   previous response to get information about another batch of
    #   Protections.
    #
    #   AWS WAF might return the list of Protection objects in batches
    #   smaller than the number specified by MaxResults. If there are more
    #   Protection objects to return, AWS WAF will always also return a
    #   `NextToken`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ListProtectionsResponse AWS API Documentation
    #
    class ListProtectionsResponse < Struct.new(
      :protections,
      :next_token)
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
      include Aws::Structure
    end

    # The ARN of the role that you specifed does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/NoAssociatedRoleException AWS API Documentation
    #
    class NoAssociatedRoleException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # An object that represents a resource that is under DDoS protection.
    #
    # @!attribute [rw] id
    #   The unique identifier (ID) of the protection.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The friendly name of the protection. For example, `My CloudFront
    #   distributions`.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN (Amazon Resource Name) of the AWS resource that is
    #   protected.
    #   @return [String]
    #
    # @!attribute [rw] health_check_ids
    #   The unique identifier (ID) for the Route 53 health check that's
    #   associated with the protection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/Protection AWS API Documentation
    #
    class Protection < Struct.new(
      :id,
      :name,
      :resource_arn,
      :health_check_ids)
      include Aws::Structure
    end

    # Exception indicating the specified resource already exists.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ResourceAlreadyExistsException AWS API Documentation
    #
    class ResourceAlreadyExistsException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Exception indicating the specified resource does not exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
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
      include Aws::Structure
    end

    # Information about the AWS Shield Advanced subscription for an account.
    #
    # @!attribute [rw] start_time
    #   The start time of the subscription, in Unix time in seconds. For
    #   more information see [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The date and time your subscription will end.
    #   @return [Time]
    #
    # @!attribute [rw] time_commitment_in_seconds
    #   The length, in seconds, of the AWS Shield Advanced subscription for
    #   the account.
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
    #   If `ENABLED`, the DDoS Response Team (DRT) will use email and phone
    #   to notify contacts about escalations to the DRT and to initiate
    #   proactive customer support.
    #
    #   If `PENDING`, you have requested proactive engagement and the
    #   request is pending. The status changes to `ENABLED` when your
    #   request is fully processed.
    #
    #   If `DISABLED`, the DRT will not proactively notify contacts about
    #   escalations or to initiate proactive customer support.
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
      :proactive_engagement_status)
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
      include Aws::Structure
    end

    # The time range.
    #
    # @note When making an API call, you may pass TimeRange
    #   data as a hash:
    #
    #       {
    #         from_inclusive: Time.now,
    #         to_exclusive: Time.now,
    #       }
    #
    # @!attribute [rw] from_inclusive
    #   The start time, in Unix time in seconds. For more information see
    #   [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @!attribute [rw] to_exclusive
    #   The end time, in Unix time in seconds. For more information see
    #   [timestamp][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/TimeRange AWS API Documentation
    #
    class TimeRange < Struct.new(
      :from_inclusive,
      :to_exclusive)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateEmergencyContactSettingsRequest
    #   data as a hash:
    #
    #       {
    #         emergency_contact_list: [
    #           {
    #             email_address: "EmailAddress", # required
    #             phone_number: "PhoneNumber",
    #             contact_notes: "ContactNotes",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] emergency_contact_list
    #   A list of email addresses and phone numbers that the DDoS Response
    #   Team (DRT) can use to contact you if you have proactive engagement
    #   enabled, for escalations to the DRT and to initiate proactive
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateEmergencyContactSettingsResponse AWS API Documentation
    #
    class UpdateEmergencyContactSettingsResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateSubscriptionRequest
    #   data as a hash:
    #
    #       {
    #         auto_renew: "ENABLED", # accepts ENABLED, DISABLED
    #       }
    #
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
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/shield-2016-06-02/UpdateSubscriptionResponse AWS API Documentation
    #
    class UpdateSubscriptionResponse < Aws::EmptyStructure; end

  end
end
