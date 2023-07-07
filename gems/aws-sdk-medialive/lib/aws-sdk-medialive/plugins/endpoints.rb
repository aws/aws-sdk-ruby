# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MediaLive
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MediaLive::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MediaLive::EndpointParameters`'
      ) do |cfg|
        Aws::MediaLive::EndpointProvider.new
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
          when :accept_input_device_transfer
            Aws::MediaLive::Endpoints::AcceptInputDeviceTransfer.build(context)
          when :batch_delete
            Aws::MediaLive::Endpoints::BatchDelete.build(context)
          when :batch_start
            Aws::MediaLive::Endpoints::BatchStart.build(context)
          when :batch_stop
            Aws::MediaLive::Endpoints::BatchStop.build(context)
          when :batch_update_schedule
            Aws::MediaLive::Endpoints::BatchUpdateSchedule.build(context)
          when :cancel_input_device_transfer
            Aws::MediaLive::Endpoints::CancelInputDeviceTransfer.build(context)
          when :claim_device
            Aws::MediaLive::Endpoints::ClaimDevice.build(context)
          when :create_channel
            Aws::MediaLive::Endpoints::CreateChannel.build(context)
          when :create_input
            Aws::MediaLive::Endpoints::CreateInput.build(context)
          when :create_input_security_group
            Aws::MediaLive::Endpoints::CreateInputSecurityGroup.build(context)
          when :create_multiplex
            Aws::MediaLive::Endpoints::CreateMultiplex.build(context)
          when :create_multiplex_program
            Aws::MediaLive::Endpoints::CreateMultiplexProgram.build(context)
          when :create_partner_input
            Aws::MediaLive::Endpoints::CreatePartnerInput.build(context)
          when :create_tags
            Aws::MediaLive::Endpoints::CreateTags.build(context)
          when :delete_channel
            Aws::MediaLive::Endpoints::DeleteChannel.build(context)
          when :delete_input
            Aws::MediaLive::Endpoints::DeleteInput.build(context)
          when :delete_input_security_group
            Aws::MediaLive::Endpoints::DeleteInputSecurityGroup.build(context)
          when :delete_multiplex
            Aws::MediaLive::Endpoints::DeleteMultiplex.build(context)
          when :delete_multiplex_program
            Aws::MediaLive::Endpoints::DeleteMultiplexProgram.build(context)
          when :delete_reservation
            Aws::MediaLive::Endpoints::DeleteReservation.build(context)
          when :delete_schedule
            Aws::MediaLive::Endpoints::DeleteSchedule.build(context)
          when :delete_tags
            Aws::MediaLive::Endpoints::DeleteTags.build(context)
          when :describe_channel
            Aws::MediaLive::Endpoints::DescribeChannel.build(context)
          when :describe_input
            Aws::MediaLive::Endpoints::DescribeInput.build(context)
          when :describe_input_device
            Aws::MediaLive::Endpoints::DescribeInputDevice.build(context)
          when :describe_input_device_thumbnail
            Aws::MediaLive::Endpoints::DescribeInputDeviceThumbnail.build(context)
          when :describe_input_security_group
            Aws::MediaLive::Endpoints::DescribeInputSecurityGroup.build(context)
          when :describe_multiplex
            Aws::MediaLive::Endpoints::DescribeMultiplex.build(context)
          when :describe_multiplex_program
            Aws::MediaLive::Endpoints::DescribeMultiplexProgram.build(context)
          when :describe_offering
            Aws::MediaLive::Endpoints::DescribeOffering.build(context)
          when :describe_reservation
            Aws::MediaLive::Endpoints::DescribeReservation.build(context)
          when :describe_schedule
            Aws::MediaLive::Endpoints::DescribeSchedule.build(context)
          when :describe_account_configuration
            Aws::MediaLive::Endpoints::DescribeAccountConfiguration.build(context)
          when :describe_thumbnails
            Aws::MediaLive::Endpoints::DescribeThumbnails.build(context)
          when :list_channels
            Aws::MediaLive::Endpoints::ListChannels.build(context)
          when :list_input_device_transfers
            Aws::MediaLive::Endpoints::ListInputDeviceTransfers.build(context)
          when :list_input_devices
            Aws::MediaLive::Endpoints::ListInputDevices.build(context)
          when :list_input_security_groups
            Aws::MediaLive::Endpoints::ListInputSecurityGroups.build(context)
          when :list_inputs
            Aws::MediaLive::Endpoints::ListInputs.build(context)
          when :list_multiplex_programs
            Aws::MediaLive::Endpoints::ListMultiplexPrograms.build(context)
          when :list_multiplexes
            Aws::MediaLive::Endpoints::ListMultiplexes.build(context)
          when :list_offerings
            Aws::MediaLive::Endpoints::ListOfferings.build(context)
          when :list_reservations
            Aws::MediaLive::Endpoints::ListReservations.build(context)
          when :list_tags_for_resource
            Aws::MediaLive::Endpoints::ListTagsForResource.build(context)
          when :purchase_offering
            Aws::MediaLive::Endpoints::PurchaseOffering.build(context)
          when :reboot_input_device
            Aws::MediaLive::Endpoints::RebootInputDevice.build(context)
          when :reject_input_device_transfer
            Aws::MediaLive::Endpoints::RejectInputDeviceTransfer.build(context)
          when :update_account_configuration
            Aws::MediaLive::Endpoints::UpdateAccountConfiguration.build(context)
          when :start_channel
            Aws::MediaLive::Endpoints::StartChannel.build(context)
          when :start_input_device_maintenance_window
            Aws::MediaLive::Endpoints::StartInputDeviceMaintenanceWindow.build(context)
          when :start_multiplex
            Aws::MediaLive::Endpoints::StartMultiplex.build(context)
          when :stop_channel
            Aws::MediaLive::Endpoints::StopChannel.build(context)
          when :stop_multiplex
            Aws::MediaLive::Endpoints::StopMultiplex.build(context)
          when :transfer_input_device
            Aws::MediaLive::Endpoints::TransferInputDevice.build(context)
          when :update_channel
            Aws::MediaLive::Endpoints::UpdateChannel.build(context)
          when :update_channel_class
            Aws::MediaLive::Endpoints::UpdateChannelClass.build(context)
          when :update_input
            Aws::MediaLive::Endpoints::UpdateInput.build(context)
          when :update_input_device
            Aws::MediaLive::Endpoints::UpdateInputDevice.build(context)
          when :update_input_security_group
            Aws::MediaLive::Endpoints::UpdateInputSecurityGroup.build(context)
          when :update_multiplex
            Aws::MediaLive::Endpoints::UpdateMultiplex.build(context)
          when :update_multiplex_program
            Aws::MediaLive::Endpoints::UpdateMultiplexProgram.build(context)
          when :update_reservation
            Aws::MediaLive::Endpoints::UpdateReservation.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
