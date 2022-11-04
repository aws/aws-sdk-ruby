# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::Route53
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::Route53::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::Route53::EndpointParameters`'
      ) do |cfg|
        Aws::Route53::EndpointProvider.new
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
          when :activate_key_signing_key
            Aws::Route53::Endpoints::ActivateKeySigningKey.build(context)
          when :associate_vpc_with_hosted_zone
            Aws::Route53::Endpoints::AssociateVPCWithHostedZone.build(context)
          when :change_cidr_collection
            Aws::Route53::Endpoints::ChangeCidrCollection.build(context)
          when :change_resource_record_sets
            Aws::Route53::Endpoints::ChangeResourceRecordSets.build(context)
          when :change_tags_for_resource
            Aws::Route53::Endpoints::ChangeTagsForResource.build(context)
          when :create_cidr_collection
            Aws::Route53::Endpoints::CreateCidrCollection.build(context)
          when :create_health_check
            Aws::Route53::Endpoints::CreateHealthCheck.build(context)
          when :create_hosted_zone
            Aws::Route53::Endpoints::CreateHostedZone.build(context)
          when :create_key_signing_key
            Aws::Route53::Endpoints::CreateKeySigningKey.build(context)
          when :create_query_logging_config
            Aws::Route53::Endpoints::CreateQueryLoggingConfig.build(context)
          when :create_reusable_delegation_set
            Aws::Route53::Endpoints::CreateReusableDelegationSet.build(context)
          when :create_traffic_policy
            Aws::Route53::Endpoints::CreateTrafficPolicy.build(context)
          when :create_traffic_policy_instance
            Aws::Route53::Endpoints::CreateTrafficPolicyInstance.build(context)
          when :create_traffic_policy_version
            Aws::Route53::Endpoints::CreateTrafficPolicyVersion.build(context)
          when :create_vpc_association_authorization
            Aws::Route53::Endpoints::CreateVPCAssociationAuthorization.build(context)
          when :deactivate_key_signing_key
            Aws::Route53::Endpoints::DeactivateKeySigningKey.build(context)
          when :delete_cidr_collection
            Aws::Route53::Endpoints::DeleteCidrCollection.build(context)
          when :delete_health_check
            Aws::Route53::Endpoints::DeleteHealthCheck.build(context)
          when :delete_hosted_zone
            Aws::Route53::Endpoints::DeleteHostedZone.build(context)
          when :delete_key_signing_key
            Aws::Route53::Endpoints::DeleteKeySigningKey.build(context)
          when :delete_query_logging_config
            Aws::Route53::Endpoints::DeleteQueryLoggingConfig.build(context)
          when :delete_reusable_delegation_set
            Aws::Route53::Endpoints::DeleteReusableDelegationSet.build(context)
          when :delete_traffic_policy
            Aws::Route53::Endpoints::DeleteTrafficPolicy.build(context)
          when :delete_traffic_policy_instance
            Aws::Route53::Endpoints::DeleteTrafficPolicyInstance.build(context)
          when :delete_vpc_association_authorization
            Aws::Route53::Endpoints::DeleteVPCAssociationAuthorization.build(context)
          when :disable_hosted_zone_dnssec
            Aws::Route53::Endpoints::DisableHostedZoneDNSSEC.build(context)
          when :disassociate_vpc_from_hosted_zone
            Aws::Route53::Endpoints::DisassociateVPCFromHostedZone.build(context)
          when :enable_hosted_zone_dnssec
            Aws::Route53::Endpoints::EnableHostedZoneDNSSEC.build(context)
          when :get_account_limit
            Aws::Route53::Endpoints::GetAccountLimit.build(context)
          when :get_change
            Aws::Route53::Endpoints::GetChange.build(context)
          when :get_checker_ip_ranges
            Aws::Route53::Endpoints::GetCheckerIpRanges.build(context)
          when :get_dnssec
            Aws::Route53::Endpoints::GetDNSSEC.build(context)
          when :get_geo_location
            Aws::Route53::Endpoints::GetGeoLocation.build(context)
          when :get_health_check
            Aws::Route53::Endpoints::GetHealthCheck.build(context)
          when :get_health_check_count
            Aws::Route53::Endpoints::GetHealthCheckCount.build(context)
          when :get_health_check_last_failure_reason
            Aws::Route53::Endpoints::GetHealthCheckLastFailureReason.build(context)
          when :get_health_check_status
            Aws::Route53::Endpoints::GetHealthCheckStatus.build(context)
          when :get_hosted_zone
            Aws::Route53::Endpoints::GetHostedZone.build(context)
          when :get_hosted_zone_count
            Aws::Route53::Endpoints::GetHostedZoneCount.build(context)
          when :get_hosted_zone_limit
            Aws::Route53::Endpoints::GetHostedZoneLimit.build(context)
          when :get_query_logging_config
            Aws::Route53::Endpoints::GetQueryLoggingConfig.build(context)
          when :get_reusable_delegation_set
            Aws::Route53::Endpoints::GetReusableDelegationSet.build(context)
          when :get_reusable_delegation_set_limit
            Aws::Route53::Endpoints::GetReusableDelegationSetLimit.build(context)
          when :get_traffic_policy
            Aws::Route53::Endpoints::GetTrafficPolicy.build(context)
          when :get_traffic_policy_instance
            Aws::Route53::Endpoints::GetTrafficPolicyInstance.build(context)
          when :get_traffic_policy_instance_count
            Aws::Route53::Endpoints::GetTrafficPolicyInstanceCount.build(context)
          when :list_cidr_blocks
            Aws::Route53::Endpoints::ListCidrBlocks.build(context)
          when :list_cidr_collections
            Aws::Route53::Endpoints::ListCidrCollections.build(context)
          when :list_cidr_locations
            Aws::Route53::Endpoints::ListCidrLocations.build(context)
          when :list_geo_locations
            Aws::Route53::Endpoints::ListGeoLocations.build(context)
          when :list_health_checks
            Aws::Route53::Endpoints::ListHealthChecks.build(context)
          when :list_hosted_zones
            Aws::Route53::Endpoints::ListHostedZones.build(context)
          when :list_hosted_zones_by_name
            Aws::Route53::Endpoints::ListHostedZonesByName.build(context)
          when :list_hosted_zones_by_vpc
            Aws::Route53::Endpoints::ListHostedZonesByVPC.build(context)
          when :list_query_logging_configs
            Aws::Route53::Endpoints::ListQueryLoggingConfigs.build(context)
          when :list_resource_record_sets
            Aws::Route53::Endpoints::ListResourceRecordSets.build(context)
          when :list_reusable_delegation_sets
            Aws::Route53::Endpoints::ListReusableDelegationSets.build(context)
          when :list_tags_for_resource
            Aws::Route53::Endpoints::ListTagsForResource.build(context)
          when :list_tags_for_resources
            Aws::Route53::Endpoints::ListTagsForResources.build(context)
          when :list_traffic_policies
            Aws::Route53::Endpoints::ListTrafficPolicies.build(context)
          when :list_traffic_policy_instances
            Aws::Route53::Endpoints::ListTrafficPolicyInstances.build(context)
          when :list_traffic_policy_instances_by_hosted_zone
            Aws::Route53::Endpoints::ListTrafficPolicyInstancesByHostedZone.build(context)
          when :list_traffic_policy_instances_by_policy
            Aws::Route53::Endpoints::ListTrafficPolicyInstancesByPolicy.build(context)
          when :list_traffic_policy_versions
            Aws::Route53::Endpoints::ListTrafficPolicyVersions.build(context)
          when :list_vpc_association_authorizations
            Aws::Route53::Endpoints::ListVPCAssociationAuthorizations.build(context)
          when :test_dns_answer
            Aws::Route53::Endpoints::TestDNSAnswer.build(context)
          when :update_health_check
            Aws::Route53::Endpoints::UpdateHealthCheck.build(context)
          when :update_hosted_zone_comment
            Aws::Route53::Endpoints::UpdateHostedZoneComment.build(context)
          when :update_traffic_policy_comment
            Aws::Route53::Endpoints::UpdateTrafficPolicyComment.build(context)
          when :update_traffic_policy_instance
            Aws::Route53::Endpoints::UpdateTrafficPolicyInstance.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
