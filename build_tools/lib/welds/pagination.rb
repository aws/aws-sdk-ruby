# frozen_string_literal: true

module BuildTools
  module Welds
    # Pagination customizations for operations where Smithy's @paginated trait
    # cannot express the full pagination contract. Covers two cases:
    # 1. Boolean termination guards (e.g., IsTruncated): injected into generated paginators
    # 2. Missing @paginated trait: injected into the model before codegen
    # Handwritten paginators for complex cases (compound cursors, expression tokens)
    # live in their respective service welds.
    class Pagination < Smithy::Weld
      # Operations that have @paginated in Smithy but need a more_results
      # boolean guard. Keyed by sdkId, value is a hash of operation name
      # to the underscored response field that signals more results.
      MORE_RESULTS = {
        'Data Pipeline' => {
          'DescribeObjects' => 'has_more_results',
          'ListPipelines' => 'has_more_results',
          'QueryObjects' => 'has_more_results'
        },
        'EC2' => {
          'SearchTransitGatewayRoutes' => 'additional_routes_available'
        },
        'IAM' => {
          'GetAccountAuthorizationDetails' => 'is_truncated',
          'GetGroup' => 'is_truncated',
          'ListAccessKeys' => 'is_truncated',
          'ListAccountAliases' => 'is_truncated',
          'ListAttachedGroupPolicies' => 'is_truncated',
          'ListAttachedRolePolicies' => 'is_truncated',
          'ListAttachedUserPolicies' => 'is_truncated',
          'ListEntitiesForPolicy' => 'is_truncated',
          'ListGroupPolicies' => 'is_truncated',
          'ListGroups' => 'is_truncated',
          'ListGroupsForUser' => 'is_truncated',
          'ListInstanceProfileTags' => 'is_truncated',
          'ListInstanceProfiles' => 'is_truncated',
          'ListInstanceProfilesForRole' => 'is_truncated',
          'ListMFADeviceTags' => 'is_truncated',
          'ListMFADevices' => 'is_truncated',
          'ListOpenIDConnectProviderTags' => 'is_truncated',
          'ListPolicies' => 'is_truncated',
          'ListPolicyTags' => 'is_truncated',
          'ListPolicyVersions' => 'is_truncated',
          'ListRolePolicies' => 'is_truncated',
          'ListRoleTags' => 'is_truncated',
          'ListRoles' => 'is_truncated',
          'ListSAMLProviderTags' => 'is_truncated',
          'ListSSHPublicKeys' => 'is_truncated',
          'ListServerCertificateTags' => 'is_truncated',
          'ListServerCertificates' => 'is_truncated',
          'ListSigningCertificates' => 'is_truncated',
          'ListUserPolicies' => 'is_truncated',
          'ListUserTags' => 'is_truncated',
          'ListUsers' => 'is_truncated',
          'ListVirtualMFADevices' => 'is_truncated',
          'SimulateCustomPolicy' => 'is_truncated',
          'SimulatePrincipalPolicy' => 'is_truncated'
        },
        'Kinesis' => {
          'ListStreams' => 'has_more_streams'
        },
        'KMS' => {
          'DescribeCustomKeyStores' => 'truncated',
          'ListAliases' => 'truncated',
          'ListGrants' => 'truncated',
          'ListKeyPolicies' => 'truncated',
          'ListKeyRotations' => 'truncated',
          'ListKeys' => 'truncated',
          'ListResourceTags' => 'truncated',
          'ListRetirableGrants' => 'truncated'
        },
        'RDS' => {
          'DownloadDBLogFilePortion' => 'additional_data_pending'
        },
        'Route 53' => {
          'ListHealthChecks' => 'is_truncated',
          'ListHostedZones' => 'is_truncated'
        },
        'S3' => {
          'ListParts' => 'is_truncated'
        }
      }.freeze

      # Operations that are expressible in Smithy but simply not modeled
      # with @paginated yet. These get the trait injected to model via pre_process.
      # TODO: Remove entries once upstream Smithy models are updated.
      UNMODELED_PAGINATORS = {
        'AmplifyBackend' => {
          'ListBackendJobs' => {
            'inputToken' => 'NextToken',
            'outputToken' => 'NextToken',
            'pageSize' => 'MaxResults',
            'items' => 'Jobs'
          }
        },
        'ApiGatewayV2' => {
          'ListPortals' => {
            'inputToken' => 'NextToken',
            'outputToken' => 'NextToken',
            'pageSize' => 'MaxResults',
            'items' => 'Items'
          },
          'ListPortalProducts' => {
            'inputToken' => 'NextToken',
            'outputToken' => 'NextToken',
            'pageSize' => 'MaxResults',
            'items' => 'Items'
          },
          'ListProductPages' => {
            'inputToken' => 'NextToken',
            'outputToken' => 'NextToken',
            'pageSize' => 'MaxResults',
            'items' => 'Items'
          },
          'ListProductRestEndpointPages' => {
            'inputToken' => 'NextToken',
            'outputToken' => 'NextToken',
            'pageSize' => 'MaxResults',
            'items' => 'Items'
          }
        }
      }.freeze

      PAGINATION_WELD_SERVICES = (MORE_RESULTS.keys + UNMODELED_PAGINATORS.keys).to_set.freeze

      def for?(service)
        _id, svc = service.first
        sdk_id = svc.dig('traits', 'aws.api#service', 'sdkId')
        return false unless PAGINATION_WELD_SERVICES.include?(sdk_id)

        say_status :insert, 'Adding pagination customizations', @plan.quiet
        true
      end

      def pre_process(model)
        sdk_id = resolve_sdk_id(model)
        omissions = UNMODELED_PAGINATORS[sdk_id]
        return model unless omissions

        model['shapes'].each do |shape_id, shape|
          next unless shape['type'] == 'operation'

          operation_name = shape_id.split('#').last
          trait_def = omissions[operation_name]
          next unless trait_def

          shape['traits'] ||= {}
          # Guard: don't override if trait already exists (model was updated upstream)
          next if shape['traits'].key?('smithy.api#paginated')

          shape['traits']['smithy.api#paginated'] = trait_def
        end

        model
      end

      def post_process(artifacts)
        sdk_id = resolve_sdk_id_from_plan
        operations = MORE_RESULTS[sdk_id]
        return artifacts unless operations

        paginators_file = artifacts.find { |a| a.end_with?('/paginators.rb') }
        return artifacts unless paginators_file

        operations.each do |operation_name, field|
          inject_more_results_guard(paginators_file, operation_name, field)
        end

        artifacts
      end

      private

      def resolve_sdk_id(model)
        _id, service = model['shapes'].find { |_k, v| v['type'] == 'service' }
        service&.dig('traits', 'aws.api#service', 'sdkId')
      end

      def resolve_sdk_id_from_plan
        service = @plan.model['shapes'].find { |_k, v| v['type'] == 'service' }
        return nil unless service

        service[1].dig('traits', 'aws.api#service', 'sdkId')
      end

      def inject_more_results_guard(file, operation_name, field)
        guard = "        return {} unless data.#{field}\n\n"
        anchor = "    class #{operation_name}\n      def next_tokens(data)\n"
        insert_into_file(file, guard, after: anchor, force: true)
      end
    end
  end
end
