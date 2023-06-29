# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::AppStream
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::AppStream::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::AppStream::EndpointParameters`'
      ) do |cfg|
        Aws::AppStream::EndpointProvider.new
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
          when :associate_app_block_builder_app_block
            Aws::AppStream::Endpoints::AssociateAppBlockBuilderAppBlock.build(context)
          when :associate_application_fleet
            Aws::AppStream::Endpoints::AssociateApplicationFleet.build(context)
          when :associate_application_to_entitlement
            Aws::AppStream::Endpoints::AssociateApplicationToEntitlement.build(context)
          when :associate_fleet
            Aws::AppStream::Endpoints::AssociateFleet.build(context)
          when :batch_associate_user_stack
            Aws::AppStream::Endpoints::BatchAssociateUserStack.build(context)
          when :batch_disassociate_user_stack
            Aws::AppStream::Endpoints::BatchDisassociateUserStack.build(context)
          when :copy_image
            Aws::AppStream::Endpoints::CopyImage.build(context)
          when :create_app_block
            Aws::AppStream::Endpoints::CreateAppBlock.build(context)
          when :create_app_block_builder
            Aws::AppStream::Endpoints::CreateAppBlockBuilder.build(context)
          when :create_app_block_builder_streaming_url
            Aws::AppStream::Endpoints::CreateAppBlockBuilderStreamingURL.build(context)
          when :create_application
            Aws::AppStream::Endpoints::CreateApplication.build(context)
          when :create_directory_config
            Aws::AppStream::Endpoints::CreateDirectoryConfig.build(context)
          when :create_entitlement
            Aws::AppStream::Endpoints::CreateEntitlement.build(context)
          when :create_fleet
            Aws::AppStream::Endpoints::CreateFleet.build(context)
          when :create_image_builder
            Aws::AppStream::Endpoints::CreateImageBuilder.build(context)
          when :create_image_builder_streaming_url
            Aws::AppStream::Endpoints::CreateImageBuilderStreamingURL.build(context)
          when :create_stack
            Aws::AppStream::Endpoints::CreateStack.build(context)
          when :create_streaming_url
            Aws::AppStream::Endpoints::CreateStreamingURL.build(context)
          when :create_updated_image
            Aws::AppStream::Endpoints::CreateUpdatedImage.build(context)
          when :create_usage_report_subscription
            Aws::AppStream::Endpoints::CreateUsageReportSubscription.build(context)
          when :create_user
            Aws::AppStream::Endpoints::CreateUser.build(context)
          when :delete_app_block
            Aws::AppStream::Endpoints::DeleteAppBlock.build(context)
          when :delete_app_block_builder
            Aws::AppStream::Endpoints::DeleteAppBlockBuilder.build(context)
          when :delete_application
            Aws::AppStream::Endpoints::DeleteApplication.build(context)
          when :delete_directory_config
            Aws::AppStream::Endpoints::DeleteDirectoryConfig.build(context)
          when :delete_entitlement
            Aws::AppStream::Endpoints::DeleteEntitlement.build(context)
          when :delete_fleet
            Aws::AppStream::Endpoints::DeleteFleet.build(context)
          when :delete_image
            Aws::AppStream::Endpoints::DeleteImage.build(context)
          when :delete_image_builder
            Aws::AppStream::Endpoints::DeleteImageBuilder.build(context)
          when :delete_image_permissions
            Aws::AppStream::Endpoints::DeleteImagePermissions.build(context)
          when :delete_stack
            Aws::AppStream::Endpoints::DeleteStack.build(context)
          when :delete_usage_report_subscription
            Aws::AppStream::Endpoints::DeleteUsageReportSubscription.build(context)
          when :delete_user
            Aws::AppStream::Endpoints::DeleteUser.build(context)
          when :describe_app_block_builder_app_block_associations
            Aws::AppStream::Endpoints::DescribeAppBlockBuilderAppBlockAssociations.build(context)
          when :describe_app_block_builders
            Aws::AppStream::Endpoints::DescribeAppBlockBuilders.build(context)
          when :describe_app_blocks
            Aws::AppStream::Endpoints::DescribeAppBlocks.build(context)
          when :describe_application_fleet_associations
            Aws::AppStream::Endpoints::DescribeApplicationFleetAssociations.build(context)
          when :describe_applications
            Aws::AppStream::Endpoints::DescribeApplications.build(context)
          when :describe_directory_configs
            Aws::AppStream::Endpoints::DescribeDirectoryConfigs.build(context)
          when :describe_entitlements
            Aws::AppStream::Endpoints::DescribeEntitlements.build(context)
          when :describe_fleets
            Aws::AppStream::Endpoints::DescribeFleets.build(context)
          when :describe_image_builders
            Aws::AppStream::Endpoints::DescribeImageBuilders.build(context)
          when :describe_image_permissions
            Aws::AppStream::Endpoints::DescribeImagePermissions.build(context)
          when :describe_images
            Aws::AppStream::Endpoints::DescribeImages.build(context)
          when :describe_sessions
            Aws::AppStream::Endpoints::DescribeSessions.build(context)
          when :describe_stacks
            Aws::AppStream::Endpoints::DescribeStacks.build(context)
          when :describe_usage_report_subscriptions
            Aws::AppStream::Endpoints::DescribeUsageReportSubscriptions.build(context)
          when :describe_user_stack_associations
            Aws::AppStream::Endpoints::DescribeUserStackAssociations.build(context)
          when :describe_users
            Aws::AppStream::Endpoints::DescribeUsers.build(context)
          when :disable_user
            Aws::AppStream::Endpoints::DisableUser.build(context)
          when :disassociate_app_block_builder_app_block
            Aws::AppStream::Endpoints::DisassociateAppBlockBuilderAppBlock.build(context)
          when :disassociate_application_fleet
            Aws::AppStream::Endpoints::DisassociateApplicationFleet.build(context)
          when :disassociate_application_from_entitlement
            Aws::AppStream::Endpoints::DisassociateApplicationFromEntitlement.build(context)
          when :disassociate_fleet
            Aws::AppStream::Endpoints::DisassociateFleet.build(context)
          when :enable_user
            Aws::AppStream::Endpoints::EnableUser.build(context)
          when :expire_session
            Aws::AppStream::Endpoints::ExpireSession.build(context)
          when :list_associated_fleets
            Aws::AppStream::Endpoints::ListAssociatedFleets.build(context)
          when :list_associated_stacks
            Aws::AppStream::Endpoints::ListAssociatedStacks.build(context)
          when :list_entitled_applications
            Aws::AppStream::Endpoints::ListEntitledApplications.build(context)
          when :list_tags_for_resource
            Aws::AppStream::Endpoints::ListTagsForResource.build(context)
          when :start_app_block_builder
            Aws::AppStream::Endpoints::StartAppBlockBuilder.build(context)
          when :start_fleet
            Aws::AppStream::Endpoints::StartFleet.build(context)
          when :start_image_builder
            Aws::AppStream::Endpoints::StartImageBuilder.build(context)
          when :stop_app_block_builder
            Aws::AppStream::Endpoints::StopAppBlockBuilder.build(context)
          when :stop_fleet
            Aws::AppStream::Endpoints::StopFleet.build(context)
          when :stop_image_builder
            Aws::AppStream::Endpoints::StopImageBuilder.build(context)
          when :tag_resource
            Aws::AppStream::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::AppStream::Endpoints::UntagResource.build(context)
          when :update_app_block_builder
            Aws::AppStream::Endpoints::UpdateAppBlockBuilder.build(context)
          when :update_application
            Aws::AppStream::Endpoints::UpdateApplication.build(context)
          when :update_directory_config
            Aws::AppStream::Endpoints::UpdateDirectoryConfig.build(context)
          when :update_entitlement
            Aws::AppStream::Endpoints::UpdateEntitlement.build(context)
          when :update_fleet
            Aws::AppStream::Endpoints::UpdateFleet.build(context)
          when :update_image_permissions
            Aws::AppStream::Endpoints::UpdateImagePermissions.build(context)
          when :update_stack
            Aws::AppStream::Endpoints::UpdateStack.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
