# frozen_string_literal: true

# This is generated code!

module Aws::Codeartifact
  # This module contains the types returned by client operations.
  module Types

    # <p>
    #         The operation did not succeed because of an unauthorized access attempt.
    #       </p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Contains details about a package version asset.
    #        </p>
    # @!attribute name
    #   <p>
    #            The name of the asset.
    #          </p>
    #   @return [String]
    # @!attribute size
    #   <p>
    #         The size of the asset.
    #       </p>
    #   @return [Integer]
    # @!attribute hashes
    #   <p>
    #         The hashes of the asset.
    #       </p>
    #   @return [Hash<String, String>]
    class AssetSummary < Struct.new(
      :name,
      :size,
      :hashes,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository.</p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The name of the repository to which the external connection is added.
    #       </p>
    #   @return [String]
    # @!attribute external_connection
    #   <p>
    #         The name of the external connection to add to the repository. The following values are supported:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>public:npmjs</code> - for the npm public repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:nuget-org</code> - for the NuGet Gallery.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:pypi</code> - for the Python Package Index.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-central</code> - for Maven Central.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-googleandroid</code> - for the Google Android repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-gradleplugins</code> - for the Gradle plugins repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-commonsware</code> - for the CommonsWare Android repository.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:maven-clojars</code> - for the Clojars repository. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:ruby-gems-org</code> - for RubyGems.org. </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>public:crates-io</code> - for Crates.io. </p>
    #               </li>
    #            </ul>
    #   @return [String]
    class AssociateExternalConnectionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the connected repository after processing the request.
    #          </p>
    #   @return [Types::RepositoryDescription]
    class AssociateExternalConnectionResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       A package associated with a package group.
    #     </p>
    # @!attribute format
    #   <p>A format that specifies the type of the associated package.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the associated package. The package component that specifies its 
    #       namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the associated package.
    #       </p>
    #   @return [String]
    # @!attribute association_type
    #   <p>Describes the strength of the association between the package and package group. A strong match can be thought of as an 
    #         exact match, and a weak match can be thought of as a variation match, for example, the package name matches a variation of the package group pattern. 
    #         For more information about package group pattern matching, including strong and weak matches, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html">Package group definition syntax and matching behavior</a> 
    #         in the <i>CodeArtifact User Guide</i>.</p>
    #   @return [String]
    class AssociatedPackage < Struct.new(
      :format,
      :namespace,
      :package,
      :association_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         The operation did not succeed because prerequisites are not met.
    #       </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the source and destination repositories.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute source_repository
    #   <p>
    #            The name of the repository that contains the package versions to be copied.
    #          </p>
    #   @return [String]
    # @!attribute destination_repository
    #   <p>
    #         The name of the repository into which package versions are copied.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         The format of the package versions to be copied.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package versions to be copied. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when copying package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package that contains the versions to be copied.
    #       </p>
    #   @return [String]
    # @!attribute versions
    #   <p>
    #           The versions of the package to be copied.
    #         </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    #   @return [Array<String>]
    # @!attribute version_revisions
    #   <p>
    #          A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation
    #         succeeds if the specified versions in the source repository match the specified package version revision.
    #       </p>
    #            <note>
    #               <p>
    #           You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.
    #         </p>
    #            </note>
    #   @return [Hash<String, String>]
    # @!attribute allow_overwrite
    #   <p>
    #          Set to true to overwrite a package version that already exists in the destination repository.
    #          If set to false and the package version already exists in the destination repository,
    #          the package version is returned in the <code>failedVersions</code> field of the response with 
    #          an <code>ALREADY_EXISTS</code> error code.
    #        </p>
    #   @return [Boolean]
    # @!attribute include_from_upstream
    #   <p> Set to true to copy packages from repositories that are upstream from the source
    #         repository to the destination repository. The default setting is false. For more information,
    #         see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with
    #           upstream repositories</a>. </p>
    #   @return [Boolean]
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
      :include_from_upstream,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of the package versions that were successfully copied to your repository.
    #       </p>
    #   @return [Hash<String, Types::SuccessfulPackageVersionInfo>]
    # @!attribute failed_versions
    #   <p>
    #         A map of package versions that failed to copy and their error codes. The possible error codes are in 
    #         the <code>PackageVersionError</code> data type. They are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Types::PackageVersionError>]
    class CopyPackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p> The name of the domain to create. All domain names in an Amazon Web Services Region that are in the
    #         same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do
    #         not use sensitive information in a domain name because it is publicly discoverable. </p>
    #   @return [String]
    # @!attribute encryption_key
    #   <p> The encryption key for the domain. This is used to encrypt content stored in a domain.
    #         An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key
    #         alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have
    #           <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption
    #         key that is used. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax">DescribeKey</a> in the <i>Key Management Service API Reference</i>
    #         and <a href="https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html">Key Management Service API Permissions
    #           Reference</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            <important>
    #               <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your
    #           domain. For more information, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html">Using symmetric and asymmetric
    #             keys</a> in the <i>Key Management Service Developer Guide</i>. </p>
    #            </important>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the domain.</p>
    #   @return [Array<Types::Tag>]
    class CreateDomainRequest < Struct.new(
      :domain,
      :encryption_key,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           Contains information about the created domain after processing the request.
    #         </p>
    #   @return [Types::DomainDescription]
    class CreateDomainResult < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain in which you want to create a package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>The pattern of the package group to create. The pattern is also the identifier of the package group. </p>
    #   @return [String]
    # @!attribute contact_info
    #   <p>
    #         The contact information for the created package group.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         A description of the package group.
    #       </p>
    #   @return [String]
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the package group.</p>
    #   @return [Array<Types::Tag>]
    class CreatePackageGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :contact_info,
      :description,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>
    #         Information about the created package group after processing the request.
    #       </p>
    #   @return [Types::PackageGroupDescription]
    class CreatePackageGroupResult < Struct.new(
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the created repository.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository to create. </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         A description of the created repository.
    #       </p>
    #   @return [String]
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more 
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #   @return [Array<Types::UpstreamRepository>]
    # @!attribute tags
    #   <p>One or more tag key-value pairs for the repository.</p>
    #   @return [Array<Types::Tag>]
    class CreateRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the created repository after processing the request.
    #         </p>
    #   @return [Types::RepositoryDescription]
    class CreateRepositoryResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain associated with the resource policy to be deleted.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute policy_revision
    #   <p>
    #           The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #   @return [String]
    class DeleteDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :policy_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>
    #           Information about the deleted resource policy after processing the request.
    #         </p>
    #   @return [Types::ResourcePolicy]
    class DeleteDomainPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain to delete.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    class DeleteDomainRequest < Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           Contains information about the deleted domain after processing the request.
    #          </p>
    #   @return [Types::DomainDescription]
    class DeleteDomainResult < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The domain that contains the package group to be deleted.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>The pattern of the package group to be deleted.</p>
    #   @return [String]
    class DeletePackageGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>
    #         Information about the deleted package group after processing the request.
    #       </p>
    #   @return [Types::PackageGroupDescription]
    class DeletePackageGroupResult < Struct.new(
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the package to delete.</p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository that contains the package to delete.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the requested package to delete.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package to delete. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>The name of the package to delete.</p>
    #   @return [String]
    class DeletePackageRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute deleted_package
    #   <p>
    #         Details about a package, including its format, namespace, and name.
    #       </p>
    #   @return [Types::PackageSummary]
    class DeletePackageResult < Struct.new(
      :deleted_package,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the package to delete.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #           The name of the repository that contains the package versions to delete.
    #         </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #           The format of the package versions to delete.
    #         </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package versions to be deleted. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #           The name of the package with the versions to delete.
    #         </p>
    #   @return [String]
    # @!attribute versions
    #   <p>
    #           An array of strings that specify the versions of the package to delete.
    #         </p>
    #   @return [Array<String>]
    # @!attribute expected_status
    #   <p>
    #           The expected status of the package version to delete.
    #         </p>
    #   @return [String]
    class DeletePackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :expected_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #          A list of the package versions that were successfully deleted. The 
    #          status of every successful version will be <code>Deleted</code>.
    #        </p>
    #   @return [Hash<String, Types::SuccessfulPackageVersionInfo>]
    # @!attribute failed_versions
    #   <p>
    #          A <code>PackageVersionError</code> object that contains a map of errors codes for the 
    #          deleted package that failed. The possible error codes are:
    #        </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Types::PackageVersionError>]
    class DeletePackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the repository associated with the resource policy to be deleted.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The name of the repository that is associated with the resource policy to be deleted
    #       </p>
    #   @return [String]
    # @!attribute policy_revision
    #   <p>
    #         The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which
    #         prevents others from accidentally overwriting your changes to the repository's resource policy.
    #       </p>
    #   @return [String]
    class DeleteRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>
    #         Information about the deleted policy after processing the request.
    #       </p>
    #   @return [Types::ResourcePolicy]
    class DeleteRepositoryPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository to delete.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p> The name of the repository to delete. </p>
    #   @return [String]
    class DeleteRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #           Information about the deleted repository after processing the request.
    #          </p>
    #   @return [Types::RepositoryDescription]
    class DeleteRepositoryResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            A string that specifies the name of the requested domain.
    #        </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    class DescribeDomainRequest < Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #          Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you 
    #          add one or more repositories.
    #         </p>
    #   @return [Types::DomainDescription]
    class DescribeDomainResult < Struct.new(
      :domain,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the package group. 
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>The pattern of the requested package group.</p>
    #   @return [String]
    class DescribePackageGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html">PackageGroupDescription</a> object 
    #       that contains information about the requested package group.</p>
    #   @return [Types::PackageGroupDescription]
    class DescribePackageGroupResult < Struct.new(
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository that contains the package.</p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository that contains the requested package. </p>
    #   @return [String]
    # @!attribute format
    #   <p>A format that specifies the type of the requested package.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the requested package. The package component that specifies its namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>The name of the requested package.</p>
    #   @return [String]
    class DescribePackageRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html">PackageDescription</a> 
    #         object that contains information about the requested package.</p>
    #   @return [Types::PackageDescription]
    class DescribePackageResult < Struct.new(
      :package,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p> The name of the repository that contains the package version. </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the requested package version.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the requested package version. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p> The name of the requested package version. </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    class DescribePackageVersionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_version
    #   <p>
    #         A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html">PackageVersionDescription</a> 
    #         object that contains information about the requested package version.
    #       </p>
    #   @return [Types::PackageVersionDescription]
    class DescribePackageVersionResult < Struct.new(
      :package_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository to describe.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #           A string that specifies the name of the requested repository.
    #          </p>
    #   @return [String]
    class DescribeRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #            A <code>RepositoryDescription</code> object that contains the requested repository information.
    #          </p>
    #   @return [Types::RepositoryDescription]
    class DescribeRepositoryResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository from which to remove the external
    #         repository. </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository from which the external connection will be removed. </p>
    #   @return [String]
    # @!attribute external_connection
    #   <p>The name of the external connection to be removed from the repository. </p>
    #   @return [String]
    class DisassociateExternalConnectionRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :external_connection,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #         The repository associated with the removed external connection.
    #       </p>
    #   @return [Types::RepositoryDescription]
    class DisassociateExternalConnectionResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository you want to dispose.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the package versions you want to dispose.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format that specifies the type of package versions you want to dispose.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package versions to be disposed. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when disposing package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package with the versions you want to dispose.
    #       </p>
    #   @return [String]
    # @!attribute versions
    #   <p>
    #         The versions of the package you want to dispose.
    #       </p>
    #   @return [Array<String>]
    # @!attribute version_revisions
    #   <p>
    #         The revisions of the package versions you want to dispose.
    #       </p>
    #   @return [Hash<String, String>]
    # @!attribute expected_status
    #   <p>
    #         The expected status of the package version to dispose.
    #       </p>
    #   @return [String]
    class DisposePackageVersionsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :versions,
      :version_revisions,
      :expected_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of the package versions that were successfully disposed.
    #       </p>
    #   @return [Hash<String, Types::SuccessfulPackageVersionInfo>]
    # @!attribute failed_versions
    #   <p>
    #         A <code>PackageVersionError</code> object that contains a map of errors codes for the 
    #         disposed package versions that failed. The possible error codes are:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [Hash<String, Types::PackageVersionError>]
    class DisposePackageVersionsResult < Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #        Information about a domain. A domain is a container for repositories. When you create a domain, it is empty until you 
    #        add one or more repositories.
    #       </p>
    # @!attribute name
    #   <p>
    #            The name of the domain.
    #          </p>
    #   @return [String]
    # @!attribute owner
    #   <p> The Amazon Web Services account ID that owns the domain. </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the domain. </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #           The current status of a domain.
    #         </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>
    #         A timestamp that represents the date and time the domain was created.
    #       </p>
    #   @return [Time]
    # @!attribute encryption_key
    #   <p> The ARN of an Key Management Service (KMS) key associated with a domain. </p>
    #   @return [String]
    # @!attribute repository_count
    #   <p>
    #         The number of repositories in the domain.
    #       </p>
    #   @return [Integer]
    # @!attribute asset_size_bytes
    #   <p>
    #         The total size of all assets in the domain.
    #       </p>
    #   @return [Integer]
    # @!attribute s3_bucket_arn
    #   <p>The Amazon Resource Name (ARN) of the Amazon S3 bucket that is used to store package assets in the domain.</p>
    #   @return [String]
    class DomainDescription < Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key,
      :repository_count,
      :asset_size_bytes,
      :s3_bucket_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:repository_count] = 0 unless options.key?(:repository_count)
        options[:asset_size_bytes] = 0 unless options.key?(:asset_size_bytes)
        super
      end
    end

    # <p>Information about how a package originally entered the CodeArtifact domain. For packages published directly to CodeArtifact, the entry point is the repository it was published to. 
    #       For packages ingested from an external repository, the entry point is the external connection that it was ingested from. An external 
    #     connection is a CodeArtifact repository that is connected to an external repository such as the npm registry or NuGet gallery.</p>
    #          <note>
    #             <p>If a package version exists in a repository and is updated, for example if a package of the same version is added 
    #       with additional assets, the package version's <code>DomainEntryPoint</code> will not change from the original package version's value.</p>
    #          </note>
    # @!attribute repository_name
    #   <p>The name of the repository that a package was originally published to.</p>
    #   @return [String]
    # @!attribute external_connection_name
    #   <p>The name of the external connection that a package was ingested from.</p>
    #   @return [String]
    class DomainEntryPoint < Struct.new(
      :repository_name,
      :external_connection_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Information about a domain, including its name, Amazon Resource Name (ARN), and status.
    #       The <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListDomains.html">ListDomains</a> operation returns a list of <code>DomainSummary</code>
    #       objects. </p>
    # @!attribute name
    #   <p>
    #         The name of the domain.
    #       </p>
    #   @return [String]
    # @!attribute owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute arn
    #   <p>
    #         The ARN of the domain.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         A string that contains the status of the domain.    
    #       </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>
    #         A timestamp that contains the date and time the domain was created.
    #       </p>
    #   @return [Time]
    # @!attribute encryption_key
    #   <p>
    #         The key used to encrypt the domain.
    #       </p>
    #   @return [String]
    class DomainSummary < Struct.new(
      :name,
      :owner,
      :arn,
      :status,
      :created_time,
      :encryption_key,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the package from which to get the associated package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         The format of the package from which to get the associated package group.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package from which to get the associated package group. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when getting associated package groups from packages of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The package from which to get the associated package group.
    #       </p>
    #   @return [String]
    class GetAssociatedPackageGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :format,
      :namespace,
      :package,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>The package group that is associated with the requested package.</p>
    #   @return [Types::PackageGroupDescription]
    # @!attribute association_type
    #   <p>Describes the strength of the association between the package and package group. A strong match is also known as an 
    #       exact match, and a weak match is known as a relative match.</p>
    #   @return [String]
    class GetAssociatedPackageGroupResult < Struct.new(
      :package_group,
      :association_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that is in scope for the generated authorization token.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute duration_seconds
    #   <p>The time, in seconds, that the generated authorization token is valid. Valid values are 
    #       <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours). 
    #       A value of <code>0</code> will set the expiration of the authorization token to the same expiration of 
    #       the user's role's temporary credentials.</p>
    #   @return [Integer]
    class GetAuthorizationTokenRequest < Struct.new(
      :domain,
      :domain_owner,
      :duration_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @note This shape contains sensitive data and should be treated as such.
    # @!attribute authorization_token
    #   <p>
    #           The returned authentication token.
    #          </p>
    #   @return [String]
    # @!attribute expiration
    #   <p>
    #         A timestamp that specifies the date and time the authorization token expires.
    #       </p>
    #   @return [Time]
    class GetAuthorizationTokenResult < Struct.new(
      :authorization_token,
      :expiration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain to which the resource policy is attached.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    class GetDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>
    #           The returned resource policy.
    #         </p>
    #   @return [Types::ResourcePolicy]
    class GetDomainPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested asset.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The repository that contains the package version with the requested asset.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package version with the requested asset file.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version with the requested asset file. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting assets from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package that contains the requested asset.
    #       </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    # @!attribute asset
    #   <p>
    #         The name of the requested asset.
    #       </p>
    #   @return [String]
    # @!attribute package_version_revision
    #   <p>
    #           The name of the package version revision that contains the requested asset.
    #       </p>
    #   @return [String]
    class GetPackageVersionAssetRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :asset,
      :package_version_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute asset
    #   <p> The binary file, or asset, that is downloaded.</p>
    #   @return [String]
    # @!attribute asset_name
    #   <p>
    #         The name of the asset that is downloaded.
    #       </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    # @!attribute package_version_revision
    #   <p>
    #         The name of the package version revision that contains the downloaded asset.
    #       </p>
    #   @return [String]
    class GetPackageVersionAssetResult < Struct.new(
      :asset,
      :asset_name,
      :package_version,
      :package_version_revision,
      keyword_init: true)
      include ::Smithy::Schema::Structure

      def initialize(options = {})
        options[:asset] = Base64.strict_decode64('') unless options.key?(:asset)
        super
      end
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package version with the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The repository that contains the package with the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package version with the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version with the requested readme file. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when requesting the readme from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package version that contains the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    class GetPackageVersionReadmeRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>
    #         The format of the package with the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version with the requested readme file. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package that contains the returned readme file.
    #       </p>
    #   @return [String]
    # @!attribute version
    #   <p>
    #         The version of the package with the requested readme file.
    #       </p>
    #   @return [String]
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #   @return [String]
    # @!attribute readme
    #   <p>
    #         The text of the returned readme file.
    #       </p>
    #   @return [String]
    class GetPackageVersionReadmeResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :readme,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository.
    #        </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #            The name of the repository.
    #        </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         Returns which endpoint of a repository to return. A repository has one endpoint for each 
    #         package format.
    #       </p>
    #   @return [String]
    # @!attribute endpoint_type
    #   <p>A string that specifies the type of endpoint.</p>
    #   @return [String]
    class GetRepositoryEndpointRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :endpoint_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_endpoint
    #   <p>
    #            A string that specifies the URL of the returned endpoint.
    #        </p>
    #   @return [String]
    class GetRepositoryEndpointResult < Struct.new(
      :repository_endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain containing the repository whose associated resource policy is to be retrieved.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #           The name of the repository whose associated resource policy is to be retrieved.
    #         </p>
    #   @return [String]
    class GetRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>
    #           The returned resource policy.
    #         </p>
    #   @return [Types::ResourcePolicy]
    class GetRepositoryPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The operation did not succeed because of an error that occurred inside CodeArtifact. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Details of the license data.
    #       </p>
    # @!attribute name
    #   <p>
    #           Name of the license.
    #         </p>
    #   @return [String]
    # @!attribute url
    #   <p>
    #           The URL for license data.
    #         </p>
    #   @return [String]
    class LicenseInfo < Struct.new(
      :name,
      :url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the package group from which to list allowed repositories.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>The pattern of the package group from which to list allowed repositories.</p>
    #   @return [String]
    # @!attribute origin_restriction_type
    #   <p>The origin configuration restriction type of which to list allowed repositories.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListAllowedRepositoriesForGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :origin_restriction_type,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute allowed_repositories
    #   <p>The list of allowed repositories for the package group and origin configuration restriction type.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListAllowedRepositoriesForGroupResult < Struct.new(
      :allowed_repositories,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the package group from which to list associated packages.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>
    #         The pattern of the package group from which to list associated packages.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute preview
    #   <p>
    #         When this flag is included, <code>ListAssociatedPackages</code> will return a list of packages that would be associated with a package 
    #         group, even if it does not exist.
    #       </p>
    #   @return [Boolean]
    class ListAssociatedPackagesRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :max_results,
      :next_token,
      :preview,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute packages
    #   <p>
    #         The list of packages associated with the requested package group.
    #       </p>
    #   @return [Array<Types::AssociatedPackage>]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListAssociatedPackagesResult < Struct.new(
      :packages,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListDomainsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domains
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html">DomainSummary</a> objects.
    #        </p>
    #   @return [Array<Types::DomainSummary>]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListDomainsResult < Struct.new(
      :domains,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The domain for which you want to list package groups.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute prefix
    #   <p>
    #         A prefix for which to search package groups. When included, <code>ListPackageGroups</code> will return only
    #         package groups with patterns that match the prefix.
    #       </p>
    #   @return [String]
    class ListPackageGroupsRequest < Struct.new(
      :domain,
      :domain_owner,
      :max_results,
      :next_token,
      :prefix,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_groups
    #   <p>
    #         The list of package groups in the requested domain.
    #       </p>
    #   @return [Array<Types::PackageGroupSummary>]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListPackageGroupsResult < Struct.new(
      :package_groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository associated with the package version assets.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the package that contains the requested package version assets.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         The format of the package that contains the requested package version assets.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version that contains the requested package version assets. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required requesting assets from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #            The name of the package that contains the requested package version assets.
    #          </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListPackageVersionAssetsRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>
    #         The format of the package that contains the requested package version assets.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version that contains the requested package version assets. The package component that specifies its 
    #          namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package that contains the requested package version assets.
    #       </p>
    #   @return [String]
    # @!attribute version
    #   <p>
    #         The version of the package associated with the requested assets.
    #       </p>
    #   @return [String]
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute assets
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">AssetSummary</a> objects.
    #       </p>
    #   @return [Array<Types::AssetSummary>]
    class ListPackageVersionAssetsResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :assets,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the requested package version dependencies.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The name of the repository that contains the requested package version.
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         The format of the package with the requested dependencies.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version with the requested dependencies. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when listing dependencies from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python and NuGet package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package versions' package.
    #       </p>
    #   @return [String]
    # @!attribute package_version
    #   <p>
    #         A string that contains the package version (for example, <code>3.5.2</code>).
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListPackageVersionDependenciesRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :package_version,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package that contains the returned dependencies.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version that contains the returned dependencies. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when listing dependencies from package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python and NuGet package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package that contains the returned package versions dependencies.
    #       </p>
    #   @return [String]
    # @!attribute version
    #   <p>
    #         The version of the package that is specified in the request.
    #       </p>
    #   @return [String]
    # @!attribute version_revision
    #   <p>
    #         The current revision associated with the package version.
    #       </p>
    #   @return [String]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute dependencies
    #   <p>
    #         The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html">PackageDependency</a> objects.
    #       </p>
    #   @return [Array<Types::PackageDependency>]
    class ListPackageVersionDependenciesResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :next_token,
      :dependencies,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the repository that contains the requested package versions.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #            The name of the repository that contains the requested package versions.
    #          </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         The format of the package versions you want to list.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package that contains the requested package versions. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <note>
    #               <p>The namespace is required when deleting package versions of the following formats:</p>
    #               <ul>
    #                  <li>
    #                     <p>Maven</p>
    #                  </li>
    #                  <li>
    #                     <p>Swift</p>
    #                  </li>
    #                  <li>
    #                     <p>generic</p>
    #                  </li>
    #               </ul>
    #            </note>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package for which you want to request package versions.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         A string that filters the requested package versions by status.
    #       </p>
    #   @return [String]
    # @!attribute sort_by
    #   <p>
    #         How to sort the requested list of package versions.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute origin_type
    #   <p>The <code>originType</code> used to filter package versions. 
    #         Only package versions with the provided <code>originType</code> will be returned.</p>
    #   @return [String]
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
      :origin_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute default_display_version
    #   <p>
    #         The default package version to display. This depends on the package format:
    #       </p>
    #            <ul>
    #               <li>
    #                  <p>
    #             For Maven and PyPI packages, it's the most recently published package version.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             For npm packages, it's the version referenced by the
    #             <code>latest</code> tag. If the  <code>latest</code> tag is not set, it's the most recently published package version.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format of the package.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package that contains the requested package versions. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #            The name of the package.
    #          </p>
    #   @return [String]
    # @!attribute versions
    #   <p>
    #           The returned list of 
    #           <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html">PackageVersionSummary</a> 
    #           objects.
    #          </p>
    #   @return [Array<Types::PackageVersionSummary>]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    class ListPackageVersionsResult < Struct.new(
      :default_display_version,
      :format,
      :namespace,
      :package,
      :versions,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain that contains the repository that contains the requested packages.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #            The name of the repository that contains the requested packages.
    #          </p>
    #   @return [String]
    # @!attribute format
    #   <p>The format used to filter requested packages. Only packages from the provided format will be returned.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace prefix used to filter requested packages. 
    #         Only packages with a namespace that starts with the provided string value are returned. 
    #         Note that although this option is called <code>--namespace</code> and not <code>--namespace-prefix</code>, it has prefix-matching behavior.</p>
    #            <p>Each package format uses namespace as follows:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package_prefix
    #   <p>
    #         A prefix used to filter requested packages. Only packages with names that start with 
    #         <code>packagePrefix</code> are returned.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    # @!attribute publish
    #   <p>The value of the <code>Publish</code> package origin control restriction used to filter requested packages. 
    #         Only packages with the provided restriction are returned. 
    #         For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p>
    #   @return [String]
    # @!attribute upstream
    #   <p>The value of the <code>Upstream</code> package origin control restriction used to filter requested packages. 
    #         Only packages with the provided restriction are returned. For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a>.</p>
    #   @return [String]
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
      :upstream,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute packages
    #   <p>
    #           The list of returned <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html">PackageSummary</a> 
    #           objects.
    #          </p>
    #   @return [Array<Types::PackageSummary>]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    class ListPackagesResult < Struct.new(
      :packages,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain that contains the returned list of repositories.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute administrator_account
    #   <p>
    #            Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.
    #          </p>
    #   @return [String]
    # @!attribute repository_prefix
    #   <p>
    #         A prefix used to filter returned repositories. Only repositories with names that start with 
    #         <code>repositoryPrefix</code> are returned.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListRepositoriesInDomainRequest < Struct.new(
      :domain,
      :domain_owner,
      :administrator_account,
      :repository_prefix,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repositories
    #   <p>
    #          The returned list of repositories.
    #        </p>
    #   @return [Array<Types::RepositorySummary>]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    class ListRepositoriesInDomainResult < Struct.new(
      :repositories,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository_prefix
    #   <p> A prefix used to filter returned repositories. Only repositories with names that start
    #         with <code>repositoryPrefix</code> are returned.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListRepositoriesRequest < Struct.new(
      :repository_prefix,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repositories
    #   <p>
    #           The returned list of <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html">RepositorySummary</a> 
    #           objects.
    #          </p>
    #   @return [Array<Types::RepositorySummary>]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    class ListRepositoriesResult < Struct.new(
      :repositories,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain which contains the package group from which to list sub package groups.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>
    #         The pattern of the package group from which to list sub package groups.
    #       </p>
    #   @return [String]
    # @!attribute max_results
    #   <p>
    #           The maximum number of results to return per page.
    #          </p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>
    #           The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.
    #          </p>
    #   @return [String]
    class ListSubPackageGroupsRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_groups
    #   <p>
    #         A list of sub package groups for the requested package group.
    #       </p>
    #   @return [Array<Types::PackageGroupSummary>]
    # @!attribute next_token
    #   <p>
    #           If there are additional results, this is the token for the next set of results.
    #          </p>
    #   @return [String]
    class ListSubPackageGroupsResult < Struct.new(
      :package_groups,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #   @return [Array<Types::Tag>]
    class ListTagsForResourceResult < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Details about a package dependency.
    #       </p>
    # @!attribute namespace
    #   <p>The namespace of the package that this package depends on. The package component that specifies its 
    #          namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #           The name of the package that this package depends on.
    #          </p>
    #   @return [String]
    # @!attribute dependency_type
    #   <p> The type of a package dependency. The possible values depend on the package type.</p>
    #            <ul>
    #               <li>
    #                  <p>npm: <code>regular</code>, <code>dev</code>, <code>peer</code>, <code>optional</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>maven: <code>optional</code>, <code>parent</code>, <code>compile</code>, <code>runtime</code>, <code>test</code>, <code>system</code>, <code>provided</code>.</p>
    #                  <note>
    #                     <p>Note that <code>parent</code> is not a regular Maven dependency type; instead this is extracted from the <code><parent></code> element if one is defined in the package version's POM file.</p>
    #                  </note>
    #               </li>
    #               <li>
    #                  <p>nuget: The <code>dependencyType</code> field is never set for NuGet packages.</p>
    #               </li>
    #               <li>
    #                  <p>pypi: <code>Requires-Dist</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute version_requirement
    #   <p>
    #           The required version, or version range, of the package that this package depends on. The version format
    #           is specific to the package type. For example, the following are possible valid required versions: <code>1.2.3</code>,
    #           <code>^2.3.4</code>, or <code>4.x</code>.
    #         </p>
    #   @return [String]
    class PackageDependency < Struct.new(
      :namespace,
      :package,
      :dependency_type,
      :version_requirement,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a package.</p>
    # @!attribute format
    #   <p>A format that specifies the type of the package.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the package.</p>
    #   @return [String]
    # @!attribute origin_configuration
    #   <p>The package origin configuration for the package.</p>
    #   @return [Types::PackageOriginConfiguration]
    class PackageDescription < Struct.new(
      :format,
      :namespace,
      :name,
      :origin_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Details about an allowed repository for a package group, including its name and origin configuration.
    #     </p>
    # @!attribute repository_name
    #   <p>
    #         The name of the allowed repository.
    #       </p>
    #   @return [String]
    # @!attribute origin_restriction_type
    #   <p>The origin configuration restriction type of the allowed repository.</p>
    #   @return [String]
    class PackageGroupAllowedRepository < Struct.new(
      :repository_name,
      :origin_restriction_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The description of the package group.
    #     </p>
    # @!attribute arn
    #   <p>
    #         The ARN of the package group.
    #       </p>
    #   @return [String]
    # @!attribute pattern
    #   <p>
    #         The pattern of the package group. The pattern determines which packages are associated with the package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>
    #         The name of the domain that contains the package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>A timestamp that represents the date and time the package group was created.</p>
    #   @return [Time]
    # @!attribute contact_info
    #   <p>
    #         The contact information of the package group.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         The description of the package group.
    #       </p>
    #   @return [String]
    # @!attribute origin_configuration
    #   <p>The package group origin configuration that determines how package versions can enter repositories.</p>
    #   @return [Types::PackageGroupOriginConfiguration]
    # @!attribute parent
    #   <p>
    #         The direct parent package group of the package group.
    #       </p>
    #   @return [Types::PackageGroupReference]
    class PackageGroupDescription < Struct.new(
      :arn,
      :pattern,
      :domain_name,
      :domain_owner,
      :created_time,
      :contact_info,
      :description,
      :origin_configuration,
      :parent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>The package group origin configuration that determines how package versions can enter repositories.</p>
    # @!attribute restrictions
    #   <p>The origin configuration settings that determine how package versions can enter repositories.</p>
    #   @return [Hash<String, Types::PackageGroupOriginRestriction>]
    class PackageGroupOriginConfiguration < Struct.new(
      :restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Contains information about the configured restrictions of the origin controls of a package group.</p>
    # @!attribute mode
    #   <p>The package group origin restriction setting. If the value of <code>mode</code> is <code>ALLOW</code>, 
    #         <code>ALLOW_SPECIFIC_REPOSITORIES</code>, or <code>BLOCK</code>, then the value of <code>effectiveMode</code> 
    #       is the same. Otherwise, when the value is <code>INHERIT</code>, then the value of <code>effectiveMode</code> is the value of 
    #       <code>mode</code> of the first parent group which does not have a value of <code>INHERIT</code>.</p>
    #   @return [String]
    # @!attribute effective_mode
    #   <p>The effective package group origin restriction setting. If the value of <code>mode</code> is <code>ALLOW</code>, 
    #         <code>ALLOW_SPECIFIC_REPOSITORIES</code>, or <code>BLOCK</code>, then the value of <code>effectiveMode</code> 
    #         is the same. Otherwise, when the value of <code>mode</code> is <code>INHERIT</code>, then the value of <code>effectiveMode</code> is the value of 
    #         <code>mode</code> of the first parent group which does not have a value of <code>INHERIT</code>.</p>
    #   @return [String]
    # @!attribute inherited_from
    #   <p>The parent package group that the package group origin restrictions are inherited from.</p>
    #   @return [Types::PackageGroupReference]
    # @!attribute repositories_count
    #   <p>The number of repositories in the allowed repository list.</p>
    #   @return [Integer]
    class PackageGroupOriginRestriction < Struct.new(
      :mode,
      :effective_mode,
      :inherited_from,
      :repositories_count,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the identifiers of a package group.</p>
    # @!attribute arn
    #   <p>
    #         The ARN of the package group.
    #       </p>
    #   @return [String]
    # @!attribute pattern
    #   <p>
    #         The pattern of the package group. The pattern determines which packages are associated with the package group, and is 
    #         also the identifier of the package group.
    #       </p>
    #   @return [String]
    class PackageGroupReference < Struct.new(
      :arn,
      :pattern,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about a package group.</p>
    # @!attribute arn
    #   <p>
    #         The ARN of the package group.
    #       </p>
    #   @return [String]
    # @!attribute pattern
    #   <p>
    #         The pattern of the package group. The pattern determines which packages are associated with the package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>
    #         The domain that contains the package group.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>A timestamp that represents the date and time the repository was created.</p>
    #   @return [Time]
    # @!attribute contact_info
    #   <p>
    #         The contact information of the package group.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         The description of the package group.
    #       </p>
    #   @return [String]
    # @!attribute origin_configuration
    #   <p>Details about the package origin configuration of a package group.</p>
    #   @return [Types::PackageGroupOriginConfiguration]
    # @!attribute parent
    #   <p>
    #         The direct parent package group of the package group.
    #       </p>
    #   @return [Types::PackageGroupReference]
    class PackageGroupSummary < Struct.new(
      :arn,
      :pattern,
      :domain_name,
      :domain_owner,
      :created_time,
      :contact_info,
      :description,
      :origin_configuration,
      :parent,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the package origin configuration of a package.</p>
    # @!attribute restrictions
    #   <p>A <code>PackageOriginRestrictions</code> object that contains information 
    #       about the upstream and publish package origin configuration for the package.</p>
    #   @return [Types::PackageOriginRestrictions]
    class PackageOriginConfiguration < Struct.new(
      :restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Details about the origin restrictions set on the package. 
    #       The package origin restrictions determine how new versions of a package 
    #       can be added to a specific repository.</p>
    # @!attribute publish
    #   <p>The package origin configuration that determines if new versions of the package can be published directly to the repository.</p>
    #   @return [String]
    # @!attribute upstream
    #   <p>The package origin configuration that determines if new versions of the package can be added to the repository from an external connection or upstream source.</p>
    #   @return [String]
    class PackageOriginRestrictions < Struct.new(
      :publish,
      :upstream,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Details about a package, including its format, namespace, and name.
    #     </p>
    # @!attribute format
    #   <p>
    #         The format of the package.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package.
    #       </p>
    #   @return [String]
    # @!attribute origin_configuration
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html">PackageOriginConfiguration</a> 
    #         object that contains a <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a> object 
    #         that contains information about the upstream and publish package origin restrictions.</p>
    #   @return [Types::PackageOriginConfiguration]
    class PackageSummary < Struct.new(
      :format,
      :namespace,
      :package,
      :origin_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Details about a package version.
    #     </p>
    # @!attribute format
    #   <p>
    #         The format of the package version.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package_name
    #   <p>
    #         The name of the requested package.
    #       </p>
    #   @return [String]
    # @!attribute display_name
    #   <p>
    #         The name of the package that is displayed. The <code>displayName</code> varies depending 
    #         on the package version's format. For example, if an npm package is named <code>ui</code>, 
    #         is in the namespace <code>vue</code>, and has the format <code>npm</code>, then 
    #         the <code>displayName</code> is <code>@vue/ui</code>.
    #       </p>
    #   @return [String]
    # @!attribute version
    #   <p>
    #         The version of the package.
    #       </p>
    #   @return [String]
    # @!attribute summary
    #   <p>
    #         A summary of the package version. The summary is extracted from the package. The information in and 
    #         detail level of the summary depends on the package version's format.
    #       </p>
    #   @return [String]
    # @!attribute home_page
    #   <p>
    #         The homepage associated with the package. 
    #       </p>
    #   @return [String]
    # @!attribute source_code_repository
    #   <p>
    #         The repository for the source code in the package version, or the source code used to build it.
    #       </p>
    #   @return [String]
    # @!attribute published_time
    #   <p>
    #         A timestamp that contains the date and time the package version was published.
    #       </p>
    #   @return [Time]
    # @!attribute licenses
    #   <p>
    #         Information about licenses associated with the package version.
    #       </p>
    #   @return [Array<Types::LicenseInfo>]
    # @!attribute revision
    #   <p>
    #         The revision of the package version.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         A string that contains the status of the package version.
    #       </p>
    #   @return [String]
    # @!attribute origin
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html">PackageVersionOrigin</a> object that contains 
    #       information about how the package version was added to the repository.</p>
    #   @return [Types::PackageVersionOrigin]
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
      :origin,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>l
    #        An error associated with package.
    #    </p>
    # @!attribute error_code
    #   <p> The error code associated with the error. Valid error codes are: </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>ALREADY_EXISTS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_REVISION</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>MISMATCHED_STATUS</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_ALLOWED</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>NOT_FOUND</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>SKIPPED</code>
    #                  </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute error_message
    #   <p>
    #            The error message associated with the error.
    #        </p>
    #   @return [String]
    class PackageVersionError < Struct.new(
      :error_code,
      :error_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about how a package version was added to a repository.</p>
    # @!attribute domain_entry_point
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainEntryPoint.html">DomainEntryPoint</a> object that contains 
    #       information about from which repository or external connection the package version was added to the domain.</p>
    #   @return [Types::DomainEntryPoint]
    # @!attribute origin_type
    #   <p>Describes how the package version was originally added to the domain. An <code>INTERNAL</code> origin type means the package version was published 
    #       directly to a repository in the domain. An <code>EXTERNAL</code> origin type means the package version was ingested from an external connection.</p>
    #   @return [String]
    class PackageVersionOrigin < Struct.new(
      :domain_entry_point,
      :origin_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #        Details about a package version, including its status, version, and revision. The 
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListPackageVersions.html">ListPackageVersions</a> 
    #        operation returns a list of <code>PackageVersionSummary</code> objects.
    #      </p>
    # @!attribute version
    #   <p>
    #           Information about a package version.
    #          </p>
    #   @return [String]
    # @!attribute revision
    #   <p>
    #         The revision associated with a package version.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         A string that contains the status of the package version. It can be one of the following:
    #       </p>
    #   @return [String]
    # @!attribute origin
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html">PackageVersionOrigin</a> object that contains information 
    #       about how the package version was added to the repository.</p>
    #   @return [Types::PackageVersionOrigin]
    class PackageVersionSummary < Struct.new(
      :version,
      :revision,
      :status,
      :origin,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository that contains the package version to publish.</p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces.</p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository that the package version will be published to.</p>
    #   @return [String]
    # @!attribute format
    #   <p>A format that specifies the type of the package version with the requested asset file.</p>
    #            <p>The only supported value is <code>generic</code>.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version to publish.</p>
    #   @return [String]
    # @!attribute package
    #   <p>The name of the package version to publish.</p>
    #   @return [String]
    # @!attribute package_version
    #   <p>The package version to publish (for example, <code>3.5.2</code>).</p>
    #   @return [String]
    # @!attribute asset_content
    #   <p>The content of the asset to publish.</p>
    #   @return [String]
    # @!attribute asset_name
    #   <p>The name of the asset to publish. Asset names can include Unicode letters and numbers, and
    #         the following special characters: <code>~ ! @ ^ & ( ) - ` _ + [ ] { } ; , .
    #           `</code>
    #            </p>
    #   @return [String]
    # @!attribute asset_sha256
    #   <p>The SHA256 hash of the <code>assetContent</code> to publish. This value must be calculated
    #         by the caller and provided with the request (see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages">Publishing a generic package</a> in the <i>CodeArtifact User
    #             Guide</i>).</p>
    #            <p>This value is used as an integrity check to verify that the <code>assetContent</code> has
    #         not changed after it was originally sent.</p>
    #   @return [String]
    # @!attribute unfinished
    #   <p>Specifies whether the package version should remain in the <code>unfinished</code>
    #         state. If omitted, the package version status will be set to <code>Published</code> (see
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status">Package version status</a> in the <i>CodeArtifact User Guide</i>).</p>
    #            <p>Valid values: <code>unfinished</code>
    #            </p>
    #   @return [Boolean]
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
      :unfinished,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute format
    #   <p>The format of the package version.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version.</p>
    #   @return [String]
    # @!attribute package
    #   <p>The name of the package.</p>
    #   @return [String]
    # @!attribute version
    #   <p>The version of the package.</p>
    #   @return [String]
    # @!attribute version_revision
    #   <p>The revision of the package version.</p>
    #   @return [String]
    # @!attribute status
    #   <p>A string that contains the status of the package version. For more information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status">Package version status</a> in the <i>CodeArtifact User Guide</i>.</p>
    #   @return [String]
    # @!attribute asset
    #   <p>An <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html">AssetSummary</a> for the published asset.</p>
    #   @return [Types::AssetSummary]
    class PublishPackageVersionResult < Struct.new(
      :format,
      :namespace,
      :package,
      :version,
      :version_revision,
      :status,
      :asset,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain on which to set the resource policy.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute policy_revision
    #   <p>
    #           The current revision of the resource policy to be set. This revision is used for optimistic locking, which
    #           prevents others from overwriting your changes to the domain's resource policy.
    #         </p>
    #   @return [String]
    # @!attribute policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided domain. </p>
    #   @return [String]
    class PutDomainPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :policy_revision,
      :policy_document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p> The resource policy that was set after processing the request. </p>
    #   @return [Types::ResourcePolicy]
    class PutDomainPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>The name of the domain that contains the repository that contains the package.</p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>The name of the repository that contains the package.</p>
    #   @return [String]
    # @!attribute format
    #   <p>A format that specifies the type of the package to be updated.</p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package to be updated. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>The name of the package to be updated.</p>
    #   @return [String]
    # @!attribute restrictions
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a> 
    #         object that contains information about the <code>upstream</code> and <code>publish</code> package origin restrictions. 
    #         The <code>upstream</code> restriction determines if new package versions can be ingested or retained from external connections or upstream repositories. 
    #       The <code>publish</code> restriction determines if new package versions can be published directly to the repository.</p>
    #            <p>You must include both the desired <code>upstream</code> and <code>publish</code> restrictions.</p>
    #   @return [Types::PackageOriginRestrictions]
    class PutPackageOriginConfigurationRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :format,
      :namespace,
      :package,
      :restrictions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute origin_configuration
    #   <p>A <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html">PackageOriginConfiguration</a> 
    #         object that describes the origin configuration set for the package. It contains a 
    #         <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html">PackageOriginRestrictions</a> 
    #         object that describes how new versions of the package can be introduced to the repository.</p>
    #   @return [Types::PackageOriginConfiguration]
    class PutPackageOriginConfigurationResult < Struct.new(
      :origin_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #           The name of the domain containing the repository to set the resource policy on.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p> The name of the repository to set the resource policy on. </p>
    #   @return [String]
    # @!attribute policy_revision
    #   <p>
    #           Sets the revision of the resource policy that specifies permissions to access the repository. 
    #           This revision is used for optimistic locking, which prevents others from overwriting your 
    #           changes to the repository's resource policy.
    #         </p>
    #   @return [String]
    # @!attribute policy_document
    #   <p> A valid displayable JSON Aspen policy string to be set as the access control resource
    #         policy on the provided repository. </p>
    #   @return [String]
    class PutRepositoryPermissionsPolicyRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :policy_revision,
      :policy_document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p> The resource policy that was set after processing the request. </p>
    #   @return [Types::ResourcePolicy]
    class PutRepositoryPermissionsPolicyResult < Struct.new(
      :policy,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> The details of a repository stored in CodeArtifact. A CodeArtifact repository contains a set of
    #       package versions, each of which maps to a set of assets. Repositories are polyglot—a single
    #       repository can contain packages of any supported type. Each repository exposes endpoints for
    #       fetching and publishing packages using tools like the <code>npm</code> CLI, the Maven CLI
    #         (<code>mvn</code>), and <code>pip</code>. You can create up to 100 repositories per Amazon Web Services
    #       account. </p>
    # @!attribute name
    #   <p>
    #           The name of the repository.
    #          </p>
    #   @return [String]
    # @!attribute administrator_account
    #   <p> The 12-digit account number of the Amazon Web Services account that manages the repository. </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>
    #           The name of the domain that contains the repository.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The Amazon Resource Name (ARN) of the repository. </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         A text description of the repository.
    #       </p>
    #   @return [String]
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more 
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #   @return [Array<Types::UpstreamRepositoryInfo>]
    # @!attribute external_connections
    #   <p>
    #         An array of external connections associated with the repository.
    #       </p>
    #   @return [Array<Types::RepositoryExternalConnectionInfo>]
    # @!attribute created_time
    #   <p>A timestamp that represents the date and time the repository was created.</p>
    #   @return [Time]
    class RepositoryDescription < Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      :upstreams,
      :external_connections,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Contains information about the external connection of a repository.
    #       </p>
    # @!attribute external_connection_name
    #   <p> The name of the external connection associated with a repository. </p>
    #   @return [String]
    # @!attribute package_format
    #   <p>
    #           The package format associated with a repository's external connection. The valid package formats are:
    #         </p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>npm</code>: A Node Package Manager (npm) package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>pypi</code>: A Python Package Index (PyPI) package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>nuget</code>: A NuGet package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>generic</code>: A generic package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ruby</code>: A Ruby package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>swift</code>: A Swift package.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>cargo</code>: A Cargo package.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>
    #           The status of the external connection of a repository. There is one valid value, <code>Available</code>.
    #         </p>
    #   @return [String]
    class RepositoryExternalConnectionInfo < Struct.new(
      :external_connection_name,
      :package_format,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p> Details about a repository, including its Amazon Resource Name (ARN), description, and
    #       domain information. The <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_ListRepositories.html">ListRepositories</a> operation returns a list of
    #         <code>RepositorySummary</code> objects. </p>
    # @!attribute name
    #   <p>
    #            The name of the repository.
    #         </p>
    #   @return [String]
    # @!attribute administrator_account
    #   <p>
    #            The Amazon Web Services account ID that manages the repository.
    #         </p>
    #   @return [String]
    # @!attribute domain_name
    #   <p>
    #            The name of the domain that contains the repository.
    #         </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute arn
    #   <p> The ARN of the repository. </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         The description of the repository.
    #       </p>
    #   @return [String]
    # @!attribute created_time
    #   <p>A timestamp that represents the date and time the repository was created.</p>
    #   @return [Time]
    class RepositorySummary < Struct.new(
      :name,
      :administrator_account,
      :domain_name,
      :domain_owner,
      :arn,
      :description,
      :created_time,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The operation did not succeed because the resource requested is not found in the service.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         An CodeArtifact resource policy that contains a resource ARN, document details, and a revision.
    #       </p>
    # @!attribute resource_arn
    #   <p>
    #           The ARN of the resource associated with the resource policy
    #         </p>
    #   @return [String]
    # @!attribute revision
    #   <p>
    #           The current revision of the resource policy.
    #         </p>
    #   @return [String]
    # @!attribute document
    #   <p>
    #         The resource policy formatted in JSON.
    #       </p>
    #   @return [String]
    class ResourcePolicy < Struct.new(
      :resource_arn,
      :revision,
      :document,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         The operation did not succeed because it would have exceeded a service limit for your account.
    #       </p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>
    #         The ID of the resource.
    #       </p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>
    #         The type of Amazon Web Services resource.
    #       </p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       Contains the revision and status of a package version.
    #     </p>
    # @!attribute revision
    #   <p>
    #         The revision of a package version.
    #       </p>
    #   @return [String]
    # @!attribute status
    #   <p>
    #         The status of a package version.
    #       </p>
    #   @return [String]
    class SuccessfulPackageVersionInfo < Struct.new(
      :revision,
      :status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>A tag is a key-value pair that can be used to manage, search for, or filter resources in CodeArtifact.</p>
    # @!attribute key
    #   <p>The tag key.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The tag value.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags you want to modify or add to the resource.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The operation did not succeed because too many requests are sent to the service.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>
    #         The time period, in seconds, to wait before retrying the request.
    #       </p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResult < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain which contains the package group for which to update the origin configuration.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>
    #         The pattern of the package group for which to update the origin configuration.
    #       </p>
    #   @return [String]
    # @!attribute restrictions
    #   <p>
    #           The origin configuration settings that determine how package versions can enter repositories.
    #         </p>
    #   @return [Hash<String, String>]
    # @!attribute add_allowed_repositories
    #   <p>The repository name and restrictions to add to the allowed repository list of the specified package group.</p>
    #   @return [Array<Types::PackageGroupAllowedRepository>]
    # @!attribute remove_allowed_repositories
    #   <p>The repository name and restrictions to remove from the allowed repository list of the specified package group.</p>
    #   @return [Array<Types::PackageGroupAllowedRepository>]
    class UpdatePackageGroupOriginConfigurationRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :restrictions,
      :add_allowed_repositories,
      :remove_allowed_repositories,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>
    #         The package group and information about it after processing the request.
    #       </p>
    #   @return [Types::PackageGroupDescription]
    # @!attribute allowed_repository_updates
    #   <p>Information about the updated allowed repositories after processing the request.</p>
    #   @return [Hash<String, Hash<String, Array<String>>>]
    class UpdatePackageGroupOriginConfigurationResult < Struct.new(
      :package_group,
      :allowed_repository_updates,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain which contains the package group to be updated.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute package_group
    #   <p>
    #         The pattern of the package group to be updated.
    #       </p>
    #   @return [String]
    # @!attribute contact_info
    #   <p>
    #         Contact information which you want to update the requested package group with.
    #       </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #         The description you want to update the requested package group with.
    #       </p>
    #   @return [String]
    class UpdatePackageGroupRequest < Struct.new(
      :domain,
      :domain_owner,
      :package_group,
      :contact_info,
      :description,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute package_group
    #   <p>
    #         The package group and information about it after the request has been processed.
    #       </p>
    #   @return [Types::PackageGroupDescription]
    class UpdatePackageGroupResult < Struct.new(
      :package_group,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #         The name of the domain that contains the repository that contains the package versions with a status to be updated.
    #       </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #         The repository that contains the package versions with the status you want to update. 
    #       </p>
    #   @return [String]
    # @!attribute format
    #   <p>
    #         A format that specifies the type of the package with the statuses to update.
    #       </p>
    #   @return [String]
    # @!attribute namespace
    #   <p>The namespace of the package version to be updated. The package component that specifies its 
    #         namespace depends on its type. For example:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #             The namespace of a Maven package version is its <code>groupId</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>
    #             The namespace of an npm or Swift package version is its <code>scope</code>.
    #           </p>
    #               </li>
    #               <li>
    #                  <p>The namespace of a generic package is its <code>namespace</code>.</p>
    #               </li>
    #               <li>
    #                  <p>
    #             Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions 
    #             of those formats do not have a namespace.
    #           </p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute package
    #   <p>
    #         The name of the package with the version statuses to update.
    #       </p>
    #   @return [String]
    # @!attribute versions
    #   <p>
    #         An array of strings that specify the versions of the package with the statuses to update.
    #       </p>
    #   @return [Array<String>]
    # @!attribute version_revisions
    #   <p> A map of package versions and package version revisions. The map <code>key</code> is the
    #         package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the
    #         package version revision. </p>
    #   @return [Hash<String, String>]
    # @!attribute expected_status
    #   <p> The package version’s expected status before it is updated. If
    #           <code>expectedStatus</code> is provided, the package version's status is updated only if its
    #         status at the time <code>UpdatePackageVersionsStatus</code> is called matches
    #           <code>expectedStatus</code>. </p>
    #   @return [String]
    # @!attribute target_status
    #   <p>
    #         The status you want to change the package version status to.
    #       </p>
    #   @return [String]
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
      :target_status,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute successful_versions
    #   <p>
    #         A list of <code>PackageVersionError</code> objects, one for each package version with 
    #         a status that failed to update.
    #       </p>
    #   @return [Hash<String, Types::SuccessfulPackageVersionInfo>]
    # @!attribute failed_versions
    #   <p> A list of <code>SuccessfulPackageVersionInfo</code> objects, one for each package version
    #         with a status that successfully updated. </p>
    #   @return [Hash<String, Types::PackageVersionError>]
    class UpdatePackageVersionsStatusResult < Struct.new(
      :successful_versions,
      :failed_versions,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute domain
    #   <p>
    #            The name of the domain associated with the repository to update.
    #          </p>
    #   @return [String]
    # @!attribute domain_owner
    #   <p>
    #           The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include 
    #           dashes or spaces.
    #         </p>
    #   @return [String]
    # @!attribute repository
    #   <p>
    #            The name of the repository to update.
    #          </p>
    #   @return [String]
    # @!attribute description
    #   <p>
    #            An updated repository description.
    #          </p>
    #   @return [String]
    # @!attribute upstreams
    #   <p> A list of upstream repositories to associate with the repository. The order of the upstream repositories 
    #           in the list determines their priority order when CodeArtifact looks for a requested package version. For more 
    #           information, see <a href="https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html">Working with upstream repositories</a>. </p>
    #   @return [Array<Types::UpstreamRepository>]
    class UpdateRepositoryRequest < Struct.new(
      :domain,
      :domain_owner,
      :repository,
      :description,
      :upstreams,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute repository
    #   <p>
    #            The updated repository.
    #          </p>
    #   @return [Types::RepositoryDescription]
    class UpdateRepositoryResult < Struct.new(
      :repository,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #        Information about an upstream repository. A list of <code>UpstreamRepository</code> objects is an input parameter to
    #        <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_CreateRepository.html">CreateRepository</a>
    #        and <a href="https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_UpdateRepository.html">UpdateRepository</a>.
    #      </p>
    # @!attribute repository_name
    #   <p> The name of an upstream repository. </p>
    #   @return [String]
    class UpstreamRepository < Struct.new(
      :repository_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #         Information about an upstream repository.
    #       </p>
    # @!attribute repository_name
    #   <p> The name of an upstream repository. </p>
    #   @return [String]
    class UpstreamRepositoryInfo < Struct.new(
      :repository_name,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>
    #       The operation did not succeed because a parameter in the request was sent with an invalid value.
    #     </p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>
    #         
    #       </p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      :reason,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
