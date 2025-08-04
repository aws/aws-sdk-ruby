# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AIOps
  module Types

    # You don't have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation couldn't be completed because of a conflict in
    # resource states.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   Provides a name for the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specify the ARN of the IAM role that CloudWatch investigations will
    #   use when it gathers investigation data. The permissions in this role
    #   determine which of your resources that CloudWatch investigations
    #   will have access to during investigations.
    #
    #   For more information, see [How to control what data CloudWatch
    #   investigations has access to during investigations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Use this structure if you want to use a customer managed KMS key to
    #   encrypt your investigation data. If you omit this parameter,
    #   CloudWatch investigations will use an Amazon Web Services key to
    #   encrypt the data. For more information, see [Encryption of
    #   investigation data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] retention_in_days
    #   Specify how long that investigation data is kept. For more
    #   information, see [Operational investigation data retention][1].
    #
    #   If you omit this parameter, the default of 90 days is used.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Retention.html
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   A list of key-value pairs to associate with the investigation group.
    #   You can associate as many as 50 tags with an investigation group. To
    #   be able to associate tags when you create the investigation group,
    #   you must have the `cloudwatch:TagResource` permission.
    #
    #   Tags can help you organize and categorize your resources. You can
    #   also use them to scope user permissions by granting a user
    #   permission to access or change only resources with certain tag
    #   values.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tag_key_boundaries
    #   Enter the existing custom tag keys for custom applications in your
    #   system. Resource tags help CloudWatch investigations narrow the
    #   search space when it is unable to discover definite relationships
    #   between resources. For example, to discover that an Amazon ECS
    #   service depends on an Amazon RDS database, CloudWatch investigations
    #   can discover this relationship using data sources such as X-Ray and
    #   CloudWatch Application Signals. However, if you haven't deployed
    #   these features, CloudWatch investigations will attempt to identify
    #   possible relationships. Tag boundaries can be used to narrow the
    #   resources that will be discovered by CloudWatch investigations in
    #   these cases.
    #
    #   You don't need to enter tags created by myApplications or
    #   CloudFormation, because CloudWatch investigations can automatically
    #   detect those tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] chatbot_notification_channel
    #   Use this structure to integrate CloudWatch investigations with chat
    #   applications. This structure is a string array. For the first
    #   string, specify the ARN of an Amazon SNS topic. For the array of
    #   strings, specify the ARNs of one or more chat applications
    #   configurations that you want to associate with that topic. For more
    #   information about these configuration ARNs, see [Getting started
    #   with Amazon Q in chat applications][1] and [Resource type defined by
    #   Amazon Web Services Chatbot][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] is_cloud_trail_event_history_enabled
    #   Specify `true` to enable CloudWatch investigations to have access to
    #   change events that are recorded by CloudTrail. The default is
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_configurations
    #   List of `sourceRoleArn` values that have been configured for
    #   cross-account access.
    #   @return [Array<Types::CrossAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/CreateInvestigationGroupInput AWS API Documentation
    #
    class CreateInvestigationGroupInput < Struct.new(
      :name,
      :role_arn,
      :encryption_configuration,
      :retention_in_days,
      :tags,
      :tag_key_boundaries,
      :chatbot_notification_channel,
      :is_cloud_trail_event_history_enabled,
      :cross_account_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] arn
    #   The ARN of the investigation group that you just created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/CreateInvestigationGroupOutput AWS API Documentation
    #
    class CreateInvestigationGroupOutput < Struct.new(
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # This structure contains information about the cross-account
    # configuration in the account.
    #
    # @!attribute [rw] source_role_arn
    #   The ARN of an existing role which will be used to do investigations
    #   on your behalf.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/CrossAccountConfiguration AWS API Documentation
    #
    class CrossAccountConfiguration < Struct.new(
      :source_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/DeleteInvestigationGroupPolicyOutput AWS API Documentation
    #
    class DeleteInvestigationGroupPolicyOutput < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to remove the policy from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/DeleteInvestigationGroupPolicyRequest AWS API Documentation
    #
    class DeleteInvestigationGroupPolicyRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/DeleteInvestigationGroupRequest AWS API Documentation
    #
    class DeleteInvestigationGroupRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Use this structure to specify a customer managed KMS key to use to
    # encrypt investigation data.
    #
    # @!attribute [rw] type
    #   Displays whether investigation data is encrypted by a customer
    #   managed key or an Amazon Web Services owned key.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   If the investigation group uses a customer managed key for
    #   encryption, this field displays the ID of that key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/EncryptionConfiguration AWS API Documentation
    #
    class EncryptionConfiguration < Struct.new(
      :type,
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Access id denied for this operation, or this operation is not valid
    # for the specified resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ForbiddenException AWS API Documentation
    #
    class ForbiddenException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to view the policy of.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroupPolicyRequest AWS API Documentation
    #
    class GetInvestigationGroupPolicyRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] investigation_group_arn
    #   The Amazon Resource Name (ARN) of the investigation group that you
    #   want to view the policy of.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy, in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroupPolicyResponse AWS API Documentation
    #
    class GetInvestigationGroupPolicyResponse < Struct.new(
      :investigation_group_arn,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to view. This is used to set the name of the investigation
    #   group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroupRequest AWS API Documentation
    #
    class GetInvestigationGroupRequest < Struct.new(
      :identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_by
    #   The name of the user who created the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The date and time that the investigation group was created.
    #   @return [Integer]
    #
    # @!attribute [rw] last_modified_by
    #   The name of the user who created the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] last_modified_at
    #   The date and time that the investigation group was most recently
    #   modified.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The ARN of the IAM role that the investigation group uses for
    #   permissions to gather data.
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Specifies the customer managed KMS key that the investigation group
    #   uses to encrypt data, if there is one. If not, the investigation
    #   group uses an Amazon Web Services key to encrypt the data.
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] retention_in_days
    #   Specifies how long that investigation data is kept.
    #   @return [Integer]
    #
    # @!attribute [rw] chatbot_notification_channel
    #   This structure is a string array. The first string is the ARN of a
    #   Amazon SNS topic. The array of strings display the ARNs of chat
    #   applications configurations that are associated with that topic. For
    #   more information about these configuration ARNs, see [Getting
    #   started with Amazon Q in chat applications][1] and [Resource type
    #   defined by Amazon Web Services Chatbot][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] tag_key_boundaries
    #   Displays the custom tag keys for custom applications in your system
    #   that you have specified in the investigation group. Resource tags
    #   help CloudWatch investigations narrow the search space when it is
    #   unable to discover definite relationships between resources.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_cloud_trail_event_history_enabled
    #   Specifies whether CloudWatch investigationshas access to change
    #   events that are recorded by CloudTrail.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_configurations
    #   Lists the `AWSAccountId` of the accounts configured for
    #   cross-account access and the results of the last scan performed on
    #   each account.
    #   @return [Array<Types::CrossAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/GetInvestigationGroupResponse AWS API Documentation
    #
    class GetInvestigationGroupResponse < Struct.new(
      :created_by,
      :created_at,
      :last_modified_by,
      :last_modified_at,
      :name,
      :arn,
      :role_arn,
      :encryption_configuration,
      :retention_in_days,
      :chatbot_notification_channel,
      :tag_key_boundaries,
      :is_cloud_trail_event_history_enabled,
      :cross_account_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. You can try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Include this value, if it was returned by the previous operation, to
    #   get the next set of service operations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in one operation. If you
    #   omit this parameter, the default of 50 is used.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListInvestigationGroupsInput AWS API Documentation
    #
    class ListInvestigationGroupsInput < Struct.new(
      :next_token,
      :max_results)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # This structure contains information about one investigation group in
    # the account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the investigation group.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the investigation group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListInvestigationGroupsModel AWS API Documentation
    #
    class ListInvestigationGroupsModel < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   Include this value in your next use of this operation to get the
    #   next set of service operations.
    #   @return [String]
    #
    # @!attribute [rw] investigation_groups
    #   An array of structures, where each structure contains the
    #   information about one investigation group in the account.
    #   @return [Array<Types::ListInvestigationGroupsModel>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListInvestigationGroupsOutput AWS API Documentation
    #
    class ListInvestigationGroupsOutput < Struct.new(
      :next_token,
      :investigation_groups)
      SENSITIVE = [:next_token]
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The list of tag keys and values associated with the resource you
    #   specified.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the CloudWatch investigations resource that you want to
    #   view tags for. You can use the `ListInvestigationGroups` operation
    #   to find the ARNs of investigation groups.
    #
    #   The ARN format for an investigation group is
    #   `arn:aws:aiops:Region:account-id:investigation-group:investigation-group-id
    #   `.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to assign the policy to.
    #   @return [String]
    #
    # @!attribute [rw] policy
    #   The policy, in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/PutInvestigationGroupPolicyRequest AWS API Documentation
    #
    class PutInvestigationGroupPolicyRequest < Struct.new(
      :identifier,
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] investigation_group_arn
    #   The ARN of the investigation group that will use this policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/PutInvestigationGroupPolicyResponse AWS API Documentation
    #
    class PutInvestigationGroupPolicyResponse < Struct.new(
      :investigation_group_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified resource doesn't exist.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # This request exceeds a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource that caused the quota exception.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource that caused the quota exception.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   This name of the service associated with the error.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   This quota that was exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   apply the tags to. You can use the `ListInvestigationGroups`
    #   operation to find the ARNs of investigation groups.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of key-value pairs to associate with the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # The request was throttled because of quota limits. You can try again
    # later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove the tags from. You can use the`ListInvestigationGroups`
    #   operation to find the ARNs of investigation groups.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The list of tag keys to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UpdateInvestigationGroupOutput AWS API Documentation
    #
    class UpdateInvestigationGroupOutput < Aws::EmptyStructure; end

    # @!attribute [rw] identifier
    #   Specify either the name or the ARN of the investigation group that
    #   you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   Specify this field if you want to change the IAM role that
    #   CloudWatch investigations will use when it gathers investigation
    #   data. To do so, specify the ARN of the new role.
    #
    #   The permissions in this role determine which of your resources that
    #   CloudWatch investigations will have access to during investigations.
    #
    #   For more information, see [How to control what data CloudWatch
    #   investigations has access to during investigations][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data
    #   @return [String]
    #
    # @!attribute [rw] encryption_configuration
    #   Use this structure if you want to use a customer managed KMS key to
    #   encrypt your investigation data. If you omit this parameter,
    #   CloudWatch investigations will use an Amazon Web Services key to
    #   encrypt the data. For more information, see [Encryption of
    #   investigation data][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS
    #   @return [Types::EncryptionConfiguration]
    #
    # @!attribute [rw] tag_key_boundaries
    #   Enter the existing custom tag keys for custom applications in your
    #   system. Resource tags help CloudWatch investigations narrow the
    #   search space when it is unable to discover definite relationships
    #   between resources. For example, to discover that an Amazon ECS
    #   service depends on an Amazon RDS database, CloudWatch investigations
    #   can discover this relationship using data sources such as X-Ray and
    #   CloudWatch Application Signals. However, if you haven't deployed
    #   these features, CloudWatch investigations will attempt to identify
    #   possible relationships. Tag boundaries can be used to narrow the
    #   resources that will be discovered by CloudWatch investigations in
    #   these cases.
    #
    #   You don't need to enter tags created by myApplications or
    #   CloudFormation, because CloudWatch investigations can automatically
    #   detect those tags.
    #   @return [Array<String>]
    #
    # @!attribute [rw] chatbot_notification_channel
    #   Use this structure to integrate CloudWatch investigations with chat
    #   applications. This structure is a string array. For the first
    #   string, specify the ARN of an Amazon SNS topic. For the array of
    #   strings, specify the ARNs of one or more chat applications
    #   configurations that you want to associate with that topic. For more
    #   information about these configuration ARNs, see [Getting started
    #   with Amazon Q in chat applications][1] and [Resource type defined by
    #   Amazon Web Services Chatbot][2].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html
    #   [2]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies
    #   @return [Hash<String,Array<String>>]
    #
    # @!attribute [rw] is_cloud_trail_event_history_enabled
    #   Specify `true` to enable CloudWatch investigations to have access to
    #   change events that are recorded by CloudTrail. The default is
    #   `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] cross_account_configurations
    #   Used to configure cross-account access for an investigation group.
    #   It allows the investigation group to access resources in other
    #   accounts.
    #   @return [Array<Types::CrossAccountConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/UpdateInvestigationGroupRequest AWS API Documentation
    #
    class UpdateInvestigationGroupRequest < Struct.new(
      :identifier,
      :role_arn,
      :encryption_configuration,
      :tag_key_boundaries,
      :chatbot_notification_channel,
      :is_cloud_trail_event_history_enabled,
      :cross_account_configurations)
      SENSITIVE = []
      include Aws::Structure
    end

    # This operation or its parameters aren't formatted correctly.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/aiops-2018-05-10/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

