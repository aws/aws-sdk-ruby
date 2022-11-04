# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::MTurk
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::MTurk::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::MTurk::EndpointParameters`'
      ) do |cfg|
        Aws::MTurk::EndpointProvider.new
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
          when :accept_qualification_request
            Aws::MTurk::Endpoints::AcceptQualificationRequest.build(context)
          when :approve_assignment
            Aws::MTurk::Endpoints::ApproveAssignment.build(context)
          when :associate_qualification_with_worker
            Aws::MTurk::Endpoints::AssociateQualificationWithWorker.build(context)
          when :create_additional_assignments_for_hit
            Aws::MTurk::Endpoints::CreateAdditionalAssignmentsForHIT.build(context)
          when :create_hit
            Aws::MTurk::Endpoints::CreateHIT.build(context)
          when :create_hit_type
            Aws::MTurk::Endpoints::CreateHITType.build(context)
          when :create_hit_with_hit_type
            Aws::MTurk::Endpoints::CreateHITWithHITType.build(context)
          when :create_qualification_type
            Aws::MTurk::Endpoints::CreateQualificationType.build(context)
          when :create_worker_block
            Aws::MTurk::Endpoints::CreateWorkerBlock.build(context)
          when :delete_hit
            Aws::MTurk::Endpoints::DeleteHIT.build(context)
          when :delete_qualification_type
            Aws::MTurk::Endpoints::DeleteQualificationType.build(context)
          when :delete_worker_block
            Aws::MTurk::Endpoints::DeleteWorkerBlock.build(context)
          when :disassociate_qualification_from_worker
            Aws::MTurk::Endpoints::DisassociateQualificationFromWorker.build(context)
          when :get_account_balance
            Aws::MTurk::Endpoints::GetAccountBalance.build(context)
          when :get_assignment
            Aws::MTurk::Endpoints::GetAssignment.build(context)
          when :get_file_upload_url
            Aws::MTurk::Endpoints::GetFileUploadURL.build(context)
          when :get_hit
            Aws::MTurk::Endpoints::GetHIT.build(context)
          when :get_qualification_score
            Aws::MTurk::Endpoints::GetQualificationScore.build(context)
          when :get_qualification_type
            Aws::MTurk::Endpoints::GetQualificationType.build(context)
          when :list_assignments_for_hit
            Aws::MTurk::Endpoints::ListAssignmentsForHIT.build(context)
          when :list_bonus_payments
            Aws::MTurk::Endpoints::ListBonusPayments.build(context)
          when :list_hits
            Aws::MTurk::Endpoints::ListHITs.build(context)
          when :list_hits_for_qualification_type
            Aws::MTurk::Endpoints::ListHITsForQualificationType.build(context)
          when :list_qualification_requests
            Aws::MTurk::Endpoints::ListQualificationRequests.build(context)
          when :list_qualification_types
            Aws::MTurk::Endpoints::ListQualificationTypes.build(context)
          when :list_review_policy_results_for_hit
            Aws::MTurk::Endpoints::ListReviewPolicyResultsForHIT.build(context)
          when :list_reviewable_hits
            Aws::MTurk::Endpoints::ListReviewableHITs.build(context)
          when :list_worker_blocks
            Aws::MTurk::Endpoints::ListWorkerBlocks.build(context)
          when :list_workers_with_qualification_type
            Aws::MTurk::Endpoints::ListWorkersWithQualificationType.build(context)
          when :notify_workers
            Aws::MTurk::Endpoints::NotifyWorkers.build(context)
          when :reject_assignment
            Aws::MTurk::Endpoints::RejectAssignment.build(context)
          when :reject_qualification_request
            Aws::MTurk::Endpoints::RejectQualificationRequest.build(context)
          when :send_bonus
            Aws::MTurk::Endpoints::SendBonus.build(context)
          when :send_test_event_notification
            Aws::MTurk::Endpoints::SendTestEventNotification.build(context)
          when :update_expiration_for_hit
            Aws::MTurk::Endpoints::UpdateExpirationForHIT.build(context)
          when :update_hit_review_status
            Aws::MTurk::Endpoints::UpdateHITReviewStatus.build(context)
          when :update_hit_type_of_hit
            Aws::MTurk::Endpoints::UpdateHITTypeOfHIT.build(context)
          when :update_notification_settings
            Aws::MTurk::Endpoints::UpdateNotificationSettings.build(context)
          when :update_qualification_type
            Aws::MTurk::Endpoints::UpdateQualificationType.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
