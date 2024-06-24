# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CloudFront
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CloudFront::EndpointProvider',
        rbs_type: 'untyped',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CloudFront::EndpointParameters`'
      ) do |cfg|
        Aws::CloudFront::EndpointProvider.new
      end

      # @api private
      class Handler < Seahorse::Client::Handler
        def call(context)
          unless context[:discovered_endpoint]
            params = parameters_for_operation(context)
            endpoint = context.config.endpoint_provider.resolve_endpoint(params)

            context.http_request.endpoint = endpoint.url
            apply_endpoint_headers(context, endpoint.headers)

            context[:endpoint_params] = params
            context[:endpoint_properties] = endpoint.properties
          end

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
          when :associate_alias
            Aws::CloudFront::Endpoints::AssociateAlias.build(context)
          when :copy_distribution
            Aws::CloudFront::Endpoints::CopyDistribution.build(context)
          when :create_cache_policy
            Aws::CloudFront::Endpoints::CreateCachePolicy.build(context)
          when :create_cloud_front_origin_access_identity
            Aws::CloudFront::Endpoints::CreateCloudFrontOriginAccessIdentity.build(context)
          when :create_continuous_deployment_policy
            Aws::CloudFront::Endpoints::CreateContinuousDeploymentPolicy.build(context)
          when :create_distribution
            Aws::CloudFront::Endpoints::CreateDistribution.build(context)
          when :create_distribution_with_tags
            Aws::CloudFront::Endpoints::CreateDistributionWithTags.build(context)
          when :create_field_level_encryption_config
            Aws::CloudFront::Endpoints::CreateFieldLevelEncryptionConfig.build(context)
          when :create_field_level_encryption_profile
            Aws::CloudFront::Endpoints::CreateFieldLevelEncryptionProfile.build(context)
          when :create_function
            Aws::CloudFront::Endpoints::CreateFunction.build(context)
          when :create_invalidation
            Aws::CloudFront::Endpoints::CreateInvalidation.build(context)
          when :create_key_group
            Aws::CloudFront::Endpoints::CreateKeyGroup.build(context)
          when :create_key_value_store
            Aws::CloudFront::Endpoints::CreateKeyValueStore.build(context)
          when :create_monitoring_subscription
            Aws::CloudFront::Endpoints::CreateMonitoringSubscription.build(context)
          when :create_origin_access_control
            Aws::CloudFront::Endpoints::CreateOriginAccessControl.build(context)
          when :create_origin_request_policy
            Aws::CloudFront::Endpoints::CreateOriginRequestPolicy.build(context)
          when :create_public_key
            Aws::CloudFront::Endpoints::CreatePublicKey.build(context)
          when :create_realtime_log_config
            Aws::CloudFront::Endpoints::CreateRealtimeLogConfig.build(context)
          when :create_response_headers_policy
            Aws::CloudFront::Endpoints::CreateResponseHeadersPolicy.build(context)
          when :create_streaming_distribution
            Aws::CloudFront::Endpoints::CreateStreamingDistribution.build(context)
          when :create_streaming_distribution_with_tags
            Aws::CloudFront::Endpoints::CreateStreamingDistributionWithTags.build(context)
          when :delete_cache_policy
            Aws::CloudFront::Endpoints::DeleteCachePolicy.build(context)
          when :delete_cloud_front_origin_access_identity
            Aws::CloudFront::Endpoints::DeleteCloudFrontOriginAccessIdentity.build(context)
          when :delete_continuous_deployment_policy
            Aws::CloudFront::Endpoints::DeleteContinuousDeploymentPolicy.build(context)
          when :delete_distribution
            Aws::CloudFront::Endpoints::DeleteDistribution.build(context)
          when :delete_field_level_encryption_config
            Aws::CloudFront::Endpoints::DeleteFieldLevelEncryptionConfig.build(context)
          when :delete_field_level_encryption_profile
            Aws::CloudFront::Endpoints::DeleteFieldLevelEncryptionProfile.build(context)
          when :delete_function
            Aws::CloudFront::Endpoints::DeleteFunction.build(context)
          when :delete_key_group
            Aws::CloudFront::Endpoints::DeleteKeyGroup.build(context)
          when :delete_key_value_store
            Aws::CloudFront::Endpoints::DeleteKeyValueStore.build(context)
          when :delete_monitoring_subscription
            Aws::CloudFront::Endpoints::DeleteMonitoringSubscription.build(context)
          when :delete_origin_access_control
            Aws::CloudFront::Endpoints::DeleteOriginAccessControl.build(context)
          when :delete_origin_request_policy
            Aws::CloudFront::Endpoints::DeleteOriginRequestPolicy.build(context)
          when :delete_public_key
            Aws::CloudFront::Endpoints::DeletePublicKey.build(context)
          when :delete_realtime_log_config
            Aws::CloudFront::Endpoints::DeleteRealtimeLogConfig.build(context)
          when :delete_response_headers_policy
            Aws::CloudFront::Endpoints::DeleteResponseHeadersPolicy.build(context)
          when :delete_streaming_distribution
            Aws::CloudFront::Endpoints::DeleteStreamingDistribution.build(context)
          when :describe_function
            Aws::CloudFront::Endpoints::DescribeFunction.build(context)
          when :describe_key_value_store
            Aws::CloudFront::Endpoints::DescribeKeyValueStore.build(context)
          when :get_cache_policy
            Aws::CloudFront::Endpoints::GetCachePolicy.build(context)
          when :get_cache_policy_config
            Aws::CloudFront::Endpoints::GetCachePolicyConfig.build(context)
          when :get_cloud_front_origin_access_identity
            Aws::CloudFront::Endpoints::GetCloudFrontOriginAccessIdentity.build(context)
          when :get_cloud_front_origin_access_identity_config
            Aws::CloudFront::Endpoints::GetCloudFrontOriginAccessIdentityConfig.build(context)
          when :get_continuous_deployment_policy
            Aws::CloudFront::Endpoints::GetContinuousDeploymentPolicy.build(context)
          when :get_continuous_deployment_policy_config
            Aws::CloudFront::Endpoints::GetContinuousDeploymentPolicyConfig.build(context)
          when :get_distribution
            Aws::CloudFront::Endpoints::GetDistribution.build(context)
          when :get_distribution_config
            Aws::CloudFront::Endpoints::GetDistributionConfig.build(context)
          when :get_field_level_encryption
            Aws::CloudFront::Endpoints::GetFieldLevelEncryption.build(context)
          when :get_field_level_encryption_config
            Aws::CloudFront::Endpoints::GetFieldLevelEncryptionConfig.build(context)
          when :get_field_level_encryption_profile
            Aws::CloudFront::Endpoints::GetFieldLevelEncryptionProfile.build(context)
          when :get_field_level_encryption_profile_config
            Aws::CloudFront::Endpoints::GetFieldLevelEncryptionProfileConfig.build(context)
          when :get_function
            Aws::CloudFront::Endpoints::GetFunction.build(context)
          when :get_invalidation
            Aws::CloudFront::Endpoints::GetInvalidation.build(context)
          when :get_key_group
            Aws::CloudFront::Endpoints::GetKeyGroup.build(context)
          when :get_key_group_config
            Aws::CloudFront::Endpoints::GetKeyGroupConfig.build(context)
          when :get_monitoring_subscription
            Aws::CloudFront::Endpoints::GetMonitoringSubscription.build(context)
          when :get_origin_access_control
            Aws::CloudFront::Endpoints::GetOriginAccessControl.build(context)
          when :get_origin_access_control_config
            Aws::CloudFront::Endpoints::GetOriginAccessControlConfig.build(context)
          when :get_origin_request_policy
            Aws::CloudFront::Endpoints::GetOriginRequestPolicy.build(context)
          when :get_origin_request_policy_config
            Aws::CloudFront::Endpoints::GetOriginRequestPolicyConfig.build(context)
          when :get_public_key
            Aws::CloudFront::Endpoints::GetPublicKey.build(context)
          when :get_public_key_config
            Aws::CloudFront::Endpoints::GetPublicKeyConfig.build(context)
          when :get_realtime_log_config
            Aws::CloudFront::Endpoints::GetRealtimeLogConfig.build(context)
          when :get_response_headers_policy
            Aws::CloudFront::Endpoints::GetResponseHeadersPolicy.build(context)
          when :get_response_headers_policy_config
            Aws::CloudFront::Endpoints::GetResponseHeadersPolicyConfig.build(context)
          when :get_streaming_distribution
            Aws::CloudFront::Endpoints::GetStreamingDistribution.build(context)
          when :get_streaming_distribution_config
            Aws::CloudFront::Endpoints::GetStreamingDistributionConfig.build(context)
          when :list_cache_policies
            Aws::CloudFront::Endpoints::ListCachePolicies.build(context)
          when :list_cloud_front_origin_access_identities
            Aws::CloudFront::Endpoints::ListCloudFrontOriginAccessIdentities.build(context)
          when :list_conflicting_aliases
            Aws::CloudFront::Endpoints::ListConflictingAliases.build(context)
          when :list_continuous_deployment_policies
            Aws::CloudFront::Endpoints::ListContinuousDeploymentPolicies.build(context)
          when :list_distributions
            Aws::CloudFront::Endpoints::ListDistributions.build(context)
          when :list_distributions_by_cache_policy_id
            Aws::CloudFront::Endpoints::ListDistributionsByCachePolicyId.build(context)
          when :list_distributions_by_key_group
            Aws::CloudFront::Endpoints::ListDistributionsByKeyGroup.build(context)
          when :list_distributions_by_origin_request_policy_id
            Aws::CloudFront::Endpoints::ListDistributionsByOriginRequestPolicyId.build(context)
          when :list_distributions_by_realtime_log_config
            Aws::CloudFront::Endpoints::ListDistributionsByRealtimeLogConfig.build(context)
          when :list_distributions_by_response_headers_policy_id
            Aws::CloudFront::Endpoints::ListDistributionsByResponseHeadersPolicyId.build(context)
          when :list_distributions_by_web_acl_id
            Aws::CloudFront::Endpoints::ListDistributionsByWebACLId.build(context)
          when :list_field_level_encryption_configs
            Aws::CloudFront::Endpoints::ListFieldLevelEncryptionConfigs.build(context)
          when :list_field_level_encryption_profiles
            Aws::CloudFront::Endpoints::ListFieldLevelEncryptionProfiles.build(context)
          when :list_functions
            Aws::CloudFront::Endpoints::ListFunctions.build(context)
          when :list_invalidations
            Aws::CloudFront::Endpoints::ListInvalidations.build(context)
          when :list_key_groups
            Aws::CloudFront::Endpoints::ListKeyGroups.build(context)
          when :list_key_value_stores
            Aws::CloudFront::Endpoints::ListKeyValueStores.build(context)
          when :list_origin_access_controls
            Aws::CloudFront::Endpoints::ListOriginAccessControls.build(context)
          when :list_origin_request_policies
            Aws::CloudFront::Endpoints::ListOriginRequestPolicies.build(context)
          when :list_public_keys
            Aws::CloudFront::Endpoints::ListPublicKeys.build(context)
          when :list_realtime_log_configs
            Aws::CloudFront::Endpoints::ListRealtimeLogConfigs.build(context)
          when :list_response_headers_policies
            Aws::CloudFront::Endpoints::ListResponseHeadersPolicies.build(context)
          when :list_streaming_distributions
            Aws::CloudFront::Endpoints::ListStreamingDistributions.build(context)
          when :list_tags_for_resource
            Aws::CloudFront::Endpoints::ListTagsForResource.build(context)
          when :publish_function
            Aws::CloudFront::Endpoints::PublishFunction.build(context)
          when :tag_resource
            Aws::CloudFront::Endpoints::TagResource.build(context)
          when :test_function
            Aws::CloudFront::Endpoints::TestFunction.build(context)
          when :untag_resource
            Aws::CloudFront::Endpoints::UntagResource.build(context)
          when :update_cache_policy
            Aws::CloudFront::Endpoints::UpdateCachePolicy.build(context)
          when :update_cloud_front_origin_access_identity
            Aws::CloudFront::Endpoints::UpdateCloudFrontOriginAccessIdentity.build(context)
          when :update_continuous_deployment_policy
            Aws::CloudFront::Endpoints::UpdateContinuousDeploymentPolicy.build(context)
          when :update_distribution
            Aws::CloudFront::Endpoints::UpdateDistribution.build(context)
          when :update_distribution_with_staging_config
            Aws::CloudFront::Endpoints::UpdateDistributionWithStagingConfig.build(context)
          when :update_field_level_encryption_config
            Aws::CloudFront::Endpoints::UpdateFieldLevelEncryptionConfig.build(context)
          when :update_field_level_encryption_profile
            Aws::CloudFront::Endpoints::UpdateFieldLevelEncryptionProfile.build(context)
          when :update_function
            Aws::CloudFront::Endpoints::UpdateFunction.build(context)
          when :update_key_group
            Aws::CloudFront::Endpoints::UpdateKeyGroup.build(context)
          when :update_key_value_store
            Aws::CloudFront::Endpoints::UpdateKeyValueStore.build(context)
          when :update_origin_access_control
            Aws::CloudFront::Endpoints::UpdateOriginAccessControl.build(context)
          when :update_origin_request_policy
            Aws::CloudFront::Endpoints::UpdateOriginRequestPolicy.build(context)
          when :update_public_key
            Aws::CloudFront::Endpoints::UpdatePublicKey.build(context)
          when :update_realtime_log_config
            Aws::CloudFront::Endpoints::UpdateRealtimeLogConfig.build(context)
          when :update_response_headers_policy
            Aws::CloudFront::Endpoints::UpdateResponseHeadersPolicy.build(context)
          when :update_streaming_distribution
            Aws::CloudFront::Endpoints::UpdateStreamingDistribution.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
