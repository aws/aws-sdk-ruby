# frozen_string_literal: true

# This is generated code!

module Aws::DynamoDB
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #   @return [Boolean]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute account_id
  #   The AWS AccountId used for the request.
  #   @return [String]
  # @!attribute account_id_endpoint_mode
  #   The AccountId Endpoint Mode.
  #   @return [String]
  # @!attribute resource_arn
  #   ResourceArn containing arn of resource
  #   @return [String]
  # @!attribute resource_arn_list
  #   ResourceArnList containing list of resource arns
  #   @return [Array<String>]
  # @!attribute is_search_operation
  #   Set to true for SearchVectors to route to the Search FQDN
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :use_dual_stack,
    :use_fips,
    :endpoint,
    :account_id,
    :account_id_endpoint_mode,
    :resource_arn,
    :resource_arn_list,
    :is_search_operation,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.account_id = options.fetch(:account_id, nil)
      self.account_id_endpoint_mode = options.fetch(:account_id_endpoint_mode, nil)
      self.resource_arn = options.fetch(:resource_arn, nil)
      self.resource_arn_list = options.fetch(:resource_arn_list, nil)
      self.is_search_operation = options.fetch(:is_search_operation, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :batch_get_item
          {
            resource_arn_list: JMESPath.search("keys(request_items)", params),
          }
        when :batch_write_item
          {
            resource_arn_list: JMESPath.search("keys(request_items)", params),
          }
        when :create_backup
          {
            resource_arn: params[:table_name],
          }
        when :create_global_table
          {
            resource_arn: params[:global_table_name],
          }
        when :create_table
          {
            resource_arn: params[:table_name],
          }
        when :delete_backup
          {
            resource_arn: params[:backup_arn],
          }
        when :delete_item
          {
            resource_arn: params[:table_name],
          }
        when :delete_resource_policy
          {
            resource_arn: params[:resource_arn],
          }
        when :delete_table
          {
            resource_arn: params[:table_name],
          }
        when :describe_backup
          {
            resource_arn: params[:backup_arn],
          }
        when :describe_continuous_backups
          {
            resource_arn: params[:table_name],
          }
        when :describe_contributor_insights
          {
            resource_arn: params[:table_name],
          }
        when :describe_export
          {
            resource_arn: params[:export_arn],
          }
        when :describe_global_table
          {
            resource_arn: params[:global_table_name],
          }
        when :describe_global_table_settings
          {
            resource_arn: params[:global_table_name],
          }
        when :describe_import
          {
            resource_arn: params[:import_arn],
          }
        when :describe_kinesis_streaming_destination
          {
            resource_arn: params[:table_name],
          }
        when :describe_table
          {
            resource_arn: params[:table_name],
          }
        when :describe_table_replica_auto_scaling
          {
            resource_arn: params[:table_name],
          }
        when :describe_time_to_live
          {
            resource_arn: params[:table_name],
          }
        when :disable_kinesis_streaming_destination
          {
            resource_arn: params[:table_name],
          }
        when :enable_kinesis_streaming_destination
          {
            resource_arn: params[:table_name],
          }
        when :export_table_to_point_in_time
          {
            resource_arn: params[:table_arn],
          }
        when :get_item
          {
            resource_arn: params[:table_name],
          }
        when :get_resource_policy
          {
            resource_arn: params[:resource_arn],
          }
        when :import_table
          {
            resource_arn: JMESPath.search("table_creation_parameters.table_name", params),
          }
        when :list_backups
          {
            resource_arn: params[:table_name],
          }
        when :list_contributor_insights
          {
            resource_arn: params[:table_name],
          }
        when :list_exports
          {
            resource_arn: params[:table_arn],
          }
        when :list_imports
          {
            resource_arn: params[:table_arn],
          }
        when :list_tags_of_resource
          {
            resource_arn: params[:resource_arn],
          }
        when :put_item
          {
            resource_arn: params[:table_name],
          }
        when :put_resource_policy
          {
            resource_arn: params[:resource_arn],
          }
        when :query
          {
            resource_arn: params[:table_name],
          }
        when :restore_table_from_backup
          {
            resource_arn: params[:target_table_name],
          }
        when :restore_table_to_point_in_time
          {
            resource_arn: params[:target_table_name],
          }
        when :scan
          {
            resource_arn: params[:table_name],
          }
        when :search_vectors
          {
            resource_arn: params[:table_name],
            is_search_operation: true,
          }
        when :tag_resource
          {
            resource_arn: params[:resource_arn],
          }
        when :transact_get_items
          {
            resource_arn_list: JMESPath.search("transact_items[*].get.table_name", params),
          }
        when :transact_write_items
          {
            resource_arn_list: JMESPath.search("transact_items[*].[condition_check.table_name, put.table_name, delete.table_name, update.table_name][]", params),
          }
        when :untag_resource
          {
            resource_arn: params[:resource_arn],
          }
        when :update_continuous_backups
          {
            resource_arn: params[:table_name],
          }
        when :update_contributor_insights
          {
            resource_arn: params[:table_name],
          }
        when :update_global_table
          {
            resource_arn: params[:global_table_name],
          }
        when :update_global_table_settings
          {
            resource_arn: params[:global_table_name],
          }
        when :update_item
          {
            resource_arn: params[:table_name],
          }
        when :update_kinesis_streaming_destination
          {
            resource_arn: params[:table_name],
          }
        when :update_table
          {
            resource_arn: params[:table_name],
          }
        when :update_table_replica_auto_scaling
          {
            resource_arn: params[:table_name],
          }
        when :update_time_to_live
          {
            resource_arn: params[:table_name],
          }
        else
          {}
        end

      new({
        region: config.region,
        use_dual_stack: config.use_dualstack_endpoint,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
        account_id: config.credentials_provider.identity.account_id,
        account_id_endpoint_mode: config.account_id_endpoint_mode,
      }.merge(operation_params).compact)
    end
  end
end
