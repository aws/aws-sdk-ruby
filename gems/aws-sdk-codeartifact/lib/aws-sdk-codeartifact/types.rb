# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeArtifact
  module Types

    # The operation did not succeed because of an unauthorized access
    # attempt.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains details about a package version asset.
    #
    # @!attribute [rw] name
    #   The name of the asset.
    #   @return [String]
    #
    # @!attribute [rw] size
    #   The size of the asset.
    #   @return [Integer]
    #
    # @!attribute [rw] hashes
    #   The hashes of the asset.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/AssetSummary AWS API Documentation
    #
    class AssetSummary < Struct.new(
      :name,
      :size,
      :hashes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository to which the external connection is
    #   added.
    #   @return [String]
    #
    # @!attribute [rw] external_connection
    #   The name of the external connection to add to the repository. The
    #   following values are supported:
    #
    #   * `public:npmjs` - for the npm public repository.
    #
    #   * `public:nuget-org` - for the NuGet Gallery.
    #
    #   * `public:pypi` - for the Python Package Index.
    #
    #   * `public:maven-central` - for Maven Central.
    #
    #   * `public:maven-googleandroid` - for the Google Android repository.
    #
    #   * `public:maven-gradleplugins` - for the Gradle plugins repository.
    #
    #   * `public:maven-commonsware` - for the CommonsWare Android
    #     repository.
    #
    #   * `public:maven-clojars` - for the Clojars repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/AssociateExternalConnectionRequest AWS API Documentation
    #
    class AssociateExternalConnectionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   Information about the connected repository after processing the
    #   request.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/AssociateExternalConnectionResult AWS API Documentation
    #
    class AssociateExternalConnectionResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because prerequisites are not met.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the source and destination
    #   repositories.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] source_repository
    #   The name of the repository that contains the package versions to be
    #   copied.
    #   @return [String]
    #
    # @!attribute [rw] destination_repository
    #   The name of the repository into which package versions are copied.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package versions to be copied.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package versions to be copied. The package
    #   version component that specifies its namespace depends on its type.
    #   For example:
    #
    #   * The namespace of a Maven package version is its `groupId`. The
    #     namespace is required when copying Maven package versions.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the versions to be copied.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The versions of the package to be copied.
    #
    #   <note markdown="1"> You must specify `versions` or `versionRevisions`. You cannot
    #   specify both.
    #
    #    </note>
    #   @return [Array<String>]
    #
    # @!attribute [rw] version_revisions
    #   A list of key-value pairs. The keys are package versions and the
    #   values are package version revisions. A `CopyPackageVersion`
    #   operation succeeds if the specified versions in the source
    #   repository match the specified package version revision.
    #
    #   <note markdown="1"> You must specify `versions` or `versionRevisions`. You cannot
    #   specify both.
    #
    #    </note>
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] allow_overwrite
    #   Set to true to overwrite a package version that already exists in
    #   the destination repository. If set to false and the package version
    #   already exists in the destination repository, the package version is
    #   returned in the `failedVersions` field of the response with an
    #   `ALREADY_EXISTS` error code.
    #   @return [Boolean]
    #
    # @!attribute [rw] include_from_upstream
    #   Set to true to copy packages from repositories that are upstream
    #   from the source repository to the destination repository. The
    #   default setting is false. For more information, see [Working with
    #   upstream repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CopyPackageVersionsRequest AWS API Documentation
    #
    class CopyPackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :source_repository,
      :destination_repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :allow_overwrite,
      :include_from_upstream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_versions
    #   A list of the package versions that were successfully copied to your
    #   repository.
    #   @return [Hash<String,Types::SuccessfulPackageVersionInfo>]
    #
    # @!attribute [rw] failed_versions
    #   A map of package versions that failed to copy and their error codes.
    #   The possible error codes are in the `PackageVersionError` data type.
    #   They are:
    #
    #   * `ALREADY_EXISTS`
    #
    #   * `MISMATCHED_REVISION`
    #
    #   * `MISMATCHED_STATUS`
    #
    #   * `NOT_ALLOWED`
    #
    #   * `NOT_FOUND`
    #
    #   * `SKIPPED`
    #   @return [Hash<String,Types::PackageVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CopyPackageVersionsResult AWS API Documentation
    #
    class CopyPackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain to create. All domain names in an Amazon Web
    #   Services Region that are in the same Amazon Web Services account
    #   must be unique. The domain name is used as the prefix in DNS
    #   hostnames. Do not use sensitive information in a domain name because
    #   it is publicly discoverable.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the domain. This is used to encrypt content
    #   stored in a domain. An encryption key can be a key ID, a key Amazon
    #   Resource Name (ARN), a key alias, or a key alias ARN. To specify an
    #   `encryptionKey`, your IAM role must have `kms:DescribeKey` and
    #   `kms:CreateGrant` permissions on the encryption key that is used.
    #   For more information, see [DescribeKey][1] in the *Key Management
    #   Service API Reference* and [Key Management Service API Permissions
    #   Reference][2] in the *Key Management Service Developer Guide*.
    #
    #   CodeArtifact supports only symmetric CMKs. Do not associate an
    #   asymmetric CMK with your domain. For more information, see [Using
    #   symmetric and asymmetric keys][3] in the *Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more tag key-value pairs for the domain.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain,
      :encryption_key,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Contains information about the created domain after processing the
    #   request.
    #   @return [Types::DomainDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateDomainResult AWS API Documentation
    #
    class CreateDomainResult < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the created repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository to create.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the created repository.
    #   @return [String]
    #
    # @!attribute [rw] upstreams
    #   A list of upstream repositories to associate with the repository.
    #   The order of the upstream repositories in the list determines their
    #   priority order when CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #   @return [Array<Types::UpstreamRepository>]
    #
    # @!attribute [rw] tags
    #   One or more tag key-value pairs for the repository.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateRepositoryRequest AWS API Documentation
    #
    class CreateRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   Information about the created repository after processing the
    #   request.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateRepositoryResult AWS API Documentation
    #
    class CreateRepositoryResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain associated with the resource policy to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision
    #   The current revision of the resource policy to be deleted. This
    #   revision is used for optimistic locking, which prevents others from
    #   overwriting your changes to the domain's resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomainPermissionsPolicyRequest AWS API Documentation
    #
    class DeleteDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :policy_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Information about the deleted resource policy after processing the
    #   request.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomainPermissionsPolicyResult AWS API Documentation
    #
    class DeleteDomainPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomainRequest AWS API Documentation
    #
    class DeleteDomainRequest < Struct.new(
      :domain,
      :domain_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Contains information about the deleted domain after processing the
    #   request.
    #   @return [Types::DomainDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteDomainResult AWS API Documentation
    #
    class DeleteDomainResult < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the package to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package to delete.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the requested package to delete.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package to delete. The package component that
    #   specifies its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`. The namespace
    #     is required when deleting Maven package versions.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain corresponding components,
    #     packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageRequest AWS API Documentation
    #
    class DeletePackageRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] deleted_package
    #   Details about a package, including its format, namespace, and name.
    #   @return [Types::PackageSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageResult AWS API Documentation
    #
    class DeletePackageResult < Struct.new(
      :deleted_package)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the package to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package versions to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package versions to delete.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package versions to be deleted. The package
    #   version component that specifies its namespace depends on its type.
    #   For example:
    #
    #   * The namespace of a Maven package version is its `groupId`. The
    #     namespace is required when deleting Maven package versions.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package with the versions to delete.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   An array of strings that specify the versions of the package to
    #   delete.
    #   @return [Array<String>]
    #
    # @!attribute [rw] expected_status
    #   The expected status of the package version to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageVersionsRequest AWS API Documentation
    #
    class DeletePackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :expected_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_versions
    #   A list of the package versions that were successfully deleted. The
    #   status of every successful version will be `Deleted`.
    #   @return [Hash<String,Types::SuccessfulPackageVersionInfo>]
    #
    # @!attribute [rw] failed_versions
    #   A `PackageVersionError` object that contains a map of errors codes
    #   for the deleted package that failed. The possible error codes are:
    #
    #   * `ALREADY_EXISTS`
    #
    #   * `MISMATCHED_REVISION`
    #
    #   * `MISMATCHED_STATUS`
    #
    #   * `NOT_ALLOWED`
    #
    #   * `NOT_FOUND`
    #
    #   * `SKIPPED`
    #   @return [Hash<String,Types::PackageVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeletePackageVersionsResult AWS API Documentation
    #
    class DeletePackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository associated with
    #   the resource policy to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that is associated with the resource
    #   policy to be deleted
    #   @return [String]
    #
    # @!attribute [rw] policy_revision
    #   The revision of the repository's resource policy to be deleted.
    #   This revision is used for optimistic locking, which prevents others
    #   from accidentally overwriting your changes to the repository's
    #   resource policy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepositoryPermissionsPolicyRequest AWS API Documentation
    #
    class DeleteRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   Information about the deleted policy after processing the request.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepositoryPermissionsPolicyResult AWS API Documentation
    #
    class DeleteRepositoryPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepositoryRequest AWS API Documentation
    #
    class DeleteRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   Information about the deleted repository after processing the
    #   request.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DeleteRepositoryResult AWS API Documentation
    #
    class DeleteRepositoryResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   A string that specifies the name of the requested domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeDomainRequest AWS API Documentation
    #
    class DescribeDomainRequest < Struct.new(
      :domain,
      :domain_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   Information about a domain. A domain is a container for
    #   repositories. When you create a domain, it is empty until you add
    #   one or more repositories.
    #   @return [Types::DomainDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeDomainResult AWS API Documentation
    #
    class DescribeDomainResult < Struct.new(
      :domain)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the requested package.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the requested package.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the requested package. The package component that
    #   specifies its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`. The namespace
    #     is required when requesting Maven packages.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the requested package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageRequest AWS API Documentation
    #
    class DescribePackageRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package
    #   A [PackageDescription][1] object that contains information about the
    #   requested package.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html
    #   @return [Types::PackageDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageResult AWS API Documentation
    #
    class DescribePackageResult < Struct.new(
      :package)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the requested package version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the requested package version. The package version
    #   component that specifies its namespace depends on its type. For
    #   example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the requested package version.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageVersionRequest AWS API Documentation
    #
    class DescribePackageVersionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] package_version
    #   A [PackageVersionDescription][1] object that contains information
    #   about the requested package version.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html
    #   @return [Types::PackageVersionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageVersionResult AWS API Documentation
    #
    class DescribePackageVersionResult < Struct.new(
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository to describe.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   A string that specifies the name of the requested repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeRepositoryRequest AWS API Documentation
    #
    class DescribeRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   A `RepositoryDescription` object that contains the requested
    #   repository information.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribeRepositoryResult AWS API Documentation
    #
    class DescribeRepositoryResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository from which to
    #   remove the external repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository from which the external connection will
    #   be removed.
    #   @return [String]
    #
    # @!attribute [rw] external_connection
    #   The name of the external connection to be removed from the
    #   repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisassociateExternalConnectionRequest AWS API Documentation
    #
    class DisassociateExternalConnectionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The repository associated with the removed external connection.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisassociateExternalConnectionResult AWS API Documentation
    #
    class DisassociateExternalConnectionResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository you want to
    #   dispose.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package versions you
    #   want to dispose.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of package versions you want to
    #   dispose.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package versions to be disposed. The package
    #   version component that specifies its namespace depends on its type.
    #   For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package with the versions you want to dispose.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The versions of the package you want to dispose.
    #   @return [Array<String>]
    #
    # @!attribute [rw] version_revisions
    #   The revisions of the package versions you want to dispose.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expected_status
    #   The expected status of the package version to dispose.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisposePackageVersionsRequest AWS API Documentation
    #
    class DisposePackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :expected_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_versions
    #   A list of the package versions that were successfully disposed.
    #   @return [Hash<String,Types::SuccessfulPackageVersionInfo>]
    #
    # @!attribute [rw] failed_versions
    #   A `PackageVersionError` object that contains a map of errors codes
    #   for the disposed package versions that failed. The possible error
    #   codes are:
    #
    #   * `ALREADY_EXISTS`
    #
    #   * `MISMATCHED_REVISION`
    #
    #   * `MISMATCHED_STATUS`
    #
    #   * `NOT_ALLOWED`
    #
    #   * `NOT_FOUND`
    #
    #   * `SKIPPED`
    #   @return [Hash<String,Types::PackageVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DisposePackageVersionsResult AWS API Documentation
    #
    class DisposePackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a domain. A domain is a container for repositories.
    # When you create a domain, it is empty until you add one or more
    # repositories.
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The Amazon Web Services account ID that owns the domain.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of a domain.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that represents the date and time the domain was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_key
    #   The ARN of an Key Management Service (KMS) key associated with a
    #   domain.
    #   @return [String]
    #
    # @!attribute [rw] repository_count
    #   The number of repositories in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] asset_size_bytes
    #   The total size of all assets in the domain.
    #   @return [Integer]
    #
    # @!attribute [rw] s3_bucket_arn
    #   The Amazon Resource Name (ARN) of the Amazon S3 bucket that is used
    #   to store package assets in the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DomainDescription AWS API Documentation
    #
    class DomainDescription < Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key,
      :repository_count,
      :asset_size_bytes,
      :s3_bucket_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how a package originally entered the CodeArtifact
    # domain. For packages published directly to CodeArtifact, the entry
    # point is the repository it was published to. For packages ingested
    # from an external repository, the entry point is the external
    # connection that it was ingested from. An external connection is a
    # CodeArtifact repository that is connected to an external repository
    # such as the npm registry or NuGet gallery.
    #
    # @!attribute [rw] repository_name
    #   The name of the repository that a package was originally published
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] external_connection_name
    #   The name of the external connection that a package was ingested
    #   from.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DomainEntryPoint AWS API Documentation
    #
    class DomainEntryPoint < Struct.new(
      :repository_name,
      :external_connection_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a domain, including its name, Amazon Resource Name
    # (ARN), and status. The [ListDomains][1] operation returns a list of
    # `DomainSummary` objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html
    #
    # @!attribute [rw] name
    #   The name of the domain.
    #   @return [String]
    #
    # @!attribute [rw] owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that contains the status of the domain.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that contains the date and time the domain was created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_key
    #   The key used to encrypt the domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DomainSummary AWS API Documentation
    #
    class DomainSummary < Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that is in scope for the generated
    #   authorization token.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The time, in seconds, that the generated authorization token is
    #   valid. Valid values are `0` and any number between `900` (15
    #   minutes) and `43200` (12 hours). A value of `0` will set the
    #   expiration of the authorization token to the same expiration of the
    #   user's role's temporary credentials.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetAuthorizationTokenRequest AWS API Documentation
    #
    class GetAuthorizationTokenRequest < Struct.new(
      :domain,
      :domain_owner,
      :duration_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] authorization_token
    #   The returned authentication token.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   A timestamp that specifies the date and time the authorization token
    #   expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetAuthorizationTokenResult AWS API Documentation
    #
    class GetAuthorizationTokenResult < Struct.new(
      :authorization_token,
      :expiration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain to which the resource policy is attached.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetDomainPermissionsPolicyRequest AWS API Documentation
    #
    class GetDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The returned resource policy.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetDomainPermissionsPolicyResult AWS API Documentation
    #
    class GetDomainPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version with the requested asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package version with the requested
    #   asset.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package version with the
    #   requested asset file.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version with the requested asset file.
    #   The package version component that specifies its namespace depends
    #   on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the requested asset.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @!attribute [rw] asset
    #   The name of the requested asset.
    #   @return [String]
    #
    # @!attribute [rw] package_version_revision
    #   The name of the package version revision that contains the requested
    #   asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionAssetRequest AWS API Documentation
    #
    class GetPackageVersionAssetRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :asset,
      :package_version_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] asset
    #   The binary file, or asset, that is downloaded.
    #   @return [IO]
    #
    # @!attribute [rw] asset_name
    #   The name of the asset that is downloaded.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @!attribute [rw] package_version_revision
    #   The name of the package version revision that contains the
    #   downloaded asset.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionAssetResult AWS API Documentation
    #
    class GetPackageVersionAssetResult < Struct.new(
      :asset,
      :asset_name,
      :package_version,
      :package_version_revision)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version with the requested readme file.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package with the requested readme
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package version with the
    #   requested readme file.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version with the requested readme file.
    #   The package version component that specifies its namespace depends
    #   on its type. For example:
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package version that contains the requested readme
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionReadmeRequest AWS API Documentation
    #
    class GetPackageVersionReadmeRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format
    #   The format of the package with the requested readme file.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version with the requested readme file.
    #   The package version component that specifies its namespace depends
    #   on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the returned readme file.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package with the requested readme file.
    #   @return [String]
    #
    # @!attribute [rw] version_revision
    #   The current revision associated with the package version.
    #   @return [String]
    #
    # @!attribute [rw] readme
    #   The text of the returned readme file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetPackageVersionReadmeResult AWS API Documentation
    #
    class GetPackageVersionReadmeResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :readme)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain that contains the repository. It does not include
    #   dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Returns which endpoint of a repository to return. A repository has
    #   one endpoint for each package format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryEndpointRequest AWS API Documentation
    #
    class GetRepositoryEndpointRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_endpoint
    #   A string that specifies the URL of the returned endpoint.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryEndpointResult AWS API Documentation
    #
    class GetRepositoryEndpointResult < Struct.new(
      :repository_endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain containing the repository whose associated
    #   resource policy is to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository whose associated resource policy is to be
    #   retrieved.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryPermissionsPolicyRequest AWS API Documentation
    #
    class GetRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The returned resource policy.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/GetRepositoryPermissionsPolicyResult AWS API Documentation
    #
    class GetRepositoryPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because of an error that occurred inside
    # CodeArtifact.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details of the license data.
    #
    # @!attribute [rw] name
    #   Name of the license.
    #   @return [String]
    #
    # @!attribute [rw] url
    #   The URL for license data.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/LicenseInfo AWS API Documentation
    #
    class LicenseInfo < Struct.new(
      :name,
      :url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   The returned list of [DomainSummary][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html
    #   @return [Array<Types::DomainSummary>]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListDomainsResult AWS API Documentation
    #
    class ListDomainsResult < Struct.new(
      :domains,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository associated with
    #   the package version assets.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package that contains
    #   the requested package version assets.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package that contains the requested package
    #   version assets.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version that contains the requested
    #   package version assets. The package version component that specifies
    #   its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the requested package version
    #   assets.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionAssetsRequest AWS API Documentation
    #
    class ListPackageVersionAssetsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format
    #   The format of the package that contains the requested package
    #   version assets.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version that contains the requested
    #   package version assets. The package version component that specifies
    #   its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the requested package version
    #   assets.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package associated with the requested assets.
    #   @return [String]
    #
    # @!attribute [rw] version_revision
    #   The current revision associated with the package version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @!attribute [rw] assets
    #   The returned list of [AssetSummary][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html
    #   @return [Array<Types::AssetSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionAssetsResult AWS API Documentation
    #
    class ListPackageVersionAssetsResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :assets)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the requested package version dependencies.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the requested package
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package with the requested dependencies.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version with the requested
    #   dependencies. The package version component that specifies its
    #   namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package versions' package.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   A string that contains the package version (for example, `3.5.2`).
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionDependenciesRequest AWS API Documentation
    #
    class ListPackageVersionDependenciesRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format
    #   A format that specifies the type of the package that contains the
    #   returned dependencies.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version that contains the returned
    #   dependencies. The package version component that specifies its
    #   namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the returned package versions
    #   dependencies.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package that is specified in the request.
    #   @return [String]
    #
    # @!attribute [rw] version_revision
    #   The current revision associated with the package version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] dependencies
    #   The returned list of [PackageDependency][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html
    #   @return [Array<Types::PackageDependency>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionDependenciesResult AWS API Documentation
    #
    class ListPackageVersionDependenciesResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :dependencies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the requested package versions.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the requested package
    #   versions.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package versions you want to list.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package that contains the requested package
    #   versions. The package component that specifies its namespace depends
    #   on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package for which you want to request package
    #   versions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that filters the requested package versions by status.
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   How to sort the requested list of package versions.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] origin_type
    #   The `originType` used to filter package versions. Only package
    #   versions with the provided `originType` will be returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionsRequest AWS API Documentation
    #
    class ListPackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :status,
      :sort_by,
      :max_results,
      :next_token,
      :origin_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] default_display_version
    #   The default package version to display. This depends on the package
    #   format:
    #
    #   * For Maven and PyPI packages, it's the most recently published
    #     package version.
    #
    #   * For npm packages, it's the version referenced by the `latest`
    #     tag. If the `latest` tag is not set, it's the most recently
    #     published package version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format of the package.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package that contains the requested package
    #   versions. The package component that specifies its namespace depends
    #   on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The returned list of [PackageVersionSummary][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html
    #   @return [Array<Types::PackageVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackageVersionsResult AWS API Documentation
    #
    class ListPackageVersionsResult < Struct.new(
      :default_display_version,
      :format,
      :namespace,
      :package,
      :versions,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the requested packages.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the requested packages.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format used to filter requested packages. Only packages from the
    #   provided format will be returned.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace prefix used to filter requested packages. Only
    #   packages with a namespace that starts with the provided string value
    #   are returned. Note that although this option is called `--namespace`
    #   and not `--namespace-prefix`, it has prefix-matching behavior.
    #
    #   Each package format uses namespace as follows:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package_prefix
    #   A prefix used to filter requested packages. Only packages with names
    #   that start with `packagePrefix` are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] publish
    #   The value of the `Publish` package origin control restriction used
    #   to filter requested packages. Only packages with the provided
    #   restriction are returned. For more information, see
    #   [PackageOriginRestrictions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #   @return [String]
    #
    # @!attribute [rw] upstream
    #   The value of the `Upstream` package origin control restriction used
    #   to filter requested packages. Only packages with the provided
    #   restriction are returned. For more information, see
    #   [PackageOriginRestrictions][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackagesRequest AWS API Documentation
    #
    class ListPackagesRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package_prefix,
      :max_results,
      :next_token,
      :publish,
      :upstream)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] packages
    #   The list of returned [PackageSummary][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html
    #   @return [Array<Types::PackageSummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListPackagesResult AWS API Documentation
    #
    class ListPackagesResult < Struct.new(
      :packages,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the returned list of
    #   repositories.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] administrator_account
    #   Filter the list of repositories to only include those that are
    #   managed by the Amazon Web Services account ID.
    #   @return [String]
    #
    # @!attribute [rw] repository_prefix
    #   A prefix used to filter returned repositories. Only repositories
    #   with names that start with `repositoryPrefix` are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositoriesInDomainRequest AWS API Documentation
    #
    class ListRepositoriesInDomainRequest < Struct.new(
      :domain,
      :domain_owner,
      :administrator_account,
      :repository_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repositories
    #   The returned list of repositories.
    #   @return [Array<Types::RepositorySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositoriesInDomainResult AWS API Documentation
    #
    class ListRepositoriesInDomainResult < Struct.new(
      :repositories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository_prefix
    #   A prefix used to filter returned repositories. Only repositories
    #   with names that start with `repositoryPrefix` are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return per page.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token for the next set of results. Use the value returned in the
    #   previous response in the next request to retrieve the next set of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositoriesRequest AWS API Documentation
    #
    class ListRepositoriesRequest < Struct.new(
      :repository_prefix,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repositories
    #   The returned list of [RepositorySummary][1] objects.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html
    #   @return [Array<Types::RepositorySummary>]
    #
    # @!attribute [rw] next_token
    #   If there are additional results, this is the token for the next set
    #   of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListRepositoriesResult AWS API Documentation
    #
    class ListRepositoriesResult < Struct.new(
      :repositories,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource to get tags for.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A list of tag key and value pairs associated with the specified
    #   resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package dependency.
    #
    # @!attribute [rw] namespace
    #   The namespace of the package that this package depends on. The
    #   package component that specifies its namespace depends on its type.
    #   For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that this package depends on.
    #   @return [String]
    #
    # @!attribute [rw] dependency_type
    #   The type of a package dependency. The possible values depend on the
    #   package type.
    #
    #   * npm: `regular`, `dev`, `peer`, `optional`
    #
    #   * maven: `optional`, `parent`, `compile`, `runtime`, `test`,
    #     `system`, `provided`.
    #
    #     <note markdown="1"> Note that `parent` is not a regular Maven dependency type; instead
    #     this is extracted from the `<parent>` element if one is defined in
    #     the package version's POM file.
    #
    #      </note>
    #
    #   * nuget: The `dependencyType` field is never set for NuGet packages.
    #
    #   * pypi: `Requires-Dist`
    #   @return [String]
    #
    # @!attribute [rw] version_requirement
    #   The required version, or version range, of the package that this
    #   package depends on. The version format is specific to the package
    #   type. For example, the following are possible valid required
    #   versions: `1.2.3`, `^2.3.4`, or `4.x`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageDependency AWS API Documentation
    #
    class PackageDependency < Struct.new(
      :namespace,
      :package,
      :dependency_type,
      :version_requirement)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package.
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package. The package component that specifies
    #   its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the package.
    #   @return [String]
    #
    # @!attribute [rw] origin_configuration
    #   The package origin configuration for the package.
    #   @return [Types::PackageOriginConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageDescription AWS API Documentation
    #
    class PackageDescription < Struct.new(
      :format,
      :namespace,
      :name,
      :origin_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the package origin configuration of a package.
    #
    # @!attribute [rw] restrictions
    #   A `PackageOriginRestrictions` object that contains information about
    #   the upstream and publish package origin configuration for the
    #   package.
    #   @return [Types::PackageOriginRestrictions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageOriginConfiguration AWS API Documentation
    #
    class PackageOriginConfiguration < Struct.new(
      :restrictions)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the origin restrictions set on the package. The package
    # origin restrictions determine how new versions of a package can be
    # added to a specific repository.
    #
    # @!attribute [rw] publish
    #   The package origin configuration that determines if new versions of
    #   the package can be published directly to the repository.
    #   @return [String]
    #
    # @!attribute [rw] upstream
    #   The package origin configuration that determines if new versions of
    #   the package can be added to the repository from an external
    #   connection or upstream source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageOriginRestrictions AWS API Documentation
    #
    class PackageOriginRestrictions < Struct.new(
      :publish,
      :upstream)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package, including its format, namespace, and name.
    #
    # @!attribute [rw] format
    #   The format of the package.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package. The package component that specifies
    #   its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package.
    #   @return [String]
    #
    # @!attribute [rw] origin_configuration
    #   A [PackageOriginConfiguration][1] object that contains a
    #   [PackageOriginRestrictions][2] object that contains information
    #   about the upstream and publish package origin restrictions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html
    #   [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #   @return [Types::PackageOriginConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageSummary AWS API Documentation
    #
    class PackageSummary < Struct.new(
      :format,
      :namespace,
      :package,
      :origin_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package version.
    #
    # @!attribute [rw] format
    #   The format of the package version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version. The package version component
    #   that specifies its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package_name
    #   The name of the requested package.
    #   @return [String]
    #
    # @!attribute [rw] display_name
    #   The name of the package that is displayed. The `displayName` varies
    #   depending on the package version's format. For example, if an npm
    #   package is named `ui`, is in the namespace `vue`, and has the format
    #   `npm`, then the `displayName` is `@vue/ui`.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package.
    #   @return [String]
    #
    # @!attribute [rw] summary
    #   A summary of the package version. The summary is extracted from the
    #   package. The information in and detail level of the summary depends
    #   on the package version's format.
    #   @return [String]
    #
    # @!attribute [rw] home_page
    #   The homepage associated with the package.
    #   @return [String]
    #
    # @!attribute [rw] source_code_repository
    #   The repository for the source code in the package version, or the
    #   source code used to build it.
    #   @return [String]
    #
    # @!attribute [rw] published_time
    #   A timestamp that contains the date and time the package version was
    #   published.
    #   @return [Time]
    #
    # @!attribute [rw] licenses
    #   Information about licenses associated with the package version.
    #   @return [Array<Types::LicenseInfo>]
    #
    # @!attribute [rw] revision
    #   The revision of the package version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that contains the status of the package version.
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A [PackageVersionOrigin][1] object that contains information about
    #   how the package version was added to the repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html
    #   @return [Types::PackageVersionOrigin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageVersionDescription AWS API Documentation
    #
    class PackageVersionDescription < Struct.new(
      :format,
      :namespace,
      :package_name,
      :display_name,
      :version,
      :summary,
      :home_page,
      :source_code_repository,
      :published_time,
      :licenses,
      :revision,
      :status,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # l An error associated with package.
    #
    # @!attribute [rw] error_code
    #   The error code associated with the error. Valid error codes are:
    #
    #   * `ALREADY_EXISTS`
    #
    #   * `MISMATCHED_REVISION`
    #
    #   * `MISMATCHED_STATUS`
    #
    #   * `NOT_ALLOWED`
    #
    #   * `NOT_FOUND`
    #
    #   * `SKIPPED`
    #   @return [String]
    #
    # @!attribute [rw] error_message
    #   The error message associated with the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageVersionError AWS API Documentation
    #
    class PackageVersionError < Struct.new(
      :error_code,
      :error_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about how a package version was added to a repository.
    #
    # @!attribute [rw] domain_entry_point
    #   A [DomainEntryPoint][1] object that contains information about from
    #   which repository or external connection the package version was
    #   added to the domain.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainEntryPoint.html
    #   @return [Types::DomainEntryPoint]
    #
    # @!attribute [rw] origin_type
    #   Describes how the package version was originally added to the
    #   domain. An `INTERNAL` origin type means the package version was
    #   published directly to a repository in the domain. An `EXTERNAL`
    #   origin type means the package version was ingested from an external
    #   connection.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageVersionOrigin AWS API Documentation
    #
    class PackageVersionOrigin < Struct.new(
      :domain_entry_point,
      :origin_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package version, including its status, version, and
    # revision. The [ListPackageVersions][1] operation returns a list of
    # `PackageVersionSummary` objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html
    #
    # @!attribute [rw] version
    #   Information about a package version.
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The revision associated with a package version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that contains the status of the package version. It can be
    #   one of the following:
    #   @return [String]
    #
    # @!attribute [rw] origin
    #   A [PackageVersionOrigin][1] object that contains information about
    #   how the package version was added to the repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html
    #   @return [Types::PackageVersionOrigin]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageVersionSummary AWS API Documentation
    #
    class PackageVersionSummary < Struct.new(
      :version,
      :revision,
      :status,
      :origin)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version to publish.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that the package version will be
    #   published to.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package version with the
    #   requested asset file.
    #
    #   The only supported value is `generic`.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version to publish.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package version to publish.
    #   @return [String]
    #
    # @!attribute [rw] package_version
    #   The package version to publish (for example, `3.5.2`).
    #   @return [String]
    #
    # @!attribute [rw] asset_content
    #   The content of the asset to publish.
    #   @return [IO]
    #
    # @!attribute [rw] asset_name
    #   The name of the asset to publish. Asset names can include Unicode
    #   letters and numbers, and the following special characters: `` ~ ! @
    #   ^ & ( ) - ` _ + [ ] \{ \} ; , . ` ``
    #   @return [String]
    #
    # @!attribute [rw] asset_sha256
    #   The SHA256 hash of the `assetContent` to publish. This value must be
    #   calculated by the caller and provided with the request (see
    #   [Publishing a generic package][1] in the *CodeArtifact User Guide*).
    #
    #   This value is used as an integrity check to verify that the
    #   `assetContent` has not changed after it was originally sent.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages
    #   @return [String]
    #
    # @!attribute [rw] unfinished
    #   Specifies whether the package version should remain in the
    #   `unfinished` state. If omitted, the package version status will be
    #   set to `Published` (see [Package version status][1] in the
    #   *CodeArtifact User Guide*).
    #
    #   Valid values: `unfinished`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PublishPackageVersionRequest AWS API Documentation
    #
    class PublishPackageVersionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :asset_content,
      :asset_name,
      :asset_sha256,
      :unfinished)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] format
    #   The format of the package version.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package.
    #   @return [String]
    #
    # @!attribute [rw] version_revision
    #   The revision of the package version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that contains the status of the package version. For more
    #   information, see [Package version status][1] in the *CodeArtifact
    #   User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status
    #   @return [String]
    #
    # @!attribute [rw] asset
    #   An [AssetSummary][1] for the published asset.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html
    #   @return [Types::AssetSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PublishPackageVersionResult AWS API Documentation
    #
    class PublishPackageVersionResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :status,
      :asset)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain on which to set the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision
    #   The current revision of the resource policy to be set. This revision
    #   is used for optimistic locking, which prevents others from
    #   overwriting your changes to the domain's resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   A valid displayable JSON Aspen policy string to be set as the access
    #   control resource policy on the provided domain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutDomainPermissionsPolicyRequest AWS API Documentation
    #
    class PutDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :policy_revision,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy that was set after processing the request.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutDomainPermissionsPolicyResult AWS API Documentation
    #
    class PutDomainPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package to be updated.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package to be updated. The package component
    #   that specifies its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * Python and NuGet packages do not contain a corresponding
    #     component, packages of those formats do not have a namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package to be updated.
    #   @return [String]
    #
    # @!attribute [rw] restrictions
    #   A [PackageOriginRestrictions][1] object that contains information
    #   about the `upstream` and `publish` package origin restrictions. The
    #   `upstream` restriction determines if new package versions can be
    #   ingested or retained from external connections or upstream
    #   repositories. The `publish` restriction determines if new package
    #   versions can be published directly to the repository.
    #
    #   You must include both the desired `upstream` and `publish`
    #   restrictions.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #   @return [Types::PackageOriginRestrictions]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutPackageOriginConfigurationRequest AWS API Documentation
    #
    class PutPackageOriginConfigurationRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :restrictions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] origin_configuration
    #   A [PackageOriginConfiguration][1] object that describes the origin
    #   configuration set for the package. It contains a
    #   [PackageOriginRestrictions][2] object that describes how new
    #   versions of the package can be introduced to the repository.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html
    #   [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html
    #   @return [Types::PackageOriginConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutPackageOriginConfigurationResult AWS API Documentation
    #
    class PutPackageOriginConfigurationResult < Struct.new(
      :origin_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain containing the repository to set the resource
    #   policy on.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository to set the resource policy on.
    #   @return [String]
    #
    # @!attribute [rw] policy_revision
    #   Sets the revision of the resource policy that specifies permissions
    #   to access the repository. This revision is used for optimistic
    #   locking, which prevents others from overwriting your changes to the
    #   repository's resource policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   A valid displayable JSON Aspen policy string to be set as the access
    #   control resource policy on the provided repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutRepositoryPermissionsPolicyRequest AWS API Documentation
    #
    class PutRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision,
      :policy_document)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] policy
    #   The resource policy that was set after processing the request.
    #   @return [Types::ResourcePolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PutRepositoryPermissionsPolicyResult AWS API Documentation
    #
    class PutRepositoryPermissionsPolicyResult < Struct.new(
      :policy)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of a repository stored in CodeArtifact. A CodeArtifact
    # repository contains a set of package versions, each of which maps to a
    # set of assets. Repositories are polyglot—a single repository can
    # contain packages of any supported type. Each repository exposes
    # endpoints for fetching and publishing packages using tools like the
    # `npm` CLI, the Maven CLI (`mvn`), and `pip`. You can create up to 100
    # repositories per Amazon Web Services account.
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] administrator_account
    #   The 12-digit account number of the Amazon Web Services account that
    #   manages the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain that contains the repository. It does not include
    #   dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the repository.
    #   @return [String]
    #
    # @!attribute [rw] upstreams
    #   A list of upstream repositories to associate with the repository.
    #   The order of the upstream repositories in the list determines their
    #   priority order when CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #   @return [Array<Types::UpstreamRepositoryInfo>]
    #
    # @!attribute [rw] external_connections
    #   An array of external connections associated with the repository.
    #   @return [Array<Types::RepositoryExternalConnectionInfo>]
    #
    # @!attribute [rw] created_time
    #   A timestamp that represents the date and time the repository was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/RepositoryDescription AWS API Documentation
    #
    class RepositoryDescription < Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      :upstreams,
      :external_connections,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about the external connection of a repository.
    #
    # @!attribute [rw] external_connection_name
    #   The name of the external connection associated with a repository.
    #   @return [String]
    #
    # @!attribute [rw] package_format
    #   The package format associated with a repository's external
    #   connection. The valid package formats are:
    #
    #   * `npm`: A Node Package Manager (npm) package.
    #
    #   * `pypi`: A Python Package Index (PyPI) package.
    #
    #   * `maven`: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
    #
    #   * `nuget`: A NuGet package.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the external connection of a repository. There is one
    #   valid value, `Available`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/RepositoryExternalConnectionInfo AWS API Documentation
    #
    class RepositoryExternalConnectionInfo < Struct.new(
      :external_connection_name,
      :package_format,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a repository, including its Amazon Resource Name (ARN),
    # description, and domain information. The [ListRepositories][1]
    # operation returns a list of `RepositorySummary` objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListRepositories.html
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] administrator_account
    #   The Amazon Web Services account ID that manages the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the repository.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the repository.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that represents the date and time the repository was
    #   created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/RepositorySummary AWS API Documentation
    #
    class RepositorySummary < Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because the resource requested is not
    # found in the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # An CodeArtifact resource policy that contains a resource ARN, document
    # details, and a revision.
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource associated with the resource policy
    #   @return [String]
    #
    # @!attribute [rw] revision
    #   The current revision of the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] document
    #   The resource policy formatted in JSON.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ResourcePolicy AWS API Documentation
    #
    class ResourcePolicy < Struct.new(
      :resource_arn,
      :revision,
      :document)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because it would have exceeded a service
    # limit for your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The ID of the resource.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of Amazon Web Services resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the revision and status of a package version.
    #
    # @!attribute [rw] revision
    #   The revision of a package version.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of a package version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/SuccessfulPackageVersionInfo AWS API Documentation
    #
    class SuccessfulPackageVersionInfo < Struct.new(
      :revision,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # A tag is a key-value pair that can be used to manage, search for, or
    # filter resources in CodeArtifact.
    #
    # @!attribute [rw] key
    #   The tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The tag value.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to add
    #   or update tags for.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags you want to modify or add to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

    # The operation did not succeed because too many requests are sent to
    # the service.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The time period, in seconds, to wait before retrying the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource that you want to
    #   remove tags from.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key for each tag that you want to remove from the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package versions with a status to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package versions with the status
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package with the statuses to
    #   update.
    #   @return [String]
    #
    # @!attribute [rw] namespace
    #   The namespace of the package version to be updated. The package
    #   version component that specifies its namespace depends on its type.
    #   For example:
    #
    #   * The namespace of a Maven package version is its `groupId`.
    #
    #   * The namespace of an npm package version is its `scope`.
    #
    #   * Python and NuGet package versions do not contain a corresponding
    #     component, package versions of those formats do not have a
    #     namespace.
    #
    #   * The namespace of a generic package is its `namespace`.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package with the version statuses to update.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   An array of strings that specify the versions of the package with
    #   the statuses to update.
    #   @return [Array<String>]
    #
    # @!attribute [rw] version_revisions
    #   A map of package versions and package version revisions. The map
    #   `key` is the package version (for example, `3.5.2`), and the map
    #   `value` is the package version revision.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] expected_status
    #   The package version’s expected status before it is updated. If
    #   `expectedStatus` is provided, the package version's status is
    #   updated only if its status at the time `UpdatePackageVersionsStatus`
    #   is called matches `expectedStatus`.
    #   @return [String]
    #
    # @!attribute [rw] target_status
    #   The status you want to change the package version status to.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdatePackageVersionsStatusRequest AWS API Documentation
    #
    class UpdatePackageVersionsStatusRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :expected_status,
      :target_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] successful_versions
    #   A list of `PackageVersionError` objects, one for each package
    #   version with a status that failed to update.
    #   @return [Hash<String,Types::SuccessfulPackageVersionInfo>]
    #
    # @!attribute [rw] failed_versions
    #   A list of `SuccessfulPackageVersionInfo` objects, one for each
    #   package version with a status that successfully updated.
    #   @return [Hash<String,Types::PackageVersionError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdatePackageVersionsStatusResult AWS API Documentation
    #
    class UpdatePackageVersionsStatusResult < Struct.new(
      :successful_versions,
      :failed_versions)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domain
    #   The name of the domain associated with the repository to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the Amazon Web Services account that
    #   owns the domain. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository to update.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   An updated repository description.
    #   @return [String]
    #
    # @!attribute [rw] upstreams
    #   A list of upstream repositories to associate with the repository.
    #   The order of the upstream repositories in the list determines their
    #   priority order when CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #   @return [Array<Types::UpstreamRepository>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdateRepositoryRequest AWS API Documentation
    #
    class UpdateRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] repository
    #   The updated repository.
    #   @return [Types::RepositoryDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpdateRepositoryResult AWS API Documentation
    #
    class UpdateRepositoryResult < Struct.new(
      :repository)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an upstream repository. A list of
    # `UpstreamRepository` objects is an input parameter to
    # [CreateRepository][1] and [UpdateRepository][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html
    # [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html
    #
    # @!attribute [rw] repository_name
    #   The name of an upstream repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpstreamRepository AWS API Documentation
    #
    class UpstreamRepository < Struct.new(
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about an upstream repository.
    #
    # @!attribute [rw] repository_name
    #   The name of an upstream repository.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/UpstreamRepositoryInfo AWS API Documentation
    #
    class UpstreamRepositoryInfo < Struct.new(
      :repository_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation did not succeed because a parameter in the request was
    # sent with an invalid value.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
