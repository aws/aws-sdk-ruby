# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FMS
  module Types

    # An individual AWS Firewall Manager application.
    #
    # @note When making an API call, you may pass App
    #   data as a hash:
    #
    #       {
    #         app_name: "ResourceName", # required
    #         protocol: "Protocol", # required
    #         port: 1, # required
    #       }
    #
    # @!attribute [rw] app_name
    #   The application's name.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name or number. The name can be one of `tcp`, `udp`,
    #   or `icmp`. For information on possible numbers, see [Protocol
    #   Numbers][1].
    #
    #
    #
    #   [1]: https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The application's port number, for example `80`.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/App AWS API Documentation
    #
    class App < Struct.new(
      :app_name,
      :protocol,
      :port)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Firewall Manager applications list.
    #
    # @note When making an API call, you may pass AppsListData
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId",
    #         list_name: "ResourceName", # required
    #         list_update_token: "UpdateToken",
    #         create_time: Time.now,
    #         last_update_time: Time.now,
    #         apps_list: [ # required
    #           {
    #             app_name: "ResourceName", # required
    #             protocol: "Protocol", # required
    #             port: 1, # required
    #           },
    #         ],
    #         previous_apps_list: {
    #           "PreviousListVersion" => [
    #             {
    #               app_name: "ResourceName", # required
    #               protocol: "Protocol", # required
    #               port: 1, # required
    #             },
    #           ],
    #         },
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the AWS Firewall Manager applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the AWS Firewall Manager applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_update_token
    #   A unique identifier for each update to the list. When you update the
    #   list, the update token must match the token of the current version
    #   of the application list. You can retrieve the update token by
    #   getting the list.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the AWS Firewall Manager applications list was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the AWS Firewall Manager applications list was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] apps_list
    #   An array of applications in the AWS Firewall Manager applications
    #   list.
    #   @return [Array<Types::App>]
    #
    # @!attribute [rw] previous_apps_list
    #   A map of previous version numbers to their corresponding `App`
    #   object arrays.
    #   @return [Hash<String,Array<Types::App>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AppsListData AWS API Documentation
    #
    class AppsListData < Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :apps_list,
      :previous_apps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the AWS Firewall Manager applications list.
    #
    # @!attribute [rw] list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_id
    #   The ID of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the applications list.
    #   @return [String]
    #
    # @!attribute [rw] apps_list
    #   An array of `App` objects in the AWS Firewall Manager applications
    #   list.
    #   @return [Array<Types::App>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AppsListDataSummary AWS API Documentation
    #
    class AppsListDataSummary < Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :apps_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass AssociateAdminAccountRequest
    #   data as a hash:
    #
    #       {
    #         admin_account: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] admin_account
    #   The AWS account ID to associate with AWS Firewall Manager as the AWS
    #   Firewall Manager administrator account. This can be an AWS
    #   Organizations master account or a member account. For more
    #   information about AWS Organizations and master accounts, see
    #   [Managing the AWS Accounts in Your Organization][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AssociateAdminAccountRequest AWS API Documentation
    #
    class AssociateAdminAccountRequest < Struct.new(
      :admin_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violations for an EC2 instance resource.
    #
    # @!attribute [rw] violation_target
    #   The resource ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] aws_ec2_network_interface_violations
    #   Violations for network interfaces associated with the EC2 instance.
    #   @return [Array<Types::AwsEc2NetworkInterfaceViolation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsEc2InstanceViolation AWS API Documentation
    #
    class AwsEc2InstanceViolation < Struct.new(
      :violation_target,
      :aws_ec2_network_interface_violations)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violations for network interfaces associated with an EC2 instance.
    #
    # @!attribute [rw] violation_target
    #   The resource ID of the network interface.
    #   @return [String]
    #
    # @!attribute [rw] violating_security_groups
    #   List of security groups that violate the rules specified in the
    #   master security group of the AWS Firewall Manager policy.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsEc2NetworkInterfaceViolation AWS API Documentation
    #
    class AwsEc2NetworkInterfaceViolation < Struct.new(
      :violation_target,
      :violating_security_groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the rule violation in a security group when compared to the
    # master security group of the AWS Firewall Manager policy.
    #
    # @!attribute [rw] violation_target
    #   The security group rule that is being evaluated.
    #   @return [String]
    #
    # @!attribute [rw] violation_target_description
    #   A description of the security group that violates the policy.
    #   @return [String]
    #
    # @!attribute [rw] partial_matches
    #   List of rules specified in the security group of the AWS Firewall
    #   Manager policy that partially match the `ViolationTarget` rule.
    #   @return [Array<Types::PartialMatch>]
    #
    # @!attribute [rw] possible_security_group_remediation_actions
    #   Remediation options for the rule specified in the `ViolationTarget`.
    #   @return [Array<Types::SecurityGroupRemediationAction>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/AwsVPCSecurityGroupViolation AWS API Documentation
    #
    class AwsVPCSecurityGroupViolation < Struct.new(
      :violation_target,
      :violation_target_description,
      :partial_matches,
      :possible_security_group_remediation_actions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the resource that is not protected by the policy.
    #
    # @!attribute [rw] resource_id
    #   The resource ID.
    #   @return [String]
    #
    # @!attribute [rw] violation_reason
    #   The reason that the resource is not protected by the policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. This is in the format shown in the [AWS Resource
    #   Types Reference][1]. For example:
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer` or
    #   `AWS::CloudFront::Distribution`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ComplianceViolator AWS API Documentation
    #
    class ComplianceViolator < Struct.new(
      :resource_id,
      :violation_reason,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAppsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the applications list that you want to delete. You can
    #   retrieve this ID from `PutAppsList`, `ListAppsLists`, and
    #   `GetAppsList`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteAppsListRequest AWS API Documentation
    #
    class DeleteAppsListRequest < Struct.new(
      :list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteNotificationChannelRequest AWS API Documentation
    #
    class DeleteNotificationChannelRequest < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         delete_all_policy_resources: false,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that you want to delete. You can retrieve this
    #   ID from `PutPolicy` and `ListPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] delete_all_policy_resources
    #   If `True`, the request performs cleanup according to the policy
    #   type.
    #
    #   For AWS WAF and Shield Advanced policies, the cleanup does the
    #   following:
    #
    #   * Deletes rule groups created by AWS Firewall Manager
    #
    #   * Removes web ACLs from in-scope resources
    #
    #   * Deletes web ACLs that contain no rules or rule groups
    #
    #   For security group policies, the cleanup does the following for each
    #   security group in the policy:
    #
    #   * Disassociates the security group from in-scope resources
    #
    #   * Deletes the security group if it was created through Firewall
    #     Manager and if it's no longer associated with any resources
    #     through another policy
    #
    #   After the cleanup, in-scope resources are no longer protected by web
    #   ACLs in this policy. Protection of out-of-scope resources remains
    #   unchanged. Scope is determined by tags that you create and accounts
    #   that you associate with the policy. When creating the policy, if you
    #   specify that only resources in specific accounts or with specific
    #   tags are in scope of the policy, those accounts and resources are
    #   handled by the policy. All others are out of scope. If you don't
    #   specify tags or accounts, all resources are in scope.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_id,
      :delete_all_policy_resources)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the protocols list that you want to delete. You can
    #   retrieve this ID from `PutProtocolsList`, `ListProtocolsLists`, and
    #   `GetProtocolsLost`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeleteProtocolsListRequest AWS API Documentation
    #
    class DeleteProtocolsListRequest < Struct.new(
      :list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DisassociateAdminAccountRequest AWS API Documentation
    #
    class DisassociateAdminAccountRequest < Aws::EmptyStructure; end

    # Describes the compliance status for the account. An account is
    # considered noncompliant if it includes resources that are not
    # protected by the specified policy or that don't comply with the
    # policy.
    #
    # @!attribute [rw] compliance_status
    #   Describes an AWS account's compliance with the AWS Firewall Manager
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] violator_count
    #   The number of resources that are noncompliant with the specified
    #   policy. For AWS WAF and Shield Advanced policies, a resource is
    #   considered noncompliant if it is not associated with the policy. For
    #   security group policies, a resource is considered noncompliant if it
    #   doesn't comply with the rules of the policy and remediation is
    #   disabled or not possible.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates that over 100 resources are noncompliant with the AWS
    #   Firewall Manager policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :compliance_status,
      :violator_count,
      :evaluation_limit_exceeded)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccountRequest AWS API Documentation
    #
    class GetAdminAccountRequest < Aws::EmptyStructure; end

    # @!attribute [rw] admin_account
    #   The AWS account that is set as the AWS Firewall Manager
    #   administrator.
    #   @return [String]
    #
    # @!attribute [rw] role_status
    #   The status of the AWS account that you set as the AWS Firewall
    #   Manager administrator.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAdminAccountResponse AWS API Documentation
    #
    class GetAdminAccountResponse < Struct.new(
      :admin_account,
      :role_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAppsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #         default_list: false,
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the AWS Firewall Manager applications list that you want
    #   the details for.
    #   @return [String]
    #
    # @!attribute [rw] default_list
    #   Specifies whether the list to retrieve is a default list owned by
    #   AWS Firewall Manager.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAppsListRequest AWS API Documentation
    #
    class GetAppsListRequest < Struct.new(
      :list_id,
      :default_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_list
    #   Information about the specified AWS Firewall Manager applications
    #   list.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] apps_list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetAppsListResponse AWS API Documentation
    #
    class GetAppsListResponse < Struct.new(
      :apps_list,
      :apps_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetComplianceDetailRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account: "AWSAccountId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that you want to get the details for.
    #   `PolicyId` is returned by `PutPolicy` and by `ListPolicies`.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The AWS account that owns the resources that you want to get the
    #   details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetailRequest AWS API Documentation
    #
    class GetComplianceDetailRequest < Struct.new(
      :policy_id,
      :member_account)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_compliance_detail
    #   Information about the resources and the policy that you specified in
    #   the `GetComplianceDetail` request.
    #   @return [Types::PolicyComplianceDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetComplianceDetailResponse AWS API Documentation
    #
    class GetComplianceDetailResponse < Struct.new(
      :policy_compliance_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannelRequest AWS API Documentation
    #
    class GetNotificationChannelRequest < Aws::EmptyStructure; end

    # @!attribute [rw] sns_topic_arn
    #   The SNS topic that records AWS Firewall Manager activity.
    #   @return [String]
    #
    # @!attribute [rw] sns_role_name
    #   The IAM role that is used by AWS Firewall Manager to record activity
    #   to SNS.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetNotificationChannelResponse AWS API Documentation
    #
    class GetNotificationChannelResponse < Struct.new(
      :sns_topic_arn,
      :sns_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Information about the specified AWS Firewall Manager policy.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the specified policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProtectionStatusRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account_id: "AWSAccountId",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy for which you want to get the attack
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] member_account_id
    #   The AWS account that is in scope of the policy that you want to get
    #   the details for.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The start of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number`
    #   type because the default used by AWS Firewall Manager is Unix time
    #   in seconds. However, any valid `timestamp` format is allowed.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   The end of the time period to query for the attacks. This is a
    #   `timestamp` type. The request syntax listing indicates a `number`
    #   type because the default used by AWS Firewall Manager is Unix time
    #   in seconds. However, any valid `timestamp` format is allowed.
    #   @return [Time]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more objects
    #   than the number that you specify for `MaxResults`, AWS Firewall
    #   Manager returns a `NextToken` value in the response, which you can
    #   use to retrieve another group of objects. For the second and
    #   subsequent `GetProtectionStatus` requests, specify the value of
    #   `NextToken` from the previous response to get information about
    #   another batch of objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of objects that you want AWS Firewall Manager
    #   to return for this request. If you have more objects than the number
    #   that you specify for `MaxResults`, the response includes a
    #   `NextToken` value that you can use to get another batch of objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtectionStatusRequest AWS API Documentation
    #
    class GetProtectionStatusRequest < Struct.new(
      :policy_id,
      :member_account_id,
      :start_time,
      :end_time,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_id
    #   The ID of the AWS Firewall administrator account for this policy.
    #   @return [String]
    #
    # @!attribute [rw] service_type
    #   The service type that is protected by the policy. Currently, this is
    #   always `SHIELD_ADVANCED`.
    #   @return [String]
    #
    # @!attribute [rw] data
    #   Details about the attack, including the following:
    #
    #   * Attack type
    #
    #   * Account ID
    #
    #   * ARN of the resource attacked
    #
    #   * Start time of the attack
    #
    #   * End time of the attack (ongoing attacks will not have an end time)
    #
    #   The details are in JSON format.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you have more objects than the number that you specified for
    #   `MaxResults` in the request, the response includes a `NextToken`
    #   value. To list more objects, submit another `GetProtectionStatus`
    #   request, and specify the `NextToken` value from the response in the
    #   `NextToken` value in the next request.
    #
    #   AWS SDKs provide auto-pagination that identify `NextToken` in a
    #   response and make subsequent request calls automatically on your
    #   behalf. However, this feature is not supported by
    #   `GetProtectionStatus`. You must submit subsequent requests with
    #   `NextToken` using your own processes.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtectionStatusResponse AWS API Documentation
    #
    class GetProtectionStatusResponse < Struct.new(
      :admin_account_id,
      :service_type,
      :data,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId", # required
    #         default_list: false,
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the AWS Firewall Manager protocols list that you want the
    #   details for.
    #   @return [String]
    #
    # @!attribute [rw] default_list
    #   Specifies whether the list to retrieve is a default list owned by
    #   AWS Firewall Manager.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtocolsListRequest AWS API Documentation
    #
    class GetProtocolsListRequest < Struct.new(
      :list_id,
      :default_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_list
    #   Information about the specified AWS Firewall Manager protocols list.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] protocols_list_arn
    #   The Amazon Resource Name (ARN) of the specified protocols list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetProtocolsListResponse AWS API Documentation
    #
    class GetProtocolsListResponse < Struct.new(
      :protocols_list,
      :protocols_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetViolationDetailsRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         member_account: "AWSAccountId", # required
    #         resource_id: "ResourceId", # required
    #         resource_type: "ResourceType", # required
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for. This currently only supports security group content audit
    #   policies.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The AWS account ID that you want the details for.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that has violations.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type. This is in the format shown in the [AWS Resource
    #   Types Reference][1]. Supported resource types are:
    #   `AWS::EC2::Instance`, `AWS::EC2::NetworkInterface`, or
    #   `AWS::EC2::SecurityGroup`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetViolationDetailsRequest AWS API Documentation
    #
    class GetViolationDetailsRequest < Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] violation_detail
    #   Violation detail for a resource.
    #   @return [Types::ViolationDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/GetViolationDetailsResponse AWS API Documentation
    #
    class GetViolationDetailsResponse < Struct.new(
      :violation_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because of a system problem, even though the
    # request was valid. Retry your request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InternalErrorException AWS API Documentation
    #
    class InternalErrorException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The parameters of the request were invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed because there was nothing to do or the operation
    # wasn't possible. For example, you might have submitted an
    # `AssociateAdminAccount` request for an account ID that was already set
    # as the AWS Firewall Manager administrator. Or you might have tried to
    # access a Region that's disabled by default, and that you need to
    # enable for the Firewall Manager administrator account and for AWS
    # Organizations before you can access it.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidOperationException AWS API Documentation
    #
    class InvalidOperationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The value of the `Type` parameter is invalid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/InvalidTypeException AWS API Documentation
    #
    class InvalidTypeException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation exceeds a resource limit, for example, the maximum
    # number of `policy` objects that you can create for an AWS account. For
    # more information, see [Firewall Manager Limits][1] in the *AWS WAF
    # Developer Guide*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/LimitExceededException AWS API Documentation
    #
    class LimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAppsListsRequest
    #   data as a hash:
    #
    #       {
    #         default_lists: false,
    #         next_token: "PaginationToken",
    #         max_results: 1, # required
    #       }
    #
    # @!attribute [rw] default_lists
    #   Specifies whether the lists to retrieve are default lists owned by
    #   AWS Firewall Manager.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, AWS Firewall Manager returns
    #   this token in the response. For all but the first request, you
    #   provide the token returned by the prior request in the request
    #   parameters, to retrieve the next batch of objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want AWS Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, AWS Firewall Manager provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, AWS Firewall Manager returns all
    #   available objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListAppsListsRequest AWS API Documentation
    #
    class ListAppsListsRequest < Struct.new(
      :default_lists,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_lists
    #   An array of `AppsListDataSummary` objects.
    #   @return [Array<Types::AppsListDataSummary>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, AWS Firewall Manager returns
    #   this token in the response. You can use this token in subsequent
    #   requests to retrieve the next batch of objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListAppsListsResponse AWS API Documentation
    #
    class ListAppsListsResponse < Struct.new(
      :apps_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListComplianceStatusRequest
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId", # required
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy that you want the details
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicyComplianceStatus` objects than the number that you specify
    #   for `MaxResults`, AWS Firewall Manager returns a `NextToken` value
    #   in the response that allows you to list another group of
    #   `PolicyComplianceStatus` objects. For the second and subsequent
    #   `ListComplianceStatus` requests, specify the value of `NextToken`
    #   from the previous response to get information about another batch of
    #   `PolicyComplianceStatus` objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of `PolicyComplianceStatus` objects that you
    #   want AWS Firewall Manager to return for this request. If you have
    #   more `PolicyComplianceStatus` objects than the number that you
    #   specify for `MaxResults`, the response includes a `NextToken` value
    #   that you can use to get another batch of `PolicyComplianceStatus`
    #   objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatusRequest AWS API Documentation
    #
    class ListComplianceStatusRequest < Struct.new(
      :policy_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_compliance_status_list
    #   An array of `PolicyComplianceStatus` objects.
    #   @return [Array<Types::PolicyComplianceStatus>]
    #
    # @!attribute [rw] next_token
    #   If you have more `PolicyComplianceStatus` objects than the number
    #   that you specified for `MaxResults` in the request, the response
    #   includes a `NextToken` value. To list more `PolicyComplianceStatus`
    #   objects, submit another `ListComplianceStatus` request, and specify
    #   the `NextToken` value from the response in the `NextToken` value in
    #   the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListComplianceStatusResponse AWS API Documentation
    #
    class ListComplianceStatusResponse < Struct.new(
      :policy_compliance_status_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMemberAccountsRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more account
    #   IDs than the number that you specify for `MaxResults`, AWS Firewall
    #   Manager returns a `NextToken` value in the response that allows you
    #   to list another group of IDs. For the second and subsequent
    #   `ListMemberAccountsRequest` requests, specify the value of
    #   `NextToken` from the previous response to get information about
    #   another batch of member account IDs.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of member account IDs that you want AWS
    #   Firewall Manager to return for this request. If you have more IDs
    #   than the number that you specify for `MaxResults`, the response
    #   includes a `NextToken` value that you can use to get another batch
    #   of member account IDs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccountsRequest AWS API Documentation
    #
    class ListMemberAccountsRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] member_accounts
    #   An array of account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   If you have more member account IDs than the number that you
    #   specified for `MaxResults` in the request, the response includes a
    #   `NextToken` value. To list more IDs, submit another
    #   `ListMemberAccounts` request, and specify the `NextToken` value from
    #   the response in the `NextToken` value in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccountsResponse AWS API Documentation
    #
    class ListMemberAccountsResponse < Struct.new(
      :member_accounts,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         next_token: "PaginationToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` and you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, AWS Firewall Manager returns a `NextToken` value in
    #   the response that allows you to list another group of
    #   `PolicySummary` objects. For the second and subsequent
    #   `ListPolicies` requests, specify the value of `NextToken` from the
    #   previous response to get information about another batch of
    #   `PolicySummary` objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   Specifies the number of `PolicySummary` objects that you want AWS
    #   Firewall Manager to return for this request. If you have more
    #   `PolicySummary` objects than the number that you specify for
    #   `MaxResults`, the response includes a `NextToken` value that you can
    #   use to get another batch of `PolicySummary` objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_list
    #   An array of `PolicySummary` objects.
    #   @return [Array<Types::PolicySummary>]
    #
    # @!attribute [rw] next_token
    #   If you have more `PolicySummary` objects than the number that you
    #   specified for `MaxResults` in the request, the response includes a
    #   `NextToken` value. To list more `PolicySummary` objects, submit
    #   another `ListPolicies` request, and specify the `NextToken` value
    #   from the response in the `NextToken` value in the next request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policy_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListProtocolsListsRequest
    #   data as a hash:
    #
    #       {
    #         default_lists: false,
    #         next_token: "PaginationToken",
    #         max_results: 1, # required
    #       }
    #
    # @!attribute [rw] default_lists
    #   Specifies whether the lists to retrieve are default lists owned by
    #   AWS Firewall Manager.
    #   @return [Boolean]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, AWS Firewall Manager returns
    #   this token in the response. For all but the first request, you
    #   provide the token returned by the prior request in the request
    #   parameters, to retrieve the next batch of objects.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects that you want AWS Firewall Manager to
    #   return for this request. If more objects are available, in the
    #   response, AWS Firewall Manager provides a `NextToken` value that you
    #   can use in a subsequent call to get the next batch of objects.
    #
    #   If you don't specify this, AWS Firewall Manager returns all
    #   available objects.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListProtocolsListsRequest AWS API Documentation
    #
    class ListProtocolsListsRequest < Struct.new(
      :default_lists,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_lists
    #   An array of `ProtocolsListDataSummary` objects.
    #   @return [Array<Types::ProtocolsListDataSummary>]
    #
    # @!attribute [rw] next_token
    #   If you specify a value for `MaxResults` in your list request, and
    #   you have more objects than the maximum, AWS Firewall Manager returns
    #   this token in the response. You can use this token in subsequent
    #   requests to retrieve the next batch of objects.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListProtocolsListsResponse AWS API Documentation
    #
    class ListProtocolsListsResponse < Struct.new(
      :protocols_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The AWS Firewall Manager resources that support tagging are
    #   policies, applications lists, and protocols lists.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # The reference rule that partially matches the `ViolationTarget` rule
    # and violation reason.
    #
    # @!attribute [rw] reference
    #   The reference rule from the master security group of the AWS
    #   Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] target_violation_reasons
    #   The violation reason.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PartialMatch AWS API Documentation
    #
    class PartialMatch < Struct.new(
      :reference,
      :target_violation_reasons)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Firewall Manager policy.
    #
    # @note When making an API call, you may pass Policy
    #   data as a hash:
    #
    #       {
    #         policy_id: "PolicyId",
    #         policy_name: "ResourceName", # required
    #         policy_update_token: "PolicyUpdateToken",
    #         security_service_policy_data: { # required
    #           type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT
    #           managed_service_data: "ManagedServiceData",
    #         },
    #         resource_type: "ResourceType", # required
    #         resource_type_list: ["ResourceType"],
    #         resource_tags: [
    #           {
    #             key: "ResourceTagKey", # required
    #             value: "ResourceTagValue",
    #           },
    #         ],
    #         exclude_resource_tags: false, # required
    #         remediation_enabled: false, # required
    #         include_map: {
    #           "ACCOUNT" => ["CustomerPolicyScopeId"],
    #         },
    #         exclude_map: {
    #           "ACCOUNT" => ["CustomerPolicyScopeId"],
    #         },
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_update_token
    #   A unique identifier for each update to the policy. When issuing a
    #   `PutPolicy` request, the `PolicyUpdateToken` in the request must
    #   match the `PolicyUpdateToken` of the current policy version. To get
    #   the `PolicyUpdateToken` of the current policy version, use a
    #   `GetPolicy` request.
    #   @return [String]
    #
    # @!attribute [rw] security_service_policy_data
    #   Details about the security service that is being used to protect the
    #   resources.
    #   @return [Types::SecurityServicePolicyData]
    #
    # @!attribute [rw] resource_type
    #   The type of resource protected by or in scope of the policy. This is
    #   in the format shown in the [AWS Resource Types Reference][1]. For
    #   AWS WAF and Shield Advanced, examples include
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer` and
    #   `AWS::CloudFront::Distribution`. For a security group common policy,
    #   valid values are `AWS::EC2::NetworkInterface` and
    #   `AWS::EC2::Instance`. For a security group content audit policy,
    #   valid values are `AWS::EC2::SecurityGroup`,
    #   `AWS::EC2::NetworkInterface`, and `AWS::EC2::Instance`. For a
    #   security group usage audit policy, the value is
    #   `AWS::EC2::SecurityGroup`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] resource_type_list
    #   An array of `ResourceType`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_tags
    #   An array of `ResourceTag` objects.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] exclude_resource_tags
    #   If set to `True`, resources with the tags that are specified in the
    #   `ResourceTag` array are not in scope of the policy. If set to
    #   `False`, and the `ResourceTag` array is not null, only resources
    #   with the specified tags are in scope of the policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediation_enabled
    #   Indicates if the policy should be automatically applied to new
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_map
    #   Specifies the AWS account IDs and AWS Organizations organizational
    #   units (OUs) to include in the policy. Specifying an OU is the
    #   equivalent of specifying all accounts in the OU and in any of its
    #   child OUs, including any child OUs and accounts that are added at a
    #   later time.
    #
    #   You can specify inclusions or exclusions, but not both. If you
    #   specify an `IncludeMap`, AWS Firewall Manager applies the policy to
    #   all accounts specified by the `IncludeMap`, and does not evaluate
    #   any `ExcludeMap` specifications. If you do not specify an
    #   `IncludeMap`, then Firewall Manager applies the policy to all
    #   accounts except for those specified by the `ExcludeMap`.
    #
    #   You can specify account IDs, OUs, or a combination:
    #
    #   * Specify account IDs by setting the key to `ACCOUNT`. For example,
    #     the following is a valid map: `\{“ACCOUNT” : [“accountID1”,
    #     “accountID2”]\}`.
    #
    #   * Specify OUs by setting the key to `ORG_UNIT`. For example, the
    #     following is a valid map: `\{“ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #
    #   * Specify accounts and OUs together in a single map, separated with
    #     a comma. For example, the following is a valid map: `\{“ACCOUNT” :
    #     [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] exclude_map
    #   Specifies the AWS account IDs and AWS Organizations organizational
    #   units (OUs) to exclude from the policy. Specifying an OU is the
    #   equivalent of specifying all accounts in the OU and in any of its
    #   child OUs, including any child OUs and accounts that are added at a
    #   later time.
    #
    #   You can specify inclusions or exclusions, but not both. If you
    #   specify an `IncludeMap`, AWS Firewall Manager applies the policy to
    #   all accounts specified by the `IncludeMap`, and does not evaluate
    #   any `ExcludeMap` specifications. If you do not specify an
    #   `IncludeMap`, then Firewall Manager applies the policy to all
    #   accounts except for those specified by the `ExcludeMap`.
    #
    #   You can specify account IDs, OUs, or a combination:
    #
    #   * Specify account IDs by setting the key to `ACCOUNT`. For example,
    #     the following is a valid map: `\{“ACCOUNT” : [“accountID1”,
    #     “accountID2”]\}`.
    #
    #   * Specify OUs by setting the key to `ORG_UNIT`. For example, the
    #     following is a valid map: `\{“ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #
    #   * Specify accounts and OUs together in a single map, separated with
    #     a comma. For example, the following is a valid map: `\{“ACCOUNT” :
    #     [“accountID1”, “accountID2”], “ORG_UNIT” : [“ouid111”,
    #     “ouid112”]\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :policy_id,
      :policy_name,
      :policy_update_token,
      :security_service_policy_data,
      :resource_type,
      :resource_type_list,
      :resource_tags,
      :exclude_resource_tags,
      :remediation_enabled,
      :include_map,
      :exclude_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes the noncompliant resources in a member account for a
    # specific AWS Firewall Manager policy. A maximum of 100 entries are
    # displayed. If more than 100 resources are noncompliant,
    # `EvaluationLimitExceeded` is set to `True`.
    #
    # @!attribute [rw] policy_owner
    #   The AWS account that created the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] violators
    #   An array of resources that aren't protected by the AWS WAF or
    #   Shield Advanced policy or that aren't in compliance with the
    #   security group policy.
    #   @return [Array<Types::ComplianceViolator>]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates if over 100 resources are noncompliant with the AWS
    #   Firewall Manager policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] expired_at
    #   A timestamp that indicates when the returned information should be
    #   considered out of date.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as AWS WAF or
    #   AWS Config, that are causing a resource to be noncompliant. The
    #   details include the name of the dependent service and the error
    #   message received that indicates the problem with the service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicyComplianceDetail AWS API Documentation
    #
    class PolicyComplianceDetail < Struct.new(
      :policy_owner,
      :policy_id,
      :member_account,
      :violators,
      :evaluation_limit_exceeded,
      :expired_at,
      :issue_info_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates whether the account is compliant with the specified policy.
    # An account is considered noncompliant if it includes resources that
    # are not protected by the policy, for AWS WAF and Shield Advanced
    # policies, or that are noncompliant with the policy, for security group
    # policies.
    #
    # @!attribute [rw] policy_owner
    #   The AWS account that created the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the AWS Firewall Manager policy.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The member account ID.
    #   @return [String]
    #
    # @!attribute [rw] evaluation_results
    #   An array of `EvaluationResult` objects.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] last_updated
    #   Timestamp of the last update to the `EvaluationResult` objects.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as AWS WAF or
    #   AWS Config, that are causing a resource to be noncompliant. The
    #   details include the name of the dependent service and the error
    #   message received that indicates the problem with the service.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicyComplianceStatus AWS API Documentation
    #
    class PolicyComplianceStatus < Struct.new(
      :policy_owner,
      :policy_id,
      :policy_name,
      :member_account,
      :evaluation_results,
      :last_updated,
      :issue_info_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the AWS Firewall Manager policy.
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The ID of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource protected by or in scope of the policy. This is
    #   in the format shown in the [AWS Resource Types Reference][1]. For
    #   AWS WAF and Shield Advanced, examples include
    #   `AWS::ElasticLoadBalancingV2::LoadBalancer` and
    #   `AWS::CloudFront::Distribution`. For a security group common policy,
    #   valid values are `AWS::EC2::NetworkInterface` and
    #   `AWS::EC2::Instance`. For a security group content audit policy,
    #   valid values are `AWS::EC2::SecurityGroup`,
    #   `AWS::EC2::NetworkInterface`, and `AWS::EC2::Instance`. For a
    #   security group usage audit policy, the value is
    #   `AWS::EC2::SecurityGroup`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] security_service_type
    #   The service that the policy is using to protect the resources. This
    #   specifies the type of policy that is created, either an AWS WAF
    #   policy, a Shield Advanced policy, or a security group policy.
    #   @return [String]
    #
    # @!attribute [rw] remediation_enabled
    #   Indicates if the policy should be automatically applied to new
    #   resources.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :policy_arn,
      :policy_id,
      :policy_name,
      :resource_type,
      :security_service_type,
      :remediation_enabled)
      SENSITIVE = []
      include Aws::Structure
    end

    # An AWS Firewall Manager protocols list.
    #
    # @note When making an API call, you may pass ProtocolsListData
    #   data as a hash:
    #
    #       {
    #         list_id: "ListId",
    #         list_name: "ResourceName", # required
    #         list_update_token: "UpdateToken",
    #         create_time: Time.now,
    #         last_update_time: Time.now,
    #         protocols_list: ["Protocol"], # required
    #         previous_protocols_list: {
    #           "PreviousListVersion" => ["Protocol"],
    #         },
    #       }
    #
    # @!attribute [rw] list_id
    #   The ID of the AWS Firewall Manager protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the AWS Firewall Manager protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_update_token
    #   A unique identifier for each update to the list. When you update the
    #   list, the update token must match the token of the current version
    #   of the application list. You can retrieve the update token by
    #   getting the list.
    #   @return [String]
    #
    # @!attribute [rw] create_time
    #   The time that the AWS Firewall Manager protocols list was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The time that the AWS Firewall Manager protocols list was last
    #   updated.
    #   @return [Time]
    #
    # @!attribute [rw] protocols_list
    #   An array of protocols in the AWS Firewall Manager protocols list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] previous_protocols_list
    #   A map of previous version numbers to their corresponding protocol
    #   arrays.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ProtocolsListData AWS API Documentation
    #
    class ProtocolsListData < Struct.new(
      :list_id,
      :list_name,
      :list_update_token,
      :create_time,
      :last_update_time,
      :protocols_list,
      :previous_protocols_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the AWS Firewall Manager protocols list.
    #
    # @!attribute [rw] list_arn
    #   The Amazon Resource Name (ARN) of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_id
    #   The ID of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] list_name
    #   The name of the specified protocols list.
    #   @return [String]
    #
    # @!attribute [rw] protocols_list
    #   An array of protocols in the AWS Firewall Manager protocols list.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ProtocolsListDataSummary AWS API Documentation
    #
    class ProtocolsListDataSummary < Struct.new(
      :list_arn,
      :list_id,
      :list_name,
      :protocols_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutAppsListRequest
    #   data as a hash:
    #
    #       {
    #         apps_list: { # required
    #           list_id: "ListId",
    #           list_name: "ResourceName", # required
    #           list_update_token: "UpdateToken",
    #           create_time: Time.now,
    #           last_update_time: Time.now,
    #           apps_list: [ # required
    #             {
    #               app_name: "ResourceName", # required
    #               protocol: "Protocol", # required
    #               port: 1, # required
    #             },
    #           ],
    #           previous_apps_list: {
    #             "PreviousListVersion" => [
    #               {
    #                 app_name: "ResourceName", # required
    #                 protocol: "Protocol", # required
    #                 port: 1, # required
    #               },
    #             ],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] apps_list
    #   The details of the AWS Firewall Manager applications list to be
    #   created.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutAppsListRequest AWS API Documentation
    #
    class PutAppsListRequest < Struct.new(
      :apps_list,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] apps_list
    #   The details of the AWS Firewall Manager applications list.
    #   @return [Types::AppsListData]
    #
    # @!attribute [rw] apps_list_arn
    #   The Amazon Resource Name (ARN) of the applications list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutAppsListResponse AWS API Documentation
    #
    class PutAppsListResponse < Struct.new(
      :apps_list,
      :apps_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutNotificationChannelRequest
    #   data as a hash:
    #
    #       {
    #         sns_topic_arn: "ResourceArn", # required
    #         sns_role_name: "ResourceArn", # required
    #       }
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic that collects
    #   notifications from AWS Firewall Manager.
    #   @return [String]
    #
    # @!attribute [rw] sns_role_name
    #   The Amazon Resource Name (ARN) of the IAM role that allows Amazon
    #   SNS to record AWS Firewall Manager activity.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutNotificationChannelRequest AWS API Documentation
    #
    class PutNotificationChannelRequest < Struct.new(
      :sns_topic_arn,
      :sns_role_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy: { # required
    #           policy_id: "PolicyId",
    #           policy_name: "ResourceName", # required
    #           policy_update_token: "PolicyUpdateToken",
    #           security_service_policy_data: { # required
    #             type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT
    #             managed_service_data: "ManagedServiceData",
    #           },
    #           resource_type: "ResourceType", # required
    #           resource_type_list: ["ResourceType"],
    #           resource_tags: [
    #             {
    #               key: "ResourceTagKey", # required
    #               value: "ResourceTagValue",
    #             },
    #           ],
    #           exclude_resource_tags: false, # required
    #           remediation_enabled: false, # required
    #           include_map: {
    #             "ACCOUNT" => ["CustomerPolicyScopeId"],
    #           },
    #           exclude_map: {
    #             "ACCOUNT" => ["CustomerPolicyScopeId"],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] policy
    #   The details of the AWS Firewall Manager policy to be created.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] tag_list
    #   The tags to add to the AWS resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyRequest AWS API Documentation
    #
    class PutPolicyRequest < Struct.new(
      :policy,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The details of the AWS Firewall Manager policy.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyResponse AWS API Documentation
    #
    class PutPolicyResponse < Struct.new(
      :policy,
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutProtocolsListRequest
    #   data as a hash:
    #
    #       {
    #         protocols_list: { # required
    #           list_id: "ListId",
    #           list_name: "ResourceName", # required
    #           list_update_token: "UpdateToken",
    #           create_time: Time.now,
    #           last_update_time: Time.now,
    #           protocols_list: ["Protocol"], # required
    #           previous_protocols_list: {
    #             "PreviousListVersion" => ["Protocol"],
    #           },
    #         },
    #         tag_list: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] protocols_list
    #   The details of the AWS Firewall Manager protocols list to be
    #   created.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] tag_list
    #   The tags associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutProtocolsListRequest AWS API Documentation
    #
    class PutProtocolsListRequest < Struct.new(
      :protocols_list,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] protocols_list
    #   The details of the AWS Firewall Manager protocols list.
    #   @return [Types::ProtocolsListData]
    #
    # @!attribute [rw] protocols_list_arn
    #   The Amazon Resource Name (ARN) of the protocols list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutProtocolsListResponse AWS API Documentation
    #
    class PutProtocolsListResponse < Struct.new(
      :protocols_list,
      :protocols_list_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The resource tags that AWS Firewall Manager uses to determine if a
    # particular resource should be included or excluded from the AWS
    # Firewall Manager policy. Tags enable you to categorize your AWS
    # resources in different ways, for example, by purpose, owner, or
    # environment. Each tag consists of a key and an optional value.
    # Firewall Manager combines the tags with "AND" so that, if you add
    # more than one tag to a policy scope, a resource must have all the
    # specified tags to be included or excluded. For more information, see
    # [Working with Tag Editor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html
    #
    # @note When making an API call, you may pass ResourceTag
    #   data as a hash:
    #
    #       {
    #         key: "ResourceTagKey", # required
    #         value: "ResourceTagValue",
    #       }
    #
    # @!attribute [rw] key
    #   The resource tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The resource tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceTag AWS API Documentation
    #
    class ResourceTag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # Violation detail based on resource type.
    #
    # @!attribute [rw] aws_vpc_security_group_violation
    #   Violation details for security groups.
    #   @return [Types::AwsVPCSecurityGroupViolation]
    #
    # @!attribute [rw] aws_ec2_network_interface_violation
    #   Violation details for network interface.
    #   @return [Types::AwsEc2NetworkInterfaceViolation]
    #
    # @!attribute [rw] aws_ec2_instance_violation
    #   Violation details for an EC2 instance.
    #   @return [Types::AwsEc2InstanceViolation]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ResourceViolation AWS API Documentation
    #
    class ResourceViolation < Struct.new(
      :aws_vpc_security_group_violation,
      :aws_ec2_network_interface_violation,
      :aws_ec2_instance_violation)
      SENSITIVE = []
      include Aws::Structure
    end

    # Remediation option for the rule specified in the `ViolationTarget`.
    #
    # @!attribute [rw] remediation_action_type
    #   The remediation action that will be performed.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Brief description of the action that will be performed.
    #   @return [String]
    #
    # @!attribute [rw] remediation_result
    #   The final state of the rule specified in the `ViolationTarget` after
    #   it is remediated.
    #   @return [Types::SecurityGroupRuleDescription]
    #
    # @!attribute [rw] is_default_action
    #   Indicates if the current action is the default action.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityGroupRemediationAction AWS API Documentation
    #
    class SecurityGroupRemediationAction < Struct.new(
      :remediation_action_type,
      :description,
      :remediation_result,
      :is_default_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a set of permissions for a security group rule.
    #
    # @!attribute [rw] ipv4_range
    #   The IPv4 ranges for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] ipv6_range
    #   The IPv6 ranges for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] prefix_list_id
    #   The ID of the prefix list for the security group rule.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   The IP protocol name (`tcp`, `udp`, `icmp`, `icmpv6`) or number.
    #   @return [String]
    #
    # @!attribute [rw] from_port
    #   The start of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 type number. A value of `-1` indicates all ICMP/ICMPv6
    #   types.
    #   @return [Integer]
    #
    # @!attribute [rw] to_port
    #   The end of the port range for the TCP and UDP protocols, or an
    #   ICMP/ICMPv6 code. A value of `-1` indicates all ICMP/ICMPv6 codes.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityGroupRuleDescription AWS API Documentation
    #
    class SecurityGroupRuleDescription < Struct.new(
      :ipv4_range,
      :ipv6_range,
      :prefix_list_id,
      :protocol,
      :from_port,
      :to_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the security service that is being used to protect the
    # resources.
    #
    # @note When making an API call, you may pass SecurityServicePolicyData
    #   data as a hash:
    #
    #       {
    #         type: "WAF", # required, accepts WAF, WAFV2, SHIELD_ADVANCED, SECURITY_GROUPS_COMMON, SECURITY_GROUPS_CONTENT_AUDIT, SECURITY_GROUPS_USAGE_AUDIT
    #         managed_service_data: "ManagedServiceData",
    #       }
    #
    # @!attribute [rw] type
    #   The service that the policy is using to protect the resources. This
    #   specifies the type of policy that is created, either an AWS WAF
    #   policy, a Shield Advanced policy, or a security group policy. For
    #   security group policies, Firewall Manager supports one security
    #   group for each common policy and for each content audit policy. This
    #   is an adjustable limit that you can increase by contacting AWS
    #   Support.
    #   @return [String]
    #
    # @!attribute [rw] managed_service_data
    #   Details about the service that are specific to the service type, in
    #   JSON format. For service type `SHIELD_ADVANCED`, this is an empty
    #   string.
    #
    #   * Example: `WAFV2`
    #
    #     `"ManagedServiceData":
    #     "\{"type":"WAFV2","defaultAction":\{"type":"ALLOW"\},"preProcessRuleGroups":[\{"managedRuleGroupIdentifier":null,"ruleGroupArn":"rulegrouparn","overrideAction":\{"type":"COUNT"\},"excludeRules":[\{"name":"EntityName"\}],"ruleGroupType":"RuleGroup"\}],"postProcessRuleGroups":[\{"managedRuleGroupIdentifier":\{"managedRuleGroupName":"AWSManagedRulesAdminProtectionRuleSet","vendorName":"AWS"\},"ruleGroupArn":"rulegrouparn","overrideAction":\{"type":"NONE"\},"excludeRules":[],"ruleGroupType":"ManagedRuleGroup"\}],"overrideCustomerWebACLAssociation":false\}"`
    #
    #   * Example: `WAF Classic`
    #
    #     `"ManagedServiceData": "\{"type": "WAF", "ruleGroups":
    #     [\{"id": "12345678-1bcd-9012-efga-0987654321ab",
    #     "overrideAction" : \{"type": "COUNT"\}\}],
    #     "defaultAction": \{"type": "BLOCK"\}\}`
    #
    #   * Example: `SECURITY_GROUPS_COMMON`
    #
    #     `"SecurityServicePolicyData":\{"Type":"SECURITY_GROUPS_COMMON","ManagedServiceData":"\{"type":"SECURITY_GROUPS_COMMON","revertManualSecurityGroupChanges":false,"exclusiveResourceSecurityGroupManagement":false,
    #     "applyToAllEC2InstanceENIs":false,"securityGroups":[\{"id":"
    #     sg-000e55995d61a06bd"\}]\}"\},"RemediationEnabled":false,"ResourceType":"AWS::EC2::NetworkInterface"\}`
    #
    #   * Example: `SECURITY_GROUPS_CONTENT_AUDIT`
    #
    #     `"SecurityServicePolicyData":\{"Type":"SECURITY_GROUPS_CONTENT_AUDIT","ManagedServiceData":"\{"type":"SECURITY_GROUPS_CONTENT_AUDIT","securityGroups":[\{"id":"
    #     sg-000e55995d61a06bd
    #     "\}],"securityGroupAction":\{"type":"ALLOW"\}\}"\},"RemediationEnabled":false,"ResourceType":"AWS::EC2::NetworkInterface"\}`
    #
    #     The security group action for content audit can be `ALLOW` or
    #     `DENY`. For `ALLOW`, all in-scope security group rules must be
    #     within the allowed range of the policy's security group rules.
    #     For `DENY`, all in-scope security group rules must not contain a
    #     value or a range that matches a rule value or range in the policy
    #     security group.
    #
    #   * Example: `SECURITY_GROUPS_USAGE_AUDIT`
    #
    #     `"SecurityServicePolicyData":\{"Type":"SECURITY_GROUPS_USAGE_AUDIT","ManagedServiceData":"\{"type":"SECURITY_GROUPS_USAGE_AUDIT","deleteUnusedSecurityGroups":true,"coalesceRedundantSecurityGroups":true\}"\},"RemediationEnabled":false,"Resou
    #     rceType":"AWS::EC2::SecurityGroup"\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityServicePolicyData AWS API Documentation
    #
    class SecurityServicePolicyData < Struct.new(
      :type,
      :managed_service_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # A collection of key:value pairs associated with an AWS resource. The
    # key:value pair can be anything you define. Typically, the tag key
    # represents a category (such as "environment") and the tag value
    # represents a specific value within that category (such as "test,"
    # "development," or "production"). You can add up to 50 tags to each
    # AWS resource.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue", # required
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_list: [ # required
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The AWS Firewall Manager resources that support tagging are
    #   policies, applications lists, and protocols lists.
    #   @return [String]
    #
    # @!attribute [rw] tag_list
    #   The tags to add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tag_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "ResourceArn", # required
    #         tag_keys: ["TagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to return tags for.
    #   The AWS Firewall Manager resources that support tagging are
    #   policies, applications lists, and protocols lists.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # Violations for a resource based on the specified AWS Firewall Manager
    # policy and AWS account.
    #
    # @!attribute [rw] policy_id
    #   The ID of the AWS Firewall Manager policy that the violation details
    #   were requested for.
    #   @return [String]
    #
    # @!attribute [rw] member_account
    #   The AWS account that the violation details were requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID that the violation details were requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type that the violation details were requested for.
    #   @return [String]
    #
    # @!attribute [rw] resource_violations
    #   List of violations for the requested resource.
    #   @return [Array<Types::ResourceViolation>]
    #
    # @!attribute [rw] resource_tags
    #   The `ResourceTag` objects associated with the resource.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] resource_description
    #   Brief description for the requested resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ViolationDetail AWS API Documentation
    #
    class ViolationDetail < Struct.new(
      :policy_id,
      :member_account,
      :resource_id,
      :resource_type,
      :resource_violations,
      :resource_tags,
      :resource_description)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
