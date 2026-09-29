# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::NetworkSecurityManager
  module Types

    # You do not have sufficient permissions to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines which accounts are in scope. Exactly one of `includeAll`,
    # `include`, or `exclude` is set.
    #
    # @note AccountFilter is a union - when making an API calls you must set exactly one of the members.
    #
    # @note AccountFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AccountFilter corresponding to the set member.
    #
    # @!attribute [rw] include_all
    #   Includes all accounts. No account filtering is applied.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] include
    #   Includes only the specified accounts and organizational units.
    #   @return [Types::AccountSet]
    #
    # @!attribute [rw] exclude
    #   Excludes the specified accounts and organizational units. All others
    #   are in scope.
    #   @return [Types::AccountSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AccountFilter AWS API Documentation
    #
    class AccountFilter < Struct.new(
      :include_all,
      :include,
      :exclude,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IncludeAll < AccountFilter; end
      class Include < AccountFilter; end
      class Exclude < AccountFilter; end
      class Unknown < AccountFilter; end
    end

    # A reference to an AWS account, with optional display metadata.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AccountReference AWS API Documentation
    #
    class AccountReference < Struct.new(
      :account_id,
      :name,
      :email)
      SENSITIVE = [:name, :email]
      include Aws::Structure
    end

    # A set of AWS accounts and organizational units.
    #
    # @!attribute [rw] account_ids
    #   The list of AWS account IDs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_units
    #   The AWS Organizations organizational units (OUs) in the selection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AccountSet AWS API Documentation
    #
    class AccountSet < Struct.new(
      :account_ids,
      :organizational_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of an AWS Network Security Manager administrator account.
    #
    # @!attribute [rw] admin_account
    #   The AWS account ID of the administrator account.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority assigned to the administrator account.
    #   @return [Integer]
    #
    # @!attribute [rw] admin_scope
    #   The administrative scope, which defines the accounts, organizational
    #   units, and firewall types that the administrator can manage.
    #   @return [Types::AdminScope]
    #
    # @!attribute [rw] status
    #   The status of the administrator account, either `ONBOARDED` or
    #   `OFFBOARDED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminAccountDetails AWS API Documentation
    #
    class AdminAccountDetails < Struct.new(
      :admin_account,
      :priority,
      :admin_scope,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about an AWS Network Security Manager
    # administrator account.
    #
    # @!attribute [rw] account_id
    #   The AWS account ID.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority assigned to the administrator account.
    #   @return [Integer]
    #
    # @!attribute [rw] name
    #   The name of the administrator account.
    #   @return [String]
    #
    # @!attribute [rw] email
    #   The email address associated with the account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminAccountSummary AWS API Documentation
    #
    class AdminAccountSummary < Struct.new(
      :account_id,
      :priority,
      :name,
      :email)
      SENSITIVE = [:name, :email]
      include Aws::Structure
    end

    # Defines the firewall types that an administrator can create and
    # manage.
    #
    # @!attribute [rw] all_firewall_types_enabled
    #   Specifies whether the administrator can manage all firewall types,
    #   except for third-party firewall types.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_types
    #   The list of firewall types that the administrator can manage.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminFirewallTypeScope AWS API Documentation
    #
    class AdminFirewallTypeScope < Struct.new(
      :all_firewall_types_enabled,
      :firewall_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the accounts, organizational units, and firewall types that an
    # administrator can manage.
    #
    # @!attribute [rw] scope_filter
    #   The filter that determines which accounts and organizational units
    #   are in the administrator's scope.
    #   @return [Types::AdminScopeFilter]
    #
    # @!attribute [rw] firewall_type_scope
    #   The firewall types that the administrator can create and manage.
    #   @return [Types::AdminFirewallTypeScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScope AWS API Documentation
    #
    class AdminScope < Struct.new(
      :scope_filter,
      :firewall_type_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # Determines which accounts and organizational units are in an
    # administrator's scope. This is the reference form, which includes
    # display metadata.
    #
    # @note AdminScopeFilter is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AdminScopeFilter corresponding to the set member.
    #
    # @!attribute [rw] include_all
    #   All accounts and organizational units are in scope.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] include_only
    #   Only the specified accounts and organizational units are in the
    #   administrator's scope.
    #   @return [Types::AdminScopeSelection]
    #
    # @!attribute [rw] exclude_only
    #   The accounts and organizational units to exclude from the
    #   administrator's scope. All others are in scope.
    #   @return [Types::AdminScopeSelection]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScopeFilter AWS API Documentation
    #
    class AdminScopeFilter < Struct.new(
      :include_all,
      :include_only,
      :exclude_only,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IncludeAll < AdminScopeFilter; end
      class IncludeOnly < AdminScopeFilter; end
      class ExcludeOnly < AdminScopeFilter; end
      class Unknown < AdminScopeFilter; end
    end

    # Determines which accounts and organizational units are in an
    # administrator's scope. This is the input form, which uses account and
    # organizational unit IDs.
    #
    # @note AdminScopeFilterInput is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] include_all
    #   All accounts and organizational units are in scope.
    #   @return [Types::Unit]
    #
    # @!attribute [rw] include_only
    #   Only the specified accounts and organizational units are in the
    #   administrator's scope.
    #   @return [Types::AdminScopeSelectionInput]
    #
    # @!attribute [rw] exclude_only
    #   The accounts and organizational units to exclude from the
    #   administrator's scope. All others are in scope.
    #   @return [Types::AdminScopeSelectionInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScopeFilterInput AWS API Documentation
    #
    class AdminScopeFilterInput < Struct.new(
      :include_all,
      :include_only,
      :exclude_only,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class IncludeAll < AdminScopeFilterInput; end
      class IncludeOnly < AdminScopeFilterInput; end
      class ExcludeOnly < AdminScopeFilterInput; end
      class Unknown < AdminScopeFilterInput; end
    end

    # The administrative scope configuration provided on input, using
    # account and organizational unit IDs.
    #
    # @!attribute [rw] scope_filter
    #   The filter that determines which accounts and organizational units
    #   are in the administrator's scope.
    #   @return [Types::AdminScopeFilterInput]
    #
    # @!attribute [rw] firewall_type_scope
    #   The firewall types that the administrator can create and manage.
    #   @return [Types::AdminFirewallTypeScope]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScopeInput AWS API Documentation
    #
    class AdminScopeInput < Struct.new(
      :scope_filter,
      :firewall_type_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # A selection of accounts and organizational units. This is the
    # reference form, which includes display metadata.
    #
    # @!attribute [rw] accounts
    #   The AWS accounts in the selection.
    #   @return [Array<Types::AccountReference>]
    #
    # @!attribute [rw] organizational_units
    #   The AWS Organizations organizational units (OUs) in the selection.
    #   @return [Array<Types::OrganizationalUnitReference>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScopeSelection AWS API Documentation
    #
    class AdminScopeSelection < Struct.new(
      :accounts,
      :organizational_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # A selection of accounts and organizational units. This is the input
    # form, which uses account and organizational unit IDs.
    #
    # @!attribute [rw] accounts
    #   The AWS accounts in the selection.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizational_units
    #   The AWS Organizations organizational units (OUs) in the selection.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AdminScopeSelectionInput AWS API Documentation
    #
    class AdminScopeSelectionInput < Struct.new(
      :accounts,
      :organizational_units)
      SENSITIVE = []
      include Aws::Structure
    end

    # Filter criteria specific to Application Load Balancers.
    #
    # @!attribute [rw] scheme
    #   The scheme of the Application Load Balancer, either
    #   `internet-facing` or `internal`.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_type
    #   The IP address type of the Application Load Balancer.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AlbConfiguration AWS API Documentation
    #
    class AlbConfiguration < Struct.new(
      :scheme,
      :ip_address_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a deployment and a policy, as returned in
    # outputs. The corresponding request structure is `PolicyReference`.
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the associated policy, including its version qualifier
    #   when a specific published version is pinned (for example,
    #   `...:policy:abc123:3`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AssociatedPolicy AWS API Documentation
    #
    class AssociatedPolicy < Struct.new(
      :policy_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a template and a rule, as returned in outputs.
    # The corresponding request structure is `RuleReference`.
    #
    # @!attribute [rw] rule_arn
    #   The ARN of the associated rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AssociatedRule AWS API Documentation
    #
    class AssociatedRule < Struct.new(
      :rule_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a deployment and a scope, as returned in
    # outputs. The corresponding request structure is `ScopeReference`.
    #
    # @!attribute [rw] scope_arn
    #   The ARN of the associated scope.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AssociatedScope AWS API Documentation
    #
    class AssociatedScope < Struct.new(
      :scope_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # An association between a policy and either a template or a rule, as
    # returned in outputs. Exactly one of `templateArn` or `ruleArn` is set.
    # The corresponding request structure is `TemplateOrRuleReference`.
    #
    # @note AssociatedTemplateOrRule is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AssociatedTemplateOrRule corresponding to the set member.
    #
    # @!attribute [rw] template_arn
    #   The ARN of the associated template.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The ARN of the associated rule.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/AssociatedTemplateOrRule AWS API Documentation
    #
    class AssociatedTemplateOrRule < Struct.new(
      :template_arn,
      :rule_arn,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TemplateArn < AssociatedTemplateOrRule; end
      class RuleArn < AssociatedTemplateOrRule; end
      class Unknown < AssociatedTemplateOrRule; end
    end

    # Describes a single configuration value that does not match the
    # intended configuration.
    #
    # @!attribute [rw] configuration_name
    #   The name of the configuration setting that is in conflict.
    #   @return [String]
    #
    # @!attribute [rw] expected_value
    #   The configuration value that AWS Network Security Manager expected.
    #   @return [String]
    #
    # @!attribute [rw] actual_value
    #   The configuration value that was found on the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ConfigurationIssue AWS API Documentation
    #
    class ConfigurationIssue < Struct.new(
      :configuration_name,
      :expected_value,
      :actual_value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request conflicts with the current state of the resource. For
    # example, the resource was modified concurrently, or it is in a state
    # that does not allow the requested operation.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that is in conflict with the request.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that is in conflict with the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::PolicyReference>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::ScopeReference>]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`). Default: `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeploymentInput AWS API Documentation
    #
    class CreateDeploymentInput < Struct.new(
      :client_token,
      :deployment_name,
      :deployment_description,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :is_published,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The service-generated id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::AssociatedPolicy>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::AssociatedScope>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] deployment_coverage
    #   The coverage information for the deployment. For each firewall type,
    #   it shows which policies have that firewall type and which in-scope
    #   resource types the firewall type protects.
    #   @return [Array<Types::DeploymentCoverageEntry>]
    #
    # @!attribute [rw] warnings
    #   Warnings about potential issues, such as a policy that has no
    #   applicable resources in the deployment's scope.
    #   @return [Array<Types::DeploymentWarningEntry>]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeploymentOutput AWS API Documentation
    #
    class CreateDeploymentOutput < Struct.new(
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :deployment_description,
      :status,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :deployment_coverage,
      :warnings,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the snapshot when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeploymentSnapshotInput AWS API Documentation
    #
    class CreateDeploymentSnapshotInput < Struct.new(
      :deployment_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The service-generated id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::AssociatedPolicy>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::AssociatedScope>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateDeploymentSnapshotOutput AWS API Documentation
    #
    class CreateDeploymentSnapshotOutput < Struct.new(
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :deployment_description,
      :status,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules to associate with the policy. For AWS WAF
    #   policies, specify 1 to 100 templates or rules, of which at most 2
    #   can be templates. For AWS Shield Advanced policies, this list must
    #   be empty.
    #   @return [Array<Types::TemplateOrRuleReference>]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`). Default: `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicyInput AWS API Documentation
    #
    class CreatePolicyInput < Struct.new(
      :client_token,
      :policy_name,
      :policy_description,
      :priority,
      :associated_template_and_rule_list,
      :firewall_type,
      :policy_configuration,
      :is_published,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The service-generated id of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules associated with the policy. For AWS WAF
    #   policies, this list contains 1 to 100 templates or rules, of which
    #   at most 2 can be templates. For AWS Shield Advanced policies, this
    #   list is empty.
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicyOutput AWS API Documentation
    #
    class CreatePolicyOutput < Struct.new(
      :policy_id,
      :policy_arn,
      :policy_name,
      :policy_description,
      :status,
      :priority,
      :associated_template_and_rule_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :policy_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the snapshot when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicySnapshotInput AWS API Documentation
    #
    class CreatePolicySnapshotInput < Struct.new(
      :policy_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The service-generated id of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules associated with the policy. For AWS WAF
    #   policies, this list contains 1 to 100 templates or rules, of which
    #   at most 2 can be templates. For AWS Shield Advanced policies, this
    #   list is empty.
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreatePolicySnapshotOutput AWS API Documentation
    #
    class CreatePolicySnapshotOutput < Struct.new(
      :policy_id,
      :policy_arn,
      :policy_name,
      :policy_description,
      :status,
      :priority,
      :associated_template_and_rule_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :policy_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type. For an
    #   AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For an AWS
    #   WAF `CONFIGURATION` rule, provide a single web ACL setting, such as
    #   `DefaultAction` or `VisibilityConfig`; use `wafConfigDataType` to
    #   declare which setting the document contains. For the schema of each
    #   setting and complete examples, see [Writing rule configurations][1]
    #   in the *AWS Network Security Manager Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`). Default: `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRuleInput AWS API Documentation
    #
    class CreateRuleInput < Struct.new(
      :client_token,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :is_published,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The service-generated id of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRuleOutput AWS API Documentation
    #
    class CreateRuleOutput < Struct.new(
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the snapshot when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRuleSnapshotInput AWS API Documentation
    #
    class CreateRuleSnapshotInput < Struct.new(
      :rule_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The service-generated id of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateRuleSnapshotOutput AWS API Documentation
    #
    class CreateRuleSnapshotOutput < Struct.new(
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`). Default: `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScopeInput AWS API Documentation
    #
    class CreateScopeInput < Struct.new(
      :client_token,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :is_published,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The service-generated id of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScopeOutput AWS API Documentation
    #
    class CreateScopeOutput < Struct.new(
      :scope_id,
      :scope_arn,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the snapshot when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScopeSnapshotInput AWS API Documentation
    #
    class CreateScopeSnapshotInput < Struct.new(
      :scope_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The service-generated id of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateScopeSnapshotOutput AWS API Documentation
    #
    class CreateScopeSnapshotOutput < Struct.new(
      :scope_id,
      :scope_arn,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::RuleReference>]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`). Default: `true`.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplateInput AWS API Documentation
    #
    class CreateTemplateInput < Struct.new(
      :client_token,
      :template_name,
      :template_description,
      :associated_rule_list,
      :firewall_type,
      :is_published,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The service-generated id of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::AssociatedRule>]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplateOutput AWS API Documentation
    #
    class CreateTemplateOutput < Struct.new(
      :template_id,
      :template_arn,
      :template_name,
      :template_description,
      :status,
      :version,
      :associated_rule_list,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the snapshot when it is created.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplateSnapshotInput AWS API Documentation
    #
    class CreateTemplateSnapshotInput < Struct.new(
      :template_identifier,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The service-generated id of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::AssociatedRule>]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/CreateTemplateSnapshotOutput AWS API Documentation
    #
    class CreateTemplateSnapshotOutput < Struct.new(
      :template_id,
      :template_arn,
      :template_name,
      :template_description,
      :status,
      :version,
      :associated_rule_list,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The AWS account ID of the administrator account to remove.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteAdminAccountRequest AWS API Documentation
    #
    class DeleteAdminAccountRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteDeploymentInput AWS API Documentation
    #
    class DeleteDeploymentInput < Struct.new(
      :deployment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeletePolicyInput AWS API Documentation
    #
    class DeletePolicyInput < Struct.new(
      :policy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteRuleInput AWS API Documentation
    #
    class DeleteRuleInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteScopeInput AWS API Documentation
    #
    class DeleteScopeInput < Struct.new(
      :scope_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeleteTemplateInput AWS API Documentation
    #
    class DeleteTemplateInput < Struct.new(
      :template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration settings that control a deployment's behavior.
    #
    # @!attribute [rw] enable_cross_account_visibility
    #   Specifies whether aggregate synchronization status details for the
    #   resources covered by this deployment are visible across accounts.
    #   Default: `false`.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeploymentConfiguration AWS API Documentation
    #
    class DeploymentConfiguration < Struct.new(
      :enable_cross_account_visibility)
      SENSITIVE = []
      include Aws::Structure
    end

    # Coverage information for one firewall type within a deployment. It
    # lists the deployment's policies that have this firewall type. It also
    # lists the resource types in the deployment's scope that the firewall
    # type protects.
    #
    # @!attribute [rw] firewall_type
    #   The firewall type that the policies in this entry share.
    #   @return [String]
    #
    # @!attribute [rw] policy_arns
    #   The Amazon Resource Names (ARNs) of the deployment's policies that
    #   have this firewall type.
    #   @return [Array<String>]
    #
    # @!attribute [rw] in_scope_resource_types
    #   The resource types in the deployment's scope that this firewall
    #   type protects. This list is empty if the scope does not select any
    #   resource types that the firewall type protects.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeploymentCoverageEntry AWS API Documentation
    #
    class DeploymentCoverageEntry < Struct.new(
      :firewall_type,
      :policy_arns,
      :in_scope_resource_types)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a deployment.
    #
    # @!attribute [rw] deployment_id
    #   The service-generated id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable),
    #   `ACTIVE` (published, in use), or `DISABLED` (deactivated; changes
    #   cannot be published until the resource is re-enabled).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated. For a snapshot, this is
    #   the time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeploymentSummary AWS API Documentation
    #
    class DeploymentSummary < Struct.new(
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :status,
      :version,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A warning about a potential issue with a deployment.
    #
    # @!attribute [rw] code
    #   A code that identifies the type of warning.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The ARN of the policy that the warning relates to.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable description of the warning.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/DeploymentWarningEntry AWS API Documentation
    #
    class DeploymentWarningEntry < Struct.new(
      :code,
      :policy_arn,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes why a firewall is out of sync. Exactly one of
    # `missingFirewall` or `invalidFirewall` is set.
    #
    # @note FirewallSyncReason is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FirewallSyncReason corresponding to the set member.
    #
    # @!attribute [rw] missing_firewall
    #   Indicates that an expected firewall is missing. The value describes
    #   the missing firewall.
    #   @return [String]
    #
    # @!attribute [rw] invalid_firewall
    #   Details about a firewall whose configuration does not match the
    #   intended configuration.
    #   @return [Types::InvalidFirewallReasons]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/FirewallSyncReason AWS API Documentation
    #
    class FirewallSyncReason < Struct.new(
      :missing_firewall,
      :invalid_firewall,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MissingFirewall < FirewallSyncReason; end
      class InvalidFirewall < FirewallSyncReason; end
      class Unknown < FirewallSyncReason; end
    end

    # @!attribute [rw] prompt
    #   A natural-language description of the configuration that you want to
    #   generate.
    #   @return [String]
    #
    # @!attribute [rw] rule_firewall_type
    #   The firewall type of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] waf_config_data_type
    #   For AWS WAF configuration rules, the specific AWS WAF configuration
    #   variant to generate. This is optional; if you omit it, the service
    #   selects the variant.
    #   @return [String]
    #
    # @!attribute [rw] current_configuration
    #   An existing configuration to edit, as a JSON string. When you
    #   provide this value, the operation edits the configuration. When you
    #   omit it, the operation generates a new configuration.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GenerateRuleConfigurationRequest AWS API Documentation
    #
    class GenerateRuleConfigurationRequest < Struct.new(
      :prompt,
      :rule_firewall_type,
      :rule_type,
      :waf_config_data_type,
      :current_configuration,
      :client_token)
      SENSITIVE = [:prompt]
      include Aws::Structure
    end

    # @!attribute [rw] configuration
    #   The generated configuration, as a JSON string. You can use this
    #   value in the `configuration` field of a rule.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Reserved for a future human-readable description of the generated
    #   configuration. This field is currently not populated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GenerateRuleConfigurationResponse AWS API Documentation
    #
    class GenerateRuleConfigurationResponse < Struct.new(
      :configuration,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The AWS account ID of the administrator account to retrieve.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetAdminAccountRequest AWS API Documentation
    #
    class GetAdminAccountRequest < Struct.new(
      :account_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_details
    #   The details of the administrator account.
    #   @return [Types::AdminAccountDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetAdminAccountResponse AWS API Documentation
    #
    class GetAdminAccountResponse < Struct.new(
      :admin_account_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetDeploymentInput AWS API Documentation
    #
    class GetDeploymentInput < Struct.new(
      :deployment_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The service-generated id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable),
    #   `ACTIVE` (published, in use), or `DISABLED` (deactivated; changes
    #   cannot be published until the resource is re-enabled).
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::AssociatedPolicy>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::AssociatedScope>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] deployment_coverage
    #   The coverage information for the deployment. For each firewall type,
    #   it shows which policies have that firewall type and which in-scope
    #   resource types the firewall type protects.
    #   @return [Array<Types::DeploymentCoverageEntry>]
    #
    # @!attribute [rw] warnings
    #   Warnings about potential issues, such as a policy that has no
    #   applicable resources in the deployment's scope.
    #   @return [Array<Types::DeploymentWarningEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetDeploymentOutput AWS API Documentation
    #
    class GetDeploymentOutput < Struct.new(
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :deployment_description,
      :status,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at,
      :deployment_coverage,
      :warnings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetPolicyInput AWS API Documentation
    #
    class GetPolicyInput < Struct.new(
      :policy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The service-generated id of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules associated with the policy. For AWS WAF
    #   policies, this list contains 1 to 100 templates or rules, of which
    #   at most 2 can be templates. For AWS Shield Advanced policies, this
    #   list is empty.
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetPolicyOutput AWS API Documentation
    #
    class GetPolicyOutput < Struct.new(
      :policy_id,
      :policy_arn,
      :policy_name,
      :policy_description,
      :status,
      :priority,
      :associated_template_and_rule_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :policy_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetRuleInput AWS API Documentation
    #
    class GetRuleInput < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The service-generated id of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetRuleOutput AWS API Documentation
    #
    class GetRuleOutput < Struct.new(
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetScopeInput AWS API Documentation
    #
    class GetScopeInput < Struct.new(
      :scope_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The service-generated id of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable),
    #   `ACTIVE` (published, in use), or `DISABLED` (deactivated; changes
    #   cannot be published until the resource is re-enabled).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetScopeOutput AWS API Documentation
    #
    class GetScopeOutput < Struct.new(
      :scope_id,
      :scope_arn,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetTemplateInput AWS API Documentation
    #
    class GetTemplateInput < Struct.new(
      :template_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The service-generated id of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::AssociatedRule>]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/GetTemplateOutput AWS API Documentation
    #
    class GetTemplateOutput < Struct.new(
      :template_id,
      :template_arn,
      :template_name,
      :template_description,
      :status,
      :version,
      :associated_rule_list,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request processing failed because of an internal error in the
    # service. This is a retryable error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the ways in which a firewall's configuration differs
    # from the intended configuration.
    #
    # @!attribute [rw] incorrect_single_value_configurations
    #   Single-value configuration settings whose values do not match the
    #   expected values.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @!attribute [rw] missing_appendable_configuration_values
    #   Appendable configuration values that are expected but missing.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @!attribute [rw] unexpected_appendable_configuration_values
    #   Appendable configuration values that are present but not expected.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @!attribute [rw] incorrect_appendable_configuration_order
    #   Appendable configuration values that are present but in the wrong
    #   order.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @!attribute [rw] missing_mergeable_configuration_values
    #   Mergeable configuration values that are expected but missing.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @!attribute [rw] unexpected_mergeable_configuration_values
    #   Mergeable configuration values that are present but not expected.
    #   @return [Array<Types::ConfigurationIssue>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/InvalidFirewallReasons AWS API Documentation
    #
    class InvalidFirewallReasons < Struct.new(
      :incorrect_single_value_configurations,
      :missing_appendable_configuration_values,
      :unexpected_appendable_configuration_values,
      :incorrect_appendable_configuration_order,
      :missing_mergeable_configuration_values,
      :unexpected_mergeable_configuration_values)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAdminAccountsRequest AWS API Documentation
    #
    class ListAdminAccountsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] admin_accounts
    #   The list of administrator accounts.
    #   @return [Array<Types::AdminAccountSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAdminAccountsResponse AWS API Documentation
    #
    class ListAdminAccountsResponse < Struct.new(
      :next_token,
      :admin_accounts)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] synchronization_status
    #   Filters the results by synchronization status, such as `IN_SYNC` or
    #   `OUT_OF_SYNC`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAggregateResourceSynchronizationStatusesInput AWS API Documentation
    #
    class ListAggregateResourceSynchronizationStatusesInput < Struct.new(
      :synchronization_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] resource_synchronization_statuses
    #   The list of resource synchronization statuses.
    #   @return [Array<Types::ResourceSynchronizationStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListAggregateResourceSynchronizationStatusesOutput AWS API Documentation
    #
    class ListAggregateResourceSynchronizationStatusesOutput < Struct.new(
      :next_token,
      :resource_synchronization_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeploymentSnapshotsInput AWS API Documentation
    #
    class ListDeploymentSnapshotsInput < Struct.new(
      :deployment_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   The snapshots of the deployment.
    #   @return [Array<Types::DeploymentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeploymentSnapshotsOutput AWS API Documentation
    #
    class ListDeploymentSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results by status: `ACTIVE`, `DRAFT`, or `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeploymentsInput AWS API Documentation
    #
    class ListDeploymentsInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] deployments
    #   The list of deployments.
    #   @return [Array<Types::DeploymentSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListDeploymentsOutput AWS API Documentation
    #
    class ListDeploymentsOutput < Struct.new(
      :next_token,
      :deployments)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPoliciesInput AWS API Documentation
    #
    class ListPoliciesInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] policies
    #   The list of policies.
    #   @return [Array<Types::PolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPoliciesOutput AWS API Documentation
    #
    class ListPoliciesOutput < Struct.new(
      :next_token,
      :policies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPolicySnapshotsInput AWS API Documentation
    #
    class ListPolicySnapshotsInput < Struct.new(
      :policy_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   The snapshots of the policy.
    #   @return [Array<Types::PolicySummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListPolicySnapshotsOutput AWS API Documentation
    #
    class ListPolicySnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_identifier
    #   The identifier of the resource to list associations for. This is the
    #   resource's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceAssociationsInput AWS API Documentation
    #
    class ListResourceAssociationsInput < Struct.new(
      :resource_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] resource_associations
    #   The list of resource associations.
    #   @return [Array<Types::ResourceAssociation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceAssociationsOutput AWS API Documentation
    #
    class ListResourceAssociationsOutput < Struct.new(
      :next_token,
      :resource_associations)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment to list synchronization statuses
    #   for. This is the deployment's Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] synchronization_status
    #   Filters the results by synchronization status, such as `IN_SYNC` or
    #   `OUT_OF_SYNC`.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceSynchronizationStatusesInput AWS API Documentation
    #
    class ListResourceSynchronizationStatusesInput < Struct.new(
      :deployment_identifier,
      :synchronization_status,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] resource_synchronization_statuses
    #   The list of resource synchronization statuses.
    #   @return [Array<Types::ResourceSynchronizationStatusSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListResourceSynchronizationStatusesOutput AWS API Documentation
    #
    class ListResourceSynchronizationStatusesOutput < Struct.new(
      :next_token,
      :resource_synchronization_statuses)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRuleSnapshotsInput AWS API Documentation
    #
    class ListRuleSnapshotsInput < Struct.new(
      :rule_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   The snapshots of the rule.
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRuleSnapshotsOutput AWS API Documentation
    #
    class ListRuleSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRulesInput AWS API Documentation
    #
    class ListRulesInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] rules
    #   The list of rules.
    #   @return [Array<Types::RuleSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListRulesOutput AWS API Documentation
    #
    class ListRulesOutput < Struct.new(
      :next_token,
      :rules)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopeSnapshotsInput AWS API Documentation
    #
    class ListScopeSnapshotsInput < Struct.new(
      :scope_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   The snapshots of the scope.
    #   @return [Array<Types::ScopeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopeSnapshotsOutput AWS API Documentation
    #
    class ListScopeSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results by status: `ACTIVE`, `DRAFT`, or `DISABLED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopesInput AWS API Documentation
    #
    class ListScopesInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] scopes
    #   The list of scopes.
    #   @return [Array<Types::ScopeSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListScopesOutput AWS API Documentation
    #
    class ListScopesOutput < Struct.new(
      :next_token,
      :scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to list tags for. The ARN must not include a
    #   `:DRAFT` qualifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTagsForResourceInput AWS API Documentation
    #
    class ListTagsForResourceInput < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags associated with the resource. Each tag is a key-value pair.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTagsForResourceOutput AWS API Documentation
    #
    class ListTagsForResourceOutput < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplateSnapshotsInput AWS API Documentation
    #
    class ListTemplateSnapshotsInput < Struct.new(
      :template_identifier,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   The snapshots of the template.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplateSnapshotsOutput AWS API Documentation
    #
    class ListTemplateSnapshotsOutput < Struct.new(
      :next_token,
      :snapshots)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return in a single call. Valid
    #   range: 1-100. To retrieve the remaining results, use the returned
    #   `nextToken` value in a subsequent call.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Filters the results by status, either `ACTIVE` or `DRAFT`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplatesInput AWS API Documentation
    #
    class ListTemplatesInput < Struct.new(
      :max_results,
      :next_token,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token for the next page of results. To retrieve the next page,
    #   call the operation again and provide this value. When there are no
    #   more results, this value is null.
    #   @return [String]
    #
    # @!attribute [rw] templates
    #   The list of templates.
    #   @return [Array<Types::TemplateSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ListTemplatesOutput AWS API Documentation
    #
    class ListTemplatesOutput < Struct.new(
      :next_token,
      :templates)
      SENSITIVE = []
      include Aws::Structure
    end

    # Indicates that details are not visible because of cross-account
    # restrictions.
    #
    # @!attribute [rw] reason
    #   The reason the details are not visible.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/NotVisibleMarker AWS API Documentation
    #
    class NotVisibleMarker < Struct.new(
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to an AWS Organizations organizational unit (OU), with
    # optional display metadata.
    #
    # @!attribute [rw] ou_id
    #   The ID of the AWS Organizations organizational unit (OU).
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The display name of the organizational unit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/OrganizationalUnitReference AWS API Documentation
    #
    class OrganizationalUnitReference < Struct.new(
      :ou_id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The out-of-sync reasons for a resource, or a marker indicating that
    # the details are not visible. Exactly one member is set.
    #
    # @note OutOfSyncReasonsView is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of OutOfSyncReasonsView corresponding to the set member.
    #
    # @!attribute [rw] reasons
    #   The out-of-sync reasons, keyed by firewall type.
    #   @return [Hash<String,Types::FirewallSyncReason>]
    #
    # @!attribute [rw] not_visible
    #   Indicates that the details are not visible because of cross-account
    #   restrictions.
    #   @return [Types::NotVisibleMarker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/OutOfSyncReasonsView AWS API Documentation
    #
    class OutOfSyncReasonsView < Struct.new(
      :reasons,
      :not_visible,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Reasons < OutOfSyncReasonsView; end
      class NotVisible < OutOfSyncReasonsView; end
      class Unknown < OutOfSyncReasonsView; end
    end

    # Configuration settings that control a policy's behavior.
    #
    # @!attribute [rw] remediation_enabled
    #   Specifies whether AWS Network Security Manager automatically
    #   remediates noncompliant resources. Default: `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] resources_clean_up
    #   Specifies whether AWS Network Security Manager automatically removes
    #   the resources it created when they are no longer needed. Default:
    #   `false`.
    #   @return [Boolean]
    #
    # @!attribute [rw] waf_config
    #   AWS WAF-specific policy settings. This is populated only for AWS WAF
    #   policies.
    #   @return [Types::WafConfig]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PolicyConfiguration AWS API Documentation
    #
    class PolicyConfiguration < Struct.new(
      :remediation_enabled,
      :resources_clean_up,
      :waf_config)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a policy in a create or update request.
    #
    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN), optionally version-qualified to pin a specific published
    #   version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PolicyReference AWS API Documentation
    #
    class PolicyReference < Struct.new(
      :policy_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a policy.
    #
    # @!attribute [rw] policy_id
    #   The service-generated id of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated. For a snapshot, this is
    #   the time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PolicySummary AWS API Documentation
    #
    class PolicySummary < Struct.new(
      :policy_id,
      :policy_arn,
      :policy_name,
      :status,
      :version,
      :has_published_version,
      :firewall_type,
      :priority,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] account_id
    #   The AWS account ID to set as the AWS Network Security Manager
    #   administrator account.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority to assign to the administrator account.
    #   @return [Integer]
    #
    # @!attribute [rw] admin_scope
    #   The scope of accounts, organizational units, and firewall types that
    #   the administrator can manage.
    #   @return [Types::AdminScopeInput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PutAdminAccountRequest AWS API Documentation
    #
    class PutAdminAccountRequest < Struct.new(
      :account_id,
      :priority,
      :admin_scope)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] admin_account_details
    #   The details of the administrator account that was set.
    #   @return [Types::AdminAccountDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/PutAdminAccountResponse AWS API Documentation
    #
    class PutAdminAccountResponse < Struct.new(
      :admin_account_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a remediation issue for a firewall type.
    #
    # @!attribute [rw] issue_type
    #   The type of remediation issue.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A human-readable description of the remediation issue.
    #   @return [String]
    #
    # @!attribute [rw] corrective_action
    #   A recommended action for resolving the remediation issue.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/RemediationIssueDetails AWS API Documentation
    #
    class RemediationIssueDetails < Struct.new(
      :issue_type,
      :message,
      :corrective_action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Remediation issue details for a resource, or a marker indicating that
    # the details are not visible. Exactly one member is set.
    #
    # @note RemediationIssuesView is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of RemediationIssuesView corresponding to the set member.
    #
    # @!attribute [rw] issues
    #   The remediation issues, keyed by firewall type.
    #   @return [Hash<String,Types::RemediationIssueDetails>]
    #
    # @!attribute [rw] not_visible
    #   Indicates that the details are not visible because of cross-account
    #   restrictions.
    #   @return [Types::NotVisibleMarker]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/RemediationIssuesView AWS API Documentation
    #
    class RemediationIssuesView < Struct.new(
      :issues,
      :not_visible,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Issues < RemediationIssuesView; end
      class NotVisible < RemediationIssuesView; end
      class Unknown < RemediationIssuesView; end
    end

    # Describes an association between a resource and another entity.
    #
    # @!attribute [rw] arn
    #   The ARN of the associated resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the associated resource, such as `Policy`, `Template`,
    #   or `Deployment`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceAssociation AWS API Documentation
    #
    class ResourceAssociation < Struct.new(
      :arn,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # A leaf condition that matches resources by tag or by
    # resource-type-specific configuration.
    #
    # @note ResourceCriteria is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceCriteria is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceCriteria corresponding to the set member.
    #
    # @!attribute [rw] tags
    #   Tag key-value pairs used to match resources.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] alb_config
    #   Filter criteria specific to Application Load Balancers.
    #   @return [Types::AlbConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceCriteria AWS API Documentation
    #
    class ResourceCriteria < Struct.new(
      :tags,
      :alb_config,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Tags < ResourceCriteria; end
      class AlbConfig < ResourceCriteria; end
      class Unknown < ResourceCriteria; end
    end

    # A logical expression that selects resources. Exactly one of
    # `criteria`, `and`, `or`, or `not` is set.
    #
    # @note ResourceLogicalExpression is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceLogicalExpression is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceLogicalExpression corresponding to the set member.
    #
    # @!attribute [rw] criteria
    #   A leaf condition that matches resources by tag or by
    #   resource-type-specific configuration.
    #   @return [Types::ResourceCriteria]
    #
    # @!attribute [rw] and
    #   A list of subexpressions that must all match.
    #   @return [Array<Types::ResourceLogicalExpression>]
    #
    # @!attribute [rw] or
    #   A list of subexpressions of which at least one must match.
    #   @return [Array<Types::ResourceLogicalExpression>]
    #
    # @!attribute [rw] not
    #   A subexpression that must not match.
    #   @return [Types::ResourceLogicalExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceLogicalExpression AWS API Documentation
    #
    class ResourceLogicalExpression < Struct.new(
      :criteria,
      :and,
      :or,
      :not,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Criteria < ResourceLogicalExpression; end
      class And < ResourceLogicalExpression; end
      class Or < ResourceLogicalExpression; end
      class Not < ResourceLogicalExpression; end
      class Unknown < ResourceLogicalExpression; end
    end

    # The specified resource was not found. Verify that the resource
    # identifier is correct and that the resource exists, then try your
    # request again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource that could not be found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource that could not be found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines which resources of a given type are in scope. Exactly one of
    # `includeAll`, `include`, or `exclude` is set.
    #
    # @!attribute [rw] include_all
    #   Includes all resources of the resource type.
    #   @return [Boolean]
    #
    # @!attribute [rw] include
    #   Includes the resources that match the specified criteria or explicit
    #   ARNs.
    #   @return [Types::ResourceSet]
    #
    # @!attribute [rw] exclude
    #   Excludes the resources that match the specified criteria or explicit
    #   ARNs.
    #   @return [Types::ResourceSet]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceScope AWS API Documentation
    #
    class ResourceScope < Struct.new(
      :include_all,
      :include,
      :exclude)
      SENSITIVE = []
      include Aws::Structure
    end

    # A set of resources defined by explicit ARNs, a logical expression, or
    # both.
    #
    # @!attribute [rw] explicit_arns
    #   An explicit list of resource ARNs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expression
    #   A logical expression that selects resources by combining criteria
    #   with AND, OR, and NOT operators.
    #   @return [Types::ResourceLogicalExpression]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceSet AWS API Documentation
    #
    class ResourceSet < Struct.new(
      :explicit_arns,
      :expression)
      SENSITIVE = []
      include Aws::Structure
    end

    # The synchronization status of a resource covered by a deployment.
    #
    # @!attribute [rw] synchronization_status
    #   The synchronization status of the resource, such as `IN_SYNC` or
    #   `OUT_OF_SYNC`.
    #   @return [String]
    #
    # @!attribute [rw] account_id
    #   The AWS account ID that owns the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource whose synchronization status is reported.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The ARN of the deployment that the synchronization status is
    #   associated with. This is absent for aggregate (cross-deployment)
    #   statuses.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource, in AWS CloudFormation format.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @!attribute [rw] out_of_sync_reasons
    #   The reasons the resource is out of sync, keyed by firewall type.
    #   This is null when the resource is in sync.
    #   @return [Types::OutOfSyncReasonsView]
    #
    # @!attribute [rw] remediation_issues
    #   Details about remediation issues, keyed by firewall type. This is
    #   null when there are no remediation issues.
    #   @return [Types::RemediationIssuesView]
    #
    # @!attribute [rw] evaluated_at
    #   The time when the synchronization status was last evaluated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ResourceSynchronizationStatusSummary AWS API Documentation
    #
    class ResourceSynchronizationStatusSummary < Struct.new(
      :synchronization_status,
      :account_id,
      :resource_arn,
      :deployment_arn,
      :resource_type,
      :updated_at,
      :out_of_sync_reasons,
      :remediation_issues,
      :evaluated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a rule in a create or update request.
    #
    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/RuleReference AWS API Documentation
    #
    class RuleReference < Struct.new(
      :rule_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a rule.
    #
    # @!attribute [rw] rule_id
    #   The service-generated id of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated. For a snapshot, this is
    #   the time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/RuleSummary AWS API Documentation
    #
    class RuleSummary < Struct.new(
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :status,
      :version,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines which accounts and resources are in scope.
    #
    # @!attribute [rw] account_filter
    #   The account filter that determines which accounts are in scope. When
    #   set, exactly one of `includeAll`, `include`, or `exclude` is set.
    #
    #   Organization administrators must include an account filter in every
    #   scope configuration. Single-account administrators must omit it: a
    #   scope without an account filter applies only to the administrator's
    #   own account. The presence of an account filter is fixed when the
    #   scope is created: an update can't add an account filter to a scope
    #   that was created without one, or remove the account filter from a
    #   scope that was created with one.
    #   @return [Types::AccountFilter]
    #
    # @!attribute [rw] resource_scopes
    #   The resource-level scoping configuration, keyed by resource type,
    #   that defines which resources within the selected accounts are in
    #   scope.
    #   @return [Hash<String,Types::ResourceScope>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ScopeConfiguration AWS API Documentation
    #
    class ScopeConfiguration < Struct.new(
      :account_filter,
      :resource_scopes)
      SENSITIVE = []
      include Aws::Structure
    end

    # A reference to a scope in a create or update request.
    #
    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ScopeReference AWS API Documentation
    #
    class ScopeReference < Struct.new(
      :scope_identifier)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about a scope.
    #
    # @!attribute [rw] scope_id
    #   The service-generated id of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable),
    #   `ACTIVE` (published, in use), or `DISABLED` (deactivated; changes
    #   cannot be published until the resource is re-enabled).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated. For a snapshot, this is
    #   the time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ScopeSummary AWS API Documentation
    #
    class ScopeSummary < Struct.new(
      :scope_id,
      :scope_arn,
      :scope_name,
      :status,
      :version,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request would exceed a service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The code that identifies the service quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The code for the AWS service that owns the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource associated with the quota that was exceeded.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of the resource associated with the quota that was
    #   exceeded.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :quota_code,
      :service_code,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service is temporarily unavailable. This is a retryable error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ServiceUnavailableException AWS API Documentation
    #
    class ServiceUnavailableException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request violates a tag policy that is in effect for the account or
    # organization.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TagPolicyViolationException AWS API Documentation
    #
    class TagPolicyViolationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to tag. The ARN must not include a `:DRAFT`
    #   qualifier.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to add to the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TagResourceInput AWS API Documentation
    #
    class TagResourceInput < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TagResourceOutput AWS API Documentation
    #
    class TagResourceOutput < Aws::EmptyStructure; end

    # A reference to either a template or a rule in a create or update
    # request. Set exactly one of `templateIdentifier` or `ruleIdentifier`.
    #
    # @note TemplateOrRuleReference is a union - when making an API calls you must set exactly one of the members.
    #
    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TemplateOrRuleReference AWS API Documentation
    #
    class TemplateOrRuleReference < Struct.new(
      :template_identifier,
      :rule_identifier,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class TemplateIdentifier < TemplateOrRuleReference; end
      class RuleIdentifier < TemplateOrRuleReference; end
      class Unknown < TemplateOrRuleReference; end
    end

    # Summary information about a template.
    #
    # @!attribute [rw] template_id
    #   The service-generated id of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated. For a snapshot, this is
    #   the time when the snapshot was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/TemplateSummary AWS API Documentation
    #
    class TemplateSummary < Struct.new(
      :template_id,
      :template_arn,
      :template_name,
      :status,
      :version,
      :has_published_version,
      :firewall_type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied because of request throttling. Reduce your
    # request rate and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/Unit AWS API Documentation
    #
    class Unit < Aws::EmptyStructure; end

    # @!attribute [rw] resource_arn
    #   The ARN of the resource to remove tags from. The ARN must not
    #   include a `:DRAFT` qualifier.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The keys of the tags to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UntagResourceInput AWS API Documentation
    #
    class UntagResourceInput < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UntagResourceOutput AWS API Documentation
    #
    class UntagResourceOutput < Aws::EmptyStructure; end

    # @!attribute [rw] deployment_identifier
    #   The identifier of the deployment. This is the deployment's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::PolicyReference>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::ScopeReference>]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`).
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateDeploymentInput AWS API Documentation
    #
    class UpdateDeploymentInput < Struct.new(
      :deployment_identifier,
      :update_token,
      :deployment_description,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :is_published,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deployment_id
    #   The service-generated id of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_arn
    #   The Amazon Resource Name (ARN) of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_name
    #   The name of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] deployment_description
    #   A description of the deployment.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] deployment_configuration
    #   The configuration settings for the deployment.
    #   @return [Types::DeploymentConfiguration]
    #
    # @!attribute [rw] associated_policy_list
    #   The policies associated with the deployment.
    #   @return [Array<Types::AssociatedPolicy>]
    #
    # @!attribute [rw] associated_scope_list
    #   The scope associated with the deployment. A deployment has exactly
    #   one scope.
    #   @return [Array<Types::AssociatedScope>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] deployment_coverage
    #   The coverage information for the deployment. For each firewall type,
    #   it shows which policies have that firewall type and which in-scope
    #   resource types the firewall type protects.
    #   @return [Array<Types::DeploymentCoverageEntry>]
    #
    # @!attribute [rw] warnings
    #   Warnings about potential issues, such as a policy that has no
    #   applicable resources in the deployment's scope.
    #   @return [Array<Types::DeploymentWarningEntry>]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateDeploymentOutput AWS API Documentation
    #
    class UpdateDeploymentOutput < Struct.new(
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :deployment_description,
      :status,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :deployment_coverage,
      :warnings,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_identifier
    #   The identifier of the policy. This is the policy's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules to associate with the policy. For AWS WAF
    #   policies, specify 1 to 100 templates or rules, of which at most 2
    #   can be templates. For AWS Shield Advanced policies, this list must
    #   be empty.
    #   @return [Array<Types::TemplateOrRuleReference>]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`).
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdatePolicyInput AWS API Documentation
    #
    class UpdatePolicyInput < Struct.new(
      :policy_identifier,
      :update_token,
      :policy_description,
      :priority,
      :associated_template_and_rule_list,
      :policy_configuration,
      :is_published,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy_id
    #   The service-generated id of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_description
    #   A description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] priority
    #   The priority of the resource. A lower number indicates a higher
    #   priority.
    #   @return [Integer]
    #
    # @!attribute [rw] associated_template_and_rule_list
    #   The templates and rules associated with the policy. For AWS WAF
    #   policies, this list contains 1 to 100 templates or rules, of which
    #   at most 2 can be templates. For AWS Shield Advanced policies, this
    #   list is empty.
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] policy_configuration
    #   The configuration settings that control the policy's behavior,
    #   including remediation and firewall-type-specific settings.
    #   @return [Types::PolicyConfiguration]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdatePolicyOutput AWS API Documentation
    #
    class UpdatePolicyOutput < Struct.new(
      :policy_id,
      :policy_arn,
      :policy_name,
      :policy_description,
      :status,
      :priority,
      :associated_template_and_rule_list,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :policy_configuration,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_identifier
    #   The identifier of the rule. This is the rule's Amazon Resource Name
    #   (ARN).
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type. For an
    #   AWS WAF `INSPECTION` rule, provide an AWS WAF rule group. For an AWS
    #   WAF `CONFIGURATION` rule, provide a single web ACL setting, such as
    #   `DefaultAction` or `VisibilityConfig`; use `wafConfigDataType` to
    #   declare which setting the document contains. For the schema of each
    #   setting and complete examples, see [Writing rule configurations][1]
    #   in the *AWS Network Security Manager Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`).
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateRuleInput AWS API Documentation
    #
    class UpdateRuleInput < Struct.new(
      :rule_identifier,
      :update_token,
      :rule_type,
      :rule_description,
      :configuration,
      :is_published,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_id
    #   The service-generated id of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_arn
    #   The Amazon Resource Name (ARN) of the rule.
    #   @return [String]
    #
    # @!attribute [rw] rule_name
    #   The name of the rule.
    #   @return [String]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] rule_type
    #   The type of the rule. `CONFIGURATION` rules contain firewall
    #   settings, and `INSPECTION` rules contain rule groups.
    #   @return [String]
    #
    # @!attribute [rw] rule_description
    #   A description of the rule.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   The firewall configuration for the rule, as a JSON document. The
    #   structure depends on the rule's firewall type and rule type.
    #   @return [Hash,Array,String,Numeric,Boolean]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateRuleOutput AWS API Documentation
    #
    class UpdateRuleOutput < Struct.new(
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_identifier
    #   The identifier of the scope. This is the scope's Amazon Resource
    #   Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope. If you don't include this member, the scope keeps its
    #   existing configuration.
    #
    #   A new configuration can change which accounts and resources are
    #   selected, but it can't add or remove the account filter itself: a
    #   scope created for multi-account use stays multi-account, and a scope
    #   created for single-account use stays single-account.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`).
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateScopeInput AWS API Documentation
    #
    class UpdateScopeInput < Struct.new(
      :scope_identifier,
      :update_token,
      :scope_description,
      :scope_configuration,
      :is_published,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] scope_id
    #   The service-generated id of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_arn
    #   The Amazon Resource Name (ARN) of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_name
    #   The name of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_description
    #   A description of the scope.
    #   @return [String]
    #
    # @!attribute [rw] scope_configuration
    #   The configuration that defines which accounts and resources are in
    #   scope.
    #   @return [Types::ScopeConfiguration]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateScopeOutput AWS API Documentation
    #
    class UpdateScopeOutput < Struct.new(
      :scope_id,
      :scope_arn,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :status,
      :version,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_identifier
    #   The identifier of the template. This is the template's Amazon
    #   Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::RuleReference>]
    #
    # @!attribute [rw] is_published
    #   Specifies whether to publish the resource. When `true`, the resource
    #   is saved in published (`ACTIVE`) state. When `false`, it is saved as
    #   a draft (`DRAFT`).
    #   @return [Boolean]
    #
    # @!attribute [rw] client_token
    #   A unique, case-sensitive token that you provide to ensure that the
    #   operation completes no more than one time. If you retry a request
    #   with the same client token and the same parameters, the service
    #   returns the result of the original successful request.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateTemplateInput AWS API Documentation
    #
    class UpdateTemplateInput < Struct.new(
      :template_identifier,
      :update_token,
      :template_description,
      :associated_rule_list,
      :is_published,
      :client_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] template_id
    #   The service-generated id of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_arn
    #   The Amazon Resource Name (ARN) of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_name
    #   The name of the template.
    #   @return [String]
    #
    # @!attribute [rw] template_description
    #   A description of the template.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of the resource: `DRAFT` (unpublished, editable)
    #   or `ACTIVE` (published, in use).
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the resource.
    #   @return [String]
    #
    # @!attribute [rw] associated_rule_list
    #   The rules associated with the template.
    #   @return [Array<Types::AssociatedRule>]
    #
    # @!attribute [rw] update_token
    #   A token used for optimistic concurrency control. Each read and write
    #   returns an `updateToken`. Provide the most recent value on your next
    #   update to detect and prevent conflicting concurrent modifications.
    #   @return [String]
    #
    # @!attribute [rw] is_snapshot
    #   Specifies whether the resource is a snapshot of a published version.
    #   @return [Boolean]
    #
    # @!attribute [rw] has_published_version
    #   Specifies whether a published version of the resource exists.
    #   @return [Boolean]
    #
    # @!attribute [rw] firewall_type
    #   The firewall type associated with the resource.
    #   @return [String]
    #
    # @!attribute [rw] updated_at
    #   The time when the resource was last updated.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/UpdateTemplateOutput AWS API Documentation
    #
    class UpdateTemplateOutput < Struct.new(
      :template_id,
      :template_arn,
      :template_name,
      :template_description,
      :status,
      :version,
      :associated_rule_list,
      :update_token,
      :is_snapshot,
      :has_published_version,
      :firewall_type,
      :updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request failed validation. For details, see the `reason` and
    # `fieldList` members of the response.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason that the request failed validation.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The list of request fields that failed validation, if any.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Describes a single request field that failed validation.
    #
    # @!attribute [rw] name
    #   The name of the field that failed validation.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A message describing the validation error for the field.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # AWS WAF-specific policy configuration settings.
    #
    # @!attribute [rw] existing_customer_web_acl_resolution
    #   Determines how AWS Network Security Manager handles remediation when
    #   a resource already has a customer-created web ACL. Required for AWS
    #   WAF policies.
    #   @return [String]
    #
    # @!attribute [rw] conflict_resolution
    #   The conflict-resolution strategy for AWS WAF policies. Required for
    #   AWS WAF policies.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/network-security-manager-2025-10-30/WafConfig AWS API Documentation
    #
    class WafConfig < Struct.new(
      :existing_customer_web_acl_resolution,
      :conflict_resolution)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

