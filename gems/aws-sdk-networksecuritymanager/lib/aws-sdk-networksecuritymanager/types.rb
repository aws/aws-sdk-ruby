# frozen_string_literal: true

# This is generated code!

module Aws::NetworkSecurityManager
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient permissions to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Determines which accounts are in scope. Exactly one of <code>includeAll</code>, <code>include</code>, or <code>exclude</code> is set.</p>
    # @!attribute include_all
    #   <p>Includes all accounts. No account filtering is applied.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute include
    #   <p>Includes only the specified accounts and organizational units.</p>
    #   @return [Types::AccountSet]
    # @!attribute exclude
    #   <p>Excludes the specified accounts and organizational units. All others are in scope.</p>
    #   @return [Types::AccountSet]
    class AccountFilter < Struct.new(
      :include_all,
      :include,
      :exclude,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IncludeAll < AccountFilter; end
      class Include < AccountFilter; end
      class Exclude < AccountFilter; end
      class Unknown < AccountFilter; end
    end

    # <p>A reference to an AWS account, with optional display metadata.</p>
    # @!attribute account_id
    #   <p>The AWS account ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the account.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address associated with the account.</p>
    #   @return [String]
    class AccountReference < Struct.new(
      nil,
      :account_id,
      :name,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of AWS accounts and organizational units.</p>
    # @!attribute account_ids
    #   <p>The list of AWS account IDs.</p>
    #   @return [Array<String>]
    # @!attribute organizational_units
    #   <p>The AWS Organizations organizational units (OUs) in the selection.</p>
    #   @return [Array<String>]
    class AccountSet < Struct.new(
      nil,
      :account_ids,
      :organizational_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The details of an AWS Network Security Manager administrator account.</p>
    # @!attribute admin_account
    #   <p>The AWS account ID of the administrator account.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority assigned to the administrator account.</p>
    #   @return [Integer]
    # @!attribute admin_scope
    #   <p>The administrative scope, which defines the accounts, organizational units, and firewall types that the administrator can manage.</p>
    #   @return [Types::AdminScope]
    # @!attribute status
    #   <p>The status of the administrator account, either <code>ONBOARDED</code> or <code>OFFBOARDED</code>.</p>
    #   @return [String]
    class AdminAccountDetails < Struct.new(
      nil,
      :admin_account,
      :priority,
      :admin_scope,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about an AWS Network Security Manager administrator account.</p>
    # @!attribute account_id
    #   <p>The AWS account ID.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority assigned to the administrator account.</p>
    #   @return [Integer]
    # @!attribute name
    #   <p>The name of the administrator account.</p>
    #   @return [String]
    # @!attribute email
    #   <p>The email address associated with the account.</p>
    #   @return [String]
    class AdminAccountSummary < Struct.new(
      nil,
      :account_id,
      :priority,
      :name,
      :email,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the firewall types that an administrator can create and manage.</p>
    # @!attribute all_firewall_types_enabled
    #   <p>Specifies whether the administrator can manage all firewall types, except for third-party firewall types.</p>
    #   @return [Boolean]
    # @!attribute firewall_types
    #   <p>The list of firewall types that the administrator can manage.</p>
    #   @return [Array<String>]
    class AdminFirewallTypeScope < Struct.new(
      nil,
      :all_firewall_types_enabled,
      :firewall_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the accounts, organizational units, and firewall types that an administrator can manage.</p>
    # @!attribute scope_filter
    #   <p>The filter that determines which accounts and organizational units are in the administrator's scope.</p>
    #   @return [Types::AdminScopeFilter]
    # @!attribute firewall_type_scope
    #   <p>The firewall types that the administrator can create and manage.</p>
    #   @return [Types::AdminFirewallTypeScope]
    class AdminScope < Struct.new(
      nil,
      :scope_filter,
      :firewall_type_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Determines which accounts and organizational units are in an administrator's scope. This is the reference form, which includes display metadata.</p>
    # @!attribute include_all
    #   <p>All accounts and organizational units are in scope.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute include_only
    #   <p>Only the specified accounts and organizational units are in the administrator's scope.</p>
    #   @return [Types::AdminScopeSelection]
    # @!attribute exclude_only
    #   <p>The accounts and organizational units to exclude from the administrator's scope. All others are in scope.</p>
    #   @return [Types::AdminScopeSelection]
    class AdminScopeFilter < Struct.new(
      :include_all,
      :include_only,
      :exclude_only,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IncludeAll < AdminScopeFilter; end
      class IncludeOnly < AdminScopeFilter; end
      class ExcludeOnly < AdminScopeFilter; end
      class Unknown < AdminScopeFilter; end
    end

    # <p>Determines which accounts and organizational units are in an administrator's scope. This is the input form, which uses account and organizational unit IDs.</p>
    # @!attribute include_all
    #   <p>All accounts and organizational units are in scope.</p>
    #   @return [Smithy::Schema::EmptyStructure]
    # @!attribute include_only
    #   <p>Only the specified accounts and organizational units are in the administrator's scope.</p>
    #   @return [Types::AdminScopeSelectionInput]
    # @!attribute exclude_only
    #   <p>The accounts and organizational units to exclude from the administrator's scope. All others are in scope.</p>
    #   @return [Types::AdminScopeSelectionInput]
    class AdminScopeFilterInput < Struct.new(
      :include_all,
      :include_only,
      :exclude_only,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class IncludeAll < AdminScopeFilterInput; end
      class IncludeOnly < AdminScopeFilterInput; end
      class ExcludeOnly < AdminScopeFilterInput; end
      class Unknown < AdminScopeFilterInput; end
    end

    # <p>The administrative scope configuration provided on input, using account and organizational unit IDs.</p>
    # @!attribute scope_filter
    #   <p>The filter that determines which accounts and organizational units are in the administrator's scope.</p>
    #   @return [Types::AdminScopeFilterInput]
    # @!attribute firewall_type_scope
    #   <p>The firewall types that the administrator can create and manage.</p>
    #   @return [Types::AdminFirewallTypeScope]
    class AdminScopeInput < Struct.new(
      nil,
      :scope_filter,
      :firewall_type_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A selection of accounts and organizational units. This is the reference form, which includes display metadata.</p>
    # @!attribute accounts
    #   <p>The AWS accounts in the selection.</p>
    #   @return [Array<Types::AccountReference>]
    # @!attribute organizational_units
    #   <p>The AWS Organizations organizational units (OUs) in the selection.</p>
    #   @return [Array<Types::OrganizationalUnitReference>]
    class AdminScopeSelection < Struct.new(
      nil,
      :accounts,
      :organizational_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A selection of accounts and organizational units. This is the input form, which uses account and organizational unit IDs.</p>
    # @!attribute accounts
    #   <p>The AWS accounts in the selection.</p>
    #   @return [Array<String>]
    # @!attribute organizational_units
    #   <p>The AWS Organizations organizational units (OUs) in the selection.</p>
    #   @return [Array<String>]
    class AdminScopeSelectionInput < Struct.new(
      nil,
      :accounts,
      :organizational_units,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Filter criteria specific to Application Load Balancers.</p>
    # @!attribute scheme
    #   <p>The scheme of the Application Load Balancer, either <code>internet-facing</code> or <code>internal</code>.</p>
    #   @return [String]
    # @!attribute ip_address_type
    #   <p>The IP address type of the Application Load Balancer.</p>
    #   @return [String]
    class AlbConfiguration < Struct.new(
      nil,
      :scheme,
      :ip_address_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An association between a deployment and a policy, as returned in outputs. The corresponding request structure is <code>PolicyReference</code>.</p>
    # @!attribute policy_arn
    #   <p>The ARN of the associated policy, including its version qualifier when a specific published version is pinned (for example, <code>...:policy:abc123:3</code>).</p>
    #   @return [String]
    class AssociatedPolicy < Struct.new(
      nil,
      :policy_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An association between a template and a rule, as returned in outputs. The corresponding request structure is <code>RuleReference</code>.</p>
    # @!attribute rule_arn
    #   <p>The ARN of the associated rule.</p>
    #   @return [String]
    class AssociatedRule < Struct.new(
      nil,
      :rule_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An association between a deployment and a scope, as returned in outputs. The corresponding request structure is <code>ScopeReference</code>.</p>
    # @!attribute scope_arn
    #   <p>The ARN of the associated scope.</p>
    #   @return [String]
    class AssociatedScope < Struct.new(
      nil,
      :scope_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An association between a policy and either a template or a rule, as returned in outputs. Exactly one of <code>templateArn</code> or <code>ruleArn</code> is set. The corresponding request structure is <code>TemplateOrRuleReference</code>.</p>
    # @!attribute template_arn
    #   <p>The ARN of the associated template.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The ARN of the associated rule.</p>
    #   @return [String]
    class AssociatedTemplateOrRule < Struct.new(
      :template_arn,
      :rule_arn,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TemplateArn < AssociatedTemplateOrRule; end
      class RuleArn < AssociatedTemplateOrRule; end
      class Unknown < AssociatedTemplateOrRule; end
    end

    # <p>Describes a single configuration value that does not match the intended configuration.</p>
    # @!attribute configuration_name
    #   <p>The name of the configuration setting that is in conflict.</p>
    #   @return [String]
    # @!attribute expected_value
    #   <p>The configuration value that AWS Network Security Manager expected.</p>
    #   @return [String]
    # @!attribute actual_value
    #   <p>The configuration value that was found on the resource.</p>
    #   @return [String]
    class ConfigurationIssue < Struct.new(
      nil,
      :configuration_name,
      :expected_value,
      :actual_value,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request conflicts with the current state of the resource. For example, the resource was modified concurrently, or it is in a state that does not allow the requested operation.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that is in conflict with the request.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that is in conflict with the request.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::PolicyReference>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::ScopeReference>]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the resource when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateDeploymentInput < Struct.new(
      nil,
      :client_token,
      :deployment_name,
      :deployment_description,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :is_published,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The service-generated id of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::AssociatedPolicy>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::AssociatedScope>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute deployment_coverage
    #   <p>The coverage information for the deployment. For each firewall type, it shows which policies have that firewall type and which in-scope resource types the firewall type protects.</p>
    #   @return [Array<Types::DeploymentCoverageEntry>]
    # @!attribute warnings
    #   <p>Warnings about potential issues, such as a policy that has no applicable resources in the deployment's scope.</p>
    #   @return [Array<Types::DeploymentWarningEntry>]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class CreateDeploymentOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateDeploymentSnapshotInput < Struct.new(
      nil,
      :deployment_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The service-generated id of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::AssociatedPolicy>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::AssociatedScope>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class CreateDeploymentSnapshotOutput < Struct.new(
      nil,
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
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules to associate with the policy. For AWS WAF policies, specify 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list must be empty.</p>
    #   @return [Array<Types::TemplateOrRuleReference>]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the resource when it is created.</p>
    #   @return [Hash<String, String>]
    class CreatePolicyInput < Struct.new(
      nil,
      :client_token,
      :policy_name,
      :policy_description,
      :priority,
      :associated_template_and_rule_list,
      :firewall_type,
      :policy_configuration,
      :is_published,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The service-generated id of the policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules associated with the policy. For AWS WAF policies, this list contains 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list is empty.</p>
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class CreatePolicyOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    #   @return [Hash<String, String>]
    class CreatePolicySnapshotInput < Struct.new(
      nil,
      :policy_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The service-generated id of the policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules associated with the policy. For AWS WAF policies, this list contains 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list is empty.</p>
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute updated_at
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class CreatePolicySnapshotOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type. For an AWS WAF <code>INSPECTION</code> rule, provide an AWS WAF rule group. For an AWS WAF <code>CONFIGURATION</code> rule, provide a single web ACL setting, such as <code>DefaultAction</code> or <code>VisibilityConfig</code>; use <code>wafConfigDataType</code> to declare which setting the document contains. For the schema of each setting and complete examples, see <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html">Writing rule configurations</a> in the <i>AWS Network Security Manager Developer Guide</i>.</p>
    #   @return [JSON]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the resource when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateRuleInput < Struct.new(
      nil,
      :client_token,
      :rule_name,
      :firewall_type,
      :rule_type,
      :rule_description,
      :configuration,
      :is_published,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The service-generated id of the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type.</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class CreateRuleOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateRuleSnapshotInput < Struct.new(
      nil,
      :rule_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The service-generated id of the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type.</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class CreateRuleSnapshotOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the resource when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateScopeInput < Struct.new(
      nil,
      :client_token,
      :scope_name,
      :scope_description,
      :scope_configuration,
      :is_published,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The service-generated id of the scope.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class CreateScopeOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateScopeSnapshotInput < Struct.new(
      nil,
      :scope_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The service-generated id of the scope.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class CreateScopeSnapshotOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::RuleReference>]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>). Default: <code>true</code>.</p>
    #   @return [Boolean]
    # @!attribute tags
    #   <p>The tags to add to the resource when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateTemplateInput < Struct.new(
      nil,
      :client_token,
      :template_name,
      :template_description,
      :associated_rule_list,
      :firewall_type,
      :is_published,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The service-generated id of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::AssociatedRule>]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class CreateTemplateOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the snapshot when it is created.</p>
    #   @return [Hash<String, String>]
    class CreateTemplateSnapshotInput < Struct.new(
      nil,
      :template_identifier,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The service-generated id of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::AssociatedRule>]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the snapshot was created.</p>
    #   @return [Time]
    class CreateTemplateSnapshotOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The AWS account ID of the administrator account to remove.</p>
    #   @return [String]
    class DeleteAdminAccountRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteDeploymentInput < Struct.new(
      nil,
      :deployment_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeletePolicyInput < Struct.new(
      nil,
      :policy_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteRuleInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteScopeInput < Struct.new(
      nil,
      :scope_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class DeleteTemplateInput < Struct.new(
      nil,
      :template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Configuration settings that control a deployment's behavior.</p>
    # @!attribute enable_cross_account_visibility
    #   <p>Specifies whether aggregate synchronization status details for the resources covered by this deployment are visible across accounts. Default: <code>false</code>.</p>
    #   @return [Boolean]
    class DeploymentConfiguration < Struct.new(
      nil,
      :enable_cross_account_visibility,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:enable_cross_account_visibility] = false unless options.key?(:enable_cross_account_visibility)
        super
      end
    end

    # <p>Coverage information for one firewall type within a deployment. It lists the deployment's policies that have this firewall type. It also lists the resource types in the deployment's scope that the firewall type protects.</p>
    # @!attribute firewall_type
    #   <p>The firewall type that the policies in this entry share.</p>
    #   @return [String]
    # @!attribute policy_arns
    #   <p>The Amazon Resource Names (ARNs) of the deployment's policies that have this firewall type.</p>
    #   @return [Array<String>]
    # @!attribute in_scope_resource_types
    #   <p>The resource types in the deployment's scope that this firewall type protects. This list is empty if the scope does not select any resource types that the firewall type protects.</p>
    #   @return [Array<String>]
    class DeploymentCoverageEntry < Struct.new(
      nil,
      :firewall_type,
      :policy_arns,
      :in_scope_resource_types,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a deployment.</p>
    # @!attribute deployment_id
    #   <p>The service-generated id of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable), <code>ACTIVE</code> (published, in use), or <code>DISABLED</code> (deactivated; changes cannot be published until the resource is re-enabled).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated. For a snapshot, this is the time when the snapshot was created.</p>
    #   @return [Time]
    class DeploymentSummary < Struct.new(
      nil,
      :deployment_id,
      :deployment_arn,
      :deployment_name,
      :status,
      :version,
      :has_published_version,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A warning about a potential issue with a deployment.</p>
    # @!attribute code
    #   <p>A code that identifies the type of warning.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The ARN of the policy that the warning relates to.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of the warning.</p>
    #   @return [String]
    class DeploymentWarningEntry < Struct.new(
      nil,
      :code,
      :policy_arn,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes why a firewall is out of sync. Exactly one of <code>missingFirewall</code> or <code>invalidFirewall</code> is set.</p>
    # @!attribute missing_firewall
    #   <p>Indicates that an expected firewall is missing. The value describes the missing firewall.</p>
    #   @return [String]
    # @!attribute invalid_firewall
    #   <p>Details about a firewall whose configuration does not match the intended configuration.</p>
    #   @return [Types::InvalidFirewallReasons]
    class FirewallSyncReason < Struct.new(
      :missing_firewall,
      :invalid_firewall,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MissingFirewall < FirewallSyncReason; end
      class InvalidFirewall < FirewallSyncReason; end
      class Unknown < FirewallSyncReason; end
    end

    # @!attribute prompt
    #   <p>A natural-language description of the configuration that you want to generate.</p>
    #   @return [String]
    # @!attribute rule_firewall_type
    #   <p>The firewall type of the rule.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute waf_config_data_type
    #   <p>For AWS WAF configuration rules, the specific AWS WAF configuration variant to generate. This is optional; if you omit it, the service selects the variant.</p>
    #   @return [String]
    # @!attribute current_configuration
    #   <p>An existing configuration to edit, as a JSON string. When you provide this value, the operation edits the configuration. When you omit it, the operation generates a new configuration.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class GenerateRuleConfigurationRequest < Struct.new(
      nil,
      :prompt,
      :rule_firewall_type,
      :rule_type,
      :waf_config_data_type,
      :current_configuration,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute configuration
    #   <p>The generated configuration, as a JSON string. You can use this value in the <code>configuration</code> field of a rule.</p>
    #   @return [String]
    # @!attribute description
    #   <p>Reserved for a future human-readable description of the generated configuration. This field is currently not populated.</p>
    #   @return [String]
    class GenerateRuleConfigurationResponse < Struct.new(
      nil,
      :configuration,
      :description,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The AWS account ID of the administrator account to retrieve.</p>
    #   @return [String]
    class GetAdminAccountRequest < Struct.new(
      nil,
      :account_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_details
    #   <p>The details of the administrator account.</p>
    #   @return [Types::AdminAccountDetails]
    class GetAdminAccountResponse < Struct.new(
      nil,
      :admin_account_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetDeploymentInput < Struct.new(
      nil,
      :deployment_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The service-generated id of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable), <code>ACTIVE</code> (published, in use), or <code>DISABLED</code> (deactivated; changes cannot be published until the resource is re-enabled).</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::AssociatedPolicy>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::AssociatedScope>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute deployment_coverage
    #   <p>The coverage information for the deployment. For each firewall type, it shows which policies have that firewall type and which in-scope resource types the firewall type protects.</p>
    #   @return [Array<Types::DeploymentCoverageEntry>]
    # @!attribute warnings
    #   <p>Warnings about potential issues, such as a policy that has no applicable resources in the deployment's scope.</p>
    #   @return [Array<Types::DeploymentWarningEntry>]
    class GetDeploymentOutput < Struct.new(
      nil,
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
      :warnings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetPolicyInput < Struct.new(
      nil,
      :policy_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The service-generated id of the policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules associated with the policy. For AWS WAF policies, this list contains 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list is empty.</p>
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class GetPolicyOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetRuleInput < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The service-generated id of the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type.</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class GetRuleOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetScopeInput < Struct.new(
      nil,
      :scope_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The service-generated id of the scope.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable), <code>ACTIVE</code> (published, in use), or <code>DISABLED</code> (deactivated; changes cannot be published until the resource is re-enabled).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class GetScopeOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class GetTemplateInput < Struct.new(
      nil,
      :template_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The service-generated id of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::AssociatedRule>]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class GetTemplateOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request processing failed because of an internal error in the service. This is a retryable error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the ways in which a firewall's configuration differs from the intended configuration.</p>
    # @!attribute incorrect_single_value_configurations
    #   <p>Single-value configuration settings whose values do not match the expected values.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    # @!attribute missing_appendable_configuration_values
    #   <p>Appendable configuration values that are expected but missing.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    # @!attribute unexpected_appendable_configuration_values
    #   <p>Appendable configuration values that are present but not expected.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    # @!attribute incorrect_appendable_configuration_order
    #   <p>Appendable configuration values that are present but in the wrong order.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    # @!attribute missing_mergeable_configuration_values
    #   <p>Mergeable configuration values that are expected but missing.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    # @!attribute unexpected_mergeable_configuration_values
    #   <p>Mergeable configuration values that are present but not expected.</p>
    #   @return [Array<Types::ConfigurationIssue>]
    class InvalidFirewallReasons < Struct.new(
      nil,
      :incorrect_single_value_configurations,
      :missing_appendable_configuration_values,
      :unexpected_appendable_configuration_values,
      :incorrect_appendable_configuration_order,
      :missing_mergeable_configuration_values,
      :unexpected_mergeable_configuration_values,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListAdminAccountsRequest < Struct.new(
      nil,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute admin_accounts
    #   <p>The list of administrator accounts.</p>
    #   @return [Array<Types::AdminAccountSummary>]
    class ListAdminAccountsResponse < Struct.new(
      nil,
      :next_token,
      :admin_accounts,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute synchronization_status
    #   <p>Filters the results by synchronization status, such as <code>IN_SYNC</code> or <code>OUT_OF_SYNC</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListAggregateResourceSynchronizationStatusesInput < Struct.new(
      nil,
      :synchronization_status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute resource_synchronization_statuses
    #   <p>The list of resource synchronization statuses.</p>
    #   @return [Array<Types::ResourceSynchronizationStatusSummary>]
    class ListAggregateResourceSynchronizationStatusesOutput < Struct.new(
      nil,
      :next_token,
      :resource_synchronization_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListDeploymentSnapshotsInput < Struct.new(
      nil,
      :deployment_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>The snapshots of the deployment.</p>
    #   @return [Array<Types::DeploymentSummary>]
    class ListDeploymentSnapshotsOutput < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by status: <code>ACTIVE</code>, <code>DRAFT</code>, or <code>DISABLED</code>.</p>
    #   @return [String]
    class ListDeploymentsInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute deployments
    #   <p>The list of deployments.</p>
    #   @return [Array<Types::DeploymentSummary>]
    class ListDeploymentsOutput < Struct.new(
      nil,
      :next_token,
      :deployments,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    #   @return [String]
    class ListPoliciesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute policies
    #   <p>The list of policies.</p>
    #   @return [Array<Types::PolicySummary>]
    class ListPoliciesOutput < Struct.new(
      nil,
      :next_token,
      :policies,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListPolicySnapshotsInput < Struct.new(
      nil,
      :policy_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>The snapshots of the policy.</p>
    #   @return [Array<Types::PolicySummary>]
    class ListPolicySnapshotsOutput < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_identifier
    #   <p>The identifier of the resource to list associations for. This is the resource's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListResourceAssociationsInput < Struct.new(
      nil,
      :resource_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute resource_associations
    #   <p>The list of resource associations.</p>
    #   @return [Array<Types::ResourceAssociation>]
    class ListResourceAssociationsOutput < Struct.new(
      nil,
      :next_token,
      :resource_associations,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment to list synchronization statuses for. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute synchronization_status
    #   <p>Filters the results by synchronization status, such as <code>IN_SYNC</code> or <code>OUT_OF_SYNC</code>.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListResourceSynchronizationStatusesInput < Struct.new(
      nil,
      :deployment_identifier,
      :synchronization_status,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute resource_synchronization_statuses
    #   <p>The list of resource synchronization statuses.</p>
    #   @return [Array<Types::ResourceSynchronizationStatusSummary>]
    class ListResourceSynchronizationStatusesOutput < Struct.new(
      nil,
      :next_token,
      :resource_synchronization_statuses,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListRuleSnapshotsInput < Struct.new(
      nil,
      :rule_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>The snapshots of the rule.</p>
    #   @return [Array<Types::RuleSummary>]
    class ListRuleSnapshotsOutput < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    #   @return [String]
    class ListRulesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute rules
    #   <p>The list of rules.</p>
    #   @return [Array<Types::RuleSummary>]
    class ListRulesOutput < Struct.new(
      nil,
      :next_token,
      :rules,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListScopeSnapshotsInput < Struct.new(
      nil,
      :scope_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>The snapshots of the scope.</p>
    #   @return [Array<Types::ScopeSummary>]
    class ListScopeSnapshotsOutput < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by status: <code>ACTIVE</code>, <code>DRAFT</code>, or <code>DISABLED</code>.</p>
    #   @return [String]
    class ListScopesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute scopes
    #   <p>The list of scopes.</p>
    #   @return [Array<Types::ScopeSummary>]
    class ListScopesOutput < Struct.new(
      nil,
      :next_token,
      :scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to list tags for. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    #   @return [String]
    class ListTagsForResourceInput < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags associated with the resource. Each tag is a key-value pair.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceOutput < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    class ListTemplateSnapshotsInput < Struct.new(
      nil,
      :template_identifier,
      :max_results,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute snapshots
    #   <p>The snapshots of the template.</p>
    #   @return [Array<Types::TemplateSummary>]
    class ListTemplateSnapshotsOutput < Struct.new(
      nil,
      :next_token,
      :snapshots,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call. Valid range: 1-100. To retrieve the remaining results, use the returned <code>nextToken</code> value in a subsequent call.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Filters the results by status, either <code>ACTIVE</code> or <code>DRAFT</code>.</p>
    #   @return [String]
    class ListTemplatesInput < Struct.new(
      nil,
      :max_results,
      :next_token,
      :status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next page of results. To retrieve the next page, call the operation again and provide this value. When there are no more results, this value is null.</p>
    #   @return [String]
    # @!attribute templates
    #   <p>The list of templates.</p>
    #   @return [Array<Types::TemplateSummary>]
    class ListTemplatesOutput < Struct.new(
      nil,
      :next_token,
      :templates,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Indicates that details are not visible because of cross-account restrictions.</p>
    # @!attribute reason
    #   <p>The reason the details are not visible.</p>
    #   @return [String]
    class NotVisibleMarker < Struct.new(
      nil,
      :reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to an AWS Organizations organizational unit (OU), with optional display metadata.</p>
    # @!attribute ou_id
    #   <p>The ID of the AWS Organizations organizational unit (OU).</p>
    #   @return [String]
    # @!attribute name
    #   <p>The display name of the organizational unit.</p>
    #   @return [String]
    class OrganizationalUnitReference < Struct.new(
      nil,
      :ou_id,
      :name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The out-of-sync reasons for a resource, or a marker indicating that the details are not visible. Exactly one member is set.</p>
    # @!attribute reasons
    #   <p>The out-of-sync reasons, keyed by firewall type.</p>
    #   @return [Hash<String, Types::FirewallSyncReason>]
    # @!attribute not_visible
    #   <p>Indicates that the details are not visible because of cross-account restrictions.</p>
    #   @return [Types::NotVisibleMarker]
    class OutOfSyncReasonsView < Struct.new(
      :reasons,
      :not_visible,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Reasons < OutOfSyncReasonsView; end
      class NotVisible < OutOfSyncReasonsView; end
      class Unknown < OutOfSyncReasonsView; end
    end

    # <p>Configuration settings that control a policy's behavior.</p>
    # @!attribute remediation_enabled
    #   <p>Specifies whether AWS Network Security Manager automatically remediates noncompliant resources. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute resources_clean_up
    #   <p>Specifies whether AWS Network Security Manager automatically removes the resources it created when they are no longer needed. Default: <code>false</code>.</p>
    #   @return [Boolean]
    # @!attribute waf_config
    #   <p>AWS WAF-specific policy settings. This is populated only for AWS WAF policies.</p>
    #   @return [Types::WafConfig]
    class PolicyConfiguration < Struct.new(
      nil,
      :remediation_enabled,
      :resources_clean_up,
      :waf_config,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:remediation_enabled] = false unless options.key?(:remediation_enabled)
        options[:resources_clean_up] = false unless options.key?(:resources_clean_up)
        super
      end
    end

    # <p>A reference to a policy in a create or update request.</p>
    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN), optionally version-qualified to pin a specific published version.</p>
    #   @return [String]
    class PolicyReference < Struct.new(
      nil,
      :policy_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a policy.</p>
    # @!attribute policy_id
    #   <p>The service-generated id of the policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated. For a snapshot, this is the time when the snapshot was created.</p>
    #   @return [Time]
    class PolicySummary < Struct.new(
      nil,
      :policy_id,
      :policy_arn,
      :policy_name,
      :status,
      :version,
      :has_published_version,
      :firewall_type,
      :priority,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute account_id
    #   <p>The AWS account ID to set as the AWS Network Security Manager administrator account.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority to assign to the administrator account.</p>
    #   @return [Integer]
    # @!attribute admin_scope
    #   <p>The scope of accounts, organizational units, and firewall types that the administrator can manage.</p>
    #   @return [Types::AdminScopeInput]
    class PutAdminAccountRequest < Struct.new(
      nil,
      :account_id,
      :priority,
      :admin_scope,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute admin_account_details
    #   <p>The details of the administrator account that was set.</p>
    #   @return [Types::AdminAccountDetails]
    class PutAdminAccountResponse < Struct.new(
      nil,
      :admin_account_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a remediation issue for a firewall type.</p>
    # @!attribute issue_type
    #   <p>The type of remediation issue.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A human-readable description of the remediation issue.</p>
    #   @return [String]
    # @!attribute corrective_action
    #   <p>A recommended action for resolving the remediation issue.</p>
    #   @return [String]
    class RemediationIssueDetails < Struct.new(
      nil,
      :issue_type,
      :message,
      :corrective_action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Remediation issue details for a resource, or a marker indicating that the details are not visible. Exactly one member is set.</p>
    # @!attribute issues
    #   <p>The remediation issues, keyed by firewall type.</p>
    #   @return [Hash<String, Types::RemediationIssueDetails>]
    # @!attribute not_visible
    #   <p>Indicates that the details are not visible because of cross-account restrictions.</p>
    #   @return [Types::NotVisibleMarker]
    class RemediationIssuesView < Struct.new(
      :issues,
      :not_visible,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Issues < RemediationIssuesView; end
      class NotVisible < RemediationIssuesView; end
      class Unknown < RemediationIssuesView; end
    end

    # <p>Describes an association between a resource and another entity.</p>
    # @!attribute arn
    #   <p>The ARN of the associated resource.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the associated resource, such as <code>Policy</code>, <code>Template</code>, or <code>Deployment</code>.</p>
    #   @return [String]
    class ResourceAssociation < Struct.new(
      nil,
      :arn,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A leaf condition that matches resources by tag or by resource-type-specific configuration.</p>
    # @!attribute tags
    #   <p>Tag key-value pairs used to match resources.</p>
    #   @return [Hash<String, String>]
    # @!attribute alb_config
    #   <p>Filter criteria specific to Application Load Balancers.</p>
    #   @return [Types::AlbConfiguration]
    class ResourceCriteria < Struct.new(
      :tags,
      :alb_config,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Tags < ResourceCriteria; end
      class AlbConfig < ResourceCriteria; end
      class Unknown < ResourceCriteria; end
    end

    # <p>A logical expression that selects resources. Exactly one of <code>criteria</code>, <code>and</code>, <code>or</code>, or <code>not</code> is set.</p>
    # @!attribute criteria
    #   <p>A leaf condition that matches resources by tag or by resource-type-specific configuration.</p>
    #   @return [Types::ResourceCriteria]
    # @!attribute and
    #   <p>A list of subexpressions that must all match.</p>
    #   @return [Array<Types::ResourceLogicalExpression>]
    # @!attribute or
    #   <p>A list of subexpressions of which at least one must match.</p>
    #   @return [Array<Types::ResourceLogicalExpression>]
    # @!attribute not
    #   <p>A subexpression that must not match.</p>
    #   @return [Types::ResourceLogicalExpression]
    class ResourceLogicalExpression < Struct.new(
      :criteria,
      :and,
      :or,
      :not,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Criteria < ResourceLogicalExpression; end
      class And < ResourceLogicalExpression; end
      class Or < ResourceLogicalExpression; end
      class Not < ResourceLogicalExpression; end
      class Unknown < ResourceLogicalExpression; end
    end

    # <p>The specified resource was not found. Verify that the resource identifier is correct and that the resource exists, then try your request again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource that could not be found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource that could not be found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines which resources of a given type are in scope. Exactly one of <code>includeAll</code>, <code>include</code>, or <code>exclude</code> is set.</p>
    # @!attribute include_all
    #   <p>Includes all resources of the resource type.</p>
    #   @return [Boolean]
    # @!attribute include
    #   <p>Includes the resources that match the specified criteria or explicit ARNs.</p>
    #   @return [Types::ResourceSet]
    # @!attribute exclude
    #   <p>Excludes the resources that match the specified criteria or explicit ARNs.</p>
    #   @return [Types::ResourceSet]
    class ResourceScope < Struct.new(
      nil,
      :include_all,
      :include,
      :exclude,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A set of resources defined by explicit ARNs, a logical expression, or both.</p>
    # @!attribute explicit_arns
    #   <p>An explicit list of resource ARNs.</p>
    #   @return [Array<String>]
    # @!attribute expression
    #   <p>A logical expression that selects resources by combining criteria with AND, OR, and NOT operators.</p>
    #   @return [Types::ResourceLogicalExpression]
    class ResourceSet < Struct.new(
      nil,
      :explicit_arns,
      :expression,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The synchronization status of a resource covered by a deployment.</p>
    # @!attribute synchronization_status
    #   <p>The synchronization status of the resource, such as <code>IN_SYNC</code> or <code>OUT_OF_SYNC</code>.</p>
    #   @return [String]
    # @!attribute account_id
    #   <p>The AWS account ID that owns the resource.</p>
    #   @return [String]
    # @!attribute resource_arn
    #   <p>The ARN of the resource whose synchronization status is reported.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The ARN of the deployment that the synchronization status is associated with. This is absent for aggregate (cross-deployment) statuses.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource, in AWS CloudFormation format.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    # @!attribute out_of_sync_reasons
    #   <p>The reasons the resource is out of sync, keyed by firewall type. This is null when the resource is in sync.</p>
    #   @return [Types::OutOfSyncReasonsView]
    # @!attribute remediation_issues
    #   <p>Details about remediation issues, keyed by firewall type. This is null when there are no remediation issues.</p>
    #   @return [Types::RemediationIssuesView]
    # @!attribute evaluated_at
    #   <p>The time when the synchronization status was last evaluated.</p>
    #   @return [Time]
    class ResourceSynchronizationStatusSummary < Struct.new(
      nil,
      :synchronization_status,
      :account_id,
      :resource_arn,
      :deployment_arn,
      :resource_type,
      :updated_at,
      :out_of_sync_reasons,
      :remediation_issues,
      :evaluated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a rule in a create or update request.</p>
    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class RuleReference < Struct.new(
      nil,
      :rule_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a rule.</p>
    # @!attribute rule_id
    #   <p>The service-generated id of the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated. For a snapshot, this is the time when the snapshot was created.</p>
    #   @return [Time]
    class RuleSummary < Struct.new(
      nil,
      :rule_id,
      :rule_arn,
      :rule_name,
      :firewall_type,
      :rule_type,
      :status,
      :version,
      :has_published_version,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines which accounts and resources are in scope.</p>
    # @!attribute account_filter
    #   <p>The account filter that determines which accounts are in scope. When set, exactly one of <code>includeAll</code>, <code>include</code>, or <code>exclude</code> is set.</p> <p>Organization administrators must include an account filter in every scope configuration. Single-account administrators must omit it: a scope without an account filter applies only to the administrator's own account. The presence of an account filter is fixed when the scope is created: an update can't add an account filter to a scope that was created without one, or remove the account filter from a scope that was created with one.</p>
    #   @return [Types::AccountFilter]
    # @!attribute resource_scopes
    #   <p>The resource-level scoping configuration, keyed by resource type, that defines which resources within the selected accounts are in scope.</p>
    #   @return [Hash<String, Types::ResourceScope>]
    class ScopeConfiguration < Struct.new(
      nil,
      :account_filter,
      :resource_scopes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to a scope in a create or update request.</p>
    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class ScopeReference < Struct.new(
      nil,
      :scope_identifier,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about a scope.</p>
    # @!attribute scope_id
    #   <p>The service-generated id of the scope.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable), <code>ACTIVE</code> (published, in use), or <code>DISABLED</code> (deactivated; changes cannot be published until the resource is re-enabled).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated. For a snapshot, this is the time when the snapshot was created.</p>
    #   @return [Time]
    class ScopeSummary < Struct.new(
      nil,
      :scope_id,
      :scope_arn,
      :scope_name,
      :status,
      :version,
      :has_published_version,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request would exceed a service quota.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute quota_code
    #   <p>The code that identifies the service quota that was exceeded.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The code for the AWS service that owns the quota that was exceeded.</p>
    #   @return [String]
    # @!attribute resource_id
    #   <p>The ID of the resource associated with the quota that was exceeded.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The type of the resource associated with the quota that was exceeded.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :quota_code,
      :service_code,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The service is temporarily unavailable. This is a retryable error.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ServiceUnavailableException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request violates a tag policy that is in effect for the account or organization.</p>
    # @!attribute message
    #   @return [String]
    class TagPolicyViolationException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to tag. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to add to the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>A reference to either a template or a rule in a create or update request. Set exactly one of <code>templateIdentifier</code> or <code>ruleIdentifier</code>.</p>
    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    class TemplateOrRuleReference < Struct.new(
      :template_identifier,
      :rule_identifier,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class TemplateIdentifier < TemplateOrRuleReference; end
      class RuleIdentifier < TemplateOrRuleReference; end
      class Unknown < TemplateOrRuleReference; end
    end

    # <p>Summary information about a template.</p>
    # @!attribute template_id
    #   <p>The service-generated id of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated. For a snapshot, this is the time when the snapshot was created.</p>
    #   @return [Time]
    class TemplateSummary < Struct.new(
      nil,
      :template_id,
      :template_arn,
      :template_name,
      :status,
      :version,
      :has_published_version,
      :firewall_type,
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request was denied because of request throttling. Reduce your request rate and try again.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to wait before retrying the request.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the resource to remove tags from. The ARN must not include a <code>:DRAFT</code> qualifier.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The keys of the tags to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceInput < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_identifier
    #   <p>The identifier of the deployment. This is the deployment's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::PolicyReference>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::ScopeReference>]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class UpdateDeploymentInput < Struct.new(
      nil,
      :deployment_identifier,
      :update_token,
      :deployment_description,
      :deployment_configuration,
      :associated_policy_list,
      :associated_scope_list,
      :is_published,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute deployment_id
    #   <p>The service-generated id of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_arn
    #   <p>The Amazon Resource Name (ARN) of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_name
    #   <p>The name of the deployment.</p>
    #   @return [String]
    # @!attribute deployment_description
    #   <p>A description of the deployment.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute deployment_configuration
    #   <p>The configuration settings for the deployment.</p>
    #   @return [Types::DeploymentConfiguration]
    # @!attribute associated_policy_list
    #   <p>The policies associated with the deployment.</p>
    #   @return [Array<Types::AssociatedPolicy>]
    # @!attribute associated_scope_list
    #   <p>The scope associated with the deployment. A deployment has exactly one scope.</p>
    #   @return [Array<Types::AssociatedScope>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute deployment_coverage
    #   <p>The coverage information for the deployment. For each firewall type, it shows which policies have that firewall type and which in-scope resource types the firewall type protects.</p>
    #   @return [Array<Types::DeploymentCoverageEntry>]
    # @!attribute warnings
    #   <p>Warnings about potential issues, such as a policy that has no applicable resources in the deployment's scope.</p>
    #   @return [Array<Types::DeploymentWarningEntry>]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class UpdateDeploymentOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_identifier
    #   <p>The identifier of the policy. This is the policy's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules to associate with the policy. For AWS WAF policies, specify 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list must be empty.</p>
    #   @return [Array<Types::TemplateOrRuleReference>]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class UpdatePolicyInput < Struct.new(
      nil,
      :policy_identifier,
      :update_token,
      :policy_description,
      :priority,
      :associated_template_and_rule_list,
      :policy_configuration,
      :is_published,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy_id
    #   <p>The service-generated id of the policy.</p>
    #   @return [String]
    # @!attribute policy_arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #   @return [String]
    # @!attribute policy_name
    #   <p>The name of the policy.</p>
    #   @return [String]
    # @!attribute policy_description
    #   <p>A description of the policy.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute priority
    #   <p>The priority of the resource. A lower number indicates a higher priority.</p>
    #   @return [Integer]
    # @!attribute associated_template_and_rule_list
    #   <p>The templates and rules associated with the policy. For AWS WAF policies, this list contains 1 to 100 templates or rules, of which at most 2 can be templates. For AWS Shield Advanced policies, this list is empty.</p>
    #   @return [Array<Types::AssociatedTemplateOrRule>]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute policy_configuration
    #   <p>The configuration settings that control the policy's behavior, including remediation and firewall-type-specific settings.</p>
    #   @return [Types::PolicyConfiguration]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class UpdatePolicyOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_identifier
    #   <p>The identifier of the rule. This is the rule's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type. For an AWS WAF <code>INSPECTION</code> rule, provide an AWS WAF rule group. For an AWS WAF <code>CONFIGURATION</code> rule, provide a single web ACL setting, such as <code>DefaultAction</code> or <code>VisibilityConfig</code>; use <code>wafConfigDataType</code> to declare which setting the document contains. For the schema of each setting and complete examples, see <a href="https://docs.aws.amazon.com/network-security-manager/latest/devguide/what-is.html">Writing rule configurations</a> in the <i>AWS Network Security Manager Developer Guide</i>.</p>
    #   @return [JSON]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class UpdateRuleInput < Struct.new(
      nil,
      :rule_identifier,
      :update_token,
      :rule_type,
      :rule_description,
      :configuration,
      :is_published,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute rule_id
    #   <p>The service-generated id of the rule.</p>
    #   @return [String]
    # @!attribute rule_arn
    #   <p>The Amazon Resource Name (ARN) of the rule.</p>
    #   @return [String]
    # @!attribute rule_name
    #   <p>The name of the rule.</p>
    #   @return [String]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute rule_type
    #   <p>The type of the rule. <code>CONFIGURATION</code> rules contain firewall settings, and <code>INSPECTION</code> rules contain rule groups.</p>
    #   @return [String]
    # @!attribute rule_description
    #   <p>A description of the rule.</p>
    #   @return [String]
    # @!attribute configuration
    #   <p>The firewall configuration for the rule, as a JSON document. The structure depends on the rule's firewall type and rule type.</p>
    #   @return [JSON]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class UpdateRuleOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_identifier
    #   <p>The identifier of the scope. This is the scope's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope. If you don't include this member, the scope keeps its existing configuration.</p> <p>A new configuration can change which accounts and resources are selected, but it can't add or remove the account filter itself: a scope created for multi-account use stays multi-account, and a scope created for single-account use stays single-account.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class UpdateScopeInput < Struct.new(
      nil,
      :scope_identifier,
      :update_token,
      :scope_description,
      :scope_configuration,
      :is_published,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute scope_id
    #   <p>The service-generated id of the scope.</p>
    #   @return [String]
    # @!attribute scope_arn
    #   <p>The Amazon Resource Name (ARN) of the scope.</p>
    #   @return [String]
    # @!attribute scope_name
    #   <p>The name of the scope.</p>
    #   @return [String]
    # @!attribute scope_description
    #   <p>A description of the scope.</p>
    #   @return [String]
    # @!attribute scope_configuration
    #   <p>The configuration that defines which accounts and resources are in scope.</p>
    #   @return [Types::ScopeConfiguration]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class UpdateScopeOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_identifier
    #   <p>The identifier of the template. This is the template's Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::RuleReference>]
    # @!attribute is_published
    #   <p>Specifies whether to publish the resource. When <code>true</code>, the resource is saved in published (<code>ACTIVE</code>) state. When <code>false</code>, it is saved as a draft (<code>DRAFT</code>).</p>
    #   @return [Boolean]
    # @!attribute client_token
    #   <p>A unique, case-sensitive token that you provide to ensure that the operation completes no more than one time. If you retry a request with the same client token and the same parameters, the service returns the result of the original successful request.</p>
    #   @return [String]
    class UpdateTemplateInput < Struct.new(
      nil,
      :template_identifier,
      :update_token,
      :template_description,
      :associated_rule_list,
      :is_published,
      :client_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute template_id
    #   <p>The service-generated id of the template.</p>
    #   @return [String]
    # @!attribute template_arn
    #   <p>The Amazon Resource Name (ARN) of the template.</p>
    #   @return [String]
    # @!attribute template_name
    #   <p>The name of the template.</p>
    #   @return [String]
    # @!attribute template_description
    #   <p>A description of the template.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The current status of the resource: <code>DRAFT</code> (unpublished, editable) or <code>ACTIVE</code> (published, in use).</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the resource.</p>
    #   @return [String]
    # @!attribute associated_rule_list
    #   <p>The rules associated with the template.</p>
    #   @return [Array<Types::AssociatedRule>]
    # @!attribute update_token
    #   <p>A token used for optimistic concurrency control. Each read and write returns an <code>updateToken</code>. Provide the most recent value on your next update to detect and prevent conflicting concurrent modifications.</p>
    #   @return [String]
    # @!attribute is_snapshot
    #   <p>Specifies whether the resource is a snapshot of a published version.</p>
    #   @return [Boolean]
    # @!attribute has_published_version
    #   <p>Specifies whether a published version of the resource exists.</p>
    #   @return [Boolean]
    # @!attribute firewall_type
    #   <p>The firewall type associated with the resource.</p>
    #   @return [String]
    # @!attribute updated_at
    #   <p>The time when the resource was last updated.</p>
    #   @return [Time]
    class UpdateTemplateOutput < Struct.new(
      nil,
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
      :updated_at,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request failed validation. For details, see the <code>reason</code> and <code>fieldList</code> members of the response.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason that the request failed validation.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The list of request fields that failed validation, if any.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Describes a single request field that failed validation.</p>
    # @!attribute name
    #   <p>The name of the field that failed validation.</p>
    #   @return [String]
    # @!attribute message
    #   <p>A message describing the validation error for the field.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>AWS WAF-specific policy configuration settings.</p>
    # @!attribute existing_customer_web_acl_resolution
    #   <p>Determines how AWS Network Security Manager handles remediation when a resource already has a customer-created web ACL. Required for AWS WAF policies.</p>
    #   @return [String]
    # @!attribute conflict_resolution
    #   <p>The conflict-resolution strategy for AWS WAF policies. Required for AWS WAF policies.</p>
    #   @return [String]
    class WafConfig < Struct.new(
      nil,
      :existing_customer_web_acl_resolution,
      :conflict_resolution,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
