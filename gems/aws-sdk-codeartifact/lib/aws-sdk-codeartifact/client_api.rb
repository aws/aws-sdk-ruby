# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CodeArtifact
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountId = Shapes::StringShape.new(name: 'AccountId')
    AllowPublish = Shapes::StringShape.new(name: 'AllowPublish')
    AllowUpstream = Shapes::StringShape.new(name: 'AllowUpstream')
    Arn = Shapes::StringShape.new(name: 'Arn')
    Asset = Shapes::BlobShape.new(name: 'Asset', streaming: true)
    AssetHashes = Shapes::MapShape.new(name: 'AssetHashes')
    AssetName = Shapes::StringShape.new(name: 'AssetName')
    AssetSummary = Shapes::StructureShape.new(name: 'AssetSummary')
    AssetSummaryList = Shapes::ListShape.new(name: 'AssetSummaryList')
    AssociateExternalConnectionRequest = Shapes::StructureShape.new(name: 'AssociateExternalConnectionRequest')
    AssociateExternalConnectionResult = Shapes::StructureShape.new(name: 'AssociateExternalConnectionResult')
    AuthorizationTokenDurationSeconds = Shapes::IntegerShape.new(name: 'AuthorizationTokenDurationSeconds')
    BooleanOptional = Shapes::BooleanShape.new(name: 'BooleanOptional')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CopyPackageVersionsRequest = Shapes::StructureShape.new(name: 'CopyPackageVersionsRequest')
    CopyPackageVersionsResult = Shapes::StructureShape.new(name: 'CopyPackageVersionsResult')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResult = Shapes::StructureShape.new(name: 'CreateDomainResult')
    CreateRepositoryRequest = Shapes::StructureShape.new(name: 'CreateRepositoryRequest')
    CreateRepositoryResult = Shapes::StructureShape.new(name: 'CreateRepositoryResult')
    DeleteDomainPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'DeleteDomainPermissionsPolicyRequest')
    DeleteDomainPermissionsPolicyResult = Shapes::StructureShape.new(name: 'DeleteDomainPermissionsPolicyResult')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResult = Shapes::StructureShape.new(name: 'DeleteDomainResult')
    DeletePackageRequest = Shapes::StructureShape.new(name: 'DeletePackageRequest')
    DeletePackageResult = Shapes::StructureShape.new(name: 'DeletePackageResult')
    DeletePackageVersionsRequest = Shapes::StructureShape.new(name: 'DeletePackageVersionsRequest')
    DeletePackageVersionsResult = Shapes::StructureShape.new(name: 'DeletePackageVersionsResult')
    DeleteRepositoryPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryPermissionsPolicyRequest')
    DeleteRepositoryPermissionsPolicyResult = Shapes::StructureShape.new(name: 'DeleteRepositoryPermissionsPolicyResult')
    DeleteRepositoryRequest = Shapes::StructureShape.new(name: 'DeleteRepositoryRequest')
    DeleteRepositoryResult = Shapes::StructureShape.new(name: 'DeleteRepositoryResult')
    DescribeDomainRequest = Shapes::StructureShape.new(name: 'DescribeDomainRequest')
    DescribeDomainResult = Shapes::StructureShape.new(name: 'DescribeDomainResult')
    DescribePackageRequest = Shapes::StructureShape.new(name: 'DescribePackageRequest')
    DescribePackageResult = Shapes::StructureShape.new(name: 'DescribePackageResult')
    DescribePackageVersionRequest = Shapes::StructureShape.new(name: 'DescribePackageVersionRequest')
    DescribePackageVersionResult = Shapes::StructureShape.new(name: 'DescribePackageVersionResult')
    DescribeRepositoryRequest = Shapes::StructureShape.new(name: 'DescribeRepositoryRequest')
    DescribeRepositoryResult = Shapes::StructureShape.new(name: 'DescribeRepositoryResult')
    Description = Shapes::StringShape.new(name: 'Description')
    DisassociateExternalConnectionRequest = Shapes::StructureShape.new(name: 'DisassociateExternalConnectionRequest')
    DisassociateExternalConnectionResult = Shapes::StructureShape.new(name: 'DisassociateExternalConnectionResult')
    DisposePackageVersionsRequest = Shapes::StructureShape.new(name: 'DisposePackageVersionsRequest')
    DisposePackageVersionsResult = Shapes::StructureShape.new(name: 'DisposePackageVersionsResult')
    DomainDescription = Shapes::StructureShape.new(name: 'DomainDescription')
    DomainEntryPoint = Shapes::StructureShape.new(name: 'DomainEntryPoint')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainStatus = Shapes::StringShape.new(name: 'DomainStatus')
    DomainSummary = Shapes::StructureShape.new(name: 'DomainSummary')
    DomainSummaryList = Shapes::ListShape.new(name: 'DomainSummaryList')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    ExternalConnectionName = Shapes::StringShape.new(name: 'ExternalConnectionName')
    ExternalConnectionStatus = Shapes::StringShape.new(name: 'ExternalConnectionStatus')
    GetAuthorizationTokenRequest = Shapes::StructureShape.new(name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResult = Shapes::StructureShape.new(name: 'GetAuthorizationTokenResult')
    GetDomainPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'GetDomainPermissionsPolicyRequest')
    GetDomainPermissionsPolicyResult = Shapes::StructureShape.new(name: 'GetDomainPermissionsPolicyResult')
    GetPackageVersionAssetRequest = Shapes::StructureShape.new(name: 'GetPackageVersionAssetRequest')
    GetPackageVersionAssetResult = Shapes::StructureShape.new(name: 'GetPackageVersionAssetResult')
    GetPackageVersionReadmeRequest = Shapes::StructureShape.new(name: 'GetPackageVersionReadmeRequest')
    GetPackageVersionReadmeResult = Shapes::StructureShape.new(name: 'GetPackageVersionReadmeResult')
    GetRepositoryEndpointRequest = Shapes::StructureShape.new(name: 'GetRepositoryEndpointRequest')
    GetRepositoryEndpointResult = Shapes::StructureShape.new(name: 'GetRepositoryEndpointResult')
    GetRepositoryPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'GetRepositoryPermissionsPolicyRequest')
    GetRepositoryPermissionsPolicyResult = Shapes::StructureShape.new(name: 'GetRepositoryPermissionsPolicyResult')
    HashAlgorithm = Shapes::StringShape.new(name: 'HashAlgorithm')
    HashValue = Shapes::StringShape.new(name: 'HashValue')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    LicenseInfo = Shapes::StructureShape.new(name: 'LicenseInfo')
    LicenseInfoList = Shapes::ListShape.new(name: 'LicenseInfoList')
    ListDomainsMaxResults = Shapes::IntegerShape.new(name: 'ListDomainsMaxResults')
    ListDomainsRequest = Shapes::StructureShape.new(name: 'ListDomainsRequest')
    ListDomainsResult = Shapes::StructureShape.new(name: 'ListDomainsResult')
    ListPackageVersionAssetsMaxResults = Shapes::IntegerShape.new(name: 'ListPackageVersionAssetsMaxResults')
    ListPackageVersionAssetsRequest = Shapes::StructureShape.new(name: 'ListPackageVersionAssetsRequest')
    ListPackageVersionAssetsResult = Shapes::StructureShape.new(name: 'ListPackageVersionAssetsResult')
    ListPackageVersionDependenciesRequest = Shapes::StructureShape.new(name: 'ListPackageVersionDependenciesRequest')
    ListPackageVersionDependenciesResult = Shapes::StructureShape.new(name: 'ListPackageVersionDependenciesResult')
    ListPackageVersionsMaxResults = Shapes::IntegerShape.new(name: 'ListPackageVersionsMaxResults')
    ListPackageVersionsRequest = Shapes::StructureShape.new(name: 'ListPackageVersionsRequest')
    ListPackageVersionsResult = Shapes::StructureShape.new(name: 'ListPackageVersionsResult')
    ListPackagesMaxResults = Shapes::IntegerShape.new(name: 'ListPackagesMaxResults')
    ListPackagesRequest = Shapes::StructureShape.new(name: 'ListPackagesRequest')
    ListPackagesResult = Shapes::StructureShape.new(name: 'ListPackagesResult')
    ListRepositoriesInDomainMaxResults = Shapes::IntegerShape.new(name: 'ListRepositoriesInDomainMaxResults')
    ListRepositoriesInDomainRequest = Shapes::StructureShape.new(name: 'ListRepositoriesInDomainRequest')
    ListRepositoriesInDomainResult = Shapes::StructureShape.new(name: 'ListRepositoriesInDomainResult')
    ListRepositoriesMaxResults = Shapes::IntegerShape.new(name: 'ListRepositoriesMaxResults')
    ListRepositoriesRequest = Shapes::StructureShape.new(name: 'ListRepositoriesRequest')
    ListRepositoriesResult = Shapes::StructureShape.new(name: 'ListRepositoriesResult')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Shapes::StructureShape.new(name: 'ListTagsForResourceResult')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongOptional = Shapes::IntegerShape.new(name: 'LongOptional')
    PackageDependency = Shapes::StructureShape.new(name: 'PackageDependency')
    PackageDependencyList = Shapes::ListShape.new(name: 'PackageDependencyList')
    PackageDescription = Shapes::StructureShape.new(name: 'PackageDescription')
    PackageFormat = Shapes::StringShape.new(name: 'PackageFormat')
    PackageName = Shapes::StringShape.new(name: 'PackageName')
    PackageNamespace = Shapes::StringShape.new(name: 'PackageNamespace')
    PackageOriginConfiguration = Shapes::StructureShape.new(name: 'PackageOriginConfiguration')
    PackageOriginRestrictions = Shapes::StructureShape.new(name: 'PackageOriginRestrictions')
    PackageSummary = Shapes::StructureShape.new(name: 'PackageSummary')
    PackageSummaryList = Shapes::ListShape.new(name: 'PackageSummaryList')
    PackageVersion = Shapes::StringShape.new(name: 'PackageVersion')
    PackageVersionDescription = Shapes::StructureShape.new(name: 'PackageVersionDescription')
    PackageVersionError = Shapes::StructureShape.new(name: 'PackageVersionError')
    PackageVersionErrorCode = Shapes::StringShape.new(name: 'PackageVersionErrorCode')
    PackageVersionErrorMap = Shapes::MapShape.new(name: 'PackageVersionErrorMap')
    PackageVersionList = Shapes::ListShape.new(name: 'PackageVersionList')
    PackageVersionOrigin = Shapes::StructureShape.new(name: 'PackageVersionOrigin')
    PackageVersionOriginType = Shapes::StringShape.new(name: 'PackageVersionOriginType')
    PackageVersionRevision = Shapes::StringShape.new(name: 'PackageVersionRevision')
    PackageVersionRevisionMap = Shapes::MapShape.new(name: 'PackageVersionRevisionMap')
    PackageVersionSortType = Shapes::StringShape.new(name: 'PackageVersionSortType')
    PackageVersionStatus = Shapes::StringShape.new(name: 'PackageVersionStatus')
    PackageVersionSummary = Shapes::StructureShape.new(name: 'PackageVersionSummary')
    PackageVersionSummaryList = Shapes::ListShape.new(name: 'PackageVersionSummaryList')
    PaginationToken = Shapes::StringShape.new(name: 'PaginationToken')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    PolicyRevision = Shapes::StringShape.new(name: 'PolicyRevision')
    PublishPackageVersionRequest = Shapes::StructureShape.new(name: 'PublishPackageVersionRequest')
    PublishPackageVersionResult = Shapes::StructureShape.new(name: 'PublishPackageVersionResult')
    PutDomainPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'PutDomainPermissionsPolicyRequest')
    PutDomainPermissionsPolicyResult = Shapes::StructureShape.new(name: 'PutDomainPermissionsPolicyResult')
    PutPackageOriginConfigurationRequest = Shapes::StructureShape.new(name: 'PutPackageOriginConfigurationRequest')
    PutPackageOriginConfigurationResult = Shapes::StructureShape.new(name: 'PutPackageOriginConfigurationResult')
    PutRepositoryPermissionsPolicyRequest = Shapes::StructureShape.new(name: 'PutRepositoryPermissionsPolicyRequest')
    PutRepositoryPermissionsPolicyResult = Shapes::StructureShape.new(name: 'PutRepositoryPermissionsPolicyResult')
    RepositoryDescription = Shapes::StructureShape.new(name: 'RepositoryDescription')
    RepositoryExternalConnectionInfo = Shapes::StructureShape.new(name: 'RepositoryExternalConnectionInfo')
    RepositoryExternalConnectionInfoList = Shapes::ListShape.new(name: 'RepositoryExternalConnectionInfoList')
    RepositoryName = Shapes::StringShape.new(name: 'RepositoryName')
    RepositorySummary = Shapes::StructureShape.new(name: 'RepositorySummary')
    RepositorySummaryList = Shapes::ListShape.new(name: 'RepositorySummaryList')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePolicy = Shapes::StructureShape.new(name: 'ResourcePolicy')
    ResourceType = Shapes::StringShape.new(name: 'ResourceType')
    RetryAfterSeconds = Shapes::IntegerShape.new(name: 'RetryAfterSeconds')
    SHA256 = Shapes::StringShape.new(name: 'SHA256')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    String = Shapes::StringShape.new(name: 'String')
    String255 = Shapes::StringShape.new(name: 'String255')
    SuccessfulPackageVersionInfo = Shapes::StructureShape.new(name: 'SuccessfulPackageVersionInfo')
    SuccessfulPackageVersionInfoMap = Shapes::MapShape.new(name: 'SuccessfulPackageVersionInfoMap')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResult = Shapes::StructureShape.new(name: 'TagResourceResult')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResult = Shapes::StructureShape.new(name: 'UntagResourceResult')
    UpdatePackageVersionsStatusRequest = Shapes::StructureShape.new(name: 'UpdatePackageVersionsStatusRequest')
    UpdatePackageVersionsStatusResult = Shapes::StructureShape.new(name: 'UpdatePackageVersionsStatusResult')
    UpdateRepositoryRequest = Shapes::StructureShape.new(name: 'UpdateRepositoryRequest')
    UpdateRepositoryResult = Shapes::StructureShape.new(name: 'UpdateRepositoryResult')
    UpstreamRepository = Shapes::StructureShape.new(name: 'UpstreamRepository')
    UpstreamRepositoryInfo = Shapes::StructureShape.new(name: 'UpstreamRepositoryInfo')
    UpstreamRepositoryInfoList = Shapes::ListShape.new(name: 'UpstreamRepositoryInfoList')
    UpstreamRepositoryList = Shapes::ListShape.new(name: 'UpstreamRepositoryList')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    ValidationExceptionReason = Shapes::StringShape.new(name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssetHashes.key = Shapes::ShapeRef.new(shape: HashAlgorithm)
    AssetHashes.value = Shapes::ShapeRef.new(shape: HashValue)

    AssetSummary.add_member(:name, Shapes::ShapeRef.new(shape: AssetName, required: true, location_name: "name"))
    AssetSummary.add_member(:size, Shapes::ShapeRef.new(shape: LongOptional, location_name: "size"))
    AssetSummary.add_member(:hashes, Shapes::ShapeRef.new(shape: AssetHashes, location_name: "hashes"))
    AssetSummary.struct_class = Types::AssetSummary

    AssetSummaryList.member = Shapes::ShapeRef.new(shape: AssetSummary)

    AssociateExternalConnectionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    AssociateExternalConnectionRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    AssociateExternalConnectionRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    AssociateExternalConnectionRequest.add_member(:external_connection, Shapes::ShapeRef.new(shape: ExternalConnectionName, required: true, location: "querystring", location_name: "external-connection"))
    AssociateExternalConnectionRequest.struct_class = Types::AssociateExternalConnectionRequest

    AssociateExternalConnectionResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    AssociateExternalConnectionResult.struct_class = Types::AssociateExternalConnectionResult

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ConflictException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ConflictException.struct_class = Types::ConflictException

    CopyPackageVersionsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    CopyPackageVersionsRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    CopyPackageVersionsRequest.add_member(:source_repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "source-repository"))
    CopyPackageVersionsRequest.add_member(:destination_repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "destination-repository"))
    CopyPackageVersionsRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    CopyPackageVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    CopyPackageVersionsRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    CopyPackageVersionsRequest.add_member(:versions, Shapes::ShapeRef.new(shape: PackageVersionList, location_name: "versions"))
    CopyPackageVersionsRequest.add_member(:version_revisions, Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: "versionRevisions"))
    CopyPackageVersionsRequest.add_member(:allow_overwrite, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "allowOverwrite"))
    CopyPackageVersionsRequest.add_member(:include_from_upstream, Shapes::ShapeRef.new(shape: BooleanOptional, location_name: "includeFromUpstream"))
    CopyPackageVersionsRequest.struct_class = Types::CopyPackageVersionsRequest

    CopyPackageVersionsResult.add_member(:successful_versions, Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: "successfulVersions"))
    CopyPackageVersionsResult.add_member(:failed_versions, Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: "failedVersions"))
    CopyPackageVersionsResult.struct_class = Types::CopyPackageVersionsResult

    CreateDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    CreateDomainRequest.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    CreateDomainRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResult.add_member(:domain, Shapes::ShapeRef.new(shape: DomainDescription, location_name: "domain"))
    CreateDomainResult.struct_class = Types::CreateDomainResult

    CreateRepositoryRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    CreateRepositoryRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    CreateRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    CreateRepositoryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    CreateRepositoryRequest.add_member(:upstreams, Shapes::ShapeRef.new(shape: UpstreamRepositoryList, location_name: "upstreams"))
    CreateRepositoryRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    CreateRepositoryRequest.struct_class = Types::CreateRepositoryRequest

    CreateRepositoryResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    CreateRepositoryResult.struct_class = Types::CreateRepositoryResult

    DeleteDomainPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeleteDomainPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeleteDomainPermissionsPolicyRequest.add_member(:policy_revision, Shapes::ShapeRef.new(shape: PolicyRevision, location: "querystring", location_name: "policy-revision"))
    DeleteDomainPermissionsPolicyRequest.struct_class = Types::DeleteDomainPermissionsPolicyRequest

    DeleteDomainPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    DeleteDomainPermissionsPolicyResult.struct_class = Types::DeleteDomainPermissionsPolicyResult

    DeleteDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeleteDomainRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResult.add_member(:domain, Shapes::ShapeRef.new(shape: DomainDescription, location_name: "domain"))
    DeleteDomainResult.struct_class = Types::DeleteDomainResult

    DeletePackageRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeletePackageRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeletePackageRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DeletePackageRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    DeletePackageRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    DeletePackageRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    DeletePackageRequest.struct_class = Types::DeletePackageRequest

    DeletePackageResult.add_member(:deleted_package, Shapes::ShapeRef.new(shape: PackageSummary, location_name: "deletedPackage"))
    DeletePackageResult.struct_class = Types::DeletePackageResult

    DeletePackageVersionsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeletePackageVersionsRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeletePackageVersionsRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DeletePackageVersionsRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    DeletePackageVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    DeletePackageVersionsRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    DeletePackageVersionsRequest.add_member(:versions, Shapes::ShapeRef.new(shape: PackageVersionList, required: true, location_name: "versions"))
    DeletePackageVersionsRequest.add_member(:expected_status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "expectedStatus"))
    DeletePackageVersionsRequest.struct_class = Types::DeletePackageVersionsRequest

    DeletePackageVersionsResult.add_member(:successful_versions, Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: "successfulVersions"))
    DeletePackageVersionsResult.add_member(:failed_versions, Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: "failedVersions"))
    DeletePackageVersionsResult.struct_class = Types::DeletePackageVersionsResult

    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:policy_revision, Shapes::ShapeRef.new(shape: PolicyRevision, location: "querystring", location_name: "policy-revision"))
    DeleteRepositoryPermissionsPolicyRequest.struct_class = Types::DeleteRepositoryPermissionsPolicyRequest

    DeleteRepositoryPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    DeleteRepositoryPermissionsPolicyResult.struct_class = Types::DeleteRepositoryPermissionsPolicyResult

    DeleteRepositoryRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DeleteRepositoryRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DeleteRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DeleteRepositoryRequest.struct_class = Types::DeleteRepositoryRequest

    DeleteRepositoryResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    DeleteRepositoryResult.struct_class = Types::DeleteRepositoryResult

    DescribeDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DescribeDomainRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DescribeDomainRequest.struct_class = Types::DescribeDomainRequest

    DescribeDomainResult.add_member(:domain, Shapes::ShapeRef.new(shape: DomainDescription, location_name: "domain"))
    DescribeDomainResult.struct_class = Types::DescribeDomainResult

    DescribePackageRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DescribePackageRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DescribePackageRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DescribePackageRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    DescribePackageRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    DescribePackageRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    DescribePackageRequest.struct_class = Types::DescribePackageRequest

    DescribePackageResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageDescription, required: true, location_name: "package"))
    DescribePackageResult.struct_class = Types::DescribePackageResult

    DescribePackageVersionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DescribePackageVersionRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DescribePackageVersionRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DescribePackageVersionRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    DescribePackageVersionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    DescribePackageVersionRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    DescribePackageVersionRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    DescribePackageVersionRequest.struct_class = Types::DescribePackageVersionRequest

    DescribePackageVersionResult.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersionDescription, required: true, location_name: "packageVersion"))
    DescribePackageVersionResult.struct_class = Types::DescribePackageVersionResult

    DescribeRepositoryRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DescribeRepositoryRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DescribeRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DescribeRepositoryRequest.struct_class = Types::DescribeRepositoryRequest

    DescribeRepositoryResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    DescribeRepositoryResult.struct_class = Types::DescribeRepositoryResult

    DisassociateExternalConnectionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DisassociateExternalConnectionRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DisassociateExternalConnectionRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DisassociateExternalConnectionRequest.add_member(:external_connection, Shapes::ShapeRef.new(shape: ExternalConnectionName, required: true, location: "querystring", location_name: "external-connection"))
    DisassociateExternalConnectionRequest.struct_class = Types::DisassociateExternalConnectionRequest

    DisassociateExternalConnectionResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    DisassociateExternalConnectionResult.struct_class = Types::DisassociateExternalConnectionResult

    DisposePackageVersionsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    DisposePackageVersionsRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    DisposePackageVersionsRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    DisposePackageVersionsRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    DisposePackageVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    DisposePackageVersionsRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    DisposePackageVersionsRequest.add_member(:versions, Shapes::ShapeRef.new(shape: PackageVersionList, required: true, location_name: "versions"))
    DisposePackageVersionsRequest.add_member(:version_revisions, Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: "versionRevisions"))
    DisposePackageVersionsRequest.add_member(:expected_status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "expectedStatus"))
    DisposePackageVersionsRequest.struct_class = Types::DisposePackageVersionsRequest

    DisposePackageVersionsResult.add_member(:successful_versions, Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: "successfulVersions"))
    DisposePackageVersionsResult.add_member(:failed_versions, Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: "failedVersions"))
    DisposePackageVersionsResult.struct_class = Types::DisposePackageVersionsResult

    DomainDescription.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, location_name: "name"))
    DomainDescription.add_member(:owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "owner"))
    DomainDescription.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DomainDescription.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "status"))
    DomainDescription.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    DomainDescription.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    DomainDescription.add_member(:repository_count, Shapes::ShapeRef.new(shape: Integer, location_name: "repositoryCount"))
    DomainDescription.add_member(:asset_size_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "assetSizeBytes"))
    DomainDescription.add_member(:s3_bucket_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "s3BucketArn"))
    DomainDescription.struct_class = Types::DomainDescription

    DomainEntryPoint.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    DomainEntryPoint.add_member(:external_connection_name, Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: "externalConnectionName"))
    DomainEntryPoint.struct_class = Types::DomainEntryPoint

    DomainSummary.add_member(:name, Shapes::ShapeRef.new(shape: DomainName, location_name: "name"))
    DomainSummary.add_member(:owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "owner"))
    DomainSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    DomainSummary.add_member(:status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "status"))
    DomainSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    DomainSummary.add_member(:encryption_key, Shapes::ShapeRef.new(shape: Arn, location_name: "encryptionKey"))
    DomainSummary.struct_class = Types::DomainSummary

    DomainSummaryList.member = Shapes::ShapeRef.new(shape: DomainSummary)

    GetAuthorizationTokenRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetAuthorizationTokenRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetAuthorizationTokenRequest.add_member(:duration_seconds, Shapes::ShapeRef.new(shape: AuthorizationTokenDurationSeconds, location: "querystring", location_name: "duration"))
    GetAuthorizationTokenRequest.struct_class = Types::GetAuthorizationTokenRequest

    GetAuthorizationTokenResult.add_member(:authorization_token, Shapes::ShapeRef.new(shape: String, location_name: "authorizationToken"))
    GetAuthorizationTokenResult.add_member(:expiration, Shapes::ShapeRef.new(shape: Timestamp, location_name: "expiration"))
    GetAuthorizationTokenResult.struct_class = Types::GetAuthorizationTokenResult

    GetDomainPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetDomainPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetDomainPermissionsPolicyRequest.struct_class = Types::GetDomainPermissionsPolicyRequest

    GetDomainPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    GetDomainPermissionsPolicyResult.struct_class = Types::GetDomainPermissionsPolicyResult

    GetPackageVersionAssetRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetPackageVersionAssetRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetPackageVersionAssetRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    GetPackageVersionAssetRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    GetPackageVersionAssetRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    GetPackageVersionAssetRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    GetPackageVersionAssetRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    GetPackageVersionAssetRequest.add_member(:asset, Shapes::ShapeRef.new(shape: AssetName, required: true, location: "querystring", location_name: "asset"))
    GetPackageVersionAssetRequest.add_member(:package_version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location: "querystring", location_name: "revision"))
    GetPackageVersionAssetRequest.struct_class = Types::GetPackageVersionAssetRequest

    GetPackageVersionAssetResult.add_member(:asset, Shapes::ShapeRef.new(shape: Asset, location_name: "asset"))
    GetPackageVersionAssetResult.add_member(:asset_name, Shapes::ShapeRef.new(shape: AssetName, location: "header", location_name: "X-AssetName"))
    GetPackageVersionAssetResult.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, location: "header", location_name: "X-PackageVersion"))
    GetPackageVersionAssetResult.add_member(:package_version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location: "header", location_name: "X-PackageVersionRevision"))
    GetPackageVersionAssetResult.struct_class = Types::GetPackageVersionAssetResult
    GetPackageVersionAssetResult[:payload] = :asset
    GetPackageVersionAssetResult[:payload_member] = GetPackageVersionAssetResult.member(:asset)

    GetPackageVersionReadmeRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetPackageVersionReadmeRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetPackageVersionReadmeRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    GetPackageVersionReadmeRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    GetPackageVersionReadmeRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    GetPackageVersionReadmeRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    GetPackageVersionReadmeRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    GetPackageVersionReadmeRequest.struct_class = Types::GetPackageVersionReadmeRequest

    GetPackageVersionReadmeResult.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    GetPackageVersionReadmeResult.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    GetPackageVersionReadmeResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    GetPackageVersionReadmeResult.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    GetPackageVersionReadmeResult.add_member(:version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "versionRevision"))
    GetPackageVersionReadmeResult.add_member(:readme, Shapes::ShapeRef.new(shape: String, location_name: "readme"))
    GetPackageVersionReadmeResult.struct_class = Types::GetPackageVersionReadmeResult

    GetRepositoryEndpointRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetRepositoryEndpointRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetRepositoryEndpointRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    GetRepositoryEndpointRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    GetRepositoryEndpointRequest.struct_class = Types::GetRepositoryEndpointRequest

    GetRepositoryEndpointResult.add_member(:repository_endpoint, Shapes::ShapeRef.new(shape: String, location_name: "repositoryEndpoint"))
    GetRepositoryEndpointResult.struct_class = Types::GetRepositoryEndpointResult

    GetRepositoryPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    GetRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    GetRepositoryPermissionsPolicyRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    GetRepositoryPermissionsPolicyRequest.struct_class = Types::GetRepositoryPermissionsPolicyRequest

    GetRepositoryPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    GetRepositoryPermissionsPolicyResult.struct_class = Types::GetRepositoryPermissionsPolicyResult

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    LicenseInfo.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    LicenseInfo.add_member(:url, Shapes::ShapeRef.new(shape: String, location_name: "url"))
    LicenseInfo.struct_class = Types::LicenseInfo

    LicenseInfoList.member = Shapes::ShapeRef.new(shape: LicenseInfo)

    ListDomainsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListDomainsMaxResults, location_name: "maxResults"))
    ListDomainsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDomainsRequest.struct_class = Types::ListDomainsRequest

    ListDomainsResult.add_member(:domains, Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: "domains"))
    ListDomainsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListDomainsResult.struct_class = Types::ListDomainsResult

    ListPackageVersionAssetsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    ListPackageVersionAssetsRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    ListPackageVersionAssetsRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    ListPackageVersionAssetsRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    ListPackageVersionAssetsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    ListPackageVersionAssetsRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    ListPackageVersionAssetsRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    ListPackageVersionAssetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPackageVersionAssetsMaxResults, location: "querystring", location_name: "max-results"))
    ListPackageVersionAssetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListPackageVersionAssetsRequest.struct_class = Types::ListPackageVersionAssetsRequest

    ListPackageVersionAssetsResult.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    ListPackageVersionAssetsResult.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    ListPackageVersionAssetsResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    ListPackageVersionAssetsResult.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    ListPackageVersionAssetsResult.add_member(:version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "versionRevision"))
    ListPackageVersionAssetsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPackageVersionAssetsResult.add_member(:assets, Shapes::ShapeRef.new(shape: AssetSummaryList, location_name: "assets"))
    ListPackageVersionAssetsResult.struct_class = Types::ListPackageVersionAssetsResult

    ListPackageVersionDependenciesRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    ListPackageVersionDependenciesRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    ListPackageVersionDependenciesRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    ListPackageVersionDependenciesRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    ListPackageVersionDependenciesRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    ListPackageVersionDependenciesRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    ListPackageVersionDependenciesRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    ListPackageVersionDependenciesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListPackageVersionDependenciesRequest.struct_class = Types::ListPackageVersionDependenciesRequest

    ListPackageVersionDependenciesResult.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    ListPackageVersionDependenciesResult.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    ListPackageVersionDependenciesResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    ListPackageVersionDependenciesResult.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    ListPackageVersionDependenciesResult.add_member(:version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "versionRevision"))
    ListPackageVersionDependenciesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPackageVersionDependenciesResult.add_member(:dependencies, Shapes::ShapeRef.new(shape: PackageDependencyList, location_name: "dependencies"))
    ListPackageVersionDependenciesResult.struct_class = Types::ListPackageVersionDependenciesResult

    ListPackageVersionsRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    ListPackageVersionsRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    ListPackageVersionsRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    ListPackageVersionsRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    ListPackageVersionsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    ListPackageVersionsRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    ListPackageVersionsRequest.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location: "querystring", location_name: "status"))
    ListPackageVersionsRequest.add_member(:sort_by, Shapes::ShapeRef.new(shape: PackageVersionSortType, location: "querystring", location_name: "sortBy"))
    ListPackageVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPackageVersionsMaxResults, location: "querystring", location_name: "max-results"))
    ListPackageVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListPackageVersionsRequest.add_member(:origin_type, Shapes::ShapeRef.new(shape: PackageVersionOriginType, location: "querystring", location_name: "originType"))
    ListPackageVersionsRequest.struct_class = Types::ListPackageVersionsRequest

    ListPackageVersionsResult.add_member(:default_display_version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "defaultDisplayVersion"))
    ListPackageVersionsResult.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    ListPackageVersionsResult.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    ListPackageVersionsResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    ListPackageVersionsResult.add_member(:versions, Shapes::ShapeRef.new(shape: PackageVersionSummaryList, location_name: "versions"))
    ListPackageVersionsResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPackageVersionsResult.struct_class = Types::ListPackageVersionsResult

    ListPackagesRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    ListPackagesRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    ListPackagesRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    ListPackagesRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location: "querystring", location_name: "format"))
    ListPackagesRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    ListPackagesRequest.add_member(:package_prefix, Shapes::ShapeRef.new(shape: PackageName, location: "querystring", location_name: "package-prefix"))
    ListPackagesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListPackagesMaxResults, location: "querystring", location_name: "max-results"))
    ListPackagesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListPackagesRequest.add_member(:publish, Shapes::ShapeRef.new(shape: AllowPublish, location: "querystring", location_name: "publish"))
    ListPackagesRequest.add_member(:upstream, Shapes::ShapeRef.new(shape: AllowUpstream, location: "querystring", location_name: "upstream"))
    ListPackagesRequest.struct_class = Types::ListPackagesRequest

    ListPackagesResult.add_member(:packages, Shapes::ShapeRef.new(shape: PackageSummaryList, location_name: "packages"))
    ListPackagesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListPackagesResult.struct_class = Types::ListPackagesResult

    ListRepositoriesInDomainRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    ListRepositoriesInDomainRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    ListRepositoriesInDomainRequest.add_member(:administrator_account, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "administrator-account"))
    ListRepositoriesInDomainRequest.add_member(:repository_prefix, Shapes::ShapeRef.new(shape: RepositoryName, location: "querystring", location_name: "repository-prefix"))
    ListRepositoriesInDomainRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRepositoriesInDomainMaxResults, location: "querystring", location_name: "max-results"))
    ListRepositoriesInDomainRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListRepositoriesInDomainRequest.struct_class = Types::ListRepositoriesInDomainRequest

    ListRepositoriesInDomainResult.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: "repositories"))
    ListRepositoriesInDomainResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRepositoriesInDomainResult.struct_class = Types::ListRepositoriesInDomainResult

    ListRepositoriesRequest.add_member(:repository_prefix, Shapes::ShapeRef.new(shape: RepositoryName, location: "querystring", location_name: "repository-prefix"))
    ListRepositoriesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: ListRepositoriesMaxResults, location: "querystring", location_name: "max-results"))
    ListRepositoriesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location: "querystring", location_name: "next-token"))
    ListRepositoriesRequest.struct_class = Types::ListRepositoriesRequest

    ListRepositoriesResult.add_member(:repositories, Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: "repositories"))
    ListRepositoriesResult.add_member(:next_token, Shapes::ShapeRef.new(shape: PaginationToken, location_name: "nextToken"))
    ListRepositoriesResult.struct_class = Types::ListRepositoriesResult

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResult.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "tags"))
    ListTagsForResourceResult.struct_class = Types::ListTagsForResourceResult

    PackageDependency.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    PackageDependency.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    PackageDependency.add_member(:dependency_type, Shapes::ShapeRef.new(shape: String, location_name: "dependencyType"))
    PackageDependency.add_member(:version_requirement, Shapes::ShapeRef.new(shape: String, location_name: "versionRequirement"))
    PackageDependency.struct_class = Types::PackageDependency

    PackageDependencyList.member = Shapes::ShapeRef.new(shape: PackageDependency)

    PackageDescription.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    PackageDescription.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    PackageDescription.add_member(:name, Shapes::ShapeRef.new(shape: PackageName, location_name: "name"))
    PackageDescription.add_member(:origin_configuration, Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: "originConfiguration"))
    PackageDescription.struct_class = Types::PackageDescription

    PackageOriginConfiguration.add_member(:restrictions, Shapes::ShapeRef.new(shape: PackageOriginRestrictions, location_name: "restrictions"))
    PackageOriginConfiguration.struct_class = Types::PackageOriginConfiguration

    PackageOriginRestrictions.add_member(:publish, Shapes::ShapeRef.new(shape: AllowPublish, required: true, location_name: "publish"))
    PackageOriginRestrictions.add_member(:upstream, Shapes::ShapeRef.new(shape: AllowUpstream, required: true, location_name: "upstream"))
    PackageOriginRestrictions.struct_class = Types::PackageOriginRestrictions

    PackageSummary.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    PackageSummary.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    PackageSummary.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    PackageSummary.add_member(:origin_configuration, Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: "originConfiguration"))
    PackageSummary.struct_class = Types::PackageSummary

    PackageSummaryList.member = Shapes::ShapeRef.new(shape: PackageSummary)

    PackageVersionDescription.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    PackageVersionDescription.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    PackageVersionDescription.add_member(:package_name, Shapes::ShapeRef.new(shape: PackageName, location_name: "packageName"))
    PackageVersionDescription.add_member(:display_name, Shapes::ShapeRef.new(shape: String255, location_name: "displayName"))
    PackageVersionDescription.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    PackageVersionDescription.add_member(:summary, Shapes::ShapeRef.new(shape: String, location_name: "summary"))
    PackageVersionDescription.add_member(:home_page, Shapes::ShapeRef.new(shape: String, location_name: "homePage"))
    PackageVersionDescription.add_member(:source_code_repository, Shapes::ShapeRef.new(shape: String, location_name: "sourceCodeRepository"))
    PackageVersionDescription.add_member(:published_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "publishedTime"))
    PackageVersionDescription.add_member(:licenses, Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: "licenses"))
    PackageVersionDescription.add_member(:revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "revision"))
    PackageVersionDescription.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "status"))
    PackageVersionDescription.add_member(:origin, Shapes::ShapeRef.new(shape: PackageVersionOrigin, location_name: "origin"))
    PackageVersionDescription.struct_class = Types::PackageVersionDescription

    PackageVersionError.add_member(:error_code, Shapes::ShapeRef.new(shape: PackageVersionErrorCode, location_name: "errorCode"))
    PackageVersionError.add_member(:error_message, Shapes::ShapeRef.new(shape: ErrorMessage, location_name: "errorMessage"))
    PackageVersionError.struct_class = Types::PackageVersionError

    PackageVersionErrorMap.key = Shapes::ShapeRef.new(shape: PackageVersion)
    PackageVersionErrorMap.value = Shapes::ShapeRef.new(shape: PackageVersionError)

    PackageVersionList.member = Shapes::ShapeRef.new(shape: PackageVersion)

    PackageVersionOrigin.add_member(:domain_entry_point, Shapes::ShapeRef.new(shape: DomainEntryPoint, location_name: "domainEntryPoint"))
    PackageVersionOrigin.add_member(:origin_type, Shapes::ShapeRef.new(shape: PackageVersionOriginType, location_name: "originType"))
    PackageVersionOrigin.struct_class = Types::PackageVersionOrigin

    PackageVersionRevisionMap.key = Shapes::ShapeRef.new(shape: PackageVersion)
    PackageVersionRevisionMap.value = Shapes::ShapeRef.new(shape: PackageVersionRevision)

    PackageVersionSummary.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location_name: "version"))
    PackageVersionSummary.add_member(:revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "revision"))
    PackageVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, required: true, location_name: "status"))
    PackageVersionSummary.add_member(:origin, Shapes::ShapeRef.new(shape: PackageVersionOrigin, location_name: "origin"))
    PackageVersionSummary.struct_class = Types::PackageVersionSummary

    PackageVersionSummaryList.member = Shapes::ShapeRef.new(shape: PackageVersionSummary)

    PublishPackageVersionRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    PublishPackageVersionRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    PublishPackageVersionRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    PublishPackageVersionRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    PublishPackageVersionRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    PublishPackageVersionRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    PublishPackageVersionRequest.add_member(:package_version, Shapes::ShapeRef.new(shape: PackageVersion, required: true, location: "querystring", location_name: "version"))
    PublishPackageVersionRequest.add_member(:asset_content, Shapes::ShapeRef.new(shape: Asset, required: true, location_name: "assetContent"))
    PublishPackageVersionRequest.add_member(:asset_name, Shapes::ShapeRef.new(shape: AssetName, required: true, location: "querystring", location_name: "asset"))
    PublishPackageVersionRequest.add_member(:asset_sha256, Shapes::ShapeRef.new(shape: SHA256, required: true, location: "header", location_name: "x-amz-content-sha256"))
    PublishPackageVersionRequest.add_member(:unfinished, Shapes::ShapeRef.new(shape: BooleanOptional, location: "querystring", location_name: "unfinished"))
    PublishPackageVersionRequest.struct_class = Types::PublishPackageVersionRequest
    PublishPackageVersionRequest[:payload] = :asset_content
    PublishPackageVersionRequest[:payload_member] = PublishPackageVersionRequest.member(:asset_content)

    PublishPackageVersionResult.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "format"))
    PublishPackageVersionResult.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location_name: "namespace"))
    PublishPackageVersionResult.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, location_name: "package"))
    PublishPackageVersionResult.add_member(:version, Shapes::ShapeRef.new(shape: PackageVersion, location_name: "version"))
    PublishPackageVersionResult.add_member(:version_revision, Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: "versionRevision"))
    PublishPackageVersionResult.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "status"))
    PublishPackageVersionResult.add_member(:asset, Shapes::ShapeRef.new(shape: AssetSummary, location_name: "asset"))
    PublishPackageVersionResult.struct_class = Types::PublishPackageVersionResult

    PutDomainPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "domain"))
    PutDomainPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "domainOwner"))
    PutDomainPermissionsPolicyRequest.add_member(:policy_revision, Shapes::ShapeRef.new(shape: PolicyRevision, location_name: "policyRevision"))
    PutDomainPermissionsPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    PutDomainPermissionsPolicyRequest.struct_class = Types::PutDomainPermissionsPolicyRequest

    PutDomainPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    PutDomainPermissionsPolicyResult.struct_class = Types::PutDomainPermissionsPolicyResult

    PutPackageOriginConfigurationRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    PutPackageOriginConfigurationRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    PutPackageOriginConfigurationRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    PutPackageOriginConfigurationRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    PutPackageOriginConfigurationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    PutPackageOriginConfigurationRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    PutPackageOriginConfigurationRequest.add_member(:restrictions, Shapes::ShapeRef.new(shape: PackageOriginRestrictions, required: true, location_name: "restrictions"))
    PutPackageOriginConfigurationRequest.struct_class = Types::PutPackageOriginConfigurationRequest

    PutPackageOriginConfigurationResult.add_member(:origin_configuration, Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: "originConfiguration"))
    PutPackageOriginConfigurationResult.struct_class = Types::PutPackageOriginConfigurationResult

    PutRepositoryPermissionsPolicyRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    PutRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    PutRepositoryPermissionsPolicyRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_revision, Shapes::ShapeRef.new(shape: PolicyRevision, location_name: "policyRevision"))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_document, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "policyDocument"))
    PutRepositoryPermissionsPolicyRequest.struct_class = Types::PutRepositoryPermissionsPolicyRequest

    PutRepositoryPermissionsPolicyResult.add_member(:policy, Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: "policy"))
    PutRepositoryPermissionsPolicyResult.struct_class = Types::PutRepositoryPermissionsPolicyResult

    RepositoryDescription.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "name"))
    RepositoryDescription.add_member(:administrator_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "administratorAccount"))
    RepositoryDescription.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    RepositoryDescription.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "domainOwner"))
    RepositoryDescription.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RepositoryDescription.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RepositoryDescription.add_member(:upstreams, Shapes::ShapeRef.new(shape: UpstreamRepositoryInfoList, location_name: "upstreams"))
    RepositoryDescription.add_member(:external_connections, Shapes::ShapeRef.new(shape: RepositoryExternalConnectionInfoList, location_name: "externalConnections"))
    RepositoryDescription.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    RepositoryDescription.struct_class = Types::RepositoryDescription

    RepositoryExternalConnectionInfo.add_member(:external_connection_name, Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: "externalConnectionName"))
    RepositoryExternalConnectionInfo.add_member(:package_format, Shapes::ShapeRef.new(shape: PackageFormat, location_name: "packageFormat"))
    RepositoryExternalConnectionInfo.add_member(:status, Shapes::ShapeRef.new(shape: ExternalConnectionStatus, location_name: "status"))
    RepositoryExternalConnectionInfo.struct_class = Types::RepositoryExternalConnectionInfo

    RepositoryExternalConnectionInfoList.member = Shapes::ShapeRef.new(shape: RepositoryExternalConnectionInfo)

    RepositorySummary.add_member(:name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "name"))
    RepositorySummary.add_member(:administrator_account, Shapes::ShapeRef.new(shape: AccountId, location_name: "administratorAccount"))
    RepositorySummary.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, location_name: "domainName"))
    RepositorySummary.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location_name: "domainOwner"))
    RepositorySummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "arn"))
    RepositorySummary.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    RepositorySummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "createdTime"))
    RepositorySummary.struct_class = Types::RepositorySummary

    RepositorySummaryList.member = Shapes::ShapeRef.new(shape: RepositorySummary)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePolicy.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "resourceArn"))
    ResourcePolicy.add_member(:revision, Shapes::ShapeRef.new(shape: PolicyRevision, location_name: "revision"))
    ResourcePolicy.add_member(:document, Shapes::ShapeRef.new(shape: PolicyDocument, location_name: "document"))
    ResourcePolicy.struct_class = Types::ResourcePolicy

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.add_member(:resource_id, Shapes::ShapeRef.new(shape: String, location_name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ResourceType, location_name: "resourceType"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SuccessfulPackageVersionInfo.add_member(:revision, Shapes::ShapeRef.new(shape: String, location_name: "revision"))
    SuccessfulPackageVersionInfo.add_member(:status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "status"))
    SuccessfulPackageVersionInfo.struct_class = Types::SuccessfulPackageVersionInfo

    SuccessfulPackageVersionInfoMap.key = Shapes::ShapeRef.new(shape: PackageVersion)
    SuccessfulPackageVersionInfoMap.value = Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfo)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "value"))
    Tag.struct_class = Types::Tag

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResult.struct_class = Types::TagResourceResult

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ThrottlingException.add_member(:retry_after_seconds, Shapes::ShapeRef.new(shape: RetryAfterSeconds, location: "header", location_name: "Retry-After"))
    ThrottlingException.struct_class = Types::ThrottlingException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "querystring", location_name: "resourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location_name: "tagKeys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResult.struct_class = Types::UntagResourceResult

    UpdatePackageVersionsStatusRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    UpdatePackageVersionsStatusRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    UpdatePackageVersionsStatusRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    UpdatePackageVersionsStatusRequest.add_member(:format, Shapes::ShapeRef.new(shape: PackageFormat, required: true, location: "querystring", location_name: "format"))
    UpdatePackageVersionsStatusRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: PackageNamespace, location: "querystring", location_name: "namespace"))
    UpdatePackageVersionsStatusRequest.add_member(:package, Shapes::ShapeRef.new(shape: PackageName, required: true, location: "querystring", location_name: "package"))
    UpdatePackageVersionsStatusRequest.add_member(:versions, Shapes::ShapeRef.new(shape: PackageVersionList, required: true, location_name: "versions"))
    UpdatePackageVersionsStatusRequest.add_member(:version_revisions, Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: "versionRevisions"))
    UpdatePackageVersionsStatusRequest.add_member(:expected_status, Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: "expectedStatus"))
    UpdatePackageVersionsStatusRequest.add_member(:target_status, Shapes::ShapeRef.new(shape: PackageVersionStatus, required: true, location_name: "targetStatus"))
    UpdatePackageVersionsStatusRequest.struct_class = Types::UpdatePackageVersionsStatusRequest

    UpdatePackageVersionsStatusResult.add_member(:successful_versions, Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: "successfulVersions"))
    UpdatePackageVersionsStatusResult.add_member(:failed_versions, Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: "failedVersions"))
    UpdatePackageVersionsStatusResult.struct_class = Types::UpdatePackageVersionsStatusResult

    UpdateRepositoryRequest.add_member(:domain, Shapes::ShapeRef.new(shape: DomainName, required: true, location: "querystring", location_name: "domain"))
    UpdateRepositoryRequest.add_member(:domain_owner, Shapes::ShapeRef.new(shape: AccountId, location: "querystring", location_name: "domain-owner"))
    UpdateRepositoryRequest.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location: "querystring", location_name: "repository"))
    UpdateRepositoryRequest.add_member(:description, Shapes::ShapeRef.new(shape: Description, location_name: "description"))
    UpdateRepositoryRequest.add_member(:upstreams, Shapes::ShapeRef.new(shape: UpstreamRepositoryList, location_name: "upstreams"))
    UpdateRepositoryRequest.struct_class = Types::UpdateRepositoryRequest

    UpdateRepositoryResult.add_member(:repository, Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: "repository"))
    UpdateRepositoryResult.struct_class = Types::UpdateRepositoryResult

    UpstreamRepository.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, required: true, location_name: "repositoryName"))
    UpstreamRepository.struct_class = Types::UpstreamRepository

    UpstreamRepositoryInfo.add_member(:repository_name, Shapes::ShapeRef.new(shape: RepositoryName, location_name: "repositoryName"))
    UpstreamRepositoryInfo.struct_class = Types::UpstreamRepositoryInfo

    UpstreamRepositoryInfoList.member = Shapes::ShapeRef.new(shape: UpstreamRepositoryInfo)

    UpstreamRepositoryList.member = Shapes::ShapeRef.new(shape: UpstreamRepository)

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.add_member(:reason, Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: "reason"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-09-22"

      api.metadata = {
        "apiVersion" => "2018-09-22",
        "endpointPrefix" => "codeartifact",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "CodeArtifact",
        "serviceId" => "codeartifact",
        "signatureVersion" => "v4",
        "signingName" => "codeartifact",
        "uid" => "codeartifact-2018-09-22",
      }

      api.add_operation(:associate_external_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssociateExternalConnection"
        o.http_method = "POST"
        o.http_request_uri = "/v1/repository/external-connection"
        o.input = Shapes::ShapeRef.new(shape: AssociateExternalConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: AssociateExternalConnectionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:copy_package_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CopyPackageVersions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/versions/copy"
        o.input = Shapes::ShapeRef.new(shape: CopyPackageVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: CopyPackageVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domain"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:create_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRepository"
        o.http_method = "POST"
        o.http_request_uri = "/v1/repository"
        o.input = Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRepositoryResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/domain"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_domain_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomainPermissionsPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/domain/permissions/policy"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackage"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/package"
        o.input = Shapes::ShapeRef.new(shape: DeletePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackageResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_package_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeletePackageVersions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/versions/delete"
        o.input = Shapes::ShapeRef.new(shape: DeletePackageVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DeletePackageVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepository"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/repository"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:delete_repository_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRepositoryPermissionsPolicy"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/repository/permissions/policies"
        o.input = Shapes::ShapeRef.new(shape: DeleteRepositoryPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRepositoryPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomain"
        o.http_method = "GET"
        o.http_request_uri = "/v1/domain"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_package, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackage"
        o.http_method = "GET"
        o.http_request_uri = "/v1/package"
        o.input = Shapes::ShapeRef.new(shape: DescribePackageRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackageResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_package_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribePackageVersion"
        o.http_method = "GET"
        o.http_request_uri = "/v1/package/version"
        o.input = Shapes::ShapeRef.new(shape: DescribePackageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribePackageVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:describe_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRepository"
        o.http_method = "GET"
        o.http_request_uri = "/v1/repository"
        o.input = Shapes::ShapeRef.new(shape: DescribeRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRepositoryResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:disassociate_external_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisassociateExternalConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/v1/repository/external-connection"
        o.input = Shapes::ShapeRef.new(shape: DisassociateExternalConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DisassociateExternalConnectionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:dispose_package_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DisposePackageVersions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/versions/dispose"
        o.input = Shapes::ShapeRef.new(shape: DisposePackageVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DisposePackageVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_authorization_token, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAuthorizationToken"
        o.http_method = "POST"
        o.http_request_uri = "/v1/authorization-token"
        o.input = Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAuthorizationTokenResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_domain_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDomainPermissionsPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v1/domain/permissions/policy"
        o.input = Shapes::ShapeRef.new(shape: GetDomainPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDomainPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_package_version_asset, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPackageVersionAsset"
        o.http_method = "GET"
        o.http_request_uri = "/v1/package/version/asset"
        o.input = Shapes::ShapeRef.new(shape: GetPackageVersionAssetRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPackageVersionAssetResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:get_package_version_readme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPackageVersionReadme"
        o.http_method = "GET"
        o.http_request_uri = "/v1/package/version/readme"
        o.input = Shapes::ShapeRef.new(shape: GetPackageVersionReadmeRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPackageVersionReadmeResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_repository_endpoint, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryEndpoint"
        o.http_method = "GET"
        o.http_request_uri = "/v1/repository/endpoint"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryEndpointRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryEndpointResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:get_repository_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRepositoryPermissionsPolicy"
        o.http_method = "GET"
        o.http_request_uri = "/v1/repository/permissions/policy"
        o.input = Shapes::ShapeRef.new(shape: GetRepositoryPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRepositoryPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomains"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domains"
        o.input = Shapes::ShapeRef.new(shape: ListDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDomainsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_package_version_assets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackageVersionAssets"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/version/assets"
        o.input = Shapes::ShapeRef.new(shape: ListPackageVersionAssetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackageVersionAssetsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_package_version_dependencies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackageVersionDependencies"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/version/dependencies"
        o.input = Shapes::ShapeRef.new(shape: ListPackageVersionDependenciesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackageVersionDependenciesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:list_package_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackageVersions"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/versions"
        o.input = Shapes::ShapeRef.new(shape: ListPackageVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackageVersionsResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_packages, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListPackages"
        o.http_method = "POST"
        o.http_request_uri = "/v1/packages"
        o.input = Shapes::ShapeRef.new(shape: ListPackagesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListPackagesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repositories, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositories"
        o.http_method = "POST"
        o.http_request_uri = "/v1/repositories"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoriesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoriesResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_repositories_in_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRepositoriesInDomain"
        o.http_method = "POST"
        o.http_request_uri = "/v1/domain/repositories"
        o.input = Shapes::ShapeRef.new(shape: ListRepositoriesInDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRepositoriesInDomainResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:publish_package_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PublishPackageVersion"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/version/publish"
        o.input = Shapes::ShapeRef.new(shape: PublishPackageVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: PublishPackageVersionResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_domain_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDomainPermissionsPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/domain/permissions/policy"
        o.input = Shapes::ShapeRef.new(shape: PutDomainPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDomainPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_package_origin_configuration, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPackageOriginConfiguration"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package"
        o.input = Shapes::ShapeRef.new(shape: PutPackageOriginConfigurationRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPackageOriginConfigurationResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:put_repository_permissions_policy, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutRepositoryPermissionsPolicy"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/repository/permissions/policy"
        o.input = Shapes::ShapeRef.new(shape: PutRepositoryPermissionsPolicyRequest)
        o.output = Shapes::ShapeRef.new(shape: PutRepositoryPermissionsPolicyResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/tag"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "POST"
        o.http_request_uri = "/v1/untag"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_package_versions_status, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePackageVersionsStatus"
        o.http_method = "POST"
        o.http_request_uri = "/v1/package/versions/update_status"
        o.input = Shapes::ShapeRef.new(shape: UpdatePackageVersionsStatusRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePackageVersionsStatusResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)

      api.add_operation(:update_repository, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRepository"
        o.http_method = "PUT"
        o.http_request_uri = "/v1/repository"
        o.input = Shapes::ShapeRef.new(shape: UpdateRepositoryRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRepositoryResult)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
      end)
    end

  end
end
