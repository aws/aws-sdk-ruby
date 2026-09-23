# frozen_string_literal: true

# This is generated code!

module Aws::AppStream
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AccessEndpoint", name: "AccessEndpoint")
    AccessEndpointList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AccessEndpointList", name: "AccessEndpointList", traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AccessEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AccessEndpointType", name: "AccessEndpointType")
    AccountName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#AccountName", name: "AccountName", traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    AccountPassword = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#AccountPassword", name: "AccountPassword", traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#sensitive" => {}})
    Action = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#Action", name: "Action")
    AppBlock = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AppBlock", name: "AppBlock")
    AppBlockBuilder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AppBlockBuilder", name: "AppBlockBuilder")
    AppBlockBuilderAppBlockAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AppBlockBuilderAppBlockAssociation", name: "AppBlockBuilderAppBlockAssociation")
    AppBlockBuilderAppBlockAssociationsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AppBlockBuilderAppBlockAssociationsList", name: "AppBlockBuilderAppBlockAssociationsList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    AppBlockBuilderAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppBlockBuilderAttribute", name: "AppBlockBuilderAttribute")
    AppBlockBuilderAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AppBlockBuilderAttributes", name: "AppBlockBuilderAttributes")
    AppBlockBuilderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AppBlockBuilderList", name: "AppBlockBuilderList")
    AppBlockBuilderPlatformType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppBlockBuilderPlatformType", name: "AppBlockBuilderPlatformType")
    AppBlockBuilderState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppBlockBuilderState", name: "AppBlockBuilderState")
    AppBlockBuilderStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AppBlockBuilderStateChangeReason", name: "AppBlockBuilderStateChangeReason")
    AppBlockBuilderStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppBlockBuilderStateChangeReasonCode", name: "AppBlockBuilderStateChangeReasonCode")
    AppBlockState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppBlockState", name: "AppBlockState")
    AppBlocks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AppBlocks", name: "AppBlocks")
    AppVisibility = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AppVisibility", name: "AppVisibility")
    Application = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Application", name: "Application")
    ApplicationAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ApplicationAttribute", name: "ApplicationAttribute")
    ApplicationAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ApplicationAttributes", name: "ApplicationAttributes", traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ApplicationFleetAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ApplicationFleetAssociation", name: "ApplicationFleetAssociation")
    ApplicationFleetAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ApplicationFleetAssociationList", name: "ApplicationFleetAssociationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ApplicationSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ApplicationSettings", name: "ApplicationSettings")
    ApplicationSettingsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ApplicationSettingsResponse", name: "ApplicationSettingsResponse")
    Applications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#Applications", name: "Applications")
    AppstreamAgentVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#AppstreamAgentVersion", name: "AppstreamAgentVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#Arn", name: "Arn", traits: {"smithy.api#pattern" => "^arn:aws(?:\\-cn|\\-iso\\-b|\\-iso|\\-us\\-gov)?:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.\\\\-]{0,1023}$"})
    ArnList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ArnList", name: "ArnList")
    AssociateAppBlockBuilderAppBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateAppBlockBuilderAppBlockRequest", name: "AssociateAppBlockBuilderAppBlockRequest")
    AssociateAppBlockBuilderAppBlockResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateAppBlockBuilderAppBlockResult", name: "AssociateAppBlockBuilderAppBlockResult")
    AssociateApplicationFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateApplicationFleetRequest", name: "AssociateApplicationFleetRequest")
    AssociateApplicationFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateApplicationFleetResult", name: "AssociateApplicationFleetResult")
    AssociateApplicationToEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateApplicationToEntitlementRequest", name: "AssociateApplicationToEntitlementRequest")
    AssociateApplicationToEntitlementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateApplicationToEntitlementResult", name: "AssociateApplicationToEntitlementResult")
    AssociateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateFleetRequest", name: "AssociateFleetRequest")
    AssociateFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#AssociateFleetResult", name: "AssociateFleetResult")
    AuthenticationType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#AuthenticationType", name: "AuthenticationType")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#pattern" => "^\\d+$"})
    AwsAccountIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#AwsAccountIdList", name: "AwsAccountIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BatchAssociateUserStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#BatchAssociateUserStackRequest", name: "BatchAssociateUserStackRequest")
    BatchAssociateUserStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#BatchAssociateUserStackResult", name: "BatchAssociateUserStackResult")
    BatchDisassociateUserStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#BatchDisassociateUserStackRequest", name: "BatchDisassociateUserStackRequest")
    BatchDisassociateUserStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#BatchDisassociateUserStackResult", name: "BatchDisassociateUserStackResult")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appstream#Boolean", name: "Boolean")
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.appstream#BooleanObject", name: "BooleanObject")
    CertificateBasedAuthProperties = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CertificateBasedAuthProperties", name: "CertificateBasedAuthProperties")
    CertificateBasedAuthStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#CertificateBasedAuthStatus", name: "CertificateBasedAuthStatus")
    ComputeCapacity = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ComputeCapacity", name: "ComputeCapacity")
    ComputeCapacityStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ComputeCapacityStatus", name: "ComputeCapacityStatus")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CopyImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CopyImageRequest", name: "CopyImageRequest")
    CopyImageResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CopyImageResponse", name: "CopyImageResponse")
    CreateAppBlockBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockBuilderRequest", name: "CreateAppBlockBuilderRequest")
    CreateAppBlockBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockBuilderResult", name: "CreateAppBlockBuilderResult")
    CreateAppBlockBuilderStreamingURLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockBuilderStreamingURLRequest", name: "CreateAppBlockBuilderStreamingURLRequest")
    CreateAppBlockBuilderStreamingURLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockBuilderStreamingURLResult", name: "CreateAppBlockBuilderStreamingURLResult")
    CreateAppBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockRequest", name: "CreateAppBlockRequest")
    CreateAppBlockResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateAppBlockResult", name: "CreateAppBlockResult")
    CreateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateApplicationRequest", name: "CreateApplicationRequest")
    CreateApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateApplicationResult", name: "CreateApplicationResult")
    CreateDirectoryConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateDirectoryConfigRequest", name: "CreateDirectoryConfigRequest")
    CreateDirectoryConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateDirectoryConfigResult", name: "CreateDirectoryConfigResult")
    CreateEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateEntitlementRequest", name: "CreateEntitlementRequest")
    CreateEntitlementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateEntitlementResult", name: "CreateEntitlementResult")
    CreateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateFleetRequest", name: "CreateFleetRequest")
    CreateFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateFleetResult", name: "CreateFleetResult")
    CreateImageBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateImageBuilderRequest", name: "CreateImageBuilderRequest")
    CreateImageBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateImageBuilderResult", name: "CreateImageBuilderResult")
    CreateImageBuilderStreamingURLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateImageBuilderStreamingURLRequest", name: "CreateImageBuilderStreamingURLRequest")
    CreateImageBuilderStreamingURLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateImageBuilderStreamingURLResult", name: "CreateImageBuilderStreamingURLResult")
    CreateStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateStackRequest", name: "CreateStackRequest")
    CreateStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateStackResult", name: "CreateStackResult")
    CreateStreamingURLRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateStreamingURLRequest", name: "CreateStreamingURLRequest")
    CreateStreamingURLResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateStreamingURLResult", name: "CreateStreamingURLResult")
    CreateThemeForStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateThemeForStackRequest", name: "CreateThemeForStackRequest")
    CreateThemeForStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateThemeForStackResult", name: "CreateThemeForStackResult")
    CreateUpdatedImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUpdatedImageRequest", name: "CreateUpdatedImageRequest")
    CreateUpdatedImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUpdatedImageResult", name: "CreateUpdatedImageResult")
    CreateUsageReportSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUsageReportSubscriptionRequest", name: "CreateUsageReportSubscriptionRequest")
    CreateUsageReportSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUsageReportSubscriptionResult", name: "CreateUsageReportSubscriptionResult")
    CreateUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUserRequest", name: "CreateUserRequest")
    CreateUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#CreateUserResult", name: "CreateUserResult")
    DeleteAppBlockBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteAppBlockBuilderRequest", name: "DeleteAppBlockBuilderRequest")
    DeleteAppBlockBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteAppBlockBuilderResult", name: "DeleteAppBlockBuilderResult")
    DeleteAppBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteAppBlockRequest", name: "DeleteAppBlockRequest")
    DeleteAppBlockResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteAppBlockResult", name: "DeleteAppBlockResult")
    DeleteApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteApplicationRequest", name: "DeleteApplicationRequest")
    DeleteApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteApplicationResult", name: "DeleteApplicationResult")
    DeleteDirectoryConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteDirectoryConfigRequest", name: "DeleteDirectoryConfigRequest")
    DeleteDirectoryConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteDirectoryConfigResult", name: "DeleteDirectoryConfigResult")
    DeleteEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteEntitlementRequest", name: "DeleteEntitlementRequest")
    DeleteEntitlementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteEntitlementResult", name: "DeleteEntitlementResult")
    DeleteFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteFleetRequest", name: "DeleteFleetRequest")
    DeleteFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteFleetResult", name: "DeleteFleetResult")
    DeleteImageBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImageBuilderRequest", name: "DeleteImageBuilderRequest")
    DeleteImageBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImageBuilderResult", name: "DeleteImageBuilderResult")
    DeleteImagePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImagePermissionsRequest", name: "DeleteImagePermissionsRequest")
    DeleteImagePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImagePermissionsResult", name: "DeleteImagePermissionsResult")
    DeleteImageRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImageRequest", name: "DeleteImageRequest")
    DeleteImageResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteImageResult", name: "DeleteImageResult")
    DeleteStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteStackRequest", name: "DeleteStackRequest")
    DeleteStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteStackResult", name: "DeleteStackResult")
    DeleteThemeForStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteThemeForStackRequest", name: "DeleteThemeForStackRequest")
    DeleteThemeForStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteThemeForStackResult", name: "DeleteThemeForStackResult")
    DeleteUsageReportSubscriptionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteUsageReportSubscriptionRequest", name: "DeleteUsageReportSubscriptionRequest")
    DeleteUsageReportSubscriptionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteUsageReportSubscriptionResult", name: "DeleteUsageReportSubscriptionResult")
    DeleteUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteUserRequest", name: "DeleteUserRequest")
    DeleteUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DeleteUserResult", name: "DeleteUserResult")
    DescribeAppBlockBuilderAppBlockAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociationsRequest", name: "DescribeAppBlockBuilderAppBlockAssociationsRequest")
    DescribeAppBlockBuilderAppBlockAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociationsResult", name: "DescribeAppBlockBuilderAppBlockAssociationsResult")
    DescribeAppBlockBuildersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlockBuildersRequest", name: "DescribeAppBlockBuildersRequest")
    DescribeAppBlockBuildersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlockBuildersResult", name: "DescribeAppBlockBuildersResult")
    DescribeAppBlocksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlocksRequest", name: "DescribeAppBlocksRequest")
    DescribeAppBlocksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeAppBlocksResult", name: "DescribeAppBlocksResult")
    DescribeApplicationFleetAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeApplicationFleetAssociationsRequest", name: "DescribeApplicationFleetAssociationsRequest")
    DescribeApplicationFleetAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeApplicationFleetAssociationsResult", name: "DescribeApplicationFleetAssociationsResult")
    DescribeApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeApplicationsRequest", name: "DescribeApplicationsRequest")
    DescribeApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeApplicationsResult", name: "DescribeApplicationsResult")
    DescribeDirectoryConfigsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeDirectoryConfigsRequest", name: "DescribeDirectoryConfigsRequest")
    DescribeDirectoryConfigsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeDirectoryConfigsResult", name: "DescribeDirectoryConfigsResult")
    DescribeEntitlementsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeEntitlementsRequest", name: "DescribeEntitlementsRequest")
    DescribeEntitlementsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeEntitlementsResult", name: "DescribeEntitlementsResult")
    DescribeFleetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeFleetsRequest", name: "DescribeFleetsRequest")
    DescribeFleetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeFleetsResult", name: "DescribeFleetsResult")
    DescribeImageBuildersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImageBuildersRequest", name: "DescribeImageBuildersRequest")
    DescribeImageBuildersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImageBuildersResult", name: "DescribeImageBuildersResult")
    DescribeImagePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImagePermissionsRequest", name: "DescribeImagePermissionsRequest")
    DescribeImagePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImagePermissionsResult", name: "DescribeImagePermissionsResult")
    DescribeImagesMaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appstream#DescribeImagesMaxResults", name: "DescribeImagesMaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 25}})
    DescribeImagesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImagesRequest", name: "DescribeImagesRequest")
    DescribeImagesResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeImagesResult", name: "DescribeImagesResult")
    DescribeSessionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeSessionsRequest", name: "DescribeSessionsRequest")
    DescribeSessionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeSessionsResult", name: "DescribeSessionsResult")
    DescribeStacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeStacksRequest", name: "DescribeStacksRequest")
    DescribeStacksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeStacksResult", name: "DescribeStacksResult")
    DescribeThemeForStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeThemeForStackRequest", name: "DescribeThemeForStackRequest")
    DescribeThemeForStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeThemeForStackResult", name: "DescribeThemeForStackResult")
    DescribeUsageReportSubscriptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUsageReportSubscriptionsRequest", name: "DescribeUsageReportSubscriptionsRequest")
    DescribeUsageReportSubscriptionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUsageReportSubscriptionsResult", name: "DescribeUsageReportSubscriptionsResult")
    DescribeUserStackAssociationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUserStackAssociationsRequest", name: "DescribeUserStackAssociationsRequest")
    DescribeUserStackAssociationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUserStackAssociationsResult", name: "DescribeUserStackAssociationsResult")
    DescribeUsersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUsersRequest", name: "DescribeUsersRequest")
    DescribeUsersResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DescribeUsersResult", name: "DescribeUsersResult")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#Description", name: "Description", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DirectoryConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DirectoryConfig", name: "DirectoryConfig")
    DirectoryConfigList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#DirectoryConfigList", name: "DirectoryConfigList")
    DirectoryName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#DirectoryName", name: "DirectoryName")
    DirectoryNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#DirectoryNameList", name: "DirectoryNameList")
    DisableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisableUserRequest", name: "DisableUserRequest")
    DisableUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisableUserResult", name: "DisableUserResult")
    DisassociateAppBlockBuilderAppBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlockRequest", name: "DisassociateAppBlockBuilderAppBlockRequest")
    DisassociateAppBlockBuilderAppBlockResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlockResult", name: "DisassociateAppBlockBuilderAppBlockResult")
    DisassociateApplicationFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateApplicationFleetRequest", name: "DisassociateApplicationFleetRequest")
    DisassociateApplicationFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateApplicationFleetResult", name: "DisassociateApplicationFleetResult")
    DisassociateApplicationFromEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateApplicationFromEntitlementRequest", name: "DisassociateApplicationFromEntitlementRequest")
    DisassociateApplicationFromEntitlementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateApplicationFromEntitlementResult", name: "DisassociateApplicationFromEntitlementResult")
    DisassociateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateFleetRequest", name: "DisassociateFleetRequest")
    DisassociateFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DisassociateFleetResult", name: "DisassociateFleetResult")
    DisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#DisplayName", name: "DisplayName", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Domain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#Domain", name: "Domain", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainJoinInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#DomainJoinInfo", name: "DomainJoinInfo")
    DomainList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#DomainList", name: "DomainList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DynamicAppProvidersEnabled = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#DynamicAppProvidersEnabled", name: "DynamicAppProvidersEnabled")
    EmbedHostDomain = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#EmbedHostDomain", name: "EmbedHostDomain", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)+[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$"})
    EmbedHostDomains = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#EmbedHostDomains", name: "EmbedHostDomains", traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EnableUserRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EnableUserRequest", name: "EnableUserRequest")
    EnableUserResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EnableUserResult", name: "EnableUserResult")
    EntitledApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EntitledApplication", name: "EntitledApplication")
    EntitledApplicationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#EntitledApplicationList", name: "EntitledApplicationList")
    Entitlement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Entitlement", name: "Entitlement")
    EntitlementAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EntitlementAlreadyExistsException", name: "EntitlementAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntitlementAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EntitlementAttribute", name: "EntitlementAttribute")
    EntitlementAttributeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#EntitlementAttributeList", name: "EntitlementAttributeList", traits: {"smithy.api#length" => {"min" => 1}})
    EntitlementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#EntitlementList", name: "EntitlementList")
    EntitlementNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#EntitlementNotFoundException", name: "EntitlementNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ErrorDetails", name: "ErrorDetails")
    ErrorDetailsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ErrorDetailsList", name: "ErrorDetailsList")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#ErrorMessage", name: "ErrorMessage")
    ExpireSessionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ExpireSessionRequest", name: "ExpireSessionRequest")
    ExpireSessionResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ExpireSessionResult", name: "ExpireSessionResult")
    FeedbackURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#FeedbackURL", name: "FeedbackURL", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Fleet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Fleet", name: "Fleet")
    FleetAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#FleetAttribute", name: "FleetAttribute")
    FleetAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#FleetAttributes", name: "FleetAttributes")
    FleetError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#FleetError", name: "FleetError")
    FleetErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#FleetErrorCode", name: "FleetErrorCode")
    FleetErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#FleetErrors", name: "FleetErrors")
    FleetList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#FleetList", name: "FleetList")
    FleetState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#FleetState", name: "FleetState")
    FleetType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#FleetType", name: "FleetType")
    Image = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Image", name: "Image")
    ImageBuilder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ImageBuilder", name: "ImageBuilder")
    ImageBuilderList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ImageBuilderList", name: "ImageBuilderList")
    ImageBuilderState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ImageBuilderState", name: "ImageBuilderState")
    ImageBuilderStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ImageBuilderStateChangeReason", name: "ImageBuilderStateChangeReason")
    ImageBuilderStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ImageBuilderStateChangeReasonCode", name: "ImageBuilderStateChangeReasonCode")
    ImageList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ImageList", name: "ImageList")
    ImagePermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ImagePermissions", name: "ImagePermissions")
    ImageSharedWithOthers = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ImageSharedWithOthers", name: "ImageSharedWithOthers")
    ImageState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ImageState", name: "ImageState")
    ImageStateChangeReason = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ImageStateChangeReason", name: "ImageStateChangeReason")
    ImageStateChangeReasonCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ImageStateChangeReasonCode", name: "ImageStateChangeReasonCode")
    IncompatibleImageException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#IncompatibleImageException", name: "IncompatibleImageException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appstream#Integer", name: "Integer")
    InvalidAccountStatusException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#InvalidAccountStatusException", name: "InvalidAccountStatusException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#InvalidParameterCombinationException", name: "InvalidParameterCombinationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRoleException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#InvalidRoleException", name: "InvalidRoleException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastReportGenerationExecutionError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#LastReportGenerationExecutionError", name: "LastReportGenerationExecutionError")
    LastReportGenerationExecutionErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#LastReportGenerationExecutionErrors", name: "LastReportGenerationExecutionErrors")
    LatestAppstreamAgentVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#LatestAppstreamAgentVersion", name: "LatestAppstreamAgentVersion")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAssociatedFleetsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListAssociatedFleetsRequest", name: "ListAssociatedFleetsRequest")
    ListAssociatedFleetsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListAssociatedFleetsResult", name: "ListAssociatedFleetsResult")
    ListAssociatedStacksRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListAssociatedStacksRequest", name: "ListAssociatedStacksRequest")
    ListAssociatedStacksResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListAssociatedStacksResult", name: "ListAssociatedStacksResult")
    ListEntitledApplicationsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListEntitledApplicationsRequest", name: "ListEntitledApplicationsRequest")
    ListEntitledApplicationsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListEntitledApplicationsResult", name: "ListEntitledApplicationsResult")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appstream#Long", name: "Long")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.appstream#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    MessageAction = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#MessageAction", name: "MessageAction")
    Metadata = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appstream#Metadata", name: "Metadata")
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#Name", name: "Name", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"})
    NetworkAccessConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#NetworkAccessConfiguration", name: "NetworkAccessConfiguration")
    OperationNotPermittedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#OperationNotPermittedException", name: "OperationNotPermittedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationalUnitDistinguishedName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#OrganizationalUnitDistinguishedName", name: "OrganizationalUnitDistinguishedName", traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    OrganizationalUnitDistinguishedNamesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#OrganizationalUnitDistinguishedNamesList", name: "OrganizationalUnitDistinguishedNamesList")
    PackagingType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#PackagingType", name: "PackagingType")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#Permission", name: "Permission")
    PlatformType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#PlatformType", name: "PlatformType")
    Platforms = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#Platforms", name: "Platforms", traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    PreferredProtocol = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#PreferredProtocol", name: "PreferredProtocol")
    RedirectURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#RedirectURL", name: "RedirectURL", traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RegionName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#RegionName", name: "RegionName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    RequestLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#RequestLimitExceededException", name: "RequestLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ResourceError", name: "ResourceError")
    ResourceErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ResourceErrors", name: "ResourceErrors")
    ResourceIdentifier = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#ResourceIdentifier", name: "ResourceIdentifier", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotAvailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ResourceNotAvailableException", name: "ResourceNotAvailableException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\.\\-]*(?<!\\.)$"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#S3Location", name: "S3Location")
    ScriptDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ScriptDetails", name: "ScriptDetails")
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ServiceAccountCredentials = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ServiceAccountCredentials", name: "ServiceAccountCredentials")
    Session = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Session", name: "Session")
    SessionConnectionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#SessionConnectionState", name: "SessionConnectionState")
    SessionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#SessionList", name: "SessionList")
    SessionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#SessionState", name: "SessionState")
    SettingsGroup = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#SettingsGroup", name: "SettingsGroup", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SharedImagePermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#SharedImagePermissions", name: "SharedImagePermissions")
    SharedImagePermissionsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#SharedImagePermissionsList", name: "SharedImagePermissionsList")
    Stack = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Stack", name: "Stack")
    StackAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#StackAttribute", name: "StackAttribute")
    StackAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#StackAttributes", name: "StackAttributes")
    StackError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StackError", name: "StackError")
    StackErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#StackErrorCode", name: "StackErrorCode")
    StackErrors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#StackErrors", name: "StackErrors")
    StackList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#StackList", name: "StackList")
    StartAppBlockBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartAppBlockBuilderRequest", name: "StartAppBlockBuilderRequest")
    StartAppBlockBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartAppBlockBuilderResult", name: "StartAppBlockBuilderResult")
    StartFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartFleetRequest", name: "StartFleetRequest")
    StartFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartFleetResult", name: "StartFleetResult")
    StartImageBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartImageBuilderRequest", name: "StartImageBuilderRequest")
    StartImageBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StartImageBuilderResult", name: "StartImageBuilderResult")
    StopAppBlockBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopAppBlockBuilderRequest", name: "StopAppBlockBuilderRequest")
    StopAppBlockBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopAppBlockBuilderResult", name: "StopAppBlockBuilderResult")
    StopFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopFleetRequest", name: "StopFleetRequest")
    StopFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopFleetResult", name: "StopFleetResult")
    StopImageBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopImageBuilderRequest", name: "StopImageBuilderRequest")
    StopImageBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StopImageBuilderResult", name: "StopImageBuilderResult")
    StorageConnector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StorageConnector", name: "StorageConnector")
    StorageConnectorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#StorageConnectorList", name: "StorageConnectorList")
    StorageConnectorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#StorageConnectorType", name: "StorageConnectorType")
    StreamView = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#StreamView", name: "StreamView")
    StreamingExperienceSettings = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#StreamingExperienceSettings", name: "StreamingExperienceSettings")
    StreamingUrlUserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#StreamingUrlUserId", name: "StreamingUrlUserId", traits: {"smithy.api#length" => {"min" => 2, "max" => 32}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#String", name: "String", traits: {"smithy.api#length" => {"min" => 1}})
    StringList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#StringList", name: "StringList")
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#SubnetIdList", name: "SubnetIdList")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!aws:).[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.appstream#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Theme = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#Theme", name: "Theme")
    ThemeAttribute = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ThemeAttribute", name: "ThemeAttribute")
    ThemeAttributes = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ThemeAttributes", name: "ThemeAttributes")
    ThemeFooterLink = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#ThemeFooterLink", name: "ThemeFooterLink")
    ThemeFooterLinkDisplayName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#ThemeFooterLinkDisplayName", name: "ThemeFooterLinkDisplayName", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[-@./#&+\\w\\s]*$"})
    ThemeFooterLinkURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#ThemeFooterLinkURL", name: "ThemeFooterLinkURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ThemeFooterLinks = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#ThemeFooterLinks", name: "ThemeFooterLinks")
    ThemeState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ThemeState", name: "ThemeState")
    ThemeStyling = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#ThemeStyling", name: "ThemeStyling")
    ThemeTitleText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#ThemeTitleText", name: "ThemeTitleText", traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[-@./#&+\\w\\s]*$"})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.appstream#Timestamp", name: "Timestamp")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateAppBlockBuilderRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateAppBlockBuilderRequest", name: "UpdateAppBlockBuilderRequest")
    UpdateAppBlockBuilderResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateAppBlockBuilderResult", name: "UpdateAppBlockBuilderResult")
    UpdateApplicationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateApplicationRequest", name: "UpdateApplicationRequest")
    UpdateApplicationResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateApplicationResult", name: "UpdateApplicationResult")
    UpdateDirectoryConfigRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateDirectoryConfigRequest", name: "UpdateDirectoryConfigRequest")
    UpdateDirectoryConfigResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateDirectoryConfigResult", name: "UpdateDirectoryConfigResult")
    UpdateEntitlementRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateEntitlementRequest", name: "UpdateEntitlementRequest")
    UpdateEntitlementResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateEntitlementResult", name: "UpdateEntitlementResult")
    UpdateFleetRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateFleetRequest", name: "UpdateFleetRequest")
    UpdateFleetResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateFleetResult", name: "UpdateFleetResult")
    UpdateImagePermissionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateImagePermissionsRequest", name: "UpdateImagePermissionsRequest")
    UpdateImagePermissionsResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateImagePermissionsResult", name: "UpdateImagePermissionsResult")
    UpdateStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateStackRequest", name: "UpdateStackRequest")
    UpdateStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateStackResult", name: "UpdateStackResult")
    UpdateThemeForStackRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateThemeForStackRequest", name: "UpdateThemeForStackRequest")
    UpdateThemeForStackResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UpdateThemeForStackResult", name: "UpdateThemeForStackResult")
    UsageReportExecutionErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#UsageReportExecutionErrorCode", name: "UsageReportExecutionErrorCode")
    UsageReportSchedule = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#UsageReportSchedule", name: "UsageReportSchedule")
    UsageReportSubscription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UsageReportSubscription", name: "UsageReportSubscription")
    UsageReportSubscriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UsageReportSubscriptionList", name: "UsageReportSubscriptionList")
    UsbDeviceFilterString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#UsbDeviceFilterString", name: "UsbDeviceFilterString", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^((\\w*)\\s*(\\w*)\\s*\\,\\s*(\\w*)\\s*\\,\\s*\\*?(\\w*)\\s*\\,\\s*\\*?(\\w*)\\s*\\,\\s*\\*?\\d*\\s*\\,\\s*\\*?\\d*\\s*\\,\\s*[0-1]\\s*\\,\\s*[0-1]\\s*)$"})
    UsbDeviceFilterStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UsbDeviceFilterStrings", name: "UsbDeviceFilterStrings")
    User = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#User", name: "User")
    UserAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#UserAttributeValue", name: "UserAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\s]+$", "smithy.api#sensitive" => {}})
    UserId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#UserId", name: "UserId", traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    UserList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UserList", name: "UserList")
    UserSetting = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UserSetting", name: "UserSetting")
    UserSettingList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UserSettingList", name: "UserSettingList", traits: {"smithy.api#length" => {"min" => 1}})
    UserStackAssociation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UserStackAssociation", name: "UserStackAssociation")
    UserStackAssociationError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#UserStackAssociationError", name: "UserStackAssociationError")
    UserStackAssociationErrorCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#UserStackAssociationErrorCode", name: "UserStackAssociationErrorCode")
    UserStackAssociationErrorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UserStackAssociationErrorList", name: "UserStackAssociationErrorList")
    UserStackAssociationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.appstream#UserStackAssociationList", name: "UserStackAssociationList", traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.appstream#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    VisibilityType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.appstream#VisibilityType", name: "VisibilityType")
    VpcConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.appstream#VpcConfig", name: "VpcConfig")

    AccessEndpoint.add_member(:endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointType, name: "EndpointType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AccessEndpoint.add_member(:vpce_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VpceId"))
    AccessEndpoint.type = Types::AccessEndpoint
    AccessEndpointList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpoint, name: "member"))
    AccessEndpointType.add_member(:streaming, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAMING", traits: {"smithy.api#enumValue" => "STREAMING"}))
    Action.add_member(:clipboard_copy_from_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIPBOARD_COPY_FROM_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"}))
    Action.add_member(:clipboard_copy_to_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CLIPBOARD_COPY_TO_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_TO_LOCAL_DEVICE"}))
    Action.add_member(:file_upload, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_UPLOAD", traits: {"smithy.api#enumValue" => "FILE_UPLOAD"}))
    Action.add_member(:file_download, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FILE_DOWNLOAD", traits: {"smithy.api#enumValue" => "FILE_DOWNLOAD"}))
    Action.add_member(:printing_to_local_device, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRINTING_TO_LOCAL_DEVICE", traits: {"smithy.api#enumValue" => "PRINTING_TO_LOCAL_DEVICE"}))
    Action.add_member(:domain_password_signin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_PASSWORD_SIGNIN", traits: {"smithy.api#enumValue" => "DOMAIN_PASSWORD_SIGNIN"}))
    Action.add_member(:domain_smart_card_signin, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_SMART_CARD_SIGNIN", traits: {"smithy.api#enumValue" => "DOMAIN_SMART_CARD_SIGNIN"}))
    Action.add_member(:auto_time_zone_redirection, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AUTO_TIME_ZONE_REDIRECTION", traits: {"smithy.api#enumValue" => "AUTO_TIME_ZONE_REDIRECTION"}))
    AppBlock.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlock.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlock.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    AppBlock.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    AppBlock.add_member(:source_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "SourceS3Location"))
    AppBlock.add_member(:setup_script_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptDetails, name: "SetupScriptDetails"))
    AppBlock.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    AppBlock.add_member(:post_setup_script_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptDetails, name: "PostSetupScriptDetails"))
    AppBlock.add_member(:packaging_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackagingType, name: "PackagingType"))
    AppBlock.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockState, name: "State"))
    AppBlock.add_member(:app_block_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetailsList, name: "AppBlockErrors"))
    AppBlock.type = Types::AppBlock
    AppBlockBuilder.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    AppBlockBuilder.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    AppBlockBuilder.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderPlatformType, name: "Platform", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    AppBlockBuilder.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    AppBlockBuilder.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    AppBlockBuilder.add_member(:app_block_builder_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceErrors, name: "AppBlockBuilderErrors"))
    AppBlockBuilder.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderStateChangeReason, name: "StateChangeReason"))
    AppBlockBuilder.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    AppBlockBuilder.type = Types::AppBlockBuilder
    AppBlockBuilderAppBlockAssociation.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilderAppBlockAssociation.add_member(:app_block_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AppBlockBuilderName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AppBlockBuilderAppBlockAssociation.type = Types::AppBlockBuilderAppBlockAssociation
    AppBlockBuilderAppBlockAssociationsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderAppBlockAssociation, name: "member"))
    AppBlockBuilderAttribute.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_ARN", traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    AppBlockBuilderAttribute.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_ENDPOINTS", traits: {"smithy.api#enumValue" => "ACCESS_ENDPOINTS"}))
    AppBlockBuilderAttribute.add_member(:vpc_configuration_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_CONFIGURATION_SECURITY_GROUP_IDS", traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION_SECURITY_GROUP_IDS"}))
    AppBlockBuilderAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderAttribute, name: "member"))
    AppBlockBuilderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilder, name: "member"))
    AppBlockBuilderPlatformType.add_member(:windows_server_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2019", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    AppBlockBuilderState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    AppBlockBuilderState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    AppBlockBuilderState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    AppBlockBuilderState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    AppBlockBuilderStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderStateChangeReasonCode, name: "Code"))
    AppBlockBuilderStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    AppBlockBuilderStateChangeReason.type = Types::AppBlockBuilderStateChangeReason
    AppBlockBuilderStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AppBlockState.add_member(:inactive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INACTIVE", traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AppBlockState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AppBlocks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlock, name: "member"))
    AppVisibility.add_member(:all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALL", traits: {"smithy.api#enumValue" => "ALL"}))
    AppVisibility.add_member(:associated, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ASSOCIATED", traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    Application.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name"))
    Application.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    Application.add_member(:icon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "IconURL"))
    Application.add_member(:launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchPath"))
    Application.add_member(:launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchParameters"))
    Application.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    Application.add_member(:metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Metadata, name: "Metadata"))
    Application.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WorkingDirectory"))
    Application.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Application.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    Application.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn"))
    Application.add_member(:icon_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "IconS3Location"))
    Application.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: Platforms, name: "Platforms"))
    Application.add_member(:instance_families, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "InstanceFamilies"))
    Application.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Application.type = Types::Application
    ApplicationAttribute.add_member(:launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAUNCH_PARAMETERS", traits: {"smithy.api#enumValue" => "LAUNCH_PARAMETERS"}))
    ApplicationAttribute.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WORKING_DIRECTORY", traits: {"smithy.api#enumValue" => "WORKING_DIRECTORY"}))
    ApplicationAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAttribute, name: "member"))
    ApplicationFleetAssociation.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationFleetAssociation.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationFleetAssociation.type = Types::ApplicationFleetAssociation
    ApplicationFleetAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationFleetAssociation, name: "member"))
    ApplicationSettings.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ApplicationSettings.add_member(:settings_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsGroup, name: "SettingsGroup"))
    ApplicationSettings.type = Types::ApplicationSettings
    ApplicationSettingsResponse.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    ApplicationSettingsResponse.add_member(:settings_group, ::Smithy::Schema::Shapes::MemberShape.new(target: SettingsGroup, name: "SettingsGroup"))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    ApplicationSettingsResponse.type = Types::ApplicationSettingsResponse
    Applications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "member"))
    ArnList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "member"))
    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AppBlockBuilderName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateAppBlockBuilderAppBlockRequest.type = Types::AssociateAppBlockBuilderAppBlockRequest
    AssociateAppBlockBuilderAppBlockResult.add_member(:app_block_builder_app_block_association, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderAppBlockAssociation, name: "AppBlockBuilderAppBlockAssociation"))
    AssociateAppBlockBuilderAppBlockResult.type = Types::AssociateAppBlockBuilderAppBlockResult
    AssociateApplicationFleetRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateApplicationFleetRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateApplicationFleetRequest.type = Types::AssociateApplicationFleetRequest
    AssociateApplicationFleetResult.add_member(:application_fleet_association, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationFleetAssociation, name: "ApplicationFleetAssociation"))
    AssociateApplicationFleetResult.type = Types::AssociateApplicationFleetResult
    AssociateApplicationToEntitlementRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.add_member(:entitlement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EntitlementName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplicationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.type = Types::AssociateApplicationToEntitlementRequest
    AssociateApplicationToEntitlementResult.type = Types::AssociateApplicationToEntitlementResult
    AssociateFleetRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateFleetRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    AssociateFleetRequest.type = Types::AssociateFleetRequest
    AssociateFleetResult.type = Types::AssociateFleetResult
    AuthenticationType.add_member(:api, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "API", traits: {"smithy.api#enumValue" => "API"}))
    AuthenticationType.add_member(:saml, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAML", traits: {"smithy.api#enumValue" => "SAML"}))
    AuthenticationType.add_member(:userpool, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USERPOOL", traits: {"smithy.api#enumValue" => "USERPOOL"}))
    AuthenticationType.add_member(:aws_ad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_AD", traits: {"smithy.api#enumValue" => "AWS_AD"}))
    AwsAccountIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "member"))
    BatchAssociateUserStackRequest.add_member(:user_stack_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationList, name: "UserStackAssociations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchAssociateUserStackRequest.type = Types::BatchAssociateUserStackRequest
    BatchAssociateUserStackResult.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationErrorList, name: "errors"))
    BatchAssociateUserStackResult.type = Types::BatchAssociateUserStackResult
    BatchDisassociateUserStackRequest.add_member(:user_stack_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationList, name: "UserStackAssociations", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    BatchDisassociateUserStackRequest.type = Types::BatchDisassociateUserStackRequest
    BatchDisassociateUserStackResult.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationErrorList, name: "errors"))
    BatchDisassociateUserStackResult.type = Types::BatchDisassociateUserStackResult
    CertificateBasedAuthProperties.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthStatus, name: "Status"))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "CertificateAuthorityArn"))
    CertificateBasedAuthProperties.type = Types::CertificateBasedAuthProperties
    CertificateBasedAuthStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateBasedAuthStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateBasedAuthStatus.add_member(:enabled_no_directory_login_fallback, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK", traits: {"smithy.api#enumValue" => "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"}))
    ComputeCapacity.add_member(:desired_instances, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DesiredInstances"))
    ComputeCapacity.add_member(:desired_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DesiredSessions"))
    ComputeCapacity.type = Types::ComputeCapacity
    ComputeCapacityStatus.add_member(:desired, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Desired", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ComputeCapacityStatus.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Running"))
    ComputeCapacityStatus.add_member(:in_use, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "InUse"))
    ComputeCapacityStatus.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Available"))
    ComputeCapacityStatus.add_member(:desired_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DesiredUserSessions"))
    ComputeCapacityStatus.add_member(:available_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "AvailableUserSessions"))
    ComputeCapacityStatus.add_member(:active_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ActiveUserSessions"))
    ComputeCapacityStatus.add_member(:actual_user_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "ActualUserSessions"))
    ComputeCapacityStatus.type = Types::ComputeCapacityStatus
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CopyImageRequest.add_member(:source_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "SourceImageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DestinationImageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_region, ::Smithy::Schema::Shapes::MemberShape.new(target: RegionName, name: "DestinationRegion", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "DestinationImageDescription"))
    CopyImageRequest.type = Types::CopyImageRequest
    CopyImageResponse.add_member(:destination_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "DestinationImageName"))
    CopyImageResponse.type = Types::CopyImageResponse
    CreateAppBlockBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateAppBlockBuilderRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateAppBlockBuilderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAppBlockBuilderRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderPlatformType, name: "Platform", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    CreateAppBlockBuilderRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    CreateAppBlockBuilderRequest.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    CreateAppBlockBuilderRequest.type = Types::CreateAppBlockBuilderRequest
    CreateAppBlockBuilderResult.add_member(:app_block_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilder, name: "AppBlockBuilder"))
    CreateAppBlockBuilderResult.type = Types::CreateAppBlockBuilderResult
    CreateAppBlockBuilderStreamingURLRequest.add_member(:app_block_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AppBlockBuilderName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockBuilderStreamingURLRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Validity"))
    CreateAppBlockBuilderStreamingURLRequest.type = Types::CreateAppBlockBuilderStreamingURLRequest
    CreateAppBlockBuilderStreamingURLResult.add_member(:streaming_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamingURL"))
    CreateAppBlockBuilderStreamingURLResult.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Expires"))
    CreateAppBlockBuilderStreamingURLResult.type = Types::CreateAppBlockBuilderStreamingURLResult
    CreateAppBlockRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateAppBlockRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateAppBlockRequest.add_member(:source_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "SourceS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateAppBlockRequest.add_member(:setup_script_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptDetails, name: "SetupScriptDetails"))
    CreateAppBlockRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateAppBlockRequest.add_member(:post_setup_script_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ScriptDetails, name: "PostSetupScriptDetails"))
    CreateAppBlockRequest.add_member(:packaging_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PackagingType, name: "PackagingType"))
    CreateAppBlockRequest.type = Types::CreateAppBlockRequest
    CreateAppBlockResult.add_member(:app_block, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlock, name: "AppBlock"))
    CreateAppBlockResult.type = Types::CreateAppBlockResult
    CreateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateApplicationRequest.add_member(:icon_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "IconS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchPath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WorkingDirectory"))
    CreateApplicationRequest.add_member(:launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchParameters"))
    CreateApplicationRequest.add_member(:platforms, ::Smithy::Schema::Shapes::MemberShape.new(target: Platforms, name: "Platforms", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:instance_families, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "InstanceFamilies", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResult.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "Application"))
    CreateApplicationResult.type = Types::CreateApplicationResult
    CreateDirectoryConfigRequest.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DirectoryName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedNamesList, name: "OrganizationalUnitDistinguishedNames", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateDirectoryConfigRequest.add_member(:service_account_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountCredentials, name: "ServiceAccountCredentials"))
    CreateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthProperties, name: "CertificateBasedAuthProperties"))
    CreateDirectoryConfigRequest.type = Types::CreateDirectoryConfigRequest
    CreateDirectoryConfigResult.add_member(:directory_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfig, name: "DirectoryConfig"))
    CreateDirectoryConfigResult.type = Types::CreateDirectoryConfigResult
    CreateEntitlementRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateEntitlementRequest.add_member(:app_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: AppVisibility, name: "AppVisibility", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementAttributeList, name: "Attributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateEntitlementRequest.type = Types::CreateEntitlementRequest
    CreateEntitlementResult.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "Entitlement"))
    CreateEntitlementResult.type = Types::CreateEntitlementResult
    CreateFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "ImageName"))
    CreateFleetRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ImageArn"))
    CreateFleetRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetType, name: "FleetType"))
    CreateFleetRequest.add_member(:compute_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeCapacity, name: "ComputeCapacity"))
    CreateFleetRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    CreateFleetRequest.add_member(:max_user_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxUserDurationInSeconds"))
    CreateFleetRequest.add_member(:disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateFleetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateFleetRequest.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    CreateFleetRequest.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainJoinInfo, name: "DomainJoinInfo"))
    CreateFleetRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IdleDisconnectTimeoutInSeconds"))
    CreateFleetRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    CreateFleetRequest.add_member(:stream_view, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamView, name: "StreamView"))
    CreateFleetRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    CreateFleetRequest.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConcurrentSessions"))
    CreateFleetRequest.add_member(:usb_device_filter_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: UsbDeviceFilterStrings, name: "UsbDeviceFilterStrings"))
    CreateFleetRequest.add_member(:session_script_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "SessionScriptS3Location"))
    CreateFleetRequest.add_member(:max_sessions_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxSessionsPerInstance"))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResult.add_member(:fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "Fleet"))
    CreateFleetResult.type = Types::CreateFleetResult
    CreateImageBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateImageBuilderRequest.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageName"))
    CreateImageBuilderRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ImageArn"))
    CreateImageBuilderRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateImageBuilderRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateImageBuilderRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateImageBuilderRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    CreateImageBuilderRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    CreateImageBuilderRequest.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    CreateImageBuilderRequest.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainJoinInfo, name: "DomainJoinInfo"))
    CreateImageBuilderRequest.add_member(:appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AppstreamAgentVersion, name: "AppstreamAgentVersion"))
    CreateImageBuilderRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateImageBuilderRequest.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    CreateImageBuilderRequest.type = Types::CreateImageBuilderRequest
    CreateImageBuilderResult.add_member(:image_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilder, name: "ImageBuilder"))
    CreateImageBuilderResult.type = Types::CreateImageBuilderResult
    CreateImageBuilderStreamingURLRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateImageBuilderStreamingURLRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Validity"))
    CreateImageBuilderStreamingURLRequest.type = Types::CreateImageBuilderStreamingURLRequest
    CreateImageBuilderStreamingURLResult.add_member(:streaming_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamingURL"))
    CreateImageBuilderStreamingURLResult.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Expires"))
    CreateImageBuilderStreamingURLResult.type = Types::CreateImageBuilderStreamingURLResult
    CreateStackRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateStackRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    CreateStackRequest.add_member(:storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorList, name: "StorageConnectors"))
    CreateStackRequest.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectURL, name: "RedirectURL"))
    CreateStackRequest.add_member(:feedback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackURL, name: "FeedbackURL"))
    CreateStackRequest.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingList, name: "UserSettings"))
    CreateStackRequest.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettings, name: "ApplicationSettings"))
    CreateStackRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateStackRequest.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    CreateStackRequest.add_member(:embed_host_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: EmbedHostDomains, name: "EmbedHostDomains"))
    CreateStackRequest.add_member(:streaming_experience_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingExperienceSettings, name: "StreamingExperienceSettings"))
    CreateStackRequest.type = Types::CreateStackRequest
    CreateStackResult.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: Stack, name: "Stack"))
    CreateStackResult.type = Types::CreateStackResult
    CreateStreamingURLRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingUrlUserId, name: "UserId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:application_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplicationId"))
    CreateStreamingURLRequest.add_member(:validity, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "Validity"))
    CreateStreamingURLRequest.add_member(:session_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionContext"))
    CreateStreamingURLRequest.type = Types::CreateStreamingURLRequest
    CreateStreamingURLResult.add_member(:streaming_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StreamingURL"))
    CreateStreamingURLResult.add_member(:expires, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "Expires"))
    CreateStreamingURLResult.type = Types::CreateStreamingURLResult
    CreateThemeForStackRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:footer_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLinks, name: "FooterLinks"))
    CreateThemeForStackRequest.add_member(:title_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeTitleText, name: "TitleText", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:theme_styling, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeStyling, name: "ThemeStyling", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:organization_logo_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "OrganizationLogoS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:favicon_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "FaviconS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateThemeForStackRequest.type = Types::CreateThemeForStackRequest
    CreateThemeForStackResult.add_member(:theme, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "Theme"))
    CreateThemeForStackResult.type = Types::CreateThemeForStackResult
    CreateUpdatedImageRequest.add_member(:existing_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "existingImageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUpdatedImageRequest.add_member(:new_image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "newImageName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUpdatedImageRequest.add_member(:new_image_description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "newImageDescription"))
    CreateUpdatedImageRequest.add_member(:new_image_display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "newImageDisplayName"))
    CreateUpdatedImageRequest.add_member(:new_image_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "newImageTags"))
    CreateUpdatedImageRequest.add_member(:dry_run, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "dryRun"))
    CreateUpdatedImageRequest.type = Types::CreateUpdatedImageRequest
    CreateUpdatedImageResult.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "image"))
    CreateUpdatedImageResult.add_member(:can_update_image, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "canUpdateImage"))
    CreateUpdatedImageResult.type = Types::CreateUpdatedImageResult
    CreateUsageReportSubscriptionRequest.type = Types::CreateUsageReportSubscriptionRequest
    CreateUsageReportSubscriptionResult.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    CreateUsageReportSubscriptionResult.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageReportSchedule, name: "Schedule"))
    CreateUsageReportSubscriptionResult.type = Types::CreateUsageReportSubscriptionResult
    CreateUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:message_action, ::Smithy::Schema::Shapes::MemberShape.new(target: MessageAction, name: "MessageAction"))
    CreateUserRequest.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValue, name: "FirstName"))
    CreateUserRequest.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValue, name: "LastName"))
    CreateUserRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResult.type = Types::CreateUserResult
    DeleteAppBlockBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAppBlockBuilderRequest.type = Types::DeleteAppBlockBuilderRequest
    DeleteAppBlockBuilderResult.type = Types::DeleteAppBlockBuilderResult
    DeleteAppBlockRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteAppBlockRequest.type = Types::DeleteAppBlockRequest
    DeleteAppBlockResult.type = Types::DeleteAppBlockResult
    DeleteApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResult.type = Types::DeleteApplicationResult
    DeleteDirectoryConfigRequest.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DirectoryName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteDirectoryConfigRequest.type = Types::DeleteDirectoryConfigRequest
    DeleteDirectoryConfigResult.type = Types::DeleteDirectoryConfigResult
    DeleteEntitlementRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEntitlementRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteEntitlementRequest.type = Types::DeleteEntitlementRequest
    DeleteEntitlementResult.type = Types::DeleteEntitlementResult
    DeleteFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResult.type = Types::DeleteFleetResult
    DeleteImageBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteImageBuilderRequest.type = Types::DeleteImageBuilderRequest
    DeleteImageBuilderResult.add_member(:image_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilder, name: "ImageBuilder"))
    DeleteImageBuilderResult.type = Types::DeleteImageBuilderResult
    DeleteImagePermissionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteImagePermissionsRequest.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SharedAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteImagePermissionsRequest.type = Types::DeleteImagePermissionsRequest
    DeleteImagePermissionsResult.type = Types::DeleteImagePermissionsResult
    DeleteImageRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteImageRequest.type = Types::DeleteImageRequest
    DeleteImageResult.add_member(:image, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "Image"))
    DeleteImageResult.type = Types::DeleteImageResult
    DeleteStackRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteStackRequest.type = Types::DeleteStackRequest
    DeleteStackResult.type = Types::DeleteStackResult
    DeleteThemeForStackRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteThemeForStackRequest.type = Types::DeleteThemeForStackRequest
    DeleteThemeForStackResult.type = Types::DeleteThemeForStackResult
    DeleteUsageReportSubscriptionRequest.type = Types::DeleteUsageReportSubscriptionRequest
    DeleteUsageReportSubscriptionResult.type = Types::DeleteUsageReportSubscriptionResult
    DeleteUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResult.type = Types::DeleteUserResult
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AppBlockBuilderName"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.type = Types::DescribeAppBlockBuilderAppBlockAssociationsRequest
    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:app_block_builder_app_block_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderAppBlockAssociationsList, name: "AppBlockBuilderAppBlockAssociations"))
    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlockBuilderAppBlockAssociationsResult.type = Types::DescribeAppBlockBuilderAppBlockAssociationsResult
    DescribeAppBlockBuildersRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    DescribeAppBlockBuildersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlockBuildersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeAppBlockBuildersRequest.type = Types::DescribeAppBlockBuildersRequest
    DescribeAppBlockBuildersResult.add_member(:app_block_builders, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderList, name: "AppBlockBuilders"))
    DescribeAppBlockBuildersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlockBuildersResult.type = Types::DescribeAppBlockBuildersResult
    DescribeAppBlocksRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "Arns"))
    DescribeAppBlocksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlocksRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeAppBlocksRequest.type = Types::DescribeAppBlocksRequest
    DescribeAppBlocksResult.add_member(:app_blocks, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlocks, name: "AppBlocks"))
    DescribeAppBlocksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeAppBlocksResult.type = Types::DescribeAppBlocksResult
    DescribeApplicationFleetAssociationsRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FleetName"))
    DescribeApplicationFleetAssociationsRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn"))
    DescribeApplicationFleetAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeApplicationFleetAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeApplicationFleetAssociationsRequest.type = Types::DescribeApplicationFleetAssociationsRequest
    DescribeApplicationFleetAssociationsResult.add_member(:application_fleet_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationFleetAssociationList, name: "ApplicationFleetAssociations"))
    DescribeApplicationFleetAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeApplicationFleetAssociationsResult.type = Types::DescribeApplicationFleetAssociationsResult
    DescribeApplicationsRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "Arns"))
    DescribeApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeApplicationsRequest.type = Types::DescribeApplicationsRequest
    DescribeApplicationsResult.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Applications, name: "Applications"))
    DescribeApplicationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeApplicationsResult.type = Types::DescribeApplicationsResult
    DescribeDirectoryConfigsRequest.add_member(:directory_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryNameList, name: "DirectoryNames"))
    DescribeDirectoryConfigsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeDirectoryConfigsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeDirectoryConfigsRequest.type = Types::DescribeDirectoryConfigsRequest
    DescribeDirectoryConfigsResult.add_member(:directory_configs, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfigList, name: "DirectoryConfigs"))
    DescribeDirectoryConfigsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeDirectoryConfigsResult.type = Types::DescribeDirectoryConfigsResult
    DescribeEntitlementsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    DescribeEntitlementsRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeEntitlementsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeEntitlementsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeEntitlementsRequest.type = Types::DescribeEntitlementsRequest
    DescribeEntitlementsResult.add_member(:entitlements, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementList, name: "Entitlements"))
    DescribeEntitlementsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeEntitlementsResult.type = Types::DescribeEntitlementsResult
    DescribeFleetsRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    DescribeFleetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetsRequest.type = Types::DescribeFleetsRequest
    DescribeFleetsResult.add_member(:fleets, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetList, name: "Fleets"))
    DescribeFleetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeFleetsResult.type = Types::DescribeFleetsResult
    DescribeImageBuildersRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    DescribeImageBuildersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeImageBuildersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImageBuildersRequest.type = Types::DescribeImageBuildersRequest
    DescribeImageBuildersResult.add_member(:image_builders, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderList, name: "ImageBuilders"))
    DescribeImageBuildersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImageBuildersResult.type = Types::DescribeImageBuildersResult
    DescribeImagePermissionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeImagePermissionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeImagePermissionsRequest.add_member(:shared_aws_account_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountIdList, name: "SharedAwsAccountIds"))
    DescribeImagePermissionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImagePermissionsRequest.type = Types::DescribeImagePermissionsRequest
    DescribeImagePermissionsResult.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    DescribeImagePermissionsResult.add_member(:shared_image_permissions_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedImagePermissionsList, name: "SharedImagePermissionsList"))
    DescribeImagePermissionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImagePermissionsResult.type = Types::DescribeImagePermissionsResult
    DescribeImagesRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    DescribeImagesRequest.add_member(:arns, ::Smithy::Schema::Shapes::MemberShape.new(target: ArnList, name: "Arns"))
    DescribeImagesRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityType, name: "Type"))
    DescribeImagesRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImagesRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeImagesMaxResults, name: "MaxResults"))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResult.add_member(:images, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageList, name: "Images"))
    DescribeImagesResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeImagesResult.type = Types::DescribeImagesResult
    DescribeSessionsRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSessionsRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeSessionsRequest.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId"))
    DescribeSessionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeSessionsRequest.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "Limit"))
    DescribeSessionsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType"))
    DescribeSessionsRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceId"))
    DescribeSessionsRequest.type = Types::DescribeSessionsRequest
    DescribeSessionsResult.add_member(:sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionList, name: "Sessions"))
    DescribeSessionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeSessionsResult.type = Types::DescribeSessionsResult
    DescribeStacksRequest.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    DescribeStacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeStacksRequest.type = Types::DescribeStacksRequest
    DescribeStacksResult.add_member(:stacks, ::Smithy::Schema::Shapes::MemberShape.new(target: StackList, name: "Stacks"))
    DescribeStacksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeStacksResult.type = Types::DescribeStacksResult
    DescribeThemeForStackRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeThemeForStackRequest.type = Types::DescribeThemeForStackRequest
    DescribeThemeForStackResult.add_member(:theme, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "Theme"))
    DescribeThemeForStackResult.type = Types::DescribeThemeForStackResult
    DescribeUsageReportSubscriptionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeUsageReportSubscriptionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUsageReportSubscriptionsRequest.type = Types::DescribeUsageReportSubscriptionsRequest
    DescribeUsageReportSubscriptionsResult.add_member(:usage_report_subscriptions, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageReportSubscriptionList, name: "UsageReportSubscriptions"))
    DescribeUsageReportSubscriptionsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUsageReportSubscriptionsResult.type = Types::DescribeUsageReportSubscriptionsResult
    DescribeUserStackAssociationsRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName"))
    DescribeUserStackAssociationsRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName"))
    DescribeUserStackAssociationsRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType"))
    DescribeUserStackAssociationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeUserStackAssociationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUserStackAssociationsRequest.type = Types::DescribeUserStackAssociationsRequest
    DescribeUserStackAssociationsResult.add_member(:user_stack_associations, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationList, name: "UserStackAssociations"))
    DescribeUserStackAssociationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUserStackAssociationsResult.type = Types::DescribeUserStackAssociationsResult
    DescribeUsersRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeUsersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    DescribeUsersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResult.add_member(:users, ::Smithy::Schema::Shapes::MemberShape.new(target: UserList, name: "Users"))
    DescribeUsersResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    DescribeUsersResult.type = Types::DescribeUsersResult
    DirectoryConfig.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DirectoryName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DirectoryConfig.add_member(:organizational_unit_distinguished_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedNamesList, name: "OrganizationalUnitDistinguishedNames"))
    DirectoryConfig.add_member(:service_account_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountCredentials, name: "ServiceAccountCredentials"))
    DirectoryConfig.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    DirectoryConfig.add_member(:certificate_based_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthProperties, name: "CertificateBasedAuthProperties"))
    DirectoryConfig.type = Types::DirectoryConfig
    DirectoryConfigList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfig, name: "member"))
    DirectoryNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "member"))
    DisableUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResult.type = Types::DisableUserResult
    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "AppBlockBuilderName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateAppBlockBuilderAppBlockRequest.type = Types::DisassociateAppBlockBuilderAppBlockRequest
    DisassociateAppBlockBuilderAppBlockResult.type = Types::DisassociateAppBlockBuilderAppBlockResult
    DisassociateApplicationFleetRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateApplicationFleetRequest.add_member(:application_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ApplicationArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateApplicationFleetRequest.type = Types::DisassociateApplicationFleetRequest
    DisassociateApplicationFleetResult.type = Types::DisassociateApplicationFleetResult
    DisassociateApplicationFromEntitlementRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.add_member(:entitlement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EntitlementName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplicationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.type = Types::DisassociateApplicationFromEntitlementRequest
    DisassociateApplicationFromEntitlementResult.type = Types::DisassociateApplicationFromEntitlementResult
    DisassociateFleetRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateFleetRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DisassociateFleetRequest.type = Types::DisassociateFleetRequest
    DisassociateFleetResult.type = Types::DisassociateFleetResult
    DomainJoinInfo.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DirectoryName"))
    DomainJoinInfo.add_member(:organizational_unit_distinguished_name, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedName, name: "OrganizationalUnitDistinguishedName"))
    DomainJoinInfo.type = Types::DomainJoinInfo
    DomainList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Domain, name: "member"))
    DynamicAppProvidersEnabled.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DynamicAppProvidersEnabled.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    EmbedHostDomains.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EmbedHostDomain, name: "member"))
    EnableUserRequest.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableUserRequest.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EnableUserRequest.type = Types::EnableUserRequest
    EnableUserResult.type = Types::EnableUserResult
    EntitledApplication.add_member(:application_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApplicationIdentifier", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EntitledApplication.type = Types::EntitledApplication
    EntitledApplicationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitledApplication, name: "member"))
    Entitlement.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Entitlement.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Entitlement.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    Entitlement.add_member(:app_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: AppVisibility, name: "AppVisibility", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Entitlement.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementAttributeList, name: "Attributes", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Entitlement.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Entitlement.add_member(:last_modified_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastModifiedTime"))
    Entitlement.type = Types::Entitlement
    EntitlementAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    EntitlementAlreadyExistsException.type = Types::EntitlementAlreadyExistsException
    EntitlementAttribute.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EntitlementAttribute.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Value", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    EntitlementAttribute.type = Types::EntitlementAttribute
    EntitlementAttributeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementAttribute, name: "member"))
    EntitlementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "member"))
    EntitlementNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    EntitlementNotFoundException.type = Types::EntitlementNotFoundException
    ErrorDetails.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorCode"))
    ErrorDetails.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    ErrorDetails.type = Types::ErrorDetails
    ErrorDetailsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorDetails, name: "member"))
    ExpireSessionRequest.add_member(:session_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SessionId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ExpireSessionRequest.type = Types::ExpireSessionRequest
    ExpireSessionResult.type = Types::ExpireSessionResult
    Fleet.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Fleet.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Fleet.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    Fleet.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Fleet.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageName"))
    Fleet.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ImageArn"))
    Fleet.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Fleet.add_member(:fleet_type, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetType, name: "FleetType"))
    Fleet.add_member(:compute_capacity_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeCapacityStatus, name: "ComputeCapacityStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Fleet.add_member(:max_user_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxUserDurationInSeconds"))
    Fleet.add_member(:disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DisconnectTimeoutInSeconds"))
    Fleet.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Fleet.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    Fleet.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Fleet.add_member(:fleet_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetErrors, name: "FleetErrors"))
    Fleet.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    Fleet.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainJoinInfo, name: "DomainJoinInfo"))
    Fleet.add_member(:idle_disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IdleDisconnectTimeoutInSeconds"))
    Fleet.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    Fleet.add_member(:stream_view, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamView, name: "StreamView"))
    Fleet.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    Fleet.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConcurrentSessions"))
    Fleet.add_member(:usb_device_filter_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: UsbDeviceFilterStrings, name: "UsbDeviceFilterStrings"))
    Fleet.add_member(:session_script_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "SessionScriptS3Location"))
    Fleet.add_member(:max_sessions_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxSessionsPerInstance"))
    Fleet.type = Types::Fleet
    FleetAttribute.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_CONFIGURATION", traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION"}))
    FleetAttribute.add_member(:vpc_configuration_security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_CONFIGURATION_SECURITY_GROUP_IDS", traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION_SECURITY_GROUP_IDS"}))
    FleetAttribute.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_INFO", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INFO"}))
    FleetAttribute.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_ARN", traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    FleetAttribute.add_member(:usb_device_filter_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USB_DEVICE_FILTER_STRINGS", traits: {"smithy.api#enumValue" => "USB_DEVICE_FILTER_STRINGS"}))
    FleetAttribute.add_member(:session_script_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_SCRIPT_S3_LOCATION", traits: {"smithy.api#enumValue" => "SESSION_SCRIPT_S3_LOCATION"}))
    FleetAttribute.add_member(:max_sessions_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MAX_SESSIONS_PER_INSTANCE", traits: {"smithy.api#enumValue" => "MAX_SESSIONS_PER_INSTANCE"}))
    FleetAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttribute, name: "member"))
    FleetError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetErrorCode, name: "ErrorCode"))
    FleetError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    FleetError.type = Types::FleetError
    FleetErrorCode.add_member(:iam_service_role_missing_eni_describe_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"}))
    FleetErrorCode.add_member(:iam_service_role_missing_eni_create_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"}))
    FleetErrorCode.add_member(:iam_service_role_missing_eni_delete_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"}))
    FleetErrorCode.add_member(:network_interface_limit_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NETWORK_INTERFACE_LIMIT_EXCEEDED", traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_LIMIT_EXCEEDED"}))
    FleetErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    FleetErrorCode.add_member(:iam_service_role_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_IS_MISSING", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_IS_MISSING"}))
    FleetErrorCode.add_member(:machine_role_is_missing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MACHINE_ROLE_IS_MISSING", traits: {"smithy.api#enumValue" => "MACHINE_ROLE_IS_MISSING"}))
    FleetErrorCode.add_member(:sts_disabled_in_region, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STS_DISABLED_IN_REGION", traits: {"smithy.api#enumValue" => "STS_DISABLED_IN_REGION"}))
    FleetErrorCode.add_member(:subnet_has_insufficient_ip_addresses, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES", traits: {"smithy.api#enumValue" => "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"}))
    FleetErrorCode.add_member(:iam_service_role_missing_describe_subnet_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"}))
    FleetErrorCode.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    FleetErrorCode.add_member(:image_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_NOT_FOUND", traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    FleetErrorCode.add_member(:invalid_subnet_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_SUBNET_CONFIGURATION", traits: {"smithy.api#enumValue" => "INVALID_SUBNET_CONFIGURATION"}))
    FleetErrorCode.add_member(:security_groups_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUPS_NOT_FOUND", traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_NOT_FOUND"}))
    FleetErrorCode.add_member(:igw_not_attached, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IGW_NOT_ATTACHED", traits: {"smithy.api#enumValue" => "IGW_NOT_ATTACHED"}))
    FleetErrorCode.add_member(:iam_service_role_missing_describe_security_groups_action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION", traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"}))
    FleetErrorCode.add_member(:fleet_stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_STOPPED", traits: {"smithy.api#enumValue" => "FLEET_STOPPED"}))
    FleetErrorCode.add_member(:fleet_instance_provisioning_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FLEET_INSTANCE_PROVISIONING_FAILURE", traits: {"smithy.api#enumValue" => "FLEET_INSTANCE_PROVISIONING_FAILURE"}))
    FleetErrorCode.add_member(:domain_join_error_file_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"}))
    FleetErrorCode.add_member(:domain_join_error_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_ACCESS_DENIED"}))
    FleetErrorCode.add_member(:domain_join_error_logon_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_LOGON_FAILURE", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_LOGON_FAILURE"}))
    FleetErrorCode.add_member(:domain_join_error_invalid_parameter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_INVALID_PARAMETER", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"}))
    FleetErrorCode.add_member(:domain_join_error_more_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_MORE_DATA", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_MORE_DATA"}))
    FleetErrorCode.add_member(:domain_join_error_no_such_domain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"}))
    FleetErrorCode.add_member(:domain_join_error_not_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_NOT_SUPPORTED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"}))
    FleetErrorCode.add_member(:domain_join_nerr_invalid_workgroup_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"}))
    FleetErrorCode.add_member(:domain_join_nerr_workstation_not_started, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"}))
    FleetErrorCode.add_member(:domain_join_error_ds_machine_account_quota_exceeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"}))
    FleetErrorCode.add_member(:domain_join_nerr_password_expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"}))
    FleetErrorCode.add_member(:domain_join_internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"}))
    FleetErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetError, name: "member"))
    FleetList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "member"))
    FleetState.add_member(:starting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STARTING", traits: {"smithy.api#enumValue" => "STARTING"}))
    FleetState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    FleetState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    FleetState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    FleetType.add_member(:always_on, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALWAYS_ON", traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    FleetType.add_member(:on_demand, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ON_DEMAND", traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    FleetType.add_member(:elastic, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ELASTIC", traits: {"smithy.api#enumValue" => "ELASTIC"}))
    Image.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Image.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    Image.add_member(:base_image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "BaseImageArn"))
    Image.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    Image.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageState, name: "State"))
    Image.add_member(:visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: VisibilityType, name: "Visibility"))
    Image.add_member(:image_builder_supported, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "ImageBuilderSupported"))
    Image.add_member(:image_builder_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageBuilderName"))
    Image.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    Image.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Image.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStateChangeReason, name: "StateChangeReason"))
    Image.add_member(:applications, ::Smithy::Schema::Shapes::MemberShape.new(target: Applications, name: "Applications"))
    Image.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Image.add_member(:public_base_image_released_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "PublicBaseImageReleasedDate"))
    Image.add_member(:appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AppstreamAgentVersion, name: "AppstreamAgentVersion"))
    Image.add_member(:image_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePermissions, name: "ImagePermissions"))
    Image.add_member(:image_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceErrors, name: "ImageErrors"))
    Image.add_member(:latest_appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestAppstreamAgentVersion, name: "LatestAppstreamAgentVersion"))
    Image.add_member(:supported_instance_families, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "SupportedInstanceFamilies"))
    Image.add_member(:dynamic_app_providers_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicAppProvidersEnabled, name: "DynamicAppProvidersEnabled"))
    Image.add_member(:image_shared_with_others, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageSharedWithOthers, name: "ImageSharedWithOthers"))
    Image.type = Types::Image
    ImageBuilder.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ImageBuilder.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    ImageBuilder.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ImageArn"))
    ImageBuilder.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    ImageBuilder.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    ImageBuilder.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    ImageBuilder.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType"))
    ImageBuilder.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    ImageBuilder.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    ImageBuilder.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderState, name: "State"))
    ImageBuilder.add_member(:state_change_reason, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderStateChangeReason, name: "StateChangeReason"))
    ImageBuilder.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    ImageBuilder.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    ImageBuilder.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainJoinInfo, name: "DomainJoinInfo"))
    ImageBuilder.add_member(:network_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "NetworkAccessConfiguration"))
    ImageBuilder.add_member(:image_builder_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceErrors, name: "ImageBuilderErrors"))
    ImageBuilder.add_member(:appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AppstreamAgentVersion, name: "AppstreamAgentVersion"))
    ImageBuilder.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    ImageBuilder.add_member(:latest_appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: LatestAppstreamAgentVersion, name: "LatestAppstreamAgentVersion"))
    ImageBuilder.type = Types::ImageBuilder
    ImageBuilderList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilder, name: "member"))
    ImageBuilderState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageBuilderState.add_member(:updating_agent, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING_AGENT", traits: {"smithy.api#enumValue" => "UPDATING_AGENT"}))
    ImageBuilderState.add_member(:running, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RUNNING", traits: {"smithy.api#enumValue" => "RUNNING"}))
    ImageBuilderState.add_member(:stopping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPING", traits: {"smithy.api#enumValue" => "STOPPING"}))
    ImageBuilderState.add_member(:stopped, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOPPED", traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImageBuilderState.add_member(:rebooting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REBOOTING", traits: {"smithy.api#enumValue" => "REBOOTING"}))
    ImageBuilderState.add_member(:snapshotting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPSHOTTING", traits: {"smithy.api#enumValue" => "SNAPSHOTTING"}))
    ImageBuilderState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageBuilderState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageBuilderState.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    ImageBuilderState.add_member(:pending_qualification, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING_QUALIFICATION", traits: {"smithy.api#enumValue" => "PENDING_QUALIFICATION"}))
    ImageBuilderStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilderStateChangeReasonCode, name: "Code"))
    ImageBuilderStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ImageBuilderStateChangeReason.type = Types::ImageBuilderStateChangeReason
    ImageBuilderStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImageBuilderStateChangeReasonCode.add_member(:image_unavailable, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_UNAVAILABLE", traits: {"smithy.api#enumValue" => "IMAGE_UNAVAILABLE"}))
    ImageList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Image, name: "member"))
    ImagePermissions.add_member(:allow_fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "allowFleet"))
    ImagePermissions.add_member(:allow_image_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "allowImageBuilder"))
    ImagePermissions.type = Types::ImagePermissions
    ImageSharedWithOthers.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "TRUE"}))
    ImageSharedWithOthers.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    ImageState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageState.add_member(:available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AVAILABLE", traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ImageState.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageState.add_member(:copying, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COPYING", traits: {"smithy.api#enumValue" => "COPYING"}))
    ImageState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    ImageState.add_member(:importing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPORTING", traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ImageStateChangeReason.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageStateChangeReasonCode, name: "Code"))
    ImageStateChangeReason.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message"))
    ImageStateChangeReason.type = Types::ImageStateChangeReason
    ImageStateChangeReasonCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImageStateChangeReasonCode.add_member(:image_builder_not_available, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_BUILDER_NOT_AVAILABLE", traits: {"smithy.api#enumValue" => "IMAGE_BUILDER_NOT_AVAILABLE"}))
    ImageStateChangeReasonCode.add_member(:image_copy_failure, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMAGE_COPY_FAILURE", traits: {"smithy.api#enumValue" => "IMAGE_COPY_FAILURE"}))
    IncompatibleImageException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    IncompatibleImageException.type = Types::IncompatibleImageException
    InvalidAccountStatusException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidAccountStatusException.type = Types::InvalidAccountStatusException
    InvalidParameterCombinationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidRoleException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidRoleException.type = Types::InvalidRoleException
    LastReportGenerationExecutionError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageReportExecutionErrorCode, name: "ErrorCode"))
    LastReportGenerationExecutionError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    LastReportGenerationExecutionError.type = Types::LastReportGenerationExecutionError
    LastReportGenerationExecutionErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LastReportGenerationExecutionError, name: "member"))
    LatestAppstreamAgentVersion.add_member(:true, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TRUE", traits: {"smithy.api#enumValue" => "TRUE"}))
    LatestAppstreamAgentVersion.add_member(:false, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FALSE", traits: {"smithy.api#enumValue" => "FALSE"}))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    ListAssociatedFleetsRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListAssociatedFleetsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociatedFleetsRequest.type = Types::ListAssociatedFleetsRequest
    ListAssociatedFleetsResult.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    ListAssociatedFleetsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociatedFleetsResult.type = Types::ListAssociatedFleetsResult
    ListAssociatedStacksRequest.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListAssociatedStacksRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociatedStacksRequest.type = Types::ListAssociatedStacksRequest
    ListAssociatedStacksResult.add_member(:names, ::Smithy::Schema::Shapes::MemberShape.new(target: StringList, name: "Names"))
    ListAssociatedStacksResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListAssociatedStacksResult.type = Types::ListAssociatedStacksResult
    ListEntitledApplicationsRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListEntitledApplicationsRequest.add_member(:entitlement_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "EntitlementName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListEntitledApplicationsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntitledApplicationsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxResults"))
    ListEntitledApplicationsRequest.type = Types::ListEntitledApplicationsRequest
    ListEntitledApplicationsResult.add_member(:entitled_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitledApplicationList, name: "EntitledApplications"))
    ListEntitledApplicationsResult.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken"))
    ListEntitledApplicationsResult.type = Types::ListEntitledApplicationsResult
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MessageAction.add_member(:suppress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUPPRESS", traits: {"smithy.api#enumValue" => "SUPPRESS"}))
    MessageAction.add_member(:resend, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESEND", traits: {"smithy.api#enumValue" => "RESEND"}))
    Metadata.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key"))
    Metadata.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    NetworkAccessConfiguration.add_member(:eni_private_ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EniPrivateIpAddress"))
    NetworkAccessConfiguration.add_member(:eni_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EniId"))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    OperationNotPermittedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OrganizationalUnitDistinguishedNamesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedName, name: "member"))
    PackagingType.add_member(:custom, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOM", traits: {"smithy.api#enumValue" => "CUSTOM"}))
    PackagingType.add_member(:appstream2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APPSTREAM2", traits: {"smithy.api#enumValue" => "APPSTREAM2"}))
    Permission.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    Permission.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    PlatformType.add_member(:windows, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS", traits: {"smithy.api#enumValue" => "WINDOWS"}))
    PlatformType.add_member(:windows_server_2016, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2016", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    PlatformType.add_member(:windows_server_2019, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2019", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    PlatformType.add_member(:windows_server_2022, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WINDOWS_SERVER_2022", traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022"}))
    PlatformType.add_member(:amazon_linux2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AMAZON_LINUX2", traits: {"smithy.api#enumValue" => "AMAZON_LINUX2"}))
    PlatformType.add_member(:rhel8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RHEL8", traits: {"smithy.api#enumValue" => "RHEL8"}))
    PlatformType.add_member(:rocky_linux8, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROCKY_LINUX8", traits: {"smithy.api#enumValue" => "ROCKY_LINUX8"}))
    Platforms.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "member"))
    PreferredProtocol.add_member(:tcp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TCP", traits: {"smithy.api#enumValue" => "TCP"}))
    PreferredProtocol.add_member(:udp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UDP", traits: {"smithy.api#enumValue" => "UDP"}))
    RequestLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    RequestLimitExceededException.type = Types::RequestLimitExceededException
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetErrorCode, name: "ErrorCode"))
    ResourceError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    ResourceError.add_member(:error_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ErrorTimestamp"))
    ResourceError.type = Types::ResourceError
    ResourceErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceError, name: "member"))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotAvailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotAvailableException.type = Types::ResourceNotAvailableException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    S3Location.add_member(:s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "S3Key"))
    S3Location.type = Types::S3Location
    ScriptDetails.add_member(:script_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "ScriptS3Location", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScriptDetails.add_member(:executable_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutablePath", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScriptDetails.add_member(:executable_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExecutableParameters"))
    ScriptDetails.add_member(:timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "TimeoutInSeconds", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ScriptDetails.type = Types::ScriptDetails
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    ServiceAccountCredentials.add_member(:account_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountName, name: "AccountName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceAccountCredentials.add_member(:account_password, ::Smithy::Schema::Shapes::MemberShape.new(target: AccountPassword, name: "AccountPassword", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ServiceAccountCredentials.type = Types::ServiceAccountCredentials
    Session.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Id", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:user_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UserId, name: "UserId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:fleet_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FleetName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionState, name: "State", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Session.add_member(:connection_state, ::Smithy::Schema::Shapes::MemberShape.new(target: SessionConnectionState, name: "ConnectionState"))
    Session.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "StartTime"))
    Session.add_member(:max_expiration_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "MaxExpirationTime"))
    Session.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType"))
    Session.add_member(:network_access_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkAccessConfiguration, name: "NetworkAccessConfiguration"))
    Session.add_member(:instance_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceId"))
    Session.type = Types::Session
    SessionConnectionState.add_member(:connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CONNECTED", traits: {"smithy.api#enumValue" => "CONNECTED"}))
    SessionConnectionState.add_member(:not_connected, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NOT_CONNECTED", traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    SessionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Session, name: "member"))
    SessionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SessionState.add_member(:pending, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PENDING", traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionState.add_member(:expired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPIRED", traits: {"smithy.api#enumValue" => "EXPIRED"}))
    SharedImagePermissions.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "sharedAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SharedImagePermissions.add_member(:image_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePermissions, name: "imagePermissions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    SharedImagePermissions.type = Types::SharedImagePermissions
    SharedImagePermissionsList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SharedImagePermissions, name: "member"))
    Stack.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    Stack.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    Stack.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    Stack.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    Stack.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Stack.add_member(:storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorList, name: "StorageConnectors"))
    Stack.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectURL, name: "RedirectURL"))
    Stack.add_member(:feedback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackURL, name: "FeedbackURL"))
    Stack.add_member(:stack_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: StackErrors, name: "StackErrors"))
    Stack.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingList, name: "UserSettings"))
    Stack.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettingsResponse, name: "ApplicationSettings"))
    Stack.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    Stack.add_member(:embed_host_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: EmbedHostDomains, name: "EmbedHostDomains"))
    Stack.add_member(:streaming_experience_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingExperienceSettings, name: "StreamingExperienceSettings"))
    Stack.type = Types::Stack
    StackAttribute.add_member(:storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONNECTORS", traits: {"smithy.api#enumValue" => "STORAGE_CONNECTORS"}))
    StackAttribute.add_member(:storage_connector_homefolders, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONNECTOR_HOMEFOLDERS", traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_HOMEFOLDERS"}))
    StackAttribute.add_member(:storage_connector_google_drive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONNECTOR_GOOGLE_DRIVE", traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_GOOGLE_DRIVE"}))
    StackAttribute.add_member(:storage_connector_one_drive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONNECTOR_ONE_DRIVE", traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_ONE_DRIVE"}))
    StackAttribute.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDIRECT_URL", traits: {"smithy.api#enumValue" => "REDIRECT_URL"}))
    StackAttribute.add_member(:feedback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FEEDBACK_URL", traits: {"smithy.api#enumValue" => "FEEDBACK_URL"}))
    StackAttribute.add_member(:theme_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "THEME_NAME", traits: {"smithy.api#enumValue" => "THEME_NAME"}))
    StackAttribute.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_SETTINGS", traits: {"smithy.api#enumValue" => "USER_SETTINGS"}))
    StackAttribute.add_member(:embed_host_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EMBED_HOST_DOMAINS", traits: {"smithy.api#enumValue" => "EMBED_HOST_DOMAINS"}))
    StackAttribute.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_ROLE_ARN", traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    StackAttribute.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_ENDPOINTS", traits: {"smithy.api#enumValue" => "ACCESS_ENDPOINTS"}))
    StackAttribute.add_member(:streaming_experience_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STREAMING_EXPERIENCE_SETTINGS", traits: {"smithy.api#enumValue" => "STREAMING_EXPERIENCE_SETTINGS"}))
    StackAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackAttribute, name: "member"))
    StackError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StackErrorCode, name: "ErrorCode"))
    StackError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    StackError.type = Types::StackError
    StackErrorCode.add_member(:storage_connector_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STORAGE_CONNECTOR_ERROR", traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_ERROR"}))
    StackErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    StackErrors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StackError, name: "member"))
    StackList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Stack, name: "member"))
    StartAppBlockBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartAppBlockBuilderRequest.type = Types::StartAppBlockBuilderRequest
    StartAppBlockBuilderResult.add_member(:app_block_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilder, name: "AppBlockBuilder"))
    StartAppBlockBuilderResult.type = Types::StartAppBlockBuilderResult
    StartFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartFleetRequest.type = Types::StartFleetRequest
    StartFleetResult.type = Types::StartFleetResult
    StartImageBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartImageBuilderRequest.add_member(:appstream_agent_version, ::Smithy::Schema::Shapes::MemberShape.new(target: AppstreamAgentVersion, name: "AppstreamAgentVersion"))
    StartImageBuilderRequest.type = Types::StartImageBuilderRequest
    StartImageBuilderResult.add_member(:image_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilder, name: "ImageBuilder"))
    StartImageBuilderResult.type = Types::StartImageBuilderResult
    StopAppBlockBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopAppBlockBuilderRequest.type = Types::StopAppBlockBuilderRequest
    StopAppBlockBuilderResult.add_member(:app_block_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilder, name: "AppBlockBuilder"))
    StopAppBlockBuilderResult.type = Types::StopAppBlockBuilderResult
    StopFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopFleetRequest.type = Types::StopFleetRequest
    StopFleetResult.type = Types::StopFleetResult
    StopImageBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopImageBuilderRequest.type = Types::StopImageBuilderRequest
    StopImageBuilderResult.add_member(:image_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: ImageBuilder, name: "ImageBuilder"))
    StopImageBuilderResult.type = Types::StopImageBuilderResult
    StorageConnector.add_member(:connector_type, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorType, name: "ConnectorType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StorageConnector.add_member(:resource_identifier, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceIdentifier, name: "ResourceIdentifier"))
    StorageConnector.add_member(:domains, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "Domains"))
    StorageConnector.add_member(:domains_require_admin_consent, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainList, name: "DomainsRequireAdminConsent"))
    StorageConnector.type = Types::StorageConnector
    StorageConnectorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnector, name: "member"))
    StorageConnectorType.add_member(:homefolders, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOMEFOLDERS", traits: {"smithy.api#enumValue" => "HOMEFOLDERS"}))
    StorageConnectorType.add_member(:google_drive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GOOGLE_DRIVE", traits: {"smithy.api#enumValue" => "GOOGLE_DRIVE"}))
    StorageConnectorType.add_member(:one_drive, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ONE_DRIVE", traits: {"smithy.api#enumValue" => "ONE_DRIVE"}))
    StreamView.add_member(:app, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "APP", traits: {"smithy.api#enumValue" => "APP"}))
    StreamView.add_member(:desktop, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DESKTOP", traits: {"smithy.api#enumValue" => "DESKTOP"}))
    StreamingExperienceSettings.add_member(:preferred_protocol, ::Smithy::Schema::Shapes::MemberShape.new(target: PreferredProtocol, name: "PreferredProtocol"))
    StreamingExperienceSettings.type = Types::StreamingExperienceSettings
    StringList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    Theme.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName"))
    Theme.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeState, name: "State"))
    Theme.add_member(:theme_title_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeTitleText, name: "ThemeTitleText"))
    Theme.add_member(:theme_styling, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeStyling, name: "ThemeStyling"))
    Theme.add_member(:theme_footer_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLinks, name: "ThemeFooterLinks"))
    Theme.add_member(:theme_organization_logo_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThemeOrganizationLogoURL"))
    Theme.add_member(:theme_favicon_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ThemeFaviconURL"))
    Theme.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    Theme.type = Types::Theme
    ThemeAttribute.add_member(:footer_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FOOTER_LINKS", traits: {"smithy.api#enumValue" => "FOOTER_LINKS"}))
    ThemeAttributes.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeAttribute, name: "member"))
    ThemeFooterLink.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLinkDisplayName, name: "DisplayName"))
    ThemeFooterLink.add_member(:footer_link_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLinkURL, name: "FooterLinkURL"))
    ThemeFooterLink.type = Types::ThemeFooterLink
    ThemeFooterLinks.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLink, name: "member"))
    ThemeState.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    ThemeState.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    ThemeStyling.add_member(:light_blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LIGHT_BLUE", traits: {"smithy.api#enumValue" => "LIGHT_BLUE"}))
    ThemeStyling.add_member(:blue, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BLUE", traits: {"smithy.api#enumValue" => "BLUE"}))
    ThemeStyling.add_member(:pink, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PINK", traits: {"smithy.api#enumValue" => "PINK"}))
    ThemeStyling.add_member(:red, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RED", traits: {"smithy.api#enumValue" => "RED"}))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAppBlockBuilderRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateAppBlockBuilderRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateAppBlockBuilderRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateAppBlockBuilderRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    UpdateAppBlockBuilderRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType"))
    UpdateAppBlockBuilderRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    UpdateAppBlockBuilderRequest.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    UpdateAppBlockBuilderRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    UpdateAppBlockBuilderRequest.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    UpdateAppBlockBuilderRequest.add_member(:attributes_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilderAttributes, name: "AttributesToDelete"))
    UpdateAppBlockBuilderRequest.type = Types::UpdateAppBlockBuilderRequest
    UpdateAppBlockBuilderResult.add_member(:app_block_builder, ::Smithy::Schema::Shapes::MemberShape.new(target: AppBlockBuilder, name: "AppBlockBuilder"))
    UpdateAppBlockBuilderResult.type = Types::UpdateAppBlockBuilderResult
    UpdateApplicationRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateApplicationRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateApplicationRequest.add_member(:icon_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "IconS3Location"))
    UpdateApplicationRequest.add_member(:launch_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchPath"))
    UpdateApplicationRequest.add_member(:working_directory, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "WorkingDirectory"))
    UpdateApplicationRequest.add_member(:launch_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LaunchParameters"))
    UpdateApplicationRequest.add_member(:app_block_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "AppBlockArn"))
    UpdateApplicationRequest.add_member(:attributes_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationAttributes, name: "AttributesToDelete"))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResult.add_member(:application, ::Smithy::Schema::Shapes::MemberShape.new(target: Application, name: "Application"))
    UpdateApplicationResult.type = Types::UpdateApplicationResult
    UpdateDirectoryConfigRequest.add_member(:directory_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryName, name: "DirectoryName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, ::Smithy::Schema::Shapes::MemberShape.new(target: OrganizationalUnitDistinguishedNamesList, name: "OrganizationalUnitDistinguishedNames"))
    UpdateDirectoryConfigRequest.add_member(:service_account_credentials, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceAccountCredentials, name: "ServiceAccountCredentials"))
    UpdateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, ::Smithy::Schema::Shapes::MemberShape.new(target: CertificateBasedAuthProperties, name: "CertificateBasedAuthProperties"))
    UpdateDirectoryConfigRequest.type = Types::UpdateDirectoryConfigRequest
    UpdateDirectoryConfigResult.add_member(:directory_config, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectoryConfig, name: "DirectoryConfig"))
    UpdateDirectoryConfigResult.type = Types::UpdateDirectoryConfigResult
    UpdateEntitlementRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateEntitlementRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateEntitlementRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateEntitlementRequest.add_member(:app_visibility, ::Smithy::Schema::Shapes::MemberShape.new(target: AppVisibility, name: "AppVisibility"))
    UpdateEntitlementRequest.add_member(:attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: EntitlementAttributeList, name: "Attributes"))
    UpdateEntitlementRequest.type = Types::UpdateEntitlementRequest
    UpdateEntitlementResult.add_member(:entitlement, ::Smithy::Schema::Shapes::MemberShape.new(target: Entitlement, name: "Entitlement"))
    UpdateEntitlementResult.type = Types::UpdateEntitlementResult
    UpdateFleetRequest.add_member(:image_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ImageName"))
    UpdateFleetRequest.add_member(:image_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ImageArn"))
    UpdateFleetRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateFleetRequest.add_member(:instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "InstanceType"))
    UpdateFleetRequest.add_member(:compute_capacity, ::Smithy::Schema::Shapes::MemberShape.new(target: ComputeCapacity, name: "ComputeCapacity"))
    UpdateFleetRequest.add_member(:vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfig, name: "VpcConfig"))
    UpdateFleetRequest.add_member(:max_user_duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxUserDurationInSeconds"))
    UpdateFleetRequest.add_member(:disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "DisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:delete_vpc_config, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteVpcConfig", traits: {"smithy.api#deprecated" => {}}))
    UpdateFleetRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateFleetRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateFleetRequest.add_member(:enable_default_internet_access, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDefaultInternetAccess"))
    UpdateFleetRequest.add_member(:domain_join_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainJoinInfo, name: "DomainJoinInfo"))
    UpdateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "IdleDisconnectTimeoutInSeconds"))
    UpdateFleetRequest.add_member(:attributes_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: FleetAttributes, name: "AttributesToDelete"))
    UpdateFleetRequest.add_member(:iam_role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "IamRoleArn"))
    UpdateFleetRequest.add_member(:stream_view, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamView, name: "StreamView"))
    UpdateFleetRequest.add_member(:platform, ::Smithy::Schema::Shapes::MemberShape.new(target: PlatformType, name: "Platform"))
    UpdateFleetRequest.add_member(:max_concurrent_sessions, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxConcurrentSessions"))
    UpdateFleetRequest.add_member(:usb_device_filter_strings, ::Smithy::Schema::Shapes::MemberShape.new(target: UsbDeviceFilterStrings, name: "UsbDeviceFilterStrings"))
    UpdateFleetRequest.add_member(:session_script_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "SessionScriptS3Location"))
    UpdateFleetRequest.add_member(:max_sessions_per_instance, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaxSessionsPerInstance"))
    UpdateFleetRequest.type = Types::UpdateFleetRequest
    UpdateFleetResult.add_member(:fleet, ::Smithy::Schema::Shapes::MemberShape.new(target: Fleet, name: "Fleet"))
    UpdateFleetResult.type = Types::UpdateFleetResult
    UpdateImagePermissionsRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.add_member(:shared_account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "SharedAccountId", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.add_member(:image_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ImagePermissions, name: "ImagePermissions", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.type = Types::UpdateImagePermissionsRequest
    UpdateImagePermissionsResult.type = Types::UpdateImagePermissionsResult
    UpdateStackRequest.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DisplayName, name: "DisplayName"))
    UpdateStackRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateStackRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateStackRequest.add_member(:storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageConnectorList, name: "StorageConnectors"))
    UpdateStackRequest.add_member(:delete_storage_connectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "DeleteStorageConnectors", traits: {"smithy.api#deprecated" => {}}))
    UpdateStackRequest.add_member(:redirect_url, ::Smithy::Schema::Shapes::MemberShape.new(target: RedirectURL, name: "RedirectURL"))
    UpdateStackRequest.add_member(:feedback_url, ::Smithy::Schema::Shapes::MemberShape.new(target: FeedbackURL, name: "FeedbackURL"))
    UpdateStackRequest.add_member(:attributes_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: StackAttributes, name: "AttributesToDelete"))
    UpdateStackRequest.add_member(:user_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSettingList, name: "UserSettings"))
    UpdateStackRequest.add_member(:application_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationSettings, name: "ApplicationSettings"))
    UpdateStackRequest.add_member(:access_endpoints, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessEndpointList, name: "AccessEndpoints"))
    UpdateStackRequest.add_member(:embed_host_domains, ::Smithy::Schema::Shapes::MemberShape.new(target: EmbedHostDomains, name: "EmbedHostDomains"))
    UpdateStackRequest.add_member(:streaming_experience_settings, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamingExperienceSettings, name: "StreamingExperienceSettings"))
    UpdateStackRequest.type = Types::UpdateStackRequest
    UpdateStackResult.add_member(:stack, ::Smithy::Schema::Shapes::MemberShape.new(target: Stack, name: "Stack"))
    UpdateStackResult.type = Types::UpdateStackResult
    UpdateThemeForStackRequest.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UpdateThemeForStackRequest.add_member(:footer_links, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeFooterLinks, name: "FooterLinks"))
    UpdateThemeForStackRequest.add_member(:title_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeTitleText, name: "TitleText"))
    UpdateThemeForStackRequest.add_member(:theme_styling, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeStyling, name: "ThemeStyling"))
    UpdateThemeForStackRequest.add_member(:organization_logo_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "OrganizationLogoS3Location"))
    UpdateThemeForStackRequest.add_member(:favicon_s3_location, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "FaviconS3Location"))
    UpdateThemeForStackRequest.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeState, name: "State"))
    UpdateThemeForStackRequest.add_member(:attributes_to_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: ThemeAttributes, name: "AttributesToDelete"))
    UpdateThemeForStackRequest.type = Types::UpdateThemeForStackRequest
    UpdateThemeForStackResult.add_member(:theme, ::Smithy::Schema::Shapes::MemberShape.new(target: Theme, name: "Theme"))
    UpdateThemeForStackResult.type = Types::UpdateThemeForStackResult
    UsageReportExecutionErrorCode.add_member(:resource_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_NOT_FOUND", traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    UsageReportExecutionErrorCode.add_member(:access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    UsageReportExecutionErrorCode.add_member(:internal_service_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_SERVICE_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    UsageReportSchedule.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    UsageReportSubscription.add_member(:s3_bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3BucketName"))
    UsageReportSubscription.add_member(:schedule, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageReportSchedule, name: "Schedule"))
    UsageReportSubscription.add_member(:last_generated_report_date, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastGeneratedReportDate"))
    UsageReportSubscription.add_member(:subscription_errors, ::Smithy::Schema::Shapes::MemberShape.new(target: LastReportGenerationExecutionErrors, name: "SubscriptionErrors"))
    UsageReportSubscription.type = Types::UsageReportSubscription
    UsageReportSubscriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsageReportSubscription, name: "member"))
    UsbDeviceFilterStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UsbDeviceFilterString, name: "member"))
    User.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    User.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName"))
    User.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Enabled"))
    User.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Status"))
    User.add_member(:first_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValue, name: "FirstName"))
    User.add_member(:last_name, ::Smithy::Schema::Shapes::MemberShape.new(target: UserAttributeValue, name: "LastName"))
    User.add_member(:created_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedTime"))
    User.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    User.type = Types::User
    UserList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: User, name: "member"))
    UserSetting.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UserSetting.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UserSetting.add_member(:maximum_length, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "MaximumLength"))
    UserSetting.type = Types::UserSetting
    UserSettingList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserSetting, name: "member"))
    UserStackAssociation.add_member(:stack_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StackName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:user_name, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "UserName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:authentication_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationType, name: "AuthenticationType", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:send_email_notification, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "SendEmailNotification"))
    UserStackAssociation.type = Types::UserStackAssociation
    UserStackAssociationError.add_member(:user_stack_association, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociation, name: "UserStackAssociation"))
    UserStackAssociationError.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationErrorCode, name: "ErrorCode"))
    UserStackAssociationError.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ErrorMessage"))
    UserStackAssociationError.type = Types::UserStackAssociationError
    UserStackAssociationErrorCode.add_member(:stack_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STACK_NOT_FOUND", traits: {"smithy.api#enumValue" => "STACK_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:user_name_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER_NAME_NOT_FOUND", traits: {"smithy.api#enumValue" => "USER_NAME_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:directory_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DIRECTORY_NOT_FOUND", traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:internal_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INTERNAL_ERROR", traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    UserStackAssociationErrorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociationError, name: "member"))
    UserStackAssociationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: UserStackAssociation, name: "member"))
    VisibilityType.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    VisibilityType.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    VisibilityType.add_member(:shared, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SHARED", traits: {"smithy.api#enumValue" => "SHARED"}))
    VpcConfig.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds"))
    VpcConfig.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "SecurityGroupIds"))
    VpcConfig.type = Types::VpcConfig

    PhotonAdminProxyService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appstream#PhotonAdminProxyService"
      service.name = "PhotonAdminProxyService"
      service.version = "2016-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "AppStream", "arnNamespace" => "appstream", "cloudFormationName" => "AppStream", "cloudTrailEventSource" => "appstream.amazonaws.com", "endpointPrefix" => "appstream2"}, "aws.auth#sigv4" => {"name" => "appstream"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon AppStream"}
      service.add_operation(:associate_app_block_builder_app_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateAppBlockBuilderAppBlock"
        operation.name = "AssociateAppBlockBuilderAppBlock"
        operation.input = AssociateAppBlockBuilderAppBlockRequest
        operation.output = AssociateAppBlockBuilderAppBlockResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidParameterCombinationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_application_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateApplicationFleet"
        operation.name = "AssociateApplicationFleet"
        operation.input = AssociateApplicationFleetRequest
        operation.output = AssociateApplicationFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidParameterCombinationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_application_to_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateApplicationToEntitlement"
        operation.name = "AssociateApplicationToEntitlement"
        operation.input = AssociateApplicationToEntitlementRequest
        operation.output = AssociateApplicationToEntitlementResult
        operation.errors << EntitlementNotFoundException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:associate_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateFleet"
        operation.name = "AssociateFleet"
        operation.input = AssociateFleetRequest
        operation.output = AssociateFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_user_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#BatchAssociateUserStack"
        operation.name = "BatchAssociateUserStack"
        operation.input = BatchAssociateUserStackRequest
        operation.output = BatchAssociateUserStackResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_user_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#BatchDisassociateUserStack"
        operation.name = "BatchDisassociateUserStack"
        operation.input = BatchDisassociateUserStackRequest
        operation.output = BatchDisassociateUserStackResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:copy_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CopyImage"
        operation.name = "CopyImage"
        operation.input = CopyImageRequest
        operation.output = CopyImageResponse
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_app_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlock"
        operation.name = "CreateAppBlock"
        operation.input = CreateAppBlockRequest
        operation.output = CreateAppBlockResult
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:create_app_block_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlockBuilder"
        operation.name = "CreateAppBlockBuilder"
        operation.input = CreateAppBlockBuilderRequest
        operation.output = CreateAppBlockBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_app_block_builder_streaming_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlockBuilderStreamingURL"
        operation.name = "CreateAppBlockBuilderStreamingURL"
        operation.input = CreateAppBlockBuilderStreamingURLRequest
        operation.output = CreateAppBlockBuilderStreamingURLResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = CreateApplicationRequest
        operation.output = CreateApplicationResult
        operation.errors << ConcurrentModificationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_directory_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateDirectoryConfig"
        operation.name = "CreateDirectoryConfig"
        operation.input = CreateDirectoryConfigRequest
        operation.output = CreateDirectoryConfigResult
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateEntitlement"
        operation.name = "CreateEntitlement"
        operation.input = CreateEntitlementRequest
        operation.output = CreateEntitlementResult
        operation.errors << EntitlementAlreadyExistsException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = CreateFleetRequest
        operation.output = CreateFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_image_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateImageBuilder"
        operation.name = "CreateImageBuilder"
        operation.input = CreateImageBuilderRequest
        operation.output = CreateImageBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_image_builder_streaming_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateImageBuilderStreamingURL"
        operation.name = "CreateImageBuilderStreamingURL"
        operation.input = CreateImageBuilderStreamingURLRequest
        operation.output = CreateImageBuilderStreamingURLResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateStack"
        operation.name = "CreateStack"
        operation.input = CreateStackRequest
        operation.output = CreateStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_streaming_url, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateStreamingURL"
        operation.name = "CreateStreamingURL"
        operation.input = CreateStreamingURLRequest
        operation.output = CreateStreamingURLResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_theme_for_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateThemeForStack"
        operation.name = "CreateThemeForStack"
        operation.input = CreateThemeForStackRequest
        operation.output = CreateThemeForStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_updated_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUpdatedImage"
        operation.name = "CreateUpdatedImage"
        operation.input = CreateUpdatedImageRequest
        operation.output = CreateUpdatedImageResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:create_usage_report_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUsageReportSubscription"
        operation.name = "CreateUsageReportSubscription"
        operation.input = CreateUsageReportSubscriptionRequest
        operation.output = CreateUsageReportSubscriptionResult
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.traits = {}
      end)
      service.add_operation(:create_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUser"
        operation.name = "CreateUser"
        operation.input = CreateUserRequest
        operation.output = CreateUserResult
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceAlreadyExistsException
        operation.traits = {}
      end)
      service.add_operation(:delete_app_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteAppBlock"
        operation.name = "DeleteAppBlock"
        operation.input = DeleteAppBlockRequest
        operation.output = DeleteAppBlockResult
        operation.errors << ConcurrentModificationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_app_block_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteAppBlockBuilder"
        operation.name = "DeleteAppBlockBuilder"
        operation.input = DeleteAppBlockBuilderRequest
        operation.output = DeleteAppBlockBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = DeleteApplicationRequest
        operation.output = DeleteApplicationResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_directory_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteDirectoryConfig"
        operation.name = "DeleteDirectoryConfig"
        operation.input = DeleteDirectoryConfigRequest
        operation.output = DeleteDirectoryConfigResult
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteEntitlement"
        operation.name = "DeleteEntitlement"
        operation.input = DeleteEntitlementRequest
        operation.output = DeleteEntitlementResult
        operation.errors << ConcurrentModificationException
        operation.errors << EntitlementNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = DeleteFleetRequest
        operation.output = DeleteFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_image, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImage"
        operation.name = "DeleteImage"
        operation.input = DeleteImageRequest
        operation.output = DeleteImageResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_image_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImageBuilder"
        operation.name = "DeleteImageBuilder"
        operation.input = DeleteImageBuilderRequest
        operation.output = DeleteImageBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_image_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImagePermissions"
        operation.name = "DeleteImagePermissions"
        operation.input = DeleteImagePermissionsRequest
        operation.output = DeleteImagePermissionsResult
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteStack"
        operation.name = "DeleteStack"
        operation.input = DeleteStackRequest
        operation.output = DeleteStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_theme_for_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteThemeForStack"
        operation.name = "DeleteThemeForStack"
        operation.input = DeleteThemeForStackRequest
        operation.output = DeleteThemeForStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_usage_report_subscription, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteUsageReportSubscription"
        operation.name = "DeleteUsageReportSubscription"
        operation.input = DeleteUsageReportSubscriptionRequest
        operation.output = DeleteUsageReportSubscriptionResult
        operation.errors << InvalidAccountStatusException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:delete_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = DeleteUserRequest
        operation.output = DeleteUserResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_app_block_builder_app_block_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociations"
        operation.name = "DescribeAppBlockBuilderAppBlockAssociations"
        operation.input = DescribeAppBlockBuilderAppBlockAssociationsRequest
        operation.output = DescribeAppBlockBuilderAppBlockAssociationsResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAppBlockBuilderAppBlockAssociations.new
      end)
      service.add_operation(:describe_app_block_builders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlockBuilders"
        operation.name = "DescribeAppBlockBuilders"
        operation.input = DescribeAppBlockBuildersRequest
        operation.output = DescribeAppBlockBuildersResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAppBlockBuilders.new
      end)
      service.add_operation(:describe_app_blocks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlocks"
        operation.name = "DescribeAppBlocks"
        operation.input = DescribeAppBlocksRequest
        operation.output = DescribeAppBlocksResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_application_fleet_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeApplicationFleetAssociations"
        operation.name = "DescribeApplicationFleetAssociations"
        operation.input = DescribeApplicationFleetAssociationsRequest
        operation.output = DescribeApplicationFleetAssociationsResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:describe_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeApplications"
        operation.name = "DescribeApplications"
        operation.input = DescribeApplicationsRequest
        operation.output = DescribeApplicationsResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_directory_configs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeDirectoryConfigs"
        operation.name = "DescribeDirectoryConfigs"
        operation.input = DescribeDirectoryConfigsRequest
        operation.output = DescribeDirectoryConfigsResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_entitlements, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeEntitlements"
        operation.name = "DescribeEntitlements"
        operation.input = DescribeEntitlementsRequest
        operation.output = DescribeEntitlementsResult
        operation.errors << EntitlementNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeFleets"
        operation.name = "DescribeFleets"
        operation.input = DescribeFleetsRequest
        operation.output = DescribeFleetsResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_image_builders, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImageBuilders"
        operation.name = "DescribeImageBuilders"
        operation.input = DescribeImageBuildersRequest
        operation.output = DescribeImageBuildersResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_image_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImagePermissions"
        operation.name = "DescribeImagePermissions"
        operation.input = DescribeImagePermissionsRequest
        operation.output = DescribeImagePermissionsResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImagePermissions.new
      end)
      service.add_operation(:describe_images, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = DescribeImagesRequest
        operation.output = DescribeImagesResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_sessions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeSessions"
        operation.name = "DescribeSessions"
        operation.input = DescribeSessionsRequest
        operation.output = DescribeSessionsResult
        operation.errors << InvalidParameterCombinationException
        operation.traits = {}
      end)
      service.add_operation(:describe_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeStacks"
        operation.name = "DescribeStacks"
        operation.input = DescribeStacksRequest
        operation.output = DescribeStacksResult
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeStacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:describe_theme_for_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeThemeForStack"
        operation.name = "DescribeThemeForStack"
        operation.input = DescribeThemeForStackRequest
        operation.output = DescribeThemeForStackResult
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_usage_report_subscriptions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUsageReportSubscriptions"
        operation.name = "DescribeUsageReportSubscriptions"
        operation.input = DescribeUsageReportSubscriptionsRequest
        operation.output = DescribeUsageReportSubscriptionsResult
        operation.errors << InvalidAccountStatusException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_user_stack_associations, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUserStackAssociations"
        operation.name = "DescribeUserStackAssociations"
        operation.input = DescribeUserStackAssociationsRequest
        operation.output = DescribeUserStackAssociationsResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:describe_users, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = DescribeUsersRequest
        operation.output = DescribeUsersResult
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisableUser"
        operation.name = "DisableUser"
        operation.input = DisableUserRequest
        operation.output = DisableUserResult
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_app_block_builder_app_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlock"
        operation.name = "DisassociateAppBlockBuilderAppBlock"
        operation.input = DisassociateAppBlockBuilderAppBlockRequest
        operation.output = DisassociateAppBlockBuilderAppBlockResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_application_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateApplicationFleet"
        operation.name = "DisassociateApplicationFleet"
        operation.input = DisassociateApplicationFleetRequest
        operation.output = DisassociateApplicationFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidParameterCombinationException
        operation.errors << OperationNotPermittedException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_application_from_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateApplicationFromEntitlement"
        operation.name = "DisassociateApplicationFromEntitlement"
        operation.input = DisassociateApplicationFromEntitlementRequest
        operation.output = DisassociateApplicationFromEntitlementResult
        operation.errors << EntitlementNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:disassociate_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateFleet"
        operation.name = "DisassociateFleet"
        operation.input = DisassociateFleetRequest
        operation.output = DisassociateFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:enable_user, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#EnableUser"
        operation.name = "EnableUser"
        operation.input = EnableUserRequest
        operation.output = EnableUserResult
        operation.errors << InvalidAccountStatusException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:expire_session, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ExpireSession"
        operation.name = "ExpireSession"
        operation.input = ExpireSessionRequest
        operation.output = ExpireSessionResult
        operation.traits = {}
      end)
      service.add_operation(:list_associated_fleets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListAssociatedFleets"
        operation.name = "ListAssociatedFleets"
        operation.input = ListAssociatedFleetsRequest
        operation.output = ListAssociatedFleetsResult
        operation.traits = {}
      end)
      service.add_operation(:list_associated_stacks, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListAssociatedStacks"
        operation.name = "ListAssociatedStacks"
        operation.input = ListAssociatedStacksRequest
        operation.output = ListAssociatedStacksResult
        operation.traits = {}
      end)
      service.add_operation(:list_entitled_applications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListEntitledApplications"
        operation.name = "ListEntitledApplications"
        operation.input = ListEntitledApplicationsRequest
        operation.output = ListEntitledApplicationsResult
        operation.errors << EntitlementNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_app_block_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartAppBlockBuilder"
        operation.name = "StartAppBlockBuilder"
        operation.input = StartAppBlockBuilderRequest
        operation.output = StartAppBlockBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartFleet"
        operation.name = "StartFleet"
        operation.input = StartFleetRequest
        operation.output = StartFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:start_image_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartImageBuilder"
        operation.name = "StartImageBuilder"
        operation.input = StartImageBuilderRequest
        operation.output = StartImageBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_app_block_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopAppBlockBuilder"
        operation.name = "StopAppBlockBuilder"
        operation.input = StopAppBlockBuilderRequest
        operation.output = StopAppBlockBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopFleet"
        operation.name = "StopFleet"
        operation.input = StopFleetRequest
        operation.output = StopFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_image_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopImageBuilder"
        operation.name = "StopImageBuilder"
        operation.input = StopImageBuilderRequest
        operation.output = StopImageBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidAccountStatusException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_app_block_builder, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateAppBlockBuilder"
        operation.name = "UpdateAppBlockBuilder"
        operation.input = UpdateAppBlockBuilderRequest
        operation.output = UpdateAppBlockBuilderResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_application, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = UpdateApplicationRequest
        operation.output = UpdateApplicationResult
        operation.errors << ConcurrentModificationException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_directory_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateDirectoryConfig"
        operation.name = "UpdateDirectoryConfig"
        operation.input = UpdateDirectoryConfigRequest
        operation.output = UpdateDirectoryConfigResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidRoleException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_entitlement, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateEntitlement"
        operation.name = "UpdateEntitlement"
        operation.input = UpdateEntitlementRequest
        operation.output = UpdateEntitlementResult
        operation.errors << ConcurrentModificationException
        operation.errors << EntitlementNotFoundException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_fleet, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = UpdateFleetRequest
        operation.output = UpdateFleetResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << RequestLimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_image_permissions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateImagePermissions"
        operation.name = "UpdateImagePermissions"
        operation.input = UpdateImagePermissionsRequest
        operation.output = UpdateImagePermissionsResult
        operation.errors << LimitExceededException
        operation.errors << ResourceNotAvailableException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateStack"
        operation.name = "UpdateStack"
        operation.input = UpdateStackRequest
        operation.output = UpdateStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << IncompatibleImageException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << InvalidRoleException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_theme_for_stack, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateThemeForStack"
        operation.name = "UpdateThemeForStack"
        operation.input = UpdateThemeForStackRequest
        operation.output = UpdateThemeForStackResult
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidAccountStatusException
        operation.errors << InvalidParameterCombinationException
        operation.errors << LimitExceededException
        operation.errors << OperationNotPermittedException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
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
