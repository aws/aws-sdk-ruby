# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::BillingConductor
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::BillingConductor::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::BillingConductor::EndpointParameters`'
      ) do |cfg|
        Aws::BillingConductor::EndpointProvider.new
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
          when :associate_accounts
            Aws::BillingConductor::Endpoints::AssociateAccounts.build(context)
          when :associate_pricing_rules
            Aws::BillingConductor::Endpoints::AssociatePricingRules.build(context)
          when :batch_associate_resources_to_custom_line_item
            Aws::BillingConductor::Endpoints::BatchAssociateResourcesToCustomLineItem.build(context)
          when :batch_disassociate_resources_from_custom_line_item
            Aws::BillingConductor::Endpoints::BatchDisassociateResourcesFromCustomLineItem.build(context)
          when :create_billing_group
            Aws::BillingConductor::Endpoints::CreateBillingGroup.build(context)
          when :create_custom_line_item
            Aws::BillingConductor::Endpoints::CreateCustomLineItem.build(context)
          when :create_pricing_plan
            Aws::BillingConductor::Endpoints::CreatePricingPlan.build(context)
          when :create_pricing_rule
            Aws::BillingConductor::Endpoints::CreatePricingRule.build(context)
          when :delete_billing_group
            Aws::BillingConductor::Endpoints::DeleteBillingGroup.build(context)
          when :delete_custom_line_item
            Aws::BillingConductor::Endpoints::DeleteCustomLineItem.build(context)
          when :delete_pricing_plan
            Aws::BillingConductor::Endpoints::DeletePricingPlan.build(context)
          when :delete_pricing_rule
            Aws::BillingConductor::Endpoints::DeletePricingRule.build(context)
          when :disassociate_accounts
            Aws::BillingConductor::Endpoints::DisassociateAccounts.build(context)
          when :disassociate_pricing_rules
            Aws::BillingConductor::Endpoints::DisassociatePricingRules.build(context)
          when :list_account_associations
            Aws::BillingConductor::Endpoints::ListAccountAssociations.build(context)
          when :list_billing_group_cost_reports
            Aws::BillingConductor::Endpoints::ListBillingGroupCostReports.build(context)
          when :list_billing_groups
            Aws::BillingConductor::Endpoints::ListBillingGroups.build(context)
          when :list_custom_line_item_versions
            Aws::BillingConductor::Endpoints::ListCustomLineItemVersions.build(context)
          when :list_custom_line_items
            Aws::BillingConductor::Endpoints::ListCustomLineItems.build(context)
          when :list_pricing_plans
            Aws::BillingConductor::Endpoints::ListPricingPlans.build(context)
          when :list_pricing_plans_associated_with_pricing_rule
            Aws::BillingConductor::Endpoints::ListPricingPlansAssociatedWithPricingRule.build(context)
          when :list_pricing_rules
            Aws::BillingConductor::Endpoints::ListPricingRules.build(context)
          when :list_pricing_rules_associated_to_pricing_plan
            Aws::BillingConductor::Endpoints::ListPricingRulesAssociatedToPricingPlan.build(context)
          when :list_resources_associated_to_custom_line_item
            Aws::BillingConductor::Endpoints::ListResourcesAssociatedToCustomLineItem.build(context)
          when :list_tags_for_resource
            Aws::BillingConductor::Endpoints::ListTagsForResource.build(context)
          when :tag_resource
            Aws::BillingConductor::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::BillingConductor::Endpoints::UntagResource.build(context)
          when :update_billing_group
            Aws::BillingConductor::Endpoints::UpdateBillingGroup.build(context)
          when :update_custom_line_item
            Aws::BillingConductor::Endpoints::UpdateCustomLineItem.build(context)
          when :update_pricing_plan
            Aws::BillingConductor::Endpoints::UpdatePricingPlan.build(context)
          when :update_pricing_rule
            Aws::BillingConductor::Endpoints::UpdatePricingRule.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
