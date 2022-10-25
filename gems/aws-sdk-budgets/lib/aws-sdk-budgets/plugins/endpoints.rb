# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Budgets
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Budgets::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Budgets::EndpointParameters`'
      ) do |cfg|
        Aws::Budgets::EndpointProvider.new
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
          when :create_budget
            Aws::Budgets::Endpoints::CreateBudget.build(context)
          when :create_budget_action
            Aws::Budgets::Endpoints::CreateBudgetAction.build(context)
          when :create_notification
            Aws::Budgets::Endpoints::CreateNotification.build(context)
          when :create_subscriber
            Aws::Budgets::Endpoints::CreateSubscriber.build(context)
          when :delete_budget
            Aws::Budgets::Endpoints::DeleteBudget.build(context)
          when :delete_budget_action
            Aws::Budgets::Endpoints::DeleteBudgetAction.build(context)
          when :delete_notification
            Aws::Budgets::Endpoints::DeleteNotification.build(context)
          when :delete_subscriber
            Aws::Budgets::Endpoints::DeleteSubscriber.build(context)
          when :describe_budget
            Aws::Budgets::Endpoints::DescribeBudget.build(context)
          when :describe_budget_action
            Aws::Budgets::Endpoints::DescribeBudgetAction.build(context)
          when :describe_budget_action_histories
            Aws::Budgets::Endpoints::DescribeBudgetActionHistories.build(context)
          when :describe_budget_actions_for_account
            Aws::Budgets::Endpoints::DescribeBudgetActionsForAccount.build(context)
          when :describe_budget_actions_for_budget
            Aws::Budgets::Endpoints::DescribeBudgetActionsForBudget.build(context)
          when :describe_budget_notifications_for_account
            Aws::Budgets::Endpoints::DescribeBudgetNotificationsForAccount.build(context)
          when :describe_budget_performance_history
            Aws::Budgets::Endpoints::DescribeBudgetPerformanceHistory.build(context)
          when :describe_budgets
            Aws::Budgets::Endpoints::DescribeBudgets.build(context)
          when :describe_notifications_for_budget
            Aws::Budgets::Endpoints::DescribeNotificationsForBudget.build(context)
          when :describe_subscribers_for_notification
            Aws::Budgets::Endpoints::DescribeSubscribersForNotification.build(context)
          when :execute_budget_action
            Aws::Budgets::Endpoints::ExecuteBudgetAction.build(context)
          when :update_budget
            Aws::Budgets::Endpoints::UpdateBudget.build(context)
          when :update_budget_action
            Aws::Budgets::Endpoints::UpdateBudgetAction.build(context)
          when :update_notification
            Aws::Budgets::Endpoints::UpdateNotification.build(context)
          when :update_subscriber
            Aws::Budgets::Endpoints::UpdateSubscriber.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
