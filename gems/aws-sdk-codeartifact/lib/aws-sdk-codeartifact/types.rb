# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
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

    # @note When making an API call, you may pass AssociateExternalConnectionRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         external_connection: "ExternalConnectionName", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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
    #   The type of AWS resource.
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

    # @note When making an API call, you may pass CopyPackageVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         source_repository: "RepositoryName", # required
    #         destination_repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         versions: ["PackageVersion"],
    #         version_revisions: {
    #           "PackageVersion" => "PackageVersionRevision",
    #         },
    #         allow_overwrite: false,
    #         include_from_upstream: false,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the source and destination
    #   repositories.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] source_repository
    #   The name of the repository that contains the package versions to
    #   copy.
    #   @return [String]
    #
    # @!attribute [rw] destination_repository
    #   The name of the repository into which package versions are copied.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package that is copied. The valid package types
    #   are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that is copied.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The versions of the package to copy.
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

    # @note When making an API call, you may pass CreateDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         encryption_key: "Arn",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain to create. All domain names in an AWS Region
    #   that are in the same AWS account must be unique. The domain name is
    #   used as the prefix in DNS hostnames. Do not use sensitive
    #   information in a domain name because it is publicly discoverable.
    #   @return [String]
    #
    # @!attribute [rw] encryption_key
    #   The encryption key for the domain. This is used to encrypt content
    #   stored in a domain. An encryption key can be a key ID, a key Amazon
    #   Resource Name (ARN), a key alias, or a key alias ARN. To specify an
    #   `encryptionKey`, your IAM role must have `kms:DescribeKey` and
    #   `kms:CreateGrant` permissions on the encryption key that is used.
    #   For more information, see [DescribeKey][1] in the *AWS Key
    #   Management Service API Reference* and [AWS KMS API Permissions
    #   Reference][2] in the *AWS Key Management Service Developer Guide*.
    #
    #   CodeArtifact supports only symmetric CMKs. Do not associate an
    #   asymmetric CMK with your domain. For more information, see [Using
    #   symmetric and asymmetric keys][3] in the *AWS Key Management Service
    #   Developer Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax
    #   [2]: https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html
    #   [3]: https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateDomainRequest AWS API Documentation
    #
    class CreateDomainRequest < Struct.new(
      :domain,
      :encryption_key)
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

    # @note When making an API call, you may pass CreateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         description: "Description",
    #         upstreams: [
    #           {
    #             repository_name: "RepositoryName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that contains the created repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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
    #   priority order when AWS CodeArtifact looks for a requested package
    #   version. For more information, see [Working with upstream
    #   repositories][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html
    #   @return [Array<Types::UpstreamRepository>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/CreateRepositoryRequest AWS API Documentation
    #
    class CreateRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams)
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

    # @note When making an API call, you may pass DeleteDomainPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         policy_revision: "PolicyRevision",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain associated with the resource policy to be
    #   deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DeleteDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DeletePackageVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         versions: ["PackageVersion"], # required
    #         expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the package to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package versions to
    #   delete.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package versions to delete. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   The expected status of the package version to delete. Valid values
    #   are:
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
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
    #   A list of the package versions that were successfully deleted.
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

    # @note When making an API call, you may pass DeleteRepositoryPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         policy_revision: "PolicyRevision",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository associated with
    #   the resource policy to be deleted.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DeleteRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository to delete.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DescribeDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #       }
    #
    # @!attribute [rw] domain
    #   A string that specifies the name of the requested domain.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DescribePackageVersionRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         package_version: "PackageVersion", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the requested package version.
    #   The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   A ` PackageVersionDescription ` object that contains information
    #   about the requested package version.
    #   @return [Types::PackageVersionDescription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/DescribePackageVersionResult AWS API Documentation
    #
    class DescribePackageVersionResult < Struct.new(
      :package_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository to describe.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DisassociateExternalConnectionRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         external_connection: "ExternalConnectionName", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository from which to
    #   remove the external repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass DisposePackageVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         versions: ["PackageVersion"], # required
    #         version_revisions: {
    #           "PackageVersion" => "PackageVersionRevision",
    #         },
    #         expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository you want to
    #   dispose.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package versions you
    #   want to dispose.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of package versions you want to
    #   dispose. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   The expected status of the package version to dispose. Valid values
    #   are:
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
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
    #   The AWS account ID that owns the domain.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The current status of a domain. The valid values are
    #
    #   * `Active`
    #
    #   * `Deleted`
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   A timestamp that represents the date and time the domain was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] encryption_key
    #   The ARN of an AWS Key Management Service (AWS KMS) key associated
    #   with a domain.
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
      :asset_size_bytes)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about a domain, including its name, Amazon Resource Name
    # (ARN), and status. The [ `ListDomains` ][1] operation returns a list
    # of `DomainSummary` objects.
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
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the domain.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that contains the status of the domain. The valid values
    #   are:
    #
    #   * `Active`
    #
    #   * `Deleted`
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

    # @note When making an API call, you may pass GetAuthorizationTokenRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         duration_seconds: 1,
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that is in scope for the generated
    #   authorization token.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The time, in seconds, that the generated authorization token is
    #   valid.
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

    # @note When making an API call, you may pass GetDomainPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain to which the resource policy is attached.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass GetPackageVersionAssetRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         package_version: "PackageVersion", # required
    #         asset: "AssetName", # required
    #         package_version_revision: "PackageVersionRevision",
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that contains the repository that contains the package
    #   version with the requested asset.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package version with the requested
    #   asset.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package version with the
    #   requested asset file. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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

    # @note When making an API call, you may pass GetPackageVersionReadmeRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         package_version: "PackageVersion", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the package version with the requested readme file.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package with the requested readme
    #   file.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package version with the
    #   requested readme file. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   The format of the package with the requested readme file. Valid
    #   format types are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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

    # @note When making an API call, you may pass GetRepositoryEndpointRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain
    #   that contains the repository. It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   Returns which endpoint of a repository to return. A repository has
    #   one endpoint for each package format:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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

    # @note When making an API call, you may pass GetRepositoryPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the repository whose associated
    #   resource policy is to be retrieved.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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
    # AWS CodeArtifact.
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

    # @note When making an API call, you may pass ListDomainsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/ListDomainsRequest AWS API Documentation
    #
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] domains
    #   The returned list of ` DomainSummary ` objects.
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

    # @note When making an API call, you may pass ListPackageVersionAssetsRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         package_version: "PackageVersion", # required
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository associated with
    #   the package version assets.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package that contains
    #   the returned package version assets.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package that contains the returned package version
    #   assets. The valid package types are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the returned package version
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
    #   The format of the package that contains the returned package version
    #   assets.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that contains the returned package version
    #   assets.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   The version of the package associated with the returned assets.
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
    #   The returned list of [ `AssetSummary` ][1] objects.
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

    # @note When making an API call, you may pass ListPackageVersionDependenciesRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         package_version: "PackageVersion", # required
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that contains the repository that contains the requested
    #   package version dependencies.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the requested package
    #   version.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the package with the requested dependencies. The valid
    #   package types are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   returned dependencies. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   The returned list of [ `PackageDependency` ][1] objects.
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

    # @note When making an API call, you may pass ListPackageVersionsRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #         sort_by: "PUBLISHED_TIME", # accepts PUBLISHED_TIME
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the repository that contains
    #   the returned package versions.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository that contains the package.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the returned packages. The valid package types are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package for which you want to return a list of
    #   package versions.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A string that specifies the status of the package versions to
    #   include in the returned list. It can be one of the following:
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
    #   @return [String]
    #
    # @!attribute [rw] sort_by
    #   How to sort the returned list of package versions.
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
      :next_token)
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
    #   A format of the package. Valid package format values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package.
    #   @return [String]
    #
    # @!attribute [rw] versions
    #   The returned list of [ `PackageVersionSummary` ][1] objects.
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

    # @note When making an API call, you may pass ListPackagesRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package_prefix: "PackageName",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that contains the repository that contains the requested
    #   list of packages.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The name of the repository from which packages are to be listed.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the packages. The valid package types are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package_prefix
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
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] packages
    #   The list of returned [ `PackageSummary` ][1] objects.
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

    # @note When making an API call, you may pass ListRepositoriesInDomainRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         administrator_account: "AccountId",
    #         repository_prefix: "RepositoryName",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain that contains the returned list of
    #   repositories.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] administrator_account
    #   Filter the list of repositories to only include those that are
    #   managed by the AWS account ID.
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

    # @note When making an API call, you may pass ListRepositoriesRequest
    #   data as a hash:
    #
    #       {
    #         repository_prefix: "RepositoryName",
    #         max_results: 1,
    #         next_token: "PaginationToken",
    #       }
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
    #   The returned list of [ `RepositorySummary` ][1] objects.
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

    # Details about a package dependency.
    #
    # @!attribute [rw] namespace
    #   The namespace of the package. The package component that specifies
    #   its namespace depends on its type. For example:
    #
    #   * The namespace of a Maven package is its `groupId`.
    #
    #   * The namespace of an npm package is its `scope`.
    #
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package that this package depends on.
    #   @return [String]
    #
    # @!attribute [rw] dependency_type
    #   The type of a package dependency. The possible values depend on the
    #   package type. Example types are `compile`, `runtime`, and `test` for
    #   Maven packages, and `dev`, `prod`, and `optional` for npm packages.
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

    # Details about a package, including its format, namespace, and name.
    # The [ `ListPackages` ][1] operation returns a list of `PackageSummary`
    # objects.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackages.html
    #
    # @!attribute [rw] format
    #   The format of the package. Valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
    #   @return [String]
    #
    # @!attribute [rw] package
    #   The name of the package.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageSummary AWS API Documentation
    #
    class PackageSummary < Struct.new(
      :format,
      :namespace,
      :package)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about a package version.
    #
    # @!attribute [rw] format
    #   The format of the package version. The valid package formats are:
    #
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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
    #   A string that contains the status of the package version. It can be
    #   one of the following:
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
    #   @return [String]
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
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # An error associated with package.
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

    # Details about a package version, including its status, version, and
    # revision. The [ `ListPackageVersions` ][1] operation returns a list of
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
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/PackageVersionSummary AWS API Documentation
    #
    class PackageVersionSummary < Struct.new(
      :version,
      :revision,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDomainPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         policy_revision: "PolicyRevision",
    #         policy_document: "PolicyDocument", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain on which to set the resource policy.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # @note When making an API call, you may pass PutRepositoryPermissionsPolicyRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         policy_revision: "PolicyRevision",
    #         policy_document: "PolicyDocument", # required
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain containing the repository to set the resource
    #   policy on.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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

    # The details of a repository stored in AWS CodeArtifact. A CodeArtifact
    # repository contains a set of package versions, each of which maps to a
    # set of assets. Repositories are polyglot—a single repository can
    # contain packages of any supported type. Each repository exposes
    # endpoints for fetching and publishing packages using tools like the
    # `npm` CLI, the Maven CLI (`mvn`), and `pip`. You can create up to 100
    # repositories per AWS account.
    #
    # @!attribute [rw] name
    #   The name of the repository.
    #   @return [String]
    #
    # @!attribute [rw] administrator_account
    #   The 12-digit account number of the AWS account that manages the
    #   repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain
    #   that contains the repository. It does not include dashes or spaces.
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
    #   priority order when AWS CodeArtifact looks for a requested package
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
      :external_connections)
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
    #   * `npm`\: A Node Package Manager (npm) package.
    #
    #   * `pypi`\: A Python Package Index (PyPI) package.
    #
    #   * `maven`\: A Maven package that contains compiled code in a
    #     distributable format, such as a JAR file.
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
    # description, and domain information. The [ `ListRepositories` ][1]
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
    #   The AWS account ID that manages the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_name
    #   The name of the domain that contains the repository.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/codeartifact-2018-09-22/RepositorySummary AWS API Documentation
    #
    class RepositorySummary < Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description)
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
    #   The type of AWS resource.
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

    # An AWS CodeArtifact resource policy that contains a resource ARN,
    # document details, and a revision.
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
    #   The type of AWS resource.
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
    #   The status of a package version. Valid statuses are:
    #
    #   * `Published`
    #
    #   * `Unfinished`
    #
    #   * `Unlisted`
    #
    #   * `Archived`
    #
    #   * `Disposed`
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

    # @note When making an API call, you may pass UpdatePackageVersionsStatusRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         format: "npm", # required, accepts npm, pypi, maven
    #         namespace: "PackageNamespace",
    #         package: "PackageName", # required
    #         versions: ["PackageVersion"], # required
    #         version_revisions: {
    #           "PackageVersion" => "PackageVersionRevision",
    #         },
    #         expected_status: "Published", # accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #         target_status: "Published", # required, accepts Published, Unfinished, Unlisted, Archived, Disposed, Deleted
    #       }
    #
    # @!attribute [rw] domain
    #   The domain that contains the repository that contains the package
    #   versions with a status to be updated.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository that contains the package versions with the status
    #   you want to update.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   A format that specifies the type of the package with the statuses to
    #   update. The valid values are:
    #
    #   * `npm`
    #
    #   * `pypi`
    #
    #   * `maven`
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
    #   * A Python package does not contain a corresponding component, so
    #     Python packages do not have a namespace.
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

    # @note When making an API call, you may pass UpdateRepositoryRequest
    #   data as a hash:
    #
    #       {
    #         domain: "DomainName", # required
    #         domain_owner: "AccountId",
    #         repository: "RepositoryName", # required
    #         description: "Description",
    #         upstreams: [
    #           {
    #             repository_name: "RepositoryName", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] domain
    #   The name of the domain associated with the repository to update.
    #   @return [String]
    #
    # @!attribute [rw] domain_owner
    #   The 12-digit account number of the AWS account that owns the domain.
    #   It does not include dashes or spaces.
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
    #   priority order when AWS CodeArtifact looks for a requested package
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
    # `UpstreamRepository` objects is an input parameter to [
    # `CreateRepository` ][1] and [ `UpdateRepository` ][2].
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html
    # [2]: https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html
    #
    # @note When making an API call, you may pass UpstreamRepository
    #   data as a hash:
    #
    #       {
    #         repository_name: "RepositoryName", # required
    #       }
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
