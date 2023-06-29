# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IoT
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::IoT::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::IoT::EndpointParameters`'
      ) do |cfg|
        Aws::IoT::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          # If endpoint was discovered, do not resolve or apply the endpoint.
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)
          end

          context[:endpoint_params] = params
          context[:auth_scheme] =
            Aws::Endpoints.resolve_auth_scheme(context, endpoint)

          @handler.call(context)
        end

        private

        def apply_endpoint_headers(context, headers)
          headers.each do |key, values|
            value = values
              .compact
              .map { |s| Seahorse::Util.escape_header_list_string(s.to_s) }
              .join(',')

            context.http_request.headers[key] = value
          end
        end

        def parameters_for_operation(context)
          case context.operation_name
          when :accept_certificate_transfer
            Aws::IoT::Endpoints::AcceptCertificateTransfer.build(context)
          when :add_thing_to_billing_group
            Aws::IoT::Endpoints::AddThingToBillingGroup.build(context)
          when :add_thing_to_thing_group
            Aws::IoT::Endpoints::AddThingToThingGroup.build(context)
          when :associate_targets_with_job
            Aws::IoT::Endpoints::AssociateTargetsWithJob.build(context)
          when :attach_policy
            Aws::IoT::Endpoints::AttachPolicy.build(context)
          when :attach_principal_policy
            Aws::IoT::Endpoints::AttachPrincipalPolicy.build(context)
          when :attach_security_profile
            Aws::IoT::Endpoints::AttachSecurityProfile.build(context)
          when :attach_thing_principal
            Aws::IoT::Endpoints::AttachThingPrincipal.build(context)
          when :cancel_audit_mitigation_actions_task
            Aws::IoT::Endpoints::CancelAuditMitigationActionsTask.build(context)
          when :cancel_audit_task
            Aws::IoT::Endpoints::CancelAuditTask.build(context)
          when :cancel_certificate_transfer
            Aws::IoT::Endpoints::CancelCertificateTransfer.build(context)
          when :cancel_detect_mitigation_actions_task
            Aws::IoT::Endpoints::CancelDetectMitigationActionsTask.build(context)
          when :cancel_job
            Aws::IoT::Endpoints::CancelJob.build(context)
          when :cancel_job_execution
            Aws::IoT::Endpoints::CancelJobExecution.build(context)
          when :clear_default_authorizer
            Aws::IoT::Endpoints::ClearDefaultAuthorizer.build(context)
          when :confirm_topic_rule_destination
            Aws::IoT::Endpoints::ConfirmTopicRuleDestination.build(context)
          when :create_audit_suppression
            Aws::IoT::Endpoints::CreateAuditSuppression.build(context)
          when :create_authorizer
            Aws::IoT::Endpoints::CreateAuthorizer.build(context)
          when :create_billing_group
            Aws::IoT::Endpoints::CreateBillingGroup.build(context)
          when :create_certificate_from_csr
            Aws::IoT::Endpoints::CreateCertificateFromCsr.build(context)
          when :create_custom_metric
            Aws::IoT::Endpoints::CreateCustomMetric.build(context)
          when :create_dimension
            Aws::IoT::Endpoints::CreateDimension.build(context)
          when :create_domain_configuration
            Aws::IoT::Endpoints::CreateDomainConfiguration.build(context)
          when :create_dynamic_thing_group
            Aws::IoT::Endpoints::CreateDynamicThingGroup.build(context)
          when :create_fleet_metric
            Aws::IoT::Endpoints::CreateFleetMetric.build(context)
          when :create_job
            Aws::IoT::Endpoints::CreateJob.build(context)
          when :create_job_template
            Aws::IoT::Endpoints::CreateJobTemplate.build(context)
          when :create_keys_and_certificate
            Aws::IoT::Endpoints::CreateKeysAndCertificate.build(context)
          when :create_mitigation_action
            Aws::IoT::Endpoints::CreateMitigationAction.build(context)
          when :create_ota_update
            Aws::IoT::Endpoints::CreateOTAUpdate.build(context)
          when :create_package
            Aws::IoT::Endpoints::CreatePackage.build(context)
          when :create_package_version
            Aws::IoT::Endpoints::CreatePackageVersion.build(context)
          when :create_policy
            Aws::IoT::Endpoints::CreatePolicy.build(context)
          when :create_policy_version
            Aws::IoT::Endpoints::CreatePolicyVersion.build(context)
          when :create_provisioning_claim
            Aws::IoT::Endpoints::CreateProvisioningClaim.build(context)
          when :create_provisioning_template
            Aws::IoT::Endpoints::CreateProvisioningTemplate.build(context)
          when :create_provisioning_template_version
            Aws::IoT::Endpoints::CreateProvisioningTemplateVersion.build(context)
          when :create_role_alias
            Aws::IoT::Endpoints::CreateRoleAlias.build(context)
          when :create_scheduled_audit
            Aws::IoT::Endpoints::CreateScheduledAudit.build(context)
          when :create_security_profile
            Aws::IoT::Endpoints::CreateSecurityProfile.build(context)
          when :create_stream
            Aws::IoT::Endpoints::CreateStream.build(context)
          when :create_thing
            Aws::IoT::Endpoints::CreateThing.build(context)
          when :create_thing_group
            Aws::IoT::Endpoints::CreateThingGroup.build(context)
          when :create_thing_type
            Aws::IoT::Endpoints::CreateThingType.build(context)
          when :create_topic_rule
            Aws::IoT::Endpoints::CreateTopicRule.build(context)
          when :create_topic_rule_destination
            Aws::IoT::Endpoints::CreateTopicRuleDestination.build(context)
          when :delete_account_audit_configuration
            Aws::IoT::Endpoints::DeleteAccountAuditConfiguration.build(context)
          when :delete_audit_suppression
            Aws::IoT::Endpoints::DeleteAuditSuppression.build(context)
          when :delete_authorizer
            Aws::IoT::Endpoints::DeleteAuthorizer.build(context)
          when :delete_billing_group
            Aws::IoT::Endpoints::DeleteBillingGroup.build(context)
          when :delete_ca_certificate
            Aws::IoT::Endpoints::DeleteCACertificate.build(context)
          when :delete_certificate
            Aws::IoT::Endpoints::DeleteCertificate.build(context)
          when :delete_custom_metric
            Aws::IoT::Endpoints::DeleteCustomMetric.build(context)
          when :delete_dimension
            Aws::IoT::Endpoints::DeleteDimension.build(context)
          when :delete_domain_configuration
            Aws::IoT::Endpoints::DeleteDomainConfiguration.build(context)
          when :delete_dynamic_thing_group
            Aws::IoT::Endpoints::DeleteDynamicThingGroup.build(context)
          when :delete_fleet_metric
            Aws::IoT::Endpoints::DeleteFleetMetric.build(context)
          when :delete_job
            Aws::IoT::Endpoints::DeleteJob.build(context)
          when :delete_job_execution
            Aws::IoT::Endpoints::DeleteJobExecution.build(context)
          when :delete_job_template
            Aws::IoT::Endpoints::DeleteJobTemplate.build(context)
          when :delete_mitigation_action
            Aws::IoT::Endpoints::DeleteMitigationAction.build(context)
          when :delete_ota_update
            Aws::IoT::Endpoints::DeleteOTAUpdate.build(context)
          when :delete_package
            Aws::IoT::Endpoints::DeletePackage.build(context)
          when :delete_package_version
            Aws::IoT::Endpoints::DeletePackageVersion.build(context)
          when :delete_policy
            Aws::IoT::Endpoints::DeletePolicy.build(context)
          when :delete_policy_version
            Aws::IoT::Endpoints::DeletePolicyVersion.build(context)
          when :delete_provisioning_template
            Aws::IoT::Endpoints::DeleteProvisioningTemplate.build(context)
          when :delete_provisioning_template_version
            Aws::IoT::Endpoints::DeleteProvisioningTemplateVersion.build(context)
          when :delete_registration_code
            Aws::IoT::Endpoints::DeleteRegistrationCode.build(context)
          when :delete_role_alias
            Aws::IoT::Endpoints::DeleteRoleAlias.build(context)
          when :delete_scheduled_audit
            Aws::IoT::Endpoints::DeleteScheduledAudit.build(context)
          when :delete_security_profile
            Aws::IoT::Endpoints::DeleteSecurityProfile.build(context)
          when :delete_stream
            Aws::IoT::Endpoints::DeleteStream.build(context)
          when :delete_thing
            Aws::IoT::Endpoints::DeleteThing.build(context)
          when :delete_thing_group
            Aws::IoT::Endpoints::DeleteThingGroup.build(context)
          when :delete_thing_type
            Aws::IoT::Endpoints::DeleteThingType.build(context)
          when :delete_topic_rule
            Aws::IoT::Endpoints::DeleteTopicRule.build(context)
          when :delete_topic_rule_destination
            Aws::IoT::Endpoints::DeleteTopicRuleDestination.build(context)
          when :delete_v2_logging_level
            Aws::IoT::Endpoints::DeleteV2LoggingLevel.build(context)
          when :deprecate_thing_type
            Aws::IoT::Endpoints::DeprecateThingType.build(context)
          when :describe_account_audit_configuration
            Aws::IoT::Endpoints::DescribeAccountAuditConfiguration.build(context)
          when :describe_audit_finding
            Aws::IoT::Endpoints::DescribeAuditFinding.build(context)
          when :describe_audit_mitigation_actions_task
            Aws::IoT::Endpoints::DescribeAuditMitigationActionsTask.build(context)
          when :describe_audit_suppression
            Aws::IoT::Endpoints::DescribeAuditSuppression.build(context)
          when :describe_audit_task
            Aws::IoT::Endpoints::DescribeAuditTask.build(context)
          when :describe_authorizer
            Aws::IoT::Endpoints::DescribeAuthorizer.build(context)
          when :describe_billing_group
            Aws::IoT::Endpoints::DescribeBillingGroup.build(context)
          when :describe_ca_certificate
            Aws::IoT::Endpoints::DescribeCACertificate.build(context)
          when :describe_certificate
            Aws::IoT::Endpoints::DescribeCertificate.build(context)
          when :describe_custom_metric
            Aws::IoT::Endpoints::DescribeCustomMetric.build(context)
          when :describe_default_authorizer
            Aws::IoT::Endpoints::DescribeDefaultAuthorizer.build(context)
          when :describe_detect_mitigation_actions_task
            Aws::IoT::Endpoints::DescribeDetectMitigationActionsTask.build(context)
          when :describe_dimension
            Aws::IoT::Endpoints::DescribeDimension.build(context)
          when :describe_domain_configuration
            Aws::IoT::Endpoints::DescribeDomainConfiguration.build(context)
          when :describe_endpoint
            Aws::IoT::Endpoints::DescribeEndpoint.build(context)
          when :describe_event_configurations
            Aws::IoT::Endpoints::DescribeEventConfigurations.build(context)
          when :describe_fleet_metric
            Aws::IoT::Endpoints::DescribeFleetMetric.build(context)
          when :describe_index
            Aws::IoT::Endpoints::DescribeIndex.build(context)
          when :describe_job
            Aws::IoT::Endpoints::DescribeJob.build(context)
          when :describe_job_execution
            Aws::IoT::Endpoints::DescribeJobExecution.build(context)
          when :describe_job_template
            Aws::IoT::Endpoints::DescribeJobTemplate.build(context)
          when :describe_managed_job_template
            Aws::IoT::Endpoints::DescribeManagedJobTemplate.build(context)
          when :describe_mitigation_action
            Aws::IoT::Endpoints::DescribeMitigationAction.build(context)
          when :describe_provisioning_template
            Aws::IoT::Endpoints::DescribeProvisioningTemplate.build(context)
          when :describe_provisioning_template_version
            Aws::IoT::Endpoints::DescribeProvisioningTemplateVersion.build(context)
          when :describe_role_alias
            Aws::IoT::Endpoints::DescribeRoleAlias.build(context)
          when :describe_scheduled_audit
            Aws::IoT::Endpoints::DescribeScheduledAudit.build(context)
          when :describe_security_profile
            Aws::IoT::Endpoints::DescribeSecurityProfile.build(context)
          when :describe_stream
            Aws::IoT::Endpoints::DescribeStream.build(context)
          when :describe_thing
            Aws::IoT::Endpoints::DescribeThing.build(context)
          when :describe_thing_group
            Aws::IoT::Endpoints::DescribeThingGroup.build(context)
          when :describe_thing_registration_task
            Aws::IoT::Endpoints::DescribeThingRegistrationTask.build(context)
          when :describe_thing_type
            Aws::IoT::Endpoints::DescribeThingType.build(context)
          when :detach_policy
            Aws::IoT::Endpoints::DetachPolicy.build(context)
          when :detach_principal_policy
            Aws::IoT::Endpoints::DetachPrincipalPolicy.build(context)
          when :detach_security_profile
            Aws::IoT::Endpoints::DetachSecurityProfile.build(context)
          when :detach_thing_principal
            Aws::IoT::Endpoints::DetachThingPrincipal.build(context)
          when :disable_topic_rule
            Aws::IoT::Endpoints::DisableTopicRule.build(context)
          when :enable_topic_rule
            Aws::IoT::Endpoints::EnableTopicRule.build(context)
          when :get_behavior_model_training_summaries
            Aws::IoT::Endpoints::GetBehaviorModelTrainingSummaries.build(context)
          when :get_buckets_aggregation
            Aws::IoT::Endpoints::GetBucketsAggregation.build(context)
          when :get_cardinality
            Aws::IoT::Endpoints::GetCardinality.build(context)
          when :get_effective_policies
            Aws::IoT::Endpoints::GetEffectivePolicies.build(context)
          when :get_indexing_configuration
            Aws::IoT::Endpoints::GetIndexingConfiguration.build(context)
          when :get_job_document
            Aws::IoT::Endpoints::GetJobDocument.build(context)
          when :get_logging_options
            Aws::IoT::Endpoints::GetLoggingOptions.build(context)
          when :get_ota_update
            Aws::IoT::Endpoints::GetOTAUpdate.build(context)
          when :get_package
            Aws::IoT::Endpoints::GetPackage.build(context)
          when :get_package_configuration
            Aws::IoT::Endpoints::GetPackageConfiguration.build(context)
          when :get_package_version
            Aws::IoT::Endpoints::GetPackageVersion.build(context)
          when :get_percentiles
            Aws::IoT::Endpoints::GetPercentiles.build(context)
          when :get_policy
            Aws::IoT::Endpoints::GetPolicy.build(context)
          when :get_policy_version
            Aws::IoT::Endpoints::GetPolicyVersion.build(context)
          when :get_registration_code
            Aws::IoT::Endpoints::GetRegistrationCode.build(context)
          when :get_statistics
            Aws::IoT::Endpoints::GetStatistics.build(context)
          when :get_topic_rule
            Aws::IoT::Endpoints::GetTopicRule.build(context)
          when :get_topic_rule_destination
            Aws::IoT::Endpoints::GetTopicRuleDestination.build(context)
          when :get_v2_logging_options
            Aws::IoT::Endpoints::GetV2LoggingOptions.build(context)
          when :list_active_violations
            Aws::IoT::Endpoints::ListActiveViolations.build(context)
          when :list_attached_policies
            Aws::IoT::Endpoints::ListAttachedPolicies.build(context)
          when :list_audit_findings
            Aws::IoT::Endpoints::ListAuditFindings.build(context)
          when :list_audit_mitigation_actions_executions
            Aws::IoT::Endpoints::ListAuditMitigationActionsExecutions.build(context)
          when :list_audit_mitigation_actions_tasks
            Aws::IoT::Endpoints::ListAuditMitigationActionsTasks.build(context)
          when :list_audit_suppressions
            Aws::IoT::Endpoints::ListAuditSuppressions.build(context)
          when :list_audit_tasks
            Aws::IoT::Endpoints::ListAuditTasks.build(context)
          when :list_authorizers
            Aws::IoT::Endpoints::ListAuthorizers.build(context)
          when :list_billing_groups
            Aws::IoT::Endpoints::ListBillingGroups.build(context)
          when :list_ca_certificates
            Aws::IoT::Endpoints::ListCACertificates.build(context)
          when :list_certificates
            Aws::IoT::Endpoints::ListCertificates.build(context)
          when :list_certificates_by_ca
            Aws::IoT::Endpoints::ListCertificatesByCA.build(context)
          when :list_custom_metrics
            Aws::IoT::Endpoints::ListCustomMetrics.build(context)
          when :list_detect_mitigation_actions_executions
            Aws::IoT::Endpoints::ListDetectMitigationActionsExecutions.build(context)
          when :list_detect_mitigation_actions_tasks
            Aws::IoT::Endpoints::ListDetectMitigationActionsTasks.build(context)
          when :list_dimensions
            Aws::IoT::Endpoints::ListDimensions.build(context)
          when :list_domain_configurations
            Aws::IoT::Endpoints::ListDomainConfigurations.build(context)
          when :list_fleet_metrics
            Aws::IoT::Endpoints::ListFleetMetrics.build(context)
          when :list_indices
            Aws::IoT::Endpoints::ListIndices.build(context)
          when :list_job_executions_for_job
            Aws::IoT::Endpoints::ListJobExecutionsForJob.build(context)
          when :list_job_executions_for_thing
            Aws::IoT::Endpoints::ListJobExecutionsForThing.build(context)
          when :list_job_templates
            Aws::IoT::Endpoints::ListJobTemplates.build(context)
          when :list_jobs
            Aws::IoT::Endpoints::ListJobs.build(context)
          when :list_managed_job_templates
            Aws::IoT::Endpoints::ListManagedJobTemplates.build(context)
          when :list_metric_values
            Aws::IoT::Endpoints::ListMetricValues.build(context)
          when :list_mitigation_actions
            Aws::IoT::Endpoints::ListMitigationActions.build(context)
          when :list_ota_updates
            Aws::IoT::Endpoints::ListOTAUpdates.build(context)
          when :list_outgoing_certificates
            Aws::IoT::Endpoints::ListOutgoingCertificates.build(context)
          when :list_package_versions
            Aws::IoT::Endpoints::ListPackageVersions.build(context)
          when :list_packages
            Aws::IoT::Endpoints::ListPackages.build(context)
          when :list_policies
            Aws::IoT::Endpoints::ListPolicies.build(context)
          when :list_policy_principals
            Aws::IoT::Endpoints::ListPolicyPrincipals.build(context)
          when :list_policy_versions
            Aws::IoT::Endpoints::ListPolicyVersions.build(context)
          when :list_principal_policies
            Aws::IoT::Endpoints::ListPrincipalPolicies.build(context)
          when :list_principal_things
            Aws::IoT::Endpoints::ListPrincipalThings.build(context)
          when :list_provisioning_template_versions
            Aws::IoT::Endpoints::ListProvisioningTemplateVersions.build(context)
          when :list_provisioning_templates
            Aws::IoT::Endpoints::ListProvisioningTemplates.build(context)
          when :list_related_resources_for_audit_finding
            Aws::IoT::Endpoints::ListRelatedResourcesForAuditFinding.build(context)
          when :list_role_aliases
            Aws::IoT::Endpoints::ListRoleAliases.build(context)
          when :list_scheduled_audits
            Aws::IoT::Endpoints::ListScheduledAudits.build(context)
          when :list_security_profiles
            Aws::IoT::Endpoints::ListSecurityProfiles.build(context)
          when :list_security_profiles_for_target
            Aws::IoT::Endpoints::ListSecurityProfilesForTarget.build(context)
          when :list_streams
            Aws::IoT::Endpoints::ListStreams.build(context)
          when :list_tags_for_resource
            Aws::IoT::Endpoints::ListTagsForResource.build(context)
          when :list_targets_for_policy
            Aws::IoT::Endpoints::ListTargetsForPolicy.build(context)
          when :list_targets_for_security_profile
            Aws::IoT::Endpoints::ListTargetsForSecurityProfile.build(context)
          when :list_thing_groups
            Aws::IoT::Endpoints::ListThingGroups.build(context)
          when :list_thing_groups_for_thing
            Aws::IoT::Endpoints::ListThingGroupsForThing.build(context)
          when :list_thing_principals
            Aws::IoT::Endpoints::ListThingPrincipals.build(context)
          when :list_thing_registration_task_reports
            Aws::IoT::Endpoints::ListThingRegistrationTaskReports.build(context)
          when :list_thing_registration_tasks
            Aws::IoT::Endpoints::ListThingRegistrationTasks.build(context)
          when :list_thing_types
            Aws::IoT::Endpoints::ListThingTypes.build(context)
          when :list_things
            Aws::IoT::Endpoints::ListThings.build(context)
          when :list_things_in_billing_group
            Aws::IoT::Endpoints::ListThingsInBillingGroup.build(context)
          when :list_things_in_thing_group
            Aws::IoT::Endpoints::ListThingsInThingGroup.build(context)
          when :list_topic_rule_destinations
            Aws::IoT::Endpoints::ListTopicRuleDestinations.build(context)
          when :list_topic_rules
            Aws::IoT::Endpoints::ListTopicRules.build(context)
          when :list_v2_logging_levels
            Aws::IoT::Endpoints::ListV2LoggingLevels.build(context)
          when :list_violation_events
            Aws::IoT::Endpoints::ListViolationEvents.build(context)
          when :put_verification_state_on_violation
            Aws::IoT::Endpoints::PutVerificationStateOnViolation.build(context)
          when :register_ca_certificate
            Aws::IoT::Endpoints::RegisterCACertificate.build(context)
          when :register_certificate
            Aws::IoT::Endpoints::RegisterCertificate.build(context)
          when :register_certificate_without_ca
            Aws::IoT::Endpoints::RegisterCertificateWithoutCA.build(context)
          when :register_thing
            Aws::IoT::Endpoints::RegisterThing.build(context)
          when :reject_certificate_transfer
            Aws::IoT::Endpoints::RejectCertificateTransfer.build(context)
          when :remove_thing_from_billing_group
            Aws::IoT::Endpoints::RemoveThingFromBillingGroup.build(context)
          when :remove_thing_from_thing_group
            Aws::IoT::Endpoints::RemoveThingFromThingGroup.build(context)
          when :replace_topic_rule
            Aws::IoT::Endpoints::ReplaceTopicRule.build(context)
          when :search_index
            Aws::IoT::Endpoints::SearchIndex.build(context)
          when :set_default_authorizer
            Aws::IoT::Endpoints::SetDefaultAuthorizer.build(context)
          when :set_default_policy_version
            Aws::IoT::Endpoints::SetDefaultPolicyVersion.build(context)
          when :set_logging_options
            Aws::IoT::Endpoints::SetLoggingOptions.build(context)
          when :set_v2_logging_level
            Aws::IoT::Endpoints::SetV2LoggingLevel.build(context)
          when :set_v2_logging_options
            Aws::IoT::Endpoints::SetV2LoggingOptions.build(context)
          when :start_audit_mitigation_actions_task
            Aws::IoT::Endpoints::StartAuditMitigationActionsTask.build(context)
          when :start_detect_mitigation_actions_task
            Aws::IoT::Endpoints::StartDetectMitigationActionsTask.build(context)
          when :start_on_demand_audit_task
            Aws::IoT::Endpoints::StartOnDemandAuditTask.build(context)
          when :start_thing_registration_task
            Aws::IoT::Endpoints::StartThingRegistrationTask.build(context)
          when :stop_thing_registration_task
            Aws::IoT::Endpoints::StopThingRegistrationTask.build(context)
          when :tag_resource
            Aws::IoT::Endpoints::TagResource.build(context)
          when :test_authorization
            Aws::IoT::Endpoints::TestAuthorization.build(context)
          when :test_invoke_authorizer
            Aws::IoT::Endpoints::TestInvokeAuthorizer.build(context)
          when :transfer_certificate
            Aws::IoT::Endpoints::TransferCertificate.build(context)
          when :untag_resource
            Aws::IoT::Endpoints::UntagResource.build(context)
          when :update_account_audit_configuration
            Aws::IoT::Endpoints::UpdateAccountAuditConfiguration.build(context)
          when :update_audit_suppression
            Aws::IoT::Endpoints::UpdateAuditSuppression.build(context)
          when :update_authorizer
            Aws::IoT::Endpoints::UpdateAuthorizer.build(context)
          when :update_billing_group
            Aws::IoT::Endpoints::UpdateBillingGroup.build(context)
          when :update_ca_certificate
            Aws::IoT::Endpoints::UpdateCACertificate.build(context)
          when :update_certificate
            Aws::IoT::Endpoints::UpdateCertificate.build(context)
          when :update_custom_metric
            Aws::IoT::Endpoints::UpdateCustomMetric.build(context)
          when :update_dimension
            Aws::IoT::Endpoints::UpdateDimension.build(context)
          when :update_domain_configuration
            Aws::IoT::Endpoints::UpdateDomainConfiguration.build(context)
          when :update_dynamic_thing_group
            Aws::IoT::Endpoints::UpdateDynamicThingGroup.build(context)
          when :update_event_configurations
            Aws::IoT::Endpoints::UpdateEventConfigurations.build(context)
          when :update_fleet_metric
            Aws::IoT::Endpoints::UpdateFleetMetric.build(context)
          when :update_indexing_configuration
            Aws::IoT::Endpoints::UpdateIndexingConfiguration.build(context)
          when :update_job
            Aws::IoT::Endpoints::UpdateJob.build(context)
          when :update_mitigation_action
            Aws::IoT::Endpoints::UpdateMitigationAction.build(context)
          when :update_package
            Aws::IoT::Endpoints::UpdatePackage.build(context)
          when :update_package_configuration
            Aws::IoT::Endpoints::UpdatePackageConfiguration.build(context)
          when :update_package_version
            Aws::IoT::Endpoints::UpdatePackageVersion.build(context)
          when :update_provisioning_template
            Aws::IoT::Endpoints::UpdateProvisioningTemplate.build(context)
          when :update_role_alias
            Aws::IoT::Endpoints::UpdateRoleAlias.build(context)
          when :update_scheduled_audit
            Aws::IoT::Endpoints::UpdateScheduledAudit.build(context)
          when :update_security_profile
            Aws::IoT::Endpoints::UpdateSecurityProfile.build(context)
          when :update_stream
            Aws::IoT::Endpoints::UpdateStream.build(context)
          when :update_thing
            Aws::IoT::Endpoints::UpdateThing.build(context)
          when :update_thing_group
            Aws::IoT::Endpoints::UpdateThingGroup.build(context)
          when :update_thing_groups_for_thing
            Aws::IoT::Endpoints::UpdateThingGroupsForThing.build(context)
          when :update_topic_rule_destination
            Aws::IoT::Endpoints::UpdateTopicRuleDestination.build(context)
          when :validate_security_profile_behaviors
            Aws::IoT::Endpoints::ValidateSecurityProfileBehaviors.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
