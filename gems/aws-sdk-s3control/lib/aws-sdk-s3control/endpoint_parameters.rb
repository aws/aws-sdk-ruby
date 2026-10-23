# frozen_string_literal: true

# This is generated code!

module Aws::S3Control
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  # @!attribute account_id
  #   The Account ID used to send the request. This is an optional parameter that will be set automatically for operations that require it.
  #   @return [String]
  # @!attribute requires_account_id
  #   Internal parameter for operations that require account id host prefix.
  #   @return [Boolean]
  # @!attribute outpost_id
  #   The Outpost ID.  Some operations have an optional OutpostId which should be used in endpoint construction.
  #   @return [String]
  # @!attribute bucket
  #   The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.
  #   @return [String]
  # @!attribute access_point_name
  #   The S3 AccessPointName used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 AccessPoint.
  #   @return [String]
  # @!attribute use_arn_region
  #   When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN's region when constructing the endpoint instead of the client's configured region.
  #   @return [Boolean]
  # @!attribute resource_arn
  #   The resource ARN included in the request.  Only set on TagResource, UntagResourceand ListTagsForResource
  #   @return [String]
  # @!attribute use_s3_express_control_endpoint
  #   Internal parameter to indicate whether S3Express operation should use control plane, (ex. ListDirectoryAccessPoints)
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :account_id,
    :requires_account_id,
    :outpost_id,
    :bucket,
    :access_point_name,
    :use_arn_region,
    :resource_arn,
    :use_s3_express_control_endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.account_id = options.fetch(:account_id, nil)
      self.requires_account_id = options.fetch(:requires_account_id, nil)
      self.outpost_id = options.fetch(:outpost_id, nil)
      self.bucket = options.fetch(:bucket, nil)
      self.access_point_name = options.fetch(:access_point_name, nil)
      self.use_arn_region = options.fetch(:use_arn_region, nil)
      self.resource_arn = options.fetch(:resource_arn, nil)
      self.use_s3_express_control_endpoint = options.fetch(:use_s3_express_control_endpoint, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :associate_access_grants_identity_center
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_access_grant
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_access_grants_instance
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_access_grants_location
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
            access_point_name: params[:name],
          }
        when :create_access_point_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_bucket
          {
            outpost_id: params[:outpost_id],
            bucket: params[:bucket],
          }
        when :create_job
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_multi_region_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :create_storage_lens_group
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_grant
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_grants_instance
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_grants_instance_resource_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_grants_location
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :delete_access_point_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_point_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :delete_access_point_policy_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_access_point_scope
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :delete_bucket_lifecycle_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :delete_bucket_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :delete_bucket_replication
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :delete_bucket_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :delete_job_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_multi_region_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_public_access_block
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_storage_lens_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_storage_lens_configuration_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :delete_storage_lens_group
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :describe_job
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :describe_multi_region_access_point_operation
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :dissociate_access_grants_identity_center
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_grant
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_grants_instance
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_grants_instance_for_prefix
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_grants_instance_resource_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_grants_location
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :get_access_point_configuration_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_point_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_point_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :get_access_point_policy_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_point_policy_status
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :get_access_point_policy_status_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_access_point_scope
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_bucket_lifecycle_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_bucket_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_bucket_replication
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_bucket_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_bucket_versioning
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :get_data_access
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_job_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_multi_region_access_point
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_multi_region_access_point_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_multi_region_access_point_policy_status
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_multi_region_access_point_routes
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_public_access_block
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_storage_lens_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_storage_lens_configuration_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :get_storage_lens_group
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_access_grants
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_access_grants_instances
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_access_grants_locations
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_access_points
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :list_access_points_for_directory_buckets
          {
            account_id: params[:account_id],
            requires_account_id: true,
            use_s3_express_control_endpoint: true,
          }
        when :list_access_points_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_caller_access_grants
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_jobs
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_multi_region_access_points
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_regional_buckets
          {
            account_id: params[:account_id],
            requires_account_id: true,
            outpost_id: params[:outpost_id],
          }
        when :list_storage_lens_configurations
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_storage_lens_groups
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :list_tags_for_resource
          {
            account_id: params[:account_id],
            requires_account_id: true,
            resource_arn: params[:resource_arn],
          }
        when :put_access_grants_instance_resource_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_access_point_configuration_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_access_point_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
          }
        when :put_access_point_policy_for_object_lambda
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_access_point_scope
          {
            account_id: params[:account_id],
            requires_account_id: true,
            access_point_name: params[:name],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_lifecycle_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :put_bucket_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :put_bucket_replication
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :put_bucket_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :put_bucket_versioning
          {
            account_id: params[:account_id],
            requires_account_id: true,
            bucket: params[:bucket],
          }
        when :put_job_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_multi_region_access_point_policy
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_public_access_block
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_storage_lens_configuration
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :put_storage_lens_configuration_tagging
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :submit_multi_region_access_point_routes
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :tag_resource
          {
            account_id: params[:account_id],
            requires_account_id: true,
            resource_arn: params[:resource_arn],
          }
        when :untag_resource
          {
            account_id: params[:account_id],
            requires_account_id: true,
            resource_arn: params[:resource_arn],
          }
        when :update_access_grants_location
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :update_job_priority
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :update_job_status
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        when :update_storage_lens_group
          {
            account_id: params[:account_id],
            requires_account_id: true,
          }
        else
          {}
        end

      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        endpoint: config.endpoint,
        use_arn_region: config.s3_use_arn_region,
      }.merge(operation_params).compact)
    end
  end
end
