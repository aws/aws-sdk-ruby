# frozen_string_literal: true

# This is generated code!

module Aws::Codeartifact
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#AccountId", name: "AccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AllowPublish = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#AllowPublish", name: "AllowPublish")
    AllowUpstream = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#AllowUpstream", name: "AllowUpstream")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^\\S+$"})
    Asset = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.codeartifact#Asset", name: "Asset", traits: {"smithy.api#streaming" => {}})
    AssetHashes = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#AssetHashes", name: "AssetHashes")
    AssetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#AssetName", name: "AssetName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\P{C}+$"})
    AssetSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#AssetSummary", name: "AssetSummary")
    AssetSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#AssetSummaryList", name: "AssetSummaryList")
    AssociateExternalConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#AssociateExternalConnectionRequest", name: "AssociateExternalConnectionRequest")
    AssociateExternalConnectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#AssociateExternalConnectionResult", name: "AssociateExternalConnectionResult")
    AssociatedPackage = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#AssociatedPackage", name: "AssociatedPackage")
    AssociatedPackageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#AssociatedPackageList", name: "AssociatedPackageList")
    AuthorizationTokenDurationSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#AuthorizationTokenDurationSeconds", name: "AuthorizationTokenDurationSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 43200}})
    BooleanOptional = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.codeartifact#BooleanOptional", name: "BooleanOptional")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopyPackageVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CopyPackageVersionsRequest", name: "CopyPackageVersionsRequest")
    CopyPackageVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CopyPackageVersionsResult", name: "CopyPackageVersionsResult")
    CreateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreateDomainRequest", name: "CreateDomainRequest")
    CreateDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreateDomainResult", name: "CreateDomainResult")
    CreatePackageGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreatePackageGroupRequest", name: "CreatePackageGroupRequest")
    CreatePackageGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreatePackageGroupResult", name: "CreatePackageGroupResult")
    CreateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreateRepositoryRequest", name: "CreateRepositoryRequest")
    CreateRepositoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#CreateRepositoryResult", name: "CreateRepositoryResult")
    DeleteDomainPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteDomainPermissionsPolicyRequest", name: "DeleteDomainPermissionsPolicyRequest")
    DeleteDomainPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteDomainPermissionsPolicyResult", name: "DeleteDomainPermissionsPolicyResult")
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteDomainRequest", name: "DeleteDomainRequest")
    DeleteDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteDomainResult", name: "DeleteDomainResult")
    DeletePackageGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageGroupRequest", name: "DeletePackageGroupRequest")
    DeletePackageGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageGroupResult", name: "DeletePackageGroupResult")
    DeletePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageRequest", name: "DeletePackageRequest")
    DeletePackageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageResult", name: "DeletePackageResult")
    DeletePackageVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageVersionsRequest", name: "DeletePackageVersionsRequest")
    DeletePackageVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeletePackageVersionsResult", name: "DeletePackageVersionsResult")
    DeleteRepositoryPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicyRequest", name: "DeleteRepositoryPermissionsPolicyRequest")
    DeleteRepositoryPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicyResult", name: "DeleteRepositoryPermissionsPolicyResult")
    DeleteRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteRepositoryRequest", name: "DeleteRepositoryRequest")
    DeleteRepositoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DeleteRepositoryResult", name: "DeleteRepositoryResult")
    DescribeDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribeDomainRequest", name: "DescribeDomainRequest")
    DescribeDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribeDomainResult", name: "DescribeDomainResult")
    DescribePackageGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageGroupRequest", name: "DescribePackageGroupRequest")
    DescribePackageGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageGroupResult", name: "DescribePackageGroupResult")
    DescribePackageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageRequest", name: "DescribePackageRequest")
    DescribePackageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageResult", name: "DescribePackageResult")
    DescribePackageVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageVersionRequest", name: "DescribePackageVersionRequest")
    DescribePackageVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribePackageVersionResult", name: "DescribePackageVersionResult")
    DescribeRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribeRepositoryRequest", name: "DescribeRepositoryRequest")
    DescribeRepositoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DescribeRepositoryResult", name: "DescribeRepositoryResult")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    DisassociateExternalConnectionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DisassociateExternalConnectionRequest", name: "DisassociateExternalConnectionRequest")
    DisassociateExternalConnectionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DisassociateExternalConnectionResult", name: "DisassociateExternalConnectionResult")
    DisposePackageVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DisposePackageVersionsRequest", name: "DisposePackageVersionsRequest")
    DisposePackageVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DisposePackageVersionsResult", name: "DisposePackageVersionsResult")
    DomainDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DomainDescription", name: "DomainDescription")
    DomainEntryPoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DomainEntryPoint", name: "DomainEntryPoint")
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]{0,48}[a-z0-9]$"})
    DomainStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#DomainStatus", name: "DomainStatus")
    DomainSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#DomainSummary", name: "DomainSummary")
    DomainSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#DomainSummaryList", name: "DomainSummaryList")
    EndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#EndpointType", name: "EndpointType")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#ErrorMessage", name: "ErrorMessage")
    ExternalConnectionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#ExternalConnectionName", name: "ExternalConnectionName", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9._\\-:]{1,99}$"})
    ExternalConnectionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#ExternalConnectionStatus", name: "ExternalConnectionStatus")
    GetAssociatedPackageGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetAssociatedPackageGroupRequest", name: "GetAssociatedPackageGroupRequest")
    GetAssociatedPackageGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetAssociatedPackageGroupResult", name: "GetAssociatedPackageGroupResult")
    GetAuthorizationTokenRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetAuthorizationTokenRequest", name: "GetAuthorizationTokenRequest")
    GetAuthorizationTokenResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetAuthorizationTokenResult", name: "GetAuthorizationTokenResult", traits: {"smithy.api#sensitive" => {}})
    GetDomainPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetDomainPermissionsPolicyRequest", name: "GetDomainPermissionsPolicyRequest")
    GetDomainPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetDomainPermissionsPolicyResult", name: "GetDomainPermissionsPolicyResult")
    GetPackageVersionAssetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetPackageVersionAssetRequest", name: "GetPackageVersionAssetRequest")
    GetPackageVersionAssetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetPackageVersionAssetResult", name: "GetPackageVersionAssetResult")
    GetPackageVersionReadmeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetPackageVersionReadmeRequest", name: "GetPackageVersionReadmeRequest")
    GetPackageVersionReadmeResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetPackageVersionReadmeResult", name: "GetPackageVersionReadmeResult")
    GetRepositoryEndpointRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetRepositoryEndpointRequest", name: "GetRepositoryEndpointRequest")
    GetRepositoryEndpointResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetRepositoryEndpointResult", name: "GetRepositoryEndpointResult")
    GetRepositoryPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetRepositoryPermissionsPolicyRequest", name: "GetRepositoryPermissionsPolicyRequest")
    GetRepositoryPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#GetRepositoryPermissionsPolicyResult", name: "GetRepositoryPermissionsPolicyResult")
    HashAlgorithm = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#HashAlgorithm", name: "HashAlgorithm")
    HashValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#HashValue", name: "HashValue", traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^[0-9a-f]+$"})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#Integer", name: "Integer", traits: {"smithy.api#default" => 0})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LicenseInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#LicenseInfo", name: "LicenseInfo")
    LicenseInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#LicenseInfoList", name: "LicenseInfoList")
    ListAllowedRepositoriesForGroupMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupMaxResults", name: "ListAllowedRepositoriesForGroupMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAllowedRepositoriesForGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupRequest", name: "ListAllowedRepositoriesForGroupRequest")
    ListAllowedRepositoriesForGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupResult", name: "ListAllowedRepositoriesForGroupResult")
    ListAssociatedPackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListAssociatedPackagesRequest", name: "ListAssociatedPackagesRequest")
    ListAssociatedPackagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListAssociatedPackagesResult", name: "ListAssociatedPackagesResult")
    ListDomainsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListDomainsMaxResults", name: "ListDomainsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListDomainsRequest", name: "ListDomainsRequest")
    ListDomainsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListDomainsResult", name: "ListDomainsResult")
    ListPackageGroupsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListPackageGroupsMaxResults", name: "ListPackageGroupsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageGroupsRequest", name: "ListPackageGroupsRequest")
    ListPackageGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageGroupsResult", name: "ListPackageGroupsResult")
    ListPackageVersionAssetsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionAssetsMaxResults", name: "ListPackageVersionAssetsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageVersionAssetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionAssetsRequest", name: "ListPackageVersionAssetsRequest")
    ListPackageVersionAssetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionAssetsResult", name: "ListPackageVersionAssetsResult")
    ListPackageVersionDependenciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionDependenciesRequest", name: "ListPackageVersionDependenciesRequest")
    ListPackageVersionDependenciesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionDependenciesResult", name: "ListPackageVersionDependenciesResult")
    ListPackageVersionsMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionsMaxResults", name: "ListPackageVersionsMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageVersionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionsRequest", name: "ListPackageVersionsRequest")
    ListPackageVersionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackageVersionsResult", name: "ListPackageVersionsResult")
    ListPackagesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListPackagesMaxResults", name: "ListPackagesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackagesRequest", name: "ListPackagesRequest")
    ListPackagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListPackagesResult", name: "ListPackagesResult")
    ListRepositoriesInDomainMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesInDomainMaxResults", name: "ListRepositoriesInDomainMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRepositoriesInDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesInDomainRequest", name: "ListRepositoriesInDomainRequest")
    ListRepositoriesInDomainResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesInDomainResult", name: "ListRepositoriesInDomainResult")
    ListRepositoriesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesMaxResults", name: "ListRepositoriesMaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRepositoriesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesRequest", name: "ListRepositoriesRequest")
    ListRepositoriesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListRepositoriesResult", name: "ListRepositoriesResult")
    ListSubPackageGroupsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListSubPackageGroupsRequest", name: "ListSubPackageGroupsRequest")
    ListSubPackageGroupsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListSubPackageGroupsResult", name: "ListSubPackageGroupsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ListTagsForResourceResult", name: "ListTagsForResourceResult")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#Long", name: "Long", traits: {"smithy.api#default" => 0})
    LongOptional = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#LongOptional", name: "LongOptional")
    OriginRestrictions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#OriginRestrictions", name: "OriginRestrictions")
    PackageDependency = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageDependency", name: "PackageDependency")
    PackageDependencyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageDependencyList", name: "PackageDependencyList")
    PackageDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageDescription", name: "PackageDescription")
    PackageFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageFormat", name: "PackageFormat")
    PackageGroupAllowedRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupAllowedRepository", name: "PackageGroupAllowedRepository")
    PackageGroupAllowedRepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageGroupAllowedRepositoryList", name: "PackageGroupAllowedRepositoryList")
    PackageGroupAllowedRepositoryUpdate = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdate", name: "PackageGroupAllowedRepositoryUpdate")
    PackageGroupAllowedRepositoryUpdateType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdateType", name: "PackageGroupAllowedRepositoryUpdateType")
    PackageGroupAllowedRepositoryUpdates = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdates", name: "PackageGroupAllowedRepositoryUpdates")
    PackageGroupAssociationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageGroupAssociationType", name: "PackageGroupAssociationType")
    PackageGroupContactInfo = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageGroupContactInfo", name: "PackageGroupContactInfo", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    PackageGroupDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupDescription", name: "PackageGroupDescription")
    PackageGroupOriginConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupOriginConfiguration", name: "PackageGroupOriginConfiguration")
    PackageGroupOriginRestriction = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupOriginRestriction", name: "PackageGroupOriginRestriction")
    PackageGroupOriginRestrictionMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageGroupOriginRestrictionMode", name: "PackageGroupOriginRestrictionMode")
    PackageGroupOriginRestrictionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageGroupOriginRestrictionType", name: "PackageGroupOriginRestrictionType")
    PackageGroupOriginRestrictions = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#PackageGroupOriginRestrictions", name: "PackageGroupOriginRestrictions")
    PackageGroupPattern = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageGroupPattern", name: "PackageGroupPattern", traits: {"smithy.api#length" => {"min" => 2, "max" => 520}, "smithy.api#pattern" => "^[^\\p{C}\\p{IsWhitespace}]+$"})
    PackageGroupPatternPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageGroupPatternPrefix", name: "PackageGroupPatternPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 520}, "smithy.api#pattern" => "^\\P{C}*$"})
    PackageGroupReference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupReference", name: "PackageGroupReference")
    PackageGroupSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageGroupSummary", name: "PackageGroupSummary")
    PackageGroupSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageGroupSummaryList", name: "PackageGroupSummaryList")
    PackageName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageName", name: "PackageName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageNamespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageNamespace", name: "PackageNamespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageOriginConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageOriginConfiguration", name: "PackageOriginConfiguration")
    PackageOriginRestrictions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageOriginRestrictions", name: "PackageOriginRestrictions")
    PackageSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageSummary", name: "PackageSummary")
    PackageSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageSummaryList", name: "PackageSummaryList")
    PackageVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageVersion", name: "PackageVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageVersionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageVersionDescription", name: "PackageVersionDescription")
    PackageVersionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageVersionError", name: "PackageVersionError")
    PackageVersionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageVersionErrorCode", name: "PackageVersionErrorCode")
    PackageVersionErrorMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#PackageVersionErrorMap", name: "PackageVersionErrorMap")
    PackageVersionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageVersionList", name: "PackageVersionList", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    PackageVersionOrigin = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageVersionOrigin", name: "PackageVersionOrigin")
    PackageVersionOriginType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageVersionOriginType", name: "PackageVersionOriginType")
    PackageVersionRevision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PackageVersionRevision", name: "PackageVersionRevision", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S+$"})
    PackageVersionRevisionMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#PackageVersionRevisionMap", name: "PackageVersionRevisionMap")
    PackageVersionSortType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageVersionSortType", name: "PackageVersionSortType")
    PackageVersionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#PackageVersionStatus", name: "PackageVersionStatus")
    PackageVersionSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PackageVersionSummary", name: "PackageVersionSummary")
    PackageVersionSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#PackageVersionSummaryList", name: "PackageVersionSummaryList")
    PaginationToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PaginationToken", name: "PaginationToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^\\S+$"})
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PolicyDocument", name: "PolicyDocument", traits: {"smithy.api#length" => {"min" => 1, "max" => 7168}, "smithy.api#pattern" => "^[\\P{C}\\s]+$"})
    PolicyRevision = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#PolicyRevision", name: "PolicyRevision", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S+$"})
    PublishPackageVersionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PublishPackageVersionRequest", name: "PublishPackageVersionRequest")
    PublishPackageVersionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PublishPackageVersionResult", name: "PublishPackageVersionResult")
    PutDomainPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutDomainPermissionsPolicyRequest", name: "PutDomainPermissionsPolicyRequest")
    PutDomainPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutDomainPermissionsPolicyResult", name: "PutDomainPermissionsPolicyResult")
    PutPackageOriginConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutPackageOriginConfigurationRequest", name: "PutPackageOriginConfigurationRequest")
    PutPackageOriginConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutPackageOriginConfigurationResult", name: "PutPackageOriginConfigurationResult")
    PutRepositoryPermissionsPolicyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutRepositoryPermissionsPolicyRequest", name: "PutRepositoryPermissionsPolicyRequest")
    PutRepositoryPermissionsPolicyResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#PutRepositoryPermissionsPolicyResult", name: "PutRepositoryPermissionsPolicyResult")
    RepositoryDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#RepositoryDescription", name: "RepositoryDescription")
    RepositoryExternalConnectionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#RepositoryExternalConnectionInfo", name: "RepositoryExternalConnectionInfo")
    RepositoryExternalConnectionInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#RepositoryExternalConnectionInfoList", name: "RepositoryExternalConnectionInfoList")
    RepositoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#RepositoryName", name: "RepositoryName", traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9._\\-]{1,99}$"})
    RepositoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#RepositoryNameList", name: "RepositoryNameList")
    RepositorySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#RepositorySummary", name: "RepositorySummary")
    RepositorySummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#RepositorySummaryList", name: "RepositorySummaryList")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ResourcePolicy", name: "ResourcePolicy")
    ResourceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#ResourceType", name: "ResourceType")
    RetryAfterSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.codeartifact#RetryAfterSeconds", name: "RetryAfterSeconds")
    SHA256 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#SHA256", name: "SHA256", traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[0-9a-f]+$"})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#String", name: "String")
    String255 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#String255", name: "String255", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SuccessfulPackageVersionInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#SuccessfulPackageVersionInfo", name: "SuccessfulPackageVersionInfo")
    SuccessfulPackageVersionInfoMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.codeartifact#SuccessfulPackageVersionInfoMap", name: "SuccessfulPackageVersionInfoMap")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\P{C}+$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#TagResourceResult", name: "TagResourceResult")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.codeartifact#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\P{C}*$"})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.codeartifact#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UntagResourceResult", name: "UntagResourceResult")
    UpdatePackageGroupOriginConfigurationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageGroupOriginConfigurationRequest", name: "UpdatePackageGroupOriginConfigurationRequest")
    UpdatePackageGroupOriginConfigurationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageGroupOriginConfigurationResult", name: "UpdatePackageGroupOriginConfigurationResult")
    UpdatePackageGroupRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageGroupRequest", name: "UpdatePackageGroupRequest")
    UpdatePackageGroupResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageGroupResult", name: "UpdatePackageGroupResult")
    UpdatePackageVersionsStatusRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageVersionsStatusRequest", name: "UpdatePackageVersionsStatusRequest")
    UpdatePackageVersionsStatusResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdatePackageVersionsStatusResult", name: "UpdatePackageVersionsStatusResult")
    UpdateRepositoryRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdateRepositoryRequest", name: "UpdateRepositoryRequest")
    UpdateRepositoryResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpdateRepositoryResult", name: "UpdateRepositoryResult")
    UpstreamRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpstreamRepository", name: "UpstreamRepository")
    UpstreamRepositoryInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#UpstreamRepositoryInfo", name: "UpstreamRepositoryInfo")
    UpstreamRepositoryInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#UpstreamRepositoryInfoList", name: "UpstreamRepositoryInfoList")
    UpstreamRepositoryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.codeartifact#UpstreamRepositoryList", name: "UpstreamRepositoryList")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.codeartifact#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.codeartifact#ValidationExceptionReason", name: "ValidationExceptionReason")

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowPublish.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    AllowPublish.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    AllowUpstream.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    AllowUpstream.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    AssetHashes.key = ::Smithy::Schema::Shapes::MemberShape.new(target: HashAlgorithm, name: "key")
    AssetHashes.value = ::Smithy::Schema::Shapes::MemberShape.new(target: HashValue, name: "value")
    AssetSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "name", traits: {"smithy.api#required" => {}}))
    AssetSummary.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "size"))
    AssetSummary.add_member(:hashes, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetHashes, name: "hashes"))
    AssetSummary.type = Types::AssetSummary
    AssetSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSummary, name: "member")
    AssociateExternalConnectionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    AssociateExternalConnectionRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.add_member(:external_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalConnectionName, name: "externalConnection", traits: {"smithy.api#httpQuery" => "external-connection", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.type = Types::AssociateExternalConnectionRequest
    AssociateExternalConnectionResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    AssociateExternalConnectionResult.type = Types::AssociateExternalConnectionResult
    AssociatedPackage.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    AssociatedPackage.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    AssociatedPackage.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    AssociatedPackage.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAssociationType, name: "associationType"))
    AssociatedPackage.type = Types::AssociatedPackage
    AssociatedPackageList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPackage, name: "member")
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ConflictException.type = Types::ConflictException
    CopyPackageVersionsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    CopyPackageVersionsRequest.add_member(:source_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "sourceRepository", traits: {"smithy.api#httpQuery" => "source-repository", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:destination_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "destinationRepository", traits: {"smithy.api#httpQuery" => "destination-repository", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    CopyPackageVersionsRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionList, name: "versions"))
    CopyPackageVersionsRequest.add_member(:version_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevisionMap, name: "versionRevisions"))
    CopyPackageVersionsRequest.add_member(:allow_overwrite, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "allowOverwrite"))
    CopyPackageVersionsRequest.add_member(:include_from_upstream, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "includeFromUpstream"))
    CopyPackageVersionsRequest.type = Types::CopyPackageVersionsRequest
    CopyPackageVersionsResult.add_member(:successful_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulPackageVersionInfoMap, name: "successfulVersions"))
    CopyPackageVersionsResult.add_member(:failed_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionErrorMap, name: "failedVersions"))
    CopyPackageVersionsResult.type = Types::CopyPackageVersionsResult
    CreateDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "encryptionKey"))
    CreateDomainRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDescription, name: "domain"))
    CreateDomainResult.type = Types::CreateDomainResult
    CreatePackageGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreatePackageGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    CreatePackageGroupRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#required" => {}}))
    CreatePackageGroupRequest.add_member(:contact_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupContactInfo, name: "contactInfo"))
    CreatePackageGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreatePackageGroupRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreatePackageGroupRequest.type = Types::CreatePackageGroupRequest
    CreatePackageGroupResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    CreatePackageGroupResult.type = Types::CreatePackageGroupResult
    CreateRepositoryRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    CreateRepositoryRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    CreateRepositoryRequest.add_member(:upstreams, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepositoryList, name: "upstreams"))
    CreateRepositoryRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    CreateRepositoryResult.type = Types::CreateRepositoryResult
    DeleteDomainPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteDomainPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeleteDomainPermissionsPolicyRequest.add_member(:policy_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevision, name: "policyRevision", traits: {"smithy.api#httpQuery" => "policy-revision"}))
    DeleteDomainPermissionsPolicyRequest.type = Types::DeleteDomainPermissionsPolicyRequest
    DeleteDomainPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    DeleteDomainPermissionsPolicyResult.type = Types::DeleteDomainPermissionsPolicyResult
    DeleteDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteDomainRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDescription, name: "domain"))
    DeleteDomainResult.type = Types::DeleteDomainResult
    DeletePackageGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageGroupRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    DeletePackageGroupRequest.type = Types::DeletePackageGroupRequest
    DeletePackageGroupResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    DeletePackageGroupResult.type = Types::DeletePackageGroupResult
    DeletePackageRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DeletePackageRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DeletePackageRequest.type = Types::DeletePackageRequest
    DeletePackageResult.add_member(:deleted_package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageSummary, name: "deletedPackage"))
    DeletePackageResult.type = Types::DeletePackageResult
    DeletePackageVersionsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageVersionsRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DeletePackageVersionsRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionList, name: "versions", traits: {"smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:expected_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "expectedStatus"))
    DeletePackageVersionsRequest.type = Types::DeletePackageVersionsRequest
    DeletePackageVersionsResult.add_member(:successful_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulPackageVersionInfoMap, name: "successfulVersions"))
    DeletePackageVersionsResult.add_member(:failed_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionErrorMap, name: "failedVersions"))
    DeletePackageVersionsResult.type = Types::DeletePackageVersionsResult
    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:policy_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevision, name: "policyRevision", traits: {"smithy.api#httpQuery" => "policy-revision"}))
    DeleteRepositoryPermissionsPolicyRequest.type = Types::DeleteRepositoryPermissionsPolicyRequest
    DeleteRepositoryPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    DeleteRepositoryPermissionsPolicyResult.type = Types::DeleteRepositoryPermissionsPolicyResult
    DeleteRepositoryRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteRepositoryRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DeleteRepositoryRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeleteRepositoryRequest.type = Types::DeleteRepositoryRequest
    DeleteRepositoryResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    DeleteRepositoryResult.type = Types::DeleteRepositoryResult
    DescribeDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribeDomainRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DescribeDomainRequest.type = Types::DescribeDomainRequest
    DescribeDomainResult.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainDescription, name: "domain"))
    DescribeDomainResult.type = Types::DescribeDomainResult
    DescribePackageGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageGroupRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    DescribePackageGroupRequest.type = Types::DescribePackageGroupRequest
    DescribePackageGroupResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    DescribePackageGroupResult.type = Types::DescribePackageGroupResult
    DescribePackageRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DescribePackageRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DescribePackageRequest.type = Types::DescribePackageRequest
    DescribePackageResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageDescription, name: "package", traits: {"smithy.api#required" => {}}))
    DescribePackageResult.type = Types::DescribePackageResult
    DescribePackageVersionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageVersionRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DescribePackageVersionRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.type = Types::DescribePackageVersionRequest
    DescribePackageVersionResult.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionDescription, name: "packageVersion", traits: {"smithy.api#required" => {}}))
    DescribePackageVersionResult.type = Types::DescribePackageVersionResult
    DescribeRepositoryRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribeRepositoryRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DescribeRepositoryRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribeRepositoryRequest.type = Types::DescribeRepositoryRequest
    DescribeRepositoryResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    DescribeRepositoryResult.type = Types::DescribeRepositoryResult
    DisassociateExternalConnectionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DisassociateExternalConnectionRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.add_member(:external_connection, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalConnectionName, name: "externalConnection", traits: {"smithy.api#httpQuery" => "external-connection", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.type = Types::DisassociateExternalConnectionRequest
    DisassociateExternalConnectionResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    DisassociateExternalConnectionResult.type = Types::DisassociateExternalConnectionResult
    DisposePackageVersionsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    DisposePackageVersionsRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    DisposePackageVersionsRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionList, name: "versions", traits: {"smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:version_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevisionMap, name: "versionRevisions"))
    DisposePackageVersionsRequest.add_member(:expected_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "expectedStatus"))
    DisposePackageVersionsRequest.type = Types::DisposePackageVersionsRequest
    DisposePackageVersionsResult.add_member(:successful_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulPackageVersionInfoMap, name: "successfulVersions"))
    DisposePackageVersionsResult.add_member(:failed_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionErrorMap, name: "failedVersions"))
    DisposePackageVersionsResult.type = Types::DisposePackageVersionsResult
    DomainDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name"))
    DomainDescription.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "owner"))
    DomainDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    DomainDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status"))
    DomainDescription.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    DomainDescription.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "encryptionKey"))
    DomainDescription.add_member(:repository_count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "repositoryCount", traits: {"smithy.api#default" => 0}))
    DomainDescription.add_member(:asset_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "assetSizeBytes", traits: {"smithy.api#default" => 0}))
    DomainDescription.add_member(:s3_bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "s3BucketArn"))
    DomainDescription.type = Types::DomainDescription
    DomainEntryPoint.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    DomainEntryPoint.add_member(:external_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalConnectionName, name: "externalConnectionName"))
    DomainEntryPoint.type = Types::DomainEntryPoint
    DomainStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "Active"}))
    DomainStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    DomainSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "name"))
    DomainSummary.add_member(:owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "owner"))
    DomainSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    DomainSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, name: "status"))
    DomainSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    DomainSummary.add_member(:encryption_key, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "encryptionKey"))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummary, name: "member")
    EndpointType.add_member(:dualstack, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DUALSTACK", traits: {"smithy.api#enumValue" => "dualstack"}))
    EndpointType.add_member(:ipv4, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IPV4", traits: {"smithy.api#enumValue" => "ipv4"}))
    ExternalConnectionStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "Available"}))
    GetAssociatedPackageGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetAssociatedPackageGroupRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetAssociatedPackageGroupRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.type = Types::GetAssociatedPackageGroupRequest
    GetAssociatedPackageGroupResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    GetAssociatedPackageGroupResult.add_member(:association_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAssociationType, name: "associationType"))
    GetAssociatedPackageGroupResult.type = Types::GetAssociatedPackageGroupResult
    GetAuthorizationTokenRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetAuthorizationTokenRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetAuthorizationTokenRequest.add_member(:duration_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationTokenDurationSeconds, name: "durationSeconds", traits: {"smithy.api#httpQuery" => "duration"}))
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResult.add_member(:authorization_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "authorizationToken"))
    GetAuthorizationTokenResult.add_member(:expiration, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "expiration"))
    GetAuthorizationTokenResult.type = Types::GetAuthorizationTokenResult
    GetDomainPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetDomainPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetDomainPermissionsPolicyRequest.type = Types::GetDomainPermissionsPolicyRequest
    GetDomainPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    GetDomainPermissionsPolicyResult.type = Types::GetDomainPermissionsPolicyResult
    GetPackageVersionAssetRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetPackageVersionAssetRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetPackageVersionAssetRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "asset", traits: {"smithy.api#httpQuery" => "asset", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:package_version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "packageVersionRevision", traits: {"smithy.api#httpQuery" => "revision"}))
    GetPackageVersionAssetRequest.type = Types::GetPackageVersionAssetRequest
    GetPackageVersionAssetResult.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "asset", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetPackageVersionAssetResult.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "assetName", traits: {"smithy.api#httpHeader" => "X-AssetName"}))
    GetPackageVersionAssetResult.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpHeader" => "X-PackageVersion"}))
    GetPackageVersionAssetResult.add_member(:package_version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "packageVersionRevision", traits: {"smithy.api#httpHeader" => "X-PackageVersionRevision"}))
    GetPackageVersionAssetResult[:http_payload] = :asset
    GetPackageVersionAssetResult[:http_payload_member] = GetPackageVersionAssetResult.member(:asset)
    GetPackageVersionAssetResult.type = Types::GetPackageVersionAssetResult
    GetPackageVersionReadmeRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetPackageVersionReadmeRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    GetPackageVersionReadmeRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.type = Types::GetPackageVersionReadmeRequest
    GetPackageVersionReadmeResult.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    GetPackageVersionReadmeResult.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    GetPackageVersionReadmeResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    GetPackageVersionReadmeResult.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version"))
    GetPackageVersionReadmeResult.add_member(:version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "versionRevision"))
    GetPackageVersionReadmeResult.add_member(:readme, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "readme"))
    GetPackageVersionReadmeResult.type = Types::GetPackageVersionReadmeResult
    GetRepositoryEndpointRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetRepositoryEndpointRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EndpointType, name: "endpointType", traits: {"smithy.api#httpQuery" => "endpointType"}))
    GetRepositoryEndpointRequest.type = Types::GetRepositoryEndpointRequest
    GetRepositoryEndpointResult.add_member(:repository_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "repositoryEndpoint"))
    GetRepositoryEndpointResult.type = Types::GetRepositoryEndpointResult
    GetRepositoryPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetRepositoryPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    GetRepositoryPermissionsPolicyRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetRepositoryPermissionsPolicyRequest.type = Types::GetRepositoryPermissionsPolicyRequest
    GetRepositoryPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    GetRepositoryPermissionsPolicyResult.type = Types::GetRepositoryPermissionsPolicyResult
    HashAlgorithm.add_member(:md5, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MD5", traits: {"smithy.api#enumValue" => "MD5"}))
    HashAlgorithm.add_member(:sha1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA1", traits: {"smithy.api#enumValue" => "SHA-1"}))
    HashAlgorithm.add_member(:sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA256", traits: {"smithy.api#enumValue" => "SHA-256"}))
    HashAlgorithm.add_member(:sha512, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHA512", traits: {"smithy.api#enumValue" => "SHA-512"}))
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LicenseInfo.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    LicenseInfo.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "url"))
    LicenseInfo.type = Types::LicenseInfo
    LicenseInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfo, name: "member")
    ListAllowedRepositoriesForGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListAllowedRepositoriesForGroupRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:origin_restriction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionType, name: "originRestrictionType", traits: {"smithy.api#httpQuery" => "originRestrictionType", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAllowedRepositoriesForGroupMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAllowedRepositoriesForGroupRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAllowedRepositoriesForGroupRequest.type = Types::ListAllowedRepositoriesForGroupRequest
    ListAllowedRepositoriesForGroupResult.add_member(:allowed_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "allowedRepositories"))
    ListAllowedRepositoriesForGroupResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListAllowedRepositoriesForGroupResult.type = Types::ListAllowedRepositoriesForGroupResult
    ListAssociatedPackagesRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListAssociatedPackagesRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListAssociatedPackagesRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListAssociatedPackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackagesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListAssociatedPackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListAssociatedPackagesRequest.add_member(:preview, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "preview", traits: {"smithy.api#httpQuery" => "preview"}))
    ListAssociatedPackagesRequest.type = Types::ListAssociatedPackagesRequest
    ListAssociatedPackagesResult.add_member(:packages, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedPackageList, name: "packages"))
    ListAssociatedPackagesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListAssociatedPackagesResult.type = Types::ListAssociatedPackagesResult
    ListDomainsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDomainsMaxResults, name: "maxResults"))
    ListDomainsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResult.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainSummaryList, name: "domains"))
    ListDomainsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListDomainsResult.type = Types::ListDomainsResult
    ListPackageGroupsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageGroupsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListPackageGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackageGroupsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPackageGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPackageGroupsRequest.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPatternPrefix, name: "prefix", traits: {"smithy.api#httpQuery" => "prefix"}))
    ListPackageGroupsRequest.type = Types::ListPackageGroupsRequest
    ListPackageGroupsResult.add_member(:package_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupSummaryList, name: "packageGroups"))
    ListPackageGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPackageGroupsResult.type = Types::ListPackageGroupsResult
    ListPackageVersionAssetsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionAssetsRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionAssetsRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackageVersionAssetsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPackageVersionAssetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionAssetsRequest.type = Types::ListPackageVersionAssetsRequest
    ListPackageVersionAssetsResult.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    ListPackageVersionAssetsResult.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    ListPackageVersionAssetsResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    ListPackageVersionAssetsResult.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version"))
    ListPackageVersionAssetsResult.add_member(:version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "versionRevision"))
    ListPackageVersionAssetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPackageVersionAssetsResult.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSummaryList, name: "assets"))
    ListPackageVersionAssetsResult.type = Types::ListPackageVersionAssetsResult
    ListPackageVersionDependenciesRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionDependenciesRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionDependenciesRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionDependenciesRequest.type = Types::ListPackageVersionDependenciesRequest
    ListPackageVersionDependenciesResult.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    ListPackageVersionDependenciesResult.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    ListPackageVersionDependenciesResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    ListPackageVersionDependenciesResult.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version"))
    ListPackageVersionDependenciesResult.add_member(:version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "versionRevision"))
    ListPackageVersionDependenciesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPackageVersionDependenciesResult.add_member(:dependencies, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageDependencyList, name: "dependencies"))
    ListPackageVersionDependenciesResult.type = Types::ListPackageVersionDependenciesResult
    ListPackageVersionsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionsRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionsRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "status", traits: {"smithy.api#httpQuery" => "status"}))
    ListPackageVersionsRequest.add_member(:sort_by, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionSortType, name: "sortBy", traits: {"smithy.api#httpQuery" => "sortBy"}))
    ListPackageVersionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackageVersionsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPackageVersionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionsRequest.add_member(:origin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionOriginType, name: "originType", traits: {"smithy.api#httpQuery" => "originType"}))
    ListPackageVersionsRequest.type = Types::ListPackageVersionsRequest
    ListPackageVersionsResult.add_member(:default_display_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "defaultDisplayVersion"))
    ListPackageVersionsResult.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    ListPackageVersionsResult.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    ListPackageVersionsResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    ListPackageVersionsResult.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionSummaryList, name: "versions"))
    ListPackageVersionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPackageVersionsResult.type = Types::ListPackageVersionsResult
    ListPackagesRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackagesRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListPackagesRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackagesRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format"}))
    ListPackagesRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    ListPackagesRequest.add_member(:package_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "packagePrefix", traits: {"smithy.api#httpQuery" => "package-prefix"}))
    ListPackagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackagesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListPackagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListPackagesRequest.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowPublish, name: "publish", traits: {"smithy.api#httpQuery" => "publish"}))
    ListPackagesRequest.add_member(:upstream, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowUpstream, name: "upstream", traits: {"smithy.api#httpQuery" => "upstream"}))
    ListPackagesRequest.type = Types::ListPackagesRequest
    ListPackagesResult.add_member(:packages, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageSummaryList, name: "packages"))
    ListPackagesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListPackagesResult.type = Types::ListPackagesResult
    ListRepositoriesInDomainRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListRepositoriesInDomainRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListRepositoriesInDomainRequest.add_member(:administrator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "administratorAccount", traits: {"smithy.api#httpQuery" => "administrator-account"}))
    ListRepositoriesInDomainRequest.add_member(:repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryPrefix", traits: {"smithy.api#httpQuery" => "repository-prefix"}))
    ListRepositoriesInDomainRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRepositoriesInDomainMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRepositoriesInDomainRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRepositoriesInDomainRequest.type = Types::ListRepositoriesInDomainRequest
    ListRepositoriesInDomainResult.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySummaryList, name: "repositories"))
    ListRepositoriesInDomainResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRepositoriesInDomainResult.type = Types::ListRepositoriesInDomainResult
    ListRepositoriesRequest.add_member(:repository_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryPrefix", traits: {"smithy.api#httpQuery" => "repository-prefix"}))
    ListRepositoriesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListRepositoriesMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListRepositoriesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListRepositoriesRequest.type = Types::ListRepositoriesRequest
    ListRepositoriesResult.add_member(:repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySummaryList, name: "repositories"))
    ListRepositoriesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListRepositoriesResult.type = Types::ListRepositoriesResult
    ListSubPackageGroupsRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListSubPackageGroupsRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    ListSubPackageGroupsRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListSubPackageGroupsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: ListPackageGroupsMaxResults, name: "maxResults", traits: {"smithy.api#httpQuery" => "max-results"}))
    ListSubPackageGroupsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "next-token"}))
    ListSubPackageGroupsRequest.type = Types::ListSubPackageGroupsRequest
    ListSubPackageGroupsResult.add_member(:package_groups, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupSummaryList, name: "packageGroups"))
    ListSubPackageGroupsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: PaginationToken, name: "nextToken"))
    ListSubPackageGroupsResult.type = Types::ListSubPackageGroupsResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags"))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    OriginRestrictions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionType, name: "key")
    OriginRestrictions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionMode, name: "value")
    PackageDependency.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    PackageDependency.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    PackageDependency.add_member(:dependency_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "dependencyType"))
    PackageDependency.add_member(:version_requirement, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "versionRequirement"))
    PackageDependency.type = Types::PackageDependency
    PackageDependencyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageDependency, name: "member")
    PackageDescription.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    PackageDescription.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    PackageDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "name"))
    PackageDescription.add_member(:origin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOriginConfiguration, name: "originConfiguration"))
    PackageDescription.type = Types::PackageDescription
    PackageFormat.add_member(:npm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NPM", traits: {"smithy.api#enumValue" => "npm"}))
    PackageFormat.add_member(:pypi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PYPI", traits: {"smithy.api#enumValue" => "pypi"}))
    PackageFormat.add_member(:maven, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAVEN", traits: {"smithy.api#enumValue" => "maven"}))
    PackageFormat.add_member(:nuget, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NUGET", traits: {"smithy.api#enumValue" => "nuget"}))
    PackageFormat.add_member(:generic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GENERIC", traits: {"smithy.api#enumValue" => "generic"}))
    PackageFormat.add_member(:ruby, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUBY", traits: {"smithy.api#enumValue" => "ruby"}))
    PackageFormat.add_member(:swift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SWIFT", traits: {"smithy.api#enumValue" => "swift"}))
    PackageFormat.add_member(:cargo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CARGO", traits: {"smithy.api#enumValue" => "cargo"}))
    PackageGroupAllowedRepository.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    PackageGroupAllowedRepository.add_member(:origin_restriction_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionType, name: "originRestrictionType"))
    PackageGroupAllowedRepository.type = Types::PackageGroupAllowedRepository
    PackageGroupAllowedRepositoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepository, name: "member")
    PackageGroupAllowedRepositoryUpdate.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepositoryUpdateType, name: "key")
    PackageGroupAllowedRepositoryUpdate.value = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryNameList, name: "value")
    PackageGroupAllowedRepositoryUpdateType.add_member(:added, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ADDED", traits: {"smithy.api#enumValue" => "ADDED"}))
    PackageGroupAllowedRepositoryUpdateType.add_member(:removed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REMOVED", traits: {"smithy.api#enumValue" => "REMOVED"}))
    PackageGroupAllowedRepositoryUpdates.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionType, name: "key")
    PackageGroupAllowedRepositoryUpdates.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepositoryUpdate, name: "value")
    PackageGroupAssociationType.add_member(:strong, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STRONG", traits: {"smithy.api#enumValue" => "STRONG"}))
    PackageGroupAssociationType.add_member(:weak, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WEAK", traits: {"smithy.api#enumValue" => "WEAK"}))
    PackageGroupDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    PackageGroupDescription.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "pattern"))
    PackageGroupDescription.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    PackageGroupDescription.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner"))
    PackageGroupDescription.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    PackageGroupDescription.add_member(:contact_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupContactInfo, name: "contactInfo"))
    PackageGroupDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    PackageGroupDescription.add_member(:origin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginConfiguration, name: "originConfiguration"))
    PackageGroupDescription.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupReference, name: "parent"))
    PackageGroupDescription.type = Types::PackageGroupDescription
    PackageGroupOriginConfiguration.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictions, name: "restrictions"))
    PackageGroupOriginConfiguration.type = Types::PackageGroupOriginConfiguration
    PackageGroupOriginRestriction.add_member(:mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionMode, name: "mode"))
    PackageGroupOriginRestriction.add_member(:effective_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionMode, name: "effectiveMode"))
    PackageGroupOriginRestriction.add_member(:inherited_from, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupReference, name: "inheritedFrom"))
    PackageGroupOriginRestriction.add_member(:repositories_count, ::Smithy::Schema::Shapes::MemberShape.new(target: LongOptional, name: "repositoriesCount"))
    PackageGroupOriginRestriction.type = Types::PackageGroupOriginRestriction
    PackageGroupOriginRestrictionMode.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    PackageGroupOriginRestrictionMode.add_member(:allow_specific_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_SPECIFIC_REPOSITORIES", traits: {"smithy.api#enumValue" => "ALLOW_SPECIFIC_REPOSITORIES"}))
    PackageGroupOriginRestrictionMode.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLOCK", traits: {"smithy.api#enumValue" => "BLOCK"}))
    PackageGroupOriginRestrictionMode.add_member(:inherit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INHERIT", traits: {"smithy.api#enumValue" => "INHERIT"}))
    PackageGroupOriginRestrictionType.add_member(:external_upstream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL_UPSTREAM", traits: {"smithy.api#enumValue" => "EXTERNAL_UPSTREAM"}))
    PackageGroupOriginRestrictionType.add_member(:internal_upstream, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_UPSTREAM", traits: {"smithy.api#enumValue" => "INTERNAL_UPSTREAM"}))
    PackageGroupOriginRestrictionType.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISH", traits: {"smithy.api#enumValue" => "PUBLISH"}))
    PackageGroupOriginRestrictions.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestrictionType, name: "key")
    PackageGroupOriginRestrictions.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginRestriction, name: "value")
    PackageGroupReference.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    PackageGroupReference.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "pattern"))
    PackageGroupReference.type = Types::PackageGroupReference
    PackageGroupSummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    PackageGroupSummary.add_member(:pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "pattern"))
    PackageGroupSummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    PackageGroupSummary.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner"))
    PackageGroupSummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    PackageGroupSummary.add_member(:contact_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupContactInfo, name: "contactInfo"))
    PackageGroupSummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    PackageGroupSummary.add_member(:origin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupOriginConfiguration, name: "originConfiguration"))
    PackageGroupSummary.add_member(:parent, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupReference, name: "parent"))
    PackageGroupSummary.type = Types::PackageGroupSummary
    PackageGroupSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupSummary, name: "member")
    PackageOriginConfiguration.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOriginRestrictions, name: "restrictions"))
    PackageOriginConfiguration.type = Types::PackageOriginConfiguration
    PackageOriginRestrictions.add_member(:publish, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowPublish, name: "publish", traits: {"smithy.api#required" => {}}))
    PackageOriginRestrictions.add_member(:upstream, ::Smithy::Schema::Shapes::MemberShape.new(target: AllowUpstream, name: "upstream", traits: {"smithy.api#required" => {}}))
    PackageOriginRestrictions.type = Types::PackageOriginRestrictions
    PackageSummary.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    PackageSummary.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    PackageSummary.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    PackageSummary.add_member(:origin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOriginConfiguration, name: "originConfiguration"))
    PackageSummary.type = Types::PackageSummary
    PackageSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageSummary, name: "member")
    PackageVersionDescription.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    PackageVersionDescription.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    PackageVersionDescription.add_member(:package_name, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "packageName"))
    PackageVersionDescription.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String255, name: "displayName"))
    PackageVersionDescription.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version"))
    PackageVersionDescription.add_member(:summary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "summary"))
    PackageVersionDescription.add_member(:home_page, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "homePage"))
    PackageVersionDescription.add_member(:source_code_repository, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "sourceCodeRepository"))
    PackageVersionDescription.add_member(:published_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "publishedTime"))
    PackageVersionDescription.add_member(:licenses, ::Smithy::Schema::Shapes::MemberShape.new(target: LicenseInfoList, name: "licenses"))
    PackageVersionDescription.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "revision"))
    PackageVersionDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "status"))
    PackageVersionDescription.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionOrigin, name: "origin"))
    PackageVersionDescription.type = Types::PackageVersionDescription
    PackageVersionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionErrorCode, name: "errorCode"))
    PackageVersionError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "errorMessage"))
    PackageVersionError.type = Types::PackageVersionError
    PackageVersionErrorCode.add_member(:already_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALREADY_EXISTS", traits: {"smithy.api#enumValue" => "ALREADY_EXISTS"}))
    PackageVersionErrorCode.add_member(:mismatched_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_REVISION", traits: {"smithy.api#enumValue" => "MISMATCHED_REVISION"}))
    PackageVersionErrorCode.add_member(:mismatched_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MISMATCHED_STATUS", traits: {"smithy.api#enumValue" => "MISMATCHED_STATUS"}))
    PackageVersionErrorCode.add_member(:not_allowed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_ALLOWED", traits: {"smithy.api#enumValue" => "NOT_ALLOWED"}))
    PackageVersionErrorCode.add_member(:not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_FOUND", traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    PackageVersionErrorCode.add_member(:skipped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SKIPPED", traits: {"smithy.api#enumValue" => "SKIPPED"}))
    PackageVersionErrorMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "key")
    PackageVersionErrorMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionError, name: "value")
    PackageVersionList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "member")
    PackageVersionOrigin.add_member(:domain_entry_point, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEntryPoint, name: "domainEntryPoint"))
    PackageVersionOrigin.add_member(:origin_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionOriginType, name: "originType"))
    PackageVersionOrigin.type = Types::PackageVersionOrigin
    PackageVersionOriginType.add_member(:internal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL", traits: {"smithy.api#enumValue" => "INTERNAL"}))
    PackageVersionOriginType.add_member(:external, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXTERNAL", traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    PackageVersionOriginType.add_member(:unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN", traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    PackageVersionRevisionMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "key")
    PackageVersionRevisionMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "value")
    PackageVersionSortType.add_member(:published_time, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED_TIME", traits: {"smithy.api#enumValue" => "PUBLISHED_TIME"}))
    PackageVersionStatus.add_member(:published, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLISHED", traits: {"smithy.api#enumValue" => "Published"}))
    PackageVersionStatus.add_member(:unfinished, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNFINISHED", traits: {"smithy.api#enumValue" => "Unfinished"}))
    PackageVersionStatus.add_member(:unlisted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNLISTED", traits: {"smithy.api#enumValue" => "Unlisted"}))
    PackageVersionStatus.add_member(:archived, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ARCHIVED", traits: {"smithy.api#enumValue" => "Archived"}))
    PackageVersionStatus.add_member(:disposed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISPOSED", traits: {"smithy.api#enumValue" => "Disposed"}))
    PackageVersionStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "Deleted"}))
    PackageVersionSummary.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version", traits: {"smithy.api#required" => {}}))
    PackageVersionSummary.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "revision"))
    PackageVersionSummary.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "status", traits: {"smithy.api#required" => {}}))
    PackageVersionSummary.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionOrigin, name: "origin"))
    PackageVersionSummary.type = Types::PackageVersionSummary
    PackageVersionSummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionSummary, name: "member")
    PublishPackageVersionRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    PublishPackageVersionRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    PublishPackageVersionRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "packageVersion", traits: {"smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_content, ::Smithy::Schema::Shapes::MemberShape.new(target: Asset, name: "assetContent", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "assetName", traits: {"smithy.api#httpQuery" => "asset", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_sha256, ::Smithy::Schema::Shapes::MemberShape.new(target: SHA256, name: "assetSHA256", traits: {"smithy.api#httpHeader" => "x-amz-content-sha256", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:unfinished, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanOptional, name: "unfinished", traits: {"smithy.api#httpQuery" => "unfinished"}))
    PublishPackageVersionRequest[:http_payload] = :asset_content
    PublishPackageVersionRequest[:http_payload_member] = PublishPackageVersionRequest.member(:asset_content)
    PublishPackageVersionRequest.type = Types::PublishPackageVersionRequest
    PublishPackageVersionResult.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format"))
    PublishPackageVersionResult.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace"))
    PublishPackageVersionResult.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package"))
    PublishPackageVersionResult.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "version"))
    PublishPackageVersionResult.add_member(:version_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevision, name: "versionRevision"))
    PublishPackageVersionResult.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "status"))
    PublishPackageVersionResult.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSummary, name: "asset"))
    PublishPackageVersionResult.type = Types::PublishPackageVersionResult
    PutDomainPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#required" => {}}))
    PutDomainPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner"))
    PutDomainPermissionsPolicyRequest.add_member(:policy_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevision, name: "policyRevision"))
    PutDomainPermissionsPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    PutDomainPermissionsPolicyRequest.type = Types::PutDomainPermissionsPolicyRequest
    PutDomainPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    PutDomainPermissionsPolicyResult.type = Types::PutDomainPermissionsPolicyResult
    PutPackageOriginConfigurationRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    PutPackageOriginConfigurationRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    PutPackageOriginConfigurationRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOriginRestrictions, name: "restrictions", traits: {"smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.type = Types::PutPackageOriginConfigurationRequest
    PutPackageOriginConfigurationResult.add_member(:origin_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageOriginConfiguration, name: "originConfiguration"))
    PutPackageOriginConfigurationResult.type = Types::PutPackageOriginConfigurationResult
    PutRepositoryPermissionsPolicyRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    PutRepositoryPermissionsPolicyRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevision, name: "policyRevision"))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "policyDocument", traits: {"smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.type = Types::PutRepositoryPermissionsPolicyRequest
    PutRepositoryPermissionsPolicyResult.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourcePolicy, name: "policy"))
    PutRepositoryPermissionsPolicyResult.type = Types::PutRepositoryPermissionsPolicyResult
    RepositoryDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "name"))
    RepositoryDescription.add_member(:administrator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "administratorAccount"))
    RepositoryDescription.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    RepositoryDescription.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner"))
    RepositoryDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    RepositoryDescription.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RepositoryDescription.add_member(:upstreams, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepositoryInfoList, name: "upstreams"))
    RepositoryDescription.add_member(:external_connections, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryExternalConnectionInfoList, name: "externalConnections"))
    RepositoryDescription.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    RepositoryDescription.type = Types::RepositoryDescription
    RepositoryExternalConnectionInfo.add_member(:external_connection_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalConnectionName, name: "externalConnectionName"))
    RepositoryExternalConnectionInfo.add_member(:package_format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "packageFormat"))
    RepositoryExternalConnectionInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExternalConnectionStatus, name: "status"))
    RepositoryExternalConnectionInfo.type = Types::RepositoryExternalConnectionInfo
    RepositoryExternalConnectionInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryExternalConnectionInfo, name: "member")
    RepositoryNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "member")
    RepositorySummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "name"))
    RepositorySummary.add_member(:administrator_account, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "administratorAccount"))
    RepositorySummary.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domainName"))
    RepositorySummary.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner"))
    RepositorySummary.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "arn"))
    RepositorySummary.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    RepositorySummary.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "createdTime"))
    RepositorySummary.type = Types::RepositorySummary
    RepositorySummaryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RepositorySummary, name: "member")
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn"))
    ResourcePolicy.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyRevision, name: "revision"))
    ResourcePolicy.add_member(:document, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, name: "document"))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourceType.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN", traits: {"smithy.api#enumValue" => "domain"}))
    ResourceType.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REPOSITORY", traits: {"smithy.api#enumValue" => "repository"}))
    ResourceType.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PACKAGE", traits: {"smithy.api#enumValue" => "package"}))
    ResourceType.add_member(:package_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PACKAGE_VERSION", traits: {"smithy.api#enumValue" => "package-version"}))
    ResourceType.add_member(:asset, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSET", traits: {"smithy.api#enumValue" => "asset"}))
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "resourceId"))
    ServiceQuotaExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "resourceType"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SuccessfulPackageVersionInfo.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "revision"))
    SuccessfulPackageVersionInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "status"))
    SuccessfulPackageVersionInfo.type = Types::SuccessfulPackageVersionInfo
    SuccessfulPackageVersionInfoMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersion, name: "key")
    SuccessfulPackageVersionInfoMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulPackageVersionInfo, name: "value")
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member")
    TagList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member")
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryAfterSeconds, name: "retryAfterSeconds", traits: {"smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "resourceArn", traits: {"smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "tagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdatePackageGroupOriginConfigurationRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:restrictions, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginRestrictions, name: "restrictions"))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:add_allowed_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepositoryList, name: "addAllowedRepositories"))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:remove_allowed_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepositoryList, name: "removeAllowedRepositories"))
    UpdatePackageGroupOriginConfigurationRequest.type = Types::UpdatePackageGroupOriginConfigurationRequest
    UpdatePackageGroupOriginConfigurationResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    UpdatePackageGroupOriginConfigurationResult.add_member(:allowed_repository_updates, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupAllowedRepositoryUpdates, name: "allowedRepositoryUpdates"))
    UpdatePackageGroupOriginConfigurationResult.type = Types::UpdatePackageGroupOriginConfigurationResult
    UpdatePackageGroupRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageGroupRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageGroupRequest.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupPattern, name: "packageGroup", traits: {"smithy.api#required" => {}}))
    UpdatePackageGroupRequest.add_member(:contact_info, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupContactInfo, name: "contactInfo"))
    UpdatePackageGroupRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdatePackageGroupRequest.type = Types::UpdatePackageGroupRequest
    UpdatePackageGroupResult.add_member(:package_group, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageGroupDescription, name: "packageGroup"))
    UpdatePackageGroupResult.type = Types::UpdatePackageGroupResult
    UpdatePackageVersionsStatusRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageVersionsStatusRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageFormat, name: "format", traits: {"smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:namespace, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageNamespace, name: "namespace", traits: {"smithy.api#httpQuery" => "namespace"}))
    UpdatePackageVersionsStatusRequest.add_member(:package, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageName, name: "package", traits: {"smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionList, name: "versions", traits: {"smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:version_revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionRevisionMap, name: "versionRevisions"))
    UpdatePackageVersionsStatusRequest.add_member(:expected_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "expectedStatus"))
    UpdatePackageVersionsStatusRequest.add_member(:target_status, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionStatus, name: "targetStatus", traits: {"smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.type = Types::UpdatePackageVersionsStatusRequest
    UpdatePackageVersionsStatusResult.add_member(:successful_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: SuccessfulPackageVersionInfoMap, name: "successfulVersions"))
    UpdatePackageVersionsStatusResult.add_member(:failed_versions, ::Smithy::Schema::Shapes::MemberShape.new(target: PackageVersionErrorMap, name: "failedVersions"))
    UpdatePackageVersionsStatusResult.type = Types::UpdatePackageVersionsStatusResult
    UpdateRepositoryRequest.add_member(:domain, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, name: "domain", traits: {"smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdateRepositoryRequest.add_member(:domain_owner, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountId, name: "domainOwner", traits: {"smithy.api#httpQuery" => "domain-owner"}))
    UpdateRepositoryRequest.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repository", traits: {"smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    UpdateRepositoryRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "description"))
    UpdateRepositoryRequest.add_member(:upstreams, ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepositoryList, name: "upstreams"))
    UpdateRepositoryRequest.type = Types::UpdateRepositoryRequest
    UpdateRepositoryResult.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryDescription, name: "repository"))
    UpdateRepositoryResult.type = Types::UpdateRepositoryResult
    UpstreamRepository.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName", traits: {"smithy.api#required" => {}}))
    UpstreamRepository.type = Types::UpstreamRepository
    UpstreamRepositoryInfo.add_member(:repository_name, ::Smithy::Schema::Shapes::MemberShape.new(target: RepositoryName, name: "repositoryName"))
    UpstreamRepositoryInfo.type = Types::UpstreamRepositoryInfo
    UpstreamRepositoryInfoList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepositoryInfo, name: "member")
    UpstreamRepositoryList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UpstreamRepository, name: "member")
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ValidationExceptionReason, name: "reason"))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:cannot_parse, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANNOT_PARSE", traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:encryption_key_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENCRYPTION_KEY_ERROR", traits: {"smithy.api#enumValue" => "ENCRYPTION_KEY_ERROR"}))
    ValidationExceptionReason.add_member(:field_validation_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIELD_VALIDATION_FAILED", traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unknown_operation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_OPERATION", traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:other, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OTHER", traits: {"smithy.api#enumValue" => "OTHER"}))

    CodeArtifactControlPlaneService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codeartifact#CodeArtifactControlPlaneService"
      service.name = "CodeArtifactControlPlaneService"
      service.version = "2018-09-22"
      service.traits = {"aws.api#service" => {"sdkId" => "codeartifact", "arnNamespace" => "codeartifact", "cloudFormationName" => "Codeartifact", "cloudTrailEventSource" => "codeartifact.amazonaws.com", "endpointPrefix" => "codeartifact"}, "aws.auth#sigv4" => {"name" => "codeartifact"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "CodeArtifact"}
      service.add_operation(:associate_external_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#AssociateExternalConnection"
        operation.name = "AssociateExternalConnection"
        operation.input = AssociateExternalConnectionRequest
        operation.output = AssociateExternalConnectionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repository/external-connection", "code" => 200}}
      end)
      service.add_operation(:copy_package_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CopyPackageVersions"
        operation.name = "CopyPackageVersions"
        operation.input = CopyPackageVersionsRequest
        operation.output = CopyPackageVersionsResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/copy", "code" => 200}}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainRequest
        operation.output = CreateDomainResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:create_package_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreatePackageGroup"
        operation.name = "CreatePackageGroup"
        operation.input = CreatePackageGroupRequest
        operation.output = CreatePackageGroupResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-group", "code" => 200}}
      end)
      service.add_operation(:create_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = CreateRepositoryRequest
        operation.output = CreateRepositoryResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainRequest
        operation.output = DeleteDomainResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:delete_domain_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteDomainPermissionsPolicy"
        operation.name = "DeleteDomainPermissionsPolicy"
        operation.input = DeleteDomainPermissionsPolicyRequest
        operation.output = DeleteDomainPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:delete_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = DeletePackageRequest
        operation.output = DeletePackageResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:delete_package_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackageGroup"
        operation.name = "DeletePackageGroup"
        operation.input = DeletePackageGroupRequest
        operation.output = DeletePackageGroupResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/package-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_package_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackageVersions"
        operation.name = "DeletePackageVersions"
        operation.input = DeletePackageVersionsRequest
        operation.output = DeletePackageVersionsResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/delete", "code" => 200}}
      end)
      service.add_operation(:delete_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = DeleteRepositoryRequest
        operation.output = DeleteRepositoryResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:delete_repository_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicy"
        operation.name = "DeleteRepositoryPermissionsPolicy"
        operation.input = DeleteRepositoryPermissionsPolicyRequest
        operation.output = DeleteRepositoryPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository/permissions/policies", "code" => 200}}
      end)
      service.add_operation(:describe_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = DescribeDomainRequest
        operation.output = DescribeDomainResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:describe_package, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackage"
        operation.name = "DescribePackage"
        operation.input = DescribePackageRequest
        operation.output = DescribePackageResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:describe_package_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackageGroup"
        operation.name = "DescribePackageGroup"
        operation.input = DescribePackageGroupRequest
        operation.output = DescribePackageGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package-group", "code" => 200}}
      end)
      service.add_operation(:describe_package_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackageVersion"
        operation.name = "DescribePackageVersion"
        operation.input = DescribePackageVersionRequest
        operation.output = DescribePackageVersionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version", "code" => 200}}
      end)
      service.add_operation(:describe_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribeRepository"
        operation.name = "DescribeRepository"
        operation.input = DescribeRepositoryRequest
        operation.output = DescribeRepositoryResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:disassociate_external_connection, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DisassociateExternalConnection"
        operation.name = "DisassociateExternalConnection"
        operation.input = DisassociateExternalConnectionRequest
        operation.output = DisassociateExternalConnectionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository/external-connection", "code" => 200}}
      end)
      service.add_operation(:dispose_package_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DisposePackageVersions"
        operation.name = "DisposePackageVersions"
        operation.input = DisposePackageVersionsRequest
        operation.output = DisposePackageVersionsResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/dispose", "code" => 200}}
      end)
      service.add_operation(:get_associated_package_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetAssociatedPackageGroup"
        operation.name = "GetAssociatedPackageGroup"
        operation.input = GetAssociatedPackageGroupRequest
        operation.output = GetAssociatedPackageGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/get-associated-package-group", "code" => 200}}
      end)
      service.add_operation(:get_authorization_token, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = GetAuthorizationTokenRequest
        operation.output = GetAuthorizationTokenResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/authorization-token", "code" => 200}}
      end)
      service.add_operation(:get_domain_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetDomainPermissionsPolicy"
        operation.name = "GetDomainPermissionsPolicy"
        operation.input = GetDomainPermissionsPolicyRequest
        operation.output = GetDomainPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:get_package_version_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetPackageVersionAsset"
        operation.name = "GetPackageVersionAsset"
        operation.input = GetPackageVersionAssetRequest
        operation.output = GetPackageVersionAssetResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version/asset", "code" => 200}}
      end)
      service.add_operation(:get_package_version_readme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetPackageVersionReadme"
        operation.name = "GetPackageVersionReadme"
        operation.input = GetPackageVersionReadmeRequest
        operation.output = GetPackageVersionReadmeResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version/readme", "code" => 200}}
      end)
      service.add_operation(:get_repository_endpoint, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetRepositoryEndpoint"
        operation.name = "GetRepositoryEndpoint"
        operation.input = GetRepositoryEndpointRequest
        operation.output = GetRepositoryEndpointResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository/endpoint", "code" => 200}}
      end)
      service.add_operation(:get_repository_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetRepositoryPermissionsPolicy"
        operation.name = "GetRepositoryPermissionsPolicy"
        operation.input = GetRepositoryPermissionsPolicyRequest
        operation.output = GetRepositoryPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:list_allowed_repositories_for_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListAllowedRepositoriesForGroup"
        operation.name = "ListAllowedRepositoriesForGroup"
        operation.input = ListAllowedRepositoriesForGroupRequest
        operation.output = ListAllowedRepositoriesForGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package-group-allowed-repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListAllowedRepositoriesForGroup.new
      end)
      service.add_operation(:list_associated_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListAssociatedPackages"
        operation.name = "ListAssociatedPackages"
        operation.input = ListAssociatedPackagesRequest
        operation.output = ListAssociatedPackagesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/list-associated-packages", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedPackages.new
      end)
      service.add_operation(:list_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListDomains"
        operation.name = "ListDomains"
        operation.input = ListDomainsRequest
        operation.output = ListDomainsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_package_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageGroups"
        operation.name = "ListPackageGroups"
        operation.input = ListPackageGroupsRequest
        operation.output = ListPackageGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageGroups.new
      end)
      service.add_operation(:list_package_version_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersionAssets"
        operation.name = "ListPackageVersionAssets"
        operation.input = ListPackageVersionAssetsRequest
        operation.output = ListPackageVersionAssetsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageVersionAssets.new
      end)
      service.add_operation(:list_package_version_dependencies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersionDependencies"
        operation.name = "ListPackageVersionDependencies"
        operation.input = ListPackageVersionDependenciesRequest
        operation.output = ListPackageVersionDependenciesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/dependencies", "code" => 200}}
      end)
      service.add_operation(:list_package_versions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersions"
        operation.name = "ListPackageVersions"
        operation.input = ListPackageVersionsRequest
        operation.output = ListPackageVersionsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageVersions.new
      end)
      service.add_operation(:list_packages, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackages"
        operation.name = "ListPackages"
        operation.input = ListPackagesRequest
        operation.output = ListPackagesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackages.new
      end)
      service.add_operation(:list_repositories, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = ListRepositoriesRequest
        operation.output = ListRepositoriesResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repositories_in_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListRepositoriesInDomain"
        operation.name = "ListRepositoriesInDomain"
        operation.input = ListRepositoriesInDomainRequest
        operation.output = ListRepositoriesInDomainResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domain/repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListRepositoriesInDomain.new
      end)
      service.add_operation(:list_sub_package_groups, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListSubPackageGroups"
        operation.name = "ListSubPackageGroups"
        operation.input = ListSubPackageGroupsRequest
        operation.output = ListSubPackageGroupsResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-groups/sub-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListSubPackageGroups.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResult
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags", "code" => 200}}
      end)
      service.add_operation(:publish_package_version, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PublishPackageVersion"
        operation.name = "PublishPackageVersion"
        operation.input = PublishPackageVersionRequest
        operation.output = PublishPackageVersionResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/publish", "code" => 200}}
      end)
      service.add_operation(:put_domain_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutDomainPermissionsPolicy"
        operation.name = "PutDomainPermissionsPolicy"
        operation.input = PutDomainPermissionsPolicyRequest
        operation.output = PutDomainPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:put_package_origin_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutPackageOriginConfiguration"
        operation.name = "PutPackageOriginConfiguration"
        operation.input = PutPackageOriginConfigurationRequest
        operation.output = PutPackageOriginConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:put_repository_permissions_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutRepositoryPermissionsPolicy"
        operation.name = "PutRepositoryPermissionsPolicy"
        operation.input = PutRepositoryPermissionsPolicyRequest
        operation.output = PutRepositoryPermissionsPolicyResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/repository/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tag", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResult
        operation.errors << AccessDeniedException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/untag", "code" => 200}}
      end)
      service.add_operation(:update_package_group, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageGroup"
        operation.name = "UpdatePackageGroup"
        operation.input = UpdatePackageGroupRequest
        operation.output = UpdatePackageGroupResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/package-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_package_group_origin_configuration, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageGroupOriginConfiguration"
        operation.name = "UpdatePackageGroupOriginConfiguration"
        operation.input = UpdatePackageGroupOriginConfigurationRequest
        operation.output = UpdatePackageGroupOriginConfigurationResult
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/package-group-origin-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_package_versions_status, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageVersionsStatus"
        operation.name = "UpdatePackageVersionsStatus"
        operation.input = UpdatePackageVersionsStatusRequest
        operation.output = UpdatePackageVersionsStatusResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/update_status", "code" => 200}}
      end)
      service.add_operation(:update_repository, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdateRepository"
        operation.name = "UpdateRepository"
        operation.input = UpdateRepositoryRequest
        operation.output = UpdateRepositoryResult
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/repository", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
