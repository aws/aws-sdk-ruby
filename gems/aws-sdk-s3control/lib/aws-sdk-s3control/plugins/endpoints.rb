# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3Control
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::S3Control::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::S3Control::EndpointParameters`'
      ) do |cfg|
        Aws::S3Control::EndpointProvider.new
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
          when :create_access_point
            Aws::S3Control::Endpoints::CreateAccessPoint.build(context)
          when :create_access_point_for_object_lambda
            Aws::S3Control::Endpoints::CreateAccessPointForObjectLambda.build(context)
          when :create_bucket
            Aws::S3Control::Endpoints::CreateBucket.build(context)
          when :create_job
            Aws::S3Control::Endpoints::CreateJob.build(context)
          when :create_multi_region_access_point
            Aws::S3Control::Endpoints::CreateMultiRegionAccessPoint.build(context)
          when :delete_access_point
            Aws::S3Control::Endpoints::DeleteAccessPoint.build(context)
          when :delete_access_point_for_object_lambda
            Aws::S3Control::Endpoints::DeleteAccessPointForObjectLambda.build(context)
          when :delete_access_point_policy
            Aws::S3Control::Endpoints::DeleteAccessPointPolicy.build(context)
          when :delete_access_point_policy_for_object_lambda
            Aws::S3Control::Endpoints::DeleteAccessPointPolicyForObjectLambda.build(context)
          when :delete_bucket
            Aws::S3Control::Endpoints::DeleteBucket.build(context)
          when :delete_bucket_lifecycle_configuration
            Aws::S3Control::Endpoints::DeleteBucketLifecycleConfiguration.build(context)
          when :delete_bucket_policy
            Aws::S3Control::Endpoints::DeleteBucketPolicy.build(context)
          when :delete_bucket_replication
            Aws::S3Control::Endpoints::DeleteBucketReplication.build(context)
          when :delete_bucket_tagging
            Aws::S3Control::Endpoints::DeleteBucketTagging.build(context)
          when :delete_job_tagging
            Aws::S3Control::Endpoints::DeleteJobTagging.build(context)
          when :delete_multi_region_access_point
            Aws::S3Control::Endpoints::DeleteMultiRegionAccessPoint.build(context)
          when :delete_public_access_block
            Aws::S3Control::Endpoints::DeletePublicAccessBlock.build(context)
          when :delete_storage_lens_configuration
            Aws::S3Control::Endpoints::DeleteStorageLensConfiguration.build(context)
          when :delete_storage_lens_configuration_tagging
            Aws::S3Control::Endpoints::DeleteStorageLensConfigurationTagging.build(context)
          when :describe_job
            Aws::S3Control::Endpoints::DescribeJob.build(context)
          when :describe_multi_region_access_point_operation
            Aws::S3Control::Endpoints::DescribeMultiRegionAccessPointOperation.build(context)
          when :get_access_point
            Aws::S3Control::Endpoints::GetAccessPoint.build(context)
          when :get_access_point_configuration_for_object_lambda
            Aws::S3Control::Endpoints::GetAccessPointConfigurationForObjectLambda.build(context)
          when :get_access_point_for_object_lambda
            Aws::S3Control::Endpoints::GetAccessPointForObjectLambda.build(context)
          when :get_access_point_policy
            Aws::S3Control::Endpoints::GetAccessPointPolicy.build(context)
          when :get_access_point_policy_for_object_lambda
            Aws::S3Control::Endpoints::GetAccessPointPolicyForObjectLambda.build(context)
          when :get_access_point_policy_status
            Aws::S3Control::Endpoints::GetAccessPointPolicyStatus.build(context)
          when :get_access_point_policy_status_for_object_lambda
            Aws::S3Control::Endpoints::GetAccessPointPolicyStatusForObjectLambda.build(context)
          when :get_bucket
            Aws::S3Control::Endpoints::GetBucket.build(context)
          when :get_bucket_lifecycle_configuration
            Aws::S3Control::Endpoints::GetBucketLifecycleConfiguration.build(context)
          when :get_bucket_policy
            Aws::S3Control::Endpoints::GetBucketPolicy.build(context)
          when :get_bucket_replication
            Aws::S3Control::Endpoints::GetBucketReplication.build(context)
          when :get_bucket_tagging
            Aws::S3Control::Endpoints::GetBucketTagging.build(context)
          when :get_bucket_versioning
            Aws::S3Control::Endpoints::GetBucketVersioning.build(context)
          when :get_job_tagging
            Aws::S3Control::Endpoints::GetJobTagging.build(context)
          when :get_multi_region_access_point
            Aws::S3Control::Endpoints::GetMultiRegionAccessPoint.build(context)
          when :get_multi_region_access_point_policy
            Aws::S3Control::Endpoints::GetMultiRegionAccessPointPolicy.build(context)
          when :get_multi_region_access_point_policy_status
            Aws::S3Control::Endpoints::GetMultiRegionAccessPointPolicyStatus.build(context)
          when :get_multi_region_access_point_routes
            Aws::S3Control::Endpoints::GetMultiRegionAccessPointRoutes.build(context)
          when :get_public_access_block
            Aws::S3Control::Endpoints::GetPublicAccessBlock.build(context)
          when :get_storage_lens_configuration
            Aws::S3Control::Endpoints::GetStorageLensConfiguration.build(context)
          when :get_storage_lens_configuration_tagging
            Aws::S3Control::Endpoints::GetStorageLensConfigurationTagging.build(context)
          when :list_access_points
            Aws::S3Control::Endpoints::ListAccessPoints.build(context)
          when :list_access_points_for_object_lambda
            Aws::S3Control::Endpoints::ListAccessPointsForObjectLambda.build(context)
          when :list_jobs
            Aws::S3Control::Endpoints::ListJobs.build(context)
          when :list_multi_region_access_points
            Aws::S3Control::Endpoints::ListMultiRegionAccessPoints.build(context)
          when :list_regional_buckets
            Aws::S3Control::Endpoints::ListRegionalBuckets.build(context)
          when :list_storage_lens_configurations
            Aws::S3Control::Endpoints::ListStorageLensConfigurations.build(context)
          when :put_access_point_configuration_for_object_lambda
            Aws::S3Control::Endpoints::PutAccessPointConfigurationForObjectLambda.build(context)
          when :put_access_point_policy
            Aws::S3Control::Endpoints::PutAccessPointPolicy.build(context)
          when :put_access_point_policy_for_object_lambda
            Aws::S3Control::Endpoints::PutAccessPointPolicyForObjectLambda.build(context)
          when :put_bucket_lifecycle_configuration
            Aws::S3Control::Endpoints::PutBucketLifecycleConfiguration.build(context)
          when :put_bucket_policy
            Aws::S3Control::Endpoints::PutBucketPolicy.build(context)
          when :put_bucket_replication
            Aws::S3Control::Endpoints::PutBucketReplication.build(context)
          when :put_bucket_tagging
            Aws::S3Control::Endpoints::PutBucketTagging.build(context)
          when :put_bucket_versioning
            Aws::S3Control::Endpoints::PutBucketVersioning.build(context)
          when :put_job_tagging
            Aws::S3Control::Endpoints::PutJobTagging.build(context)
          when :put_multi_region_access_point_policy
            Aws::S3Control::Endpoints::PutMultiRegionAccessPointPolicy.build(context)
          when :put_public_access_block
            Aws::S3Control::Endpoints::PutPublicAccessBlock.build(context)
          when :put_storage_lens_configuration
            Aws::S3Control::Endpoints::PutStorageLensConfiguration.build(context)
          when :put_storage_lens_configuration_tagging
            Aws::S3Control::Endpoints::PutStorageLensConfigurationTagging.build(context)
          when :submit_multi_region_access_point_routes
            Aws::S3Control::Endpoints::SubmitMultiRegionAccessPointRoutes.build(context)
          when :update_job_priority
            Aws::S3Control::Endpoints::UpdateJobPriority.build(context)
          when :update_job_status
            Aws::S3Control::Endpoints::UpdateJobStatus.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
