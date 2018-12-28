# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FMS
  module Types

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
    #   The resource type. This is in the format shown in [AWS Resource
    #   Types Reference][1]. Valid values are
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
    #       }
    #
    # @!attribute [rw] policy_id
    #   The ID of the policy that you want to delete. `PolicyId` is returned
    #   by `PutPolicy` and by `ListPolicies`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_id)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/DisassociateAdminAccountRequest AWS API Documentation
    #
    class DisassociateAdminAccountRequest < Aws::EmptyStructure; end

    # Describes the compliance status for the account. An account is
    # considered non-compliant if it includes resources that are not
    # protected by the specified policy.
    #
    # @!attribute [rw] compliance_status
    #   Describes an AWS account's compliance with the AWS Firewall Manager
    #   policy.
    #   @return [String]
    #
    # @!attribute [rw] violator_count
    #   Number of resources that are non-compliant with the specified
    #   policy. A resource is considered non-compliant if it is not
    #   associated with the specified policy.
    #   @return [Integer]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates that over 100 resources are non-compliant with the AWS
    #   Firewall Manager policy.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :compliance_status,
      :violator_count,
      :evaluation_limit_exceeded)
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
    #   of member account IDs. The maximum value for `MaxResults` is 100.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/ListMemberAccountsRequest AWS API Documentation
    #
    class ListMemberAccountsRequest < Struct.new(
      :next_token,
      :max_results)
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
    #           type: "WAF", # required, accepts WAF
    #           managed_service_data: "ManagedServiceData",
    #         },
    #         resource_type: "ResourceType", # required
    #         resource_tags: [
    #           {
    #             key: "TagKey", # required
    #             value: "TagValue",
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
    #   The friendly name of the AWS Firewall Manager policy.
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
    #   The type of resource to protect with the policy, either an
    #   Application Load Balancer or a CloudFront distribution. This is in
    #   the format shown in [AWS Resource Types Reference][1]. Valid values
    #   are `AWS::ElasticLoadBalancingV2::LoadBalancer` or
    #   `AWS::CloudFront::Distribution`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] resource_tags
    #   An array of `ResourceTag` objects.
    #   @return [Array<Types::ResourceTag>]
    #
    # @!attribute [rw] exclude_resource_tags
    #   If set to `True`, resources with the tags that are specified in the
    #   `ResourceTag` array are not protected by the policy. If set to
    #   `False`, and the `ResourceTag` array is not null, only resources
    #   with the specified tags are associated with the policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] remediation_enabled
    #   Indicates if the policy should be automatically applied to new
    #   resources.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_map
    #   Specifies the AWS account IDs to include in the policy. If
    #   `IncludeMap` is null, all accounts in the AWS Organization are
    #   included in the policy. If `IncludeMap` is not null, only values
    #   listed in `IncludeMap` will be included in the policy.
    #
    #   The key to the map is `ACCOUNT`. For example, a valid `IncludeMap`
    #   would be `\{“ACCOUNT” : [“accountID1”, “accountID2”]\}`.
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] exclude_map
    #   Specifies the AWS account IDs to exclude from the policy. The
    #   `IncludeMap` values are evaluated first, with all of the appropriate
    #   account IDs added to the policy. Then the accounts listed in
    #   `ExcludeMap` are removed, resulting in the final list of accounts to
    #   add to the policy.
    #
    #   The key to the map is `ACCOUNT`. For example, a valid `ExcludeMap`
    #   would be `\{“ACCOUNT” : [“accountID1”, “accountID2”]\}`.
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
      :resource_tags,
      :exclude_resource_tags,
      :remediation_enabled,
      :include_map,
      :exclude_map)
      include Aws::Structure
    end

    # Describes the non-compliant resources in a member account for a
    # specific AWS Firewall Manager policy. A maximum of 100 entries are
    # displayed. If more than 100 resources are non-compliant,
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
    #   An array of resources that are not protected by the policy.
    #   @return [Array<Types::ComplianceViolator>]
    #
    # @!attribute [rw] evaluation_limit_exceeded
    #   Indicates if over 100 resources are non-compliant with the AWS
    #   Firewall Manager policy.
    #   @return [Boolean]
    #
    # @!attribute [rw] expired_at
    #   A time stamp that indicates when the returned information should be
    #   considered out-of-date.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as AWS WAF or
    #   AWS Config, that are causing a resource to be non-compliant. The
    #   details include the name of the dependent service and the error
    #   message recieved indicating the problem with the service.
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
      include Aws::Structure
    end

    # Indicates whether the account is compliant with the specified policy.
    # An account is considered non-compliant if it includes resources that
    # are not protected by the policy.
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
    #   The friendly name of the AWS Firewall Manager policy.
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
    #   Time stamp of the last update to the `EvaluationResult` objects.
    #   @return [Time]
    #
    # @!attribute [rw] issue_info_map
    #   Details about problems with dependent services, such as AWS WAF or
    #   AWS Config, that are causing a resource to be non-compliant. The
    #   details include the name of the dependent service and the error
    #   message recieved indicating the problem with the service.
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
    #   The friendly name of the specified policy.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource to protect with the policy, either an
    #   Application Load Balancer or a CloudFront distribution. This is in
    #   the format shown in [AWS Resource Types Reference][1]. Valid values
    #   are `AWS::ElasticLoadBalancingV2::LoadBalancer` or
    #   `AWS::CloudFront::Distribution`.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html
    #   @return [String]
    #
    # @!attribute [rw] security_service_type
    #   The service that the policy is using to protect the resources. This
    #   value is `WAF`.
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
    #             type: "WAF", # required, accepts WAF
    #             managed_service_data: "ManagedServiceData",
    #           },
    #           resource_type: "ResourceType", # required
    #           resource_tags: [
    #             {
    #               key: "TagKey", # required
    #               value: "TagValue",
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
    #       }
    #
    # @!attribute [rw] policy
    #   The details of the AWS Firewall Manager policy to be created.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyRequest AWS API Documentation
    #
    class PutPolicyRequest < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The details of the AWS Firewall Manager policy that was created.
    #   @return [Types::Policy]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy that was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/PutPolicyResponse AWS API Documentation
    #
    class PutPolicyResponse < Struct.new(
      :policy,
      :policy_arn)
      include Aws::Structure
    end

    # The resource tags that AWS Firewall Manager uses to determine if a
    # particular resource should be included or excluded from protection by
    # the AWS Firewall Manager policy. Tags enable you to categorize your
    # AWS resources in different ways, for example, by purpose, owner, or
    # environment. Each tag consists of a key and an optional value, both of
    # which you define. Tags are combined with an "OR." That is, if you
    # add more than one tag, if any of the tags matches, the resource is
    # considered a match for the include or exclude. [Working with Tag
    # Editor][1].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/awsconsolehelpdocs/latest/gsg/tag-editor.html
    #
    # @note When making an API call, you may pass ResourceTag
    #   data as a hash:
    #
    #       {
    #         key: "TagKey", # required
    #         value: "TagValue",
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
      include Aws::Structure
    end

    # Details about the security service that is being used to protect the
    # resources.
    #
    # @note When making an API call, you may pass SecurityServicePolicyData
    #   data as a hash:
    #
    #       {
    #         type: "WAF", # required, accepts WAF
    #         managed_service_data: "ManagedServiceData",
    #       }
    #
    # @!attribute [rw] type
    #   The service that the policy is using to protect the resources. This
    #   value is `WAF`.
    #   @return [String]
    #
    # @!attribute [rw] managed_service_data
    #   Details about the service. This contains `WAF` data in JSON format,
    #   as shown in the following example:
    #
    #   `ManagedServiceData": "\{"type": "WAF", "ruleGroups":
    #   [\{"id": "12345678-1bcd-9012-efga-0987654321ab",
    #   "overrideAction" : \{"type": "COUNT"\}\}], "defaultAction":
    #   \{"type": "BLOCK"\}\}`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/fms-2018-01-01/SecurityServicePolicyData AWS API Documentation
    #
    class SecurityServicePolicyData < Struct.new(
      :type,
      :managed_service_data)
      include Aws::Structure
    end

  end
end
