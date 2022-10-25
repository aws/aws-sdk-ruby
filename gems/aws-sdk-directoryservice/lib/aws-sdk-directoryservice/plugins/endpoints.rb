# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::DirectoryService
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::DirectoryService::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::DirectoryService::EndpointParameters`'
      ) do |cfg|
        Aws::DirectoryService::EndpointProvider.new
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
          when :accept_shared_directory
            Aws::DirectoryService::Endpoints::AcceptSharedDirectory.build(context)
          when :add_ip_routes
            Aws::DirectoryService::Endpoints::AddIpRoutes.build(context)
          when :add_region
            Aws::DirectoryService::Endpoints::AddRegion.build(context)
          when :add_tags_to_resource
            Aws::DirectoryService::Endpoints::AddTagsToResource.build(context)
          when :cancel_schema_extension
            Aws::DirectoryService::Endpoints::CancelSchemaExtension.build(context)
          when :connect_directory
            Aws::DirectoryService::Endpoints::ConnectDirectory.build(context)
          when :create_alias
            Aws::DirectoryService::Endpoints::CreateAlias.build(context)
          when :create_computer
            Aws::DirectoryService::Endpoints::CreateComputer.build(context)
          when :create_conditional_forwarder
            Aws::DirectoryService::Endpoints::CreateConditionalForwarder.build(context)
          when :create_directory
            Aws::DirectoryService::Endpoints::CreateDirectory.build(context)
          when :create_log_subscription
            Aws::DirectoryService::Endpoints::CreateLogSubscription.build(context)
          when :create_microsoft_ad
            Aws::DirectoryService::Endpoints::CreateMicrosoftAD.build(context)
          when :create_snapshot
            Aws::DirectoryService::Endpoints::CreateSnapshot.build(context)
          when :create_trust
            Aws::DirectoryService::Endpoints::CreateTrust.build(context)
          when :delete_conditional_forwarder
            Aws::DirectoryService::Endpoints::DeleteConditionalForwarder.build(context)
          when :delete_directory
            Aws::DirectoryService::Endpoints::DeleteDirectory.build(context)
          when :delete_log_subscription
            Aws::DirectoryService::Endpoints::DeleteLogSubscription.build(context)
          when :delete_snapshot
            Aws::DirectoryService::Endpoints::DeleteSnapshot.build(context)
          when :delete_trust
            Aws::DirectoryService::Endpoints::DeleteTrust.build(context)
          when :deregister_certificate
            Aws::DirectoryService::Endpoints::DeregisterCertificate.build(context)
          when :deregister_event_topic
            Aws::DirectoryService::Endpoints::DeregisterEventTopic.build(context)
          when :describe_certificate
            Aws::DirectoryService::Endpoints::DescribeCertificate.build(context)
          when :describe_client_authentication_settings
            Aws::DirectoryService::Endpoints::DescribeClientAuthenticationSettings.build(context)
          when :describe_conditional_forwarders
            Aws::DirectoryService::Endpoints::DescribeConditionalForwarders.build(context)
          when :describe_directories
            Aws::DirectoryService::Endpoints::DescribeDirectories.build(context)
          when :describe_domain_controllers
            Aws::DirectoryService::Endpoints::DescribeDomainControllers.build(context)
          when :describe_event_topics
            Aws::DirectoryService::Endpoints::DescribeEventTopics.build(context)
          when :describe_ldaps_settings
            Aws::DirectoryService::Endpoints::DescribeLDAPSSettings.build(context)
          when :describe_regions
            Aws::DirectoryService::Endpoints::DescribeRegions.build(context)
          when :describe_settings
            Aws::DirectoryService::Endpoints::DescribeSettings.build(context)
          when :describe_shared_directories
            Aws::DirectoryService::Endpoints::DescribeSharedDirectories.build(context)
          when :describe_snapshots
            Aws::DirectoryService::Endpoints::DescribeSnapshots.build(context)
          when :describe_trusts
            Aws::DirectoryService::Endpoints::DescribeTrusts.build(context)
          when :describe_update_directory
            Aws::DirectoryService::Endpoints::DescribeUpdateDirectory.build(context)
          when :disable_client_authentication
            Aws::DirectoryService::Endpoints::DisableClientAuthentication.build(context)
          when :disable_ldaps
            Aws::DirectoryService::Endpoints::DisableLDAPS.build(context)
          when :disable_radius
            Aws::DirectoryService::Endpoints::DisableRadius.build(context)
          when :disable_sso
            Aws::DirectoryService::Endpoints::DisableSso.build(context)
          when :enable_client_authentication
            Aws::DirectoryService::Endpoints::EnableClientAuthentication.build(context)
          when :enable_ldaps
            Aws::DirectoryService::Endpoints::EnableLDAPS.build(context)
          when :enable_radius
            Aws::DirectoryService::Endpoints::EnableRadius.build(context)
          when :enable_sso
            Aws::DirectoryService::Endpoints::EnableSso.build(context)
          when :get_directory_limits
            Aws::DirectoryService::Endpoints::GetDirectoryLimits.build(context)
          when :get_snapshot_limits
            Aws::DirectoryService::Endpoints::GetSnapshotLimits.build(context)
          when :list_certificates
            Aws::DirectoryService::Endpoints::ListCertificates.build(context)
          when :list_ip_routes
            Aws::DirectoryService::Endpoints::ListIpRoutes.build(context)
          when :list_log_subscriptions
            Aws::DirectoryService::Endpoints::ListLogSubscriptions.build(context)
          when :list_schema_extensions
            Aws::DirectoryService::Endpoints::ListSchemaExtensions.build(context)
          when :list_tags_for_resource
            Aws::DirectoryService::Endpoints::ListTagsForResource.build(context)
          when :register_certificate
            Aws::DirectoryService::Endpoints::RegisterCertificate.build(context)
          when :register_event_topic
            Aws::DirectoryService::Endpoints::RegisterEventTopic.build(context)
          when :reject_shared_directory
            Aws::DirectoryService::Endpoints::RejectSharedDirectory.build(context)
          when :remove_ip_routes
            Aws::DirectoryService::Endpoints::RemoveIpRoutes.build(context)
          when :remove_region
            Aws::DirectoryService::Endpoints::RemoveRegion.build(context)
          when :remove_tags_from_resource
            Aws::DirectoryService::Endpoints::RemoveTagsFromResource.build(context)
          when :reset_user_password
            Aws::DirectoryService::Endpoints::ResetUserPassword.build(context)
          when :restore_from_snapshot
            Aws::DirectoryService::Endpoints::RestoreFromSnapshot.build(context)
          when :share_directory
            Aws::DirectoryService::Endpoints::ShareDirectory.build(context)
          when :start_schema_extension
            Aws::DirectoryService::Endpoints::StartSchemaExtension.build(context)
          when :unshare_directory
            Aws::DirectoryService::Endpoints::UnshareDirectory.build(context)
          when :update_conditional_forwarder
            Aws::DirectoryService::Endpoints::UpdateConditionalForwarder.build(context)
          when :update_directory_setup
            Aws::DirectoryService::Endpoints::UpdateDirectorySetup.build(context)
          when :update_number_of_domain_controllers
            Aws::DirectoryService::Endpoints::UpdateNumberOfDomainControllers.build(context)
          when :update_radius
            Aws::DirectoryService::Endpoints::UpdateRadius.build(context)
          when :update_settings
            Aws::DirectoryService::Endpoints::UpdateSettings.build(context)
          when :update_trust
            Aws::DirectoryService::Endpoints::UpdateTrust.build(context)
          when :verify_trust
            Aws::DirectoryService::Endpoints::VerifyTrust.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
