# frozen_string_literal: true

# This is generated code!

module Aws::S3
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute bucket
  #   The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.
  #   @return [String]
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
  # @!attribute force_path_style
  #   When true, force a path-style endpoint to be used where the bucket name is part of the path.
  #   @return [Boolean]
  # @!attribute accelerate
  #   When true, use S3 Accelerate. NOTE: Not all regions support S3 accelerate.
  #   @return [Boolean]
  # @!attribute use_global_endpoint
  #   Whether the global endpoint should be used, rather then the regional endpoint for us-east-1.
  #   @return [Boolean]
  # @!attribute use_object_lambda_endpoint
  #   Internal parameter to use object lambda endpoint for an operation (eg: WriteGetObjectResponse)
  #   @return [Boolean]
  # @!attribute key
  #   The S3 Key used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 Key.
  #   @return [String]
  # @!attribute prefix
  #   The S3 Prefix used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 Prefix.
  #   @return [String]
  # @!attribute copy_source
  #   The Copy Source used for Copy Object request. This is an optional parameter that will be set automatically for operations that are scoped to Copy Source.
  #   @return [String]
  # @!attribute disable_access_points
  #   Internal parameter to disable Access Point Buckets
  #   @return [Boolean]
  # @!attribute disable_multi_region_access_points
  #   Whether multi-region access points (MRAP) should be disabled.
  #   @return [Boolean]
  # @!attribute use_arn_region
  #   When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN's region when constructing the endpoint instead of the client's configured region.
  #   @return [Boolean]
  # @!attribute use_s3_express_control_endpoint
  #   Internal parameter to indicate whether S3Express operation should use control plane, (ex. CreateBucket)
  #   @return [Boolean]
  # @!attribute disable_s3_express_session_auth
  #   Parameter to indicate whether S3Express session auth should be disabled
  #   @return [Boolean]
  EndpointParameters = Struct.new(
    nil,
    :bucket,
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :force_path_style,
    :accelerate,
    :use_global_endpoint,
    :use_object_lambda_endpoint,
    :key,
    :prefix,
    :copy_source,
    :disable_access_points,
    :disable_multi_region_access_points,
    :use_arn_region,
    :use_s3_express_control_endpoint,
    :disable_s3_express_session_auth,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.bucket = options.fetch(:bucket, nil)
      self.region = options.fetch(:region, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.endpoint = options.fetch(:endpoint, nil)
      self.force_path_style = options.fetch(:force_path_style, false)
      self.accelerate = options.fetch(:accelerate, false)
      self.use_global_endpoint = options.fetch(:use_global_endpoint, false)
      self.use_object_lambda_endpoint = options.fetch(:use_object_lambda_endpoint, nil)
      self.key = options.fetch(:key, nil)
      self.prefix = options.fetch(:prefix, nil)
      self.copy_source = options.fetch(:copy_source, nil)
      self.disable_access_points = options.fetch(:disable_access_points, nil)
      self.disable_multi_region_access_points = options.fetch(:disable_multi_region_access_points, false)
      self.use_arn_region = options.fetch(:use_arn_region, nil)
      self.use_s3_express_control_endpoint = options.fetch(:use_s3_express_control_endpoint, nil)
      self.disable_s3_express_session_auth = options.fetch(:disable_s3_express_session_auth, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :abort_multipart_upload
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :complete_multipart_upload
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :copy_object
          {
            bucket: params[:bucket],
            key: params[:key],
            copy_source: params[:copy_source],
            disable_s3_express_session_auth: true,
          }
        when :create_bucket
          {
            bucket: params[:bucket],
            disable_access_points: true,
            use_s3_express_control_endpoint: true,
          }
        when :create_bucket_metadata_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :create_bucket_metadata_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :create_multipart_upload
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :create_session
          {
            bucket: params[:bucket],
            disable_s3_express_session_auth: true,
          }
        when :delete_bucket
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_analytics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_cors
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_encryption
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_intelligent_tiering_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_inventory_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_lifecycle
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_metadata_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_metadata_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_metrics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_ownership_controls
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_policy
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_replication
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_tagging
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_bucket_website
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :delete_object
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :delete_object_annotation
          {
            bucket: params[:bucket],
          }
        when :delete_object_tagging
          {
            bucket: params[:bucket],
          }
        when :delete_objects
          {
            bucket: params[:bucket],
          }
        when :delete_public_access_block
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_abac
          {
            bucket: params[:bucket],
          }
        when :get_bucket_accelerate_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_acl
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_analytics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_cors
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_encryption
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_intelligent_tiering_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_inventory_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_lifecycle_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_location
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_logging
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_metadata_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_metadata_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_metrics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_notification_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_ownership_controls
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_policy
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_policy_status
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_replication
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_request_payment
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_tagging
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_versioning
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_bucket_website
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :get_object
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :get_object_acl
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :get_object_annotation
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :get_object_attributes
          {
            bucket: params[:bucket],
          }
        when :get_object_legal_hold
          {
            bucket: params[:bucket],
          }
        when :get_object_lock_configuration
          {
            bucket: params[:bucket],
          }
        when :get_object_retention
          {
            bucket: params[:bucket],
          }
        when :get_object_tagging
          {
            bucket: params[:bucket],
          }
        when :get_object_torrent
          {
            bucket: params[:bucket],
          }
        when :get_public_access_block
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :head_bucket
          {
            bucket: params[:bucket],
          }
        when :head_object
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :list_bucket_analytics_configurations
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :list_bucket_intelligent_tiering_configurations
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :list_bucket_inventory_configurations
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :list_bucket_metrics_configurations
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :list_directory_buckets
          {
            use_s3_express_control_endpoint: true,
          }
        when :list_multipart_uploads
          {
            bucket: params[:bucket],
            prefix: params[:prefix],
          }
        when :list_object_annotations
          {
            bucket: params[:bucket],
          }
        when :list_object_versions
          {
            bucket: params[:bucket],
            prefix: params[:prefix],
          }
        when :list_objects
          {
            bucket: params[:bucket],
            prefix: params[:prefix],
          }
        when :list_objects_v2
          {
            bucket: params[:bucket],
            prefix: params[:prefix],
          }
        when :list_parts
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :put_bucket_abac
          {
            bucket: params[:bucket],
          }
        when :put_bucket_accelerate_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_acl
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_analytics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_cors
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_encryption
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_intelligent_tiering_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_inventory_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_lifecycle_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_logging
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_metrics_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_notification_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_ownership_controls
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_policy
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_replication
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_request_payment
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_tagging
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_versioning
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_bucket_website
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :put_object
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :put_object_acl
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :put_object_annotation
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :put_object_legal_hold
          {
            bucket: params[:bucket],
          }
        when :put_object_lock_configuration
          {
            bucket: params[:bucket],
          }
        when :put_object_retention
          {
            bucket: params[:bucket],
          }
        when :put_object_tagging
          {
            bucket: params[:bucket],
          }
        when :put_public_access_block
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :rename_object
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :restore_object
          {
            bucket: params[:bucket],
          }
        when :select_object_content
          {
            bucket: params[:bucket],
          }
        when :update_bucket_metadata_annotation_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :update_bucket_metadata_inventory_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :update_bucket_metadata_journal_table_configuration
          {
            bucket: params[:bucket],
            use_s3_express_control_endpoint: true,
          }
        when :update_object_encryption
          {
            bucket: params[:bucket],
          }
        when :upload_part
          {
            bucket: params[:bucket],
            key: params[:key],
          }
        when :upload_part_copy
          {
            bucket: params[:bucket],
            disable_s3_express_session_auth: true,
          }
        when :write_get_object_response
          {
            use_object_lambda_endpoint: true,
          }
        else
          {}
        end

      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        endpoint: config.endpoint,
        force_path_style: config.s3_force_path_style,
        accelerate: config.s3_use_accelerate_endpoint,
        use_global_endpoint: config.s3_us_east_1_regional_endpoint == "legacy",
        disable_multi_region_access_points: config.s3_disable_multiregion_access_points,
        use_arn_region: config.s3_use_arn_region,
        disable_s3_express_session_auth: config.disable_s3_express_session_auth,
      }.merge(operation_params).compact)
    end
  end
end
