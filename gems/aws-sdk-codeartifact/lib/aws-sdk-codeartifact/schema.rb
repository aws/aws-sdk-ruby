# frozen_string_literal: true

# This is generated code!

module Aws::Codeartifact
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#AccountId', name: 'AccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "^[0-9]{12}$"})
    AllowPublish = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#AllowPublish', name: 'AllowPublish')
    AllowUpstream = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#AllowUpstream', name: 'AllowUpstream')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 1, "max" => 1011}, "smithy.api#pattern" => "^\\S+$"})
    Asset = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.codeartifact#Asset', name: 'Asset', traits: {"smithy.api#streaming" => {}})
    AssetHashes = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#AssetHashes', name: 'AssetHashes')
    AssetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#AssetName', name: 'AssetName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^\\P{C}+$"})
    AssetSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#AssetSummary', name: 'AssetSummary')
    AssetSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#AssetSummaryList', name: 'AssetSummaryList')
    AssociateExternalConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#AssociateExternalConnectionRequest', name: 'AssociateExternalConnectionRequest')
    AssociateExternalConnectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#AssociateExternalConnectionResult', name: 'AssociateExternalConnectionResult')
    AssociatedPackage = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#AssociatedPackage', name: 'AssociatedPackage')
    AssociatedPackageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#AssociatedPackageList', name: 'AssociatedPackageList')
    AuthorizationTokenDurationSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#AuthorizationTokenDurationSeconds', name: 'AuthorizationTokenDurationSeconds', traits: {"smithy.api#range" => {"min" => 0, "max" => 43200}})
    BooleanOptional = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.codeartifact#BooleanOptional', name: 'BooleanOptional')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CopyPackageVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CopyPackageVersionsRequest', name: 'CopyPackageVersionsRequest')
    CopyPackageVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CopyPackageVersionsResult', name: 'CopyPackageVersionsResult')
    CreateDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreateDomainRequest', name: 'CreateDomainRequest')
    CreateDomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreateDomainResult', name: 'CreateDomainResult')
    CreatePackageGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreatePackageGroupRequest', name: 'CreatePackageGroupRequest')
    CreatePackageGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreatePackageGroupResult', name: 'CreatePackageGroupResult')
    CreateRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreateRepositoryRequest', name: 'CreateRepositoryRequest')
    CreateRepositoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#CreateRepositoryResult', name: 'CreateRepositoryResult')
    DeleteDomainPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteDomainPermissionsPolicyRequest', name: 'DeleteDomainPermissionsPolicyRequest')
    DeleteDomainPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteDomainPermissionsPolicyResult', name: 'DeleteDomainPermissionsPolicyResult')
    DeleteDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteDomainRequest', name: 'DeleteDomainRequest')
    DeleteDomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteDomainResult', name: 'DeleteDomainResult')
    DeletePackageGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageGroupRequest', name: 'DeletePackageGroupRequest')
    DeletePackageGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageGroupResult', name: 'DeletePackageGroupResult')
    DeletePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageRequest', name: 'DeletePackageRequest')
    DeletePackageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageResult', name: 'DeletePackageResult')
    DeletePackageVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageVersionsRequest', name: 'DeletePackageVersionsRequest')
    DeletePackageVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeletePackageVersionsResult', name: 'DeletePackageVersionsResult')
    DeleteRepositoryPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicyRequest', name: 'DeleteRepositoryPermissionsPolicyRequest')
    DeleteRepositoryPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicyResult', name: 'DeleteRepositoryPermissionsPolicyResult')
    DeleteRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteRepositoryRequest', name: 'DeleteRepositoryRequest')
    DeleteRepositoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DeleteRepositoryResult', name: 'DeleteRepositoryResult')
    DescribeDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribeDomainRequest', name: 'DescribeDomainRequest')
    DescribeDomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribeDomainResult', name: 'DescribeDomainResult')
    DescribePackageGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageGroupRequest', name: 'DescribePackageGroupRequest')
    DescribePackageGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageGroupResult', name: 'DescribePackageGroupResult')
    DescribePackageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageRequest', name: 'DescribePackageRequest')
    DescribePackageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageResult', name: 'DescribePackageResult')
    DescribePackageVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageVersionRequest', name: 'DescribePackageVersionRequest')
    DescribePackageVersionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribePackageVersionResult', name: 'DescribePackageVersionResult')
    DescribeRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribeRepositoryRequest', name: 'DescribeRepositoryRequest')
    DescribeRepositoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DescribeRepositoryResult', name: 'DescribeRepositoryResult')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    DisassociateExternalConnectionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DisassociateExternalConnectionRequest', name: 'DisassociateExternalConnectionRequest')
    DisassociateExternalConnectionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DisassociateExternalConnectionResult', name: 'DisassociateExternalConnectionResult')
    DisposePackageVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DisposePackageVersionsRequest', name: 'DisposePackageVersionsRequest')
    DisposePackageVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DisposePackageVersionsResult', name: 'DisposePackageVersionsResult')
    DomainDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DomainDescription', name: 'DomainDescription')
    DomainEntryPoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DomainEntryPoint', name: 'DomainEntryPoint')
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 2, "max" => 50}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]{0,48}[a-z0-9]$"})
    DomainStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#DomainStatus', name: 'DomainStatus')
    DomainSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#DomainSummary', name: 'DomainSummary')
    DomainSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#DomainSummaryList', name: 'DomainSummaryList')
    EndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#EndpointType', name: 'EndpointType')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#ErrorMessage', name: 'ErrorMessage')
    ExternalConnectionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#ExternalConnectionName', name: 'ExternalConnectionName', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9._\\-:]{1,99}$"})
    ExternalConnectionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#ExternalConnectionStatus', name: 'ExternalConnectionStatus')
    GetAssociatedPackageGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetAssociatedPackageGroupRequest', name: 'GetAssociatedPackageGroupRequest')
    GetAssociatedPackageGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetAssociatedPackageGroupResult', name: 'GetAssociatedPackageGroupResult')
    GetAuthorizationTokenRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetAuthorizationTokenRequest', name: 'GetAuthorizationTokenRequest')
    GetAuthorizationTokenResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetAuthorizationTokenResult', name: 'GetAuthorizationTokenResult', traits: {"smithy.api#sensitive" => {}})
    GetDomainPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetDomainPermissionsPolicyRequest', name: 'GetDomainPermissionsPolicyRequest')
    GetDomainPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetDomainPermissionsPolicyResult', name: 'GetDomainPermissionsPolicyResult')
    GetPackageVersionAssetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetPackageVersionAssetRequest', name: 'GetPackageVersionAssetRequest')
    GetPackageVersionAssetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetPackageVersionAssetResult', name: 'GetPackageVersionAssetResult')
    GetPackageVersionReadmeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetPackageVersionReadmeRequest', name: 'GetPackageVersionReadmeRequest')
    GetPackageVersionReadmeResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetPackageVersionReadmeResult', name: 'GetPackageVersionReadmeResult')
    GetRepositoryEndpointRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetRepositoryEndpointRequest', name: 'GetRepositoryEndpointRequest')
    GetRepositoryEndpointResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetRepositoryEndpointResult', name: 'GetRepositoryEndpointResult')
    GetRepositoryPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetRepositoryPermissionsPolicyRequest', name: 'GetRepositoryPermissionsPolicyRequest')
    GetRepositoryPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#GetRepositoryPermissionsPolicyResult', name: 'GetRepositoryPermissionsPolicyResult')
    HashAlgorithm = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#HashAlgorithm', name: 'HashAlgorithm')
    HashValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#HashValue', name: 'HashValue', traits: {"smithy.api#length" => {"min" => 32, "max" => 512}, "smithy.api#pattern" => "^[0-9a-f]+$"})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#Integer', name: 'Integer', traits: {"smithy.api#default" => 0})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    LicenseInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#LicenseInfo', name: 'LicenseInfo')
    LicenseInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#LicenseInfoList', name: 'LicenseInfoList')
    ListAllowedRepositoriesForGroupMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupMaxResults', name: 'ListAllowedRepositoriesForGroupMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListAllowedRepositoriesForGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupRequest', name: 'ListAllowedRepositoriesForGroupRequest')
    ListAllowedRepositoriesForGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListAllowedRepositoriesForGroupResult', name: 'ListAllowedRepositoriesForGroupResult')
    ListAssociatedPackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListAssociatedPackagesRequest', name: 'ListAssociatedPackagesRequest')
    ListAssociatedPackagesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListAssociatedPackagesResult', name: 'ListAssociatedPackagesResult')
    ListDomainsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListDomainsMaxResults', name: 'ListDomainsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListDomainsRequest', name: 'ListDomainsRequest')
    ListDomainsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListDomainsResult', name: 'ListDomainsResult')
    ListPackageGroupsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListPackageGroupsMaxResults', name: 'ListPackageGroupsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageGroupsRequest', name: 'ListPackageGroupsRequest')
    ListPackageGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageGroupsResult', name: 'ListPackageGroupsResult')
    ListPackageVersionAssetsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionAssetsMaxResults', name: 'ListPackageVersionAssetsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageVersionAssetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionAssetsRequest', name: 'ListPackageVersionAssetsRequest')
    ListPackageVersionAssetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionAssetsResult', name: 'ListPackageVersionAssetsResult')
    ListPackageVersionDependenciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionDependenciesRequest', name: 'ListPackageVersionDependenciesRequest')
    ListPackageVersionDependenciesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionDependenciesResult', name: 'ListPackageVersionDependenciesResult')
    ListPackageVersionsMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionsMaxResults', name: 'ListPackageVersionsMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackageVersionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionsRequest', name: 'ListPackageVersionsRequest')
    ListPackageVersionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackageVersionsResult', name: 'ListPackageVersionsResult')
    ListPackagesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListPackagesMaxResults', name: 'ListPackagesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListPackagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackagesRequest', name: 'ListPackagesRequest')
    ListPackagesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListPackagesResult', name: 'ListPackagesResult')
    ListRepositoriesInDomainMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesInDomainMaxResults', name: 'ListRepositoriesInDomainMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRepositoriesInDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesInDomainRequest', name: 'ListRepositoriesInDomainRequest')
    ListRepositoriesInDomainResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesInDomainResult', name: 'ListRepositoriesInDomainResult')
    ListRepositoriesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesMaxResults', name: 'ListRepositoriesMaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 1000}})
    ListRepositoriesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesRequest', name: 'ListRepositoriesRequest')
    ListRepositoriesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListRepositoriesResult', name: 'ListRepositoriesResult')
    ListSubPackageGroupsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListSubPackageGroupsRequest', name: 'ListSubPackageGroupsRequest')
    ListSubPackageGroupsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListSubPackageGroupsResult', name: 'ListSubPackageGroupsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ListTagsForResourceResult', name: 'ListTagsForResourceResult')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#Long', name: 'Long', traits: {"smithy.api#default" => 0})
    LongOptional = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#LongOptional', name: 'LongOptional')
    OriginRestrictions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#OriginRestrictions', name: 'OriginRestrictions')
    PackageDependency = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageDependency', name: 'PackageDependency')
    PackageDependencyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageDependencyList', name: 'PackageDependencyList')
    PackageDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageDescription', name: 'PackageDescription')
    PackageFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageFormat', name: 'PackageFormat')
    PackageGroupAllowedRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAllowedRepository', name: 'PackageGroupAllowedRepository')
    PackageGroupAllowedRepositoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAllowedRepositoryList', name: 'PackageGroupAllowedRepositoryList')
    PackageGroupAllowedRepositoryUpdate = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdate', name: 'PackageGroupAllowedRepositoryUpdate')
    PackageGroupAllowedRepositoryUpdateType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdateType', name: 'PackageGroupAllowedRepositoryUpdateType')
    PackageGroupAllowedRepositoryUpdates = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAllowedRepositoryUpdates', name: 'PackageGroupAllowedRepositoryUpdates')
    PackageGroupAssociationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageGroupAssociationType', name: 'PackageGroupAssociationType')
    PackageGroupContactInfo = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageGroupContactInfo', name: 'PackageGroupContactInfo', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}, "smithy.api#pattern" => "^\\P{C}*$"})
    PackageGroupDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupDescription', name: 'PackageGroupDescription')
    PackageGroupOriginConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupOriginConfiguration', name: 'PackageGroupOriginConfiguration')
    PackageGroupOriginRestriction = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupOriginRestriction', name: 'PackageGroupOriginRestriction')
    PackageGroupOriginRestrictionMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageGroupOriginRestrictionMode', name: 'PackageGroupOriginRestrictionMode')
    PackageGroupOriginRestrictionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageGroupOriginRestrictionType', name: 'PackageGroupOriginRestrictionType')
    PackageGroupOriginRestrictions = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#PackageGroupOriginRestrictions', name: 'PackageGroupOriginRestrictions')
    PackageGroupPattern = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageGroupPattern', name: 'PackageGroupPattern', traits: {"smithy.api#length" => {"min" => 2, "max" => 520}, "smithy.api#pattern" => "^[^\\p{C}\\p{IsWhitespace}]+$"})
    PackageGroupPatternPrefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageGroupPatternPrefix', name: 'PackageGroupPatternPrefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 520}, "smithy.api#pattern" => "^\\P{C}*$"})
    PackageGroupReference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupReference', name: 'PackageGroupReference')
    PackageGroupSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageGroupSummary', name: 'PackageGroupSummary')
    PackageGroupSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageGroupSummaryList', name: 'PackageGroupSummaryList')
    PackageName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageName', name: 'PackageName', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageNamespace = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageNamespace', name: 'PackageNamespace', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageOriginConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageOriginConfiguration', name: 'PackageOriginConfiguration')
    PackageOriginRestrictions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageOriginRestrictions', name: 'PackageOriginRestrictions')
    PackageSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageSummary', name: 'PackageSummary')
    PackageSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageSummaryList', name: 'PackageSummaryList')
    PackageVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageVersion', name: 'PackageVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[^#/\\s]+$"})
    PackageVersionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageVersionDescription', name: 'PackageVersionDescription')
    PackageVersionError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageVersionError', name: 'PackageVersionError')
    PackageVersionErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageVersionErrorCode', name: 'PackageVersionErrorCode')
    PackageVersionErrorMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#PackageVersionErrorMap', name: 'PackageVersionErrorMap')
    PackageVersionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageVersionList', name: 'PackageVersionList', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    PackageVersionOrigin = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageVersionOrigin', name: 'PackageVersionOrigin')
    PackageVersionOriginType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageVersionOriginType', name: 'PackageVersionOriginType')
    PackageVersionRevision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PackageVersionRevision', name: 'PackageVersionRevision', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^\\S+$"})
    PackageVersionRevisionMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#PackageVersionRevisionMap', name: 'PackageVersionRevisionMap')
    PackageVersionSortType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageVersionSortType', name: 'PackageVersionSortType')
    PackageVersionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#PackageVersionStatus', name: 'PackageVersionStatus')
    PackageVersionSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PackageVersionSummary', name: 'PackageVersionSummary')
    PackageVersionSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#PackageVersionSummaryList', name: 'PackageVersionSummaryList')
    PaginationToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PaginationToken', name: 'PaginationToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 2000}, "smithy.api#pattern" => "^\\S+$"})
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PolicyDocument', name: 'PolicyDocument', traits: {"smithy.api#length" => {"min" => 1, "max" => 7168}, "smithy.api#pattern" => "^[\\P{C}\\s]+$"})
    PolicyRevision = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#PolicyRevision', name: 'PolicyRevision', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^\\S+$"})
    PublishPackageVersionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PublishPackageVersionRequest', name: 'PublishPackageVersionRequest')
    PublishPackageVersionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PublishPackageVersionResult', name: 'PublishPackageVersionResult')
    PutDomainPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutDomainPermissionsPolicyRequest', name: 'PutDomainPermissionsPolicyRequest')
    PutDomainPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutDomainPermissionsPolicyResult', name: 'PutDomainPermissionsPolicyResult')
    PutPackageOriginConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutPackageOriginConfigurationRequest', name: 'PutPackageOriginConfigurationRequest')
    PutPackageOriginConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutPackageOriginConfigurationResult', name: 'PutPackageOriginConfigurationResult')
    PutRepositoryPermissionsPolicyRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutRepositoryPermissionsPolicyRequest', name: 'PutRepositoryPermissionsPolicyRequest')
    PutRepositoryPermissionsPolicyResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#PutRepositoryPermissionsPolicyResult', name: 'PutRepositoryPermissionsPolicyResult')
    RepositoryDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#RepositoryDescription', name: 'RepositoryDescription')
    RepositoryExternalConnectionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#RepositoryExternalConnectionInfo', name: 'RepositoryExternalConnectionInfo')
    RepositoryExternalConnectionInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#RepositoryExternalConnectionInfoList', name: 'RepositoryExternalConnectionInfoList')
    RepositoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#RepositoryName', name: 'RepositoryName', traits: {"smithy.api#length" => {"min" => 2, "max" => 100}, "smithy.api#pattern" => "^[A-Za-z0-9][A-Za-z0-9._\\-]{1,99}$"})
    RepositoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#RepositoryNameList', name: 'RepositoryNameList')
    RepositorySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#RepositorySummary', name: 'RepositorySummary')
    RepositorySummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#RepositorySummaryList', name: 'RepositorySummaryList')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ResourcePolicy', name: 'ResourcePolicy')
    ResourceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#ResourceType', name: 'ResourceType')
    RetryAfterSeconds = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.codeartifact#RetryAfterSeconds', name: 'RetryAfterSeconds')
    SHA256 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#SHA256', name: 'SHA256', traits: {"smithy.api#length" => {"min" => 64, "max" => 64}, "smithy.api#pattern" => "^[0-9a-f]+$"})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#String', name: 'String')
    String255 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#String255', name: 'String255', traits: {"smithy.api#length" => {"min" => 1, "max" => 255}})
    SuccessfulPackageVersionInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#SuccessfulPackageVersionInfo', name: 'SuccessfulPackageVersionInfo')
    SuccessfulPackageVersionInfoMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.codeartifact#SuccessfulPackageVersionInfoMap', name: 'SuccessfulPackageVersionInfoMap')
    Tag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#Tag', name: 'Tag')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^\\P{C}+$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#TagList', name: 'TagList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#TagResourceResult', name: 'TagResourceResult')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.codeartifact#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^\\P{C}*$"})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.codeartifact#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UntagResourceResult', name: 'UntagResourceResult')
    UpdatePackageGroupOriginConfigurationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageGroupOriginConfigurationRequest', name: 'UpdatePackageGroupOriginConfigurationRequest')
    UpdatePackageGroupOriginConfigurationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageGroupOriginConfigurationResult', name: 'UpdatePackageGroupOriginConfigurationResult')
    UpdatePackageGroupRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageGroupRequest', name: 'UpdatePackageGroupRequest')
    UpdatePackageGroupResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageGroupResult', name: 'UpdatePackageGroupResult')
    UpdatePackageVersionsStatusRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageVersionsStatusRequest', name: 'UpdatePackageVersionsStatusRequest')
    UpdatePackageVersionsStatusResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdatePackageVersionsStatusResult', name: 'UpdatePackageVersionsStatusResult')
    UpdateRepositoryRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdateRepositoryRequest', name: 'UpdateRepositoryRequest')
    UpdateRepositoryResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpdateRepositoryResult', name: 'UpdateRepositoryResult')
    UpstreamRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpstreamRepository', name: 'UpstreamRepository')
    UpstreamRepositoryInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#UpstreamRepositoryInfo', name: 'UpstreamRepositoryInfo')
    UpstreamRepositoryInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#UpstreamRepositoryInfoList', name: 'UpstreamRepositoryInfoList')
    UpstreamRepositoryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.codeartifact#UpstreamRepositoryList', name: 'UpstreamRepositoryList')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.codeartifact#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ValidationExceptionReason = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.codeartifact#ValidationExceptionReason', name: 'ValidationExceptionReason')

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AllowPublish.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AllowPublish.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    AllowUpstream.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    AllowUpstream.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    AssetHashes.key = Smithy::Schema::Shapes::ShapeRef.new(shape: HashAlgorithm)
    AssetHashes.value = Smithy::Schema::Shapes::ShapeRef.new(shape: HashValue)
    AssetSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n         The name of the asset.\n       </p>", "smithy.api#required" => {}}))
    AssetSummary.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'size', traits: {"smithy.api#documentation" => "<p>\n      The size of the asset.\n    </p>"}))
    AssetSummary.add_member(:hashes, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetHashes, location_name: 'hashes', traits: {"smithy.api#documentation" => "<p>\n      The hashes of the asset.\n    </p>"}))
    AssetSummary.type = Types::AssetSummary
    AssetSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSummary)
    AssociateExternalConnectionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the repository.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    AssociateExternalConnectionRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository to which the external connection is added.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.add_member(:external_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: 'externalConnection', traits: {"smithy.api#documentation" => "<p>\n      The name of the external connection to add to the repository. The following values are supported:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>public:npmjs</code> - for the npm public repository.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:nuget-org</code> - for the NuGet Gallery.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:pypi</code> - for the Python Package Index.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:maven-central</code> - for Maven Central.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:maven-googleandroid</code> - for the Google Android repository.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:maven-gradleplugins</code> - for the Gradle plugins repository.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:maven-commonsware</code> - for the CommonsWare Android repository.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:maven-clojars</code> - for the Clojars repository. </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:ruby-gems-org</code> - for RubyGems.org. </p>\n            </li>\n            <li>\n               <p>\n                  <code>public:crates-io</code> - for Crates.io. </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "external-connection", "smithy.api#required" => {}}))
    AssociateExternalConnectionRequest.type = Types::AssociateExternalConnectionRequest
    AssociateExternalConnectionResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        Information about the connected repository after processing the request.\n       </p>"}))
    AssociateExternalConnectionResult.type = Types::AssociateExternalConnectionResult
    AssociatedPackage.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A format that specifies the type of the associated package.</p>"}))
    AssociatedPackage.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the associated package. The package component that specifies its \n    namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    AssociatedPackage.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the associated package.\n    </p>"}))
    AssociatedPackage.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>Describes the strength of the association between the package and package group. A strong match can be thought of as an \n      exact match, and a weak match can be thought of as a variation match, for example, the package name matches a variation of the package group pattern. \n      For more information about package group pattern matching, including strong and weak matches, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/package-group-definition-syntax-matching-behavior.html\">Package group definition syntax and matching behavior</a> \n      in the <i>CodeArtifact User Guide</i>.</p>"}))
    AssociatedPackage.type = Types::AssociatedPackage
    AssociatedPackageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedPackage)
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the resource.\n    </p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of Amazon Web Services resource.\n    </p>"}))
    ConflictException.type = Types::ConflictException
    CopyPackageVersionsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the source and destination repositories.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    CopyPackageVersionsRequest.add_member(:source_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'sourceRepository', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository that contains the package versions to be copied.\n       </p>", "smithy.api#httpQuery" => "source-repository", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:destination_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'destinationRepository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository into which package versions are copied.\n    </p>", "smithy.api#httpQuery" => "destination-repository", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package versions to be copied.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package versions to be copied. The package component that specifies its namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when copying package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    CopyPackageVersionsRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that contains the versions to be copied.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    CopyPackageVersionsRequest.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>\n        The versions of the package to be copied.\n      </p>\n         <note>\n            <p>\n        You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.\n      </p>\n         </note>"}))
    CopyPackageVersionsRequest.add_member(:version_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: 'versionRevisions', traits: {"smithy.api#documentation" => "<p>\n       A list of key-value pairs. The keys are package versions and the values are package version revisions. A <code>CopyPackageVersion</code> operation\n      succeeds if the specified versions in the source repository match the specified package version revision.\n    </p>\n         <note>\n            <p>\n        You must specify <code>versions</code> or <code>versionRevisions</code>. You cannot specify both.\n      </p>\n         </note>"}))
    CopyPackageVersionsRequest.add_member(:allow_overwrite, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'allowOverwrite', traits: {"smithy.api#documentation" => "<p>\n       Set to true to overwrite a package version that already exists in the destination repository.\n       If set to false and the package version already exists in the destination repository,\n       the package version is returned in the <code>failedVersions</code> field of the response with \n       an <code>ALREADY_EXISTS</code> error code.\n     </p>"}))
    CopyPackageVersionsRequest.add_member(:include_from_upstream, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'includeFromUpstream', traits: {"smithy.api#documentation" => "<p> Set to true to copy packages from repositories that are upstream from the source\n      repository to the destination repository. The default setting is false. For more information,\n      see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with\n        upstream repositories</a>. </p>"}))
    CopyPackageVersionsRequest.type = Types::CopyPackageVersionsRequest
    CopyPackageVersionsResult.add_member(:successful_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: 'successfulVersions', traits: {"smithy.api#documentation" => "<p>\n      A list of the package versions that were successfully copied to your repository.\n    </p>"}))
    CopyPackageVersionsResult.add_member(:failed_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: 'failedVersions', traits: {"smithy.api#documentation" => "<p>\n      A map of package versions that failed to copy and their error codes. The possible error codes are in \n      the <code>PackageVersionError</code> data type. They are:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALREADY_EXISTS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_REVISION</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_STATUS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_ALLOWED</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_FOUND</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SKIPPED</code>\n               </p>\n            </li>\n         </ul>"}))
    CopyPackageVersionsResult.type = Types::CopyPackageVersionsResult
    CreateDomainRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p> The name of the domain to create. All domain names in an Amazon Web Services Region that are in the\n      same Amazon Web Services account must be unique. The domain name is used as the prefix in DNS hostnames. Do\n      not use sensitive information in a domain name because it is publicly discoverable. </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreateDomainRequest.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p> The encryption key for the domain. This is used to encrypt content stored in a domain.\n      An encryption key can be a key ID, a key Amazon Resource Name (ARN), a key alias, or a key\n      alias ARN. To specify an <code>encryptionKey</code>, your IAM role must have\n        <code>kms:DescribeKey</code> and <code>kms:CreateGrant</code> permissions on the encryption\n      key that is used. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/APIReference/API_DescribeKey.html#API_DescribeKey_RequestSyntax\">DescribeKey</a> in the <i>Key Management Service API Reference</i>\n      and <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html\">Key Management Service API Permissions\n        Reference</a> in the <i>Key Management Service Developer Guide</i>. </p>\n         <important>\n            <p> CodeArtifact supports only symmetric CMKs. Do not associate an asymmetric CMK with your\n        domain. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric\n          keys</a> in the <i>Key Management Service Developer Guide</i>. </p>\n         </important>"}))
    CreateDomainRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs for the domain.</p>"}))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResult.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDescription, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        Contains information about the created domain after processing the request.\n      </p>"}))
    CreateDomainResult.type = Types::CreateDomainResult
    CreatePackageGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain in which you want to create a package group.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreatePackageGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    CreatePackageGroupRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>The pattern of the package group to create. The pattern is also the identifier of the package group. </p>", "smithy.api#required" => {}}))
    CreatePackageGroupRequest.add_member(:contact_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupContactInfo, location_name: 'contactInfo', traits: {"smithy.api#documentation" => "<p>\n      The contact information for the created package group.\n    </p>"}))
    CreatePackageGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      A description of the package group.\n    </p>"}))
    CreatePackageGroupRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs for the package group.</p>"}))
    CreatePackageGroupRequest.type = Types::CreatePackageGroupRequest
    CreatePackageGroupResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      Information about the created package group after processing the request.\n    </p>"}))
    CreatePackageGroupResult.type = Types::CreatePackageGroupResult
    CreateRepositoryRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the created repository.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    CreateRepositoryRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository to create. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    CreateRepositoryRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      A description of the created repository.\n    </p>"}))
    CreateRepositoryRequest.add_member(:upstreams, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRepositoryList, location_name: 'upstreams', traits: {"smithy.api#documentation" => "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories \n        in the list determines their priority order when CodeArtifact looks for a requested package version. For more \n        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"}))
    CreateRepositoryRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>One or more tag key-value pairs for the repository.</p>"}))
    CreateRepositoryRequest.type = Types::CreateRepositoryRequest
    CreateRepositoryResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        Information about the created repository after processing the request.\n      </p>"}))
    CreateRepositoryResult.type = Types::CreateRepositoryResult
    DeleteDomainPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain associated with the resource policy to be deleted.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteDomainPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeleteDomainPermissionsPolicyRequest.add_member(:policy_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevision, location_name: 'policyRevision', traits: {"smithy.api#documentation" => "<p>\n        The current revision of the resource policy to be deleted. This revision is used for optimistic locking, which\n        prevents others from overwriting your changes to the domain's resource policy.\n      </p>", "smithy.api#httpQuery" => "policy-revision"}))
    DeleteDomainPermissionsPolicyRequest.type = Types::DeleteDomainPermissionsPolicyRequest
    DeleteDomainPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>\n        Information about the deleted resource policy after processing the request.\n      </p>"}))
    DeleteDomainPermissionsPolicyResult.type = Types::DeleteDomainPermissionsPolicyResult
    DeleteDomainRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain to delete.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteDomainRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResult.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDescription, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        Contains information about the deleted domain after processing the request.\n       </p>"}))
    DeleteDomainResult.type = Types::DeleteDomainResult
    DeletePackageGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The domain that contains the package group to be deleted.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageGroupRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>The pattern of the package group to be deleted.</p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    DeletePackageGroupRequest.type = Types::DeletePackageGroupRequest
    DeletePackageGroupResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      Information about the deleted package group after processing the request.\n    </p>"}))
    DeletePackageGroupResult.type = Types::DeletePackageGroupResult
    DeletePackageRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the package to delete.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the package to delete.</p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the requested package to delete.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DeletePackageRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package to delete. The package component that specifies its namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when deleting packages of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    DeletePackageRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>The name of the package to delete.</p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DeletePackageRequest.type = Types::DeletePackageRequest
    DeletePackageResult.add_member(:deleted_package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSummary, location_name: 'deletedPackage'))
    DeletePackageResult.type = Types::DeletePackageResult
    DeletePackageVersionsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the package to delete.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeletePackageVersionsRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        The name of the repository that contains the package versions to delete.\n      </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n        The format of the package versions to delete.\n      </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package versions to be deleted. The package component that specifies its namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when deleting package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    DeletePackageVersionsRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n        The name of the package with the versions to delete.\n      </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>\n        An array of strings that specify the versions of the package to delete.\n      </p>", "smithy.api#required" => {}}))
    DeletePackageVersionsRequest.add_member(:expected_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'expectedStatus', traits: {"smithy.api#documentation" => "<p>\n        The expected status of the package version to delete.\n      </p>"}))
    DeletePackageVersionsRequest.type = Types::DeletePackageVersionsRequest
    DeletePackageVersionsResult.add_member(:successful_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: 'successfulVersions', traits: {"smithy.api#documentation" => "<p>\n       A list of the package versions that were successfully deleted. The \n       status of every successful version will be <code>Deleted</code>.\n     </p>"}))
    DeletePackageVersionsResult.add_member(:failed_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: 'failedVersions', traits: {"smithy.api#documentation" => "<p>\n       A <code>PackageVersionError</code> object that contains a map of errors codes for the \n       deleted package that failed. The possible error codes are:\n     </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALREADY_EXISTS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_REVISION</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_STATUS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_ALLOWED</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_FOUND</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SKIPPED</code>\n               </p>\n            </li>\n         </ul>"}))
    DeletePackageVersionsResult.type = Types::DeletePackageVersionsResult
    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the repository associated with the resource policy to be deleted.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository that is associated with the resource policy to be deleted\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeleteRepositoryPermissionsPolicyRequest.add_member(:policy_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevision, location_name: 'policyRevision', traits: {"smithy.api#documentation" => "<p>\n      The revision of the repository's resource policy to be deleted. This revision is used for optimistic locking, which\n      prevents others from accidentally overwriting your changes to the repository's resource policy.\n    </p>", "smithy.api#httpQuery" => "policy-revision"}))
    DeleteRepositoryPermissionsPolicyRequest.type = Types::DeleteRepositoryPermissionsPolicyRequest
    DeleteRepositoryPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>\n      Information about the deleted policy after processing the request.\n    </p>"}))
    DeleteRepositoryPermissionsPolicyResult.type = Types::DeleteRepositoryPermissionsPolicyResult
    DeleteRepositoryRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository to delete.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DeleteRepositoryRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DeleteRepositoryRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p> The name of the repository to delete. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DeleteRepositoryRequest.type = Types::DeleteRepositoryRequest
    DeleteRepositoryResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        Information about the deleted repository after processing the request.\n       </p>"}))
    DeleteRepositoryResult.type = Types::DeleteRepositoryResult
    DescribeDomainRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         A string that specifies the name of the requested domain.\n     </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribeDomainRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DescribeDomainRequest.type = Types::DescribeDomainRequest
    DescribeDomainResult.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainDescription, location_name: 'domain'))
    DescribeDomainResult.type = Types::DescribeDomainResult
    DescribePackageGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the package group. \n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageGroupRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>The pattern of the requested package group.</p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    DescribePackageGroupRequest.type = Types::DescribePackageGroupRequest
    DescribePackageGroupResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageGroupDescription.html\">PackageGroupDescription</a> object \n    that contains information about the requested package group.</p>"}))
    DescribePackageGroupResult.type = Types::DescribePackageGroupResult
    DescribePackageRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the repository that contains the package.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the requested package. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A format that specifies the type of the requested package.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DescribePackageRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the requested package. The package component that specifies its namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when requesting packages of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    DescribePackageRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>The name of the requested package.</p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DescribePackageRequest.type = Types::DescribePackageRequest
    DescribePackageResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDescription, location_name: 'package', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDescription.html\">PackageDescription</a> \n      object that contains information about the requested package.</p>", "smithy.api#required" => {}}))
    DescribePackageResult.type = Types::DescribePackageResult
    DescribePackageVersionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository that contains the package version.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DescribePackageVersionRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p> The name of the repository that contains the package version. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of the requested package version.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the requested package version. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when requesting package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    DescribePackageVersionRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p> The name of the requested package version. </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    DescribePackageVersionRequest.type = Types::DescribePackageVersionRequest
    DescribePackageVersionResult.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionDescription, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionDescription.html\">PackageVersionDescription</a> \n      object that contains information about the requested package version.\n    </p>", "smithy.api#required" => {}}))
    DescribePackageVersionResult.type = Types::DescribePackageVersionResult
    DescribeRepositoryRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository to describe.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DescribeRepositoryRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DescribeRepositoryRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        A string that specifies the name of the requested repository.\n       </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DescribeRepositoryRequest.type = Types::DescribeRepositoryRequest
    DescribeRepositoryResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         A <code>RepositoryDescription</code> object that contains the requested repository information.\n       </p>"}))
    DescribeRepositoryResult.type = Types::DescribeRepositoryResult
    DisassociateExternalConnectionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the repository from which to remove the external\n      repository. </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DisassociateExternalConnectionRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository from which the external connection will be removed. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.add_member(:external_connection, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: 'externalConnection', traits: {"smithy.api#documentation" => "<p>The name of the external connection to be removed from the repository. </p>", "smithy.api#httpQuery" => "external-connection", "smithy.api#required" => {}}))
    DisassociateExternalConnectionRequest.type = Types::DisassociateExternalConnectionRequest
    DisassociateExternalConnectionResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The repository associated with the removed external connection.\n    </p>"}))
    DisassociateExternalConnectionResult.type = Types::DisassociateExternalConnectionResult
    DisposePackageVersionsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository you want to dispose.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    DisposePackageVersionsRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository that contains the package versions you want to dispose.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of package versions you want to dispose.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package versions to be disposed. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when disposing package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    DisposePackageVersionsRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package with the versions you want to dispose.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>\n      The versions of the package you want to dispose.\n    </p>", "smithy.api#required" => {}}))
    DisposePackageVersionsRequest.add_member(:version_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: 'versionRevisions', traits: {"smithy.api#documentation" => "<p>\n      The revisions of the package versions you want to dispose.\n    </p>"}))
    DisposePackageVersionsRequest.add_member(:expected_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'expectedStatus', traits: {"smithy.api#documentation" => "<p>\n      The expected status of the package version to dispose.\n    </p>"}))
    DisposePackageVersionsRequest.type = Types::DisposePackageVersionsRequest
    DisposePackageVersionsResult.add_member(:successful_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: 'successfulVersions', traits: {"smithy.api#documentation" => "<p>\n      A list of the package versions that were successfully disposed.\n    </p>"}))
    DisposePackageVersionsResult.add_member(:failed_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: 'failedVersions', traits: {"smithy.api#documentation" => "<p>\n      A <code>PackageVersionError</code> object that contains a map of errors codes for the \n      disposed package versions that failed. The possible error codes are:\n    </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALREADY_EXISTS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_REVISION</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_STATUS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_ALLOWED</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_FOUND</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SKIPPED</code>\n               </p>\n            </li>\n         </ul>"}))
    DisposePackageVersionsResult.type = Types::DisposePackageVersionsResult
    DomainDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain.\n       </p>"}))
    DomainDescription.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'owner', traits: {"smithy.api#documentation" => "<p> The Amazon Web Services account ID that owns the domain. </p>"}))
    DomainDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the domain. </p>"}))
    DomainDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n        The current status of a domain.\n      </p>"}))
    DomainDescription.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>\n      A timestamp that represents the date and time the domain was created.\n    </p>"}))
    DomainDescription.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p> The ARN of an Key Management Service (KMS) key associated with a domain. </p>"}))
    DomainDescription.add_member(:repository_count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'repositoryCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The number of repositories in the domain.\n    </p>"}))
    DomainDescription.add_member(:asset_size_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'assetSizeBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>\n      The total size of all assets in the domain.\n    </p>"}))
    DomainDescription.add_member(:s3_bucket_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 's3BucketArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Amazon S3 bucket that is used to store package assets in the domain.</p>"}))
    DomainDescription.type = Types::DomainDescription
    DomainEntryPoint.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>The name of the repository that a package was originally published to.</p>"}))
    DomainEntryPoint.add_member(:external_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: 'externalConnectionName', traits: {"smithy.api#documentation" => "<p>The name of the external connection that a package was ingested from.</p>"}))
    DomainEntryPoint.type = Types::DomainEntryPoint
    DomainStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "Active"}))
    DomainStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    DomainSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain.\n    </p>"}))
    DomainSummary.add_member(:owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'owner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>"}))
    DomainSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the domain.\n    </p>"}))
    DomainSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the status of the domain.    \n    </p>"}))
    DomainSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>\n      A timestamp that contains the date and time the domain was created.\n    </p>"}))
    DomainSummary.add_member(:encryption_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'encryptionKey', traits: {"smithy.api#documentation" => "<p>\n      The key used to encrypt the domain.\n    </p>"}))
    DomainSummary.type = Types::DomainSummary
    DomainSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummary)
    EndpointType.add_member(:dualstack, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DUALSTACK', traits: {"smithy.api#enumValue" => "dualstack"}))
    EndpointType.add_member(:ipv4, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IPV4', traits: {"smithy.api#enumValue" => "ipv4"}))
    ExternalConnectionStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "Available"}))
    GetAssociatedPackageGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the package from which to get the associated package group.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetAssociatedPackageGroupRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package from which to get the associated package group.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package from which to get the associated package group. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when getting associated package groups from packages of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    GetAssociatedPackageGroupRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The package from which to get the associated package group.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetAssociatedPackageGroupRequest.type = Types::GetAssociatedPackageGroupRequest
    GetAssociatedPackageGroupResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>The package group that is associated with the requested package.</p>"}))
    GetAssociatedPackageGroupResult.add_member(:association_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAssociationType, location_name: 'associationType', traits: {"smithy.api#documentation" => "<p>Describes the strength of the association between the package and package group. A strong match is also known as an \n    exact match, and a weak match is known as a relative match.</p>"}))
    GetAssociatedPackageGroupResult.type = Types::GetAssociatedPackageGroupResult
    GetAuthorizationTokenRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that is in scope for the generated authorization token.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetAuthorizationTokenRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetAuthorizationTokenRequest.add_member(:duration_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthorizationTokenDurationSeconds, location_name: 'durationSeconds', traits: {"smithy.api#documentation" => "<p>The time, in seconds, that the generated authorization token is valid. Valid values are \n    <code>0</code> and any number between <code>900</code> (15 minutes) and <code>43200</code> (12 hours). \n    A value of <code>0</code> will set the expiration of the authorization token to the same expiration of \n    the user's role's temporary credentials.</p>", "smithy.api#httpQuery" => "duration"}))
    GetAuthorizationTokenRequest.type = Types::GetAuthorizationTokenRequest
    GetAuthorizationTokenResult.add_member(:authorization_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'authorizationToken', traits: {"smithy.api#documentation" => "<p>\n        The returned authentication token.\n       </p>"}))
    GetAuthorizationTokenResult.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'expiration', traits: {"smithy.api#documentation" => "<p>\n      A timestamp that specifies the date and time the authorization token expires.\n    </p>"}))
    GetAuthorizationTokenResult.type = Types::GetAuthorizationTokenResult
    GetDomainPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain to which the resource policy is attached.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetDomainPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetDomainPermissionsPolicyRequest.type = Types::GetDomainPermissionsPolicyRequest
    GetDomainPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>\n        The returned resource policy.\n      </p>"}))
    GetDomainPermissionsPolicyResult.type = Types::GetDomainPermissionsPolicyResult
    GetPackageVersionAssetRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository that contains the package version with the requested asset.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetPackageVersionAssetRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The repository that contains the package version with the requested asset.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of the package version with the requested asset file.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version with the requested asset file. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when requesting assets from package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    GetPackageVersionAssetRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that contains the requested asset.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'asset', traits: {"smithy.api#documentation" => "<p>\n      The name of the requested asset.\n    </p>", "smithy.api#httpQuery" => "asset", "smithy.api#required" => {}}))
    GetPackageVersionAssetRequest.add_member(:package_version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'packageVersionRevision', traits: {"smithy.api#documentation" => "<p>\n        The name of the package version revision that contains the requested asset.\n    </p>", "smithy.api#httpQuery" => "revision"}))
    GetPackageVersionAssetRequest.type = Types::GetPackageVersionAssetRequest
    GetPackageVersionAssetResult.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: Asset, location_name: 'asset', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p> The binary file, or asset, that is downloaded.</p>", "smithy.api#httpPayload" => {}}))
    GetPackageVersionAssetResult.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>\n      The name of the asset that is downloaded.\n    </p>", "smithy.api#httpHeader" => "X-AssetName"}))
    GetPackageVersionAssetResult.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpHeader" => "X-PackageVersion"}))
    GetPackageVersionAssetResult.add_member(:package_version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'packageVersionRevision', traits: {"smithy.api#documentation" => "<p>\n      The name of the package version revision that contains the downloaded asset.\n    </p>", "smithy.api#httpHeader" => "X-PackageVersionRevision"}))
    GetPackageVersionAssetResult[:http_payload] = :asset
    GetPackageVersionAssetResult[:http_payload_member] = GetPackageVersionAssetResult.member(:asset)
    GetPackageVersionAssetResult.type = Types::GetPackageVersionAssetResult
    GetPackageVersionReadmeRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository that contains the package version with the requested readme file.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetPackageVersionReadmeRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The repository that contains the package with the requested readme file.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of the package version with the requested readme file.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version with the requested readme file. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when requesting the readme from package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    GetPackageVersionReadmeRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package version that contains the requested readme file.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    GetPackageVersionReadmeRequest.type = Types::GetPackageVersionReadmeRequest
    GetPackageVersionReadmeResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package with the requested readme file.\n    </p>"}))
    GetPackageVersionReadmeResult.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version with the requested readme file. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    GetPackageVersionReadmeResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that contains the returned readme file.\n    </p>"}))
    GetPackageVersionReadmeResult.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>\n      The version of the package with the requested readme file.\n    </p>"}))
    GetPackageVersionReadmeResult.add_member(:version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'versionRevision', traits: {"smithy.api#documentation" => "<p>\n      The current revision associated with the package version.\n    </p>"}))
    GetPackageVersionReadmeResult.add_member(:readme, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'readme', traits: {"smithy.api#documentation" => "<p>\n      The text of the returned readme file.\n    </p>"}))
    GetPackageVersionReadmeResult.type = Types::GetPackageVersionReadmeResult
    GetRepositoryEndpointRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository.\n     </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetRepositoryEndpointRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository.\n     </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      Returns which endpoint of a repository to return. A repository has one endpoint for each \n      package format.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    GetRepositoryEndpointRequest.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EndpointType, location_name: 'endpointType', traits: {"smithy.api#documentation" => "<p>A string that specifies the type of endpoint.</p>", "smithy.api#httpQuery" => "endpointType"}))
    GetRepositoryEndpointRequest.type = Types::GetRepositoryEndpointRequest
    GetRepositoryEndpointResult.add_member(:repository_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'repositoryEndpoint', traits: {"smithy.api#documentation" => "<p>\n         A string that specifies the URL of the returned endpoint.\n     </p>"}))
    GetRepositoryEndpointResult.type = Types::GetRepositoryEndpointResult
    GetRepositoryPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain containing the repository whose associated resource policy is to be retrieved.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    GetRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    GetRepositoryPermissionsPolicyRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n        The name of the repository whose associated resource policy is to be retrieved.\n      </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    GetRepositoryPermissionsPolicyRequest.type = Types::GetRepositoryPermissionsPolicyRequest
    GetRepositoryPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>\n        The returned resource policy.\n      </p>"}))
    GetRepositoryPermissionsPolicyResult.type = Types::GetRepositoryPermissionsPolicyResult
    HashAlgorithm.add_member(:md5, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MD5', traits: {"smithy.api#enumValue" => "MD5"}))
    HashAlgorithm.add_member(:sha1, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA1', traits: {"smithy.api#enumValue" => "SHA-1"}))
    HashAlgorithm.add_member(:sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA256', traits: {"smithy.api#enumValue" => "SHA-256"}))
    HashAlgorithm.add_member(:sha512, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHA512', traits: {"smithy.api#enumValue" => "SHA-512"}))
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    LicenseInfo.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n        Name of the license.\n      </p>"}))
    LicenseInfo.add_member(:url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'url', traits: {"smithy.api#documentation" => "<p>\n        The URL for license data.\n      </p>"}))
    LicenseInfo.type = Types::LicenseInfo
    LicenseInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfo)
    ListAllowedRepositoriesForGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the package group from which to list allowed repositories.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListAllowedRepositoriesForGroupRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>The pattern of the package group from which to list allowed repositories.</p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:origin_restriction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionType, location_name: 'originRestrictionType', traits: {"smithy.api#documentation" => "<p>The origin configuration restriction type of which to list allowed repositories.</p>", "smithy.api#httpQuery" => "originRestrictionType", "smithy.api#required" => {}}))
    ListAllowedRepositoriesForGroupRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedRepositoriesForGroupMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListAllowedRepositoriesForGroupRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListAllowedRepositoriesForGroupRequest.type = Types::ListAllowedRepositoriesForGroupRequest
    ListAllowedRepositoriesForGroupResult.add_member(:allowed_repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList, location_name: 'allowedRepositories', traits: {"smithy.api#documentation" => "<p>The list of allowed repositories for the package group and origin configuration restriction type.</p>"}))
    ListAllowedRepositoriesForGroupResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListAllowedRepositoriesForGroupResult.type = Types::ListAllowedRepositoriesForGroupResult
    ListAssociatedPackagesRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the package group from which to list associated packages.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListAssociatedPackagesRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListAssociatedPackagesRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group from which to list associated packages.\n    </p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListAssociatedPackagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListAssociatedPackagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListAssociatedPackagesRequest.add_member(:preview, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'preview', traits: {"smithy.api#documentation" => "<p>\n      When this flag is included, <code>ListAssociatedPackages</code> will return a list of packages that would be associated with a package \n      group, even if it does not exist.\n    </p>", "smithy.api#httpQuery" => "preview"}))
    ListAssociatedPackagesRequest.type = Types::ListAssociatedPackagesRequest
    ListAssociatedPackagesResult.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedPackageList, location_name: 'packages', traits: {"smithy.api#documentation" => "<p>\n      The list of packages associated with the requested package group.\n    </p>"}))
    ListAssociatedPackagesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListAssociatedPackagesResult.type = Types::ListAssociatedPackagesResult
    ListDomainsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>"}))
    ListDomainsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListDomainsRequest.type = Types::ListDomainsRequest
    ListDomainsResult.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainSummaryList, location_name: 'domains', traits: {"smithy.api#documentation" => "<p>\n      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainSummary.html\">DomainSummary</a> objects.\n     </p>"}))
    ListDomainsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListDomainsResult.type = Types::ListDomainsResult
    ListPackageGroupsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The domain for which you want to list package groups.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageGroupsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListPackageGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageGroupsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListPackageGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListPackageGroupsRequest.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPatternPrefix, location_name: 'prefix', traits: {"smithy.api#documentation" => "<p>\n      A prefix for which to search package groups. When included, <code>ListPackageGroups</code> will return only\n      package groups with patterns that match the prefix.\n    </p>", "smithy.api#httpQuery" => "prefix"}))
    ListPackageGroupsRequest.type = Types::ListPackageGroupsRequest
    ListPackageGroupsResult.add_member(:package_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupSummaryList, location_name: 'packageGroups', traits: {"smithy.api#documentation" => "<p>\n      The list of package groups in the requested domain.\n    </p>"}))
    ListPackageGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListPackageGroupsResult.type = Types::ListPackageGroupsResult
    ListPackageVersionAssetsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository associated with the package version assets.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionAssetsRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository that contains the package that contains the requested package version assets.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package that contains the requested package version assets.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version that contains the requested package version assets. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required requesting assets from package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionAssetsRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n         The name of the package that contains the requested package version assets.\n       </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    ListPackageVersionAssetsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionAssetsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListPackageVersionAssetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionAssetsRequest.type = Types::ListPackageVersionAssetsRequest
    ListPackageVersionAssetsResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package that contains the requested package version assets.\n    </p>"}))
    ListPackageVersionAssetsResult.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version that contains the requested package version assets. The package component that specifies its \n       namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    ListPackageVersionAssetsResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that contains the requested package version assets.\n    </p>"}))
    ListPackageVersionAssetsResult.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>\n      The version of the package associated with the requested assets.\n    </p>"}))
    ListPackageVersionAssetsResult.add_member(:version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'versionRevision', traits: {"smithy.api#documentation" => "<p>\n      The current revision associated with the package version.\n    </p>"}))
    ListPackageVersionAssetsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListPackageVersionAssetsResult.add_member(:assets, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSummaryList, location_name: 'assets', traits: {"smithy.api#documentation" => "<p>\n      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html\">AssetSummary</a> objects.\n    </p>"}))
    ListPackageVersionAssetsResult.type = Types::ListPackageVersionAssetsResult
    ListPackageVersionDependenciesRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository that contains the requested package version dependencies.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionDependenciesRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The name of the repository that contains the requested package version.\n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package with the requested dependencies.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version with the requested dependencies. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when listing dependencies from package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          Python and NuGet package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionDependenciesRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package versions' package.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the package version (for example, <code>3.5.2</code>).\n    </p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    ListPackageVersionDependenciesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionDependenciesRequest.type = Types::ListPackageVersionDependenciesRequest
    ListPackageVersionDependenciesResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of the package that contains the returned dependencies.\n    </p>"}))
    ListPackageVersionDependenciesResult.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version that contains the returned dependencies. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when listing dependencies from package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          Python and NuGet package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    ListPackageVersionDependenciesResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that contains the returned package versions dependencies.\n    </p>"}))
    ListPackageVersionDependenciesResult.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>\n      The version of the package that is specified in the request.\n    </p>"}))
    ListPackageVersionDependenciesResult.add_member(:version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'versionRevision', traits: {"smithy.api#documentation" => "<p>\n      The current revision associated with the package version.\n    </p>"}))
    ListPackageVersionDependenciesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>"}))
    ListPackageVersionDependenciesResult.add_member(:dependencies, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDependencyList, location_name: 'dependencies', traits: {"smithy.api#documentation" => "<p>\n      The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageDependency.html\">PackageDependency</a> objects.\n    </p>"}))
    ListPackageVersionDependenciesResult.type = Types::ListPackageVersionDependenciesResult
    ListPackageVersionsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository that contains the requested package versions.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListPackageVersionsRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository that contains the requested package versions.\n       </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package versions you want to list.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package that contains the requested package versions. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <note>\n            <p>The namespace is required when deleting package versions of the following formats:</p>\n            <ul>\n               <li>\n                  <p>Maven</p>\n               </li>\n               <li>\n                  <p>Swift</p>\n               </li>\n               <li>\n                  <p>generic</p>\n               </li>\n            </ul>\n         </note>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    ListPackageVersionsRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package for which you want to request package versions.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    ListPackageVersionsRequest.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      A string that filters the requested package versions by status.\n    </p>", "smithy.api#httpQuery" => "status"}))
    ListPackageVersionsRequest.add_member(:sort_by, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionSortType, location_name: 'sortBy', traits: {"smithy.api#documentation" => "<p>\n      How to sort the requested list of package versions.\n    </p>", "smithy.api#httpQuery" => "sortBy"}))
    ListPackageVersionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListPackageVersionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListPackageVersionsRequest.add_member(:origin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionOriginType, location_name: 'originType', traits: {"smithy.api#documentation" => "<p>The <code>originType</code> used to filter package versions. \n      Only package versions with the provided <code>originType</code> will be returned.</p>", "smithy.api#httpQuery" => "originType"}))
    ListPackageVersionsRequest.type = Types::ListPackageVersionsRequest
    ListPackageVersionsResult.add_member(:default_display_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'defaultDisplayVersion', traits: {"smithy.api#documentation" => "<p>\n      The default package version to display. This depends on the package format:\n    </p>\n         <ul>\n            <li>\n               <p>\n          For Maven and PyPI packages, it's the most recently published package version.\n        </p>\n            </li>\n            <li>\n               <p>\n          For npm packages, it's the version referenced by the\n          <code>latest</code> tag. If the  <code>latest</code> tag is not set, it's the most recently published package version.\n        </p>\n            </li>\n         </ul>"}))
    ListPackageVersionsResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format of the package.\n    </p>"}))
    ListPackageVersionsResult.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package that contains the requested package versions. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    ListPackageVersionsResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n         The name of the package.\n       </p>"}))
    ListPackageVersionsResult.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionSummaryList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>\n        The returned list of \n        <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionSummary.html\">PackageVersionSummary</a> \n        objects.\n       </p>"}))
    ListPackageVersionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListPackageVersionsResult.type = Types::ListPackageVersionsResult
    ListPackagesRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the repository that contains the requested packages.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListPackagesRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListPackagesRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository that contains the requested packages.\n       </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    ListPackagesRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format used to filter requested packages. Only packages from the provided format will be returned.</p>", "smithy.api#httpQuery" => "format"}))
    ListPackagesRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace prefix used to filter requested packages. \n      Only packages with a namespace that starts with the provided string value are returned. \n      Note that although this option is called <code>--namespace</code> and not <code>--namespace-prefix</code>, it has prefix-matching behavior.</p>\n         <p>Each package format uses namespace as follows:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    ListPackagesRequest.add_member(:package_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'packagePrefix', traits: {"smithy.api#documentation" => "<p>\n      A prefix used to filter requested packages. Only packages with names that start with \n      <code>packagePrefix</code> are returned.\n    </p>", "smithy.api#httpQuery" => "package-prefix"}))
    ListPackagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListPackagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListPackagesRequest.add_member(:publish, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowPublish, location_name: 'publish', traits: {"smithy.api#documentation" => "<p>The value of the <code>Publish</code> package origin control restriction used to filter requested packages. \n      Only packages with the provided restriction are returned. \n      For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html\">PackageOriginRestrictions</a>.</p>", "smithy.api#httpQuery" => "publish"}))
    ListPackagesRequest.add_member(:upstream, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowUpstream, location_name: 'upstream', traits: {"smithy.api#documentation" => "<p>The value of the <code>Upstream</code> package origin control restriction used to filter requested packages. \n      Only packages with the provided restriction are returned. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html\">PackageOriginRestrictions</a>.</p>", "smithy.api#httpQuery" => "upstream"}))
    ListPackagesRequest.type = Types::ListPackagesRequest
    ListPackagesResult.add_member(:packages, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSummaryList, location_name: 'packages', traits: {"smithy.api#documentation" => "<p>\n        The list of returned <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageSummary.html\">PackageSummary</a> \n        objects.\n       </p>"}))
    ListPackagesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListPackagesResult.type = Types::ListPackagesResult
    ListRepositoriesInDomainRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the returned list of repositories.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListRepositoriesInDomainRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListRepositoriesInDomainRequest.add_member(:administrator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'administratorAccount', traits: {"smithy.api#documentation" => "<p>\n         Filter the list of repositories to only include those that are managed by the Amazon Web Services account ID.\n       </p>", "smithy.api#httpQuery" => "administrator-account"}))
    ListRepositoriesInDomainRequest.add_member(:repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryPrefix', traits: {"smithy.api#documentation" => "<p>\n      A prefix used to filter returned repositories. Only repositories with names that start with \n      <code>repositoryPrefix</code> are returned.\n    </p>", "smithy.api#httpQuery" => "repository-prefix"}))
    ListRepositoriesInDomainRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesInDomainMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListRepositoriesInDomainRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListRepositoriesInDomainRequest.type = Types::ListRepositoriesInDomainRequest
    ListRepositoriesInDomainResult.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>\n       The returned list of repositories.\n     </p>"}))
    ListRepositoriesInDomainResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListRepositoriesInDomainResult.type = Types::ListRepositoriesInDomainResult
    ListRepositoriesRequest.add_member(:repository_prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryPrefix', traits: {"smithy.api#documentation" => "<p> A prefix used to filter returned repositories. Only repositories with names that start\n      with <code>repositoryPrefix</code> are returned.</p>", "smithy.api#httpQuery" => "repository-prefix"}))
    ListRepositoriesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListRepositoriesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListRepositoriesRequest.type = Types::ListRepositoriesRequest
    ListRepositoriesResult.add_member(:repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummaryList, location_name: 'repositories', traits: {"smithy.api#documentation" => "<p>\n        The returned list of <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_RepositorySummary.html\">RepositorySummary</a> \n        objects.\n       </p>"}))
    ListRepositoriesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListRepositoriesResult.type = Types::ListRepositoriesResult
    ListSubPackageGroupsRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain which contains the package group from which to list sub package groups.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    ListSubPackageGroupsRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    ListSubPackageGroupsRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group from which to list sub package groups.\n    </p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    ListSubPackageGroupsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageGroupsMaxResults, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p>\n        The maximum number of results to return per page.\n       </p>", "smithy.api#httpQuery" => "max-results"}))
    ListSubPackageGroupsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        The token for the next set of results. Use the value returned in the previous response in the next request to retrieve the next set of results.\n       </p>", "smithy.api#httpQuery" => "next-token"}))
    ListSubPackageGroupsRequest.type = Types::ListSubPackageGroupsRequest
    ListSubPackageGroupsResult.add_member(:package_groups, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupSummaryList, location_name: 'packageGroups', traits: {"smithy.api#documentation" => "<p>\n      A list of sub package groups for the requested package group.\n    </p>"}))
    ListSubPackageGroupsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: PaginationToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p>\n        If there are additional results, this is the token for the next set of results.\n       </p>"}))
    ListSubPackageGroupsResult.type = Types::ListSubPackageGroupsResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource to get tags for.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResult.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>A list of tag key and value pairs associated with the specified resource.</p>"}))
    ListTagsForResourceResult.type = Types::ListTagsForResourceResult
    OriginRestrictions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionType)
    OriginRestrictions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionMode)
    PackageDependency.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package that this package depends on. The package component that specifies its \n       namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    PackageDependency.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n        The name of the package that this package depends on.\n       </p>"}))
    PackageDependency.add_member(:dependency_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'dependencyType', traits: {"smithy.api#documentation" => "<p> The type of a package dependency. The possible values depend on the package type.</p>\n         <ul>\n            <li>\n               <p>npm: <code>regular</code>, <code>dev</code>, <code>peer</code>, <code>optional</code>\n               </p>\n            </li>\n            <li>\n               <p>maven: <code>optional</code>, <code>parent</code>, <code>compile</code>, <code>runtime</code>, <code>test</code>, <code>system</code>, <code>provided</code>.</p>\n               <note>\n                  <p>Note that <code>parent</code> is not a regular Maven dependency type; instead this is extracted from the <code><parent></code> element if one is defined in the package version's POM file.</p>\n               </note>\n            </li>\n            <li>\n               <p>nuget: The <code>dependencyType</code> field is never set for NuGet packages.</p>\n            </li>\n            <li>\n               <p>pypi: <code>Requires-Dist</code>\n               </p>\n            </li>\n         </ul>"}))
    PackageDependency.add_member(:version_requirement, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionRequirement', traits: {"smithy.api#documentation" => "<p>\n        The required version, or version range, of the package that this package depends on. The version format\n        is specific to the package type. For example, the following are possible valid required versions: <code>1.2.3</code>,\n        <code>^2.3.4</code>, or <code>4.x</code>.\n      </p>"}))
    PackageDependency.type = Types::PackageDependency
    PackageDependencyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageDependency)
    PackageDescription.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A format that specifies the type of the package.</p>"}))
    PackageDescription.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    PackageDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>The name of the package.</p>"}))
    PackageDescription.add_member(:origin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: 'originConfiguration', traits: {"smithy.api#documentation" => "<p>The package origin configuration for the package.</p>"}))
    PackageDescription.type = Types::PackageDescription
    PackageFormat.add_member(:npm, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NPM', traits: {"smithy.api#enumValue" => "npm"}))
    PackageFormat.add_member(:pypi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PYPI', traits: {"smithy.api#enumValue" => "pypi"}))
    PackageFormat.add_member(:maven, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAVEN', traits: {"smithy.api#enumValue" => "maven"}))
    PackageFormat.add_member(:nuget, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NUGET', traits: {"smithy.api#enumValue" => "nuget"}))
    PackageFormat.add_member(:generic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GENERIC', traits: {"smithy.api#enumValue" => "generic"}))
    PackageFormat.add_member(:ruby, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUBY', traits: {"smithy.api#enumValue" => "ruby"}))
    PackageFormat.add_member(:swift, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SWIFT', traits: {"smithy.api#enumValue" => "swift"}))
    PackageFormat.add_member(:cargo, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CARGO', traits: {"smithy.api#enumValue" => "cargo"}))
    PackageGroupAllowedRepository.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p>\n      The name of the allowed repository.\n    </p>"}))
    PackageGroupAllowedRepository.add_member(:origin_restriction_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionType, location_name: 'originRestrictionType', traits: {"smithy.api#documentation" => "<p>The origin configuration restriction type of the allowed repository.</p>"}))
    PackageGroupAllowedRepository.type = Types::PackageGroupAllowedRepository
    PackageGroupAllowedRepositoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepository)
    PackageGroupAllowedRepositoryUpdate.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepositoryUpdateType)
    PackageGroupAllowedRepositoryUpdate.value = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryNameList)
    PackageGroupAllowedRepositoryUpdateType.add_member(:added, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ADDED', traits: {"smithy.api#enumValue" => "ADDED"}))
    PackageGroupAllowedRepositoryUpdateType.add_member(:removed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REMOVED', traits: {"smithy.api#enumValue" => "REMOVED"}))
    PackageGroupAllowedRepositoryUpdates.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionType)
    PackageGroupAllowedRepositoryUpdates.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepositoryUpdate)
    PackageGroupAssociationType.add_member(:strong, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STRONG', traits: {"smithy.api#enumValue" => "STRONG"}))
    PackageGroupAssociationType.add_member(:weak, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WEAK', traits: {"smithy.api#enumValue" => "WEAK"}))
    PackageGroupDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the package group.\n    </p>"}))
    PackageGroupDescription.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group. The pattern determines which packages are associated with the package group.\n    </p>"}))
    PackageGroupDescription.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the package group.\n    </p>"}))
    PackageGroupDescription.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>"}))
    PackageGroupDescription.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>A timestamp that represents the date and time the package group was created.</p>"}))
    PackageGroupDescription.add_member(:contact_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupContactInfo, location_name: 'contactInfo', traits: {"smithy.api#documentation" => "<p>\n      The contact information of the package group.\n    </p>"}))
    PackageGroupDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      The description of the package group.\n    </p>"}))
    PackageGroupDescription.add_member(:origin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginConfiguration, location_name: 'originConfiguration', traits: {"smithy.api#documentation" => "<p>The package group origin configuration that determines how package versions can enter repositories.</p>"}))
    PackageGroupDescription.add_member(:parent, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupReference, location_name: 'parent', traits: {"smithy.api#documentation" => "<p>\n      The direct parent package group of the package group.\n    </p>"}))
    PackageGroupDescription.type = Types::PackageGroupDescription
    PackageGroupOriginConfiguration.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictions, location_name: 'restrictions', traits: {"smithy.api#documentation" => "<p>The origin configuration settings that determine how package versions can enter repositories.</p>"}))
    PackageGroupOriginConfiguration.type = Types::PackageGroupOriginConfiguration
    PackageGroupOriginRestriction.add_member(:mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionMode, location_name: 'mode', traits: {"smithy.api#documentation" => "<p>The package group origin restriction setting. If the value of <code>mode</code> is <code>ALLOW</code>, \n      <code>ALLOW_SPECIFIC_REPOSITORIES</code>, or <code>BLOCK</code>, then the value of <code>effectiveMode</code> \n    is the same. Otherwise, when the value is <code>INHERIT</code>, then the value of <code>effectiveMode</code> is the value of \n    <code>mode</code> of the first parent group which does not have a value of <code>INHERIT</code>.</p>"}))
    PackageGroupOriginRestriction.add_member(:effective_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionMode, location_name: 'effectiveMode', traits: {"smithy.api#documentation" => "<p>The effective package group origin restriction setting. If the value of <code>mode</code> is <code>ALLOW</code>, \n      <code>ALLOW_SPECIFIC_REPOSITORIES</code>, or <code>BLOCK</code>, then the value of <code>effectiveMode</code> \n      is the same. Otherwise, when the value of <code>mode</code> is <code>INHERIT</code>, then the value of <code>effectiveMode</code> is the value of \n      <code>mode</code> of the first parent group which does not have a value of <code>INHERIT</code>.</p>"}))
    PackageGroupOriginRestriction.add_member(:inherited_from, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupReference, location_name: 'inheritedFrom', traits: {"smithy.api#documentation" => "<p>The parent package group that the package group origin restrictions are inherited from.</p>"}))
    PackageGroupOriginRestriction.add_member(:repositories_count, Smithy::Schema::Shapes::ShapeRef.new(shape: LongOptional, location_name: 'repositoriesCount', traits: {"smithy.api#documentation" => "<p>The number of repositories in the allowed repository list.</p>"}))
    PackageGroupOriginRestriction.type = Types::PackageGroupOriginRestriction
    PackageGroupOriginRestrictionMode.add_member(:allow, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW', traits: {"smithy.api#enumValue" => "ALLOW"}))
    PackageGroupOriginRestrictionMode.add_member(:allow_specific_repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_SPECIFIC_REPOSITORIES', traits: {"smithy.api#enumValue" => "ALLOW_SPECIFIC_REPOSITORIES"}))
    PackageGroupOriginRestrictionMode.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLOCK', traits: {"smithy.api#enumValue" => "BLOCK"}))
    PackageGroupOriginRestrictionMode.add_member(:inherit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INHERIT', traits: {"smithy.api#enumValue" => "INHERIT"}))
    PackageGroupOriginRestrictionType.add_member(:external_upstream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL_UPSTREAM', traits: {"smithy.api#enumValue" => "EXTERNAL_UPSTREAM"}))
    PackageGroupOriginRestrictionType.add_member(:internal_upstream, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_UPSTREAM', traits: {"smithy.api#enumValue" => "INTERNAL_UPSTREAM"}))
    PackageGroupOriginRestrictionType.add_member(:publish, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISH', traits: {"smithy.api#enumValue" => "PUBLISH"}))
    PackageGroupOriginRestrictions.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestrictionType)
    PackageGroupOriginRestrictions.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginRestriction)
    PackageGroupReference.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the package group.\n    </p>"}))
    PackageGroupReference.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group. The pattern determines which packages are associated with the package group, and is \n      also the identifier of the package group.\n    </p>"}))
    PackageGroupReference.type = Types::PackageGroupReference
    PackageGroupSummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>\n      The ARN of the package group.\n    </p>"}))
    PackageGroupSummary.add_member(:pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'pattern', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group. The pattern determines which packages are associated with the package group.\n    </p>"}))
    PackageGroupSummary.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>\n      The domain that contains the package group.\n    </p>"}))
    PackageGroupSummary.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>"}))
    PackageGroupSummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>A timestamp that represents the date and time the repository was created.</p>"}))
    PackageGroupSummary.add_member(:contact_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupContactInfo, location_name: 'contactInfo', traits: {"smithy.api#documentation" => "<p>\n      The contact information of the package group.\n    </p>"}))
    PackageGroupSummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      The description of the package group.\n    </p>"}))
    PackageGroupSummary.add_member(:origin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupOriginConfiguration, location_name: 'originConfiguration', traits: {"smithy.api#documentation" => "<p>Details about the package origin configuration of a package group.</p>"}))
    PackageGroupSummary.add_member(:parent, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupReference, location_name: 'parent', traits: {"smithy.api#documentation" => "<p>\n      The direct parent package group of the package group.\n    </p>"}))
    PackageGroupSummary.type = Types::PackageGroupSummary
    PackageGroupSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupSummary)
    PackageOriginConfiguration.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOriginRestrictions, location_name: 'restrictions', traits: {"smithy.api#documentation" => "<p>A <code>PackageOriginRestrictions</code> object that contains information \n    about the upstream and publish package origin configuration for the package.</p>"}))
    PackageOriginConfiguration.type = Types::PackageOriginConfiguration
    PackageOriginRestrictions.add_member(:publish, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowPublish, location_name: 'publish', traits: {"smithy.api#documentation" => "<p>The package origin configuration that determines if new versions of the package can be published directly to the repository.</p>", "smithy.api#required" => {}}))
    PackageOriginRestrictions.add_member(:upstream, Smithy::Schema::Shapes::ShapeRef.new(shape: AllowUpstream, location_name: 'upstream', traits: {"smithy.api#documentation" => "<p>The package origin configuration that determines if new versions of the package can be added to the repository from an external connection or upstream source.</p>", "smithy.api#required" => {}}))
    PackageOriginRestrictions.type = Types::PackageOriginRestrictions
    PackageSummary.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package.\n    </p>"}))
    PackageSummary.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    PackageSummary.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package.\n    </p>"}))
    PackageSummary.add_member(:origin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: 'originConfiguration', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html\">PackageOriginConfiguration</a> \n      object that contains a <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html\">PackageOriginRestrictions</a> object \n      that contains information about the upstream and publish package origin restrictions.</p>"}))
    PackageSummary.type = Types::PackageSummary
    PackageSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageSummary)
    PackageVersionDescription.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      The format of the package version.\n    </p>"}))
    PackageVersionDescription.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>"}))
    PackageVersionDescription.add_member(:package_name, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'packageName', traits: {"smithy.api#documentation" => "<p>\n      The name of the requested package.\n    </p>"}))
    PackageVersionDescription.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String255, location_name: 'displayName', traits: {"smithy.api#documentation" => "<p>\n      The name of the package that is displayed. The <code>displayName</code> varies depending \n      on the package version's format. For example, if an npm package is named <code>ui</code>, \n      is in the namespace <code>vue</code>, and has the format <code>npm</code>, then \n      the <code>displayName</code> is <code>@vue/ui</code>.\n    </p>"}))
    PackageVersionDescription.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>\n      The version of the package.\n    </p>"}))
    PackageVersionDescription.add_member(:summary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'summary', traits: {"smithy.api#documentation" => "<p>\n      A summary of the package version. The summary is extracted from the package. The information in and \n      detail level of the summary depends on the package version's format.\n    </p>"}))
    PackageVersionDescription.add_member(:home_page, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'homePage', traits: {"smithy.api#documentation" => "<p>\n      The homepage associated with the package. \n    </p>"}))
    PackageVersionDescription.add_member(:source_code_repository, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'sourceCodeRepository', traits: {"smithy.api#documentation" => "<p>\n      The repository for the source code in the package version, or the source code used to build it.\n    </p>"}))
    PackageVersionDescription.add_member(:published_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'publishedTime', traits: {"smithy.api#documentation" => "<p>\n      A timestamp that contains the date and time the package version was published.\n    </p>"}))
    PackageVersionDescription.add_member(:licenses, Smithy::Schema::Shapes::ShapeRef.new(shape: LicenseInfoList, location_name: 'licenses', traits: {"smithy.api#documentation" => "<p>\n      Information about licenses associated with the package version.\n    </p>"}))
    PackageVersionDescription.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>\n      The revision of the package version.\n    </p>"}))
    PackageVersionDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the status of the package version.\n    </p>"}))
    PackageVersionDescription.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionOrigin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html\">PackageVersionOrigin</a> object that contains \n    information about how the package version was added to the repository.</p>"}))
    PackageVersionDescription.type = Types::PackageVersionDescription
    PackageVersionError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionErrorCode, location_name: 'errorCode', traits: {"smithy.api#documentation" => "<p> The error code associated with the error. Valid error codes are: </p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALREADY_EXISTS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_REVISION</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>MISMATCHED_STATUS</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_ALLOWED</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>NOT_FOUND</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>SKIPPED</code>\n               </p>\n            </li>\n         </ul>"}))
    PackageVersionError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'errorMessage', traits: {"smithy.api#documentation" => "<p>\n         The error message associated with the error.\n     </p>"}))
    PackageVersionError.type = Types::PackageVersionError
    PackageVersionErrorCode.add_member(:already_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALREADY_EXISTS', traits: {"smithy.api#enumValue" => "ALREADY_EXISTS"}))
    PackageVersionErrorCode.add_member(:mismatched_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_REVISION', traits: {"smithy.api#enumValue" => "MISMATCHED_REVISION"}))
    PackageVersionErrorCode.add_member(:mismatched_status, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MISMATCHED_STATUS', traits: {"smithy.api#enumValue" => "MISMATCHED_STATUS"}))
    PackageVersionErrorCode.add_member(:not_allowed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_ALLOWED', traits: {"smithy.api#enumValue" => "NOT_ALLOWED"}))
    PackageVersionErrorCode.add_member(:not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_FOUND', traits: {"smithy.api#enumValue" => "NOT_FOUND"}))
    PackageVersionErrorCode.add_member(:skipped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SKIPPED', traits: {"smithy.api#enumValue" => "SKIPPED"}))
    PackageVersionErrorMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion)
    PackageVersionErrorMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionError)
    PackageVersionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion)
    PackageVersionOrigin.add_member(:domain_entry_point, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEntryPoint, location_name: 'domainEntryPoint', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_DomainEntryPoint.html\">DomainEntryPoint</a> object that contains \n    information about from which repository or external connection the package version was added to the domain.</p>"}))
    PackageVersionOrigin.add_member(:origin_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionOriginType, location_name: 'originType', traits: {"smithy.api#documentation" => "<p>Describes how the package version was originally added to the domain. An <code>INTERNAL</code> origin type means the package version was published \n    directly to a repository in the domain. An <code>EXTERNAL</code> origin type means the package version was ingested from an external connection.</p>"}))
    PackageVersionOrigin.type = Types::PackageVersionOrigin
    PackageVersionOriginType.add_member(:internal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL', traits: {"smithy.api#enumValue" => "INTERNAL"}))
    PackageVersionOriginType.add_member(:external, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXTERNAL', traits: {"smithy.api#enumValue" => "EXTERNAL"}))
    PackageVersionOriginType.add_member(:unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN', traits: {"smithy.api#enumValue" => "UNKNOWN"}))
    PackageVersionRevisionMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion)
    PackageVersionRevisionMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision)
    PackageVersionSortType.add_member(:published_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED_TIME', traits: {"smithy.api#enumValue" => "PUBLISHED_TIME"}))
    PackageVersionStatus.add_member(:published, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLISHED', traits: {"smithy.api#enumValue" => "Published"}))
    PackageVersionStatus.add_member(:unfinished, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNFINISHED', traits: {"smithy.api#enumValue" => "Unfinished"}))
    PackageVersionStatus.add_member(:unlisted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNLISTED', traits: {"smithy.api#enumValue" => "Unlisted"}))
    PackageVersionStatus.add_member(:archived, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ARCHIVED', traits: {"smithy.api#enumValue" => "Archived"}))
    PackageVersionStatus.add_member(:disposed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISPOSED', traits: {"smithy.api#enumValue" => "Disposed"}))
    PackageVersionStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "Deleted"}))
    PackageVersionSummary.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>\n        Information about a package version.\n       </p>", "smithy.api#required" => {}}))
    PackageVersionSummary.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>\n      The revision associated with a package version.\n    </p>"}))
    PackageVersionSummary.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      A string that contains the status of the package version. It can be one of the following:\n    </p>", "smithy.api#required" => {}}))
    PackageVersionSummary.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionOrigin, location_name: 'origin', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageVersionOrigin.html\">PackageVersionOrigin</a> object that contains information \n    about how the package version was added to the repository.</p>"}))
    PackageVersionSummary.type = Types::PackageVersionSummary
    PackageVersionSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionSummary)
    PublishPackageVersionRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the repository that contains the package version to publish.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>The 12-digit account number of the AWS account that owns the domain. It does not include dashes or spaces.</p>", "smithy.api#httpQuery" => "domain-owner"}))
    PublishPackageVersionRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository that the package version will be published to.</p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A format that specifies the type of the package version with the requested asset file.</p>\n         <p>The only supported value is <code>generic</code>.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version to publish.</p>", "smithy.api#httpQuery" => "namespace"}))
    PublishPackageVersionRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>The name of the package version to publish.</p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'packageVersion', traits: {"smithy.api#documentation" => "<p>The package version to publish (for example, <code>3.5.2</code>).</p>", "smithy.api#httpQuery" => "version", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_content, Smithy::Schema::Shapes::ShapeRef.new(shape: Asset, location_name: 'assetContent', traits: {"smithy.api#documentation" => "<p>The content of the asset to publish.</p>", "smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'assetName', traits: {"smithy.api#documentation" => "<p>The name of the asset to publish. Asset names can include Unicode letters and numbers, and\n      the following special characters: <code>~ ! @ ^ & ( ) - ` _ + [ ] { } ; , .\n        `</code>\n         </p>", "smithy.api#httpQuery" => "asset", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:asset_sha256, Smithy::Schema::Shapes::ShapeRef.new(shape: SHA256, location_name: 'assetSHA256', traits: {"smithy.api#documentation" => "<p>The SHA256 hash of the <code>assetContent</code> to publish. This value must be calculated\n      by the caller and provided with the request (see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/using-generic.html#publishing-generic-packages\">Publishing a generic package</a> in the <i>CodeArtifact User\n          Guide</i>).</p>\n         <p>This value is used as an integrity check to verify that the <code>assetContent</code> has\n      not changed after it was originally sent.</p>", "smithy.api#httpHeader" => "x-amz-content-sha256", "smithy.api#required" => {}}))
    PublishPackageVersionRequest.add_member(:unfinished, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanOptional, location_name: 'unfinished', traits: {"smithy.api#documentation" => "<p>Specifies whether the package version should remain in the <code>unfinished</code>\n      state. If omitted, the package version status will be set to <code>Published</code> (see\n      <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status\">Package version status</a> in the <i>CodeArtifact User Guide</i>).</p>\n         <p>Valid values: <code>unfinished</code>\n         </p>", "smithy.api#httpQuery" => "unfinished"}))
    PublishPackageVersionRequest[:http_payload] = :asset_content
    PublishPackageVersionRequest[:http_payload_member] = PublishPackageVersionRequest.member(:asset_content)
    PublishPackageVersionRequest.type = Types::PublishPackageVersionRequest
    PublishPackageVersionResult.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>The format of the package version.</p>"}))
    PublishPackageVersionResult.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version.</p>"}))
    PublishPackageVersionResult.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>The name of the package.</p>"}))
    PublishPackageVersionResult.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p>The version of the package.</p>"}))
    PublishPackageVersionResult.add_member(:version_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevision, location_name: 'versionRevision', traits: {"smithy.api#documentation" => "<p>The revision of the package version.</p>"}))
    PublishPackageVersionResult.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>A string that contains the status of the package version. For more information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/packages-overview.html#package-version-status.html#package-version-status\">Package version status</a> in the <i>CodeArtifact User Guide</i>.</p>"}))
    PublishPackageVersionResult.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSummary, location_name: 'asset', traits: {"smithy.api#documentation" => "<p>An <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_AssetSummary.html\">AssetSummary</a> for the published asset.</p>"}))
    PublishPackageVersionResult.type = Types::PublishPackageVersionResult
    PutDomainPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain on which to set the resource policy.\n      </p>", "smithy.api#required" => {}}))
    PutDomainPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>"}))
    PutDomainPermissionsPolicyRequest.add_member(:policy_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevision, location_name: 'policyRevision', traits: {"smithy.api#documentation" => "<p>\n        The current revision of the resource policy to be set. This revision is used for optimistic locking, which\n        prevents others from overwriting your changes to the domain's resource policy.\n      </p>"}))
    PutDomainPermissionsPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p> A valid displayable JSON Aspen policy string to be set as the access control resource\n      policy on the provided domain. </p>", "smithy.api#required" => {}}))
    PutDomainPermissionsPolicyRequest.type = Types::PutDomainPermissionsPolicyRequest
    PutDomainPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p> The resource policy that was set after processing the request. </p>"}))
    PutDomainPermissionsPolicyResult.type = Types::PutDomainPermissionsPolicyResult
    PutPackageOriginConfigurationRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>The name of the domain that contains the repository that contains the package.</p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    PutPackageOriginConfigurationRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>The name of the repository that contains the package.</p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>A format that specifies the type of the package to be updated.</p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package to be updated. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    PutPackageOriginConfigurationRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>The name of the package to be updated.</p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOriginRestrictions, location_name: 'restrictions', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html\">PackageOriginRestrictions</a> \n      object that contains information about the <code>upstream</code> and <code>publish</code> package origin restrictions. \n      The <code>upstream</code> restriction determines if new package versions can be ingested or retained from external connections or upstream repositories. \n    The <code>publish</code> restriction determines if new package versions can be published directly to the repository.</p>\n         <p>You must include both the desired <code>upstream</code> and <code>publish</code> restrictions.</p>", "smithy.api#required" => {}}))
    PutPackageOriginConfigurationRequest.type = Types::PutPackageOriginConfigurationRequest
    PutPackageOriginConfigurationResult.add_member(:origin_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageOriginConfiguration, location_name: 'originConfiguration', traits: {"smithy.api#documentation" => "<p>A <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginConfiguration.html\">PackageOriginConfiguration</a> \n      object that describes the origin configuration set for the package. It contains a \n      <a href=\"https://docs.aws.amazon.com/codeartifact/latest/APIReference/API_PackageOriginRestrictions.html\">PackageOriginRestrictions</a> \n      object that describes how new versions of the package can be introduced to the repository.</p>"}))
    PutPackageOriginConfigurationResult.type = Types::PutPackageOriginConfigurationResult
    PutRepositoryPermissionsPolicyRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain containing the repository to set the resource policy on.\n      </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    PutRepositoryPermissionsPolicyRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p> The name of the repository to set the resource policy on. </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevision, location_name: 'policyRevision', traits: {"smithy.api#documentation" => "<p>\n        Sets the revision of the resource policy that specifies permissions to access the repository. \n        This revision is used for optimistic locking, which prevents others from overwriting your \n        changes to the repository's resource policy.\n      </p>"}))
    PutRepositoryPermissionsPolicyRequest.add_member(:policy_document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'policyDocument', traits: {"smithy.api#documentation" => "<p> A valid displayable JSON Aspen policy string to be set as the access control resource\n      policy on the provided repository. </p>", "smithy.api#required" => {}}))
    PutRepositoryPermissionsPolicyRequest.type = Types::PutRepositoryPermissionsPolicyRequest
    PutRepositoryPermissionsPolicyResult.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p> The resource policy that was set after processing the request. </p>"}))
    PutRepositoryPermissionsPolicyResult.type = Types::PutRepositoryPermissionsPolicyResult
    RepositoryDescription.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n        The name of the repository.\n       </p>"}))
    RepositoryDescription.add_member(:administrator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'administratorAccount', traits: {"smithy.api#documentation" => "<p> The 12-digit account number of the Amazon Web Services account that manages the repository. </p>"}))
    RepositoryDescription.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>\n        The name of the domain that contains the repository.\n       </p>"}))
    RepositoryDescription.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain that contains the repository. It does not include \n        dashes or spaces.\n      </p>"}))
    RepositoryDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The Amazon Resource Name (ARN) of the repository. </p>"}))
    RepositoryDescription.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      A text description of the repository.\n    </p>"}))
    RepositoryDescription.add_member(:upstreams, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRepositoryInfoList, location_name: 'upstreams', traits: {"smithy.api#documentation" => "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories \n        in the list determines their priority order when CodeArtifact looks for a requested package version. For more \n        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"}))
    RepositoryDescription.add_member(:external_connections, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryExternalConnectionInfoList, location_name: 'externalConnections', traits: {"smithy.api#documentation" => "<p>\n      An array of external connections associated with the repository.\n    </p>"}))
    RepositoryDescription.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>A timestamp that represents the date and time the repository was created.</p>"}))
    RepositoryDescription.type = Types::RepositoryDescription
    RepositoryExternalConnectionInfo.add_member(:external_connection_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalConnectionName, location_name: 'externalConnectionName', traits: {"smithy.api#documentation" => "<p> The name of the external connection associated with a repository. </p>"}))
    RepositoryExternalConnectionInfo.add_member(:package_format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'packageFormat', traits: {"smithy.api#documentation" => "<p>\n        The package format associated with a repository's external connection. The valid package formats are:\n      </p>\n         <ul>\n            <li>\n               <p>\n                  <code>npm</code>: A Node Package Manager (npm) package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>pypi</code>: A Python Package Index (PyPI) package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>maven</code>: A Maven package that contains compiled code in a distributable format, such as a JAR file.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>nuget</code>: A NuGet package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>generic</code>: A generic package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>ruby</code>: A Ruby package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>swift</code>: A Swift package.\n        </p>\n            </li>\n            <li>\n               <p>\n                  <code>cargo</code>: A Cargo package.\n        </p>\n            </li>\n         </ul>"}))
    RepositoryExternalConnectionInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExternalConnectionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n        The status of the external connection of a repository. There is one valid value, <code>Available</code>.\n      </p>"}))
    RepositoryExternalConnectionInfo.type = Types::RepositoryExternalConnectionInfo
    RepositoryExternalConnectionInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryExternalConnectionInfo)
    RepositoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName)
    RepositorySummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'name', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository.\n      </p>"}))
    RepositorySummary.add_member(:administrator_account, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'administratorAccount', traits: {"smithy.api#documentation" => "<p>\n         The Amazon Web Services account ID that manages the repository.\n      </p>"}))
    RepositorySummary.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domainName', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain that contains the repository.\n      </p>"}))
    RepositorySummary.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>"}))
    RepositorySummary.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'arn', traits: {"smithy.api#documentation" => "<p> The ARN of the repository. </p>"}))
    RepositorySummary.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      The description of the repository.\n    </p>"}))
    RepositorySummary.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'createdTime', traits: {"smithy.api#documentation" => "<p>A timestamp that represents the date and time the repository was created.</p>"}))
    RepositorySummary.type = Types::RepositorySummary
    RepositorySummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RepositorySummary)
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the resource.\n    </p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of Amazon Web Services resource.\n    </p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePolicy.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>\n        The ARN of the resource associated with the resource policy\n      </p>"}))
    ResourcePolicy.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyRevision, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>\n        The current revision of the resource policy.\n      </p>"}))
    ResourcePolicy.add_member(:document, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'document', traits: {"smithy.api#documentation" => "<p>\n      The resource policy formatted in JSON.\n    </p>"}))
    ResourcePolicy.type = Types::ResourcePolicy
    ResourceType.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN', traits: {"smithy.api#enumValue" => "domain"}))
    ResourceType.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REPOSITORY', traits: {"smithy.api#enumValue" => "repository"}))
    ResourceType.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE', traits: {"smithy.api#enumValue" => "package"}))
    ResourceType.add_member(:package_version, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PACKAGE_VERSION', traits: {"smithy.api#enumValue" => "package-version"}))
    ResourceType.add_member(:asset, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSET', traits: {"smithy.api#enumValue" => "asset"}))
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'resourceId', traits: {"smithy.api#documentation" => "<p>\n      The ID of the resource.\n    </p>"}))
    ServiceQuotaExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'resourceType', traits: {"smithy.api#documentation" => "<p>\n      The type of Amazon Web Services resource.\n    </p>"}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SuccessfulPackageVersionInfo.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'revision', traits: {"smithy.api#documentation" => "<p>\n      The revision of a package version.\n    </p>"}))
    SuccessfulPackageVersionInfo.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p>\n      The status of a package version.\n    </p>"}))
    SuccessfulPackageVersionInfo.type = Types::SuccessfulPackageVersionInfo
    SuccessfulPackageVersionInfoMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersion)
    SuccessfulPackageVersionInfoMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfo)
    Tag.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey, location_name: 'key', traits: {"smithy.api#documentation" => "<p>The tag key.</p>", "smithy.api#required" => {}}))
    Tag.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue, location_name: 'value', traits: {"smithy.api#documentation" => "<p>The tag value.</p>", "smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Tag)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to add or update tags for.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagList, location_name: 'tags', traits: {"smithy.api#documentation" => "<p>The tags you want to modify or add to the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResult.type = Types::TagResourceResult
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ThrottlingException.add_member(:retry_after_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: RetryAfterSeconds, location_name: 'retryAfterSeconds', traits: {"smithy.api#documentation" => "<p>\n      The time period, in seconds, to wait before retrying the request.\n    </p>", "smithy.api#httpHeader" => "Retry-After"}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'resourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource that you want to remove tags from.</p>", "smithy.api#httpQuery" => "resourceArn", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'tagKeys', traits: {"smithy.api#documentation" => "<p>The tag key for each tag that you want to remove from the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResult.type = Types::UntagResourceResult
    UpdatePackageGroupOriginConfigurationRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain which contains the package group for which to update the origin configuration.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group for which to update the origin configuration.\n    </p>", "smithy.api#httpQuery" => "package-group", "smithy.api#required" => {}}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:restrictions, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginRestrictions, location_name: 'restrictions', traits: {"smithy.api#documentation" => "<p>\n        The origin configuration settings that determine how package versions can enter repositories.\n      </p>"}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:add_allowed_repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepositoryList, location_name: 'addAllowedRepositories', traits: {"smithy.api#documentation" => "<p>The repository name and restrictions to add to the allowed repository list of the specified package group.</p>"}))
    UpdatePackageGroupOriginConfigurationRequest.add_member(:remove_allowed_repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepositoryList, location_name: 'removeAllowedRepositories', traits: {"smithy.api#documentation" => "<p>The repository name and restrictions to remove from the allowed repository list of the specified package group.</p>"}))
    UpdatePackageGroupOriginConfigurationRequest.type = Types::UpdatePackageGroupOriginConfigurationRequest
    UpdatePackageGroupOriginConfigurationResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The package group and information about it after processing the request.\n    </p>"}))
    UpdatePackageGroupOriginConfigurationResult.add_member(:allowed_repository_updates, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupAllowedRepositoryUpdates, location_name: 'allowedRepositoryUpdates', traits: {"smithy.api#documentation" => "<p>Information about the updated allowed repositories after processing the request.</p>"}))
    UpdatePackageGroupOriginConfigurationResult.type = Types::UpdatePackageGroupOriginConfigurationResult
    UpdatePackageGroupRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain which contains the package group to be updated.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageGroupRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageGroupRequest.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupPattern, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The pattern of the package group to be updated.\n    </p>", "smithy.api#required" => {}}))
    UpdatePackageGroupRequest.add_member(:contact_info, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupContactInfo, location_name: 'contactInfo', traits: {"smithy.api#documentation" => "<p>\n      Contact information which you want to update the requested package group with.\n    </p>"}))
    UpdatePackageGroupRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n      The description you want to update the requested package group with.\n    </p>"}))
    UpdatePackageGroupRequest.type = Types::UpdatePackageGroupRequest
    UpdatePackageGroupResult.add_member(:package_group, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageGroupDescription, location_name: 'packageGroup', traits: {"smithy.api#documentation" => "<p>\n      The package group and information about it after the request has been processed.\n    </p>"}))
    UpdatePackageGroupResult.type = Types::UpdatePackageGroupResult
    UpdatePackageVersionsStatusRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n      The name of the domain that contains the repository that contains the package versions with a status to be updated.\n    </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    UpdatePackageVersionsStatusRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n      The repository that contains the package versions with the status you want to update. \n    </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageFormat, location_name: 'format', traits: {"smithy.api#documentation" => "<p>\n      A format that specifies the type of the package with the statuses to update.\n    </p>", "smithy.api#httpQuery" => "format", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageNamespace, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The namespace of the package version to be updated. The package component that specifies its \n      namespace depends on its type. For example:</p>\n         <ul>\n            <li>\n               <p>\n          The namespace of a Maven package version is its <code>groupId</code>.\n        </p>\n            </li>\n            <li>\n               <p>\n          The namespace of an npm or Swift package version is its <code>scope</code>.\n        </p>\n            </li>\n            <li>\n               <p>The namespace of a generic package is its <code>namespace</code>.</p>\n            </li>\n            <li>\n               <p>\n          Python, NuGet, Ruby, and Cargo package versions do not contain a corresponding component, package versions \n          of those formats do not have a namespace.\n        </p>\n            </li>\n         </ul>", "smithy.api#httpQuery" => "namespace"}))
    UpdatePackageVersionsStatusRequest.add_member(:package, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageName, location_name: 'package', traits: {"smithy.api#documentation" => "<p>\n      The name of the package with the version statuses to update.\n    </p>", "smithy.api#httpQuery" => "package", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionList, location_name: 'versions', traits: {"smithy.api#documentation" => "<p>\n      An array of strings that specify the versions of the package with the statuses to update.\n    </p>", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.add_member(:version_revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionRevisionMap, location_name: 'versionRevisions', traits: {"smithy.api#documentation" => "<p> A map of package versions and package version revisions. The map <code>key</code> is the\n      package version (for example, <code>3.5.2</code>), and the map <code>value</code> is the\n      package version revision. </p>"}))
    UpdatePackageVersionsStatusRequest.add_member(:expected_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'expectedStatus', traits: {"smithy.api#documentation" => "<p> The package version’s expected status before it is updated. If\n        <code>expectedStatus</code> is provided, the package version's status is updated only if its\n      status at the time <code>UpdatePackageVersionsStatus</code> is called matches\n        <code>expectedStatus</code>. </p>"}))
    UpdatePackageVersionsStatusRequest.add_member(:target_status, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionStatus, location_name: 'targetStatus', traits: {"smithy.api#documentation" => "<p>\n      The status you want to change the package version status to.\n    </p>", "smithy.api#required" => {}}))
    UpdatePackageVersionsStatusRequest.type = Types::UpdatePackageVersionsStatusRequest
    UpdatePackageVersionsStatusResult.add_member(:successful_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: SuccessfulPackageVersionInfoMap, location_name: 'successfulVersions', traits: {"smithy.api#documentation" => "<p>\n      A list of <code>PackageVersionError</code> objects, one for each package version with \n      a status that failed to update.\n    </p>"}))
    UpdatePackageVersionsStatusResult.add_member(:failed_versions, Smithy::Schema::Shapes::ShapeRef.new(shape: PackageVersionErrorMap, location_name: 'failedVersions', traits: {"smithy.api#documentation" => "<p> A list of <code>SuccessfulPackageVersionInfo</code> objects, one for each package version\n      with a status that successfully updated. </p>"}))
    UpdatePackageVersionsStatusResult.type = Types::UpdatePackageVersionsStatusResult
    UpdateRepositoryRequest.add_member(:domain, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'domain', traits: {"smithy.api#documentation" => "<p>\n         The name of the domain associated with the repository to update.\n       </p>", "smithy.api#httpQuery" => "domain", "smithy.api#required" => {}}))
    UpdateRepositoryRequest.add_member(:domain_owner, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountId, location_name: 'domainOwner', traits: {"smithy.api#documentation" => "<p>\n        The 12-digit account number of the Amazon Web Services account that owns the domain. It does not include \n        dashes or spaces.\n      </p>", "smithy.api#httpQuery" => "domain-owner"}))
    UpdateRepositoryRequest.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         The name of the repository to update.\n       </p>", "smithy.api#httpQuery" => "repository", "smithy.api#required" => {}}))
    UpdateRepositoryRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'description', traits: {"smithy.api#documentation" => "<p>\n         An updated repository description.\n       </p>"}))
    UpdateRepositoryRequest.add_member(:upstreams, Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRepositoryList, location_name: 'upstreams', traits: {"smithy.api#documentation" => "<p> A list of upstream repositories to associate with the repository. The order of the upstream repositories \n        in the list determines their priority order when CodeArtifact looks for a requested package version. For more \n        information, see <a href=\"https://docs.aws.amazon.com/codeartifact/latest/ug/repos-upstream.html\">Working with upstream repositories</a>. </p>"}))
    UpdateRepositoryRequest.type = Types::UpdateRepositoryRequest
    UpdateRepositoryResult.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryDescription, location_name: 'repository', traits: {"smithy.api#documentation" => "<p>\n         The updated repository.\n       </p>"}))
    UpdateRepositoryResult.type = Types::UpdateRepositoryResult
    UpstreamRepository.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p> The name of an upstream repository. </p>", "smithy.api#required" => {}}))
    UpstreamRepository.type = Types::UpstreamRepository
    UpstreamRepositoryInfo.add_member(:repository_name, Smithy::Schema::Shapes::ShapeRef.new(shape: RepositoryName, location_name: 'repositoryName', traits: {"smithy.api#documentation" => "<p> The name of an upstream repository. </p>"}))
    UpstreamRepositoryInfo.type = Types::UpstreamRepositoryInfo
    UpstreamRepositoryInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRepositoryInfo)
    UpstreamRepositoryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UpstreamRepository)
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationExceptionReason, location_name: 'reason', traits: {"smithy.api#documentation" => "<p>\n      \n    </p>"}))
    ValidationException.type = Types::ValidationException
    ValidationExceptionReason.add_member(:cannot_parse, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANNOT_PARSE', traits: {"smithy.api#enumValue" => "CANNOT_PARSE"}))
    ValidationExceptionReason.add_member(:encryption_key_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENCRYPTION_KEY_ERROR', traits: {"smithy.api#enumValue" => "ENCRYPTION_KEY_ERROR"}))
    ValidationExceptionReason.add_member(:field_validation_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FIELD_VALIDATION_FAILED', traits: {"smithy.api#enumValue" => "FIELD_VALIDATION_FAILED"}))
    ValidationExceptionReason.add_member(:unknown_operation, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UNKNOWN_OPERATION', traits: {"smithy.api#enumValue" => "UNKNOWN_OPERATION"}))
    ValidationExceptionReason.add_member(:other, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'OTHER', traits: {"smithy.api#enumValue" => "OTHER"}))

    CodeArtifactControlPlaneService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.codeartifact#CodeArtifactControlPlaneService"
      service.name = "CodeArtifactControlPlaneService"
      service.version = "2018-09-22"
      service.traits = {"aws.api#service" => {"sdkId" => "codeartifact", "arnNamespace" => "codeartifact", "cloudFormationName" => "Codeartifact", "cloudTrailEventSource" => "codeartifact.amazonaws.com", "endpointPrefix" => "codeartifact"}, "aws.auth#sigv4" => {"name" => "codeartifact"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "CodeArtifact"}
      service.add_operation(:associate_external_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#AssociateExternalConnection"
        operation.name = "AssociateExternalConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateExternalConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateExternalConnectionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repository/external-connection", "code" => 200}}
      end)
      service.add_operation(:copy_package_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CopyPackageVersions"
        operation.name = "CopyPackageVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyPackageVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyPackageVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/copy", "code" => 200}}
      end)
      service.add_operation(:create_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:create_package_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreatePackageGroup"
        operation.name = "CreatePackageGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreatePackageGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-group", "code" => 200}}
      end)
      service.add_operation(:create_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#CreateRepository"
        operation.name = "CreateRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRepositoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:delete_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:delete_domain_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteDomainPermissionsPolicy"
        operation.name = "DeleteDomainPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:delete_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackage"
        operation.name = "DeletePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:delete_package_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackageGroup"
        operation.name = "DeletePackageGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/package-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:delete_package_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeletePackageVersions"
        operation.name = "DeletePackageVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeletePackageVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/delete", "code" => 200}}
      end)
      service.add_operation(:delete_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteRepository"
        operation.name = "DeleteRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:delete_repository_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DeleteRepositoryPermissionsPolicy"
        operation.name = "DeleteRepositoryPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRepositoryPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository/permissions/policies", "code" => 200}}
      end)
      service.add_operation(:describe_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribeDomain"
        operation.name = "DescribeDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domain", "code" => 200}}
      end)
      service.add_operation(:describe_package, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackage"
        operation.name = "DescribePackage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:describe_package_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackageGroup"
        operation.name = "DescribePackageGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package-group", "code" => 200}}
      end)
      service.add_operation(:describe_package_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribePackageVersion"
        operation.name = "DescribePackageVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribePackageVersionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version", "code" => 200}}
      end)
      service.add_operation(:describe_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DescribeRepository"
        operation.name = "DescribeRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeRepositoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository", "code" => 200}}
      end)
      service.add_operation(:disassociate_external_connection, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DisassociateExternalConnection"
        operation.name = "DisassociateExternalConnection"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateExternalConnectionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateExternalConnectionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/repository/external-connection", "code" => 200}}
      end)
      service.add_operation(:dispose_package_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#DisposePackageVersions"
        operation.name = "DisposePackageVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisposePackageVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisposePackageVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/dispose", "code" => 200}}
      end)
      service.add_operation(:get_associated_package_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetAssociatedPackageGroup"
        operation.name = "GetAssociatedPackageGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedPackageGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssociatedPackageGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/get-associated-package-group", "code" => 200}}
      end)
      service.add_operation(:get_authorization_token, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetAuthorizationToken"
        operation.name = "GetAuthorizationToken"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAuthorizationTokenResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/authorization-token", "code" => 200}}
      end)
      service.add_operation(:get_domain_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetDomainPermissionsPolicy"
        operation.name = "GetDomainPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDomainPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:get_package_version_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetPackageVersionAsset"
        operation.name = "GetPackageVersionAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionAssetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionAssetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version/asset", "code" => 200}}
      end)
      service.add_operation(:get_package_version_readme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetPackageVersionReadme"
        operation.name = "GetPackageVersionReadme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionReadmeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPackageVersionReadmeResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package/version/readme", "code" => 200}}
      end)
      service.add_operation(:get_repository_endpoint, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetRepositoryEndpoint"
        operation.name = "GetRepositoryEndpoint"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryEndpointRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryEndpointResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository/endpoint", "code" => 200}}
      end)
      service.add_operation(:get_repository_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#GetRepositoryPermissionsPolicy"
        operation.name = "GetRepositoryPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRepositoryPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/repository/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:list_allowed_repositories_for_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListAllowedRepositoriesForGroup"
        operation.name = "ListAllowedRepositoriesForGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedRepositoriesForGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAllowedRepositoriesForGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/package-group-allowed-repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListAllowedRepositoriesForGroup.new
      end)
      service.add_operation(:list_associated_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListAssociatedPackages"
        operation.name = "ListAssociatedPackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedPackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedPackagesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/list-associated-packages", "code" => 200}}
        operation[:paginator] = Paginators::ListAssociatedPackages.new
      end)
      service.add_operation(:list_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListDomains"
        operation.name = "ListDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domains", "code" => 200}}
        operation[:paginator] = Paginators::ListDomains.new
      end)
      service.add_operation(:list_package_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageGroups"
        operation.name = "ListPackageGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageGroups.new
      end)
      service.add_operation(:list_package_version_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersionAssets"
        operation.name = "ListPackageVersionAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionAssetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionAssetsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/assets", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageVersionAssets.new
      end)
      service.add_operation(:list_package_version_dependencies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersionDependencies"
        operation.name = "ListPackageVersionDependencies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionDependenciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionDependenciesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/dependencies", "code" => 200}}
      end)
      service.add_operation(:list_package_versions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackageVersions"
        operation.name = "ListPackageVersions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackageVersionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions", "code" => 200}}
        operation[:paginator] = Paginators::ListPackageVersions.new
      end)
      service.add_operation(:list_packages, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListPackages"
        operation.name = "ListPackages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPackagesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/packages", "code" => 200}}
        operation[:paginator] = Paginators::ListPackages.new
      end)
      service.add_operation(:list_repositories, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListRepositories"
        operation.name = "ListRepositories"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListRepositories.new
      end)
      service.add_operation(:list_repositories_in_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListRepositoriesInDomain"
        operation.name = "ListRepositoriesInDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesInDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRepositoriesInDomainResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/domain/repositories", "code" => 200}}
        operation[:paginator] = Paginators::ListRepositoriesInDomain.new
      end)
      service.add_operation(:list_sub_package_groups, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListSubPackageGroups"
        operation.name = "ListSubPackageGroups"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubPackageGroupsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListSubPackageGroupsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package-groups/sub-groups", "code" => 200}}
        operation[:paginator] = Paginators::ListSubPackageGroups.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tags", "code" => 200}}
      end)
      service.add_operation(:publish_package_version, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PublishPackageVersion"
        operation.name = "PublishPackageVersion"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishPackageVersionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PublishPackageVersionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/version/publish", "code" => 200}}
      end)
      service.add_operation(:put_domain_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutDomainPermissionsPolicy"
        operation.name = "PutDomainPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDomainPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutDomainPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/domain/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:put_package_origin_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutPackageOriginConfiguration"
        operation.name = "PutPackageOriginConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPackageOriginConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPackageOriginConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package", "code" => 200}}
      end)
      service.add_operation(:put_repository_permissions_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#PutRepositoryPermissionsPolicy"
        operation.name = "PutRepositoryPermissionsPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryPermissionsPolicyRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutRepositoryPermissionsPolicyResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/repository/permissions/policy", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/tag", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/untag", "code" => 200}}
      end)
      service.add_operation(:update_package_group, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageGroup"
        operation.name = "UpdatePackageGroup"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageGroupRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageGroupResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/package-group", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_package_group_origin_configuration, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageGroupOriginConfiguration"
        operation.name = "UpdatePackageGroupOriginConfiguration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageGroupOriginConfigurationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageGroupOriginConfigurationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/package-group-origin-configuration", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_package_versions_status, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdatePackageVersionsStatus"
        operation.name = "UpdatePackageVersionsStatus"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageVersionsStatusRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdatePackageVersionsStatusResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/package/versions/update_status", "code" => 200}}
      end)
      service.add_operation(:update_repository, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.codeartifact#UpdateRepository"
        operation.name = "UpdateRepository"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRepositoryResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/v1/repository", "code" => 200}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
