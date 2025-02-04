# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MailManager
  module Types

    # Occurs when a user is denied access to a specific resource or action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action to add a header to a message. When executed, this action
    # will add the given header to the message.
    #
    # @!attribute [rw] header_name
    #   The name of the header to add to an email. The header must be
    #   prefixed with "X-". Headers are added regardless of whether the
    #   header name pre-existed in the email.
    #   @return [String]
    #
    # @!attribute [rw] header_value
    #   The value of the header to add to the email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AddHeaderAction AWS API Documentation
    #
    class AddHeaderAction < Struct.new(
      :header_name,
      :header_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # An Add On instance represents a specific configuration of an Add On.
    #
    # @!attribute [rw] addon_instance_arn
    #   The Amazon Resource Name (ARN) of the Add On instance.
    #   @return [String]
    #
    # @!attribute [rw] addon_instance_id
    #   The unique ID of the Add On instance.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the Add On for the instance.
    #   @return [String]
    #
    # @!attribute [rw] addon_subscription_id
    #   The subscription ID for the instance.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the Add On instance was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AddonInstance AWS API Documentation
    #
    class AddonInstance < Struct.new(
      :addon_instance_arn,
      :addon_instance_id,
      :addon_name,
      :addon_subscription_id,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # A subscription for an Add On representing the acceptance of its terms
    # of use and additional pricing.
    #
    # @!attribute [rw] addon_name
    #   The name of the Add On.
    #   @return [String]
    #
    # @!attribute [rw] addon_subscription_arn
    #   The Amazon Resource Name (ARN) of the Add On subscription.
    #   @return [String]
    #
    # @!attribute [rw] addon_subscription_id
    #   The unique ID of the Add On subscription.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the Add On subscription was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AddonSubscription AWS API Documentation
    #
    class AddonSubscription < Struct.new(
      :addon_name,
      :addon_subscription_arn,
      :addon_subscription_id,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filtering options for ListMembersOfAddressList operation.
    #
    # @!attribute [rw] address_prefix
    #   Filter to limit the results to addresses having the provided prefix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AddressFilter AWS API Documentation
    #
    class AddressFilter < Struct.new(
      :address_prefix)
      SENSITIVE = [:address_prefix]
      include Aws::Structure
    end

    # An address list contains a list of emails and domains that are used in
    # MailManager Ingress endpoints and Rules for email management.
    #
    # @!attribute [rw] address_list_arn
    #   The Amazon Resource Name (ARN) of the address list.
    #   @return [String]
    #
    # @!attribute [rw] address_list_id
    #   The identifier of the address list.
    #   @return [String]
    #
    # @!attribute [rw] address_list_name
    #   The user-friendly name of the address list.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the address list was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the address list was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/AddressList AWS API Documentation
    #
    class AddressList < Struct.new(
      :address_list_arn,
      :address_list_id,
      :address_list_name,
      :created_timestamp,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The result of an analysis can be used in conditions to trigger
    # actions. Analyses can inspect the email content and report a certain
    # aspect of the email.
    #
    # @!attribute [rw] analyzer
    #   The Amazon Resource Name (ARN) of an Add On.
    #   @return [String]
    #
    # @!attribute [rw] result_field
    #   The returned value from an Add On.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Analysis AWS API Documentation
    #
    class Analysis < Struct.new(
      :analyzer,
      :result_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # An archive resource for storing and retaining emails.
    #
    # @!attribute [rw] archive_id
    #   The unique identifier of the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_name
    #   The unique name assigned to the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_state
    #   The current state of the archive:
    #
    #   * `ACTIVE` – The archive is ready and available for use.
    #
    #   * `PENDING_DELETION` – The archive has been marked for deletion and
    #     will be permanently deleted in 30 days. No further modifications
    #     can be made in this state.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the archive was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Archive AWS API Documentation
    #
    class Archive < Struct.new(
      :archive_id,
      :archive_name,
      :archive_state,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action to archive the email by delivering the email to an Amazon
    # SES archive.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the
    #   specified archive has been deleted.
    #   @return [String]
    #
    # @!attribute [rw] target_archive
    #   The identifier of the archive to send the email to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveAction AWS API Documentation
    #
    class ArchiveAction < Struct.new(
      :action_failure_policy,
      :target_archive)
      SENSITIVE = []
      include Aws::Structure
    end

    # A boolean expression to evaluate email attribute values.
    #
    # @!attribute [rw] evaluate
    #   The email attribute value to evaluate.
    #   @return [Types::ArchiveBooleanToEvaluate]
    #
    # @!attribute [rw] operator
    #   The boolean operator to use for evaluation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveBooleanExpression AWS API Documentation
    #
    class ArchiveBooleanExpression < Struct.new(
      :evaluate,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The attribute to evaluate in a boolean expression.
    #
    # @note ArchiveBooleanToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ArchiveBooleanToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ArchiveBooleanToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The name of the email attribute to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveBooleanToEvaluate AWS API Documentation
    #
    class ArchiveBooleanToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < ArchiveBooleanToEvaluate; end
      class Unknown < ArchiveBooleanToEvaluate; end
    end

    # A filter condition used to include or exclude emails when exporting
    # from or searching an archive.
    #
    # @note ArchiveFilterCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ArchiveFilterCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ArchiveFilterCondition corresponding to the set member.
    #
    # @!attribute [rw] boolean_expression
    #   A boolean expression to evaluate against email attributes.
    #   @return [Types::ArchiveBooleanExpression]
    #
    # @!attribute [rw] string_expression
    #   A string expression to evaluate against email attributes.
    #   @return [Types::ArchiveStringExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveFilterCondition AWS API Documentation
    #
    class ArchiveFilterCondition < Struct.new(
      :boolean_expression,
      :string_expression,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BooleanExpression < ArchiveFilterCondition; end
      class StringExpression < ArchiveFilterCondition; end
      class Unknown < ArchiveFilterCondition; end
    end

    # A set of filter conditions to include and/or exclude emails.
    #
    # @!attribute [rw] include
    #   The filter conditions for emails to include.
    #   @return [Array<Types::ArchiveFilterCondition>]
    #
    # @!attribute [rw] unless
    #   The filter conditions for emails to exclude.
    #   @return [Array<Types::ArchiveFilterCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveFilters AWS API Documentation
    #
    class ArchiveFilters < Struct.new(
      :include,
      :unless)
      SENSITIVE = []
      include Aws::Structure
    end

    # The retention policy for an email archive that specifies how long
    # emails are kept before being automatically deleted.
    #
    # @note ArchiveRetention is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ArchiveRetention is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ArchiveRetention corresponding to the set member.
    #
    # @!attribute [rw] retention_period
    #   The enum value sets the period for retaining emails in an archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveRetention AWS API Documentation
    #
    class ArchiveRetention < Struct.new(
      :retention_period,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RetentionPeriod < ArchiveRetention; end
      class Unknown < ArchiveRetention; end
    end

    # A string expression to evaluate an email attribute value against one
    # or more string values.
    #
    # @!attribute [rw] evaluate
    #   The attribute of the email to evaluate.
    #   @return [Types::ArchiveStringToEvaluate]
    #
    # @!attribute [rw] operator
    #   The operator to use when evaluating the string values.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The list of string values to evaluate the email attribute against.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveStringExpression AWS API Documentation
    #
    class ArchiveStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the email attribute to evaluate in a string expression.
    #
    # @note ArchiveStringToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ArchiveStringToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ArchiveStringToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The name of the email attribute to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ArchiveStringToEvaluate AWS API Documentation
    #
    class ArchiveStringToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < ArchiveStringToEvaluate; end
      class Unknown < ArchiveStringToEvaluate; end
    end

    # The request configuration has conflicts. For details, see the
    # accompanying error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_subscription_id
    #   The unique ID of a previously created subscription that an Add On
    #   instance is created for. You can only have one instance per
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonInstanceRequest AWS API Documentation
    #
    class CreateAddonInstanceRequest < Struct.new(
      :addon_subscription_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_instance_id
    #   The unique ID of the Add On instance created by this API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonInstanceResponse AWS API Documentation
    #
    class CreateAddonInstanceResponse < Struct.new(
      :addon_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_name
    #   The name of the Add On to subscribe to. You can only have one
    #   subscription for each Add On name.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonSubscriptionRequest AWS API Documentation
    #
    class CreateAddonSubscriptionRequest < Struct.new(
      :addon_name,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_subscription_id
    #   The unique ID of the Add On subscription created by this API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddonSubscriptionResponse AWS API Documentation
    #
    class CreateAddonSubscriptionResponse < Struct.new(
      :addon_subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list for importing addresses
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] import_data_format
    #   The format of the input for an import job.
    #   @return [Types::ImportDataFormat]
    #
    # @!attribute [rw] name
    #   A user-friendly name for the import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressListImportJobRequest AWS API Documentation
    #
    class CreateAddressListImportJobRequest < Struct.new(
      :address_list_id,
      :client_token,
      :import_data_format,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the created import job.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The pre-signed URL target for uploading the input file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressListImportJobResponse AWS API Documentation
    #
    class CreateAddressListImportJobResponse < Struct.new(
      :job_id,
      :pre_signed_url)
      SENSITIVE = [:pre_signed_url]
      include Aws::Structure
    end

    # @!attribute [rw] address_list_name
    #   A user-friendly name for the address list.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressListRequest AWS API Documentation
    #
    class CreateAddressListRequest < Struct.new(
      :address_list_name,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The identifier of the created address list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateAddressListResponse AWS API Documentation
    #
    class CreateAddressListResponse < Struct.new(
      :address_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to create a new email archive.
    #
    # @!attribute [rw] archive_name
    #   A unique name for the new archive.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique token Amazon SES uses to recognize retries of this request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key for encrypting emails
    #   in the archive.
    #   @return [String]
    #
    # @!attribute [rw] retention
    #   The period for retaining emails in the archive before automatic
    #   deletion.
    #   @return [Types::ArchiveRetention]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateArchiveRequest AWS API Documentation
    #
    class CreateArchiveRequest < Struct.new(
      :archive_name,
      :client_token,
      :kms_key_arn,
      :retention,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from creating a new email archive.
    #
    # @!attribute [rw] archive_id
    #   The unique identifier for the newly created archive.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateArchiveResponse AWS API Documentation
    #
    class CreateArchiveResponse < Struct.new(
      :archive_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_configuration
    #   If you choose an Authenticated ingress endpoint, you must configure
    #   either an SMTP password or a secret ARN.
    #   @return [Types::IngressPointConfiguration]
    #
    # @!attribute [rw] ingress_point_name
    #   A user friendly name for an ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_id
    #   The identifier of an existing rule set that you attach to an ingress
    #   endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of an existing traffic policy that you attach to an
    #   ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the ingress endpoint to create.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateIngressPointRequest AWS API Documentation
    #
    class CreateIngressPointRequest < Struct.new(
      :client_token,
      :ingress_point_configuration,
      :ingress_point_name,
      :rule_set_id,
      :tags,
      :traffic_policy_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingress_point_id
    #   The unique identifier for a previously created ingress endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateIngressPointResponse AWS API Documentation
    #
    class CreateIngressPointResponse < Struct.new(
      :ingress_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication
    #   Authentication for the relay destination server—specify the
    #   secretARN where the SMTP credentials are stored.
    #   @return [Types::RelayAuthentication]
    #
    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] relay_name
    #   The unique name of the relay resource.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The destination relay server address.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The destination relay server port.
    #   @return [Integer]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRelayRequest AWS API Documentation
    #
    class CreateRelayRequest < Struct.new(
      :authentication,
      :client_token,
      :relay_name,
      :server_name,
      :server_port,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] relay_id
    #   A unique identifier of the created relay resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRelayResponse AWS API Documentation
    #
    class CreateRelayResponse < Struct.new(
      :relay_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_name
    #   A user-friendly name for the rule set.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   Conditional rules that are evaluated for determining actions on
    #   email.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRuleSetRequest AWS API Documentation
    #
    class CreateRuleSetRequest < Struct.new(
      :client_token,
      :rule_set_name,
      :rules,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_set_id
    #   The identifier of the created rule set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateRuleSetResponse AWS API Documentation
    #
    class CreateRuleSetResponse < Struct.new(
      :rule_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique token that Amazon SES uses to recognize subsequent retries
    #   of the same request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] default_action
    #   Default action instructs the traﬃc policy to either Allow or Deny
    #   (block) messages that fall outside of (or not addressed by) the
    #   conditions of your policy statements
    #   @return [String]
    #
    # @!attribute [rw] max_message_size_bytes
    #   The maximum message size in bytes of email which is allowed in by
    #   this traffic policy—anything larger will be blocked.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_statements
    #   Conditional statements for filtering email traffic.
    #   @return [Array<Types::PolicyStatement>]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] traffic_policy_name
    #   A user-friendly name for the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateTrafficPolicyRequest AWS API Documentation
    #
    class CreateTrafficPolicyRequest < Struct.new(
      :client_token,
      :default_action,
      :max_message_size_bytes,
      :policy_statements,
      :tags,
      :traffic_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/CreateTrafficPolicyResponse AWS API Documentation
    #
    class CreateTrafficPolicyResponse < Struct.new(
      :traffic_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_instance_id
    #   The Add On instance ID to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonInstanceRequest AWS API Documentation
    #
    class DeleteAddonInstanceRequest < Struct.new(
      :addon_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonInstanceResponse AWS API Documentation
    #
    class DeleteAddonInstanceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] addon_subscription_id
    #   The Add On subscription ID to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonSubscriptionRequest AWS API Documentation
    #
    class DeleteAddonSubscriptionRequest < Struct.new(
      :addon_subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddonSubscriptionResponse AWS API Documentation
    #
    class DeleteAddonSubscriptionResponse < Aws::EmptyStructure; end

    # @!attribute [rw] address_list_id
    #   The identifier of an existing address list resource to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddressListRequest AWS API Documentation
    #
    class DeleteAddressListRequest < Struct.new(
      :address_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteAddressListResponse AWS API Documentation
    #
    class DeleteAddressListResponse < Aws::EmptyStructure; end

    # The request to initiate deletion of an email archive.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteArchiveRequest AWS API Documentation
    #
    class DeleteArchiveRequest < Struct.new(
      :archive_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response indicating if the archive deletion was successfully
    # initiated.
    #
    # On success, returns an HTTP 200 status code. On failure, returns an
    # error message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteArchiveResponse AWS API Documentation
    #
    class DeleteArchiveResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ingress_point_id
    #   The identifier of the ingress endpoint resource that you want to
    #   delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteIngressPointRequest AWS API Documentation
    #
    class DeleteIngressPointRequest < Struct.new(
      :ingress_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteIngressPointResponse AWS API Documentation
    #
    class DeleteIngressPointResponse < Aws::EmptyStructure; end

    # @!attribute [rw] relay_id
    #   The unique relay identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRelayRequest AWS API Documentation
    #
    class DeleteRelayRequest < Struct.new(
      :relay_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRelayResponse AWS API Documentation
    #
    class DeleteRelayResponse < Aws::EmptyStructure; end

    # @!attribute [rw] rule_set_id
    #   The identifier of an existing rule set resource to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRuleSetRequest AWS API Documentation
    #
    class DeleteRuleSetRequest < Struct.new(
      :rule_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteRuleSetResponse AWS API Documentation
    #
    class DeleteRuleSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteTrafficPolicyRequest AWS API Documentation
    #
    class DeleteTrafficPolicyRequest < Struct.new(
      :traffic_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeleteTrafficPolicyResponse AWS API Documentation
    #
    class DeleteTrafficPolicyResponse < Aws::EmptyStructure; end

    # This action to delivers an email to a mailbox.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the
    #   mailbox ARN is no longer valid.
    #   @return [String]
    #
    # @!attribute [rw] mailbox_arn
    #   The Amazon Resource Name (ARN) of a WorkMail organization to deliver
    #   the email to.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of an IAM role to use to execute this
    #   action. The role must have access to the workmail:DeliverToMailbox
    #   API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeliverToMailboxAction AWS API Documentation
    #
    class DeliverToMailboxAction < Struct.new(
      :action_failure_policy,
      :mailbox_arn,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action to deliver incoming emails to an Amazon Q Business
    # application for indexing.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the
    #   specified application has been deleted or the role lacks necessary
    #   permissions to call the qbusiness:BatchPutDocument API.
    #   @return [String]
    #
    # @!attribute [rw] application_id
    #   The unique identifier of the Amazon Q Business application instance
    #   where the email content will be delivered.
    #   @return [String]
    #
    # @!attribute [rw] index_id
    #   The identifier of the knowledge base index within the Amazon Q
    #   Business application where the email content will be stored and
    #   indexed.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM Role to use while
    #   delivering to Amazon Q Business. This role must have access to the
    #   qbusiness:BatchPutDocument API for the given application and index.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeliverToQBusinessAction AWS API Documentation
    #
    class DeliverToQBusinessAction < Struct.new(
      :action_failure_policy,
      :application_id,
      :index_id,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address to be removed from the address list.
    #   @return [String]
    #
    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list to remove the address
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeregisterMemberFromAddressListRequest AWS API Documentation
    #
    class DeregisterMemberFromAddressListRequest < Struct.new(
      :address,
      :address_list_id)
      SENSITIVE = [:address]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DeregisterMemberFromAddressListResponse AWS API Documentation
    #
    class DeregisterMemberFromAddressListResponse < Aws::EmptyStructure; end

    # This action causes processing to stop and the email to be dropped. If
    # the action applies only to certain recipients, only those recipients
    # are dropped, and processing continues for other recipients.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/DropAction AWS API Documentation
    #
    class DropAction < Aws::EmptyStructure; end

    # The SMTP envelope information of the email.
    #
    # @!attribute [rw] from
    #   The RCPT FROM given by the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] helo
    #   The HELO used by the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   All SMTP TO entries given by the host from which the email was
    #   received.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Envelope AWS API Documentation
    #
    class Envelope < Struct.new(
      :from,
      :helo,
      :to)
      SENSITIVE = []
      include Aws::Structure
    end

    # The destination configuration for delivering exported email data.
    #
    # @note ExportDestinationConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ExportDestinationConfiguration is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ExportDestinationConfiguration corresponding to the set member.
    #
    # @!attribute [rw] s3
    #   Configuration for delivering to an Amazon S3 bucket.
    #   @return [Types::S3ExportDestinationConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ExportDestinationConfiguration AWS API Documentation
    #
    class ExportDestinationConfiguration < Struct.new(
      :s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class S3 < ExportDestinationConfiguration; end
      class Unknown < ExportDestinationConfiguration; end
    end

    # The current status of an archive export job.
    #
    # @!attribute [rw] completion_timestamp
    #   The timestamp of when the export job completed (if finished).
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   An error message if the export job failed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the export job.
    #   @return [String]
    #
    # @!attribute [rw] submission_timestamp
    #   The timestamp of when the export job was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ExportStatus AWS API Documentation
    #
    class ExportStatus < Struct.new(
      :completion_timestamp,
      :error_message,
      :state,
      :submission_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary statuses of an archive export job.
    #
    # @!attribute [rw] export_id
    #   The unique identifier of the export job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the export job.
    #   @return [Types::ExportStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ExportSummary AWS API Documentation
    #
    class ExportSummary < Struct.new(
      :export_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_instance_id
    #   The Add On instance ID to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonInstanceRequest AWS API Documentation
    #
    class GetAddonInstanceRequest < Struct.new(
      :addon_instance_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_instance_arn
    #   The Amazon Resource Name (ARN) of the Add On instance.
    #   @return [String]
    #
    # @!attribute [rw] addon_name
    #   The name of the Add On provider associated to the subscription of
    #   the instance.
    #   @return [String]
    #
    # @!attribute [rw] addon_subscription_id
    #   The subscription ID associated to the instance.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the Add On instance was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonInstanceResponse AWS API Documentation
    #
    class GetAddonInstanceResponse < Struct.new(
      :addon_instance_arn,
      :addon_name,
      :addon_subscription_id,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_subscription_id
    #   The Add On subscription ID to retrieve information for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonSubscriptionRequest AWS API Documentation
    #
    class GetAddonSubscriptionRequest < Struct.new(
      :addon_subscription_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_name
    #   The name of the Add On for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] addon_subscription_arn
    #   Amazon Resource Name (ARN) for the subscription.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the Add On subscription was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddonSubscriptionResponse AWS API Documentation
    #
    class GetAddonSubscriptionResponse < Struct.new(
      :addon_name,
      :addon_subscription_arn,
      :created_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the import job that needs to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressListImportJobRequest AWS API Documentation
    #
    class GetAddressListImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list the import job was created
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] completed_timestamp
    #   The timestamp of when the import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The reason for failure of an import job.
    #   @return [String]
    #
    # @!attribute [rw] failed_items_count
    #   The number of input addresses that failed to be imported into the
    #   address list.
    #   @return [Integer]
    #
    # @!attribute [rw] import_data_format
    #   The format of the input for an import job.
    #   @return [Types::ImportDataFormat]
    #
    # @!attribute [rw] imported_items_count
    #   The number of input addresses successfully imported into the address
    #   list.
    #   @return [Integer]
    #
    # @!attribute [rw] job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name for the import job.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The pre-signed URL target for uploading the input file.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   The timestamp of when the import job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressListImportJobResponse AWS API Documentation
    #
    class GetAddressListImportJobResponse < Struct.new(
      :address_list_id,
      :completed_timestamp,
      :created_timestamp,
      :error,
      :failed_items_count,
      :import_data_format,
      :imported_items_count,
      :job_id,
      :name,
      :pre_signed_url,
      :start_timestamp,
      :status)
      SENSITIVE = [:pre_signed_url]
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The identifier of an existing address list resource to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressListRequest AWS API Documentation
    #
    class GetAddressListRequest < Struct.new(
      :address_list_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_arn
    #   The Amazon Resource Name (ARN) of the address list resource.
    #   @return [String]
    #
    # @!attribute [rw] address_list_id
    #   The identifier of the address list resource.
    #   @return [String]
    #
    # @!attribute [rw] address_list_name
    #   A user-friendly name for the address list resource.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The date of when then address list was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The date of when the address list was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetAddressListResponse AWS API Documentation
    #
    class GetAddressListResponse < Struct.new(
      :address_list_arn,
      :address_list_id,
      :address_list_name,
      :created_timestamp,
      :last_updated_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve details of a specific archive export job.
    #
    # @!attribute [rw] export_id
    #   The identifier of the export job to get details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveExportRequest AWS API Documentation
    #
    class GetArchiveExportRequest < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing details of the specified archive export job.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive the email export was performed from.
    #   @return [String]
    #
    # @!attribute [rw] export_destination_configuration
    #   Where the exported emails are being delivered.
    #   @return [Types::ExportDestinationConfiguration]
    #
    # @!attribute [rw] filters
    #   The criteria used to filter emails included in the export.
    #   @return [Types::ArchiveFilters]
    #
    # @!attribute [rw] from_timestamp
    #   The start of the timestamp range the exported emails cover.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of email items included in the export.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the export job.
    #   @return [Types::ExportStatus]
    #
    # @!attribute [rw] to_timestamp
    #   The end of the date range the exported emails cover.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveExportResponse AWS API Documentation
    #
    class GetArchiveExportResponse < Struct.new(
      :archive_id,
      :export_destination_configuration,
      :filters,
      :from_timestamp,
      :max_results,
      :status,
      :to_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get the textual content of a specific email message
    # stored in an archive.
    #
    # @!attribute [rw] archived_message_id
    #   The unique identifier of the archived email message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessageContentRequest AWS API Documentation
    #
    class GetArchiveMessageContentRequest < Struct.new(
      :archived_message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing the textual content of the requested archived
    # email message.
    #
    # @!attribute [rw] body
    #   The textual body content of the email message.
    #   @return [Types::MessageBody]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessageContentResponse AWS API Documentation
    #
    class GetArchiveMessageContentResponse < Struct.new(
      :body)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to get details of a specific email message stored in an
    # archive.
    #
    # @!attribute [rw] archived_message_id
    #   The unique identifier of the archived email message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessageRequest AWS API Documentation
    #
    class GetArchiveMessageRequest < Struct.new(
      :archived_message_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing details about the requested archived email
    # message.
    #
    # @!attribute [rw] envelope
    #   The SMTP envelope information of the email.
    #   @return [Types::Envelope]
    #
    # @!attribute [rw] message_download_link
    #   A pre-signed URL to temporarily download the full message content.
    #   @return [String]
    #
    # @!attribute [rw] metadata
    #   The metadata about the email.
    #   @return [Types::Metadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveMessageResponse AWS API Documentation
    #
    class GetArchiveMessageResponse < Struct.new(
      :envelope,
      :message_download_link,
      :metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve details of an email archive.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveRequest AWS API Documentation
    #
    class GetArchiveRequest < Struct.new(
      :archive_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing details of the requested archive.
    #
    # @!attribute [rw] archive_arn
    #   The Amazon Resource Name (ARN) of the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_id
    #   The unique identifier of the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_name
    #   The unique name assigned to the archive.
    #   @return [String]
    #
    # @!attribute [rw] archive_state
    #   The current state of the archive:
    #
    #   * `ACTIVE` – The archive is ready and available for use.
    #
    #   * `PENDING_DELETION` – The archive has been marked for deletion and
    #     will be permanently deleted in 30 days. No further modifications
    #     can be made in this state.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the archive was created.
    #   @return [Time]
    #
    # @!attribute [rw] kms_key_arn
    #   The Amazon Resource Name (ARN) of the KMS key used to encrypt the
    #   archive.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the archive was modified.
    #   @return [Time]
    #
    # @!attribute [rw] retention
    #   The retention period for emails in this archive.
    #   @return [Types::ArchiveRetention]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveResponse AWS API Documentation
    #
    class GetArchiveResponse < Struct.new(
      :archive_arn,
      :archive_id,
      :archive_name,
      :archive_state,
      :created_timestamp,
      :kms_key_arn,
      :last_updated_timestamp,
      :retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve details of a specific archive search job.
    #
    # @!attribute [rw] search_id
    #   The identifier of the search job to get details for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearchRequest AWS API Documentation
    #
    class GetArchiveSearchRequest < Struct.new(
      :search_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing details of the specified archive search job.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive the email search was performed in.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   The criteria used to filter emails included in the search.
    #   @return [Types::ArchiveFilters]
    #
    # @!attribute [rw] from_timestamp
    #   The start timestamp of the range the searched emails cover.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of search results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The current status of the search job.
    #   @return [Types::SearchStatus]
    #
    # @!attribute [rw] to_timestamp
    #   The end timestamp of the range the searched emails cover.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearchResponse AWS API Documentation
    #
    class GetArchiveSearchResponse < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :max_results,
      :status,
      :to_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to retrieve results from a completed archive search job.
    #
    # @!attribute [rw] search_id
    #   The identifier of the completed search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearchResultsRequest AWS API Documentation
    #
    class GetArchiveSearchResultsRequest < Struct.new(
      :search_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing search results from a completed archive
    # search.
    #
    # @!attribute [rw] rows
    #   The list of email result objects matching the search criteria.
    #   @return [Array<Types::Row>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetArchiveSearchResultsResponse AWS API Documentation
    #
    class GetArchiveSearchResultsResponse < Struct.new(
      :rows)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingress_point_id
    #   The identifier of an ingress endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetIngressPointRequest AWS API Documentation
    #
    class GetIngressPointRequest < Struct.new(
      :ingress_point_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] a_record
    #   The DNS A Record that identifies your ingress endpoint. Configure
    #   your DNS Mail Exchange (MX) record with this value to route emails
    #   to Mail Manager.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the ingress endpoint was created.
    #   @return [Time]
    #
    # @!attribute [rw] ingress_point_arn
    #   The Amazon Resource Name (ARN) of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_auth_configuration
    #   The authentication configuration of the ingress endpoint resource.
    #   @return [Types::IngressPointAuthConfiguration]
    #
    # @!attribute [rw] ingress_point_id
    #   The identifier of an ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_name
    #   A user friendly name for the ingress endpoint.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the ingress endpoint was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] rule_set_id
    #   The identifier of a rule set resource associated with the ingress
    #   endpoint.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy resource associated with the
    #   ingress endpoint.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of ingress endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetIngressPointResponse AWS API Documentation
    #
    class GetIngressPointResponse < Struct.new(
      :a_record,
      :created_timestamp,
      :ingress_point_arn,
      :ingress_point_auth_configuration,
      :ingress_point_id,
      :ingress_point_name,
      :last_updated_timestamp,
      :rule_set_id,
      :status,
      :traffic_policy_id,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address to be retrieved from the address list.
    #   @return [String]
    #
    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list to retrieve the address
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetMemberOfAddressListRequest AWS API Documentation
    #
    class GetMemberOfAddressListRequest < Struct.new(
      :address,
      :address_list_id)
      SENSITIVE = [:address]
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address retrieved from the address list.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the address was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetMemberOfAddressListResponse AWS API Documentation
    #
    class GetMemberOfAddressListResponse < Struct.new(
      :address,
      :created_timestamp)
      SENSITIVE = [:address]
      include Aws::Structure
    end

    # @!attribute [rw] relay_id
    #   A unique relay identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRelayRequest AWS API Documentation
    #
    class GetRelayRequest < Struct.new(
      :relay_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authentication
    #   The authentication attribute—contains the secret ARN where the
    #   customer relay server credentials are stored.
    #   @return [Types::RelayAuthentication]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the relay was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_timestamp
    #   The timestamp of when relay was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] relay_arn
    #   The Amazon Resource Name (ARN) of the relay.
    #   @return [String]
    #
    # @!attribute [rw] relay_id
    #   The unique relay identifier.
    #   @return [String]
    #
    # @!attribute [rw] relay_name
    #   The unique name of the relay.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The destination relay server address.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The destination relay server port.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRelayResponse AWS API Documentation
    #
    class GetRelayResponse < Struct.new(
      :authentication,
      :created_timestamp,
      :last_modified_timestamp,
      :relay_arn,
      :relay_id,
      :relay_name,
      :server_name,
      :server_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_set_id
    #   The identifier of an existing rule set to be retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRuleSetRequest AWS API Documentation
    #
    class GetRuleSetRequest < Struct.new(
      :rule_set_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_date
    #   The date of when then rule set was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modification_date
    #   The date of when the rule set was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] rule_set_arn
    #   The Amazon Resource Name (ARN) of the rule set resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_id
    #   The identifier of the rule set resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_name
    #   A user-friendly name for the rule set resource.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The rules contained in the rule set.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetRuleSetResponse AWS API Documentation
    #
    class GetRuleSetResponse < Struct.new(
      :created_date,
      :last_modification_date,
      :rule_set_arn,
      :rule_set_id,
      :rule_set_name,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetTrafficPolicyRequest AWS API Documentation
    #
    class GetTrafficPolicyRequest < Struct.new(
      :traffic_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] created_timestamp
    #   The timestamp of when the traffic policy was created.
    #   @return [Time]
    #
    # @!attribute [rw] default_action
    #   The default action of the traffic policy.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_timestamp
    #   The timestamp of when the traffic policy was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] max_message_size_bytes
    #   The maximum message size in bytes of email which is allowed in by
    #   this traffic policy—anything larger will be blocked.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_statements
    #   The list of conditions which are in the traffic policy resource.
    #   @return [Array<Types::PolicyStatement>]
    #
    # @!attribute [rw] traffic_policy_arn
    #   The Amazon Resource Name (ARN) of the traffic policy resource.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy resource.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_name
    #   A user-friendly name for the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/GetTrafficPolicyResponse AWS API Documentation
    #
    class GetTrafficPolicyResponse < Struct.new(
      :created_timestamp,
      :default_action,
      :last_updated_timestamp,
      :max_message_size_bytes,
      :policy_statements,
      :traffic_policy_arn,
      :traffic_policy_id,
      :traffic_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The import data format contains the specifications of the input file
    # that would be passed to the address list import job.
    #
    # @!attribute [rw] import_data_type
    #   The type of file that would be passed as an input for the address
    #   list import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ImportDataFormat AWS API Documentation
    #
    class ImportDataFormat < Struct.new(
      :import_data_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about an import job.
    #
    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list the import job was created
    #   for.
    #   @return [String]
    #
    # @!attribute [rw] completed_timestamp
    #   The timestamp of when the import job was completed.
    #   @return [Time]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the import job was created.
    #   @return [Time]
    #
    # @!attribute [rw] error
    #   The reason for failure of an import job.
    #   @return [String]
    #
    # @!attribute [rw] failed_items_count
    #   The number of addresses in the input that failed to get imported
    #   into address list.
    #   @return [Integer]
    #
    # @!attribute [rw] import_data_format
    #   The format of the input for the import job.
    #   @return [Types::ImportDataFormat]
    #
    # @!attribute [rw] imported_items_count
    #   The number of addresses in the input that were successfully imported
    #   into the address list.
    #   @return [Integer]
    #
    # @!attribute [rw] job_id
    #   The identifier of the import job.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   A user-friendly name for the import job.
    #   @return [String]
    #
    # @!attribute [rw] pre_signed_url
    #   The pre-signed URL target for uploading the input file.
    #   @return [String]
    #
    # @!attribute [rw] start_timestamp
    #   The timestamp of when the import job was started.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the import job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ImportJob AWS API Documentation
    #
    class ImportJob < Struct.new(
      :address_list_id,
      :completed_timestamp,
      :created_timestamp,
      :error,
      :failed_items_count,
      :import_data_format,
      :imported_items_count,
      :job_id,
      :name,
      :pre_signed_url,
      :start_timestamp,
      :status)
      SENSITIVE = [:pre_signed_url]
      include Aws::Structure
    end

    # The Add On ARN and its returned value that is evaluated in a policy
    # statement's conditional expression to either deny or block the
    # incoming email.
    #
    # @!attribute [rw] analyzer
    #   The Amazon Resource Name (ARN) of an Add On.
    #   @return [String]
    #
    # @!attribute [rw] result_field
    #   The returned value from an Add On.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressAnalysis AWS API Documentation
    #
    class IngressAnalysis < Struct.new(
      :analyzer,
      :result_field)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for a boolean condition matching on the incoming mail.
    #
    # @!attribute [rw] evaluate
    #   The operand on which to perform a boolean condition operation.
    #   @return [Types::IngressBooleanToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a boolean condition expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressBooleanExpression AWS API Documentation
    #
    class IngressBooleanExpression < Struct.new(
      :evaluate,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The union type representing the allowed types of operands for a
    # boolean condition.
    #
    # @note IngressBooleanToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IngressBooleanToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IngressBooleanToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] analysis
    #   The structure type for a boolean condition stating the Add On ARN
    #   and its returned value.
    #   @return [Types::IngressAnalysis]
    #
    # @!attribute [rw] is_in_address_list
    #   The structure type for a boolean condition that provides the address
    #   lists to evaluate incoming traffic on.
    #   @return [Types::IngressIsInAddressList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressBooleanToEvaluate AWS API Documentation
    #
    class IngressBooleanToEvaluate < Struct.new(
      :analysis,
      :is_in_address_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Analysis < IngressBooleanToEvaluate; end
      class IsInAddressList < IngressBooleanToEvaluate; end
      class Unknown < IngressBooleanToEvaluate; end
    end

    # The structure for an IP based condition matching on the incoming mail.
    #
    # @note IngressIpToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IngressIpToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IngressIpToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   An enum type representing the allowed attribute types for an IP
    #   condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressIpToEvaluate AWS API Documentation
    #
    class IngressIpToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < IngressIpToEvaluate; end
      class Unknown < IngressIpToEvaluate; end
    end

    # The union type representing the allowed types for the left hand side
    # of an IP condition.
    #
    # @!attribute [rw] evaluate
    #   The left hand side argument of an IP condition expression.
    #   @return [Types::IngressIpToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for an IP condition expression.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The right hand side argument of an IP condition expression.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressIpv4Expression AWS API Documentation
    #
    class IngressIpv4Expression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The address lists and the address list attribute value that is
    # evaluated in a policy statement's conditional expression to either
    # deny or block the incoming email.
    #
    # @!attribute [rw] address_lists
    #   The address lists that will be used for evaluation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attribute
    #   The email attribute that needs to be evaluated against the address
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressIsInAddressList AWS API Documentation
    #
    class IngressIsInAddressList < Struct.new(
      :address_lists,
      :attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of an ingress endpoint resource.
    #
    # @!attribute [rw] a_record
    #   The DNS A Record that identifies your ingress endpoint. Configure
    #   your DNS Mail Exchange (MX) record with this value to route emails
    #   to Mail Manager.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_id
    #   The identifier of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_name
    #   A user friendly name for the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of ingress endpoint resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressPoint AWS API Documentation
    #
    class IngressPoint < Struct.new(
      :a_record,
      :ingress_point_id,
      :ingress_point_name,
      :status,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The authentication configuration for the ingress endpoint resource.
    #
    # @!attribute [rw] ingress_point_password_configuration
    #   The ingress endpoint password configuration for the ingress endpoint
    #   resource.
    #   @return [Types::IngressPointPasswordConfiguration]
    #
    # @!attribute [rw] secret_arn
    #   The ingress endpoint SecretsManager::Secret ARN configuration for
    #   the ingress endpoint resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressPointAuthConfiguration AWS API Documentation
    #
    class IngressPointAuthConfiguration < Struct.new(
      :ingress_point_password_configuration,
      :secret_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration of the ingress endpoint resource.
    #
    # @note IngressPointConfiguration is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] secret_arn
    #   The SecretsManager::Secret ARN of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] smtp_password
    #   The password of the ingress endpoint resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressPointConfiguration AWS API Documentation
    #
    class IngressPointConfiguration < Struct.new(
      :secret_arn,
      :smtp_password,
      :unknown)
      SENSITIVE = [:smtp_password]
      include Aws::Structure
      include Aws::Structure::Union

      class SecretArn < IngressPointConfiguration; end
      class SmtpPassword < IngressPointConfiguration; end
      class Unknown < IngressPointConfiguration; end
    end

    # The password configuration of the ingress endpoint resource.
    #
    # @!attribute [rw] previous_smtp_password_expiry_timestamp
    #   The previous password expiry timestamp of the ingress endpoint
    #   resource.
    #   @return [Time]
    #
    # @!attribute [rw] previous_smtp_password_version
    #   The previous password version of the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] smtp_password_version
    #   The current password expiry timestamp of the ingress endpoint
    #   resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressPointPasswordConfiguration AWS API Documentation
    #
    class IngressPointPasswordConfiguration < Struct.new(
      :previous_smtp_password_expiry_timestamp,
      :previous_smtp_password_version,
      :smtp_password_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure for a string based condition matching on the incoming
    # mail.
    #
    # @!attribute [rw] evaluate
    #   The left hand side argument of a string condition expression.
    #   @return [Types::IngressStringToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a string condition expression.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The right hand side argument of a string condition expression.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressStringExpression AWS API Documentation
    #
    class IngressStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The union type representing the allowed types for the left hand side
    # of a string condition.
    #
    # @note IngressStringToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IngressStringToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IngressStringToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The enum type representing the allowed attribute types for a string
    #   condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressStringToEvaluate AWS API Documentation
    #
    class IngressStringToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < IngressStringToEvaluate; end
      class Unknown < IngressStringToEvaluate; end
    end

    # The structure for a TLS related condition matching on the incoming
    # mail.
    #
    # @!attribute [rw] evaluate
    #   The left hand side argument of a TLS condition expression.
    #   @return [Types::IngressTlsProtocolToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a TLS condition expression.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The right hand side argument of a TLS condition expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressTlsProtocolExpression AWS API Documentation
    #
    class IngressTlsProtocolExpression < Struct.new(
      :evaluate,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The union type representing the allowed types for the left hand side
    # of a TLS condition.
    #
    # @note IngressTlsProtocolToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note IngressTlsProtocolToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of IngressTlsProtocolToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The enum type representing the allowed attribute types for the TLS
    #   condition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/IngressTlsProtocolToEvaluate AWS API Documentation
    #
    class IngressTlsProtocolToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < IngressTlsProtocolToEvaluate; end
      class Unknown < IngressTlsProtocolToEvaluate; end
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of ingress endpoint resources that are returned
    #   per call. You can use NextToken to obtain further ingress endpoints.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonInstancesRequest AWS API Documentation
    #
    class ListAddonInstancesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_instances
    #   The list of ingress endpoints.
    #   @return [Array<Types::AddonInstance>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonInstancesResponse AWS API Documentation
    #
    class ListAddonInstancesResponse < Struct.new(
      :addon_instances,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of ingress endpoint resources that are returned
    #   per call. You can use NextToken to obtain further ingress endpoints.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonSubscriptionsRequest AWS API Documentation
    #
    class ListAddonSubscriptionsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addon_subscriptions
    #   The list of ingress endpoints.
    #   @return [Array<Types::AddonSubscription>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddonSubscriptionsResponse AWS API Documentation
    #
    class ListAddonSubscriptionsResponse < Struct.new(
      :addon_subscriptions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list for listing import jobs.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of import jobs that are returned per call. You
    #   can use NextToken to retrieve the next page of jobs.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressListImportJobsRequest AWS API Documentation
    #
    class ListAddressListImportJobsRequest < Struct.new(
      :address_list_id,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] import_jobs
    #   The list of import jobs.
    #   @return [Array<Types::ImportJob>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressListImportJobsResponse AWS API Documentation
    #
    class ListAddressListImportJobsResponse < Struct.new(
      :import_jobs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of address list resources that are returned per
    #   call. You can use NextToken to retrieve the next page of address
    #   lists.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressListsRequest AWS API Documentation
    #
    class ListAddressListsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_lists
    #   The list of address lists.
    #   @return [Array<Types::AddressList>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListAddressListsResponse AWS API Documentation
    #
    class ListAddressListsResponse < Struct.new(
      :address_lists,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list archive export jobs in your account.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of archive export jobs that are returned per
    #   call. You can use NextToken to obtain further pages of archives.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveExportsRequest AWS API Documentation
    #
    class ListArchiveExportsRequest < Struct.new(
      :archive_id,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing a list of archive export jobs and their
    # statuses.
    #
    # @!attribute [rw] exports
    #   The list of export job identifiers and statuses.
    #   @return [Array<Types::ExportSummary>]
    #
    # @!attribute [rw] next_token
    #   If present, use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveExportsResponse AWS API Documentation
    #
    class ListArchiveExportsResponse < Struct.new(
      :exports,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list archive search jobs in your account.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of archive search jobs that are returned per
    #   call. You can use NextToken to obtain further pages of archives.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveSearchesRequest AWS API Documentation
    #
    class ListArchiveSearchesRequest < Struct.new(
      :archive_id,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing a list of archive search jobs and their
    # statuses.
    #
    # @!attribute [rw] next_token
    #   If present, use to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] searches
    #   The list of search job identifiers and statuses.
    #   @return [Array<Types::SearchSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchiveSearchesResponse AWS API Documentation
    #
    class ListArchiveSearchesResponse < Struct.new(
      :next_token,
      :searches)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to list email archives in your account.
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of archives that are returned per call. You can
    #   use NextToken to obtain further pages of archives.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchivesRequest AWS API Documentation
    #
    class ListArchivesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response containing a list of your email archives.
    #
    # @!attribute [rw] archives
    #   The list of archive details.
    #   @return [Array<Types::Archive>]
    #
    # @!attribute [rw] next_token
    #   If present, use to retrieve the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListArchivesResponse AWS API Documentation
    #
    class ListArchivesResponse < Struct.new(
      :archives,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of ingress endpoint resources that are returned
    #   per call. You can use NextToken to obtain further ingress endpoints.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListIngressPointsRequest AWS API Documentation
    #
    class ListIngressPointsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] ingress_points
    #   The list of ingress endpoints.
    #   @return [Array<Types::IngressPoint>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListIngressPointsResponse AWS API Documentation
    #
    class ListIngressPointsResponse < Struct.new(
      :ingress_points,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list to list the addresses
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] filter
    #   Filter to be used to limit the results.
    #   @return [Types::AddressFilter]
    #
    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of address list members that are returned per
    #   call. You can use NextToken to retrieve the next page of members.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListMembersOfAddressListRequest AWS API Documentation
    #
    class ListMembersOfAddressListRequest < Struct.new(
      :address_list_id,
      :filter,
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] addresses
    #   The list of addresses.
    #   @return [Array<Types::SavedAddress>]
    #
    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListMembersOfAddressListResponse AWS API Documentation
    #
    class ListMembersOfAddressListResponse < Struct.new(
      :addresses,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The number of relays to be returned in one request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRelaysRequest AWS API Documentation
    #
    class ListRelaysRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] relays
    #   The list of returned relays.
    #   @return [Array<Types::Relay>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRelaysResponse AWS API Documentation
    #
    class ListRelaysResponse < Struct.new(
      :next_token,
      :relays)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of rule set resources that are returned per call.
    #   You can use NextToken to obtain further rule sets.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRuleSetsRequest AWS API Documentation
    #
    class ListRuleSetsRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] rule_sets
    #   The list of rule sets.
    #   @return [Array<Types::RuleSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListRuleSetsResponse AWS API Documentation
    #
    class ListRuleSetsResponse < Struct.new(
      :next_token,
      :rule_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to retrieve tags
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If you received a pagination token from a previous call to this API,
    #   you can provide it here to continue paginating through the next page
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] page_size
    #   The maximum number of traffic policy resources that are returned per
    #   call. You can use NextToken to obtain further traffic policies.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTrafficPoliciesRequest AWS API Documentation
    #
    class ListTrafficPoliciesRequest < Struct.new(
      :next_token,
      :page_size)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   If NextToken is returned, there are more results available. The
    #   value of NextToken is a unique pagination token for each page. Make
    #   the call again using the returned token to retrieve the next page.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policies
    #   The list of traffic policies.
    #   @return [Array<Types::TrafficPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ListTrafficPoliciesResponse AWS API Documentation
    #
    class ListTrafficPoliciesResponse < Struct.new(
      :next_token,
      :traffic_policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The textual body content of an email message.
    #
    # @!attribute [rw] html
    #   The HTML body content of the message.
    #   @return [String]
    #
    # @!attribute [rw] message_malformed
    #   A flag indicating if the email was malformed.
    #   @return [Boolean]
    #
    # @!attribute [rw] text
    #   The plain text body content of the message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/MessageBody AWS API Documentation
    #
    class MessageBody < Struct.new(
      :html,
      :message_malformed,
      :text)
      SENSITIVE = []
      include Aws::Structure
    end

    # The metadata about the email.
    #
    # @!attribute [rw] ingress_point_id
    #   The ID of the ingress endpoint through which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_id
    #   The ID of the rule set that processed the email.
    #   @return [String]
    #
    # @!attribute [rw] sender_hostname
    #   The name of the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address of the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] timestamp
    #   The timestamp of when the email was received.
    #   @return [Time]
    #
    # @!attribute [rw] tls_cipher_suite
    #   The TLS cipher suite used to communicate with the host from which
    #   the email was received.
    #   @return [String]
    #
    # @!attribute [rw] tls_protocol
    #   The TLS protocol used to communicate with the host from which the
    #   email was received.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The ID of the traffic policy that was in effect when the email was
    #   received.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Metadata AWS API Documentation
    #
    class Metadata < Struct.new(
      :ingress_point_id,
      :rule_set_id,
      :sender_hostname,
      :sender_ip_address,
      :timestamp,
      :tls_cipher_suite,
      :tls_protocol,
      :traffic_policy_id)
      SENSITIVE = [:sender_ip_address]
      include Aws::Structure
    end

    # Explicitly indicate that the relay destination server does not require
    # SMTP credential authentication.
    #
    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/NoAuthentication AWS API Documentation
    #
    class NoAuthentication < Aws::EmptyStructure; end

    # The email traffic filtering conditions which are contained in a
    # traffic policy resource.
    #
    # @note PolicyCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note PolicyCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of PolicyCondition corresponding to the set member.
    #
    # @!attribute [rw] boolean_expression
    #   This represents a boolean type condition matching on the incoming
    #   mail. It performs the boolean operation configured in 'Operator'
    #   and evaluates the 'Protocol' object against the 'Value'.
    #   @return [Types::IngressBooleanExpression]
    #
    # @!attribute [rw] ip_expression
    #   This represents an IP based condition matching on the incoming mail.
    #   It performs the operation configured in 'Operator' and evaluates
    #   the 'Protocol' object against the 'Value'.
    #   @return [Types::IngressIpv4Expression]
    #
    # @!attribute [rw] string_expression
    #   This represents a string based condition matching on the incoming
    #   mail. It performs the string operation configured in 'Operator'
    #   and evaluates the 'Protocol' object against the 'Value'.
    #   @return [Types::IngressStringExpression]
    #
    # @!attribute [rw] tls_expression
    #   This represents a TLS based condition matching on the incoming mail.
    #   It performs the operation configured in 'Operator' and evaluates
    #   the 'Protocol' object against the 'Value'.
    #   @return [Types::IngressTlsProtocolExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/PolicyCondition AWS API Documentation
    #
    class PolicyCondition < Struct.new(
      :boolean_expression,
      :ip_expression,
      :string_expression,
      :tls_expression,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BooleanExpression < PolicyCondition; end
      class IpExpression < PolicyCondition; end
      class StringExpression < PolicyCondition; end
      class TlsExpression < PolicyCondition; end
      class Unknown < PolicyCondition; end
    end

    # The structure containing traffic policy conditions and actions.
    #
    # @!attribute [rw] action
    #   The action that informs a traffic policy resource to either allow or
    #   block the email if it matches a condition in the policy statement.
    #   @return [String]
    #
    # @!attribute [rw] conditions
    #   The list of conditions to apply to incoming messages for filtering
    #   email traffic.
    #   @return [Array<Types::PolicyCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/PolicyStatement AWS API Documentation
    #
    class PolicyStatement < Struct.new(
      :action,
      :conditions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] address
    #   The address to be added to the address list.
    #   @return [String]
    #
    # @!attribute [rw] address_list_id
    #   The unique identifier of the address list where the address should
    #   be added.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RegisterMemberToAddressListRequest AWS API Documentation
    #
    class RegisterMemberToAddressListRequest < Struct.new(
      :address,
      :address_list_id)
      SENSITIVE = [:address]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RegisterMemberToAddressListResponse AWS API Documentation
    #
    class RegisterMemberToAddressListResponse < Aws::EmptyStructure; end

    # The relay resource that can be used as a rule to relay receiving
    # emails to the destination relay server.
    #
    # @!attribute [rw] last_modified_timestamp
    #   The timestamp of when the relay was last modified.
    #   @return [Time]
    #
    # @!attribute [rw] relay_id
    #   The unique relay identifier.
    #   @return [String]
    #
    # @!attribute [rw] relay_name
    #   The unique relay name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Relay AWS API Documentation
    #
    class Relay < Struct.new(
      :last_modified_timestamp,
      :relay_id,
      :relay_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action relays the email via SMTP to another specific SMTP server.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the
    #   specified relay has been deleted.
    #   @return [String]
    #
    # @!attribute [rw] mail_from
    #   This action specifies whether to preserve or replace original mail
    #   from address while relaying received emails to a destination server.
    #   @return [String]
    #
    # @!attribute [rw] relay
    #   The identifier of the relay resource to be used when relaying an
    #   email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RelayAction AWS API Documentation
    #
    class RelayAction < Struct.new(
      :action_failure_policy,
      :mail_from,
      :relay)
      SENSITIVE = []
      include Aws::Structure
    end

    # Authentication for the relay destination server—specify the secretARN
    # where the SMTP credentials are stored, or specify an empty
    # NoAuthentication structure if the relay destination server does not
    # require SMTP credential authentication.
    #
    # @note RelayAuthentication is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RelayAuthentication is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RelayAuthentication corresponding to the set member.
    #
    # @!attribute [rw] no_authentication
    #   Keep an empty structure if the relay destination server does not
    #   require SMTP credential authentication.
    #   @return [Types::NoAuthentication]
    #
    # @!attribute [rw] secret_arn
    #   The ARN of the secret created in secrets manager where the relay
    #   server's SMTP credentials are stored.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RelayAuthentication AWS API Documentation
    #
    class RelayAuthentication < Struct.new(
      :no_authentication,
      :secret_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class NoAuthentication < RelayAuthentication; end
      class SecretArn < RelayAuthentication; end
      class Unknown < RelayAuthentication; end
    end

    # This action replaces the email envelope recipients with the given list
    # of recipients. If the condition of this action applies only to a
    # subset of recipients, only those recipients are replaced with the
    # recipients specified in the action. The message contents and headers
    # are unaffected by this action, only the envelope recipients are
    # updated.
    #
    # @!attribute [rw] replace_with
    #   This action specifies the replacement recipient email addresses to
    #   insert.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ReplaceRecipientAction AWS API Documentation
    #
    class ReplaceRecipientAction < Struct.new(
      :replace_with)
      SENSITIVE = [:replace_with]
      include Aws::Structure
    end

    # Occurs when a requested resource is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A result row containing metadata for an archived email message.
    #
    # @!attribute [rw] archived_message_id
    #   The unique identifier of the archived message.
    #   @return [String]
    #
    # @!attribute [rw] cc
    #   The email addresses in the CC header.
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date the email was sent.
    #   @return [String]
    #
    # @!attribute [rw] envelope
    #   The SMTP envelope information of the email.
    #   @return [Types::Envelope]
    #
    # @!attribute [rw] from
    #   The email address of the sender.
    #   @return [String]
    #
    # @!attribute [rw] has_attachments
    #   A flag indicating if the email has attachments.
    #   @return [Boolean]
    #
    # @!attribute [rw] in_reply_to
    #   The email message ID this is a reply to.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_id
    #   The ID of the ingress endpoint through which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] message_id
    #   The unique message ID of the email.
    #   @return [String]
    #
    # @!attribute [rw] received_headers
    #   The received headers from the email delivery path.
    #   @return [Array<String>]
    #
    # @!attribute [rw] received_timestamp
    #   The timestamp of when the email was received.
    #   @return [Time]
    #
    # @!attribute [rw] sender_hostname
    #   The name of the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] sender_ip_address
    #   The IP address of the host from which the email was received.
    #   @return [String]
    #
    # @!attribute [rw] subject
    #   The subject header value of the email.
    #   @return [String]
    #
    # @!attribute [rw] to
    #   The email addresses in the To header.
    #   @return [String]
    #
    # @!attribute [rw] x_mailer
    #   The user agent that sent the email.
    #   @return [String]
    #
    # @!attribute [rw] x_original_mailer
    #   The original user agent that sent the email.
    #   @return [String]
    #
    # @!attribute [rw] x_priority
    #   The priority level of the email.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Row AWS API Documentation
    #
    class Row < Struct.new(
      :archived_message_id,
      :cc,
      :date,
      :envelope,
      :from,
      :has_attachments,
      :in_reply_to,
      :ingress_point_id,
      :message_id,
      :received_headers,
      :received_timestamp,
      :sender_hostname,
      :sender_ip_address,
      :subject,
      :to,
      :x_mailer,
      :x_original_mailer,
      :x_priority)
      SENSITIVE = [:sender_ip_address]
      include Aws::Structure
    end

    # A rule contains conditions, "unless conditions" and actions. For
    # each envelope recipient of an email, if all conditions match and none
    # of the "unless conditions" match, then all of the actions are
    # executed sequentially. If no conditions are provided, the rule always
    # applies and the actions are implicitly executed. If only "unless
    # conditions" are provided, the rule applies if the email does not
    # match the evaluation of the "unless conditions".
    #
    # @!attribute [rw] actions
    #   The list of actions to execute when the conditions match the
    #   incoming email, and none of the "unless conditions" match.
    #   @return [Array<Types::RuleAction>]
    #
    # @!attribute [rw] conditions
    #   The conditions of this rule. All conditions must match the email for
    #   the actions to be executed. An empty list of conditions means that
    #   all emails match, but are still subject to any "unless conditions"
    #   @return [Array<Types::RuleCondition>]
    #
    # @!attribute [rw] name
    #   The user-friendly name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] unless
    #   The "unless conditions" of this rule. None of the conditions can
    #   match the email for the actions to be executed. If any of these
    #   conditions do match the email, then the actions are not executed.
    #   @return [Array<Types::RuleCondition>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :actions,
      :conditions,
      :name,
      :unless)
      SENSITIVE = []
      include Aws::Structure
    end

    # The action for a rule to take. Only one of the contained actions can
    # be set.
    #
    # @note RuleAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleAction corresponding to the set member.
    #
    # @!attribute [rw] add_header
    #   This action adds a header. This can be used to add arbitrary email
    #   headers.
    #   @return [Types::AddHeaderAction]
    #
    # @!attribute [rw] archive
    #   This action archives the email. This can be used to deliver an email
    #   to an archive.
    #   @return [Types::ArchiveAction]
    #
    # @!attribute [rw] deliver_to_mailbox
    #   This action delivers an email to a WorkMail mailbox.
    #   @return [Types::DeliverToMailboxAction]
    #
    # @!attribute [rw] deliver_to_q_business
    #   This action delivers an email to an Amazon Q Business application
    #   for ingestion into its knowledge base.
    #   @return [Types::DeliverToQBusinessAction]
    #
    # @!attribute [rw] drop
    #   This action terminates the evaluation of rules in the rule set.
    #   @return [Types::DropAction]
    #
    # @!attribute [rw] relay
    #   This action relays the email to another SMTP server.
    #   @return [Types::RelayAction]
    #
    # @!attribute [rw] replace_recipient
    #   The action replaces certain or all recipients with a different set
    #   of recipients.
    #   @return [Types::ReplaceRecipientAction]
    #
    # @!attribute [rw] send
    #   This action sends the email to the internet.
    #   @return [Types::SendAction]
    #
    # @!attribute [rw] write_to_s3
    #   This action writes the MIME content of the email to an S3 bucket.
    #   @return [Types::S3Action]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleAction AWS API Documentation
    #
    class RuleAction < Struct.new(
      :add_header,
      :archive,
      :deliver_to_mailbox,
      :deliver_to_q_business,
      :drop,
      :relay,
      :replace_recipient,
      :send,
      :write_to_s3,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AddHeader < RuleAction; end
      class Archive < RuleAction; end
      class DeliverToMailbox < RuleAction; end
      class DeliverToQBusiness < RuleAction; end
      class Drop < RuleAction; end
      class Relay < RuleAction; end
      class ReplaceRecipient < RuleAction; end
      class Send < RuleAction; end
      class WriteToS3 < RuleAction; end
      class Unknown < RuleAction; end
    end

    # A boolean expression to be used in a rule condition.
    #
    # @!attribute [rw] evaluate
    #   The operand on which to perform a boolean condition operation.
    #   @return [Types::RuleBooleanToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a boolean condition expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleBooleanExpression AWS API Documentation
    #
    class RuleBooleanExpression < Struct.new(
      :evaluate,
      :operator)
      SENSITIVE = []
      include Aws::Structure
    end

    # The union type representing the allowed types of operands for a
    # boolean condition.
    #
    # @note RuleBooleanToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleBooleanToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleBooleanToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The boolean type representing the allowed attribute types for an
    #   email.
    #   @return [String]
    #
    # @!attribute [rw] is_in_address_list
    #   The structure representing the address lists and address list
    #   attribute that will be used in evaluation of boolean expression.
    #   @return [Types::RuleIsInAddressList]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleBooleanToEvaluate AWS API Documentation
    #
    class RuleBooleanToEvaluate < Struct.new(
      :attribute,
      :is_in_address_list,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < RuleBooleanToEvaluate; end
      class IsInAddressList < RuleBooleanToEvaluate; end
      class Unknown < RuleBooleanToEvaluate; end
    end

    # The conditional expression used to evaluate an email for determining
    # if a rule action should be taken.
    #
    # @note RuleCondition is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleCondition is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleCondition corresponding to the set member.
    #
    # @!attribute [rw] boolean_expression
    #   The condition applies to a boolean expression passed in this field.
    #   @return [Types::RuleBooleanExpression]
    #
    # @!attribute [rw] dmarc_expression
    #   The condition applies to a DMARC policy expression passed in this
    #   field.
    #   @return [Types::RuleDmarcExpression]
    #
    # @!attribute [rw] ip_expression
    #   The condition applies to an IP address expression passed in this
    #   field.
    #   @return [Types::RuleIpExpression]
    #
    # @!attribute [rw] number_expression
    #   The condition applies to a number expression passed in this field.
    #   @return [Types::RuleNumberExpression]
    #
    # @!attribute [rw] string_expression
    #   The condition applies to a string expression passed in this field.
    #   @return [Types::RuleStringExpression]
    #
    # @!attribute [rw] verdict_expression
    #   The condition applies to a verdict expression passed in this field.
    #   @return [Types::RuleVerdictExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleCondition AWS API Documentation
    #
    class RuleCondition < Struct.new(
      :boolean_expression,
      :dmarc_expression,
      :ip_expression,
      :number_expression,
      :string_expression,
      :verdict_expression,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BooleanExpression < RuleCondition; end
      class DmarcExpression < RuleCondition; end
      class IpExpression < RuleCondition; end
      class NumberExpression < RuleCondition; end
      class StringExpression < RuleCondition; end
      class VerdictExpression < RuleCondition; end
      class Unknown < RuleCondition; end
    end

    # A DMARC policy expression. The condition matches if the given DMARC
    # policy matches that of the incoming email.
    #
    # @!attribute [rw] operator
    #   The operator to apply to the DMARC policy of the incoming email.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to use for the given DMARC policy operator. For the
    #   operator EQUALS, if multiple values are given, they are evaluated as
    #   an OR. That is, if any of the given values match, the condition is
    #   deemed to match. For the operator NOT\_EQUALS, if multiple values
    #   are given, they are evaluated as an AND. That is, only if the
    #   email's DMARC policy is not equal to any of the given values, then
    #   the condition is deemed to match.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleDmarcExpression AWS API Documentation
    #
    class RuleDmarcExpression < Struct.new(
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # An IP address expression matching certain IP addresses within a given
    # range of IP addresses.
    #
    # @!attribute [rw] evaluate
    #   The IP address to evaluate in this condition.
    #   @return [Types::RuleIpToEvaluate]
    #
    # @!attribute [rw] operator
    #   The operator to evaluate the IP address.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The IP CIDR blocks in format "x.y.z.w/n" (eg 10.0.0.0/8) to match
    #   with the email's IP address. For the operator CIDR\_MATCHES, if
    #   multiple values are given, they are evaluated as an OR. That is, if
    #   the IP address is contained within any of the given CIDR ranges, the
    #   condition is deemed to match. For NOT\_CIDR\_MATCHES, if multiple
    #   CIDR ranges are given, the condition is deemed to match if the IP
    #   address is not contained in any of the given CIDR ranges.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleIpExpression AWS API Documentation
    #
    class RuleIpExpression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The IP address to evaluate for this condition.
    #
    # @note RuleIpToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleIpToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleIpToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The attribute of the email to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleIpToEvaluate AWS API Documentation
    #
    class RuleIpToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < RuleIpToEvaluate; end
      class Unknown < RuleIpToEvaluate; end
    end

    # The structure type for a boolean condition that provides the address
    # lists and address list attribute to evaluate.
    #
    # @!attribute [rw] address_lists
    #   The address lists that will be used for evaluation.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attribute
    #   The email attribute that needs to be evaluated against the address
    #   list.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleIsInAddressList AWS API Documentation
    #
    class RuleIsInAddressList < Struct.new(
      :address_lists,
      :attribute)
      SENSITIVE = []
      include Aws::Structure
    end

    # A number expression to match numeric conditions with integers from the
    # incoming email.
    #
    # @!attribute [rw] evaluate
    #   The number to evaluate in a numeric condition expression.
    #   @return [Types::RuleNumberToEvaluate]
    #
    # @!attribute [rw] operator
    #   The operator for a numeric condition expression.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value to evaluate in a numeric condition expression.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleNumberExpression AWS API Documentation
    #
    class RuleNumberExpression < Struct.new(
      :evaluate,
      :operator,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number to evaluate in a numeric condition expression.
    #
    # @note RuleNumberToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleNumberToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleNumberToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   An email attribute that is used as the number to evaluate.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleNumberToEvaluate AWS API Documentation
    #
    class RuleNumberToEvaluate < Struct.new(
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < RuleNumberToEvaluate; end
      class Unknown < RuleNumberToEvaluate; end
    end

    # A rule set contains a list of rules that are evaluated in order. Each
    # rule is evaluated sequentially for each email.
    #
    # @!attribute [rw] last_modification_date
    #   The last modification date of the rule set.
    #   @return [Time]
    #
    # @!attribute [rw] rule_set_id
    #   The identifier of the rule set.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_name
    #   A user-friendly name for the rule set.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleSet AWS API Documentation
    #
    class RuleSet < Struct.new(
      :last_modification_date,
      :rule_set_id,
      :rule_set_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A string expression is evaluated against strings or substrings of the
    # email.
    #
    # @!attribute [rw] evaluate
    #   The string to evaluate in a string condition expression.
    #   @return [Types::RuleStringToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a string condition expression.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The string(s) to be evaluated in a string condition expression. For
    #   all operators, except for NOT\_EQUALS, if multiple values are given,
    #   the values are processed as an OR. That is, if any of the values
    #   match the email's string using the given operator, the condition is
    #   deemed to match. However, for NOT\_EQUALS, the condition is only
    #   deemed to match if none of the given strings match the email's
    #   string.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleStringExpression AWS API Documentation
    #
    class RuleStringExpression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The string to evaluate in a string condition expression.
    #
    # @note RuleStringToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleStringToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleStringToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] attribute
    #   The email attribute to evaluate in a string condition expression.
    #   @return [String]
    #
    # @!attribute [rw] mime_header_attribute
    #   The email MIME X-Header attribute to evaluate in a string condition
    #   expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleStringToEvaluate AWS API Documentation
    #
    class RuleStringToEvaluate < Struct.new(
      :attribute,
      :mime_header_attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Attribute < RuleStringToEvaluate; end
      class MimeHeaderAttribute < RuleStringToEvaluate; end
      class Unknown < RuleStringToEvaluate; end
    end

    # A verdict expression is evaluated against verdicts of the email.
    #
    # @!attribute [rw] evaluate
    #   The verdict to evaluate in a verdict condition expression.
    #   @return [Types::RuleVerdictToEvaluate]
    #
    # @!attribute [rw] operator
    #   The matching operator for a verdict condition expression.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   The values to match with the email's verdict using the given
    #   operator. For the EQUALS operator, if multiple values are given, the
    #   condition is deemed to match if any of the given verdicts match that
    #   of the email. For the NOT\_EQUALS operator, if multiple values are
    #   given, the condition is deemed to match of none of the given
    #   verdicts match the verdict of the email.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleVerdictExpression AWS API Documentation
    #
    class RuleVerdictExpression < Struct.new(
      :evaluate,
      :operator,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # The verdict to evaluate in a verdict condition expression.
    #
    # @note RuleVerdictToEvaluate is a union - when making an API calls you must set exactly one of the members.
    #
    # @note RuleVerdictToEvaluate is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RuleVerdictToEvaluate corresponding to the set member.
    #
    # @!attribute [rw] analysis
    #   The Add On ARN and its returned value to evaluate in a verdict
    #   condition expression.
    #   @return [Types::Analysis]
    #
    # @!attribute [rw] attribute
    #   The email verdict attribute to evaluate in a string verdict
    #   expression.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/RuleVerdictToEvaluate AWS API Documentation
    #
    class RuleVerdictToEvaluate < Struct.new(
      :analysis,
      :attribute,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Analysis < RuleVerdictToEvaluate; end
      class Attribute < RuleVerdictToEvaluate; end
      class Unknown < RuleVerdictToEvaluate; end
    end

    # Writes the MIME content of the email to an S3 bucket.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the
    #   specified the bucket has been deleted.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the IAM Role to use while writing
    #   to S3. This role must have access to the s3:PutObject, kms:Encrypt,
    #   and kms:GenerateDataKey APIs for the given bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_bucket
    #   The bucket name of the S3 bucket to write to.
    #   @return [String]
    #
    # @!attribute [rw] s3_prefix
    #   The S3 prefix to use for the write to the s3 bucket.
    #   @return [String]
    #
    # @!attribute [rw] s3_sse_kms_key_id
    #   The KMS Key ID to use to encrypt the message in S3.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/S3Action AWS API Documentation
    #
    class S3Action < Struct.new(
      :action_failure_policy,
      :role_arn,
      :s3_bucket,
      :s3_prefix,
      :s3_sse_kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The configuration for exporting email data to an Amazon S3 bucket.
    #
    # @!attribute [rw] s3_location
    #   The S3 location to deliver the exported email data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/S3ExportDestinationConfiguration AWS API Documentation
    #
    class S3ExportDestinationConfiguration < Struct.new(
      :s3_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # An address that is a member of an address list.
    #
    # @!attribute [rw] address
    #   The email or domain that constitutes the address.
    #   @return [String]
    #
    # @!attribute [rw] created_timestamp
    #   The timestamp of when the address was added to the address list.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/SavedAddress AWS API Documentation
    #
    class SavedAddress < Struct.new(
      :address,
      :created_timestamp)
      SENSITIVE = [:address]
      include Aws::Structure
    end

    # The current status of an archive search job.
    #
    # @!attribute [rw] completion_timestamp
    #   The timestamp of when the search completed (if finished).
    #   @return [Time]
    #
    # @!attribute [rw] error_message
    #   An error message if the search failed.
    #   @return [String]
    #
    # @!attribute [rw] state
    #   The current state of the search job.
    #   @return [String]
    #
    # @!attribute [rw] submission_timestamp
    #   The timestamp of when the search was submitted.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/SearchStatus AWS API Documentation
    #
    class SearchStatus < Struct.new(
      :completion_timestamp,
      :error_message,
      :state,
      :submission_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary details of an archive search job.
    #
    # @!attribute [rw] search_id
    #   The unique identifier of the search job.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the search job.
    #   @return [Types::SearchStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/SearchSummary AWS API Documentation
    #
    class SearchSummary < Struct.new(
      :search_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends the email to the internet using the ses:SendRawEmail API.
    #
    # @!attribute [rw] action_failure_policy
    #   A policy that states what to do in the case of failure. The action
    #   will fail if there are configuration errors. For example, the caller
    #   does not have the permissions to call the sendRawEmail API.
    #   @return [String]
    #
    # @!attribute [rw] role_arn
    #   The Amazon Resource Name (ARN) of the role to use for this action.
    #   This role must have access to the ses:SendRawEmail API.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/SendAction AWS API Documentation
    #
    class SendAction < Struct.new(
      :action_failure_policy,
      :role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Occurs when an operation exceeds a predefined service quota or limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the import job that needs to be started.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartAddressListImportJobRequest AWS API Documentation
    #
    class StartAddressListImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartAddressListImportJobResponse AWS API Documentation
    #
    class StartAddressListImportJobResponse < Aws::EmptyStructure; end

    # The request to initiate an export of emails from an archive.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive to export emails from.
    #   @return [String]
    #
    # @!attribute [rw] export_destination_configuration
    #   Details on where to deliver the exported email data.
    #   @return [Types::ExportDestinationConfiguration]
    #
    # @!attribute [rw] filters
    #   Criteria to filter which emails are included in the export.
    #   @return [Types::ArchiveFilters]
    #
    # @!attribute [rw] from_timestamp
    #   The start of the timestamp range to include emails from.
    #   @return [Time]
    #
    # @!attribute [rw] include_metadata
    #   Whether to include message metadata as JSON files in the export.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   The maximum number of email items to include in the export.
    #   @return [Integer]
    #
    # @!attribute [rw] to_timestamp
    #   The end of the timestamp range to include emails from.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveExportRequest AWS API Documentation
    #
    class StartArchiveExportRequest < Struct.new(
      :archive_id,
      :export_destination_configuration,
      :filters,
      :from_timestamp,
      :include_metadata,
      :max_results,
      :to_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from initiating an archive export.
    #
    # @!attribute [rw] export_id
    #   The unique identifier for the initiated export job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveExportResponse AWS API Documentation
    #
    class StartArchiveExportResponse < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request to initiate a search across emails in an archive.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive to search emails in.
    #   @return [String]
    #
    # @!attribute [rw] filters
    #   Criteria to filter which emails are included in the search results.
    #   @return [Types::ArchiveFilters]
    #
    # @!attribute [rw] from_timestamp
    #   The start timestamp of the range to search emails from.
    #   @return [Time]
    #
    # @!attribute [rw] max_results
    #   The maximum number of search results to return.
    #   @return [Integer]
    #
    # @!attribute [rw] to_timestamp
    #   The end timestamp of the range to search emails from.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveSearchRequest AWS API Documentation
    #
    class StartArchiveSearchRequest < Struct.new(
      :archive_id,
      :filters,
      :from_timestamp,
      :max_results,
      :to_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response from initiating an archive search.
    #
    # @!attribute [rw] search_id
    #   The unique identifier for the initiated search job.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StartArchiveSearchResponse AWS API Documentation
    #
    class StartArchiveSearchResponse < Struct.new(
      :search_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] job_id
    #   The identifier of the import job that needs to be stopped.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopAddressListImportJobRequest AWS API Documentation
    #
    class StopAddressListImportJobRequest < Struct.new(
      :job_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopAddressListImportJobResponse AWS API Documentation
    #
    class StopAddressListImportJobResponse < Aws::EmptyStructure; end

    # The request to stop an in-progress archive export job.
    #
    # @!attribute [rw] export_id
    #   The identifier of the export job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveExportRequest AWS API Documentation
    #
    class StopArchiveExportRequest < Struct.new(
      :export_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response indicating if the request to stop the export job
    # succeeded.
    #
    # On success, returns an HTTP 200 status code. On failure, returns an
    # error message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveExportResponse AWS API Documentation
    #
    class StopArchiveExportResponse < Aws::EmptyStructure; end

    # The request to stop an in-progress archive search job.
    #
    # @!attribute [rw] search_id
    #   The identifier of the search job to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveSearchRequest AWS API Documentation
    #
    class StopArchiveSearchRequest < Struct.new(
      :search_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response indicating if the request to stop the search job
    # succeeded.
    #
    # On success, returns an HTTP 200 status code. On failure, returns an
    # error message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/StopArchiveSearchResponse AWS API Documentation
    #
    class StopArchiveSearchResponse < Aws::EmptyStructure; end

    # A key-value pair (the value is optional), that you can define and
    # assign to Amazon Web Services resources.
    #
    # @!attribute [rw] key
    #   The key of the key-value tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the key-value tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to tag.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags used to organize, track, or control access for the
    #   resource. For example, \{ "tags": \{"key1":"value1",
    #   "key2":"value2"} }.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Occurs when a service's request rate limit is exceeded, resulting in
    # throttling of further requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The structure of a traffic policy resource which is a container for
    # policy statements.
    #
    # @!attribute [rw] default_action
    #   Default action instructs the traﬃc policy to either Allow or Deny
    #   (block) messages that fall outside of (or not addressed by) the
    #   conditions of your policy statements
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy resource.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_name
    #   A user-friendly name of the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/TrafficPolicy AWS API Documentation
    #
    class TrafficPolicy < Struct.new(
      :default_action,
      :traffic_policy_id,
      :traffic_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   untag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the key-value pairs for the tag or tags you want to
    #   remove from the specified resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # The request to update properties of an existing email archive.
    #
    # @!attribute [rw] archive_id
    #   The identifier of the archive to update.
    #   @return [String]
    #
    # @!attribute [rw] archive_name
    #   A new, unique name for the archive.
    #   @return [String]
    #
    # @!attribute [rw] retention
    #   A new retention period for emails in the archive.
    #   @return [Types::ArchiveRetention]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateArchiveRequest AWS API Documentation
    #
    class UpdateArchiveRequest < Struct.new(
      :archive_id,
      :archive_name,
      :retention)
      SENSITIVE = []
      include Aws::Structure
    end

    # The response indicating if the archive update succeeded or failed.
    #
    # On success, returns an HTTP 200 status code. On failure, returns an
    # error message.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateArchiveResponse AWS API Documentation
    #
    class UpdateArchiveResponse < Aws::EmptyStructure; end

    # @!attribute [rw] ingress_point_configuration
    #   If you choose an Authenticated ingress endpoint, you must configure
    #   either an SMTP password or a secret ARN.
    #   @return [Types::IngressPointConfiguration]
    #
    # @!attribute [rw] ingress_point_id
    #   The identifier for the ingress endpoint you want to update.
    #   @return [String]
    #
    # @!attribute [rw] ingress_point_name
    #   A user friendly name for the ingress endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_id
    #   The identifier of an existing rule set that you attach to an ingress
    #   endpoint resource.
    #   @return [String]
    #
    # @!attribute [rw] status_to_update
    #   The update status of an ingress endpoint.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of an existing traffic policy that you attach to an
    #   ingress endpoint resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateIngressPointRequest AWS API Documentation
    #
    class UpdateIngressPointRequest < Struct.new(
      :ingress_point_configuration,
      :ingress_point_id,
      :ingress_point_name,
      :rule_set_id,
      :status_to_update,
      :traffic_policy_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateIngressPointResponse AWS API Documentation
    #
    class UpdateIngressPointResponse < Aws::EmptyStructure; end

    # @!attribute [rw] authentication
    #   Authentication for the relay destination server—specify the
    #   secretARN where the SMTP credentials are stored.
    #   @return [Types::RelayAuthentication]
    #
    # @!attribute [rw] relay_id
    #   The unique relay identifier.
    #   @return [String]
    #
    # @!attribute [rw] relay_name
    #   The name of the relay resource.
    #   @return [String]
    #
    # @!attribute [rw] server_name
    #   The destination relay server address.
    #   @return [String]
    #
    # @!attribute [rw] server_port
    #   The destination relay server port.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRelayRequest AWS API Documentation
    #
    class UpdateRelayRequest < Struct.new(
      :authentication,
      :relay_id,
      :relay_name,
      :server_name,
      :server_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRelayResponse AWS API Documentation
    #
    class UpdateRelayResponse < Aws::EmptyStructure; end

    # @!attribute [rw] rule_set_id
    #   The identifier of a rule set you want to update.
    #   @return [String]
    #
    # @!attribute [rw] rule_set_name
    #   A user-friendly name for the rule set resource.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   A new set of rules to replace the current rules of the rule
    #   set—these rules will override all the rules of the rule set.
    #   @return [Array<Types::Rule>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRuleSetRequest AWS API Documentation
    #
    class UpdateRuleSetRequest < Struct.new(
      :rule_set_id,
      :rule_set_name,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateRuleSetResponse AWS API Documentation
    #
    class UpdateRuleSetResponse < Aws::EmptyStructure; end

    # @!attribute [rw] default_action
    #   Default action instructs the traﬃc policy to either Allow or Deny
    #   (block) messages that fall outside of (or not addressed by) the
    #   conditions of your policy statements
    #   @return [String]
    #
    # @!attribute [rw] max_message_size_bytes
    #   The maximum message size in bytes of email which is allowed in by
    #   this traffic policy—anything larger will be blocked.
    #   @return [Integer]
    #
    # @!attribute [rw] policy_statements
    #   The list of conditions to be updated for filtering email traffic.
    #   @return [Array<Types::PolicyStatement>]
    #
    # @!attribute [rw] traffic_policy_id
    #   The identifier of the traffic policy that you want to update.
    #   @return [String]
    #
    # @!attribute [rw] traffic_policy_name
    #   A user-friendly name for the traffic policy resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateTrafficPolicyRequest AWS API Documentation
    #
    class UpdateTrafficPolicyRequest < Struct.new(
      :default_action,
      :max_message_size_bytes,
      :policy_statements,
      :traffic_policy_id,
      :traffic_policy_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/UpdateTrafficPolicyResponse AWS API Documentation
    #
    class UpdateTrafficPolicyResponse < Aws::EmptyStructure; end

    # The request validation has failed. For details, see the accompanying
    # error message.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/mailmanager-2023-10-17/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

