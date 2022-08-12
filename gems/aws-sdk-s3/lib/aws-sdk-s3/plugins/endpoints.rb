# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::S3
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::S3::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::S3::EndpointParameters`'
      ) do
        Aws::S3::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          params = parameters_for_operation(context.operation_name)
          endpoint = context.config.endpoint_provider.resolve_endpoint(params)
          context[:endpoint] = endpoint
          @handler.call(context)
        end

        private

        def parameters_for_operation(operation)
                    case operation
          when :abort_multipart_upload
            Aws::S3::Endpoints::AbortMultipartUpload
          when :complete_multipart_upload
            Aws::S3::Endpoints::CompleteMultipartUpload
          when :copy_object
            Aws::S3::Endpoints::CopyObject
          when :create_bucket
            Aws::S3::Endpoints::CreateBucket
          when :create_multipart_upload
            Aws::S3::Endpoints::CreateMultipartUpload
          when :delete_bucket
            Aws::S3::Endpoints::DeleteBucket
          when :delete_bucket_analytics_configuration
            Aws::S3::Endpoints::DeleteBucketAnalyticsConfiguration
          when :delete_bucket_cors
            Aws::S3::Endpoints::DeleteBucketCors
          when :delete_bucket_encryption
            Aws::S3::Endpoints::DeleteBucketEncryption
          when :delete_bucket_intelligent_tiering_configuration
            Aws::S3::Endpoints::DeleteBucketIntelligentTieringConfiguration
          when :delete_bucket_inventory_configuration
            Aws::S3::Endpoints::DeleteBucketInventoryConfiguration
          when :delete_bucket_lifecycle
            Aws::S3::Endpoints::DeleteBucketLifecycle
          when :delete_bucket_metrics_configuration
            Aws::S3::Endpoints::DeleteBucketMetricsConfiguration
          when :delete_bucket_ownership_controls
            Aws::S3::Endpoints::DeleteBucketOwnershipControls
          when :delete_bucket_policy
            Aws::S3::Endpoints::DeleteBucketPolicy
          when :delete_bucket_replication
            Aws::S3::Endpoints::DeleteBucketReplication
          when :delete_bucket_tagging
            Aws::S3::Endpoints::DeleteBucketTagging
          when :delete_bucket_website
            Aws::S3::Endpoints::DeleteBucketWebsite
          when :delete_object
            Aws::S3::Endpoints::DeleteObject
          when :delete_object_tagging
            Aws::S3::Endpoints::DeleteObjectTagging
          when :delete_objects
            Aws::S3::Endpoints::DeleteObjects
          when :delete_public_access_block
            Aws::S3::Endpoints::DeletePublicAccessBlock
          when :get_bucket_accelerate_configuration
            Aws::S3::Endpoints::GetBucketAccelerateConfiguration
          when :get_bucket_acl
            Aws::S3::Endpoints::GetBucketAcl
          when :get_bucket_analytics_configuration
            Aws::S3::Endpoints::GetBucketAnalyticsConfiguration
          when :get_bucket_cors
            Aws::S3::Endpoints::GetBucketCors
          when :get_bucket_encryption
            Aws::S3::Endpoints::GetBucketEncryption
          when :get_bucket_intelligent_tiering_configuration
            Aws::S3::Endpoints::GetBucketIntelligentTieringConfiguration
          when :get_bucket_inventory_configuration
            Aws::S3::Endpoints::GetBucketInventoryConfiguration
          when :get_bucket_lifecycle
            Aws::S3::Endpoints::GetBucketLifecycle
          when :get_bucket_lifecycle_configuration
            Aws::S3::Endpoints::GetBucketLifecycleConfiguration
          when :get_bucket_location
            Aws::S3::Endpoints::GetBucketLocation
          when :get_bucket_logging
            Aws::S3::Endpoints::GetBucketLogging
          when :get_bucket_metrics_configuration
            Aws::S3::Endpoints::GetBucketMetricsConfiguration
          when :get_bucket_notification
            Aws::S3::Endpoints::GetBucketNotification
          when :get_bucket_notification_configuration
            Aws::S3::Endpoints::GetBucketNotificationConfiguration
          when :get_bucket_ownership_controls
            Aws::S3::Endpoints::GetBucketOwnershipControls
          when :get_bucket_policy
            Aws::S3::Endpoints::GetBucketPolicy
          when :get_bucket_policy_status
            Aws::S3::Endpoints::GetBucketPolicyStatus
          when :get_bucket_replication
            Aws::S3::Endpoints::GetBucketReplication
          when :get_bucket_request_payment
            Aws::S3::Endpoints::GetBucketRequestPayment
          when :get_bucket_tagging
            Aws::S3::Endpoints::GetBucketTagging
          when :get_bucket_versioning
            Aws::S3::Endpoints::GetBucketVersioning
          when :get_bucket_website
            Aws::S3::Endpoints::GetBucketWebsite
          when :get_object
            Aws::S3::Endpoints::GetObject
          when :get_object_acl
            Aws::S3::Endpoints::GetObjectAcl
          when :get_object_attributes
            Aws::S3::Endpoints::GetObjectAttributes
          when :get_object_legal_hold
            Aws::S3::Endpoints::GetObjectLegalHold
          when :get_object_lock_configuration
            Aws::S3::Endpoints::GetObjectLockConfiguration
          when :get_object_retention
            Aws::S3::Endpoints::GetObjectRetention
          when :get_object_tagging
            Aws::S3::Endpoints::GetObjectTagging
          when :get_object_torrent
            Aws::S3::Endpoints::GetObjectTorrent
          when :get_public_access_block
            Aws::S3::Endpoints::GetPublicAccessBlock
          when :head_bucket
            Aws::S3::Endpoints::HeadBucket
          when :head_object
            Aws::S3::Endpoints::HeadObject
          when :list_bucket_analytics_configurations
            Aws::S3::Endpoints::ListBucketAnalyticsConfigurations
          when :list_bucket_intelligent_tiering_configurations
            Aws::S3::Endpoints::ListBucketIntelligentTieringConfigurations
          when :list_bucket_inventory_configurations
            Aws::S3::Endpoints::ListBucketInventoryConfigurations
          when :list_bucket_metrics_configurations
            Aws::S3::Endpoints::ListBucketMetricsConfigurations
          when :list_buckets
            Aws::S3::Endpoints::ListBuckets
          when :list_multipart_uploads
            Aws::S3::Endpoints::ListMultipartUploads
          when :list_object_versions
            Aws::S3::Endpoints::ListObjectVersions
          when :list_objects
            Aws::S3::Endpoints::ListObjects
          when :list_objects_v2
            Aws::S3::Endpoints::ListObjectsV2
          when :list_parts
            Aws::S3::Endpoints::ListParts
          when :put_bucket_accelerate_configuration
            Aws::S3::Endpoints::PutBucketAccelerateConfiguration
          when :put_bucket_acl
            Aws::S3::Endpoints::PutBucketAcl
          when :put_bucket_analytics_configuration
            Aws::S3::Endpoints::PutBucketAnalyticsConfiguration
          when :put_bucket_cors
            Aws::S3::Endpoints::PutBucketCors
          when :put_bucket_encryption
            Aws::S3::Endpoints::PutBucketEncryption
          when :put_bucket_intelligent_tiering_configuration
            Aws::S3::Endpoints::PutBucketIntelligentTieringConfiguration
          when :put_bucket_inventory_configuration
            Aws::S3::Endpoints::PutBucketInventoryConfiguration
          when :put_bucket_lifecycle
            Aws::S3::Endpoints::PutBucketLifecycle
          when :put_bucket_lifecycle_configuration
            Aws::S3::Endpoints::PutBucketLifecycleConfiguration
          when :put_bucket_logging
            Aws::S3::Endpoints::PutBucketLogging
          when :put_bucket_metrics_configuration
            Aws::S3::Endpoints::PutBucketMetricsConfiguration
          when :put_bucket_notification
            Aws::S3::Endpoints::PutBucketNotification
          when :put_bucket_notification_configuration
            Aws::S3::Endpoints::PutBucketNotificationConfiguration
          when :put_bucket_ownership_controls
            Aws::S3::Endpoints::PutBucketOwnershipControls
          when :put_bucket_policy
            Aws::S3::Endpoints::PutBucketPolicy
          when :put_bucket_replication
            Aws::S3::Endpoints::PutBucketReplication
          when :put_bucket_request_payment
            Aws::S3::Endpoints::PutBucketRequestPayment
          when :put_bucket_tagging
            Aws::S3::Endpoints::PutBucketTagging
          when :put_bucket_versioning
            Aws::S3::Endpoints::PutBucketVersioning
          when :put_bucket_website
            Aws::S3::Endpoints::PutBucketWebsite
          when :put_object
            Aws::S3::Endpoints::PutObject
          when :put_object_acl
            Aws::S3::Endpoints::PutObjectAcl
          when :put_object_legal_hold
            Aws::S3::Endpoints::PutObjectLegalHold
          when :put_object_lock_configuration
            Aws::S3::Endpoints::PutObjectLockConfiguration
          when :put_object_retention
            Aws::S3::Endpoints::PutObjectRetention
          when :put_object_tagging
            Aws::S3::Endpoints::PutObjectTagging
          when :put_public_access_block
            Aws::S3::Endpoints::PutPublicAccessBlock
          when :restore_object
            Aws::S3::Endpoints::RestoreObject
          when :select_object_content
            Aws::S3::Endpoints::SelectObjectContent
          when :upload_part
            Aws::S3::Endpoints::UploadPart
          when :upload_part_copy
            Aws::S3::Endpoints::UploadPartCopy
          when :write_get_object_response
            Aws::S3::Endpoints::WriteGetObjectResponse
          end
        end
      end


      def add_handlers(handlers, config)
        handlers.add(Handler, step: :build, priority: 40)
      end
    end
  end
end
