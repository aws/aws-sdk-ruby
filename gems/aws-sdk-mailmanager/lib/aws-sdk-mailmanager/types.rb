# frozen_string_literal: true

# This is generated code!

module Aws::MailManager
  # This module contains the types returned by client operations.
  module Types

    # <p>Occurs when a user is denied access to a specific resource or action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action to add a header to a message. When executed, this action will add the given header to the message.</p>
    # @!attribute header_name
    #   <p>The name of the header to add to an email. The header must be prefixed with "X-". Headers are added regardless of whether the header name pre-existed in the email.</p>
    #   @return [String]
    # @!attribute header_value
    #   <p>The value of the header to add to the email.</p>
    #   @return [String]
    class AddHeaderAction < Struct.new(
      :header_name,
      :header_value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An Add On instance represents a specific configuration of an Add On.</p>
    # @!attribute addon_instance_id
    #   <p>The unique ID of the Add On instance.</p>
    #   @return [String]
    # @!attribute addon_subscription_id
    #   <p>The subscription ID for the instance.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the Add On for the instance.</p>
    #   @return [String]
    # @!attribute addon_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Add On instance.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the Add On instance was created.</p>
    #   @return [Time]
    class AddonInstance < Struct.new(
      :addon_instance_id,
      :addon_subscription_id,
      :addon_name,
      :addon_instance_arn,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A subscription for an Add On representing the acceptance of its terms of use and additional pricing.</p>
    # @!attribute addon_subscription_id
    #   <p>The unique ID of the Add On subscription.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the Add On.</p>
    #   @return [String]
    # @!attribute addon_subscription_arn
    #   <p>The Amazon Resource Name (ARN) of the Add On subscription.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the Add On subscription was created.</p>
    #   @return [Time]
    class AddonSubscription < Struct.new(
      :addon_subscription_id,
      :addon_name,
      :addon_subscription_arn,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Filtering options for ListMembersOfAddressList operation.</p>
    # @!attribute address_prefix
    #   <p>Filter to limit the results to addresses having the provided prefix.</p>
    #   @return [String]
    class AddressFilter < Struct.new(
      :address_prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An address list contains a list of emails and domains that are used in MailManager Ingress endpoints and Rules for email management.</p>
    # @!attribute address_list_id
    #   <p>The identifier of the address list.</p>
    #   @return [String]
    # @!attribute address_list_arn
    #   <p>The Amazon Resource Name (ARN) of the address list.</p>
    #   @return [String]
    # @!attribute address_list_name
    #   <p>The user-friendly name of the address list.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the address list was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the address list was last updated.</p>
    #   @return [Time]
    class AddressList < Struct.new(
      :address_list_id,
      :address_list_arn,
      :address_list_name,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The result of an analysis can be used in conditions to trigger actions. Analyses can inspect the email content and report a certain aspect of the email.</p>
    # @!attribute analyzer
    #   <p>The Amazon Resource Name (ARN) of an Add On.</p>
    #   @return [String]
    # @!attribute result_field
    #   <p>The returned value from an Add On.</p>
    #   @return [String]
    class Analysis < Struct.new(
      :analyzer,
      :result_field,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An archive resource for storing and retaining emails.</p>
    # @!attribute archive_id
    #   <p>The unique identifier of the archive.</p>
    #   @return [String]
    # @!attribute archive_name
    #   <p>The unique name assigned to the archive.</p>
    #   @return [String]
    # @!attribute archive_state
    #   <p>The current state of the archive:</p> <ul> <li> <p> <code>ACTIVE</code> – The archive is ready and available for use. </p> </li> <li> <p> <code>PENDING_DELETION</code> – The archive has been marked for deletion and will be permanently deleted in 30 days. No further modifications can be made in this state. </p> </li> </ul>
    #   @return [String]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the archive was last updated.</p>
    #   @return [Time]
    class Archive < Struct.new(
      :archive_id,
      :archive_name,
      :archive_state,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action to archive the email by delivering the email to an Amazon SES archive.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified archive has been deleted.</p>
    #   @return [String]
    # @!attribute target_archive
    #   <p>The identifier of the archive to send the email to.</p>
    #   @return [String]
    class ArchiveAction < Struct.new(
      :action_failure_policy,
      :target_archive,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A boolean expression to evaluate email attribute values.</p>
    # @!attribute evaluate
    #   <p>The email attribute value to evaluate.</p>
    #   @return [Types::ArchiveBooleanToEvaluate]
    # @!attribute operator
    #   <p>The boolean operator to use for evaluation.</p>
    #   @return [String]
    class ArchiveBooleanExpression < Struct.new(
      :evaluate,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The attribute to evaluate in a boolean expression.</p>
    # @!attribute attribute
    #   <p>The name of the email attribute to evaluate.</p>
    #   @return [String]
    class ArchiveBooleanToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < ArchiveBooleanToEvaluate; end
      class Unknown < ArchiveBooleanToEvaluate; end
    end

    # <p>A filter condition used to include or exclude emails when exporting from or searching an archive.</p>
    # @!attribute string_expression
    #   <p>A string expression to evaluate against email attributes.</p>
    #   @return [Types::ArchiveStringExpression]
    # @!attribute boolean_expression
    #   <p>A boolean expression to evaluate against email attributes.</p>
    #   @return [Types::ArchiveBooleanExpression]
    class ArchiveFilterCondition < Struct.new(
      :string_expression,
      :boolean_expression,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class StringExpression < ArchiveFilterCondition; end
      class BooleanExpression < ArchiveFilterCondition; end
      class Unknown < ArchiveFilterCondition; end
    end

    # <p>A set of filter conditions to include and/or exclude emails.</p>
    # @!attribute include
    #   <p>The filter conditions for emails to include.</p>
    #   @return [Array<Types::ArchiveFilterCondition>]
    # @!attribute unless
    #   <p>The filter conditions for emails to exclude.</p>
    #   @return [Array<Types::ArchiveFilterCondition>]
    class ArchiveFilters < Struct.new(
      :include,
      :unless,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The retention policy for an email archive that specifies how long emails are kept before being automatically deleted. </p>
    # @!attribute retention_period
    #   <p>The enum value sets the period for retaining emails in an archive.</p>
    #   @return [String]
    class ArchiveRetention < Struct.new(
      :retention_period,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class RetentionPeriod < ArchiveRetention; end
      class Unknown < ArchiveRetention; end
    end

    # <p>A string expression to evaluate an email attribute value against one or more string values.</p>
    # @!attribute evaluate
    #   <p>The attribute of the email to evaluate.</p>
    #   @return [Types::ArchiveStringToEvaluate]
    # @!attribute operator
    #   <p>The operator to use when evaluating the string values.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The list of string values to evaluate the email attribute against.</p>
    #   @return [Array<String>]
    class ArchiveStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the email attribute to evaluate in a string expression.</p>
    # @!attribute attribute
    #   <p>The name of the email attribute to evaluate.</p>
    #   @return [String]
    class ArchiveStringToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < ArchiveStringToEvaluate; end
      class Unknown < ArchiveStringToEvaluate; end
    end

    # <p>The request configuration has conflicts. For details, see the accompanying error message.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute addon_subscription_id
    #   <p>The unique ID of a previously created subscription that an Add On instance is created for. You can only have one instance per subscription.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateAddonInstanceRequest < Struct.new(
      :client_token,
      :addon_subscription_id,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_instance_id
    #   <p>The unique ID of the Add On instance created by this API.</p>
    #   @return [String]
    class CreateAddonInstanceResponse < Struct.new(
      :addon_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the Add On to subscribe to. You can only have one subscription for each Add On name.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateAddonSubscriptionRequest < Struct.new(
      :client_token,
      :addon_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_subscription_id
    #   <p>The unique ID of the Add On subscription created by this API.</p>
    #   @return [String]
    class CreateAddonSubscriptionResponse < Struct.new(
      :addon_subscription_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute address_list_id
    #   <p>The unique identifier of the address list for importing addresses to.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-friendly name for the import job.</p>
    #   @return [String]
    # @!attribute import_data_format
    #   <p>The format of the input for an import job.</p>
    #   @return [Types::ImportDataFormat]
    class CreateAddressListImportJobRequest < Struct.new(
      :client_token,
      :address_list_id,
      :name,
      :import_data_format,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the created import job.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>The pre-signed URL target for uploading the input file.</p>
    #   @return [String]
    class CreateAddressListImportJobResponse < Struct.new(
      :job_id,
      :pre_signed_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute address_list_name
    #   <p>A user-friendly name for the address list.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateAddressListRequest < Struct.new(
      :client_token,
      :address_list_name,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The identifier of the created address list.</p>
    #   @return [String]
    class CreateAddressListResponse < Struct.new(
      :address_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to create a new email archive.</p>
    # @!attribute client_token
    #   <p>A unique token Amazon SES uses to recognize retries of this request.</p>
    #   @return [String]
    # @!attribute archive_name
    #   <p>A unique name for the new archive.</p>
    #   @return [String]
    # @!attribute retention
    #   <p>The period for retaining emails in the archive before automatic deletion.</p>
    #   @return [Types::ArchiveRetention]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key for encrypting emails in the archive.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateArchiveRequest < Struct.new(
      :client_token,
      :archive_name,
      :retention,
      :kms_key_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from creating a new email archive.</p>
    # @!attribute archive_id
    #   <p>The unique identifier for the newly created archive.</p>
    #   @return [String]
    class CreateArchiveResponse < Struct.new(
      :archive_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute ingress_point_name
    #   <p>A user friendly name for an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the ingress endpoint to create.</p>
    #   @return [String]
    # @!attribute rule_set_id
    #   <p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute ingress_point_configuration
    #   <p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>
    #   @return [Types::IngressPointConfiguration]
    # @!attribute network_configuration
    #   <p>Specifies the network configuration for the ingress point. This allows you to create an IPv4-only, Dual-Stack, or PrivateLink type of ingress point. If not specified, the default network type is IPv4-only. </p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateIngressPointRequest < Struct.new(
      :client_token,
      :ingress_point_name,
      :type,
      :rule_set_id,
      :traffic_policy_id,
      :ingress_point_configuration,
      :network_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_point_id
    #   <p>The unique identifier for a previously created ingress endpoint.</p>
    #   @return [String]
    class CreateIngressPointResponse < Struct.new(
      :ingress_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute relay_name
    #   <p>The unique name of the relay resource.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The destination relay server address.</p>
    #   @return [String]
    # @!attribute server_port
    #   <p>The destination relay server port.</p>
    #   @return [Integer]
    # @!attribute authentication
    #   <p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>
    #   @return [Types::RelayAuthentication]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateRelayRequest < Struct.new(
      :client_token,
      :relay_name,
      :server_name,
      :server_port,
      :authentication,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relay_id
    #   <p>A unique identifier of the created relay resource.</p>
    #   @return [String]
    class CreateRelayResponse < Struct.new(
      :relay_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute rule_set_name
    #   <p>A user-friendly name for the rule set.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>Conditional rules that are evaluated for determining actions on email.</p>
    #   @return [Array<Types::Rule>]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateRuleSetRequest < Struct.new(
      :client_token,
      :rule_set_name,
      :rules,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_id
    #   <p>The identifier of the created rule set.</p>
    #   @return [String]
    class CreateRuleSetResponse < Struct.new(
      :rule_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique token that Amazon SES uses to recognize subsequent retries of the same request.</p>
    #   @return [String]
    # @!attribute traffic_policy_name
    #   <p>A user-friendly name for the traffic policy resource.</p>
    #   @return [String]
    # @!attribute policy_statements
    #   <p>Conditional statements for filtering email traffic.</p>
    #   @return [Array<Types::PolicyStatement>]
    # @!attribute default_action
    #   <p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>
    #   @return [String]
    # @!attribute max_message_size_bytes
    #   <p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>
    #   @return [Integer]
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class CreateTrafficPolicyRequest < Struct.new(
      :client_token,
      :traffic_policy_name,
      :policy_statements,
      :default_action,
      :max_message_size_bytes,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy resource.</p>
    #   @return [String]
    class CreateTrafficPolicyResponse < Struct.new(
      :traffic_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_instance_id
    #   <p>The Add On instance ID to delete.</p>
    #   @return [String]
    class DeleteAddonInstanceRequest < Struct.new(
      :addon_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAddonInstanceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_subscription_id
    #   <p>The Add On subscription ID to delete.</p>
    #   @return [String]
    class DeleteAddonSubscriptionRequest < Struct.new(
      :addon_subscription_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAddonSubscriptionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The identifier of an existing address list resource to delete.</p>
    #   @return [String]
    class DeleteAddressListRequest < Struct.new(
      :address_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteAddressListResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to initiate deletion of an email archive.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive to delete.</p>
    #   @return [String]
    class DeleteArchiveRequest < Struct.new(
      :archive_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response indicating if the archive deletion was successfully initiated.</p> <p>On success, returns an HTTP 200 status code. On failure, returns an error message.</p>
    class DeleteArchiveResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_point_id
    #   <p>The identifier of the ingress endpoint resource that you want to delete.</p>
    #   @return [String]
    class DeleteIngressPointRequest < Struct.new(
      :ingress_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteIngressPointResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relay_id
    #   <p>The unique relay identifier.</p>
    #   @return [String]
    class DeleteRelayRequest < Struct.new(
      :relay_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRelayResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_id
    #   <p>The identifier of an existing rule set resource to delete.</p>
    #   @return [String]
    class DeleteRuleSetRequest < Struct.new(
      :rule_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteRuleSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy that you want to delete.</p>
    #   @return [String]
    class DeleteTrafficPolicyRequest < Struct.new(
      :traffic_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteTrafficPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This action to delivers an email to a mailbox.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the mailbox ARN is no longer valid.</p>
    #   @return [String]
    # @!attribute mailbox_arn
    #   <p>The Amazon Resource Name (ARN) of a WorkMail organization to deliver the email to.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of an IAM role to use to execute this action. The role must have access to the workmail:DeliverToMailbox API.</p>
    #   @return [String]
    class DeliverToMailboxAction < Struct.new(
      :action_failure_policy,
      :mailbox_arn,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action to deliver incoming emails to an Amazon Q Business application for indexing.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified application has been deleted or the role lacks necessary permissions to call the <code>qbusiness:BatchPutDocument</code> API.</p>
    #   @return [String]
    # @!attribute application_id
    #   <p>The unique identifier of the Amazon Q Business application instance where the email content will be delivered.</p>
    #   @return [String]
    # @!attribute index_id
    #   <p>The identifier of the knowledge base index within the Amazon Q Business application where the email content will be stored and indexed.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role to use while delivering to Amazon Q Business. This role must have access to the <code>qbusiness:BatchPutDocument</code> API for the given application and index.</p>
    #   @return [String]
    class DeliverToQBusinessAction < Struct.new(
      :action_failure_policy,
      :application_id,
      :index_id,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The unique identifier of the address list to remove the address from.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The address to be removed from the address list.</p>
    #   @return [String]
    class DeregisterMemberFromAddressListRequest < Struct.new(
      :address_list_id,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeregisterMemberFromAddressListResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>This action causes processing to stop and the email to be dropped. If the action applies only to certain recipients, only those recipients are dropped, and processing continues for other recipients.</p>
    class DropAction < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The SMTP envelope information of the email.</p>
    # @!attribute helo
    #   <p>The HELO used by the host from which the email was received.</p>
    #   @return [String]
    # @!attribute from
    #   <p>The RCPT FROM given by the host from which the email was received.</p>
    #   @return [String]
    # @!attribute to
    #   <p>All SMTP TO entries given by the host from which the email was received.</p>
    #   @return [Array<String>]
    class Envelope < Struct.new(
      :helo,
      :from,
      :to,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The destination configuration for delivering exported email data.</p>
    # @!attribute s3
    #   <p>Configuration for delivering to an Amazon S3 bucket.</p>
    #   @return [Types::S3ExportDestinationConfiguration]
    class ExportDestinationConfiguration < Struct.new(
      :s3,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class S3 < ExportDestinationConfiguration; end
      class Unknown < ExportDestinationConfiguration; end
    end

    # <p>The current status of an archive export job.</p>
    # @!attribute submission_timestamp
    #   <p>The timestamp of when the export job was submitted.</p>
    #   @return [Time]
    # @!attribute completion_timestamp
    #   <p>The timestamp of when the export job completed (if finished).</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the export job.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the export job failed.</p>
    #   @return [String]
    class ExportStatus < Struct.new(
      :submission_timestamp,
      :completion_timestamp,
      :state,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary statuses of an archive export job.</p>
    # @!attribute export_id
    #   <p>The unique identifier of the export job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the export job.</p>
    #   @return [Types::ExportStatus]
    class ExportSummary < Struct.new(
      :export_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_instance_id
    #   <p>The Add On instance ID to retrieve information for.</p>
    #   @return [String]
    class GetAddonInstanceRequest < Struct.new(
      :addon_instance_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_subscription_id
    #   <p>The subscription ID associated to the instance.</p>
    #   @return [String]
    # @!attribute addon_name
    #   <p>The name of the Add On provider associated to the subscription of the instance.</p>
    #   @return [String]
    # @!attribute addon_instance_arn
    #   <p>The Amazon Resource Name (ARN) of the Add On instance.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the Add On instance was created.</p>
    #   @return [Time]
    class GetAddonInstanceResponse < Struct.new(
      :addon_subscription_id,
      :addon_name,
      :addon_instance_arn,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_subscription_id
    #   <p>The Add On subscription ID to retrieve information for.</p>
    #   @return [String]
    class GetAddonSubscriptionRequest < Struct.new(
      :addon_subscription_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_name
    #   <p>The name of the Add On for the subscription.</p>
    #   @return [String]
    # @!attribute addon_subscription_arn
    #   <p>Amazon Resource Name (ARN) for the subscription.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the Add On subscription was created.</p>
    #   @return [Time]
    class GetAddonSubscriptionResponse < Struct.new(
      :addon_name,
      :addon_subscription_arn,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the import job that needs to be retrieved.</p>
    #   @return [String]
    class GetAddressListImportJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-friendly name for the import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>The pre-signed URL target for uploading the input file.</p>
    #   @return [String]
    # @!attribute imported_items_count
    #   <p>The number of input addresses successfully imported into the address list.</p>
    #   @return [Integer]
    # @!attribute failed_items_count
    #   <p>The number of input addresses that failed to be imported into the address list.</p>
    #   @return [Integer]
    # @!attribute import_data_format
    #   <p>The format of the input for an import job.</p>
    #   @return [Types::ImportDataFormat]
    # @!attribute address_list_id
    #   <p>The unique identifier of the address list the import job was created for.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the import job was created.</p>
    #   @return [Time]
    # @!attribute start_timestamp
    #   <p>The timestamp of when the import job was started.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p>The timestamp of when the import job was completed.</p>
    #   @return [Time]
    # @!attribute error
    #   <p>The reason for failure of an import job.</p>
    #   @return [String]
    class GetAddressListImportJobResponse < Struct.new(
      :job_id,
      :name,
      :status,
      :pre_signed_url,
      :imported_items_count,
      :failed_items_count,
      :import_data_format,
      :address_list_id,
      :created_timestamp,
      :start_timestamp,
      :completed_timestamp,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The identifier of an existing address list resource to be retrieved.</p>
    #   @return [String]
    class GetAddressListRequest < Struct.new(
      :address_list_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The identifier of the address list resource.</p>
    #   @return [String]
    # @!attribute address_list_arn
    #   <p>The Amazon Resource Name (ARN) of the address list resource.</p>
    #   @return [String]
    # @!attribute address_list_name
    #   <p>A user-friendly name for the address list resource.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The date of when then address list was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The date of when the address list was last updated.</p>
    #   @return [Time]
    class GetAddressListResponse < Struct.new(
      :address_list_id,
      :address_list_arn,
      :address_list_name,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve details of a specific archive export job.</p>
    # @!attribute export_id
    #   <p>The identifier of the export job to get details for.</p>
    #   @return [String]
    class GetArchiveExportRequest < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing details of the specified archive export job.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive the email export was performed from.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The criteria used to filter emails included in the export.</p>
    #   @return [Types::ArchiveFilters]
    # @!attribute from_timestamp
    #   <p>The start of the timestamp range the exported emails cover.</p>
    #   @return [Time]
    # @!attribute to_timestamp
    #   <p>The end of the date range the exported emails cover.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of email items included in the export.</p>
    #   @return [Integer]
    # @!attribute export_destination_configuration
    #   <p>Where the exported emails are being delivered.</p>
    #   @return [Types::ExportDestinationConfiguration]
    # @!attribute status
    #   <p>The current status of the export job.</p>
    #   @return [Types::ExportStatus]
    class GetArchiveExportResponse < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :to_timestamp,
      :max_results,
      :export_destination_configuration,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get the textual content of a specific email message stored in an archive.</p>
    # @!attribute archived_message_id
    #   <p>The unique identifier of the archived email message.</p>
    #   @return [String]
    class GetArchiveMessageContentRequest < Struct.new(
      :archived_message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing the textual content of the requested archived email message.</p>
    # @!attribute body
    #   <p>The textual body content of the email message.</p>
    #   @return [Types::MessageBody]
    class GetArchiveMessageContentResponse < Struct.new(
      :body,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to get details of a specific email message stored in an archive.</p>
    # @!attribute archived_message_id
    #   <p>The unique identifier of the archived email message.</p>
    #   @return [String]
    class GetArchiveMessageRequest < Struct.new(
      :archived_message_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing details about the requested archived email message.</p>
    # @!attribute message_download_link
    #   <p>A pre-signed URL to temporarily download the full message content.</p>
    #   @return [String]
    # @!attribute metadata
    #   <p>The metadata about the email.</p>
    #   @return [Types::Metadata]
    # @!attribute envelope
    #   <p>The SMTP envelope information of the email.</p>
    #   @return [Types::Envelope]
    class GetArchiveMessageResponse < Struct.new(
      :message_download_link,
      :metadata,
      :envelope,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve details of an email archive.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive to retrieve.</p>
    #   @return [String]
    class GetArchiveRequest < Struct.new(
      :archive_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing details of the requested archive.</p>
    # @!attribute archive_id
    #   <p>The unique identifier of the archive.</p>
    #   @return [String]
    # @!attribute archive_name
    #   <p>The unique name assigned to the archive.</p>
    #   @return [String]
    # @!attribute archive_arn
    #   <p>The Amazon Resource Name (ARN) of the archive.</p>
    #   @return [String]
    # @!attribute archive_state
    #   <p>The current state of the archive:</p> <ul> <li> <p> <code>ACTIVE</code> – The archive is ready and available for use. </p> </li> <li> <p> <code>PENDING_DELETION</code> – The archive has been marked for deletion and will be permanently deleted in 30 days. No further modifications can be made in this state. </p> </li> </ul>
    #   @return [String]
    # @!attribute retention
    #   <p>The retention period for emails in this archive.</p>
    #   @return [Types::ArchiveRetention]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the archive was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the archive was modified.</p>
    #   @return [Time]
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the KMS key used to encrypt the archive.</p>
    #   @return [String]
    class GetArchiveResponse < Struct.new(
      :archive_id,
      :archive_name,
      :archive_arn,
      :archive_state,
      :retention,
      :created_timestamp,
      :last_updated_timestamp,
      :kms_key_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve details of a specific archive search job.</p>
    # @!attribute search_id
    #   <p>The identifier of the search job to get details for.</p>
    #   @return [String]
    class GetArchiveSearchRequest < Struct.new(
      :search_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing details of the specified archive search job.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive the email search was performed in.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>The criteria used to filter emails included in the search.</p>
    #   @return [Types::ArchiveFilters]
    # @!attribute from_timestamp
    #   <p>The start timestamp of the range the searched emails cover.</p>
    #   @return [Time]
    # @!attribute to_timestamp
    #   <p>The end timestamp of the range the searched emails cover.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of search results to return.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The current status of the search job.</p>
    #   @return [Types::SearchStatus]
    class GetArchiveSearchResponse < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :to_timestamp,
      :max_results,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to retrieve results from a completed archive search job.</p>
    # @!attribute search_id
    #   <p>The identifier of the completed search job.</p>
    #   @return [String]
    class GetArchiveSearchResultsRequest < Struct.new(
      :search_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing search results from a completed archive search.</p>
    # @!attribute rows
    #   <p>The list of email result objects matching the search criteria.</p>
    #   @return [Array<Types::Row>]
    class GetArchiveSearchResultsResponse < Struct.new(
      :rows,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_point_id
    #   <p>The identifier of an ingress endpoint.</p>
    #   @return [String]
    class GetIngressPointRequest < Struct.new(
      :ingress_point_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_point_id
    #   <p>The identifier of an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute ingress_point_name
    #   <p>A user friendly name for the ingress endpoint.</p>
    #   @return [String]
    # @!attribute ingress_point_arn
    #   <p>The Amazon Resource Name (ARN) of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of ingress endpoint.</p>
    #   @return [String]
    # @!attribute a_record
    #   <p> The DNS A Record that identifies your ingress endpoint. Configure your DNS Mail Exchange (MX) record with this value to route emails to Mail Manager. </p>
    #   @return [String]
    # @!attribute rule_set_id
    #   <p>The identifier of a rule set resource associated with the ingress endpoint.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy resource associated with the ingress endpoint.</p>
    #   @return [String]
    # @!attribute ingress_point_auth_configuration
    #   <p>The authentication configuration of the ingress endpoint resource.</p>
    #   @return [Types::IngressPointAuthConfiguration]
    # @!attribute network_configuration
    #   <p>The network configuration for the ingress point.</p>
    #   @return [Types::NetworkConfiguration]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the ingress endpoint was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the ingress endpoint was last updated.</p>
    #   @return [Time]
    class GetIngressPointResponse < Struct.new(
      :ingress_point_id,
      :ingress_point_name,
      :ingress_point_arn,
      :status,
      :type,
      :a_record,
      :rule_set_id,
      :traffic_policy_id,
      :ingress_point_auth_configuration,
      :network_configuration,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The unique identifier of the address list to retrieve the address from.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The address to be retrieved from the address list.</p>
    #   @return [String]
    class GetMemberOfAddressListRequest < Struct.new(
      :address_list_id,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address
    #   <p>The address retrieved from the address list.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the address was created.</p>
    #   @return [Time]
    class GetMemberOfAddressListResponse < Struct.new(
      :address,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relay_id
    #   <p>A unique relay identifier.</p>
    #   @return [String]
    class GetRelayRequest < Struct.new(
      :relay_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relay_id
    #   <p>The unique relay identifier.</p>
    #   @return [String]
    # @!attribute relay_arn
    #   <p>The Amazon Resource Name (ARN) of the relay.</p>
    #   @return [String]
    # @!attribute relay_name
    #   <p>The unique name of the relay.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The destination relay server address.</p>
    #   @return [String]
    # @!attribute server_port
    #   <p>The destination relay server port.</p>
    #   @return [Integer]
    # @!attribute authentication
    #   <p>The authentication attribute—contains the secret ARN where the customer relay server credentials are stored. </p>
    #   @return [Types::RelayAuthentication]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the relay was created.</p>
    #   @return [Time]
    # @!attribute last_modified_timestamp
    #   <p>The timestamp of when relay was last updated.</p>
    #   @return [Time]
    class GetRelayResponse < Struct.new(
      :relay_id,
      :relay_arn,
      :relay_name,
      :server_name,
      :server_port,
      :authentication,
      :created_timestamp,
      :last_modified_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_id
    #   <p>The identifier of an existing rule set to be retrieved.</p>
    #   @return [String]
    class GetRuleSetRequest < Struct.new(
      :rule_set_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_id
    #   <p>The identifier of the rule set resource.</p>
    #   @return [String]
    # @!attribute rule_set_arn
    #   <p>The Amazon Resource Name (ARN) of the rule set resource.</p>
    #   @return [String]
    # @!attribute rule_set_name
    #   <p>A user-friendly name for the rule set resource.</p>
    #   @return [String]
    # @!attribute created_date
    #   <p>The date of when then rule set was created.</p>
    #   @return [Time]
    # @!attribute last_modification_date
    #   <p>The date of when the rule set was last modified.</p>
    #   @return [Time]
    # @!attribute rules
    #   <p>The rules contained in the rule set.</p>
    #   @return [Array<Types::Rule>]
    class GetRuleSetResponse < Struct.new(
      :rule_set_id,
      :rule_set_arn,
      :rule_set_name,
      :created_date,
      :last_modification_date,
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy resource.</p>
    #   @return [String]
    class GetTrafficPolicyRequest < Struct.new(
      :traffic_policy_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policy_name
    #   <p>A user-friendly name for the traffic policy resource.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy resource.</p>
    #   @return [String]
    # @!attribute traffic_policy_arn
    #   <p>The Amazon Resource Name (ARN) of the traffic policy resource.</p>
    #   @return [String]
    # @!attribute policy_statements
    #   <p>The list of conditions which are in the traffic policy resource.</p>
    #   @return [Array<Types::PolicyStatement>]
    # @!attribute max_message_size_bytes
    #   <p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>
    #   @return [Integer]
    # @!attribute default_action
    #   <p>The default action of the traffic policy.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the traffic policy was created.</p>
    #   @return [Time]
    # @!attribute last_updated_timestamp
    #   <p>The timestamp of when the traffic policy was last updated.</p>
    #   @return [Time]
    class GetTrafficPolicyResponse < Struct.new(
      :traffic_policy_name,
      :traffic_policy_id,
      :traffic_policy_arn,
      :policy_statements,
      :max_message_size_bytes,
      :default_action,
      :created_timestamp,
      :last_updated_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The import data format contains the specifications of the input file that would be passed to the address list import job.</p>
    # @!attribute import_data_type
    #   <p>The type of file that would be passed as an input for the address list import job.</p>
    #   @return [String]
    class ImportDataFormat < Struct.new(
      :import_data_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about an import job.</p>
    # @!attribute job_id
    #   <p>The identifier of the import job.</p>
    #   @return [String]
    # @!attribute name
    #   <p>A user-friendly name for the import job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the import job.</p>
    #   @return [String]
    # @!attribute pre_signed_url
    #   <p>The pre-signed URL target for uploading the input file.</p>
    #   @return [String]
    # @!attribute imported_items_count
    #   <p>The number of addresses in the input that were successfully imported into the address list.</p>
    #   @return [Integer]
    # @!attribute failed_items_count
    #   <p>The number of addresses in the input that failed to get imported into address list.</p>
    #   @return [Integer]
    # @!attribute import_data_format
    #   <p>The format of the input for the import job.</p>
    #   @return [Types::ImportDataFormat]
    # @!attribute address_list_id
    #   <p>The unique identifier of the address list the import job was created for.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the import job was created.</p>
    #   @return [Time]
    # @!attribute start_timestamp
    #   <p>The timestamp of when the import job was started.</p>
    #   @return [Time]
    # @!attribute completed_timestamp
    #   <p>The timestamp of when the import job was completed.</p>
    #   @return [Time]
    # @!attribute error
    #   <p>The reason for failure of an import job.</p>
    #   @return [String]
    class ImportJob < Struct.new(
      :job_id,
      :name,
      :status,
      :pre_signed_url,
      :imported_items_count,
      :failed_items_count,
      :import_data_format,
      :address_list_id,
      :created_timestamp,
      :start_timestamp,
      :completed_timestamp,
      :error,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The Add On ARN and its returned value that is evaluated in a policy statement's conditional expression to either deny or block the incoming email.</p>
    # @!attribute analyzer
    #   <p>The Amazon Resource Name (ARN) of an Add On.</p>
    #   @return [String]
    # @!attribute result_field
    #   <p>The returned value from an Add On.</p>
    #   @return [String]
    class IngressAnalysis < Struct.new(
      :analyzer,
      :result_field,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure for a boolean condition matching on the incoming mail.</p>
    # @!attribute evaluate
    #   <p>The operand on which to perform a boolean condition operation.</p>
    #   @return [Types::IngressBooleanToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a boolean condition expression.</p>
    #   @return [String]
    class IngressBooleanExpression < Struct.new(
      :evaluate,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The union type representing the allowed types of operands for a boolean condition.</p>
    # @!attribute analysis
    #   <p>The structure type for a boolean condition stating the Add On ARN and its returned value.</p>
    #   @return [Types::IngressAnalysis]
    # @!attribute is_in_address_list
    #   <p>The structure type for a boolean condition that provides the address lists to evaluate incoming traffic on.</p>
    #   @return [Types::IngressIsInAddressList]
    class IngressBooleanToEvaluate < Struct.new(
      :analysis,
      :is_in_address_list,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Analysis < IngressBooleanToEvaluate; end
      class IsInAddressList < IngressBooleanToEvaluate; end
      class Unknown < IngressBooleanToEvaluate; end
    end

    # <p>The structure for an IP based condition matching on the incoming mail.</p>
    # @!attribute attribute
    #   <p>An enum type representing the allowed attribute types for an IP condition.</p>
    #   @return [String]
    class IngressIpToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < IngressIpToEvaluate; end
      class Unknown < IngressIpToEvaluate; end
    end

    # <p>The union type representing the allowed types for the left hand side of an IP condition.</p>
    # @!attribute evaluate
    #   <p>The left hand side argument of an IP condition expression.</p>
    #   @return [Types::IngressIpToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for an IP condition expression.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The right hand side argument of an IP condition expression.</p>
    #   @return [Array<String>]
    class IngressIpv4Expression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The union type representing the allowed types for the left hand side of an IPv6 condition.</p>
    # @!attribute evaluate
    #   <p>The left hand side argument of an IPv6 condition expression.</p>
    #   @return [Types::IngressIpv6ToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for an IPv6 condition expression.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The right hand side argument of an IPv6 condition expression.</p>
    #   @return [Array<String>]
    class IngressIpv6Expression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure for an IPv6 based condition matching on the incoming mail.</p>
    # @!attribute attribute
    #   <p>An enum type representing the allowed attribute types for an IPv6 condition.</p>
    #   @return [String]
    class IngressIpv6ToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < IngressIpv6ToEvaluate; end
      class Unknown < IngressIpv6ToEvaluate; end
    end

    # <p>The address lists and the address list attribute value that is evaluated in a policy statement's conditional expression to either deny or block the incoming email.</p>
    # @!attribute attribute
    #   <p>The email attribute that needs to be evaluated against the address list.</p>
    #   @return [String]
    # @!attribute address_lists
    #   <p>The address lists that will be used for evaluation.</p>
    #   @return [Array<String>]
    class IngressIsInAddressList < Struct.new(
      :attribute,
      :address_lists,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure of an ingress endpoint resource.</p>
    # @!attribute ingress_point_name
    #   <p>A user friendly name for the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute ingress_point_id
    #   <p>The identifier of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute a_record
    #   <p> The DNS A Record that identifies your ingress endpoint. Configure your DNS Mail Exchange (MX) record with this value to route emails to Mail Manager. </p>
    #   @return [String]
    class IngressPoint < Struct.new(
      :ingress_point_name,
      :ingress_point_id,
      :status,
      :type,
      :a_record,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The authentication configuration for the ingress endpoint resource.</p>
    # @!attribute ingress_point_password_configuration
    #   <p>The ingress endpoint password configuration for the ingress endpoint resource.</p>
    #   @return [Types::IngressPointPasswordConfiguration]
    # @!attribute secret_arn
    #   <p>The ingress endpoint SecretsManager::Secret ARN configuration for the ingress endpoint resource.</p>
    #   @return [String]
    class IngressPointAuthConfiguration < Struct.new(
      :ingress_point_password_configuration,
      :secret_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration of the ingress endpoint resource.</p>
    # @!attribute smtp_password
    #   <p>The password of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute secret_arn
    #   <p>The SecretsManager::Secret ARN of the ingress endpoint resource.</p>
    #   @return [String]
    class IngressPointConfiguration < Struct.new(
      :smtp_password,
      :secret_arn,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SmtpPassword < IngressPointConfiguration; end
      class SecretArn < IngressPointConfiguration; end
      class Unknown < IngressPointConfiguration; end
    end

    # <p>The password configuration of the ingress endpoint resource.</p>
    # @!attribute smtp_password_version
    #   <p>The current password expiry timestamp of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute previous_smtp_password_version
    #   <p>The previous password version of the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute previous_smtp_password_expiry_timestamp
    #   <p>The previous password expiry timestamp of the ingress endpoint resource.</p>
    #   @return [Time]
    class IngressPointPasswordConfiguration < Struct.new(
      :smtp_password_version,
      :previous_smtp_password_version,
      :previous_smtp_password_expiry_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure for a string based condition matching on the incoming mail.</p>
    # @!attribute evaluate
    #   <p>The left hand side argument of a string condition expression.</p>
    #   @return [Types::IngressStringToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a string condition expression.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The right hand side argument of a string condition expression.</p>
    #   @return [Array<String>]
    class IngressStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The union type representing the allowed types for the left hand side of a string condition.</p>
    # @!attribute attribute
    #   <p>The enum type representing the allowed attribute types for a string condition.</p>
    #   @return [String]
    # @!attribute analysis
    #   <p>The structure type for a string condition stating the Add On ARN and its returned value.</p>
    #   @return [Types::IngressAnalysis]
    class IngressStringToEvaluate < Struct.new(
      :attribute,
      :analysis,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < IngressStringToEvaluate; end
      class Analysis < IngressStringToEvaluate; end
      class Unknown < IngressStringToEvaluate; end
    end

    # <p>The structure for a TLS related condition matching on the incoming mail.</p>
    # @!attribute evaluate
    #   <p>The left hand side argument of a TLS condition expression.</p>
    #   @return [Types::IngressTlsProtocolToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a TLS condition expression.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The right hand side argument of a TLS condition expression.</p>
    #   @return [String]
    class IngressTlsProtocolExpression < Struct.new(
      :evaluate,
      :operator,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The union type representing the allowed types for the left hand side of a TLS condition.</p>
    # @!attribute attribute
    #   <p>The enum type representing the allowed attribute types for the TLS condition.</p>
    #   @return [String]
    class IngressTlsProtocolToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < IngressTlsProtocolToEvaluate; end
      class Unknown < IngressTlsProtocolToEvaluate; end
    end

    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>
    #   @return [Integer]
    class ListAddonInstancesRequest < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_instances
    #   <p>The list of ingress endpoints.</p>
    #   @return [Array<Types::AddonInstance>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListAddonInstancesResponse < Struct.new(
      :addon_instances,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints. </p>
    #   @return [Integer]
    class ListAddonSubscriptionsRequest < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addon_subscriptions
    #   <p>The list of ingress endpoints.</p>
    #   @return [Array<Types::AddonSubscription>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListAddonSubscriptionsResponse < Struct.new(
      :addon_subscriptions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The unique identifier of the address list for listing import jobs.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of import jobs that are returned per call. You can use NextToken to retrieve the next page of jobs.</p>
    #   @return [Integer]
    class ListAddressListImportJobsRequest < Struct.new(
      :address_list_id,
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute import_jobs
    #   <p>The list of import jobs.</p>
    #   @return [Array<Types::ImportJob>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListAddressListImportJobsResponse < Struct.new(
      :import_jobs,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of address list resources that are returned per call. You can use NextToken to retrieve the next page of address lists.</p>
    #   @return [Integer]
    class ListAddressListsRequest < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_lists
    #   <p>The list of address lists.</p>
    #   @return [Array<Types::AddressList>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListAddressListsResponse < Struct.new(
      :address_lists,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list archive export jobs in your account.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of archive export jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    #   @return [Integer]
    class ListArchiveExportsRequest < Struct.new(
      :archive_id,
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing a list of archive export jobs and their statuses.</p>
    # @!attribute exports
    #   <p>The list of export job identifiers and statuses.</p>
    #   @return [Array<Types::ExportSummary>]
    # @!attribute next_token
    #   <p>If present, use to retrieve the next page of results.</p>
    #   @return [String]
    class ListArchiveExportsResponse < Struct.new(
      :exports,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list archive search jobs in your account.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of archive search jobs that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    #   @return [Integer]
    class ListArchiveSearchesRequest < Struct.new(
      :archive_id,
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing a list of archive search jobs and their statuses.</p>
    # @!attribute searches
    #   <p>The list of search job identifiers and statuses.</p>
    #   @return [Array<Types::SearchSummary>]
    # @!attribute next_token
    #   <p>If present, use to retrieve the next page of results.</p>
    #   @return [String]
    class ListArchiveSearchesResponse < Struct.new(
      :searches,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to list email archives in your account.</p>
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page. </p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of archives that are returned per call. You can use NextToken to obtain further pages of archives. </p>
    #   @return [Integer]
    class ListArchivesRequest < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response containing a list of your email archives.</p>
    # @!attribute archives
    #   <p>The list of archive details.</p>
    #   @return [Array<Types::Archive>]
    # @!attribute next_token
    #   <p>If present, use to retrieve the next page of results.</p>
    #   @return [String]
    class ListArchivesResponse < Struct.new(
      :archives,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of ingress endpoint resources that are returned per call. You can use NextToken to obtain further ingress endpoints.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    class ListIngressPointsRequest < Struct.new(
      :page_size,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_points
    #   <p>The list of ingress endpoints.</p>
    #   @return [Array<Types::IngressPoint>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListIngressPointsResponse < Struct.new(
      :ingress_points,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute address_list_id
    #   <p>The unique identifier of the address list to list the addresses from.</p>
    #   @return [String]
    # @!attribute filter
    #   <p>Filter to be used to limit the results.</p>
    #   @return [Types::AddressFilter]
    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of address list members that are returned per call. You can use NextToken to retrieve the next page of members.</p>
    #   @return [Integer]
    class ListMembersOfAddressListRequest < Struct.new(
      :address_list_id,
      :filter,
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute addresses
    #   <p>The list of addresses.</p>
    #   @return [Array<Types::SavedAddress>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListMembersOfAddressListResponse < Struct.new(
      :addresses,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_size
    #   <p>The number of relays to be returned in one request.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    class ListRelaysRequest < Struct.new(
      :page_size,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relays
    #   <p>The list of returned relays.</p>
    #   @return [Array<Types::Relay>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListRelaysResponse < Struct.new(
      :relays,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    # @!attribute page_size
    #   <p>The maximum number of rule set resources that are returned per call. You can use NextToken to obtain further rule sets.</p>
    #   @return [Integer]
    class ListRuleSetsRequest < Struct.new(
      :next_token,
      :page_size,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_sets
    #   <p>The list of rule sets.</p>
    #   @return [Array<Types::RuleSet>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListRuleSetsResponse < Struct.new(
      :rule_sets,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to retrieve tags from.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute page_size
    #   <p>The maximum number of traffic policy resources that are returned per call. You can use NextToken to obtain further traffic policies.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>If you received a pagination token from a previous call to this API, you can provide it here to continue paginating through the next page of results.</p>
    #   @return [String]
    class ListTrafficPoliciesRequest < Struct.new(
      :page_size,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policies
    #   <p>The list of traffic policies.</p>
    #   @return [Array<Types::TrafficPolicy>]
    # @!attribute next_token
    #   <p>If NextToken is returned, there are more results available. The value of NextToken is a unique pagination token for each page. Make the call again using the returned token to retrieve the next page.</p>
    #   @return [String]
    class ListTrafficPoliciesResponse < Struct.new(
      :traffic_policies,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The textual body content of an email message.</p>
    # @!attribute text
    #   <p>The plain text body content of the message.</p>
    #   @return [String]
    # @!attribute html
    #   <p>The HTML body content of the message.</p>
    #   @return [String]
    # @!attribute message_malformed
    #   <p>A flag indicating if the email was malformed.</p>
    #   @return [Boolean]
    class MessageBody < Struct.new(
      :text,
      :html,
      :message_malformed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The metadata about the email.</p>
    # @!attribute timestamp
    #   <p>The timestamp of when the email was received.</p>
    #   @return [Time]
    # @!attribute ingress_point_id
    #   <p>The ID of the ingress endpoint through which the email was received.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The ID of the traffic policy that was in effect when the email was received.</p>
    #   @return [String]
    # @!attribute rule_set_id
    #   <p>The ID of the rule set that processed the email.</p>
    #   @return [String]
    # @!attribute sender_hostname
    #   <p>The name of the host from which the email was received.</p>
    #   @return [String]
    # @!attribute sender_ip_address
    #   <p>The IP address of the host from which the email was received.</p>
    #   @return [String]
    # @!attribute tls_cipher_suite
    #   <p>The TLS cipher suite used to communicate with the host from which the email was received.</p>
    #   @return [String]
    # @!attribute tls_protocol
    #   <p>The TLS protocol used to communicate with the host from which the email was received.</p>
    #   @return [String]
    # @!attribute sending_method
    #   <p>The name of the API call used when sent through a configuration set with archiving enabled.</p>
    #   @return [String]
    # @!attribute source_identity
    #   <p>The identity name used to authorize the sending action when sent through a configuration set with archiving enabled.</p>
    #   @return [String]
    # @!attribute sending_pool
    #   <p>The name of the dedicated IP pool used when sent through a configuration set with archiving enabled.</p>
    #   @return [String]
    # @!attribute configuration_set
    #   <p>The name of the configuration set used when sent through a configuration set with archiving enabled.</p>
    #   @return [String]
    # @!attribute source_arn
    #   <p>Specifies the archived email source, identified by either a Rule Set's ARN with an Archive action, or a Configuration Set's Archive ARN.</p>
    #   @return [String]
    class Metadata < Struct.new(
      :timestamp,
      :ingress_point_id,
      :traffic_policy_id,
      :rule_set_id,
      :sender_hostname,
      :sender_ip_address,
      :tls_cipher_suite,
      :tls_protocol,
      :sending_method,
      :source_identity,
      :sending_pool,
      :configuration_set,
      :source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The network type (IPv4-only, Dual-Stack, PrivateLink) of the ingress endpoint resource.</p>
    # @!attribute public_network_configuration
    #   <p>Specifies the network configuration for the public ingress point.</p>
    #   @return [Types::PublicNetworkConfiguration]
    # @!attribute private_network_configuration
    #   <p>Specifies the network configuration for the private ingress point.</p>
    #   @return [Types::PrivateNetworkConfiguration]
    class NetworkConfiguration < Struct.new(
      :public_network_configuration,
      :private_network_configuration,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class PublicNetworkConfiguration < NetworkConfiguration; end
      class PrivateNetworkConfiguration < NetworkConfiguration; end
      class Unknown < NetworkConfiguration; end
    end

    # <p>Explicitly indicate that the relay destination server does not require SMTP credential authentication.</p>
    class NoAuthentication < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The email traffic filtering conditions which are contained in a traffic policy resource.</p>
    # @!attribute string_expression
    #   <p>This represents a string based condition matching on the incoming mail. It performs the string operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>
    #   @return [Types::IngressStringExpression]
    # @!attribute ip_expression
    #   <p>This represents an IP based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>
    #   @return [Types::IngressIpv4Expression]
    # @!attribute ipv6_expression
    #   <p>This represents an IPv6 based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>
    #   @return [Types::IngressIpv6Expression]
    # @!attribute tls_expression
    #   <p>This represents a TLS based condition matching on the incoming mail. It performs the operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>
    #   @return [Types::IngressTlsProtocolExpression]
    # @!attribute boolean_expression
    #   <p>This represents a boolean type condition matching on the incoming mail. It performs the boolean operation configured in 'Operator' and evaluates the 'Protocol' object against the 'Value'.</p>
    #   @return [Types::IngressBooleanExpression]
    class PolicyCondition < Struct.new(
      :string_expression,
      :ip_expression,
      :ipv6_expression,
      :tls_expression,
      :boolean_expression,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class StringExpression < PolicyCondition; end
      class IpExpression < PolicyCondition; end
      class Ipv6Expression < PolicyCondition; end
      class TlsExpression < PolicyCondition; end
      class BooleanExpression < PolicyCondition; end
      class Unknown < PolicyCondition; end
    end

    # <p>The structure containing traffic policy conditions and actions.</p>
    # @!attribute conditions
    #   <p>The list of conditions to apply to incoming messages for filtering email traffic.</p>
    #   @return [Array<Types::PolicyCondition>]
    # @!attribute action
    #   <p>The action that informs a traffic policy resource to either allow or block the email if it matches a condition in the policy statement.</p>
    #   @return [String]
    class PolicyStatement < Struct.new(
      :conditions,
      :action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the network configuration for the private ingress point.</p>
    # @!attribute vpc_endpoint_id
    #   <p>The identifier of the VPC endpoint to associate with this private ingress point.</p>
    #   @return [String]
    class PrivateNetworkConfiguration < Struct.new(
      :vpc_endpoint_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the network configuration for the public ingress point.</p>
    # @!attribute ip_type
    #   <p>The IP address type for the public ingress point. Valid values are IPV4 and DUAL_STACK.</p>
    #   @return [String]
    class PublicNetworkConfiguration < Struct.new(
      :ip_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:ip_type] = 'IPV4' unless options.key?(:ip_type)
        super
      end
    end

    # @!attribute address_list_id
    #   <p>The unique identifier of the address list where the address should be added.</p>
    #   @return [String]
    # @!attribute address
    #   <p>The address to be added to the address list.</p>
    #   @return [String]
    class RegisterMemberToAddressListRequest < Struct.new(
      :address_list_id,
      :address,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class RegisterMemberToAddressListResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The relay resource that can be used as a rule to relay receiving emails to the destination relay server.</p>
    # @!attribute relay_id
    #   <p>The unique relay identifier.</p>
    #   @return [String]
    # @!attribute relay_name
    #   <p>The unique relay name.</p>
    #   @return [String]
    # @!attribute last_modified_timestamp
    #   <p>The timestamp of when the relay was last modified.</p>
    #   @return [Time]
    class Relay < Struct.new(
      :relay_id,
      :relay_name,
      :last_modified_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action relays the email via SMTP to another specific SMTP server.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified relay has been deleted.</p>
    #   @return [String]
    # @!attribute relay
    #   <p>The identifier of the relay resource to be used when relaying an email.</p>
    #   @return [String]
    # @!attribute mail_from
    #   <p>This action specifies whether to preserve or replace original mail from address while relaying received emails to a destination server.</p>
    #   @return [String]
    class RelayAction < Struct.new(
      :action_failure_policy,
      :relay,
      :mail_from,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored, or specify an empty NoAuthentication structure if the relay destination server does not require SMTP credential authentication.</p>
    # @!attribute secret_arn
    #   <p>The ARN of the secret created in secrets manager where the relay server's SMTP credentials are stored.</p>
    #   @return [String]
    # @!attribute no_authentication
    #   <p>Keep an empty structure if the relay destination server does not require SMTP credential authentication.</p>
    #   @return [Types::NoAuthentication]
    class RelayAuthentication < Struct.new(
      :secret_arn,
      :no_authentication,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class SecretArn < RelayAuthentication; end
      class NoAuthentication < RelayAuthentication; end
      class Unknown < RelayAuthentication; end
    end

    # <p>This action replaces the email envelope recipients with the given list of recipients. If the condition of this action applies only to a subset of recipients, only those recipients are replaced with the recipients specified in the action. The message contents and headers are unaffected by this action, only the envelope recipients are updated.</p>
    # @!attribute replace_with
    #   <p>This action specifies the replacement recipient email addresses to insert.</p>
    #   @return [Array<String>]
    class ReplaceRecipientAction < Struct.new(
      :replace_with,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when a requested resource is not found.</p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A result row containing metadata for an archived email message.</p>
    # @!attribute archived_message_id
    #   <p>The unique identifier of the archived message.</p>
    #   @return [String]
    # @!attribute received_timestamp
    #   <p>The timestamp of when the email was received.</p>
    #   @return [Time]
    # @!attribute date
    #   <p>The date the email was sent.</p>
    #   @return [String]
    # @!attribute to
    #   <p>The email addresses in the To header.</p>
    #   @return [String]
    # @!attribute from
    #   <p>The email address of the sender.</p>
    #   @return [String]
    # @!attribute cc
    #   <p>The email addresses in the CC header.</p>
    #   @return [String]
    # @!attribute subject
    #   <p>The subject header value of the email.</p>
    #   @return [String]
    # @!attribute message_id
    #   <p>The unique message ID of the email.</p>
    #   @return [String]
    # @!attribute has_attachments
    #   <p>A flag indicating if the email has attachments.</p>
    #   @return [Boolean]
    # @!attribute received_headers
    #   <p>The received headers from the email delivery path.</p>
    #   @return [Array<String>]
    # @!attribute in_reply_to
    #   <p>The email message ID this is a reply to.</p>
    #   @return [String]
    # @!attribute x_mailer
    #   <p>The user agent that sent the email.</p>
    #   @return [String]
    # @!attribute x_original_mailer
    #   <p>The original user agent that sent the email.</p>
    #   @return [String]
    # @!attribute x_priority
    #   <p>The priority level of the email.</p>
    #   @return [String]
    # @!attribute ingress_point_id
    #   <p>The ID of the ingress endpoint through which the email was received.</p>
    #   @return [String]
    # @!attribute sender_hostname
    #   <p>The name of the host from which the email was received.</p>
    #   @return [String]
    # @!attribute sender_ip_address
    #   <ul> <li> <p>Mail archived with Mail Manager: The IP address of the client that connects to the ingress endpoint.</p> </li> <li> <p>Mail sent through a configuration set with the archiving option enabled: The IP address of the client that makes the SendEmail API call.</p> </li> </ul>
    #   @return [String]
    # @!attribute envelope
    #   <p>The SMTP envelope information of the email.</p>
    #   @return [Types::Envelope]
    # @!attribute source_arn
    #   <p>Specifies the archived email source, identified by either a Rule Set's ARN with an Archive action, or a Configuration Set's Archive ARN.</p>
    #   @return [String]
    class Row < Struct.new(
      :archived_message_id,
      :received_timestamp,
      :date,
      :to,
      :from,
      :cc,
      :subject,
      :message_id,
      :has_attachments,
      :received_headers,
      :in_reply_to,
      :x_mailer,
      :x_original_mailer,
      :x_priority,
      :ingress_point_id,
      :sender_hostname,
      :sender_ip_address,
      :envelope,
      :source_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A rule contains conditions, "unless conditions" and actions. For each envelope recipient of an email, if all conditions match and none of the "unless conditions" match, then all of the actions are executed sequentially. If no conditions are provided, the rule always applies and the actions are implicitly executed. If only "unless conditions" are provided, the rule applies if the email does not match the evaluation of the "unless conditions".</p>
    # @!attribute name
    #   <p>The user-friendly name of the rule.</p>
    #   @return [String]
    # @!attribute conditions
    #   <p>The conditions of this rule. All conditions must match the email for the actions to be executed. An empty list of conditions means that all emails match, but are still subject to any "unless conditions"</p>
    #   @return [Array<Types::RuleCondition>]
    # @!attribute unless
    #   <p>The "unless conditions" of this rule. None of the conditions can match the email for the actions to be executed. If any of these conditions do match the email, then the actions are not executed.</p>
    #   @return [Array<Types::RuleCondition>]
    # @!attribute actions
    #   <p>The list of actions to execute when the conditions match the incoming email, and none of the "unless conditions" match.</p>
    #   @return [Array<Types::RuleAction>]
    class Rule < Struct.new(
      :name,
      :conditions,
      :unless,
      :actions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action for a rule to take. Only one of the contained actions can be set.</p>
    # @!attribute drop
    #   <p>This action terminates the evaluation of rules in the rule set.</p>
    #   @return [Types::DropAction]
    # @!attribute relay
    #   <p>This action relays the email to another SMTP server.</p>
    #   @return [Types::RelayAction]
    # @!attribute archive
    #   <p>This action archives the email. This can be used to deliver an email to an archive.</p>
    #   @return [Types::ArchiveAction]
    # @!attribute write_to_s3
    #   <p>This action writes the MIME content of the email to an S3 bucket.</p>
    #   @return [Types::S3Action]
    # @!attribute send
    #   <p>This action sends the email to the internet.</p>
    #   @return [Types::SendAction]
    # @!attribute add_header
    #   <p>This action adds a header. This can be used to add arbitrary email headers.</p>
    #   @return [Types::AddHeaderAction]
    # @!attribute replace_recipient
    #   <p>The action replaces certain or all recipients with a different set of recipients.</p>
    #   @return [Types::ReplaceRecipientAction]
    # @!attribute deliver_to_mailbox
    #   <p>This action delivers an email to a WorkMail mailbox.</p>
    #   @return [Types::DeliverToMailboxAction]
    # @!attribute deliver_to_q_business
    #   <p>This action delivers an email to an Amazon Q Business application for ingestion into its knowledge base.</p>
    #   @return [Types::DeliverToQBusinessAction]
    # @!attribute publish_to_sns
    #   <p>This action publishes the email content to an Amazon SNS topic.</p>
    #   @return [Types::SnsAction]
    class RuleAction < Struct.new(
      :drop,
      :relay,
      :archive,
      :write_to_s3,
      :send,
      :add_header,
      :replace_recipient,
      :deliver_to_mailbox,
      :deliver_to_q_business,
      :publish_to_sns,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Drop < RuleAction; end
      class Relay < RuleAction; end
      class Archive < RuleAction; end
      class WriteToS3 < RuleAction; end
      class Send < RuleAction; end
      class AddHeader < RuleAction; end
      class ReplaceRecipient < RuleAction; end
      class DeliverToMailbox < RuleAction; end
      class DeliverToQBusiness < RuleAction; end
      class PublishToSns < RuleAction; end
      class Unknown < RuleAction; end
    end

    # <p>A boolean expression to be used in a rule condition.</p>
    # @!attribute evaluate
    #   <p>The operand on which to perform a boolean condition operation.</p>
    #   @return [Types::RuleBooleanToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a boolean condition expression.</p>
    #   @return [String]
    class RuleBooleanExpression < Struct.new(
      :evaluate,
      :operator,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The union type representing the allowed types of operands for a boolean condition.</p>
    # @!attribute attribute
    #   <p>The boolean type representing the allowed attribute types for an email.</p>
    #   @return [String]
    # @!attribute analysis
    #   <p>The Add On ARN and its returned value to evaluate in a boolean condition expression.</p>
    #   @return [Types::Analysis]
    # @!attribute is_in_address_list
    #   <p>The structure representing the address lists and address list attribute that will be used in evaluation of boolean expression.</p>
    #   @return [Types::RuleIsInAddressList]
    class RuleBooleanToEvaluate < Struct.new(
      :attribute,
      :analysis,
      :is_in_address_list,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < RuleBooleanToEvaluate; end
      class Analysis < RuleBooleanToEvaluate; end
      class IsInAddressList < RuleBooleanToEvaluate; end
      class Unknown < RuleBooleanToEvaluate; end
    end

    # <p>The conditional expression used to evaluate an email for determining if a rule action should be taken.</p>
    # @!attribute boolean_expression
    #   <p>The condition applies to a boolean expression passed in this field.</p>
    #   @return [Types::RuleBooleanExpression]
    # @!attribute string_expression
    #   <p>The condition applies to a string expression passed in this field.</p>
    #   @return [Types::RuleStringExpression]
    # @!attribute number_expression
    #   <p>The condition applies to a number expression passed in this field.</p>
    #   @return [Types::RuleNumberExpression]
    # @!attribute ip_expression
    #   <p>The condition applies to an IP address expression passed in this field.</p>
    #   @return [Types::RuleIpExpression]
    # @!attribute verdict_expression
    #   <p>The condition applies to a verdict expression passed in this field.</p>
    #   @return [Types::RuleVerdictExpression]
    # @!attribute dmarc_expression
    #   <p>The condition applies to a DMARC policy expression passed in this field.</p>
    #   @return [Types::RuleDmarcExpression]
    class RuleCondition < Struct.new(
      :boolean_expression,
      :string_expression,
      :number_expression,
      :ip_expression,
      :verdict_expression,
      :dmarc_expression,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class BooleanExpression < RuleCondition; end
      class StringExpression < RuleCondition; end
      class NumberExpression < RuleCondition; end
      class IpExpression < RuleCondition; end
      class VerdictExpression < RuleCondition; end
      class DmarcExpression < RuleCondition; end
      class Unknown < RuleCondition; end
    end

    # <p>A DMARC policy expression. The condition matches if the given DMARC policy matches that of the incoming email.</p>
    # @!attribute operator
    #   <p>The operator to apply to the DMARC policy of the incoming email.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to use for the given DMARC policy operator. For the operator EQUALS, if multiple values are given, they are evaluated as an OR. That is, if any of the given values match, the condition is deemed to match. For the operator NOT_EQUALS, if multiple values are given, they are evaluated as an AND. That is, only if the email's DMARC policy is not equal to any of the given values, then the condition is deemed to match.</p>
    #   @return [Array<String>]
    class RuleDmarcExpression < Struct.new(
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An IP address expression matching certain IP addresses within a given range of IP addresses.</p>
    # @!attribute evaluate
    #   <p>The IP address to evaluate in this condition.</p>
    #   @return [Types::RuleIpToEvaluate]
    # @!attribute operator
    #   <p>The operator to evaluate the IP address.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The IP CIDR blocks in format "x.y.z.w/n" (eg 10.0.0.0/8) to match with the email's IP address. For the operator CIDR_MATCHES, if multiple values are given, they are evaluated as an OR. That is, if the IP address is contained within any of the given CIDR ranges, the condition is deemed to match. For NOT_CIDR_MATCHES, if multiple CIDR ranges are given, the condition is deemed to match if the IP address is not contained in any of the given CIDR ranges.</p>
    #   @return [Array<String>]
    class RuleIpExpression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The IP address to evaluate for this condition.</p>
    # @!attribute attribute
    #   <p>The attribute of the email to evaluate.</p>
    #   @return [String]
    class RuleIpToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < RuleIpToEvaluate; end
      class Unknown < RuleIpToEvaluate; end
    end

    # <p>The structure type for a boolean condition that provides the address lists and address list attribute to evaluate.</p>
    # @!attribute attribute
    #   <p>The email attribute that needs to be evaluated against the address list.</p>
    #   @return [String]
    # @!attribute address_lists
    #   <p>The address lists that will be used for evaluation.</p>
    #   @return [Array<String>]
    class RuleIsInAddressList < Struct.new(
      :attribute,
      :address_lists,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A number expression to match numeric conditions with integers from the incoming email.</p>
    # @!attribute evaluate
    #   <p>The number to evaluate in a numeric condition expression.</p>
    #   @return [Types::RuleNumberToEvaluate]
    # @!attribute operator
    #   <p>The operator for a numeric condition expression.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value to evaluate in a numeric condition expression.</p>
    #   @return [Float]
    class RuleNumberExpression < Struct.new(
      :evaluate,
      :operator,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The number to evaluate in a numeric condition expression.</p>
    # @!attribute attribute
    #   <p>An email attribute that is used as the number to evaluate.</p>
    #   @return [String]
    class RuleNumberToEvaluate < Struct.new(
      :attribute,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < RuleNumberToEvaluate; end
      class Unknown < RuleNumberToEvaluate; end
    end

    # <p>A rule set contains a list of rules that are evaluated in order. Each rule is evaluated sequentially for each email.</p>
    # @!attribute rule_set_id
    #   <p>The identifier of the rule set.</p>
    #   @return [String]
    # @!attribute rule_set_name
    #   <p>A user-friendly name for the rule set.</p>
    #   @return [String]
    # @!attribute last_modification_date
    #   <p>The last modification date of the rule set.</p>
    #   @return [Time]
    class RuleSet < Struct.new(
      :rule_set_id,
      :rule_set_name,
      :last_modification_date,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A string expression is evaluated against strings or substrings of the email.</p>
    # @!attribute evaluate
    #   <p>The string to evaluate in a string condition expression.</p>
    #   @return [Types::RuleStringToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a string condition expression.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The string(s) to be evaluated in a string condition expression. For all operators, except for NOT_EQUALS, if multiple values are given, the values are processed as an OR. That is, if any of the values match the email's string using the given operator, the condition is deemed to match. However, for NOT_EQUALS, the condition is only deemed to match if none of the given strings match the email's string.</p>
    #   @return [Array<String>]
    class RuleStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The string to evaluate in a string condition expression.</p>
    # @!attribute attribute
    #   <p>The email attribute to evaluate in a string condition expression.</p>
    #   @return [String]
    # @!attribute mime_header_attribute
    #   <p>The email MIME X-Header attribute to evaluate in a string condition expression.</p>
    #   @return [String]
    # @!attribute analysis
    #   <p>The Add On ARN and its returned value to evaluate in a string condition expression.</p>
    #   @return [Types::Analysis]
    class RuleStringToEvaluate < Struct.new(
      :attribute,
      :mime_header_attribute,
      :analysis,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < RuleStringToEvaluate; end
      class MimeHeaderAttribute < RuleStringToEvaluate; end
      class Analysis < RuleStringToEvaluate; end
      class Unknown < RuleStringToEvaluate; end
    end

    # <p>A verdict expression is evaluated against verdicts of the email.</p>
    # @!attribute evaluate
    #   <p>The verdict to evaluate in a verdict condition expression.</p>
    #   @return [Types::RuleVerdictToEvaluate]
    # @!attribute operator
    #   <p>The matching operator for a verdict condition expression.</p>
    #   @return [String]
    # @!attribute values
    #   <p>The values to match with the email's verdict using the given operator. For the EQUALS operator, if multiple values are given, the condition is deemed to match if any of the given verdicts match that of the email. For the NOT_EQUALS operator, if multiple values are given, the condition is deemed to match of none of the given verdicts match the verdict of the email.</p>
    #   @return [Array<String>]
    class RuleVerdictExpression < Struct.new(
      :evaluate,
      :operator,
      :values,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The verdict to evaluate in a verdict condition expression.</p>
    # @!attribute attribute
    #   <p>The email verdict attribute to evaluate in a string verdict expression.</p>
    #   @return [String]
    # @!attribute analysis
    #   <p>The Add On ARN and its returned value to evaluate in a verdict condition expression.</p>
    #   @return [Types::Analysis]
    class RuleVerdictToEvaluate < Struct.new(
      :attribute,
      :analysis,
      :unknown,
      keyword_init: true)
      include ::Smithy::Schema::Union

      class Attribute < RuleVerdictToEvaluate; end
      class Analysis < RuleVerdictToEvaluate; end
      class Unknown < RuleVerdictToEvaluate; end
    end

    # <p>Writes the MIME content of the email to an S3 bucket.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the specified the bucket has been deleted.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role to use while writing to S3. This role must have access to the s3:PutObject, kms:Encrypt, and kms:GenerateDataKey APIs for the given bucket.</p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p>The bucket name of the S3 bucket to write to.</p>
    #   @return [String]
    # @!attribute s3_prefix
    #   <p>The S3 prefix to use for the write to the s3 bucket.</p>
    #   @return [String]
    # @!attribute s3_sse_kms_key_id
    #   <p>The KMS Key ID to use to encrypt the message in S3.</p>
    #   @return [String]
    class S3Action < Struct.new(
      :action_failure_policy,
      :role_arn,
      :s3_bucket,
      :s3_prefix,
      :s3_sse_kms_key_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The configuration for exporting email data to an Amazon S3 bucket.</p>
    # @!attribute s3_location
    #   <p>The S3 location to deliver the exported email data.</p>
    #   @return [String]
    class S3ExportDestinationConfiguration < Struct.new(
      :s3_location,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>An address that is a member of an address list.</p>
    # @!attribute address
    #   <p>The email or domain that constitutes the address.</p>
    #   @return [String]
    # @!attribute created_timestamp
    #   <p>The timestamp of when the address was added to the address list.</p>
    #   @return [Time]
    class SavedAddress < Struct.new(
      :address,
      :created_timestamp,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The current status of an archive search job.</p>
    # @!attribute submission_timestamp
    #   <p>The timestamp of when the search was submitted.</p>
    #   @return [Time]
    # @!attribute completion_timestamp
    #   <p>The timestamp of when the search completed (if finished).</p>
    #   @return [Time]
    # @!attribute state
    #   <p>The current state of the search job.</p>
    #   @return [String]
    # @!attribute error_message
    #   <p>An error message if the search failed.</p>
    #   @return [String]
    class SearchStatus < Struct.new(
      :submission_timestamp,
      :completion_timestamp,
      :state,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Summary details of an archive search job.</p>
    # @!attribute search_id
    #   <p>The unique identifier of the search job.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the search job.</p>
    #   @return [Types::SearchStatus]
    class SearchSummary < Struct.new(
      :search_id,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sends the email to the internet using the ses:SendRawEmail API.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, the caller does not have the permissions to call the sendRawEmail API.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the role to use for this action. This role must have access to the ses:SendRawEmail API.</p>
    #   @return [String]
    class SendAction < Struct.new(
      :action_failure_policy,
      :role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Occurs when an operation exceeds a predefined service quota or limit.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The action to publish the email content to an Amazon SNS topic. When executed, this action will send the email as a notification to the specified SNS topic.</p>
    # @!attribute action_failure_policy
    #   <p>A policy that states what to do in the case of failure. The action will fail if there are configuration errors. For example, specified SNS topic has been deleted or the role lacks necessary permissions to call the <code>sns:Publish</code> API.</p>
    #   @return [String]
    # @!attribute topic_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon SNS Topic to which notification for the email received will be published.</p>
    #   @return [String]
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role to use while writing to Amazon SNS. This role must have access to the <code>sns:Publish</code> API for the given topic.</p>
    #   @return [String]
    # @!attribute encoding
    #   <p>The encoding to use for the email within the Amazon SNS notification. The default value is <code>UTF-8</code>. Use <code>BASE64</code> if you need to preserve all special characters, especially when the original message uses a different encoding format.</p>
    #   @return [String]
    # @!attribute payload_type
    #   <p>The expected payload type within the Amazon SNS notification. <code>CONTENT</code> attempts to publish the full email content with 20KB of headers content. <code>HEADERS</code> extracts up to 100KB of header content to include in the notification, email content will not be included to the notification. The default value is <code>CONTENT</code>.</p>
    #   @return [String]
    class SnsAction < Struct.new(
      :action_failure_policy,
      :topic_arn,
      :role_arn,
      :encoding,
      :payload_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:encoding] = 'UTF-8' unless options.key?(:encoding)
        options[:payload_type] = 'CONTENT' unless options.key?(:payload_type)
        super
      end
    end

    # @!attribute job_id
    #   <p>The identifier of the import job that needs to be started.</p>
    #   @return [String]
    class StartAddressListImportJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StartAddressListImportJobResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to initiate an export of emails from an archive.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive to export emails from.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Criteria to filter which emails are included in the export.</p>
    #   @return [Types::ArchiveFilters]
    # @!attribute from_timestamp
    #   <p>The start of the timestamp range to include emails from.</p>
    #   @return [Time]
    # @!attribute to_timestamp
    #   <p>The end of the timestamp range to include emails from.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of email items to include in the export.</p>
    #   @return [Integer]
    # @!attribute export_destination_configuration
    #   <p>Details on where to deliver the exported email data.</p>
    #   @return [Types::ExportDestinationConfiguration]
    # @!attribute include_metadata
    #   <p>Whether to include message metadata as JSON files in the export.</p>
    #   @return [Boolean]
    class StartArchiveExportRequest < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :to_timestamp,
      :max_results,
      :export_destination_configuration,
      :include_metadata,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from initiating an archive export.</p>
    # @!attribute export_id
    #   <p>The unique identifier for the initiated export job.</p>
    #   @return [String]
    class StartArchiveExportResponse < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to initiate a search across emails in an archive.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive to search emails in.</p>
    #   @return [String]
    # @!attribute filters
    #   <p>Criteria to filter which emails are included in the search results.</p>
    #   @return [Types::ArchiveFilters]
    # @!attribute from_timestamp
    #   <p>The start timestamp of the range to search emails from.</p>
    #   @return [Time]
    # @!attribute to_timestamp
    #   <p>The end timestamp of the range to search emails from.</p>
    #   @return [Time]
    # @!attribute max_results
    #   <p>The maximum number of search results to return.</p>
    #   @return [Integer]
    class StartArchiveSearchRequest < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :to_timestamp,
      :max_results,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response from initiating an archive search.</p>
    # @!attribute search_id
    #   <p>The unique identifier for the initiated search job.</p>
    #   @return [String]
    class StartArchiveSearchResponse < Struct.new(
      :search_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute job_id
    #   <p>The identifier of the import job that needs to be stopped.</p>
    #   @return [String]
    class StopAddressListImportJobRequest < Struct.new(
      :job_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopAddressListImportJobResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to stop an in-progress archive export job.</p>
    # @!attribute export_id
    #   <p>The identifier of the export job to stop.</p>
    #   @return [String]
    class StopArchiveExportRequest < Struct.new(
      :export_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response indicating if the request to stop the export job succeeded.</p> <p>On success, returns an HTTP 200 status code. On failure, returns an error message.</p>
    class StopArchiveExportResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request to stop an in-progress archive search job.</p>
    # @!attribute search_id
    #   <p>The identifier of the search job to stop.</p>
    #   @return [String]
    class StopArchiveSearchRequest < Struct.new(
      :search_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response indicating if the request to stop the search job succeeded.</p> <p>On success, returns an HTTP 200 status code. On failure, returns an error message.</p>
    class StopArchiveSearchResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A key-value pair (the value is optional), that you can define and assign to Amazon Web Services resources.</p>
    # @!attribute key
    #   <p>The key of the key-value tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the key-value tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to tag. </p>
    #   @return [String]
    # @!attribute tags
    #   <p> The tags used to organize, track, or control access for the resource. For example, { "tags": {"key1":"value1", "key2":"value2"} }. </p>
    #   @return [Array<Types::Tag>]
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

    # <p>Occurs when a service's request rate limit is exceeded, resulting in throttling of further requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The structure of a traffic policy resource which is a container for policy statements.</p>
    # @!attribute traffic_policy_name
    #   <p>A user-friendly name of the traffic policy resource.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy resource.</p>
    #   @return [String]
    # @!attribute default_action
    #   <p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>
    #   @return [String]
    class TrafficPolicy < Struct.new(
      :traffic_policy_name,
      :traffic_policy_id,
      :default_action,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p> The Amazon Resource Name (ARN) of the resource that you want to untag. </p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p> The keys of the key-value pairs for the tag or tags you want to remove from the specified resource. </p>
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

    # <p>The request to update properties of an existing email archive.</p>
    # @!attribute archive_id
    #   <p>The identifier of the archive to update.</p>
    #   @return [String]
    # @!attribute archive_name
    #   <p>A new, unique name for the archive.</p>
    #   @return [String]
    # @!attribute retention
    #   <p>A new retention period for emails in the archive.</p>
    #   @return [Types::ArchiveRetention]
    class UpdateArchiveRequest < Struct.new(
      :archive_id,
      :archive_name,
      :retention,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The response indicating if the archive update succeeded or failed.</p> <p>On success, returns an HTTP 200 status code. On failure, returns an error message.</p>
    class UpdateArchiveResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute ingress_point_id
    #   <p>The identifier for the ingress endpoint you want to update.</p>
    #   @return [String]
    # @!attribute ingress_point_name
    #   <p>A user friendly name for the ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute status_to_update
    #   <p>The update status of an ingress endpoint.</p>
    #   @return [String]
    # @!attribute rule_set_id
    #   <p>The identifier of an existing rule set that you attach to an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute traffic_policy_id
    #   <p>The identifier of an existing traffic policy that you attach to an ingress endpoint resource.</p>
    #   @return [String]
    # @!attribute ingress_point_configuration
    #   <p>If you choose an Authenticated ingress endpoint, you must configure either an SMTP password or a secret ARN.</p>
    #   @return [Types::IngressPointConfiguration]
    class UpdateIngressPointRequest < Struct.new(
      :ingress_point_id,
      :ingress_point_name,
      :status_to_update,
      :rule_set_id,
      :traffic_policy_id,
      :ingress_point_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateIngressPointResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute relay_id
    #   <p>The unique relay identifier.</p>
    #   @return [String]
    # @!attribute relay_name
    #   <p>The name of the relay resource.</p>
    #   @return [String]
    # @!attribute server_name
    #   <p>The destination relay server address.</p>
    #   @return [String]
    # @!attribute server_port
    #   <p>The destination relay server port.</p>
    #   @return [Integer]
    # @!attribute authentication
    #   <p>Authentication for the relay destination server—specify the secretARN where the SMTP credentials are stored.</p>
    #   @return [Types::RelayAuthentication]
    class UpdateRelayRequest < Struct.new(
      :relay_id,
      :relay_name,
      :server_name,
      :server_port,
      :authentication,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateRelayResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_set_id
    #   <p>The identifier of a rule set you want to update.</p>
    #   @return [String]
    # @!attribute rule_set_name
    #   <p>A user-friendly name for the rule set resource.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>A new set of rules to replace the current rules of the rule set—these rules will override all the rules of the rule set.</p>
    #   @return [Array<Types::Rule>]
    class UpdateRuleSetRequest < Struct.new(
      :rule_set_id,
      :rule_set_name,
      :rules,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateRuleSetResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute traffic_policy_id
    #   <p>The identifier of the traffic policy that you want to update.</p>
    #   @return [String]
    # @!attribute traffic_policy_name
    #   <p>A user-friendly name for the traffic policy resource.</p>
    #   @return [String]
    # @!attribute policy_statements
    #   <p>The list of conditions to be updated for filtering email traffic.</p>
    #   @return [Array<Types::PolicyStatement>]
    # @!attribute default_action
    #   <p>Default action instructs the traﬃc policy to either Allow or Deny (block) messages that fall outside of (or not addressed by) the conditions of your policy statements</p>
    #   @return [String]
    # @!attribute max_message_size_bytes
    #   <p>The maximum message size in bytes of email which is allowed in by this traffic policy—anything larger will be blocked.</p>
    #   @return [Integer]
    class UpdateTrafficPolicyRequest < Struct.new(
      :traffic_policy_id,
      :traffic_policy_name,
      :policy_statements,
      :default_action,
      :max_message_size_bytes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UpdateTrafficPolicyResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The request validation has failed. For details, see the accompanying error message.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
