# frozen_string_literal: true

# This is generated code!

module Aws::AIOps
  # This module contains the types returned by client operations.
  module Types

    # <p>You don't have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation couldn't be completed because of a conflict in resource states.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>Provides a name for the investigation group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Specify the ARN of the IAM role that CloudWatch investigations will use when it gathers investigation data. The permissions in this role determine which of your resources that CloudWatch investigations will have access to during investigations.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data">How to control what data CloudWatch investigations has access to during investigations</a>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Use this structure if you want to use a customer managed KMS key to encrypt your investigation data. If you omit this parameter, CloudWatch investigations will use an Amazon Web Services key to encrypt the data. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS">Encryption of investigation data</a>.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute retention_in_days
    #   <p>Specify how long that investigation data is kept. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Retention.html">Operational investigation data retention</a>. </p> <p>If you omit this parameter, the default of 90 days is used.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>A list of key-value pairs to associate with the investigation group. You can associate as many as 50 tags with an investigation group. To be able to associate tags when you create the investigation group, you must have the <code>cloudwatch:TagResource</code> permission.</p> <p>Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values.</p>
    #   @return [Hash<String, String>]
    # @!attribute tag_key_boundaries
    #   <p>Enter the existing custom tag keys for custom applications in your system. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. For example, to discover that an Amazon ECS service depends on an Amazon RDS database, CloudWatch investigations can discover this relationship using data sources such as X-Ray and CloudWatch Application Signals. However, if you haven't deployed these features, CloudWatch investigations will attempt to identify possible relationships. Tag boundaries can be used to narrow the resources that will be discovered by CloudWatch investigations in these cases.</p> <p>You don't need to enter tags created by myApplications or CloudFormation, because CloudWatch investigations can automatically detect those tags.</p>
    #   @return [Array<String>]
    # @!attribute chatbot_notification_channel
    #   <p>Use this structure to integrate CloudWatch investigations with chat applications. This structure is a string array. For the first string, specify the ARN of an Amazon SNS topic. For the array of strings, specify the ARNs of one or more chat applications configurations that you want to associate with that topic. For more information about these configuration ARNs, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html">Getting started with Amazon Q in chat applications</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies">Resource type defined by Amazon Web Services Chatbot</a>.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute is_cloud_trail_event_history_enabled
    #   <p>Specify <code>true</code> to enable CloudWatch investigations to have access to change events that are recorded by CloudTrail. The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute cross_account_configurations
    #   <p>List of <code>sourceRoleArn</code> values that have been configured for cross-account access.</p>
    #   @return [Array<Types::CrossAccountConfiguration>]
    class CreateInvestigationGroupInput < Struct.new(
      :name,
      :role_arn,
      :encryption_configuration,
      :retention_in_days,
      :tags,
      :tag_key_boundaries,
      :chatbot_notification_channel,
      :is_cloud_trail_event_history_enabled,
      :cross_account_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute arn
    #   <p>The ARN of the investigation group that you just created.</p>
    #   @return [String]
    class CreateInvestigationGroupOutput < Struct.new(
      :arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about the cross-account configuration in the account. </p>
    # @!attribute source_role_arn
    #   <p>The ARN of an existing role which will be used to do investigations on your behalf. </p>
    #   @return [String]
    class CrossAccountConfiguration < Struct.new(
      :source_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteInvestigationGroupPolicyOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to remove the policy from.</p>
    #   @return [String]
    class DeleteInvestigationGroupPolicyRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to delete.</p>
    #   @return [String]
    class DeleteInvestigationGroupRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Use this structure to specify a customer managed KMS key to use to encrypt investigation data. </p>
    # @!attribute type
    #   <p>Displays whether investigation data is encrypted by a customer managed key or an Amazon Web Services owned key.</p>
    #   @return [String]
    # @!attribute kms_key_id
    #   <p>If the investigation group uses a customer managed key for encryption, this field displays the ID of that key.</p>
    #   @return [String]
    class EncryptionConfiguration < Struct.new(
      :type,
      :kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Access id denied for this operation, or this operation is not valid for the specified resource.</p>
    # @!attribute message
    #   @return [String]
    class ForbiddenException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to view the policy of.</p>
    #   @return [String]
    class GetInvestigationGroupPolicyRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute investigation_group_arn
    #   <p>The Amazon Resource Name (ARN) of the investigation group that you want to view the policy of.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy, in JSON format.</p>
    #   @return [String]
    class GetInvestigationGroupPolicyResponse < Struct.new(
      :investigation_group_arn,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to view. This is used to set the name of the investigation group.</p>
    #   @return [String]
    class GetInvestigationGroupRequest < Struct.new(
      :identifier,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute created_by
    #   <p>The name of the user who created the investigation group.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The date and time that the investigation group was created.</p>
    #   @return [Integer]
    # @!attribute last_modified_by
    #   <p>The name of the user who created the investigation group.</p>
    #   @return [String]
    # @!attribute last_modified_at
    #   <p>The date and time that the investigation group was most recently modified.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the investigation group.</p>
    #   @return [String]
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the investigation group.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The ARN of the IAM role that the investigation group uses for permissions to gather data.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Specifies the customer managed KMS key that the investigation group uses to encrypt data, if there is one. If not, the investigation group uses an Amazon Web Services key to encrypt the data.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute retention_in_days
    #   <p>Specifies how long that investigation data is kept.</p>
    #   @return [Integer]
    # @!attribute chatbot_notification_channel
    #   <p>This structure is a string array. The first string is the ARN of a Amazon SNS topic. The array of strings display the ARNs of chat applications configurations that are associated with that topic. For more information about these configuration ARNs, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html">Getting started with Amazon Q in chat applications</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies">Resource type defined by Amazon Web Services Chatbot</a>.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute tag_key_boundaries
    #   <p>Displays the custom tag keys for custom applications in your system that you have specified in the investigation group. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. </p>
    #   @return [Array<String>]
    # @!attribute is_cloud_trail_event_history_enabled
    #   <p>Specifies whether CloudWatch investigationshas access to change events that are recorded by CloudTrail.</p>
    #   @return [Boolean]
    # @!attribute cross_account_configurations
    #   <p>Lists the <code>AWSAccountId</code> of the accounts configured for cross-account access and the results of the last scan performed on each account.</p>
    #   @return [Array<Types::CrossAccountConfiguration>]
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
      :cross_account_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An internal server error occurred. You can try again later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Include this value, if it was returned by the previous operation, to get the next set of service operations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in one operation. If you omit this parameter, the default of 50 is used.</p>
    #   @return [Integer]
    class ListInvestigationGroupsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This structure contains information about one investigation group in the account.</p>
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the investigation group.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the investigation group.</p>
    #   @return [String]
    class ListInvestigationGroupsModel < Struct.new(
      :arn,
      :name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>Include this value in your next use of this operation to get the next set of service operations.</p>
    #   @return [String]
    # @!attribute investigation_groups
    #   <p>An array of structures, where each structure contains the information about one investigation group in the account.</p>
    #   @return [Array<Types::ListInvestigationGroupsModel>]
    class ListInvestigationGroupsOutput < Struct.new(
      :next_token,
      :investigation_groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The list of tag keys and values associated with the resource you specified.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the CloudWatch investigations resource that you want to view tags for. You can use the <code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p> <p>The ARN format for an investigation group is <code>arn:aws:aiops:<i>Region</i>:<i>account-id</i>:investigation-group:<i>investigation-group-id</i> </code>.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to assign the policy to.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy, in JSON format.</p>
    #   @return [String]
    class PutInvestigationGroupPolicyRequest < Struct.new(
      :identifier,
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute investigation_group_arn
    #   <p>The ARN of the investigation group that will use this policy.</p>
    #   @return [String]
    class PutInvestigationGroupPolicyResponse < Struct.new(
      :investigation_group_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The specified resource doesn't exist.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This request exceeds a service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource that caused the quota exception.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of resource that caused the quota exception.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>This name of the service associated with the error.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>This quota that was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to apply the tags to. You can use the <code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The list of key-value pairs to associate with the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request was throttled because of quota limits. You can try again later.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove the tags from. You can use the<code>ListInvestigationGroups</code> operation to find the ARNs of investigation groups.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The list of tag keys to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateInvestigationGroupOutput < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute identifier
    #   <p>Specify either the name or the ARN of the investigation group that you want to modify.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>Specify this field if you want to change the IAM role that CloudWatch investigations will use when it gathers investigation data. To do so, specify the ARN of the new role.</p> <p>The permissions in this role determine which of your resources that CloudWatch investigations will have access to during investigations.</p> <p>For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-Security-Data">How to control what data CloudWatch investigations has access to during investigations</a>.</p>
    #   @return [String]
    # @!attribute encryption_configuration
    #   <p>Use this structure if you want to use a customer managed KMS key to encrypt your investigation data. If you omit this parameter, CloudWatch investigations will use an Amazon Web Services key to encrypt the data. For more information, see <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Investigations-Security.html#Investigations-KMS">Encryption of investigation data</a>.</p>
    #   @return [Types::EncryptionConfiguration]
    # @!attribute tag_key_boundaries
    #   <p>Enter the existing custom tag keys for custom applications in your system. Resource tags help CloudWatch investigations narrow the search space when it is unable to discover definite relationships between resources. For example, to discover that an Amazon ECS service depends on an Amazon RDS database, CloudWatch investigations can discover this relationship using data sources such as X-Ray and CloudWatch Application Signals. However, if you haven't deployed these features, CloudWatch investigations will attempt to identify possible relationships. Tag boundaries can be used to narrow the resources that will be discovered by CloudWatch investigations in these cases.</p> <p>You don't need to enter tags created by myApplications or CloudFormation, because CloudWatch investigations can automatically detect those tags.</p>
    #   @return [Array<String>]
    # @!attribute chatbot_notification_channel
    #   <p>Use this structure to integrate CloudWatch investigations with chat applications. This structure is a string array. For the first string, specify the ARN of an Amazon SNS topic. For the array of strings, specify the ARNs of one or more chat applications configurations that you want to associate with that topic. For more information about these configuration ARNs, see <a href="https://docs.aws.amazon.com/chatbot/latest/adminguide/getting-started.html">Getting started with Amazon Q in chat applications</a> and <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awschatbot.html#awschatbot-resources-for-iam-policies">Resource type defined by Amazon Web Services Chatbot</a>.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute is_cloud_trail_event_history_enabled
    #   <p>Specify <code>true</code> to enable CloudWatch investigations to have access to change events that are recorded by CloudTrail. The default is <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute cross_account_configurations
    #   <p>Used to configure cross-account access for an investigation group. It allows the investigation group to access resources in other accounts. </p>
    #   @return [Array<Types::CrossAccountConfiguration>]
    class UpdateInvestigationGroupRequest < Struct.new(
      :identifier,
      :role_arn,
      :encryption_configuration,
      :tag_key_boundaries,
      :chatbot_notification_channel,
      :is_cloud_trail_event_history_enabled,
      :cross_account_configurations,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This operation or its parameters aren't formatted correctly.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
