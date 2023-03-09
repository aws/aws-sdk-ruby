# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::CodeArtifact
  module Plugins
    class Endpoints < Seahorse::Client::Plugin
      option(
        :endpoint_provider,
        doc_type: 'Aws::CodeArtifact::EndpointProvider',
        docstring: 'The endpoint provider used to resolve endpoints. Any '\
                   'object that responds to `#resolve_endpoint(parameters)` '\
                   'where `parameters` is a Struct similar to '\
                   '`Aws::CodeArtifact::EndpointParameters`'
      ) do |cfg|
        Aws::CodeArtifact::EndpointProvider.new
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
          when :associate_external_connection
            Aws::CodeArtifact::Endpoints::AssociateExternalConnection.build(context)
          when :copy_package_versions
            Aws::CodeArtifact::Endpoints::CopyPackageVersions.build(context)
          when :create_domain
            Aws::CodeArtifact::Endpoints::CreateDomain.build(context)
          when :create_repository
            Aws::CodeArtifact::Endpoints::CreateRepository.build(context)
          when :delete_domain
            Aws::CodeArtifact::Endpoints::DeleteDomain.build(context)
          when :delete_domain_permissions_policy
            Aws::CodeArtifact::Endpoints::DeleteDomainPermissionsPolicy.build(context)
          when :delete_package
            Aws::CodeArtifact::Endpoints::DeletePackage.build(context)
          when :delete_package_versions
            Aws::CodeArtifact::Endpoints::DeletePackageVersions.build(context)
          when :delete_repository
            Aws::CodeArtifact::Endpoints::DeleteRepository.build(context)
          when :delete_repository_permissions_policy
            Aws::CodeArtifact::Endpoints::DeleteRepositoryPermissionsPolicy.build(context)
          when :describe_domain
            Aws::CodeArtifact::Endpoints::DescribeDomain.build(context)
          when :describe_package
            Aws::CodeArtifact::Endpoints::DescribePackage.build(context)
          when :describe_package_version
            Aws::CodeArtifact::Endpoints::DescribePackageVersion.build(context)
          when :describe_repository
            Aws::CodeArtifact::Endpoints::DescribeRepository.build(context)
          when :disassociate_external_connection
            Aws::CodeArtifact::Endpoints::DisassociateExternalConnection.build(context)
          when :dispose_package_versions
            Aws::CodeArtifact::Endpoints::DisposePackageVersions.build(context)
          when :get_authorization_token
            Aws::CodeArtifact::Endpoints::GetAuthorizationToken.build(context)
          when :get_domain_permissions_policy
            Aws::CodeArtifact::Endpoints::GetDomainPermissionsPolicy.build(context)
          when :get_package_version_asset
            Aws::CodeArtifact::Endpoints::GetPackageVersionAsset.build(context)
          when :get_package_version_readme
            Aws::CodeArtifact::Endpoints::GetPackageVersionReadme.build(context)
          when :get_repository_endpoint
            Aws::CodeArtifact::Endpoints::GetRepositoryEndpoint.build(context)
          when :get_repository_permissions_policy
            Aws::CodeArtifact::Endpoints::GetRepositoryPermissionsPolicy.build(context)
          when :list_domains
            Aws::CodeArtifact::Endpoints::ListDomains.build(context)
          when :list_package_version_assets
            Aws::CodeArtifact::Endpoints::ListPackageVersionAssets.build(context)
          when :list_package_version_dependencies
            Aws::CodeArtifact::Endpoints::ListPackageVersionDependencies.build(context)
          when :list_package_versions
            Aws::CodeArtifact::Endpoints::ListPackageVersions.build(context)
          when :list_packages
            Aws::CodeArtifact::Endpoints::ListPackages.build(context)
          when :list_repositories
            Aws::CodeArtifact::Endpoints::ListRepositories.build(context)
          when :list_repositories_in_domain
            Aws::CodeArtifact::Endpoints::ListRepositoriesInDomain.build(context)
          when :list_tags_for_resource
            Aws::CodeArtifact::Endpoints::ListTagsForResource.build(context)
          when :publish_package_version
            Aws::CodeArtifact::Endpoints::PublishPackageVersion.build(context)
          when :put_domain_permissions_policy
            Aws::CodeArtifact::Endpoints::PutDomainPermissionsPolicy.build(context)
          when :put_package_origin_configuration
            Aws::CodeArtifact::Endpoints::PutPackageOriginConfiguration.build(context)
          when :put_repository_permissions_policy
            Aws::CodeArtifact::Endpoints::PutRepositoryPermissionsPolicy.build(context)
          when :tag_resource
            Aws::CodeArtifact::Endpoints::TagResource.build(context)
          when :untag_resource
            Aws::CodeArtifact::Endpoints::UntagResource.build(context)
          when :update_package_versions_status
            Aws::CodeArtifact::Endpoints::UpdatePackageVersionsStatus.build(context)
          when :update_repository
            Aws::CodeArtifact::Endpoints::UpdateRepository.build(context)
          end
        end
      end

      def add_handlers(handlers, _config)
        handlers.add(Handler, step: :build, priority: 75)
      end
    end
  end
end
