# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::WorkMail
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::WorkMail::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::WorkMail::EndpointParameters`'
      ) do |cfg|
        Aws::WorkMail::EndpointProvider.new
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
          when :associate_delegate_to_resource
            Aws::WorkMail::Endpoints::AssociateDelegateToResource.build(context)
          when :associate_member_to_group
            Aws::WorkMail::Endpoints::AssociateMemberToGroup.build(context)
          when :assume_impersonation_role
            Aws::WorkMail::Endpoints::AssumeImpersonationRole.build(context)
          when :cancel_mailbox_export_job
            Aws::WorkMail::Endpoints::CancelMailboxExportJob.build(context)
          when :create_alias
            Aws::WorkMail::Endpoints::CreateAlias.build(context)
          when :create_availability_configuration
            Aws::WorkMail::Endpoints::CreateAvailabilityConfiguration.build(context)
          when :create_group
            Aws::WorkMail::Endpoints::CreateGroup.build(context)
          when :create_impersonation_role
            Aws::WorkMail::Endpoints::CreateImpersonationRole.build(context)
          when :create_mobile_device_access_rule
            Aws::WorkMail::Endpoints::CreateMobileDeviceAccessRule.build(context)
          when :create_organization
            Aws::WorkMail::Endpoints::CreateOrganization.build(context)
          when :create_resource
            Aws::WorkMail::Endpoints::CreateResource.build(context)
          when :create_user
            Aws::WorkMail::Endpoints::CreateUser.build(context)
          when :delete_access_control_rule
            Aws::WorkMail::Endpoints::DeleteAccessControlRule.build(context)
          when :delete_alias
            Aws::WorkMail::Endpoints::DeleteAlias.build(context)
          when :delete_availability_configuration
            Aws::WorkMail::Endpoints::DeleteAvailabilityConfiguration.build(context)
          when :delete_email_monitoring_configuration
            Aws::WorkMail::Endpoints::DeleteEmailMonitoringConfiguration.build(context)
          when :delete_group
            Aws::WorkMail::Endpoints::DeleteGroup.build(context)
          when :delete_impersonation_role
            Aws::WorkMail::Endpoints::DeleteImpersonationRole.build(context)
          when :delete_mailbox_permissions
            Aws::WorkMail::Endpoints::DeleteMailboxPermissions.build(context)
          when :delete_mobile_device_access_override
            Aws::WorkMail::Endpoints::DeleteMobileDeviceAccessOverride.build(context)
          when :delete_mobile_device_access_rule
            Aws::WorkMail::Endpoints::DeleteMobileDeviceAccessRule.build(context)
          when :delete_organization
            Aws::WorkMail::Endpoints::DeleteOrganization.build(context)
          when :delete_resource
            Aws::WorkMail::Endpoints::DeleteResource.build(context)
          when :delete_retention_policy
            Aws::WorkMail::Endpoints::DeleteRetentionPolicy.build(context)
          when :delete_user
            Aws::WorkMail::Endpoints::DeleteUser.build(context)
          when :deregister_from_work_mail
            Aws::WorkMail::Endpoints::DeregisterFromWorkMail.build(context)
          when :deregister_mail_domain
            Aws::WorkMail::Endpoints::DeregisterMailDomain.build(context)
          when :describe_email_monitoring_configuration
            Aws::WorkMail::Endpoints::DescribeEmailMonitoringConfiguration.build(context)
          when :describe_group
            Aws::WorkMail::Endpoints::DescribeGroup.build(context)
          when :describe_inbound_dmarc_settings
            Aws::WorkMail::Endpoints::DescribeInboundDmarcSettings.build(context)
          when :describe_mailbox_export_job
            Aws::WorkMail::Endpoints::DescribeMailboxExportJob.build(context)
          when :describe_organization
            Aws::WorkMail::Endpoints::DescribeOrganization.build(context)
          when :describe_resource
            Aws::WorkMail::Endpoints::DescribeResource.build(context)
          when :describe_user
            Aws::WorkMail::Endpoints::DescribeUser.build(context)
          when :disassociate_delegate_from_resource
            Aws::WorkMail::Endpoints::DisassociateDelegateFromResource.build(context)
          when :disassociate_member_from_group
            Aws::WorkMail::Endpoints::DisassociateMemberFromGroup.build(context)
          when :get_access_control_effect
            Aws::WorkMail::Endpoints::GetAccessControlEffect.build(context)
          when :get_default_retention_policy
            Aws::WorkMail::Endpoints::GetDefaultRetentionPolicy.build(context)
          when :get_impersonation_role
            Aws::WorkMail::Endpoints::GetImpersonationRole.build(context)
          when :get_impersonation_role_effect
            Aws::WorkMail::Endpoints::GetImpersonationRoleEffect.build(context)
          when :get_mail_domain
            Aws::WorkMail::Endpoints::GetMailDomain.build(context)
          when :get_mailbox_details
            Aws::WorkMail::Endpoints::GetMailboxDetails.build(context)
          when :get_mobile_device_access_effect
            Aws::WorkMail::Endpoints::GetMobileDeviceAccessEffect.build(context)
          when :get_mobile_device_access_override
            Aws::WorkMail::Endpoints::GetMobileDeviceAccessOverride.build(context)
          when :list_access_control_rules
            Aws::WorkMail::Endpoints::ListAccessControlRules.build(context)
          when :list_aliases
            Aws::WorkMail::Endpoints::ListAliases.build(context)
          when :list_availability_configurations
            Aws::WorkMail::Endpoints::ListAvailabilityConfigurations.build(context)
          when :list_group_members
            Aws::WorkMail::Endpoints::ListGroupMembers.build(context)
          when :list_groups
            Aws::WorkMail::Endpoints::ListGroups.build(context)
          when :list_impersonation_roles
            Aws::WorkMail::Endpoints::ListImpersonationRoles.build(context)
          when :list_mail_domains
            Aws::WorkMail::Endpoints::ListMailDomains.build(context)
          when :list_mailbox_export_jobs
            Aws::WorkMail::Endpoints::ListMailboxExportJobs.build(context)
          when :list_mailbox_permissions
            Aws::WorkMail::Endpoints::ListMailboxPermissions.build(context)
          when :list_mobile_device_access_overrides
            Aws::WorkMail::Endpoints::ListMobileDeviceAccessOverrides.build(context)
          when :list_mobile_device_access_rules
            Aws::WorkMail::Endpoints::ListMobileDeviceAccessRules.build(context)
          when :list_organizations
            Aws::WorkMail::Endpoints::ListOrganizations.build(context)
          when :list_resource_delegates
            Aws::WorkMail::Endpoints::ListResourceDelegates.build(context)
          when :list_resources
            Aws::WorkMail::Endpoints::ListResources.build(context)
          when :list_tags_for_resource
            Aws::WorkMail::Endpoints::ListTagsForResource.build(context)
          when :list_users
            Aws::WorkMail::Endpoints::ListUsers.build(context)
          when :put_access_control_rule
            Aws::WorkMail::Endpoints::PutAccessControlRule.build(context)
          when :put_email_monitoring_configuration
            Aws::WorkMail::Endpoints::PutEmailMonitoringConfiguration.build(context)
          when :put_inbound_dmarc_settings
            Aws::WorkMail::Endpoints::PutInboundDmarcSettings.build(context)
          when :put_mailbox_permissions
            Aws::WorkMail::Endpoints::PutMailboxPermissions.build(context)
          when :put_mobile_device_access_override
            Aws::WorkMail::Endpoints::PutMobileDeviceAccessOverride.build(context)
          when :put_retention_policy
            Aws::WorkMail::Endpoints::PutRetentionPolicy.build(context)
          when :register_mail_domain
            Aws::WorkMail::Endpoints::RegisterMailDomain.build(context)
          when :register_to_work_mail
            Aws::WorkMail::Endpoints::RegisterToWorkMail.build(context)
          when :reset_password
            Aws::WorkMail::Endpoints::ResetPassword.build(context)
          when :start_mailbox_export_job
            Aws::WorkMail::Endpoints::StartMailboxExportJob.build(context)
          when :tag_resource
            Aws::WorkMail::Endpoints::TagResource.build(context)
          when :test_availability_configuration
            Aws::WorkMail::Endpoints::TestAvailabilityConfiguration.build(context)
          when :untag_resource
            Aws::WorkMail::Endpoints::UntagResource.build(context)
          when :update_availability_configuration
            Aws::WorkMail::Endpoints::UpdateAvailabilityConfiguration.build(context)
          when :update_default_mail_domain
            Aws::WorkMail::Endpoints::UpdateDefaultMailDomain.build(context)
          when :update_impersonation_role
            Aws::WorkMail::Endpoints::UpdateImpersonationRole.build(context)
          when :update_mailbox_quota
            Aws::WorkMail::Endpoints::UpdateMailboxQuota.build(context)
          when :update_mobile_device_access_rule
            Aws::WorkMail::Endpoints::UpdateMobileDeviceAccessRule.build(context)
          when :update_primary_email_address
            Aws::WorkMail::Endpoints::UpdatePrimaryEmailAddress.build(context)
          when :update_resource
            Aws::WorkMail::Endpoints::UpdateResource.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
