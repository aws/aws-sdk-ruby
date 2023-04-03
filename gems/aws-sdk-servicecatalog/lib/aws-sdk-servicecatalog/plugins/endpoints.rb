# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::ServiceCatalog
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::ServiceCatalog::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::ServiceCatalog::EndpointParameters`'
      ) do |cfg|
        Aws::ServiceCatalog::EndpointProvider.new
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
          when :accept_portfolio_share
            Aws::ServiceCatalog::Endpoints::AcceptPortfolioShare.build(context)
          when :associate_budget_with_resource
            Aws::ServiceCatalog::Endpoints::AssociateBudgetWithResource.build(context)
          when :associate_principal_with_portfolio
            Aws::ServiceCatalog::Endpoints::AssociatePrincipalWithPortfolio.build(context)
          when :associate_product_with_portfolio
            Aws::ServiceCatalog::Endpoints::AssociateProductWithPortfolio.build(context)
          when :associate_service_action_with_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::AssociateServiceActionWithProvisioningArtifact.build(context)
          when :associate_tag_option_with_resource
            Aws::ServiceCatalog::Endpoints::AssociateTagOptionWithResource.build(context)
          when :batch_associate_service_action_with_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::BatchAssociateServiceActionWithProvisioningArtifact.build(context)
          when :batch_disassociate_service_action_from_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::BatchDisassociateServiceActionFromProvisioningArtifact.build(context)
          when :copy_product
            Aws::ServiceCatalog::Endpoints::CopyProduct.build(context)
          when :create_constraint
            Aws::ServiceCatalog::Endpoints::CreateConstraint.build(context)
          when :create_portfolio
            Aws::ServiceCatalog::Endpoints::CreatePortfolio.build(context)
          when :create_portfolio_share
            Aws::ServiceCatalog::Endpoints::CreatePortfolioShare.build(context)
          when :create_product
            Aws::ServiceCatalog::Endpoints::CreateProduct.build(context)
          when :create_provisioned_product_plan
            Aws::ServiceCatalog::Endpoints::CreateProvisionedProductPlan.build(context)
          when :create_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::CreateProvisioningArtifact.build(context)
          when :create_service_action
            Aws::ServiceCatalog::Endpoints::CreateServiceAction.build(context)
          when :create_tag_option
            Aws::ServiceCatalog::Endpoints::CreateTagOption.build(context)
          when :delete_constraint
            Aws::ServiceCatalog::Endpoints::DeleteConstraint.build(context)
          when :delete_portfolio
            Aws::ServiceCatalog::Endpoints::DeletePortfolio.build(context)
          when :delete_portfolio_share
            Aws::ServiceCatalog::Endpoints::DeletePortfolioShare.build(context)
          when :delete_product
            Aws::ServiceCatalog::Endpoints::DeleteProduct.build(context)
          when :delete_provisioned_product_plan
            Aws::ServiceCatalog::Endpoints::DeleteProvisionedProductPlan.build(context)
          when :delete_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::DeleteProvisioningArtifact.build(context)
          when :delete_service_action
            Aws::ServiceCatalog::Endpoints::DeleteServiceAction.build(context)
          when :delete_tag_option
            Aws::ServiceCatalog::Endpoints::DeleteTagOption.build(context)
          when :describe_constraint
            Aws::ServiceCatalog::Endpoints::DescribeConstraint.build(context)
          when :describe_copy_product_status
            Aws::ServiceCatalog::Endpoints::DescribeCopyProductStatus.build(context)
          when :describe_portfolio
            Aws::ServiceCatalog::Endpoints::DescribePortfolio.build(context)
          when :describe_portfolio_share_status
            Aws::ServiceCatalog::Endpoints::DescribePortfolioShareStatus.build(context)
          when :describe_portfolio_shares
            Aws::ServiceCatalog::Endpoints::DescribePortfolioShares.build(context)
          when :describe_product
            Aws::ServiceCatalog::Endpoints::DescribeProduct.build(context)
          when :describe_product_as_admin
            Aws::ServiceCatalog::Endpoints::DescribeProductAsAdmin.build(context)
          when :describe_product_view
            Aws::ServiceCatalog::Endpoints::DescribeProductView.build(context)
          when :describe_provisioned_product
            Aws::ServiceCatalog::Endpoints::DescribeProvisionedProduct.build(context)
          when :describe_provisioned_product_plan
            Aws::ServiceCatalog::Endpoints::DescribeProvisionedProductPlan.build(context)
          when :describe_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::DescribeProvisioningArtifact.build(context)
          when :describe_provisioning_parameters
            Aws::ServiceCatalog::Endpoints::DescribeProvisioningParameters.build(context)
          when :describe_record
            Aws::ServiceCatalog::Endpoints::DescribeRecord.build(context)
          when :describe_service_action
            Aws::ServiceCatalog::Endpoints::DescribeServiceAction.build(context)
          when :describe_service_action_execution_parameters
            Aws::ServiceCatalog::Endpoints::DescribeServiceActionExecutionParameters.build(context)
          when :describe_tag_option
            Aws::ServiceCatalog::Endpoints::DescribeTagOption.build(context)
          when :disable_aws_organizations_access
            Aws::ServiceCatalog::Endpoints::DisableAWSOrganizationsAccess.build(context)
          when :disassociate_budget_from_resource
            Aws::ServiceCatalog::Endpoints::DisassociateBudgetFromResource.build(context)
          when :disassociate_principal_from_portfolio
            Aws::ServiceCatalog::Endpoints::DisassociatePrincipalFromPortfolio.build(context)
          when :disassociate_product_from_portfolio
            Aws::ServiceCatalog::Endpoints::DisassociateProductFromPortfolio.build(context)
          when :disassociate_service_action_from_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::DisassociateServiceActionFromProvisioningArtifact.build(context)
          when :disassociate_tag_option_from_resource
            Aws::ServiceCatalog::Endpoints::DisassociateTagOptionFromResource.build(context)
          when :enable_aws_organizations_access
            Aws::ServiceCatalog::Endpoints::EnableAWSOrganizationsAccess.build(context)
          when :execute_provisioned_product_plan
            Aws::ServiceCatalog::Endpoints::ExecuteProvisionedProductPlan.build(context)
          when :execute_provisioned_product_service_action
            Aws::ServiceCatalog::Endpoints::ExecuteProvisionedProductServiceAction.build(context)
          when :get_aws_organizations_access_status
            Aws::ServiceCatalog::Endpoints::GetAWSOrganizationsAccessStatus.build(context)
          when :get_provisioned_product_outputs
            Aws::ServiceCatalog::Endpoints::GetProvisionedProductOutputs.build(context)
          when :import_as_provisioned_product
            Aws::ServiceCatalog::Endpoints::ImportAsProvisionedProduct.build(context)
          when :list_accepted_portfolio_shares
            Aws::ServiceCatalog::Endpoints::ListAcceptedPortfolioShares.build(context)
          when :list_budgets_for_resource
            Aws::ServiceCatalog::Endpoints::ListBudgetsForResource.build(context)
          when :list_constraints_for_portfolio
            Aws::ServiceCatalog::Endpoints::ListConstraintsForPortfolio.build(context)
          when :list_launch_paths
            Aws::ServiceCatalog::Endpoints::ListLaunchPaths.build(context)
          when :list_organization_portfolio_access
            Aws::ServiceCatalog::Endpoints::ListOrganizationPortfolioAccess.build(context)
          when :list_portfolio_access
            Aws::ServiceCatalog::Endpoints::ListPortfolioAccess.build(context)
          when :list_portfolios
            Aws::ServiceCatalog::Endpoints::ListPortfolios.build(context)
          when :list_portfolios_for_product
            Aws::ServiceCatalog::Endpoints::ListPortfoliosForProduct.build(context)
          when :list_principals_for_portfolio
            Aws::ServiceCatalog::Endpoints::ListPrincipalsForPortfolio.build(context)
          when :list_provisioned_product_plans
            Aws::ServiceCatalog::Endpoints::ListProvisionedProductPlans.build(context)
          when :list_provisioning_artifacts
            Aws::ServiceCatalog::Endpoints::ListProvisioningArtifacts.build(context)
          when :list_provisioning_artifacts_for_service_action
            Aws::ServiceCatalog::Endpoints::ListProvisioningArtifactsForServiceAction.build(context)
          when :list_record_history
            Aws::ServiceCatalog::Endpoints::ListRecordHistory.build(context)
          when :list_resources_for_tag_option
            Aws::ServiceCatalog::Endpoints::ListResourcesForTagOption.build(context)
          when :list_service_actions
            Aws::ServiceCatalog::Endpoints::ListServiceActions.build(context)
          when :list_service_actions_for_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::ListServiceActionsForProvisioningArtifact.build(context)
          when :list_stack_instances_for_provisioned_product
            Aws::ServiceCatalog::Endpoints::ListStackInstancesForProvisionedProduct.build(context)
          when :list_tag_options
            Aws::ServiceCatalog::Endpoints::ListTagOptions.build(context)
          when :notify_provision_product_engine_workflow_result
            Aws::ServiceCatalog::Endpoints::NotifyProvisionProductEngineWorkflowResult.build(context)
          when :notify_terminate_provisioned_product_engine_workflow_result
            Aws::ServiceCatalog::Endpoints::NotifyTerminateProvisionedProductEngineWorkflowResult.build(context)
          when :notify_update_provisioned_product_engine_workflow_result
            Aws::ServiceCatalog::Endpoints::NotifyUpdateProvisionedProductEngineWorkflowResult.build(context)
          when :provision_product
            Aws::ServiceCatalog::Endpoints::ProvisionProduct.build(context)
          when :reject_portfolio_share
            Aws::ServiceCatalog::Endpoints::RejectPortfolioShare.build(context)
          when :scan_provisioned_products
            Aws::ServiceCatalog::Endpoints::ScanProvisionedProducts.build(context)
          when :search_products
            Aws::ServiceCatalog::Endpoints::SearchProducts.build(context)
          when :search_products_as_admin
            Aws::ServiceCatalog::Endpoints::SearchProductsAsAdmin.build(context)
          when :search_provisioned_products
            Aws::ServiceCatalog::Endpoints::SearchProvisionedProducts.build(context)
          when :terminate_provisioned_product
            Aws::ServiceCatalog::Endpoints::TerminateProvisionedProduct.build(context)
          when :update_constraint
            Aws::ServiceCatalog::Endpoints::UpdateConstraint.build(context)
          when :update_portfolio
            Aws::ServiceCatalog::Endpoints::UpdatePortfolio.build(context)
          when :update_portfolio_share
            Aws::ServiceCatalog::Endpoints::UpdatePortfolioShare.build(context)
          when :update_product
            Aws::ServiceCatalog::Endpoints::UpdateProduct.build(context)
          when :update_provisioned_product
            Aws::ServiceCatalog::Endpoints::UpdateProvisionedProduct.build(context)
          when :update_provisioned_product_properties
            Aws::ServiceCatalog::Endpoints::UpdateProvisionedProductProperties.build(context)
          when :update_provisioning_artifact
            Aws::ServiceCatalog::Endpoints::UpdateProvisioningArtifact.build(context)
          when :update_service_action
            Aws::ServiceCatalog::Endpoints::UpdateServiceAction.build(context)
          when :update_tag_option
            Aws::ServiceCatalog::Endpoints::UpdateTagOption.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
