# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53Domains
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53Domains::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Route53Domains::EndpointParameters`'
      ) do |cfg|
        Aws::Route53Domains::EndpointProvider.new
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
          when :accept_domain_transfer_from_another_aws_account
            Aws::Route53Domains::Endpoints::AcceptDomainTransferFromAnotherAwsAccount.build(context)
          when :associate_delegation_signer_to_domain
            Aws::Route53Domains::Endpoints::AssociateDelegationSignerToDomain.build(context)
          when :cancel_domain_transfer_to_another_aws_account
            Aws::Route53Domains::Endpoints::CancelDomainTransferToAnotherAwsAccount.build(context)
          when :check_domain_availability
            Aws::Route53Domains::Endpoints::CheckDomainAvailability.build(context)
          when :check_domain_transferability
            Aws::Route53Domains::Endpoints::CheckDomainTransferability.build(context)
          when :delete_domain
            Aws::Route53Domains::Endpoints::DeleteDomain.build(context)
          when :delete_tags_for_domain
            Aws::Route53Domains::Endpoints::DeleteTagsForDomain.build(context)
          when :disable_domain_auto_renew
            Aws::Route53Domains::Endpoints::DisableDomainAutoRenew.build(context)
          when :disable_domain_transfer_lock
            Aws::Route53Domains::Endpoints::DisableDomainTransferLock.build(context)
          when :disassociate_delegation_signer_from_domain
            Aws::Route53Domains::Endpoints::DisassociateDelegationSignerFromDomain.build(context)
          when :enable_domain_auto_renew
            Aws::Route53Domains::Endpoints::EnableDomainAutoRenew.build(context)
          when :enable_domain_transfer_lock
            Aws::Route53Domains::Endpoints::EnableDomainTransferLock.build(context)
          when :get_contact_reachability_status
            Aws::Route53Domains::Endpoints::GetContactReachabilityStatus.build(context)
          when :get_domain_detail
            Aws::Route53Domains::Endpoints::GetDomainDetail.build(context)
          when :get_domain_suggestions
            Aws::Route53Domains::Endpoints::GetDomainSuggestions.build(context)
          when :get_operation_detail
            Aws::Route53Domains::Endpoints::GetOperationDetail.build(context)
          when :list_domains
            Aws::Route53Domains::Endpoints::ListDomains.build(context)
          when :list_operations
            Aws::Route53Domains::Endpoints::ListOperations.build(context)
          when :list_prices
            Aws::Route53Domains::Endpoints::ListPrices.build(context)
          when :list_tags_for_domain
            Aws::Route53Domains::Endpoints::ListTagsForDomain.build(context)
          when :push_domain
            Aws::Route53Domains::Endpoints::PushDomain.build(context)
          when :register_domain
            Aws::Route53Domains::Endpoints::RegisterDomain.build(context)
          when :reject_domain_transfer_from_another_aws_account
            Aws::Route53Domains::Endpoints::RejectDomainTransferFromAnotherAwsAccount.build(context)
          when :renew_domain
            Aws::Route53Domains::Endpoints::RenewDomain.build(context)
          when :resend_contact_reachability_email
            Aws::Route53Domains::Endpoints::ResendContactReachabilityEmail.build(context)
          when :resend_operation_authorization
            Aws::Route53Domains::Endpoints::ResendOperationAuthorization.build(context)
          when :retrieve_domain_auth_code
            Aws::Route53Domains::Endpoints::RetrieveDomainAuthCode.build(context)
          when :transfer_domain
            Aws::Route53Domains::Endpoints::TransferDomain.build(context)
          when :transfer_domain_to_another_aws_account
            Aws::Route53Domains::Endpoints::TransferDomainToAnotherAwsAccount.build(context)
          when :update_domain_contact
            Aws::Route53Domains::Endpoints::UpdateDomainContact.build(context)
          when :update_domain_contact_privacy
            Aws::Route53Domains::Endpoints::UpdateDomainContactPrivacy.build(context)
          when :update_domain_nameservers
            Aws::Route53Domains::Endpoints::UpdateDomainNameservers.build(context)
          when :update_tags_for_domain
            Aws::Route53Domains::Endpoints::UpdateTagsForDomain.build(context)
          when :view_billing
            Aws::Route53Domains::Endpoints::ViewBilling.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
