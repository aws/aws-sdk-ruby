# frozen_string_literal: true

# This is generated code!

module Aws::AppStream
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AccessEndpoint', name: 'AccessEndpoint')
    AccessEndpointList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AccessEndpointList', name: 'AccessEndpointList', traits: {"smithy.api#length" => {"min" => 1, "max" => 4}})
    AccessEndpointType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AccessEndpointType', name: 'AccessEndpointType')
    AccountName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#AccountName', name: 'AccountName', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#sensitive" => {}})
    AccountPassword = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#AccountPassword', name: 'AccountPassword', traits: {"smithy.api#length" => {"min" => 1, "max" => 127}, "smithy.api#sensitive" => {}})
    Action = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#Action', name: 'Action')
    AppBlock = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AppBlock', name: 'AppBlock')
    AppBlockBuilder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AppBlockBuilder', name: 'AppBlockBuilder')
    AppBlockBuilderAppBlockAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderAppBlockAssociation', name: 'AppBlockBuilderAppBlockAssociation')
    AppBlockBuilderAppBlockAssociationsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderAppBlockAssociationsList', name: 'AppBlockBuilderAppBlockAssociationsList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    AppBlockBuilderAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderAttribute', name: 'AppBlockBuilderAttribute')
    AppBlockBuilderAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderAttributes', name: 'AppBlockBuilderAttributes')
    AppBlockBuilderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderList', name: 'AppBlockBuilderList')
    AppBlockBuilderPlatformType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderPlatformType', name: 'AppBlockBuilderPlatformType')
    AppBlockBuilderState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderState', name: 'AppBlockBuilderState')
    AppBlockBuilderStateChangeReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderStateChangeReason', name: 'AppBlockBuilderStateChangeReason')
    AppBlockBuilderStateChangeReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppBlockBuilderStateChangeReasonCode', name: 'AppBlockBuilderStateChangeReasonCode')
    AppBlockState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppBlockState', name: 'AppBlockState')
    AppBlocks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AppBlocks', name: 'AppBlocks')
    AppVisibility = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AppVisibility', name: 'AppVisibility')
    Application = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Application', name: 'Application')
    ApplicationAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ApplicationAttribute', name: 'ApplicationAttribute')
    ApplicationAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ApplicationAttributes', name: 'ApplicationAttributes', traits: {"smithy.api#length" => {"min" => 0, "max" => 2}})
    ApplicationFleetAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ApplicationFleetAssociation', name: 'ApplicationFleetAssociation')
    ApplicationFleetAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ApplicationFleetAssociationList', name: 'ApplicationFleetAssociationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    ApplicationSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ApplicationSettings', name: 'ApplicationSettings')
    ApplicationSettingsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ApplicationSettingsResponse', name: 'ApplicationSettingsResponse')
    Applications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#Applications', name: 'Applications')
    AppstreamAgentVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#AppstreamAgentVersion', name: 'AppstreamAgentVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}})
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#Arn', name: 'Arn', traits: {"smithy.api#pattern" => "^arn:aws(?:\\-cn|\\-iso\\-b|\\-iso|\\-us\\-gov)?:[A-Za-z0-9][A-Za-z0-9_/.-]{0,62}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9_/.-]{0,63}:[A-Za-z0-9][A-Za-z0-9:_/+=,@.\\\\-]{0,1023}$"})
    ArnList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ArnList', name: 'ArnList')
    AssociateAppBlockBuilderAppBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateAppBlockBuilderAppBlockRequest', name: 'AssociateAppBlockBuilderAppBlockRequest')
    AssociateAppBlockBuilderAppBlockResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateAppBlockBuilderAppBlockResult', name: 'AssociateAppBlockBuilderAppBlockResult')
    AssociateApplicationFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateApplicationFleetRequest', name: 'AssociateApplicationFleetRequest')
    AssociateApplicationFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateApplicationFleetResult', name: 'AssociateApplicationFleetResult')
    AssociateApplicationToEntitlementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateApplicationToEntitlementRequest', name: 'AssociateApplicationToEntitlementRequest')
    AssociateApplicationToEntitlementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateApplicationToEntitlementResult', name: 'AssociateApplicationToEntitlementResult')
    AssociateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateFleetRequest', name: 'AssociateFleetRequest')
    AssociateFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#AssociateFleetResult', name: 'AssociateFleetResult')
    AuthenticationType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#AuthenticationType', name: 'AuthenticationType')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#pattern" => "^\\d+$"})
    AwsAccountIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#AwsAccountIdList', name: 'AwsAccountIdList', traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    BatchAssociateUserStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#BatchAssociateUserStackRequest', name: 'BatchAssociateUserStackRequest')
    BatchAssociateUserStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#BatchAssociateUserStackResult', name: 'BatchAssociateUserStackResult')
    BatchDisassociateUserStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#BatchDisassociateUserStackRequest', name: 'BatchDisassociateUserStackRequest')
    BatchDisassociateUserStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#BatchDisassociateUserStackResult', name: 'BatchDisassociateUserStackResult')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appstream#Boolean', name: 'Boolean')
    BooleanObject = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.appstream#BooleanObject', name: 'BooleanObject')
    CertificateBasedAuthProperties = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CertificateBasedAuthProperties', name: 'CertificateBasedAuthProperties')
    CertificateBasedAuthStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#CertificateBasedAuthStatus', name: 'CertificateBasedAuthStatus')
    ComputeCapacity = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ComputeCapacity', name: 'ComputeCapacity')
    ComputeCapacityStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ComputeCapacityStatus', name: 'ComputeCapacityStatus')
    ConcurrentModificationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ConcurrentModificationException', name: 'ConcurrentModificationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    CopyImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CopyImageRequest', name: 'CopyImageRequest')
    CopyImageResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CopyImageResponse', name: 'CopyImageResponse')
    CreateAppBlockBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockBuilderRequest', name: 'CreateAppBlockBuilderRequest')
    CreateAppBlockBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockBuilderResult', name: 'CreateAppBlockBuilderResult')
    CreateAppBlockBuilderStreamingURLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockBuilderStreamingURLRequest', name: 'CreateAppBlockBuilderStreamingURLRequest')
    CreateAppBlockBuilderStreamingURLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockBuilderStreamingURLResult', name: 'CreateAppBlockBuilderStreamingURLResult')
    CreateAppBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockRequest', name: 'CreateAppBlockRequest')
    CreateAppBlockResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateAppBlockResult', name: 'CreateAppBlockResult')
    CreateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateApplicationRequest', name: 'CreateApplicationRequest')
    CreateApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateApplicationResult', name: 'CreateApplicationResult')
    CreateDirectoryConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateDirectoryConfigRequest', name: 'CreateDirectoryConfigRequest')
    CreateDirectoryConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateDirectoryConfigResult', name: 'CreateDirectoryConfigResult')
    CreateEntitlementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateEntitlementRequest', name: 'CreateEntitlementRequest')
    CreateEntitlementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateEntitlementResult', name: 'CreateEntitlementResult')
    CreateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateFleetRequest', name: 'CreateFleetRequest')
    CreateFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateFleetResult', name: 'CreateFleetResult')
    CreateImageBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateImageBuilderRequest', name: 'CreateImageBuilderRequest')
    CreateImageBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateImageBuilderResult', name: 'CreateImageBuilderResult')
    CreateImageBuilderStreamingURLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateImageBuilderStreamingURLRequest', name: 'CreateImageBuilderStreamingURLRequest')
    CreateImageBuilderStreamingURLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateImageBuilderStreamingURLResult', name: 'CreateImageBuilderStreamingURLResult')
    CreateStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateStackRequest', name: 'CreateStackRequest')
    CreateStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateStackResult', name: 'CreateStackResult')
    CreateStreamingURLRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateStreamingURLRequest', name: 'CreateStreamingURLRequest')
    CreateStreamingURLResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateStreamingURLResult', name: 'CreateStreamingURLResult')
    CreateThemeForStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateThemeForStackRequest', name: 'CreateThemeForStackRequest')
    CreateThemeForStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateThemeForStackResult', name: 'CreateThemeForStackResult')
    CreateUpdatedImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUpdatedImageRequest', name: 'CreateUpdatedImageRequest')
    CreateUpdatedImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUpdatedImageResult', name: 'CreateUpdatedImageResult')
    CreateUsageReportSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUsageReportSubscriptionRequest', name: 'CreateUsageReportSubscriptionRequest')
    CreateUsageReportSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUsageReportSubscriptionResult', name: 'CreateUsageReportSubscriptionResult')
    CreateUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUserRequest', name: 'CreateUserRequest')
    CreateUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#CreateUserResult', name: 'CreateUserResult')
    DeleteAppBlockBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteAppBlockBuilderRequest', name: 'DeleteAppBlockBuilderRequest')
    DeleteAppBlockBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteAppBlockBuilderResult', name: 'DeleteAppBlockBuilderResult')
    DeleteAppBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteAppBlockRequest', name: 'DeleteAppBlockRequest')
    DeleteAppBlockResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteAppBlockResult', name: 'DeleteAppBlockResult')
    DeleteApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteApplicationRequest', name: 'DeleteApplicationRequest')
    DeleteApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteApplicationResult', name: 'DeleteApplicationResult')
    DeleteDirectoryConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteDirectoryConfigRequest', name: 'DeleteDirectoryConfigRequest')
    DeleteDirectoryConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteDirectoryConfigResult', name: 'DeleteDirectoryConfigResult')
    DeleteEntitlementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteEntitlementRequest', name: 'DeleteEntitlementRequest')
    DeleteEntitlementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteEntitlementResult', name: 'DeleteEntitlementResult')
    DeleteFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteFleetRequest', name: 'DeleteFleetRequest')
    DeleteFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteFleetResult', name: 'DeleteFleetResult')
    DeleteImageBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImageBuilderRequest', name: 'DeleteImageBuilderRequest')
    DeleteImageBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImageBuilderResult', name: 'DeleteImageBuilderResult')
    DeleteImagePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImagePermissionsRequest', name: 'DeleteImagePermissionsRequest')
    DeleteImagePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImagePermissionsResult', name: 'DeleteImagePermissionsResult')
    DeleteImageRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImageRequest', name: 'DeleteImageRequest')
    DeleteImageResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteImageResult', name: 'DeleteImageResult')
    DeleteStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteStackRequest', name: 'DeleteStackRequest')
    DeleteStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteStackResult', name: 'DeleteStackResult')
    DeleteThemeForStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteThemeForStackRequest', name: 'DeleteThemeForStackRequest')
    DeleteThemeForStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteThemeForStackResult', name: 'DeleteThemeForStackResult')
    DeleteUsageReportSubscriptionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteUsageReportSubscriptionRequest', name: 'DeleteUsageReportSubscriptionRequest')
    DeleteUsageReportSubscriptionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteUsageReportSubscriptionResult', name: 'DeleteUsageReportSubscriptionResult')
    DeleteUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteUserRequest', name: 'DeleteUserRequest')
    DeleteUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DeleteUserResult', name: 'DeleteUserResult')
    DescribeAppBlockBuilderAppBlockAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociationsRequest', name: 'DescribeAppBlockBuilderAppBlockAssociationsRequest')
    DescribeAppBlockBuilderAppBlockAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociationsResult', name: 'DescribeAppBlockBuilderAppBlockAssociationsResult')
    DescribeAppBlockBuildersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlockBuildersRequest', name: 'DescribeAppBlockBuildersRequest')
    DescribeAppBlockBuildersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlockBuildersResult', name: 'DescribeAppBlockBuildersResult')
    DescribeAppBlocksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlocksRequest', name: 'DescribeAppBlocksRequest')
    DescribeAppBlocksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeAppBlocksResult', name: 'DescribeAppBlocksResult')
    DescribeApplicationFleetAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeApplicationFleetAssociationsRequest', name: 'DescribeApplicationFleetAssociationsRequest')
    DescribeApplicationFleetAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeApplicationFleetAssociationsResult', name: 'DescribeApplicationFleetAssociationsResult')
    DescribeApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeApplicationsRequest', name: 'DescribeApplicationsRequest')
    DescribeApplicationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeApplicationsResult', name: 'DescribeApplicationsResult')
    DescribeDirectoryConfigsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeDirectoryConfigsRequest', name: 'DescribeDirectoryConfigsRequest')
    DescribeDirectoryConfigsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeDirectoryConfigsResult', name: 'DescribeDirectoryConfigsResult')
    DescribeEntitlementsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeEntitlementsRequest', name: 'DescribeEntitlementsRequest')
    DescribeEntitlementsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeEntitlementsResult', name: 'DescribeEntitlementsResult')
    DescribeFleetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeFleetsRequest', name: 'DescribeFleetsRequest')
    DescribeFleetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeFleetsResult', name: 'DescribeFleetsResult')
    DescribeImageBuildersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImageBuildersRequest', name: 'DescribeImageBuildersRequest')
    DescribeImageBuildersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImageBuildersResult', name: 'DescribeImageBuildersResult')
    DescribeImagePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImagePermissionsRequest', name: 'DescribeImagePermissionsRequest')
    DescribeImagePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImagePermissionsResult', name: 'DescribeImagePermissionsResult')
    DescribeImagesMaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appstream#DescribeImagesMaxResults', name: 'DescribeImagesMaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 25}})
    DescribeImagesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImagesRequest', name: 'DescribeImagesRequest')
    DescribeImagesResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeImagesResult', name: 'DescribeImagesResult')
    DescribeSessionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeSessionsRequest', name: 'DescribeSessionsRequest')
    DescribeSessionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeSessionsResult', name: 'DescribeSessionsResult')
    DescribeStacksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeStacksRequest', name: 'DescribeStacksRequest')
    DescribeStacksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeStacksResult', name: 'DescribeStacksResult')
    DescribeThemeForStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeThemeForStackRequest', name: 'DescribeThemeForStackRequest')
    DescribeThemeForStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeThemeForStackResult', name: 'DescribeThemeForStackResult')
    DescribeUsageReportSubscriptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUsageReportSubscriptionsRequest', name: 'DescribeUsageReportSubscriptionsRequest')
    DescribeUsageReportSubscriptionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUsageReportSubscriptionsResult', name: 'DescribeUsageReportSubscriptionsResult')
    DescribeUserStackAssociationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUserStackAssociationsRequest', name: 'DescribeUserStackAssociationsRequest')
    DescribeUserStackAssociationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUserStackAssociationsResult', name: 'DescribeUserStackAssociationsResult')
    DescribeUsersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUsersRequest', name: 'DescribeUsersRequest')
    DescribeUsersResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DescribeUsersResult', name: 'DescribeUsersResult')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#Description', name: 'Description', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DirectoryConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DirectoryConfig', name: 'DirectoryConfig')
    DirectoryConfigList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#DirectoryConfigList', name: 'DirectoryConfigList')
    DirectoryName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#DirectoryName', name: 'DirectoryName')
    DirectoryNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#DirectoryNameList', name: 'DirectoryNameList')
    DisableUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisableUserRequest', name: 'DisableUserRequest')
    DisableUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisableUserResult', name: 'DisableUserResult')
    DisassociateAppBlockBuilderAppBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlockRequest', name: 'DisassociateAppBlockBuilderAppBlockRequest')
    DisassociateAppBlockBuilderAppBlockResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlockResult', name: 'DisassociateAppBlockBuilderAppBlockResult')
    DisassociateApplicationFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateApplicationFleetRequest', name: 'DisassociateApplicationFleetRequest')
    DisassociateApplicationFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateApplicationFleetResult', name: 'DisassociateApplicationFleetResult')
    DisassociateApplicationFromEntitlementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateApplicationFromEntitlementRequest', name: 'DisassociateApplicationFromEntitlementRequest')
    DisassociateApplicationFromEntitlementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateApplicationFromEntitlementResult', name: 'DisassociateApplicationFromEntitlementResult')
    DisassociateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateFleetRequest', name: 'DisassociateFleetRequest')
    DisassociateFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DisassociateFleetResult', name: 'DisassociateFleetResult')
    DisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#DisplayName', name: 'DisplayName', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    Domain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#Domain', name: 'Domain', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainJoinInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#DomainJoinInfo', name: 'DomainJoinInfo')
    DomainList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#DomainList', name: 'DomainList', traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    DynamicAppProvidersEnabled = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#DynamicAppProvidersEnabled', name: 'DynamicAppProvidersEnabled')
    EmbedHostDomain = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#EmbedHostDomain', name: 'EmbedHostDomain', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(?:[a-z0-9](?:[a-z0-9-]{0,61}[a-z0-9])?\\.)+[a-z0-9][a-z0-9-]{0,61}[a-z0-9]$"})
    EmbedHostDomains = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#EmbedHostDomains', name: 'EmbedHostDomains', traits: {"smithy.api#length" => {"min" => 1, "max" => 20}})
    EnableUserRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EnableUserRequest', name: 'EnableUserRequest')
    EnableUserResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EnableUserResult', name: 'EnableUserResult')
    EntitledApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EntitledApplication', name: 'EntitledApplication')
    EntitledApplicationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#EntitledApplicationList', name: 'EntitledApplicationList')
    Entitlement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Entitlement', name: 'Entitlement')
    EntitlementAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EntitlementAlreadyExistsException', name: 'EntitlementAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EntitlementAttribute = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EntitlementAttribute', name: 'EntitlementAttribute')
    EntitlementAttributeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#EntitlementAttributeList', name: 'EntitlementAttributeList', traits: {"smithy.api#length" => {"min" => 1}})
    EntitlementList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#EntitlementList', name: 'EntitlementList')
    EntitlementNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#EntitlementNotFoundException', name: 'EntitlementNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ErrorDetails', name: 'ErrorDetails')
    ErrorDetailsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ErrorDetailsList', name: 'ErrorDetailsList')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#ErrorMessage', name: 'ErrorMessage')
    ExpireSessionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ExpireSessionRequest', name: 'ExpireSessionRequest')
    ExpireSessionResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ExpireSessionResult', name: 'ExpireSessionResult')
    FeedbackURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#FeedbackURL', name: 'FeedbackURL', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    Fleet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Fleet', name: 'Fleet')
    FleetAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#FleetAttribute', name: 'FleetAttribute')
    FleetAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#FleetAttributes', name: 'FleetAttributes')
    FleetError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#FleetError', name: 'FleetError')
    FleetErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#FleetErrorCode', name: 'FleetErrorCode')
    FleetErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#FleetErrors', name: 'FleetErrors')
    FleetList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#FleetList', name: 'FleetList')
    FleetState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#FleetState', name: 'FleetState')
    FleetType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#FleetType', name: 'FleetType')
    Image = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Image', name: 'Image')
    ImageBuilder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ImageBuilder', name: 'ImageBuilder')
    ImageBuilderList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ImageBuilderList', name: 'ImageBuilderList')
    ImageBuilderState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ImageBuilderState', name: 'ImageBuilderState')
    ImageBuilderStateChangeReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ImageBuilderStateChangeReason', name: 'ImageBuilderStateChangeReason')
    ImageBuilderStateChangeReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ImageBuilderStateChangeReasonCode', name: 'ImageBuilderStateChangeReasonCode')
    ImageList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ImageList', name: 'ImageList')
    ImagePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ImagePermissions', name: 'ImagePermissions')
    ImageSharedWithOthers = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ImageSharedWithOthers', name: 'ImageSharedWithOthers')
    ImageState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ImageState', name: 'ImageState')
    ImageStateChangeReason = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ImageStateChangeReason', name: 'ImageStateChangeReason')
    ImageStateChangeReasonCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ImageStateChangeReasonCode', name: 'ImageStateChangeReasonCode')
    IncompatibleImageException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#IncompatibleImageException', name: 'IncompatibleImageException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appstream#Integer', name: 'Integer')
    InvalidAccountStatusException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#InvalidAccountStatusException', name: 'InvalidAccountStatusException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterCombinationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#InvalidParameterCombinationException', name: 'InvalidParameterCombinationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRoleException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#InvalidRoleException', name: 'InvalidRoleException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    LastReportGenerationExecutionError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#LastReportGenerationExecutionError', name: 'LastReportGenerationExecutionError')
    LastReportGenerationExecutionErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#LastReportGenerationExecutionErrors', name: 'LastReportGenerationExecutionErrors')
    LatestAppstreamAgentVersion = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#LatestAppstreamAgentVersion', name: 'LatestAppstreamAgentVersion')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListAssociatedFleetsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListAssociatedFleetsRequest', name: 'ListAssociatedFleetsRequest')
    ListAssociatedFleetsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListAssociatedFleetsResult', name: 'ListAssociatedFleetsResult')
    ListAssociatedStacksRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListAssociatedStacksRequest', name: 'ListAssociatedStacksRequest')
    ListAssociatedStacksResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListAssociatedStacksResult', name: 'ListAssociatedStacksResult')
    ListEntitledApplicationsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListEntitledApplicationsRequest', name: 'ListEntitledApplicationsRequest')
    ListEntitledApplicationsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListEntitledApplicationsResult', name: 'ListEntitledApplicationsResult')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appstream#Long', name: 'Long')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.appstream#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 0, "max" => 500}})
    MessageAction = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#MessageAction', name: 'MessageAction')
    Metadata = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appstream#Metadata', name: 'Metadata')
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#Name', name: 'Name', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9][a-zA-Z0-9_.-]{0,100}$"})
    NetworkAccessConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#NetworkAccessConfiguration', name: 'NetworkAccessConfiguration')
    OperationNotPermittedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#OperationNotPermittedException', name: 'OperationNotPermittedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    OrganizationalUnitDistinguishedName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#OrganizationalUnitDistinguishedName', name: 'OrganizationalUnitDistinguishedName', traits: {"smithy.api#length" => {"min" => 0, "max" => 2000}})
    OrganizationalUnitDistinguishedNamesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#OrganizationalUnitDistinguishedNamesList', name: 'OrganizationalUnitDistinguishedNamesList')
    PackagingType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#PackagingType', name: 'PackagingType')
    Permission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#Permission', name: 'Permission')
    PlatformType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#PlatformType', name: 'PlatformType')
    Platforms = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#Platforms', name: 'Platforms', traits: {"smithy.api#length" => {"min" => 0, "max" => 4}})
    PreferredProtocol = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#PreferredProtocol', name: 'PreferredProtocol')
    RedirectURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#RedirectURL', name: 'RedirectURL', traits: {"smithy.api#length" => {"min" => 0, "max" => 1000}})
    RegionName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#RegionName', name: 'RegionName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}})
    RequestLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#RequestLimitExceededException', name: 'RequestLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ResourceError', name: 'ResourceError')
    ResourceErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ResourceErrors', name: 'ResourceErrors')
    ResourceIdentifier = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#ResourceIdentifier', name: 'ResourceIdentifier', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotAvailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ResourceNotAvailableException', name: 'ResourceNotAvailableException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 63}, "smithy.api#pattern" => "^[0-9a-z\\.\\-]*(?<!\\.)$"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#S3Location', name: 'S3Location')
    ScriptDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ScriptDetails', name: 'ScriptDetails')
    SecurityGroupIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#SecurityGroupIdList', name: 'SecurityGroupIdList', traits: {"smithy.api#length" => {"min" => 0, "max" => 5}})
    ServiceAccountCredentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ServiceAccountCredentials', name: 'ServiceAccountCredentials')
    Session = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Session', name: 'Session')
    SessionConnectionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#SessionConnectionState', name: 'SessionConnectionState')
    SessionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#SessionList', name: 'SessionList')
    SessionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#SessionState', name: 'SessionState')
    SettingsGroup = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#SettingsGroup', name: 'SettingsGroup', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}})
    SharedImagePermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#SharedImagePermissions', name: 'SharedImagePermissions')
    SharedImagePermissionsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#SharedImagePermissionsList', name: 'SharedImagePermissionsList')
    Stack = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Stack', name: 'Stack')
    StackAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#StackAttribute', name: 'StackAttribute')
    StackAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#StackAttributes', name: 'StackAttributes')
    StackError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StackError', name: 'StackError')
    StackErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#StackErrorCode', name: 'StackErrorCode')
    StackErrors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#StackErrors', name: 'StackErrors')
    StackList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#StackList', name: 'StackList')
    StartAppBlockBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartAppBlockBuilderRequest', name: 'StartAppBlockBuilderRequest')
    StartAppBlockBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartAppBlockBuilderResult', name: 'StartAppBlockBuilderResult')
    StartFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartFleetRequest', name: 'StartFleetRequest')
    StartFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartFleetResult', name: 'StartFleetResult')
    StartImageBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartImageBuilderRequest', name: 'StartImageBuilderRequest')
    StartImageBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StartImageBuilderResult', name: 'StartImageBuilderResult')
    StopAppBlockBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopAppBlockBuilderRequest', name: 'StopAppBlockBuilderRequest')
    StopAppBlockBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopAppBlockBuilderResult', name: 'StopAppBlockBuilderResult')
    StopFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopFleetRequest', name: 'StopFleetRequest')
    StopFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopFleetResult', name: 'StopFleetResult')
    StopImageBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopImageBuilderRequest', name: 'StopImageBuilderRequest')
    StopImageBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StopImageBuilderResult', name: 'StopImageBuilderResult')
    StorageConnector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StorageConnector', name: 'StorageConnector')
    StorageConnectorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#StorageConnectorList', name: 'StorageConnectorList')
    StorageConnectorType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#StorageConnectorType', name: 'StorageConnectorType')
    StreamView = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#StreamView', name: 'StreamView')
    StreamingExperienceSettings = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#StreamingExperienceSettings', name: 'StreamingExperienceSettings')
    StreamingUrlUserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#StreamingUrlUserId', name: 'StreamingUrlUserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 32}, "smithy.api#pattern" => "^[\\w+=,.@-]*$"})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#String', name: 'String', traits: {"smithy.api#length" => {"min" => 1}})
    StringList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#StringList', name: 'StringList')
    SubnetIdList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#SubnetIdList', name: 'SubnetIdList')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(^(?!aws:).[\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^([\\p{L}\\p{Z}\\p{N}_.:/=+\\-@]*)$"})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.appstream#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    Theme = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#Theme', name: 'Theme')
    ThemeAttribute = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ThemeAttribute', name: 'ThemeAttribute')
    ThemeAttributes = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ThemeAttributes', name: 'ThemeAttributes')
    ThemeFooterLink = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#ThemeFooterLink', name: 'ThemeFooterLink')
    ThemeFooterLinkDisplayName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#ThemeFooterLinkDisplayName', name: 'ThemeFooterLinkDisplayName', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[-@./#&+\\w\\s]*$"})
    ThemeFooterLinkURL = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#ThemeFooterLinkURL', name: 'ThemeFooterLinkURL', traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}})
    ThemeFooterLinks = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#ThemeFooterLinks', name: 'ThemeFooterLinks')
    ThemeState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ThemeState', name: 'ThemeState')
    ThemeStyling = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#ThemeStyling', name: 'ThemeStyling')
    ThemeTitleText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#ThemeTitleText', name: 'ThemeTitleText', traits: {"smithy.api#length" => {"min" => 1, "max" => 300}, "smithy.api#pattern" => "^[-@./#&+\\w\\s]*$"})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.appstream#Timestamp', name: 'Timestamp')
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateAppBlockBuilderRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateAppBlockBuilderRequest', name: 'UpdateAppBlockBuilderRequest')
    UpdateAppBlockBuilderResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateAppBlockBuilderResult', name: 'UpdateAppBlockBuilderResult')
    UpdateApplicationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateApplicationRequest', name: 'UpdateApplicationRequest')
    UpdateApplicationResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateApplicationResult', name: 'UpdateApplicationResult')
    UpdateDirectoryConfigRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateDirectoryConfigRequest', name: 'UpdateDirectoryConfigRequest')
    UpdateDirectoryConfigResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateDirectoryConfigResult', name: 'UpdateDirectoryConfigResult')
    UpdateEntitlementRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateEntitlementRequest', name: 'UpdateEntitlementRequest')
    UpdateEntitlementResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateEntitlementResult', name: 'UpdateEntitlementResult')
    UpdateFleetRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateFleetRequest', name: 'UpdateFleetRequest')
    UpdateFleetResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateFleetResult', name: 'UpdateFleetResult')
    UpdateImagePermissionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateImagePermissionsRequest', name: 'UpdateImagePermissionsRequest')
    UpdateImagePermissionsResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateImagePermissionsResult', name: 'UpdateImagePermissionsResult')
    UpdateStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateStackRequest', name: 'UpdateStackRequest')
    UpdateStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateStackResult', name: 'UpdateStackResult')
    UpdateThemeForStackRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateThemeForStackRequest', name: 'UpdateThemeForStackRequest')
    UpdateThemeForStackResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UpdateThemeForStackResult', name: 'UpdateThemeForStackResult')
    UsageReportExecutionErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#UsageReportExecutionErrorCode', name: 'UsageReportExecutionErrorCode')
    UsageReportSchedule = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#UsageReportSchedule', name: 'UsageReportSchedule')
    UsageReportSubscription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UsageReportSubscription', name: 'UsageReportSubscription')
    UsageReportSubscriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UsageReportSubscriptionList', name: 'UsageReportSubscriptionList')
    UsbDeviceFilterString = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#UsbDeviceFilterString', name: 'UsbDeviceFilterString', traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => "^((\\w*)\\s*(\\w*)\\s*\\,\\s*(\\w*)\\s*\\,\\s*\\*?(\\w*)\\s*\\,\\s*\\*?(\\w*)\\s*\\,\\s*\\*?\\d*\\s*\\,\\s*\\*?\\d*\\s*\\,\\s*[0-1]\\s*\\,\\s*[0-1]\\s*)$"})
    UsbDeviceFilterStrings = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UsbDeviceFilterStrings', name: 'UsbDeviceFilterStrings')
    User = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#User', name: 'User')
    UserAttributeValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#UserAttributeValue', name: 'UserAttributeValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => "^[A-Za-z0-9_\\-\\s]+$", "smithy.api#sensitive" => {}})
    UserId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#UserId', name: 'UserId', traits: {"smithy.api#length" => {"min" => 2, "max" => 128}})
    UserList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UserList', name: 'UserList')
    UserSetting = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UserSetting', name: 'UserSetting')
    UserSettingList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UserSettingList', name: 'UserSettingList', traits: {"smithy.api#length" => {"min" => 1}})
    UserStackAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UserStackAssociation', name: 'UserStackAssociation')
    UserStackAssociationError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#UserStackAssociationError', name: 'UserStackAssociationError')
    UserStackAssociationErrorCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#UserStackAssociationErrorCode', name: 'UserStackAssociationErrorCode')
    UserStackAssociationErrorList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UserStackAssociationErrorList', name: 'UserStackAssociationErrorList')
    UserStackAssociationList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.appstream#UserStackAssociationList', name: 'UserStackAssociationList', traits: {"smithy.api#length" => {"min" => 1, "max" => 25}})
    Username = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.appstream#Username', name: 'Username', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^[\\p{L}\\p{M}\\p{S}\\p{N}\\p{P}]+$", "smithy.api#sensitive" => {}})
    VisibilityType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.appstream#VisibilityType', name: 'VisibilityType')
    VpcConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.appstream#VpcConfig', name: 'VpcConfig')

    AccessEndpoint.add_member(:endpoint_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointType, location_name: 'EndpointType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of interface endpoint.</p>", "smithy.api#required" => {}}))
    AccessEndpoint.add_member(:vpce_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VpceId', traits: {"smithy.api#documentation" => "<p>The identifier (ID) of the VPC in which the interface endpoint is used.</p>"}))
    AccessEndpoint.type = Types::AccessEndpoint
    AccessEndpointList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpoint)
    AccessEndpointType.add_member(:streaming, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STREAMING', traits: {"smithy.api#enumValue" => "STREAMING"}))
    Action.add_member(:clipboard_copy_from_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIPBOARD_COPY_FROM_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_FROM_LOCAL_DEVICE"}))
    Action.add_member(:clipboard_copy_to_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CLIPBOARD_COPY_TO_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "CLIPBOARD_COPY_TO_LOCAL_DEVICE"}))
    Action.add_member(:file_upload, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_UPLOAD', traits: {"smithy.api#enumValue" => "FILE_UPLOAD"}))
    Action.add_member(:file_download, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FILE_DOWNLOAD', traits: {"smithy.api#enumValue" => "FILE_DOWNLOAD"}))
    Action.add_member(:printing_to_local_device, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRINTING_TO_LOCAL_DEVICE', traits: {"smithy.api#enumValue" => "PRINTING_TO_LOCAL_DEVICE"}))
    Action.add_member(:domain_password_signin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_PASSWORD_SIGNIN', traits: {"smithy.api#enumValue" => "DOMAIN_PASSWORD_SIGNIN"}))
    Action.add_member(:domain_smart_card_signin, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_SMART_CARD_SIGNIN', traits: {"smithy.api#enumValue" => "DOMAIN_SMART_CARD_SIGNIN"}))
    Action.add_member(:auto_time_zone_redirection, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AUTO_TIME_ZONE_REDIRECTION', traits: {"smithy.api#enumValue" => "AUTO_TIME_ZONE_REDIRECTION"}))
    AppBlock.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block.</p>", "smithy.api#required" => {}}))
    AppBlock.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the app block.</p>", "smithy.api#required" => {}}))
    AppBlock.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the app block.</p>"}))
    AppBlock.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the app block.</p>"}))
    AppBlock.add_member(:source_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SourceS3Location', traits: {"smithy.api#documentation" => "<p>The source S3 location of the app block.</p>"}))
    AppBlock.add_member(:setup_script_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptDetails, location_name: 'SetupScriptDetails', traits: {"smithy.api#documentation" => "<p>The setup script details of the app block.</p>\n         <p>This only applies to app blocks with PackagingType <code>CUSTOM</code>.</p>"}))
    AppBlock.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The created time of the app block.</p>"}))
    AppBlock.add_member(:post_setup_script_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptDetails, location_name: 'PostSetupScriptDetails', traits: {"smithy.api#documentation" => "<p>The post setup script details of the app block.</p>\n         <p>This only applies to app blocks with PackagingType <code>APPSTREAM2</code>.</p>"}))
    AppBlock.add_member(:packaging_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackagingType, location_name: 'PackagingType', traits: {"smithy.api#documentation" => "<p>The packaging type of the app block.</p>"}))
    AppBlock.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the app block.</p>\n         <p>An app block with AppStream 2.0 packaging will be in the <code>INACTIVE</code> state\n            if no application package (VHD) is assigned to it. After an application package (VHD) is\n            created by an app block builder for an app block, it becomes <code>ACTIVE</code>. </p>\n         <p>Custom app blocks are always in the <code>ACTIVE</code> state and no action is required to use them.</p>"}))
    AppBlock.add_member(:app_block_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetailsList, location_name: 'AppBlockErrors', traits: {"smithy.api#documentation" => "<p>The errors of the app block.</p>"}))
    AppBlock.type = Types::AppBlock
    AppBlockBuilder.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the app block builder.</p>"}))
    AppBlockBuilder.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the app block builder.</p>"}))
    AppBlockBuilder.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderPlatformType, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The platform of the app block builder.</p>\n         <p>\n            <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance type of the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether default internet access is enabled for the app block builder.</p>"}))
    AppBlockBuilder.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is applied to the app block builder.</p>"}))
    AppBlockBuilder.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The VPC configuration for the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The state of the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilder.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The creation time of the app block builder.</p>"}))
    AppBlockBuilder.add_member(:app_block_builder_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceErrors, location_name: 'AppBlockBuilderErrors', traits: {"smithy.api#documentation" => "<p>The app block builder errors.</p>"}))
    AppBlockBuilder.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderStateChangeReason, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>The state change reason.</p>"}))
    AppBlockBuilder.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>"}))
    AppBlockBuilder.type = Types::AppBlockBuilder
    AppBlockBuilderAppBlockAssociation.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the app block.</p>", "smithy.api#required" => {}}))
    AppBlockBuilderAppBlockAssociation.add_member(:app_block_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'AppBlockBuilderName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    AppBlockBuilderAppBlockAssociation.type = Types::AppBlockBuilderAppBlockAssociation
    AppBlockBuilderAppBlockAssociationsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociation)
    AppBlockBuilderAttribute.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_ARN', traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    AppBlockBuilderAttribute.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_ENDPOINTS', traits: {"smithy.api#enumValue" => "ACCESS_ENDPOINTS"}))
    AppBlockBuilderAttribute.add_member(:vpc_configuration_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_CONFIGURATION_SECURITY_GROUP_IDS', traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION_SECURITY_GROUP_IDS"}))
    AppBlockBuilderAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderAttribute)
    AppBlockBuilderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilder)
    AppBlockBuilderPlatformType.add_member(:windows_server_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2019', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    AppBlockBuilderState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    AppBlockBuilderState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    AppBlockBuilderState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    AppBlockBuilderState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    AppBlockBuilderStateChangeReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderStateChangeReasonCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The state change reason code.</p>"}))
    AppBlockBuilderStateChangeReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The state change reason message.</p>"}))
    AppBlockBuilderStateChangeReason.type = Types::AppBlockBuilderStateChangeReason
    AppBlockBuilderStateChangeReasonCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    AppBlockState.add_member(:inactive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INACTIVE', traits: {"smithy.api#enumValue" => "INACTIVE"}))
    AppBlockState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    AppBlocks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlock)
    AppVisibility.add_member(:all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALL', traits: {"smithy.api#enumValue" => "ALL"}))
    AppVisibility.add_member(:associated, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ASSOCIATED', traits: {"smithy.api#enumValue" => "ASSOCIATED"}))
    Application.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the application.</p>"}))
    Application.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The application name to display.</p>"}))
    Application.add_member(:icon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'IconURL', traits: {"smithy.api#documentation" => "<p>The URL for the application icon. This URL might be time-limited.</p>"}))
    Application.add_member(:launch_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchPath', traits: {"smithy.api#documentation" => "<p>The path to the application executable in the instance.</p>"}))
    Application.add_member(:launch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchParameters', traits: {"smithy.api#documentation" => "<p>The arguments that are passed to the application at launch.</p>"}))
    Application.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>If there is a problem, the application can be disabled after image creation.</p>"}))
    Application.add_member(:metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Metadata, location_name: 'Metadata', traits: {"smithy.api#documentation" => "<p>Additional attributes that describe the application.</p>"}))
    Application.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WorkingDirectory', traits: {"smithy.api#documentation" => "<p>The working directory for the application.</p>"}))
    Application.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    Application.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>"}))
    Application.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#documentation" => "<p>The app block ARN of the application.</p>"}))
    Application.add_member(:icon_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'IconS3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the application icon.</p>"}))
    Application.add_member(:platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: Platforms, location_name: 'Platforms', traits: {"smithy.api#documentation" => "<p>The platforms on which the application can run.</p>"}))
    Application.add_member(:instance_families, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'InstanceFamilies', traits: {"smithy.api#documentation" => "<p>The instance families for the application.</p>"}))
    Application.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time at which the application was created within the app block.</p>"}))
    Application.type = Types::Application
    ApplicationAttribute.add_member(:launch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LAUNCH_PARAMETERS', traits: {"smithy.api#enumValue" => "LAUNCH_PARAMETERS"}))
    ApplicationAttribute.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WORKING_DIRECTORY', traits: {"smithy.api#enumValue" => "WORKING_DIRECTORY"}))
    ApplicationAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAttribute)
    ApplicationFleetAssociation.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet associated with the application.</p>", "smithy.api#required" => {}}))
    ApplicationFleetAssociation.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the application associated with the fleet.</p>", "smithy.api#required" => {}}))
    ApplicationFleetAssociation.type = Types::ApplicationFleetAssociation
    ApplicationFleetAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationFleetAssociation)
    ApplicationSettings.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Enables or disables persistent application settings for users during their streaming sessions. </p>", "smithy.api#required" => {}}))
    ApplicationSettings.add_member(:settings_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingsGroup, location_name: 'SettingsGroup', traits: {"smithy.api#documentation" => "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored. You can allow the same persistent application settings to be used across multiple stacks by specifying the same settings group for each stack. </p>"}))
    ApplicationSettings.type = Types::ApplicationSettings
    ApplicationSettingsResponse.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether persistent application settings are enabled for users during their streaming sessions.</p>"}))
    ApplicationSettingsResponse.add_member(:settings_group, Smithy::Schema::Shapes::ShapeRef.new(shape: SettingsGroup, location_name: 'SettingsGroup', traits: {"smithy.api#documentation" => "<p>The path prefix for the S3 bucket where users’ persistent application settings are stored.</p>"}))
    ApplicationSettingsResponse.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The S3 bucket where users’ persistent application settings are stored. When persistent application settings are enabled for the first time for an account in an AWS Region, an S3 bucket is created. The bucket is unique to the AWS account and the Region. \n        </p>"}))
    ApplicationSettingsResponse.type = Types::ApplicationSettingsResponse
    Applications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Application)
    ArnList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Arn)
    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the app block.</p>", "smithy.api#required" => {}}))
    AssociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'AppBlockBuilderName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    AssociateAppBlockBuilderAppBlockRequest.type = Types::AssociateAppBlockBuilderAppBlockRequest
    AssociateAppBlockBuilderAppBlockResult.add_member(:app_block_builder_app_block_association, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociation, location_name: 'AppBlockBuilderAppBlockAssociation', traits: {"smithy.api#documentation" => "<p>The list of app block builders associated with app blocks.</p>"}))
    AssociateAppBlockBuilderAppBlockResult.type = Types::AssociateAppBlockBuilderAppBlockResult
    AssociateApplicationFleetRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    AssociateApplicationFleetRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    AssociateApplicationFleetRequest.type = Types::AssociateApplicationFleetRequest
    AssociateApplicationFleetResult.add_member(:application_fleet_association, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationFleetAssociation, location_name: 'ApplicationFleetAssociation', traits: {"smithy.api#documentation" => "<p>If fleet name is specified, this returns the list of applications that are associated\n            to it. If application ARN is specified, this returns the list of fleets to which it is\n            associated.</p>"}))
    AssociateApplicationFleetResult.type = Types::AssociateApplicationFleetResult
    AssociateApplicationToEntitlementRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.add_member(:entitlement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'EntitlementName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the application.</p>", "smithy.api#required" => {}}))
    AssociateApplicationToEntitlementRequest.type = Types::AssociateApplicationToEntitlementRequest
    AssociateApplicationToEntitlementResult.type = Types::AssociateApplicationToEntitlementResult
    AssociateFleetRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet. </p>", "smithy.api#required" => {}}))
    AssociateFleetRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    AssociateFleetRequest.type = Types::AssociateFleetRequest
    AssociateFleetResult.type = Types::AssociateFleetResult
    AuthenticationType.add_member(:api, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'API', traits: {"smithy.api#enumValue" => "API"}))
    AuthenticationType.add_member(:saml, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SAML', traits: {"smithy.api#enumValue" => "SAML"}))
    AuthenticationType.add_member(:userpool, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USERPOOL', traits: {"smithy.api#enumValue" => "USERPOOL"}))
    AuthenticationType.add_member(:aws_ad, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AWS_AD', traits: {"smithy.api#enumValue" => "AWS_AD"}))
    AwsAccountIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId)
    BatchAssociateUserStackRequest.add_member(:user_stack_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationList, location_name: 'UserStackAssociations', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of UserStackAssociation objects.</p>", "smithy.api#required" => {}}))
    BatchAssociateUserStackRequest.type = Types::BatchAssociateUserStackRequest
    BatchAssociateUserStackResult.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The list of UserStackAssociationError objects.</p>"}))
    BatchAssociateUserStackResult.type = Types::BatchAssociateUserStackResult
    BatchDisassociateUserStackRequest.add_member(:user_stack_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationList, location_name: 'UserStackAssociations', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The list of UserStackAssociation objects.</p>", "smithy.api#required" => {}}))
    BatchDisassociateUserStackRequest.type = Types::BatchDisassociateUserStackRequest
    BatchDisassociateUserStackResult.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationErrorList, location_name: 'errors', traits: {"smithy.api#documentation" => "<p>The list of UserStackAssociationError objects.</p>"}))
    BatchDisassociateUserStackResult.type = Types::BatchDisassociateUserStackResult
    CertificateBasedAuthProperties.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the certificate-based authentication properties.</p>"}))
    CertificateBasedAuthProperties.add_member(:certificate_authority_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'CertificateAuthorityArn', traits: {"smithy.api#documentation" => "<p>The ARN of the AWS Certificate Manager Private CA resource.</p>"}))
    CertificateBasedAuthProperties.type = Types::CertificateBasedAuthProperties
    CertificateBasedAuthStatus.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    CertificateBasedAuthStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    CertificateBasedAuthStatus.add_member(:enabled_no_directory_login_fallback, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED_NO_DIRECTORY_LOGIN_FALLBACK', traits: {"smithy.api#enumValue" => "ENABLED_NO_DIRECTORY_LOGIN_FALLBACK"}))
    ComputeCapacity.add_member(:desired_instances, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DesiredInstances', traits: {"smithy.api#documentation" => "<p>The desired number of streaming instances.</p>"}))
    ComputeCapacity.add_member(:desired_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DesiredSessions', traits: {"smithy.api#documentation" => "<p>The desired number of user sessions for a multi-session fleet. This is not allowed for single-session fleets.</p>\n         <p>When you create a fleet, you must set either the DesiredSessions or DesiredInstances attribute, based on the type of fleet you create. You can’t define both attributes or leave both attributes blank.</p>"}))
    ComputeCapacity.type = Types::ComputeCapacity
    ComputeCapacityStatus.add_member(:desired, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Desired', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The desired number of streaming instances.</p>", "smithy.api#required" => {}}))
    ComputeCapacityStatus.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Running', traits: {"smithy.api#documentation" => "<p>The total number of simultaneous streaming instances that are running.</p>"}))
    ComputeCapacityStatus.add_member(:in_use, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'InUse', traits: {"smithy.api#documentation" => "<p>The number of instances in use for streaming.</p>"}))
    ComputeCapacityStatus.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Available', traits: {"smithy.api#documentation" => "<p>The number of currently available instances that can be used to stream\n            sessions.</p>"}))
    ComputeCapacityStatus.add_member(:desired_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DesiredUserSessions', traits: {"smithy.api#documentation" => "<p>The total number of sessions slots that are either running or pending. This represents the total number of concurrent streaming sessions your fleet can support in a steady state.</p>\n         <p>DesiredUserSessionCapacity = ActualUserSessionCapacity + PendingUserSessionCapacity</p>\n         <p>This only applies to multi-session fleets.</p>"}))
    ComputeCapacityStatus.add_member(:available_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'AvailableUserSessions', traits: {"smithy.api#documentation" => "<p>The number of idle session slots currently available for user sessions.</p>\n         <p>AvailableUserSessionCapacity = ActualUserSessionCapacity - ActiveUserSessions</p>\n         <p>This only applies to multi-session fleets.</p>"}))
    ComputeCapacityStatus.add_member(:active_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ActiveUserSessions', traits: {"smithy.api#documentation" => "<p>The number of user sessions currently being used for streaming sessions. This only applies to multi-session fleets.</p>"}))
    ComputeCapacityStatus.add_member(:actual_user_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'ActualUserSessions', traits: {"smithy.api#documentation" => "<p>The total number of session slots that are available for streaming or are currently streaming.</p>\n         <p>ActualUserSessionCapacity = AvailableUserSessionCapacity + ActiveUserSessions</p>\n         <p>This only applies to multi-session fleets.</p>"}))
    ComputeCapacityStatus.type = Types::ComputeCapacityStatus
    ConcurrentModificationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    CopyImageRequest.add_member(:source_image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'SourceImageName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image to copy.</p>", "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'DestinationImageName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name that the image will have when it is copied to the destination.</p>", "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_region, Smithy::Schema::Shapes::ShapeRef.new(shape: RegionName, location_name: 'DestinationRegion', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The destination region to which the image will be copied. This parameter is required, even if you are copying an image within the same region.</p>", "smithy.api#required" => {}}))
    CopyImageRequest.add_member(:destination_image_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'DestinationImageDescription', traits: {"smithy.api#documentation" => "<p>The description that the image will have when it is copied to the destination.</p>"}))
    CopyImageRequest.type = Types::CopyImageRequest
    CopyImageResponse.add_member(:destination_image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'DestinationImageName', traits: {"smithy.api#documentation" => "<p>The name of the destination image.</p>"}))
    CopyImageResponse.type = Types::CopyImageResponse
    CreateAppBlockBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique name for the app block builder.</p>", "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the app block builder.</p>"}))
    CreateAppBlockBuilderRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the app block builder.</p>"}))
    CreateAppBlockBuilderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the app block builder. A tag is a key-value pair, and the\n            value is optional. For example, Environment=Test. If you do not specify a value,\n            Environment=. </p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateAppBlockBuilderRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderPlatformType, location_name: 'Platform', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The platform of the app block builder.</p>\n         <p>\n            <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>", "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance type to use when launching the app block builder. The following instance\n            types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The VPC configuration for the app block builder.</p>\n         <p>App block builders require that you specify at least two subnets in different availability\n            zones.</p>", "smithy.api#required" => {}}))
    CreateAppBlockBuilderRequest.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the app block builder.</p>"}))
    CreateAppBlockBuilderRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To\n            assume a role, the app block builder calls the AWS Security Token Service (STS)\n                <code>AssumeRole</code> API operation and passes the ARN of the role to use. The\n            operation creates a new session with temporary credentials. AppStream 2.0 retrieves the\n            temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateAppBlockBuilderRequest.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>"}))
    CreateAppBlockBuilderRequest.type = Types::CreateAppBlockBuilderRequest
    CreateAppBlockBuilderResult.add_member(:app_block_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: 'AppBlockBuilder'))
    CreateAppBlockBuilderResult.type = Types::CreateAppBlockBuilderResult
    CreateAppBlockBuilderStreamingURLRequest.add_member(:app_block_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'AppBlockBuilderName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    CreateAppBlockBuilderStreamingURLRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>The time that the streaming URL will be valid, in seconds. \n            Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>"}))
    CreateAppBlockBuilderStreamingURLRequest.type = Types::CreateAppBlockBuilderStreamingURLRequest
    CreateAppBlockBuilderStreamingURLResult.add_member(:streaming_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamingURL', traits: {"smithy.api#documentation" => "<p>The URL to start the streaming session.</p>"}))
    CreateAppBlockBuilderStreamingURLResult.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Expires', traits: {"smithy.api#documentation" => "<p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>"}))
    CreateAppBlockBuilderStreamingURLResult.type = Types::CreateAppBlockBuilderStreamingURLResult
    CreateAppBlockRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block.</p>", "smithy.api#required" => {}}))
    CreateAppBlockRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the app block.</p>"}))
    CreateAppBlockRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the app block. This is not displayed to the user.</p>"}))
    CreateAppBlockRequest.add_member(:source_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SourceS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The source S3 location of the app block.</p>", "smithy.api#required" => {}}))
    CreateAppBlockRequest.add_member(:setup_script_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptDetails, location_name: 'SetupScriptDetails', traits: {"smithy.api#documentation" => "<p>The setup script details of the app block. This must be provided for the\n                <code>CUSTOM</code> PackagingType.</p>"}))
    CreateAppBlockRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the app block.</p>"}))
    CreateAppBlockRequest.add_member(:post_setup_script_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ScriptDetails, location_name: 'PostSetupScriptDetails', traits: {"smithy.api#documentation" => "<p>The post setup script details of the app block. This can only be provided for the\n                <code>APPSTREAM2</code> PackagingType.</p>"}))
    CreateAppBlockRequest.add_member(:packaging_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PackagingType, location_name: 'PackagingType', traits: {"smithy.api#documentation" => "<p>The packaging type of the app block.</p>"}))
    CreateAppBlockRequest.type = Types::CreateAppBlockRequest
    CreateAppBlockResult.add_member(:app_block, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlock, location_name: 'AppBlock', traits: {"smithy.api#documentation" => "<p>The app block.</p>"}))
    CreateAppBlockResult.type = Types::CreateAppBlockResult
    CreateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the application. This name is visible to users when display name is not specified.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the application. This name is visible to users in the application catalog.</p>"}))
    CreateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    CreateApplicationRequest.add_member(:icon_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'IconS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The location in S3 of the application icon.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:launch_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchPath', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The launch path of the application.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WorkingDirectory', traits: {"smithy.api#documentation" => "<p>The working directory of the application.</p>"}))
    CreateApplicationRequest.add_member(:launch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchParameters', traits: {"smithy.api#documentation" => "<p>The launch parameters of the application.</p>"}))
    CreateApplicationRequest.add_member(:platforms, Smithy::Schema::Shapes::ShapeRef.new(shape: Platforms, location_name: 'Platforms', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The platforms the application supports. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:instance_families, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'InstanceFamilies', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance families the application supports. Valid values are GENERAL_PURPOSE and GRAPHICS_G4.</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The app block ARN to which the application should be associated</p>", "smithy.api#required" => {}}))
    CreateApplicationRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags assigned to the application.</p>"}))
    CreateApplicationRequest.type = Types::CreateApplicationRequest
    CreateApplicationResult.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'Application'))
    CreateApplicationResult.type = Types::CreateApplicationResult
    CreateDirectoryConfigRequest.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The fully qualified name of the directory (for example, corp.example.com).</p>", "smithy.api#required" => {}}))
    CreateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: 'OrganizationalUnitDistinguishedNames', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The distinguished names of the organizational units for computer accounts.</p>", "smithy.api#required" => {}}))
    CreateDirectoryConfigRequest.add_member(:service_account_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: 'ServiceAccountCredentials', traits: {"smithy.api#documentation" => "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"}))
    CreateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: 'CertificateBasedAuthProperties', traits: {"smithy.api#documentation" => "<p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity\n            Provider (IdP) user identities to Active Directory domain-joined streaming instances.\n            Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD\n            domain password if certificate-based authentication is unsuccessful, or to unlock a\n            desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based\n            authentication, but does not allow users to log in using their AD domain password. Users\n            will be disconnected to re-authenticate using certificates.</p>"}))
    CreateDirectoryConfigRequest.type = Types::CreateDirectoryConfigRequest
    CreateDirectoryConfigResult.add_member(:directory_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: 'DirectoryConfig', traits: {"smithy.api#documentation" => "<p>Information about the directory configuration.</p>"}))
    CreateDirectoryConfigResult.type = Types::CreateDirectoryConfigResult
    CreateEntitlementRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the entitlement.</p>"}))
    CreateEntitlementRequest.add_member(:app_visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: AppVisibility, location_name: 'AppVisibility', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies whether all or selected apps are entitled.</p>", "smithy.api#required" => {}}))
    CreateEntitlementRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAttributeList, location_name: 'Attributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The attributes of the entitlement.</p>", "smithy.api#required" => {}}))
    CreateEntitlementRequest.type = Types::CreateEntitlementRequest
    CreateEntitlementResult.add_member(:entitlement, Smithy::Schema::Shapes::ShapeRef.new(shape: Entitlement, location_name: 'Entitlement', traits: {"smithy.api#documentation" => "<p>The entitlement.</p>"}))
    CreateEntitlementResult.type = Types::CreateEntitlementResult
    CreateFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique name for the fleet.</p>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'ImageName', traits: {"smithy.api#documentation" => "<p>The name of the image used to create the fleet.</p>"}))
    CreateFleetRequest.add_member(:image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ImageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public, private, or shared image to use.</p>"}))
    CreateFleetRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance type to use when launching fleet instances. The following instance types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.large</p>\n            </li>\n            <li>\n               <p>stream.compute.xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.large</p>\n            </li>\n            <li>\n               <p>stream.memory.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.large</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.3xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.6xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.large</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-desktop.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.8xlarge</p>\n            </li>\n         </ul>\n         <p>The following instance types are available for Elastic fleets:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateFleetRequest.add_member(:fleet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetType, location_name: 'FleetType', traits: {"smithy.api#documentation" => "<p>The fleet type.</p>\n         <dl>\n            <dt>ALWAYS_ON</dt>\n            <dd>\n               <p>Provides users with instant-on access to their apps.\n                        You are charged for all running instances in your fleet, even if no users are streaming apps.</p>\n            </dd>\n            <dt>ON_DEMAND</dt>\n            <dd>\n               <p>Provide users with access to applications after they connect, which takes one to two minutes.\n                        You are charged for instance streaming when users are connected and a\n                        small hourly fee for instances that are not streaming apps.</p>\n            </dd>\n         </dl>"}))
    CreateFleetRequest.add_member(:compute_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: 'ComputeCapacity', traits: {"smithy.api#documentation" => "<p>The desired capacity for the fleet. This is not allowed for Elastic fleets. For Elastic fleets, specify MaxConcurrentSessions instead.</p>"}))
    CreateFleetRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones.</p>"}))
    CreateFleetRequest.add_member(:max_user_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxUserDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>\n         <p>Specify a value between 600 and 432000.</p>"}))
    CreateFleetRequest.add_member(:disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>\n         <p>Specify a value between 60 and 36000.</p>"}))
    CreateFleetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    CreateFleetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The fleet name to display.</p>"}))
    CreateFleetRequest.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the fleet.</p>"}))
    CreateFleetRequest.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: 'DomainJoinInfo', traits: {"smithy.api#documentation" => "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. This is not allowed for Elastic fleets. </p>"}))
    CreateFleetRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the fleet. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IdleDisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected\n            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time\n            interval begins. Users are notified before they are disconnected due to inactivity. If\n            they try to reconnect to the streaming session before the time interval specified in\n            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their\n            previous session. Users are considered idle when they stop providing keyboard or mouse\n            input during their streaming session. File uploads and downloads, audio in, audio out,\n            and pixels changing do not qualify as user activity. If users continue to be idle after\n            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are\n            disconnected.</p>\n         <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>\n         <note>\n            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>\n         </note>"}))
    CreateFleetRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateFleetRequest.add_member(:stream_view, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamView, location_name: 'StreamView', traits: {"smithy.api#documentation" => "<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>\n         <p>The default value is <code>APP</code>.</p>"}))
    CreateFleetRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The fleet platform. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic\n            fleets. </p>"}))
    CreateFleetRequest.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum concurrent sessions of the Elastic fleet. This is required for Elastic\n            fleets, and not allowed for other fleet types.</p>"}))
    CreateFleetRequest.add_member(:usb_device_filter_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: 'UsbDeviceFilterStrings', traits: {"smithy.api#documentation" => "<p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>"}))
    CreateFleetRequest.add_member(:session_script_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SessionScriptS3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>"}))
    CreateFleetRequest.add_member(:max_sessions_per_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxSessionsPerInstance', traits: {"smithy.api#documentation" => "<p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>"}))
    CreateFleetRequest.type = Types::CreateFleetRequest
    CreateFleetResult.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet, location_name: 'Fleet', traits: {"smithy.api#documentation" => "<p>Information about the fleet.</p>"}))
    CreateFleetResult.type = Types::CreateFleetResult
    CreateImageBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A unique name for the image builder.</p>", "smithy.api#required" => {}}))
    CreateImageBuilderRequest.add_member(:image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageName', traits: {"smithy.api#documentation" => "<p>The name of the image used to create the image builder.</p>"}))
    CreateImageBuilderRequest.add_member(:image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ImageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public, private, or shared image to use.</p>"}))
    CreateImageBuilderRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance type to use when launching the image builder. The following instance types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.compute.large</p>\n            </li>\n            <li>\n               <p>stream.compute.xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.large</p>\n            </li>\n            <li>\n               <p>stream.memory.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.large</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.3xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.6xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.large</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-desktop.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.8xlarge</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    CreateImageBuilderRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    CreateImageBuilderRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The image builder name to display.</p>"}))
    CreateImageBuilderRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the image builder. You can specify only one subnet.</p>"}))
    CreateImageBuilderRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to apply to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateImageBuilderRequest.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the image builder.</p>"}))
    CreateImageBuilderRequest.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: 'DomainJoinInfo', traits: {"smithy.api#documentation" => "<p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>"}))
    CreateImageBuilderRequest.add_member(:appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: 'AppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>"}))
    CreateImageBuilderRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the image builder. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateImageBuilderRequest.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the image builder only through the specified endpoints.</p>"}))
    CreateImageBuilderRequest.type = Types::CreateImageBuilderRequest
    CreateImageBuilderResult.add_member(:image_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilder, location_name: 'ImageBuilder', traits: {"smithy.api#documentation" => "<p>Information about the image builder.</p>"}))
    CreateImageBuilderResult.type = Types::CreateImageBuilderResult
    CreateImageBuilderStreamingURLRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image builder.</p>", "smithy.api#required" => {}}))
    CreateImageBuilderStreamingURLRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>The time that the streaming URL will be valid, in seconds. \n            Specify a value between 1 and 604800 seconds. The default is 3600 seconds.</p>"}))
    CreateImageBuilderStreamingURLRequest.type = Types::CreateImageBuilderStreamingURLRequest
    CreateImageBuilderStreamingURLResult.add_member(:streaming_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamingURL', traits: {"smithy.api#documentation" => "<p>The URL to start the AppStream 2.0 streaming session.</p>"}))
    CreateImageBuilderStreamingURLResult.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Expires', traits: {"smithy.api#documentation" => "<p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>"}))
    CreateImageBuilderStreamingURLResult.type = Types::CreateImageBuilderStreamingURLResult
    CreateStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    CreateStackRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    CreateStackRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The stack name to display.</p>"}))
    CreateStackRequest.add_member(:storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: 'StorageConnectors', traits: {"smithy.api#documentation" => "<p>The storage connectors to enable.</p>"}))
    CreateStackRequest.add_member(:redirect_url, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectURL, location_name: 'RedirectURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after their streaming session ends.</p>"}))
    CreateStackRequest.add_member(:feedback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackURL, location_name: 'FeedbackURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"}))
    CreateStackRequest.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingList, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled. </p>"}))
    CreateStackRequest.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>"}))
    CreateStackRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the stack. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateStackRequest.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>"}))
    CreateStackRequest.add_member(:embed_host_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: 'EmbedHostDomains', traits: {"smithy.api#documentation" => "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>"}))
    CreateStackRequest.add_member(:streaming_experience_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: 'StreamingExperienceSettings', traits: {"smithy.api#documentation" => "<p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>"}))
    CreateStackRequest.type = Types::CreateStackRequest
    CreateStackResult.add_member(:stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Stack, location_name: 'Stack', traits: {"smithy.api#documentation" => "<p>Information about the stack.</p>"}))
    CreateStackResult.type = Types::CreateStackResult
    CreateStreamingURLRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingUrlUserId, location_name: 'UserId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the user.</p>", "smithy.api#required" => {}}))
    CreateStreamingURLRequest.add_member(:application_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationId', traits: {"smithy.api#documentation" => "<p>The name of the application to launch after the session starts. This is the name that you specified\n            as <b>Name</b> in the Image Assistant. If your fleet is enabled for the <b>Desktop</b> stream view, you can also choose to launch directly to the operating system desktop. To do so, specify <b>Desktop</b>.</p>"}))
    CreateStreamingURLRequest.add_member(:validity, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'Validity', traits: {"smithy.api#documentation" => "<p>The time that the streaming URL will be valid, in seconds.\n            Specify a value between 1 and 604800 seconds. The default is 60 seconds.</p>"}))
    CreateStreamingURLRequest.add_member(:session_context, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionContext', traits: {"smithy.api#documentation" => "<p>The session context. For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/managing-stacks-fleets.html#managing-stacks-fleets-parameters\">Session Context</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateStreamingURLRequest.type = Types::CreateStreamingURLRequest
    CreateStreamingURLResult.add_member(:streaming_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StreamingURL', traits: {"smithy.api#documentation" => "<p>The URL to start the AppStream 2.0 streaming session.</p>"}))
    CreateStreamingURLResult.add_member(:expires, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'Expires', traits: {"smithy.api#documentation" => "<p>The elapsed time, in seconds after the Unix epoch, when this URL expires.</p>"}))
    CreateStreamingURLResult.type = Types::CreateStreamingURLResult
    CreateThemeForStackRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack for the theme.</p>", "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:footer_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: 'FooterLinks', traits: {"smithy.api#documentation" => "<p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>"}))
    CreateThemeForStackRequest.add_member(:title_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeTitleText, location_name: 'TitleText', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>", "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:theme_styling, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeStyling, location_name: 'ThemeStyling', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>", "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:organization_logo_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'OrganizationLogoS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The organization logo that appears on the streaming application catalog page.</p>", "smithy.api#required" => {}}))
    CreateThemeForStackRequest.add_member(:favicon_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'FaviconS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>", "smithy.api#required" => {}}))
    CreateThemeForStackRequest.type = Types::CreateThemeForStackRequest
    CreateThemeForStackResult.add_member(:theme, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'Theme', traits: {"smithy.api#documentation" => "<p> The theme object that contains the metadata of the custom branding.</p>"}))
    CreateThemeForStackResult.type = Types::CreateThemeForStackResult
    CreateUpdatedImageRequest.add_member(:existing_image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'existingImageName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image to update.</p>", "smithy.api#required" => {}}))
    CreateUpdatedImageRequest.add_member(:new_image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'newImageName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the new image. The name must be unique within the AWS account and Region.</p>", "smithy.api#required" => {}}))
    CreateUpdatedImageRequest.add_member(:new_image_description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'newImageDescription', traits: {"smithy.api#documentation" => "<p>The description to display for the new image.</p>"}))
    CreateUpdatedImageRequest.add_member(:new_image_display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'newImageDisplayName', traits: {"smithy.api#documentation" => "<p>The name to display for the new image.</p>"}))
    CreateUpdatedImageRequest.add_member(:new_image_tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'newImageTags', traits: {"smithy.api#documentation" => "<p>The tags to associate with the new image. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>For more information about tags, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html\">Tagging Your Resources</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    CreateUpdatedImageRequest.add_member(:dry_run, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'dryRun', traits: {"smithy.api#documentation" => "<p>Indicates whether to display the status of image update availability before AppStream 2.0 initiates the process of creating a new updated image. If this value is set to <code>true</code>, AppStream 2.0 displays whether image updates are available. If this value is set to <code>false</code>, AppStream 2.0 initiates the process of creating a new updated image without displaying whether image updates are available.</p>"}))
    CreateUpdatedImageRequest.type = Types::CreateUpdatedImageRequest
    CreateUpdatedImageResult.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'image'))
    CreateUpdatedImageResult.add_member(:can_update_image, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'canUpdateImage', traits: {"smithy.api#documentation" => "<p>Indicates whether a new image can be created.</p>"}))
    CreateUpdatedImageResult.type = Types::CreateUpdatedImageResult
    CreateUsageReportSubscriptionRequest.type = Types::CreateUsageReportSubscriptionRequest
    CreateUsageReportSubscriptionResult.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket where generated reports are stored.</p>\n         <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script\n            configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is\n            unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0\n            uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, \n            when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>"}))
    CreateUsageReportSubscriptionResult.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageReportSchedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule for generating usage reports.</p>"}))
    CreateUsageReportSubscriptionResult.type = Types::CreateUsageReportSubscriptionResult
    CreateUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address of the user.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateUserRequest.add_member(:message_action, Smithy::Schema::Shapes::ShapeRef.new(shape: MessageAction, location_name: 'MessageAction', traits: {"smithy.api#documentation" => "<p>The action to take for the welcome email that is sent to a user after the user is created in the user pool. If you specify SUPPRESS, no email is sent. If you specify RESEND, do not specify the first name or last name of the user. If the value is null, the email is sent. </p>\n         <note>\n            <p>The temporary password in the welcome email is valid for only 7 days. If users don’t set their passwords within 7 days, you must send them a new welcome email.</p>\n         </note>"}))
    CreateUserRequest.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: 'FirstName', traits: {"smithy.api#documentation" => "<p>The first name, or given name, of the user.</p>"}))
    CreateUserRequest.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: 'LastName', traits: {"smithy.api#documentation" => "<p>The last name, or surname, of the user.</p>"}))
    CreateUserRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user. You must specify USERPOOL. </p>", "smithy.api#required" => {}}))
    CreateUserRequest.type = Types::CreateUserRequest
    CreateUserResult.type = Types::CreateUserResult
    DeleteAppBlockBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    DeleteAppBlockBuilderRequest.type = Types::DeleteAppBlockBuilderRequest
    DeleteAppBlockBuilderResult.type = Types::DeleteAppBlockBuilderResult
    DeleteAppBlockRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block.</p>", "smithy.api#required" => {}}))
    DeleteAppBlockRequest.type = Types::DeleteAppBlockRequest
    DeleteAppBlockResult.type = Types::DeleteAppBlockResult
    DeleteApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the application.</p>", "smithy.api#required" => {}}))
    DeleteApplicationRequest.type = Types::DeleteApplicationRequest
    DeleteApplicationResult.type = Types::DeleteApplicationResult
    DeleteDirectoryConfigRequest.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the directory configuration.</p>", "smithy.api#required" => {}}))
    DeleteDirectoryConfigRequest.type = Types::DeleteDirectoryConfigRequest
    DeleteDirectoryConfigResult.type = Types::DeleteDirectoryConfigResult
    DeleteEntitlementRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    DeleteEntitlementRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    DeleteEntitlementRequest.type = Types::DeleteEntitlementRequest
    DeleteEntitlementResult.type = Types::DeleteEntitlementResult
    DeleteFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    DeleteFleetRequest.type = Types::DeleteFleetRequest
    DeleteFleetResult.type = Types::DeleteFleetResult
    DeleteImageBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image builder.</p>", "smithy.api#required" => {}}))
    DeleteImageBuilderRequest.type = Types::DeleteImageBuilderRequest
    DeleteImageBuilderResult.add_member(:image_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilder, location_name: 'ImageBuilder', traits: {"smithy.api#documentation" => "<p>Information about the image builder.</p>"}))
    DeleteImageBuilderResult.type = Types::DeleteImageBuilderResult
    DeleteImagePermissionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the private image.</p>", "smithy.api#required" => {}}))
    DeleteImagePermissionsRequest.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SharedAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The 12-digit identifier of the AWS account for which to delete image permissions.</p>", "smithy.api#required" => {}}))
    DeleteImagePermissionsRequest.type = Types::DeleteImagePermissionsRequest
    DeleteImagePermissionsResult.type = Types::DeleteImagePermissionsResult
    DeleteImageRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image.</p>", "smithy.api#required" => {}}))
    DeleteImageRequest.type = Types::DeleteImageRequest
    DeleteImageResult.add_member(:image, Smithy::Schema::Shapes::ShapeRef.new(shape: Image, location_name: 'Image', traits: {"smithy.api#documentation" => "<p>Information about the image.</p>"}))
    DeleteImageResult.type = Types::DeleteImageResult
    DeleteStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    DeleteStackRequest.type = Types::DeleteStackRequest
    DeleteStackResult.type = Types::DeleteStackResult
    DeleteThemeForStackRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack for the theme.</p>", "smithy.api#required" => {}}))
    DeleteThemeForStackRequest.type = Types::DeleteThemeForStackRequest
    DeleteThemeForStackResult.type = Types::DeleteThemeForStackResult
    DeleteUsageReportSubscriptionRequest.type = Types::DeleteUsageReportSubscriptionRequest
    DeleteUsageReportSubscriptionResult.type = Types::DeleteUsageReportSubscriptionResult
    DeleteUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address of the user.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive.</p>\n         </note>", "smithy.api#required" => {}}))
    DeleteUserRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user. You must specify USERPOOL.</p>", "smithy.api#required" => {}}))
    DeleteUserRequest.type = Types::DeleteUserRequest
    DeleteUserResult.type = Types::DeleteUserResult
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#documentation" => "<p>The ARN of the app block.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:app_block_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'AppBlockBuilderName', traits: {"smithy.api#documentation" => "<p>The name of the app block builder.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsRequest.type = Types::DescribeAppBlockBuilderAppBlockAssociationsRequest
    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:app_block_builder_app_block_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderAppBlockAssociationsList, location_name: 'AppBlockBuilderAppBlockAssociations', traits: {"smithy.api#documentation" => "<p>This list of app block builders associated with app blocks.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlockBuilderAppBlockAssociationsResult.type = Types::DescribeAppBlockBuilderAppBlockAssociationsResult
    DescribeAppBlockBuildersRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the app block builders.</p>"}))
    DescribeAppBlockBuildersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlockBuildersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results. The maximum value is 25.</p>"}))
    DescribeAppBlockBuildersRequest.type = Types::DescribeAppBlockBuildersRequest
    DescribeAppBlockBuildersResult.add_member(:app_block_builders, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderList, location_name: 'AppBlockBuilders', traits: {"smithy.api#documentation" => "<p>The list that describes one or more app block builders.</p>"}))
    DescribeAppBlockBuildersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlockBuildersResult.type = Types::DescribeAppBlockBuildersResult
    DescribeAppBlocksRequest.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>The ARNs of the app blocks.</p>"}))
    DescribeAppBlocksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlocksRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeAppBlocksRequest.type = Types::DescribeAppBlocksRequest
    DescribeAppBlocksResult.add_member(:app_blocks, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlocks, location_name: 'AppBlocks', traits: {"smithy.api#documentation" => "<p>The app blocks in the list.</p>"}))
    DescribeAppBlocksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeAppBlocksResult.type = Types::DescribeAppBlocksResult
    DescribeApplicationFleetAssociationsRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'FleetName', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>"}))
    DescribeApplicationFleetAssociationsRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationArn', traits: {"smithy.api#documentation" => "<p>The ARN of the application.</p>"}))
    DescribeApplicationFleetAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeApplicationFleetAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeApplicationFleetAssociationsRequest.type = Types::DescribeApplicationFleetAssociationsRequest
    DescribeApplicationFleetAssociationsResult.add_member(:application_fleet_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationFleetAssociationList, location_name: 'ApplicationFleetAssociations', traits: {"smithy.api#documentation" => "<p>The application fleet associations in the list.</p>"}))
    DescribeApplicationFleetAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeApplicationFleetAssociationsResult.type = Types::DescribeApplicationFleetAssociationsResult
    DescribeApplicationsRequest.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>The ARNs for the applications.</p>"}))
    DescribeApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeApplicationsRequest.type = Types::DescribeApplicationsRequest
    DescribeApplicationsResult.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: Applications, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>The applications in the list.</p>"}))
    DescribeApplicationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeApplicationsResult.type = Types::DescribeApplicationsResult
    DescribeDirectoryConfigsRequest.add_member(:directory_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryNameList, location_name: 'DirectoryNames', traits: {"smithy.api#documentation" => "<p>The directory names.</p>"}))
    DescribeDirectoryConfigsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeDirectoryConfigsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeDirectoryConfigsRequest.type = Types::DescribeDirectoryConfigsRequest
    DescribeDirectoryConfigsResult.add_member(:directory_configs, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfigList, location_name: 'DirectoryConfigs', traits: {"smithy.api#documentation" => "<p>Information about the directory configurations. Note that although the response syntax in this topic includes the account password, this password is not returned in the actual response. </p>"}))
    DescribeDirectoryConfigsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeDirectoryConfigsResult.type = Types::DescribeDirectoryConfigsResult
    DescribeEntitlementsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the entitlement.</p>"}))
    DescribeEntitlementsRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    DescribeEntitlementsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.</p>"}))
    DescribeEntitlementsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeEntitlementsRequest.type = Types::DescribeEntitlementsRequest
    DescribeEntitlementsResult.add_member(:entitlements, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementList, location_name: 'Entitlements', traits: {"smithy.api#documentation" => "<p>The entitlements.</p>"}))
    DescribeEntitlementsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n            operation.</p>"}))
    DescribeEntitlementsResult.type = Types::DescribeEntitlementsResult
    DescribeFleetsRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the fleets to describe.</p>"}))
    DescribeFleetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeFleetsRequest.type = Types::DescribeFleetsRequest
    DescribeFleetsResult.add_member(:fleets, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetList, location_name: 'Fleets', traits: {"smithy.api#documentation" => "<p>Information about the fleets.</p>"}))
    DescribeFleetsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeFleetsResult.type = Types::DescribeFleetsResult
    DescribeImageBuildersRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the image builders to describe.</p>"}))
    DescribeImageBuildersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeImageBuildersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeImageBuildersRequest.type = Types::DescribeImageBuildersRequest
    DescribeImageBuildersResult.add_member(:image_builders, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilderList, location_name: 'ImageBuilders', traits: {"smithy.api#documentation" => "<p>Information about the image builders.</p>"}))
    DescribeImageBuildersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeImageBuildersResult.type = Types::DescribeImageBuildersResult
    DescribeImagePermissionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the private image for which to describe permissions. The image must be one that you own. </p>", "smithy.api#required" => {}}))
    DescribeImagePermissionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeImagePermissionsRequest.add_member(:shared_aws_account_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountIdList, location_name: 'SharedAwsAccountIds', traits: {"smithy.api#documentation" => "<p>The 12-digit identifier of one or more AWS accounts with which the image is shared.</p>"}))
    DescribeImagePermissionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeImagePermissionsRequest.type = Types::DescribeImagePermissionsRequest
    DescribeImagePermissionsResult.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the private image.</p>"}))
    DescribeImagePermissionsResult.add_member(:shared_image_permissions_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SharedImagePermissionsList, location_name: 'SharedImagePermissionsList', traits: {"smithy.api#documentation" => "<p>The permissions for a private image that you own. </p>"}))
    DescribeImagePermissionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeImagePermissionsResult.type = Types::DescribeImagePermissionsResult
    DescribeImagesRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the public or private images to describe.</p>"}))
    DescribeImagesRequest.add_member(:arns, Smithy::Schema::Shapes::ShapeRef.new(shape: ArnList, location_name: 'Arns', traits: {"smithy.api#documentation" => "<p>The ARNs of the public, private, and shared images to describe.</p>"}))
    DescribeImagesRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of image (public, private, or shared) to describe. </p>"}))
    DescribeImagesRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeImagesRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesMaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeImagesRequest.type = Types::DescribeImagesRequest
    DescribeImagesResult.add_member(:images, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageList, location_name: 'Images', traits: {"smithy.api#documentation" => "<p>Information about the images.</p>"}))
    DescribeImagesResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeImagesResult.type = Types::DescribeImagesResult
    DescribeSessionsRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack. This value is case-sensitive.</p>", "smithy.api#required" => {}}))
    DescribeSessionsRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet. This value is case-sensitive.</p>", "smithy.api#required" => {}}))
    DescribeSessionsRequest.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#documentation" => "<p>The user identifier (ID). If you specify a user ID, you must also specify the authentication type.</p>"}))
    DescribeSessionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeSessionsRequest.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The size of each page of results. The default value is 20 and the maximum value is 50.</p>"}))
    DescribeSessionsRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#documentation" => "<p>The authentication method. Specify <code>API</code> for a user\n            authenticated using a streaming URL or <code>SAML</code> for a SAML federated user. \n            The default is to authenticate users using a streaming URL.</p>"}))
    DescribeSessionsRequest.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The identifier for the instance hosting the session.</p>"}))
    DescribeSessionsRequest.type = Types::DescribeSessionsRequest
    DescribeSessionsResult.add_member(:sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionList, location_name: 'Sessions', traits: {"smithy.api#documentation" => "<p>Information about the streaming sessions.</p>"}))
    DescribeSessionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeSessionsResult.type = Types::DescribeSessionsResult
    DescribeStacksRequest.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The names of the stacks to describe.</p>"}))
    DescribeStacksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeStacksRequest.type = Types::DescribeStacksRequest
    DescribeStacksResult.add_member(:stacks, Smithy::Schema::Shapes::ShapeRef.new(shape: StackList, location_name: 'Stacks', traits: {"smithy.api#documentation" => "<p>Information about the stacks.</p>"}))
    DescribeStacksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeStacksResult.type = Types::DescribeStacksResult
    DescribeThemeForStackRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack for the theme.</p>", "smithy.api#required" => {}}))
    DescribeThemeForStackRequest.type = Types::DescribeThemeForStackRequest
    DescribeThemeForStackResult.add_member(:theme, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'Theme', traits: {"smithy.api#documentation" => "<p> The theme object that contains the metadata of the custom branding.</p>"}))
    DescribeThemeForStackResult.type = Types::DescribeThemeForStackResult
    DescribeUsageReportSubscriptionsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeUsageReportSubscriptionsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeUsageReportSubscriptionsRequest.type = Types::DescribeUsageReportSubscriptionsRequest
    DescribeUsageReportSubscriptionsResult.add_member(:usage_report_subscriptions, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageReportSubscriptionList, location_name: 'UsageReportSubscriptions', traits: {"smithy.api#documentation" => "<p>Information about the usage report subscription.</p>"}))
    DescribeUsageReportSubscriptionsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeUsageReportSubscriptionsResult.type = Types::DescribeUsageReportSubscriptionsResult
    DescribeUserStackAssociationsRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#documentation" => "<p>The name of the stack that is associated with the user.</p>"}))
    DescribeUserStackAssociationsRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The email address of the user who is associated with the stack.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive.</p>\n         </note>"}))
    DescribeUserStackAssociationsRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#documentation" => "<p>The authentication type for the user who is associated with the stack. You must specify USERPOOL.</p>"}))
    DescribeUserStackAssociationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeUserStackAssociationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeUserStackAssociationsRequest.type = Types::DescribeUserStackAssociationsRequest
    DescribeUserStackAssociationsResult.add_member(:user_stack_associations, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationList, location_name: 'UserStackAssociations', traits: {"smithy.api#documentation" => "<p>The UserStackAssociation objects.</p>"}))
    DescribeUserStackAssociationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeUserStackAssociationsResult.type = Types::DescribeUserStackAssociationsResult
    DescribeUsersRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the users in the user pool to describe. You must specify USERPOOL.</p>", "smithy.api#required" => {}}))
    DescribeUsersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    DescribeUsersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    DescribeUsersRequest.type = Types::DescribeUsersRequest
    DescribeUsersResult.add_member(:users, Smithy::Schema::Shapes::ShapeRef.new(shape: UserList, location_name: 'Users', traits: {"smithy.api#documentation" => "<p>Information about users in the user pool.</p>"}))
    DescribeUsersResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    DescribeUsersResult.type = Types::DescribeUsersResult
    DirectoryConfig.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The fully qualified name of the directory (for example, corp.example.com).</p>", "smithy.api#required" => {}}))
    DirectoryConfig.add_member(:organizational_unit_distinguished_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: 'OrganizationalUnitDistinguishedNames', traits: {"smithy.api#documentation" => "<p>The distinguished names of the organizational units for computer accounts.</p>"}))
    DirectoryConfig.add_member(:service_account_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: 'ServiceAccountCredentials', traits: {"smithy.api#documentation" => "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"}))
    DirectoryConfig.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time the directory configuration was created.</p>"}))
    DirectoryConfig.add_member(:certificate_based_auth_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: 'CertificateBasedAuthProperties', traits: {"smithy.api#documentation" => "<p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity\n            Provider (IdP) user identities to Active Directory domain-joined streaming instances.\n            Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD\n            domain password if certificate-based authentication is unsuccessful, or to unlock a\n            desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based\n            authentication, but does not allow users to log in using their AD domain password. Users\n            will be disconnected to re-authenticate using certificates.</p>"}))
    DirectoryConfig.type = Types::DirectoryConfig
    DirectoryConfigList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfig)
    DirectoryNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName)
    DisableUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address of the user.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive.</p>\n         </note>", "smithy.api#required" => {}}))
    DisableUserRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user. You must specify USERPOOL.</p>", "smithy.api#required" => {}}))
    DisableUserRequest.type = Types::DisableUserRequest
    DisableUserResult.type = Types::DisableUserResult
    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the app block.</p>", "smithy.api#required" => {}}))
    DisassociateAppBlockBuilderAppBlockRequest.add_member(:app_block_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'AppBlockBuilderName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    DisassociateAppBlockBuilderAppBlockRequest.type = Types::DisassociateAppBlockBuilderAppBlockRequest
    DisassociateAppBlockBuilderAppBlockResult.type = Types::DisassociateAppBlockBuilderAppBlockResult
    DisassociateApplicationFleetRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationFleetRequest.add_member(:application_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ApplicationArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The ARN of the application.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationFleetRequest.type = Types::DisassociateApplicationFleetRequest
    DisassociateApplicationFleetResult.type = Types::DisassociateApplicationFleetResult
    DisassociateApplicationFromEntitlementRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.add_member(:entitlement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'EntitlementName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the application to remove from the entitlement.</p>", "smithy.api#required" => {}}))
    DisassociateApplicationFromEntitlementRequest.type = Types::DisassociateApplicationFromEntitlementRequest
    DisassociateApplicationFromEntitlementResult.type = Types::DisassociateApplicationFromEntitlementResult
    DisassociateFleetRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    DisassociateFleetRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    DisassociateFleetRequest.type = Types::DisassociateFleetRequest
    DisassociateFleetResult.type = Types::DisassociateFleetResult
    DomainJoinInfo.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#documentation" => "<p>The fully qualified name of the directory (for example, corp.example.com).</p>"}))
    DomainJoinInfo.add_member(:organizational_unit_distinguished_name, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName, location_name: 'OrganizationalUnitDistinguishedName', traits: {"smithy.api#documentation" => "<p>The distinguished name of the organizational unit for computer accounts.</p>"}))
    DomainJoinInfo.type = Types::DomainJoinInfo
    DomainList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Domain)
    DynamicAppProvidersEnabled.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    DynamicAppProvidersEnabled.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    EmbedHostDomains.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EmbedHostDomain)
    EnableUserRequest.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address of the user.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive. During login, if they specify an email address that doesn't use the same capitalization as the email address specified when their user pool account was created, a \"user does not exist\" error message displays. </p>\n         </note>", "smithy.api#required" => {}}))
    EnableUserRequest.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user. You must specify USERPOOL.</p>", "smithy.api#required" => {}}))
    EnableUserRequest.type = Types::EnableUserRequest
    EnableUserResult.type = Types::EnableUserResult
    EntitledApplication.add_member(:application_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApplicationIdentifier', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the application.</p>", "smithy.api#required" => {}}))
    EntitledApplication.type = Types::EntitledApplication
    EntitledApplicationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntitledApplication)
    Entitlement.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the entitlement.</p>"}))
    Entitlement.add_member(:app_visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: AppVisibility, location_name: 'AppVisibility', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Specifies whether all or selected apps are entitled.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAttributeList, location_name: 'Attributes', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The attributes of the entitlement.</p>", "smithy.api#required" => {}}))
    Entitlement.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time when the entitlement was created.</p>"}))
    Entitlement.add_member(:last_modified_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastModifiedTime', traits: {"smithy.api#documentation" => "<p>The time when the entitlement was last modified.</p>"}))
    Entitlement.type = Types::Entitlement
    EntitlementAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EntitlementAlreadyExistsException.type = Types::EntitlementAlreadyExistsException
    EntitlementAttribute.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A supported AWS IAM SAML <code>PrincipalTag</code> attribute that is matched to the\n            associated value when a user identity federates into an Amazon AppStream 2.0 SAML\n            application.</p>\n         <p>The following are valid values:</p>\n         <ul>\n            <li>\n               <p>roles</p>\n            </li>\n            <li>\n               <p>department </p>\n            </li>\n            <li>\n               <p>organization </p>\n            </li>\n            <li>\n               <p>groups </p>\n            </li>\n            <li>\n               <p>title </p>\n            </li>\n            <li>\n               <p>costCenter </p>\n            </li>\n            <li>\n               <p>userType</p>\n            </li>\n         </ul>\n         <p> </p>", "smithy.api#required" => {}}))
    EntitlementAttribute.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Value', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>A value that is matched to a supported SAML attribute name when a user identity\n            federates into an Amazon AppStream 2.0 SAML application. </p>", "smithy.api#required" => {}}))
    EntitlementAttribute.type = Types::EntitlementAttribute
    EntitlementAttributeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAttribute)
    EntitlementList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Entitlement)
    EntitlementNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    EntitlementNotFoundException.type = Types::EntitlementNotFoundException
    ErrorDetails.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    ErrorDetails.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    ErrorDetails.type = Types::ErrorDetails
    ErrorDetailsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorDetails)
    ExpireSessionRequest.add_member(:session_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SessionId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the streaming session.</p>", "smithy.api#required" => {}}))
    ExpireSessionRequest.type = Types::ExpireSessionRequest
    ExpireSessionResult.type = Types::ExpireSessionResult
    Fleet.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the fleet.</p>", "smithy.api#required" => {}}))
    Fleet.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    Fleet.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The fleet name to display.</p>"}))
    Fleet.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    Fleet.add_member(:image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageName', traits: {"smithy.api#documentation" => "<p>The name of the image used to create the fleet.</p>"}))
    Fleet.add_member(:image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ImageArn', traits: {"smithy.api#documentation" => "<p>The ARN for the public, private, or shared image.</p>"}))
    Fleet.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The instance type to use when launching fleet instances. The following instance types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.compute.large</p>\n            </li>\n            <li>\n               <p>stream.compute.xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.large</p>\n            </li>\n            <li>\n               <p>stream.memory.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.large</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.3xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.6xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.large</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-desktop.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.8xlarge</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    Fleet.add_member(:fleet_type, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetType, location_name: 'FleetType', traits: {"smithy.api#documentation" => "<p>The fleet type.</p>\n         <dl>\n            <dt>ALWAYS_ON</dt>\n            <dd>\n               <p>Provides users with instant-on access to their apps.\n                        You are charged for all running instances in your fleet, even if no users are streaming apps.</p>\n            </dd>\n            <dt>ON_DEMAND</dt>\n            <dd>\n               <p>Provide users with access to applications after they connect, which takes one to two minutes.\n                        You are charged for instance streaming when users are connected and a\n                        small hourly fee for instances that are not streaming apps.</p>\n            </dd>\n         </dl>"}))
    Fleet.add_member(:compute_capacity_status, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeCapacityStatus, location_name: 'ComputeCapacityStatus', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The capacity status for the fleet.</p>", "smithy.api#required" => {}}))
    Fleet.add_member(:max_user_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxUserDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance. </p>\n         <p>Specify a value between 600 and 360000.</p>"}))
    Fleet.add_member(:disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users disconnect. If they try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance.</p>\n         <p>Specify a value between 60 and 36000.</p>"}))
    Fleet.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The current state for the fleet.</p>", "smithy.api#required" => {}}))
    Fleet.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the fleet.</p>"}))
    Fleet.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time the fleet was created.</p>"}))
    Fleet.add_member(:fleet_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetErrors, location_name: 'FleetErrors', traits: {"smithy.api#documentation" => "<p>The fleet errors.</p>"}))
    Fleet.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Indicates whether default internet access is enabled for the fleet.</p>"}))
    Fleet.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: 'DomainJoinInfo', traits: {"smithy.api#documentation" => "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>"}))
    Fleet.add_member(:idle_disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IdleDisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected\n            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time\n            interval begins. Users are notified before they are disconnected due to inactivity. If\n            users try to reconnect to the streaming session before the time interval specified in\n            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their\n            previous session. Users are considered idle when they stop providing keyboard or mouse\n            input during their streaming session. File uploads and downloads, audio in, audio out,\n            and pixels changing do not qualify as user activity. If users continue to be idle after\n            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are\n            disconnected.</p>\n         <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>\n         <note>\n            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>\n         </note>"}))
    Fleet.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is applied to the fleet. To assume a role, the fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    Fleet.add_member(:stream_view, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamView, location_name: 'StreamView', traits: {"smithy.api#documentation" => "<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>\n         <p>The default value is <code>APP</code>.</p>"}))
    Fleet.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The platform of the fleet.</p>"}))
    Fleet.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for the fleet.</p>"}))
    Fleet.add_member(:usb_device_filter_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: 'UsbDeviceFilterStrings', traits: {"smithy.api#documentation" => "<p>The USB device filter strings associated with the fleet.</p>"}))
    Fleet.add_member(:session_script_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SessionScriptS3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets.</p>"}))
    Fleet.add_member(:max_sessions_per_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxSessionsPerInstance', traits: {"smithy.api#documentation" => "<p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>"}))
    Fleet.type = Types::Fleet
    FleetAttribute.add_member(:vpc_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_CONFIGURATION', traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION"}))
    FleetAttribute.add_member(:vpc_configuration_security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'VPC_CONFIGURATION_SECURITY_GROUP_IDS', traits: {"smithy.api#enumValue" => "VPC_CONFIGURATION_SECURITY_GROUP_IDS"}))
    FleetAttribute.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_INFO', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INFO"}))
    FleetAttribute.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_ARN', traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    FleetAttribute.add_member(:usb_device_filter_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USB_DEVICE_FILTER_STRINGS', traits: {"smithy.api#enumValue" => "USB_DEVICE_FILTER_STRINGS"}))
    FleetAttribute.add_member(:session_script_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SESSION_SCRIPT_S3_LOCATION', traits: {"smithy.api#enumValue" => "SESSION_SCRIPT_S3_LOCATION"}))
    FleetAttribute.add_member(:max_sessions_per_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MAX_SESSIONS_PER_INSTANCE', traits: {"smithy.api#enumValue" => "MAX_SESSIONS_PER_INSTANCE"}))
    FleetAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAttribute)
    FleetError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    FleetError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    FleetError.type = Types::FleetError
    FleetErrorCode.add_member(:iam_service_role_missing_eni_describe_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DESCRIBE_ACTION"}))
    FleetErrorCode.add_member(:iam_service_role_missing_eni_create_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_CREATE_ACTION"}))
    FleetErrorCode.add_member(:iam_service_role_missing_eni_delete_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_ENI_DELETE_ACTION"}))
    FleetErrorCode.add_member(:network_interface_limit_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NETWORK_INTERFACE_LIMIT_EXCEEDED', traits: {"smithy.api#enumValue" => "NETWORK_INTERFACE_LIMIT_EXCEEDED"}))
    FleetErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    FleetErrorCode.add_member(:iam_service_role_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_IS_MISSING', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_IS_MISSING"}))
    FleetErrorCode.add_member(:machine_role_is_missing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'MACHINE_ROLE_IS_MISSING', traits: {"smithy.api#enumValue" => "MACHINE_ROLE_IS_MISSING"}))
    FleetErrorCode.add_member(:sts_disabled_in_region, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STS_DISABLED_IN_REGION', traits: {"smithy.api#enumValue" => "STS_DISABLED_IN_REGION"}))
    FleetErrorCode.add_member(:subnet_has_insufficient_ip_addresses, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES', traits: {"smithy.api#enumValue" => "SUBNET_HAS_INSUFFICIENT_IP_ADDRESSES"}))
    FleetErrorCode.add_member(:iam_service_role_missing_describe_subnet_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SUBNET_ACTION"}))
    FleetErrorCode.add_member(:subnet_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUBNET_NOT_FOUND', traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    FleetErrorCode.add_member(:image_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_NOT_FOUND', traits: {"smithy.api#enumValue" => "IMAGE_NOT_FOUND"}))
    FleetErrorCode.add_member(:invalid_subnet_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INVALID_SUBNET_CONFIGURATION', traits: {"smithy.api#enumValue" => "INVALID_SUBNET_CONFIGURATION"}))
    FleetErrorCode.add_member(:security_groups_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SECURITY_GROUPS_NOT_FOUND', traits: {"smithy.api#enumValue" => "SECURITY_GROUPS_NOT_FOUND"}))
    FleetErrorCode.add_member(:igw_not_attached, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IGW_NOT_ATTACHED', traits: {"smithy.api#enumValue" => "IGW_NOT_ATTACHED"}))
    FleetErrorCode.add_member(:iam_service_role_missing_describe_security_groups_action, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION', traits: {"smithy.api#enumValue" => "IAM_SERVICE_ROLE_MISSING_DESCRIBE_SECURITY_GROUPS_ACTION"}))
    FleetErrorCode.add_member(:fleet_stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_STOPPED', traits: {"smithy.api#enumValue" => "FLEET_STOPPED"}))
    FleetErrorCode.add_member(:fleet_instance_provisioning_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FLEET_INSTANCE_PROVISIONING_FAILURE', traits: {"smithy.api#enumValue" => "FLEET_INSTANCE_PROVISIONING_FAILURE"}))
    FleetErrorCode.add_member(:domain_join_error_file_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_FILE_NOT_FOUND', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_FILE_NOT_FOUND"}))
    FleetErrorCode.add_member(:domain_join_error_access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_ACCESS_DENIED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_ACCESS_DENIED"}))
    FleetErrorCode.add_member(:domain_join_error_logon_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_LOGON_FAILURE', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_LOGON_FAILURE"}))
    FleetErrorCode.add_member(:domain_join_error_invalid_parameter, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_INVALID_PARAMETER', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_INVALID_PARAMETER"}))
    FleetErrorCode.add_member(:domain_join_error_more_data, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_MORE_DATA', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_MORE_DATA"}))
    FleetErrorCode.add_member(:domain_join_error_no_such_domain, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NO_SUCH_DOMAIN"}))
    FleetErrorCode.add_member(:domain_join_error_not_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_NOT_SUPPORTED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_NOT_SUPPORTED"}))
    FleetErrorCode.add_member(:domain_join_nerr_invalid_workgroup_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_INVALID_WORKGROUP_NAME"}))
    FleetErrorCode.add_member(:domain_join_nerr_workstation_not_started, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_WORKSTATION_NOT_STARTED"}))
    FleetErrorCode.add_member(:domain_join_error_ds_machine_account_quota_exceeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_ERROR_DS_MACHINE_ACCOUNT_QUOTA_EXCEEDED"}))
    FleetErrorCode.add_member(:domain_join_nerr_password_expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_NERR_PASSWORD_EXPIRED', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_NERR_PASSWORD_EXPIRED"}))
    FleetErrorCode.add_member(:domain_join_internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DOMAIN_JOIN_INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "DOMAIN_JOIN_INTERNAL_SERVICE_ERROR"}))
    FleetErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FleetError)
    FleetList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet)
    FleetState.add_member(:starting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STARTING', traits: {"smithy.api#enumValue" => "STARTING"}))
    FleetState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    FleetState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    FleetState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    FleetType.add_member(:always_on, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALWAYS_ON', traits: {"smithy.api#enumValue" => "ALWAYS_ON"}))
    FleetType.add_member(:on_demand, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ON_DEMAND', traits: {"smithy.api#enumValue" => "ON_DEMAND"}))
    FleetType.add_member(:elastic, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ELASTIC', traits: {"smithy.api#enumValue" => "ELASTIC"}))
    Image.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image.</p>", "smithy.api#required" => {}}))
    Image.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the image.</p>"}))
    Image.add_member(:base_image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'BaseImageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the image from which this image was created.</p>"}))
    Image.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The image name to display.</p>"}))
    Image.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The image starts in the <code>PENDING</code> state. If image creation succeeds, the\n            state is <code>AVAILABLE</code>. If image creation fails, the state is <code>FAILED</code>.</p>"}))
    Image.add_member(:visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: VisibilityType, location_name: 'Visibility', traits: {"smithy.api#documentation" => "<p>Indicates whether the image is public or private.</p>"}))
    Image.add_member(:image_builder_supported, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ImageBuilderSupported', traits: {"smithy.api#documentation" => "<p>Indicates whether an image builder can be launched from this image.</p>"}))
    Image.add_member(:image_builder_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageBuilderName', traits: {"smithy.api#documentation" => "<p>The name of the image builder that was used to create the private image. If the image is shared, copied, or updated by using Managed Image Updates, this value is null.</p>"}))
    Image.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The operating system platform of the image.</p>"}))
    Image.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    Image.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageStateChangeReason, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>The reason why the last state change occurred.</p>"}))
    Image.add_member(:applications, Smithy::Schema::Shapes::ShapeRef.new(shape: Applications, location_name: 'Applications', traits: {"smithy.api#documentation" => "<p>The applications associated with the image.</p>"}))
    Image.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time the image was created.</p>"}))
    Image.add_member(:public_base_image_released_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'PublicBaseImageReleasedDate', traits: {"smithy.api#documentation" => "<p>The release date of the public base image. \n            For private images, this date is the release date of the base image from which the image was created.</p>"}))
    Image.add_member(:appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: 'AppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>The version of the AppStream 2.0 agent to use for instances that are launched from this image. </p>"}))
    Image.add_member(:image_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePermissions, location_name: 'ImagePermissions', traits: {"smithy.api#documentation" => "<p>The permissions to provide to the destination AWS account for the specified image.</p>"}))
    Image.add_member(:image_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceErrors, location_name: 'ImageErrors', traits: {"smithy.api#documentation" => "<p>Describes the errors that are returned when a new image can't be created.</p>"}))
    Image.add_member(:latest_appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestAppstreamAgentVersion, location_name: 'LatestAppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>Indicates whether the image is using the latest AppStream 2.0 agent version or not.</p>"}))
    Image.add_member(:supported_instance_families, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'SupportedInstanceFamilies', traits: {"smithy.api#documentation" => "<p>The supported instances families that determine which image a customer can use when the customer launches a fleet or image builder. The following instances families are supported:</p>\n         <ul>\n            <li>\n               <p>General Purpose</p>\n            </li>\n            <li>\n               <p>Compute Optimized</p>\n            </li>\n            <li>\n               <p>Memory Optimized</p>\n            </li>\n            <li>\n               <p>Graphics</p>\n            </li>\n            <li>\n               <p>Graphics Design</p>\n            </li>\n            <li>\n               <p>Graphics Pro</p>\n            </li>\n            <li>\n               <p>Graphics G4</p>\n            </li>\n            <li>\n               <p>Graphics G5</p>\n            </li>\n         </ul>"}))
    Image.add_member(:dynamic_app_providers_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicAppProvidersEnabled, location_name: 'DynamicAppProvidersEnabled', traits: {"smithy.api#documentation" => "<p>Indicates whether dynamic app providers are enabled within an AppStream 2.0 image or not.</p>"}))
    Image.add_member(:image_shared_with_others, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageSharedWithOthers, location_name: 'ImageSharedWithOthers', traits: {"smithy.api#documentation" => "<p>Indicates whether the image is shared with another account ID.</p>"}))
    Image.type = Types::Image
    ImageBuilder.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image builder.</p>", "smithy.api#required" => {}}))
    ImageBuilder.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the image builder.</p>"}))
    ImageBuilder.add_member(:image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ImageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the image from which this builder was created.</p>"}))
    ImageBuilder.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    ImageBuilder.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The image builder name to display.</p>"}))
    ImageBuilder.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration of the image builder.</p>"}))
    ImageBuilder.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type for the image builder. The following instance types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.compute.large</p>\n            </li>\n            <li>\n               <p>stream.compute.xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.large</p>\n            </li>\n            <li>\n               <p>stream.memory.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.large</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.3xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.6xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.large</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-desktop.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g5.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g6.24xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.gr6.8xlarge</p>\n            </li>\n         </ul>"}))
    ImageBuilder.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The operating system platform of the image builder.</p>"}))
    ImageBuilder.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that is applied to the image builder. To assume a role, the image builder calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    ImageBuilder.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilderState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the image builder.</p>"}))
    ImageBuilder.add_member(:state_change_reason, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReason, location_name: 'StateChangeReason', traits: {"smithy.api#documentation" => "<p>The reason why the last state change occurred.</p>"}))
    ImageBuilder.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time stamp when the image builder was created.</p>"}))
    ImageBuilder.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the image builder.</p>"}))
    ImageBuilder.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: 'DomainJoinInfo', traits: {"smithy.api#documentation" => "<p>The name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. </p>"}))
    ImageBuilder.add_member(:network_access_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'NetworkAccessConfiguration'))
    ImageBuilder.add_member(:image_builder_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceErrors, location_name: 'ImageBuilderErrors', traits: {"smithy.api#documentation" => "<p>The image builder errors.</p>"}))
    ImageBuilder.add_member(:appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: 'AppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>The version of the AppStream 2.0 agent that is currently being used by the image builder. </p>"}))
    ImageBuilder.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of virtual private cloud (VPC) interface endpoint objects. Administrators can connect to the image builder only through the specified endpoints.</p>"}))
    ImageBuilder.add_member(:latest_appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: LatestAppstreamAgentVersion, location_name: 'LatestAppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>Indicates whether the image builder is using the latest AppStream 2.0 agent version or not.</p>"}))
    ImageBuilder.type = Types::ImageBuilder
    ImageBuilderList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilder)
    ImageBuilderState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageBuilderState.add_member(:updating_agent, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING_AGENT', traits: {"smithy.api#enumValue" => "UPDATING_AGENT"}))
    ImageBuilderState.add_member(:running, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RUNNING', traits: {"smithy.api#enumValue" => "RUNNING"}))
    ImageBuilderState.add_member(:stopping, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPING', traits: {"smithy.api#enumValue" => "STOPPING"}))
    ImageBuilderState.add_member(:stopped, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STOPPED', traits: {"smithy.api#enumValue" => "STOPPED"}))
    ImageBuilderState.add_member(:rebooting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REBOOTING', traits: {"smithy.api#enumValue" => "REBOOTING"}))
    ImageBuilderState.add_member(:snapshotting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SNAPSHOTTING', traits: {"smithy.api#enumValue" => "SNAPSHOTTING"}))
    ImageBuilderState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageBuilderState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageBuilderState.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    ImageBuilderState.add_member(:pending_qualification, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING_QUALIFICATION', traits: {"smithy.api#enumValue" => "PENDING_QUALIFICATION"}))
    ImageBuilderStateChangeReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilderStateChangeReasonCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The state change reason code.</p>"}))
    ImageBuilderStateChangeReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The state change reason message.</p>"}))
    ImageBuilderStateChangeReason.type = Types::ImageBuilderStateChangeReason
    ImageBuilderStateChangeReasonCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImageBuilderStateChangeReasonCode.add_member(:image_unavailable, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_UNAVAILABLE', traits: {"smithy.api#enumValue" => "IMAGE_UNAVAILABLE"}))
    ImageList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Image)
    ImagePermissions.add_member(:allow_fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'allowFleet', traits: {"smithy.api#documentation" => "<p>Indicates whether the image can be used for a fleet.</p>"}))
    ImagePermissions.add_member(:allow_image_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'allowImageBuilder', traits: {"smithy.api#documentation" => "<p>Indicates whether the image can be used for an image builder.</p>"}))
    ImagePermissions.type = Types::ImagePermissions
    ImageSharedWithOthers.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    ImageSharedWithOthers.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    ImageState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    ImageState.add_member(:available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AVAILABLE', traits: {"smithy.api#enumValue" => "AVAILABLE"}))
    ImageState.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    ImageState.add_member(:copying, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COPYING', traits: {"smithy.api#enumValue" => "COPYING"}))
    ImageState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    ImageState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    ImageState.add_member(:importing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPORTING', traits: {"smithy.api#enumValue" => "IMPORTING"}))
    ImageStateChangeReason.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageStateChangeReasonCode, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The state change reason code.</p>"}))
    ImageStateChangeReason.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The state change reason message.</p>"}))
    ImageStateChangeReason.type = Types::ImageStateChangeReason
    ImageStateChangeReasonCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    ImageStateChangeReasonCode.add_member(:image_builder_not_available, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_BUILDER_NOT_AVAILABLE', traits: {"smithy.api#enumValue" => "IMAGE_BUILDER_NOT_AVAILABLE"}))
    ImageStateChangeReasonCode.add_member(:image_copy_failure, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMAGE_COPY_FAILURE', traits: {"smithy.api#enumValue" => "IMAGE_COPY_FAILURE"}))
    IncompatibleImageException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    IncompatibleImageException.type = Types::IncompatibleImageException
    InvalidAccountStatusException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidAccountStatusException.type = Types::InvalidAccountStatusException
    InvalidParameterCombinationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidParameterCombinationException.type = Types::InvalidParameterCombinationException
    InvalidRoleException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidRoleException.type = Types::InvalidRoleException
    LastReportGenerationExecutionError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageReportExecutionErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for the error that is returned when a usage report can't be generated.</p>"}))
    LastReportGenerationExecutionError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message for the error that is returned when a usage report can't be generated.</p>"}))
    LastReportGenerationExecutionError.type = Types::LastReportGenerationExecutionError
    LastReportGenerationExecutionErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LastReportGenerationExecutionError)
    LatestAppstreamAgentVersion.add_member(:true, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TRUE', traits: {"smithy.api#enumValue" => "TRUE"}))
    LatestAppstreamAgentVersion.add_member(:false, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FALSE', traits: {"smithy.api#enumValue" => "FALSE"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    ListAssociatedFleetsRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    ListAssociatedFleetsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListAssociatedFleetsRequest.type = Types::ListAssociatedFleetsRequest
    ListAssociatedFleetsResult.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The name of the fleet.</p>"}))
    ListAssociatedFleetsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListAssociatedFleetsResult.type = Types::ListAssociatedFleetsResult
    ListAssociatedStacksRequest.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    ListAssociatedStacksRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If this value is null, it retrieves the first page.</p>"}))
    ListAssociatedStacksRequest.type = Types::ListAssociatedStacksRequest
    ListAssociatedStacksResult.add_member(:names, Smithy::Schema::Shapes::ShapeRef.new(shape: StringList, location_name: 'Names', traits: {"smithy.api#documentation" => "<p>The name of the stack.</p>"}))
    ListAssociatedStacksResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token to use to retrieve the next page of results for this operation. If there are no more pages, this value is null.</p>"}))
    ListAssociatedStacksResult.type = Types::ListAssociatedStacksResult
    ListEntitledApplicationsRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    ListEntitledApplicationsRequest.add_member(:entitlement_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'EntitlementName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    ListEntitledApplicationsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.</p>"}))
    ListEntitledApplicationsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum size of each page of results.</p>"}))
    ListEntitledApplicationsRequest.type = Types::ListEntitledApplicationsRequest
    ListEntitledApplicationsResult.add_member(:entitled_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitledApplicationList, location_name: 'EntitledApplications', traits: {"smithy.api#documentation" => "<p>The entitled applications.</p>"}))
    ListEntitledApplicationsResult.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this operation.</p>"}))
    ListEntitledApplicationsResult.type = Types::ListEntitledApplicationsResult
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The information about the tags.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    MessageAction.add_member(:suppress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SUPPRESS', traits: {"smithy.api#enumValue" => "SUPPRESS"}))
    MessageAction.add_member(:resend, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESEND', traits: {"smithy.api#enumValue" => "RESEND"}))
    Metadata.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Metadata.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NetworkAccessConfiguration.add_member(:eni_private_ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EniPrivateIpAddress', traits: {"smithy.api#documentation" => "<p>The private IP address of the elastic network interface that is attached to instances in your VPC.</p>"}))
    NetworkAccessConfiguration.add_member(:eni_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EniId', traits: {"smithy.api#documentation" => "<p>The resource identifier of the elastic network interface that is attached to instances in your VPC. All network interfaces have the eni-xxxxxxxx resource identifier.</p>"}))
    NetworkAccessConfiguration.type = Types::NetworkAccessConfiguration
    OperationNotPermittedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    OperationNotPermittedException.type = Types::OperationNotPermittedException
    OrganizationalUnitDistinguishedNamesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedName)
    PackagingType.add_member(:custom, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CUSTOM', traits: {"smithy.api#enumValue" => "CUSTOM"}))
    PackagingType.add_member(:appstream2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APPSTREAM2', traits: {"smithy.api#enumValue" => "APPSTREAM2"}))
    Permission.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    Permission.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    PlatformType.add_member(:windows, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS', traits: {"smithy.api#enumValue" => "WINDOWS"}))
    PlatformType.add_member(:windows_server_2016, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2016', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2016"}))
    PlatformType.add_member(:windows_server_2019, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2019', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2019"}))
    PlatformType.add_member(:windows_server_2022, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WINDOWS_SERVER_2022', traits: {"smithy.api#enumValue" => "WINDOWS_SERVER_2022"}))
    PlatformType.add_member(:amazon_linux2, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AMAZON_LINUX2', traits: {"smithy.api#enumValue" => "AMAZON_LINUX2"}))
    PlatformType.add_member(:rhel8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RHEL8', traits: {"smithy.api#enumValue" => "RHEL8"}))
    PlatformType.add_member(:rocky_linux8, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ROCKY_LINUX8', traits: {"smithy.api#enumValue" => "ROCKY_LINUX8"}))
    Platforms.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType)
    PreferredProtocol.add_member(:tcp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'TCP', traits: {"smithy.api#enumValue" => "TCP"}))
    PreferredProtocol.add_member(:udp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UDP', traits: {"smithy.api#enumValue" => "UDP"}))
    RequestLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    RequestLimitExceededException.type = Types::RequestLimitExceededException
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    ResourceError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    ResourceError.add_member(:error_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ErrorTimestamp', traits: {"smithy.api#documentation" => "<p>The time the error occurred.</p>"}))
    ResourceError.type = Types::ResourceError
    ResourceErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceError)
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotAvailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotAvailableException.type = Types::ResourceNotAvailableException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 bucket of the S3 object.</p>", "smithy.api#required" => {}}))
    S3Location.add_member(:s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 'S3Key', traits: {"smithy.api#documentation" => "<p>The S3 key of the S3 object.</p>\n         <p>This is required when used for the following:</p>\n         <ul>\n            <li>\n               <p>IconS3Location (Actions: CreateApplication and UpdateApplication)</p>\n            </li>\n            <li>\n               <p>SessionScriptS3Location (Actions: CreateFleet and UpdateFleet)</p>\n            </li>\n            <li>\n               <p>ScriptDetails (Actions: CreateAppBlock)</p>\n            </li>\n            <li>\n               <p>SourceS3Location when creating an app block with <code>CUSTOM</code> PackagingType (Actions:\n                    CreateAppBlock)</p>\n            </li>\n            <li>\n               <p>SourceS3Location when creating an app block with <code>APPSTREAM2</code> PackagingType, and\n                    using an existing application package (VHD file). In this case,\n                        <code>S3Key</code> refers to the VHD file. If a new application package is\n                    required, then <code>S3Key</code> is not required. (Actions:\n                    CreateAppBlock)</p>\n            </li>\n         </ul>"}))
    S3Location.type = Types::S3Location
    ScriptDetails.add_member(:script_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'ScriptS3Location', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The S3 object location for the script.</p>", "smithy.api#required" => {}}))
    ScriptDetails.add_member(:executable_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExecutablePath', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The run path for the script.</p>", "smithy.api#required" => {}}))
    ScriptDetails.add_member(:executable_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExecutableParameters', traits: {"smithy.api#documentation" => "<p>The runtime parameters passed to the run path for the script.</p>"}))
    ScriptDetails.add_member(:timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'TimeoutInSeconds', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The run timeout, in seconds, for the script.</p>", "smithy.api#required" => {}}))
    ScriptDetails.type = Types::ScriptDetails
    SecurityGroupIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ServiceAccountCredentials.add_member(:account_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountName, location_name: 'AccountName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The user name of the account. This account must have the following privileges: create computer objects, \n            join computers to the domain, and change/reset the password on descendant computer objects for the \n            organizational units specified.</p>", "smithy.api#required" => {}}))
    ServiceAccountCredentials.add_member(:account_password, Smithy::Schema::Shapes::ShapeRef.new(shape: AccountPassword, location_name: 'AccountPassword', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The password for the account.</p>", "smithy.api#required" => {}}))
    ServiceAccountCredentials.type = Types::ServiceAccountCredentials
    Session.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Id', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the streaming session.</p>", "smithy.api#required" => {}}))
    Session.add_member(:user_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UserId, location_name: 'UserId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The identifier of the user for whom the session was created.</p>", "smithy.api#required" => {}}))
    Session.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack for the streaming session.</p>", "smithy.api#required" => {}}))
    Session.add_member(:fleet_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FleetName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet for the streaming session.</p>", "smithy.api#required" => {}}))
    Session.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionState, location_name: 'State', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The current state of the streaming session.</p>", "smithy.api#required" => {}}))
    Session.add_member(:connection_state, Smithy::Schema::Shapes::ShapeRef.new(shape: SessionConnectionState, location_name: 'ConnectionState', traits: {"smithy.api#documentation" => "<p>Specifies whether a user is connected to the streaming session.</p>"}))
    Session.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'StartTime', traits: {"smithy.api#documentation" => "<p>The time when a streaming instance is dedicated for the user.</p>"}))
    Session.add_member(:max_expiration_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'MaxExpirationTime', traits: {"smithy.api#documentation" => "<p>The time when the streaming session is set to expire. This time is based on the <code>MaxUserDurationinSeconds</code> value, which determines the maximum length of time that a streaming session can run. A streaming session might end earlier than the time specified in <code>SessionMaxExpirationTime</code>, when the <code>DisconnectTimeOutInSeconds</code> elapses or the user chooses to end his or her session. If the <code>DisconnectTimeOutInSeconds</code> elapses, or the user chooses to end his or her session, the streaming instance is terminated and the streaming session ends.</p>"}))
    Session.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#documentation" => "<p>The authentication method. The user is authenticated using a streaming URL\n            (<code>API</code>) or SAML 2.0 federation (<code>SAML</code>).</p>"}))
    Session.add_member(:network_access_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkAccessConfiguration, location_name: 'NetworkAccessConfiguration', traits: {"smithy.api#documentation" => "<p>The network details for the streaming session.</p>"}))
    Session.add_member(:instance_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceId', traits: {"smithy.api#documentation" => "<p>The identifier for the instance hosting the session.</p>"}))
    Session.type = Types::Session
    SessionConnectionState.add_member(:connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CONNECTED', traits: {"smithy.api#enumValue" => "CONNECTED"}))
    SessionConnectionState.add_member(:not_connected, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NOT_CONNECTED', traits: {"smithy.api#enumValue" => "NOT_CONNECTED"}))
    SessionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Session)
    SessionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    SessionState.add_member(:pending, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PENDING', traits: {"smithy.api#enumValue" => "PENDING"}))
    SessionState.add_member(:expired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EXPIRED', traits: {"smithy.api#enumValue" => "EXPIRED"}))
    SharedImagePermissions.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'sharedAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The 12-digit identifier of the AWS account with which the image is shared.</p>", "smithy.api#required" => {}}))
    SharedImagePermissions.add_member(:image_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePermissions, location_name: 'imagePermissions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Describes the permissions for a shared image.</p>", "smithy.api#required" => {}}))
    SharedImagePermissions.type = Types::SharedImagePermissions
    SharedImagePermissionsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SharedImagePermissions)
    Stack.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the stack.</p>"}))
    Stack.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    Stack.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    Stack.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The stack name to display.</p>"}))
    Stack.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time the stack was created.</p>"}))
    Stack.add_member(:storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: 'StorageConnectors', traits: {"smithy.api#documentation" => "<p>The storage connectors to enable.</p>"}))
    Stack.add_member(:redirect_url, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectURL, location_name: 'RedirectURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after their streaming session ends.</p>"}))
    Stack.add_member(:feedback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackURL, location_name: 'FeedbackURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after they click the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"}))
    Stack.add_member(:stack_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: StackErrors, location_name: 'StackErrors', traits: {"smithy.api#documentation" => "<p>The errors for the stack.</p>"}))
    Stack.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingList, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>The actions that are enabled or disabled for users during their streaming sessions. By default these actions are enabled.</p>"}))
    Stack.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettingsResponse, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>The persistent application settings for users of the stack.</p>"}))
    Stack.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of virtual private cloud (VPC) interface endpoint objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints. </p>"}))
    Stack.add_member(:embed_host_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: 'EmbedHostDomains', traits: {"smithy.api#documentation" => "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions.</p>"}))
    Stack.add_member(:streaming_experience_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: 'StreamingExperienceSettings', traits: {"smithy.api#documentation" => "<p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>"}))
    Stack.type = Types::Stack
    StackAttribute.add_member(:storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONNECTORS', traits: {"smithy.api#enumValue" => "STORAGE_CONNECTORS"}))
    StackAttribute.add_member(:storage_connector_homefolders, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONNECTOR_HOMEFOLDERS', traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_HOMEFOLDERS"}))
    StackAttribute.add_member(:storage_connector_google_drive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONNECTOR_GOOGLE_DRIVE', traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_GOOGLE_DRIVE"}))
    StackAttribute.add_member(:storage_connector_one_drive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONNECTOR_ONE_DRIVE', traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_ONE_DRIVE"}))
    StackAttribute.add_member(:redirect_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'REDIRECT_URL', traits: {"smithy.api#enumValue" => "REDIRECT_URL"}))
    StackAttribute.add_member(:feedback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FEEDBACK_URL', traits: {"smithy.api#enumValue" => "FEEDBACK_URL"}))
    StackAttribute.add_member(:theme_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'THEME_NAME', traits: {"smithy.api#enumValue" => "THEME_NAME"}))
    StackAttribute.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_SETTINGS', traits: {"smithy.api#enumValue" => "USER_SETTINGS"}))
    StackAttribute.add_member(:embed_host_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'EMBED_HOST_DOMAINS', traits: {"smithy.api#enumValue" => "EMBED_HOST_DOMAINS"}))
    StackAttribute.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_ROLE_ARN', traits: {"smithy.api#enumValue" => "IAM_ROLE_ARN"}))
    StackAttribute.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_ENDPOINTS', traits: {"smithy.api#enumValue" => "ACCESS_ENDPOINTS"}))
    StackAttribute.add_member(:streaming_experience_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STREAMING_EXPERIENCE_SETTINGS', traits: {"smithy.api#enumValue" => "STREAMING_EXPERIENCE_SETTINGS"}))
    StackAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttribute)
    StackError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StackErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code.</p>"}))
    StackError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message.</p>"}))
    StackError.type = Types::StackError
    StackErrorCode.add_member(:storage_connector_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STORAGE_CONNECTOR_ERROR', traits: {"smithy.api#enumValue" => "STORAGE_CONNECTOR_ERROR"}))
    StackErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    StackErrors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StackError)
    StackList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Stack)
    StartAppBlockBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    StartAppBlockBuilderRequest.type = Types::StartAppBlockBuilderRequest
    StartAppBlockBuilderResult.add_member(:app_block_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: 'AppBlockBuilder'))
    StartAppBlockBuilderResult.type = Types::StartAppBlockBuilderResult
    StartFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    StartFleetRequest.type = Types::StartFleetRequest
    StartFleetResult.type = Types::StartFleetResult
    StartImageBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image builder.</p>", "smithy.api#required" => {}}))
    StartImageBuilderRequest.add_member(:appstream_agent_version, Smithy::Schema::Shapes::ShapeRef.new(shape: AppstreamAgentVersion, location_name: 'AppstreamAgentVersion', traits: {"smithy.api#documentation" => "<p>The version of the AppStream 2.0 agent to use for this image builder. To use the latest version of the AppStream 2.0 agent, specify [LATEST]. </p>"}))
    StartImageBuilderRequest.type = Types::StartImageBuilderRequest
    StartImageBuilderResult.add_member(:image_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilder, location_name: 'ImageBuilder', traits: {"smithy.api#documentation" => "<p>Information about the image builder.</p>"}))
    StartImageBuilderResult.type = Types::StartImageBuilderResult
    StopAppBlockBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the app block builder.</p>", "smithy.api#required" => {}}))
    StopAppBlockBuilderRequest.type = Types::StopAppBlockBuilderRequest
    StopAppBlockBuilderResult.add_member(:app_block_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: 'AppBlockBuilder'))
    StopAppBlockBuilderResult.type = Types::StopAppBlockBuilderResult
    StopFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the fleet.</p>", "smithy.api#required" => {}}))
    StopFleetRequest.type = Types::StopFleetRequest
    StopFleetResult.type = Types::StopFleetResult
    StopImageBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the image builder.</p>", "smithy.api#required" => {}}))
    StopImageBuilderRequest.type = Types::StopImageBuilderRequest
    StopImageBuilderResult.add_member(:image_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: ImageBuilder, location_name: 'ImageBuilder', traits: {"smithy.api#documentation" => "<p>Information about the image builder.</p>"}))
    StopImageBuilderResult.type = Types::StopImageBuilderResult
    StorageConnector.add_member(:connector_type, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorType, location_name: 'ConnectorType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The type of storage connector.</p>", "smithy.api#required" => {}}))
    StorageConnector.add_member(:resource_identifier, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceIdentifier, location_name: 'ResourceIdentifier', traits: {"smithy.api#documentation" => "<p>The ARN of the storage connector.</p>"}))
    StorageConnector.add_member(:domains, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'Domains', traits: {"smithy.api#documentation" => "<p>The names of the domains for the account.</p>"}))
    StorageConnector.add_member(:domains_require_admin_consent, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainList, location_name: 'DomainsRequireAdminConsent', traits: {"smithy.api#documentation" => "<p>The OneDrive for Business domains where you require admin consent when users try to link their OneDrive account to AppStream 2.0. The attribute can only be specified when ConnectorType=ONE_DRIVE.</p>"}))
    StorageConnector.type = Types::StorageConnector
    StorageConnectorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnector)
    StorageConnectorType.add_member(:homefolders, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'HOMEFOLDERS', traits: {"smithy.api#enumValue" => "HOMEFOLDERS"}))
    StorageConnectorType.add_member(:google_drive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'GOOGLE_DRIVE', traits: {"smithy.api#enumValue" => "GOOGLE_DRIVE"}))
    StorageConnectorType.add_member(:one_drive, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ONE_DRIVE', traits: {"smithy.api#enumValue" => "ONE_DRIVE"}))
    StreamView.add_member(:app, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'APP', traits: {"smithy.api#enumValue" => "APP"}))
    StreamView.add_member(:desktop, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DESKTOP', traits: {"smithy.api#enumValue" => "DESKTOP"}))
    StreamingExperienceSettings.add_member(:preferred_protocol, Smithy::Schema::Shapes::ShapeRef.new(shape: PreferredProtocol, location_name: 'PreferredProtocol', traits: {"smithy.api#documentation" => "<p>The preferred protocol that you want to use while streaming your application.</p>"}))
    StreamingExperienceSettings.type = Types::StreamingExperienceSettings
    StringList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    SubnetIdList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tags to associate. A tag is a key-value pair, and the value is optional. For example, Environment=Test. If you do not specify a value, Environment=. </p>\n         <p>If you do not specify a value, the value is set to an empty string.</p>\n         <p>Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following special characters: </p>\n         <p>_ . : / = + \\ - @</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Theme.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#documentation" => "<p>The stack that has the custom branding theme.</p>"}))
    Theme.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the theme.</p>"}))
    Theme.add_member(:theme_title_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeTitleText, location_name: 'ThemeTitleText', traits: {"smithy.api#documentation" => "<p>The browser tab page title.</p>"}))
    Theme.add_member(:theme_styling, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeStyling, location_name: 'ThemeStyling', traits: {"smithy.api#documentation" => "<p>The color that is used for the website links, text, buttons, and catalog page background.</p>"}))
    Theme.add_member(:theme_footer_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: 'ThemeFooterLinks', traits: {"smithy.api#documentation" => "<p>The website links that display in the catalog page footer.</p>"}))
    Theme.add_member(:theme_organization_logo_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThemeOrganizationLogoURL', traits: {"smithy.api#documentation" => "<p>The URL of the logo that displays in the catalog page header.</p>"}))
    Theme.add_member(:theme_favicon_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ThemeFaviconURL', traits: {"smithy.api#documentation" => "<p>The URL of the icon that displays at the top of a user's browser tab during streaming sessions.</p>"}))
    Theme.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The time the theme was created.</p>"}))
    Theme.type = Types::Theme
    ThemeAttribute.add_member(:footer_links, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FOOTER_LINKS', traits: {"smithy.api#enumValue" => "FOOTER_LINKS"}))
    ThemeAttributes.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeAttribute)
    ThemeFooterLink.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLinkDisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The name of the websites that display in the catalog page footer.</p>"}))
    ThemeFooterLink.add_member(:footer_link_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLinkURL, location_name: 'FooterLinkURL', traits: {"smithy.api#documentation" => "<p>The URL of the websites that display in the catalog page footer.</p>"}))
    ThemeFooterLink.type = Types::ThemeFooterLink
    ThemeFooterLinks.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLink)
    ThemeState.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    ThemeState.add_member(:disabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DISABLED', traits: {"smithy.api#enumValue" => "DISABLED"}))
    ThemeStyling.add_member(:light_blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'LIGHT_BLUE', traits: {"smithy.api#enumValue" => "LIGHT_BLUE"}))
    ThemeStyling.add_member(:blue, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BLUE', traits: {"smithy.api#enumValue" => "BLUE"}))
    ThemeStyling.add_member(:pink, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PINK', traits: {"smithy.api#enumValue" => "PINK"}))
    ThemeStyling.add_member(:red, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RED', traits: {"smithy.api#enumValue" => "RED"}))
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the resource.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The tag keys for the tags to disassociate.</p>", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateAppBlockBuilderRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The unique name for the app block builder.</p>", "smithy.api#required" => {}}))
    UpdateAppBlockBuilderRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the app block builder.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the app block builder.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The platform of the app block builder.</p>\n         <p>\n            <code>WINDOWS_SERVER_2019</code> is the only valid value.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to use when launching the app block builder. The following instance\n                types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n         </ul>"}))
    UpdateAppBlockBuilderRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the app block builder.</p>\n         <p>App block builders require that you specify at least two subnets in different availability\n            zones.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the app block builder.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to apply to the app block builder. To\n            assume a role, the app block builder calls the AWS Security Token Service (STS)\n            <code>AssumeRole</code> API operation and passes the ARN of the role to use. The\n            operation creates a new session with temporary credentials. AppStream 2.0 retrieves the\n            temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Administrators can connect to the app block builder only through the specified endpoints.</p>"}))
    UpdateAppBlockBuilderRequest.add_member(:attributes_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilderAttributes, location_name: 'AttributesToDelete', traits: {"smithy.api#documentation" => "<p>The attributes to delete from the app block builder.</p>"}))
    UpdateAppBlockBuilderRequest.type = Types::UpdateAppBlockBuilderRequest
    UpdateAppBlockBuilderResult.add_member(:app_block_builder, Smithy::Schema::Shapes::ShapeRef.new(shape: AppBlockBuilder, location_name: 'AppBlockBuilder'))
    UpdateAppBlockBuilderResult.type = Types::UpdateAppBlockBuilderResult
    UpdateApplicationRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the application. This name is visible to users when display name is not specified.</p>", "smithy.api#required" => {}}))
    UpdateApplicationRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The display name of the application. This name is visible to users in the application catalog.</p>"}))
    UpdateApplicationRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the application.</p>"}))
    UpdateApplicationRequest.add_member(:icon_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'IconS3Location', traits: {"smithy.api#documentation" => "<p>The icon S3 location of the application.</p>"}))
    UpdateApplicationRequest.add_member(:launch_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchPath', traits: {"smithy.api#documentation" => "<p>The launch path of the application.</p>"}))
    UpdateApplicationRequest.add_member(:working_directory, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'WorkingDirectory', traits: {"smithy.api#documentation" => "<p>The working directory of the application.</p>"}))
    UpdateApplicationRequest.add_member(:launch_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LaunchParameters', traits: {"smithy.api#documentation" => "<p>The launch parameters of the application.</p>"}))
    UpdateApplicationRequest.add_member(:app_block_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'AppBlockArn', traits: {"smithy.api#documentation" => "<p>The ARN of the app block.</p>"}))
    UpdateApplicationRequest.add_member(:attributes_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationAttributes, location_name: 'AttributesToDelete', traits: {"smithy.api#documentation" => "<p>The attributes to delete for an application.</p>"}))
    UpdateApplicationRequest.type = Types::UpdateApplicationRequest
    UpdateApplicationResult.add_member(:application, Smithy::Schema::Shapes::ShapeRef.new(shape: Application, location_name: 'Application'))
    UpdateApplicationResult.type = Types::UpdateApplicationResult
    UpdateDirectoryConfigRequest.add_member(:directory_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryName, location_name: 'DirectoryName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the Directory Config object.</p>", "smithy.api#required" => {}}))
    UpdateDirectoryConfigRequest.add_member(:organizational_unit_distinguished_names, Smithy::Schema::Shapes::ShapeRef.new(shape: OrganizationalUnitDistinguishedNamesList, location_name: 'OrganizationalUnitDistinguishedNames', traits: {"smithy.api#documentation" => "<p>The distinguished names of the organizational units for computer accounts.</p>"}))
    UpdateDirectoryConfigRequest.add_member(:service_account_credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceAccountCredentials, location_name: 'ServiceAccountCredentials', traits: {"smithy.api#documentation" => "<p>The credentials for the service account used by the fleet or image builder to connect to the directory.</p>"}))
    UpdateDirectoryConfigRequest.add_member(:certificate_based_auth_properties, Smithy::Schema::Shapes::ShapeRef.new(shape: CertificateBasedAuthProperties, location_name: 'CertificateBasedAuthProperties', traits: {"smithy.api#documentation" => "<p>The certificate-based authentication properties used to authenticate SAML 2.0 Identity\n            Provider (IdP) user identities to Active Directory domain-joined streaming instances.\n            Fallback is turned on by default when certificate-based authentication is <b>Enabled</b> . Fallback allows users to log in using their AD\n            domain password if certificate-based authentication is unsuccessful, or to unlock a\n            desktop lock screen. <b>Enabled_no_directory_login_fallback</b> enables certificate-based\n            authentication, but does not allow users to log in using their AD domain password. Users\n            will be disconnected to re-authenticate using certificates.</p>"}))
    UpdateDirectoryConfigRequest.type = Types::UpdateDirectoryConfigRequest
    UpdateDirectoryConfigResult.add_member(:directory_config, Smithy::Schema::Shapes::ShapeRef.new(shape: DirectoryConfig, location_name: 'DirectoryConfig', traits: {"smithy.api#documentation" => "<p>Information about the Directory Config object.</p>"}))
    UpdateDirectoryConfigResult.type = Types::UpdateDirectoryConfigResult
    UpdateEntitlementRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the entitlement.</p>", "smithy.api#required" => {}}))
    UpdateEntitlementRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack with which the entitlement is associated.</p>", "smithy.api#required" => {}}))
    UpdateEntitlementRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the entitlement.</p>"}))
    UpdateEntitlementRequest.add_member(:app_visibility, Smithy::Schema::Shapes::ShapeRef.new(shape: AppVisibility, location_name: 'AppVisibility', traits: {"smithy.api#documentation" => "<p>Specifies whether all or only selected apps are entitled.</p>"}))
    UpdateEntitlementRequest.add_member(:attributes, Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAttributeList, location_name: 'Attributes', traits: {"smithy.api#documentation" => "<p>The attributes of the entitlement.</p>"}))
    UpdateEntitlementRequest.type = Types::UpdateEntitlementRequest
    UpdateEntitlementResult.add_member(:entitlement, Smithy::Schema::Shapes::ShapeRef.new(shape: Entitlement, location_name: 'Entitlement', traits: {"smithy.api#documentation" => "<p>The entitlement.</p>"}))
    UpdateEntitlementResult.type = Types::UpdateEntitlementResult
    UpdateFleetRequest.add_member(:image_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ImageName', traits: {"smithy.api#documentation" => "<p>The name of the image used to create the fleet.</p>"}))
    UpdateFleetRequest.add_member(:image_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ImageArn', traits: {"smithy.api#documentation" => "<p>The ARN of the public, private, or shared image to use.</p>"}))
    UpdateFleetRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>A unique name for the fleet.</p>"}))
    UpdateFleetRequest.add_member(:instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'InstanceType', traits: {"smithy.api#documentation" => "<p>The instance type to use when launching fleet instances. The following instance types are available:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.large</p>\n            </li>\n            <li>\n               <p>stream.compute.xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.compute.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.large</p>\n            </li>\n            <li>\n               <p>stream.memory.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.large</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.3xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.6xlarge</p>\n            </li>\n            <li>\n               <p>stream.memory.z1d.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.large</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-design.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-desktop.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.2xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.12xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics.g4dn.16xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.4xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.8xlarge</p>\n            </li>\n            <li>\n               <p>stream.graphics-pro.16xlarge</p>\n            </li>\n         </ul>\n         <p>The following instance types are available for Elastic fleets:</p>\n         <ul>\n            <li>\n               <p>stream.standard.small</p>\n            </li>\n            <li>\n               <p>stream.standard.medium</p>\n            </li>\n            <li>\n               <p>stream.standard.large</p>\n            </li>\n            <li>\n               <p>stream.standard.xlarge</p>\n            </li>\n            <li>\n               <p>stream.standard.2xlarge</p>\n            </li>\n         </ul>"}))
    UpdateFleetRequest.add_member(:compute_capacity, Smithy::Schema::Shapes::ShapeRef.new(shape: ComputeCapacity, location_name: 'ComputeCapacity', traits: {"smithy.api#documentation" => "<p>The desired capacity for the fleet. This is not allowed for Elastic fleets.</p>"}))
    UpdateFleetRequest.add_member(:vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VpcConfig, location_name: 'VpcConfig', traits: {"smithy.api#documentation" => "<p>The VPC configuration for the fleet. This is required for Elastic fleets, but not required for other fleet types. Elastic fleets require that you specify at least two subnets in different availability zones. </p>"}))
    UpdateFleetRequest.add_member(:max_user_duration_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxUserDurationInSeconds', traits: {"smithy.api#documentation" => "<p>The maximum amount of time that a streaming session can remain active, in seconds. If users are still connected to a streaming instance five minutes before this limit is reached, they are prompted to save any open documents before being disconnected. After this time elapses, the instance is terminated and replaced by a new instance.</p>\n         <p>Specify a value between 600 and 432000.</p>"}))
    UpdateFleetRequest.add_member(:disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'DisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that a streaming session remains active after users disconnect. If users try to reconnect to the streaming session after a disconnection or network interruption within this time interval, they are connected to their previous session. Otherwise, they are connected to a new session with a new streaming instance. </p>\n         <p>Specify a value between 60 and 36000.</p>"}))
    UpdateFleetRequest.add_member(:delete_vpc_config, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteVpcConfig', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>Deletes the VPC association for the specified fleet.</p>"}))
    UpdateFleetRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    UpdateFleetRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The fleet name to display.</p>"}))
    UpdateFleetRequest.add_member(:enable_default_internet_access, Smithy::Schema::Shapes::ShapeRef.new(shape: BooleanObject, location_name: 'EnableDefaultInternetAccess', traits: {"smithy.api#documentation" => "<p>Enables or disables default internet access for the fleet.</p>"}))
    UpdateFleetRequest.add_member(:domain_join_info, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainJoinInfo, location_name: 'DomainJoinInfo', traits: {"smithy.api#documentation" => "<p>The name of the directory and organizational unit (OU) to use to join the fleet to a Microsoft Active Directory domain. </p>"}))
    UpdateFleetRequest.add_member(:idle_disconnect_timeout_in_seconds, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'IdleDisconnectTimeoutInSeconds', traits: {"smithy.api#documentation" => "<p>The amount of time that users can be idle (inactive) before they are disconnected\n            from their streaming session and the <code>DisconnectTimeoutInSeconds</code> time\n            interval begins. Users are notified before they are disconnected due to inactivity. If\n            users try to reconnect to the streaming session before the time interval specified in\n            <code>DisconnectTimeoutInSeconds</code> elapses, they are connected to their\n            previous session. Users are considered idle when they stop providing keyboard or mouse\n            input during their streaming session. File uploads and downloads, audio in, audio out,\n            and pixels changing do not qualify as user activity. If users continue to be idle after\n            the time interval in <code>IdleDisconnectTimeoutInSeconds</code> elapses, they are\n            disconnected. </p>\n         <p>To prevent users from being disconnected due to inactivity, specify a value of 0. Otherwise, specify a value between 60 and 36000. The default value is 0.</p>\n         <note>\n            <p>If you enable this feature, we recommend that you specify a value that corresponds exactly to a whole number of minutes (for example, 60, 120, and 180). If you don't do this, the value is rounded to the nearest minute. For example, if you specify a value of 70, users are disconnected after 1 minute of inactivity. If you specify a value that is at the midpoint between two different minutes, the value is rounded up. For example, if you specify a value of 90, users are disconnected after 2 minutes of inactivity. </p>\n         </note>"}))
    UpdateFleetRequest.add_member(:attributes_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: FleetAttributes, location_name: 'AttributesToDelete', traits: {"smithy.api#documentation" => "<p>The fleet attributes to delete.</p>"}))
    UpdateFleetRequest.add_member(:iam_role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'IamRoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role to apply to the fleet. To assume a role, a fleet instance calls the AWS Security Token Service (STS) <code>AssumeRole</code> API operation and passes the ARN of the role to use. The operation creates a new session with temporary credentials. AppStream 2.0 retrieves the temporary credentials and creates the <b>appstream_machine_role</b> credential profile on the instance.</p>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/appstream2/latest/developerguide/using-iam-roles-to-grant-permissions-to-applications-scripts-streaming-instances.html\">Using an IAM Role to Grant Permissions to Applications and Scripts Running on AppStream 2.0 Streaming Instances</a> in the <i>Amazon AppStream 2.0 Administration Guide</i>.</p>"}))
    UpdateFleetRequest.add_member(:stream_view, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamView, location_name: 'StreamView', traits: {"smithy.api#documentation" => "<p>The AppStream 2.0 view that is displayed to your users when they stream from the fleet. When <code>APP</code> is specified, only the windows of applications opened by users display. When <code>DESKTOP</code> is specified, the standard desktop that is provided by the operating system displays.</p>\n         <p>The default value is <code>APP</code>.</p>"}))
    UpdateFleetRequest.add_member(:platform, Smithy::Schema::Shapes::ShapeRef.new(shape: PlatformType, location_name: 'Platform', traits: {"smithy.api#documentation" => "<p>The platform of the fleet. WINDOWS_SERVER_2019 and AMAZON_LINUX2 are supported for Elastic fleets. </p>"}))
    UpdateFleetRequest.add_member(:max_concurrent_sessions, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxConcurrentSessions', traits: {"smithy.api#documentation" => "<p>The maximum number of concurrent sessions for a fleet.</p>"}))
    UpdateFleetRequest.add_member(:usb_device_filter_strings, Smithy::Schema::Shapes::ShapeRef.new(shape: UsbDeviceFilterStrings, location_name: 'UsbDeviceFilterStrings', traits: {"smithy.api#documentation" => "<p>The USB device filter strings that specify which USB devices a user can redirect to the fleet streaming session, when using the Windows native client. This is allowed but not required for Elastic fleets.</p>"}))
    UpdateFleetRequest.add_member(:session_script_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'SessionScriptS3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the session scripts configuration zip file. This only applies to Elastic fleets. </p>"}))
    UpdateFleetRequest.add_member(:max_sessions_per_instance, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaxSessionsPerInstance', traits: {"smithy.api#documentation" => "<p>The maximum number of user sessions on an instance. This only applies to multi-session fleets.</p>"}))
    UpdateFleetRequest.type = Types::UpdateFleetRequest
    UpdateFleetResult.add_member(:fleet, Smithy::Schema::Shapes::ShapeRef.new(shape: Fleet, location_name: 'Fleet', traits: {"smithy.api#documentation" => "<p>Information about the fleet.</p>"}))
    UpdateFleetResult.type = Types::UpdateFleetResult
    UpdateImagePermissionsRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the private image.</p>", "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.add_member(:shared_account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'SharedAccountId', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The 12-digit identifier of the AWS account for which you want add or update image permissions.</p>", "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.add_member(:image_permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ImagePermissions, location_name: 'ImagePermissions', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The permissions for the image.</p>", "smithy.api#required" => {}}))
    UpdateImagePermissionsRequest.type = Types::UpdateImagePermissionsRequest
    UpdateImagePermissionsResult.type = Types::UpdateImagePermissionsResult
    UpdateStackRequest.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DisplayName, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>The stack name to display.</p>"}))
    UpdateStackRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description to display.</p>"}))
    UpdateStackRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack.</p>", "smithy.api#required" => {}}))
    UpdateStackRequest.add_member(:storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageConnectorList, location_name: 'StorageConnectors', traits: {"smithy.api#documentation" => "<p>The storage connectors to enable.</p>"}))
    UpdateStackRequest.add_member(:delete_storage_connectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'DeleteStorageConnectors', traits: {"smithy.api#deprecated" => {}, "smithy.api#documentation" => "<p>Deletes the storage connectors currently enabled for the stack.</p>"}))
    UpdateStackRequest.add_member(:redirect_url, Smithy::Schema::Shapes::ShapeRef.new(shape: RedirectURL, location_name: 'RedirectURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after their streaming session ends.</p>"}))
    UpdateStackRequest.add_member(:feedback_url, Smithy::Schema::Shapes::ShapeRef.new(shape: FeedbackURL, location_name: 'FeedbackURL', traits: {"smithy.api#documentation" => "<p>The URL that users are redirected to after they choose the Send Feedback link. If no URL is specified, no Send Feedback link is displayed.</p>"}))
    UpdateStackRequest.add_member(:attributes_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: StackAttributes, location_name: 'AttributesToDelete', traits: {"smithy.api#documentation" => "<p>The stack attributes to delete.</p>"}))
    UpdateStackRequest.add_member(:user_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: UserSettingList, location_name: 'UserSettings', traits: {"smithy.api#documentation" => "<p>The actions that are enabled or disabled for users during their streaming sessions. By default, these actions are enabled.</p>"}))
    UpdateStackRequest.add_member(:application_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationSettings, location_name: 'ApplicationSettings', traits: {"smithy.api#documentation" => "<p>The persistent application settings for users of a stack. When these settings are enabled, changes that users make to applications and Windows settings are automatically saved after each session and applied to the next session.</p>"}))
    UpdateStackRequest.add_member(:access_endpoints, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessEndpointList, location_name: 'AccessEndpoints', traits: {"smithy.api#documentation" => "<p>The list of interface VPC endpoint (interface endpoint) objects. Users of the stack can connect to AppStream 2.0 only through the specified endpoints.</p>"}))
    UpdateStackRequest.add_member(:embed_host_domains, Smithy::Schema::Shapes::ShapeRef.new(shape: EmbedHostDomains, location_name: 'EmbedHostDomains', traits: {"smithy.api#documentation" => "<p>The domains where AppStream 2.0 streaming sessions can be embedded in an iframe. You must approve the domains that you want to host embedded AppStream 2.0 streaming sessions. </p>"}))
    UpdateStackRequest.add_member(:streaming_experience_settings, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamingExperienceSettings, location_name: 'StreamingExperienceSettings', traits: {"smithy.api#documentation" => "<p>The streaming protocol you want your stack to prefer. This can be UDP or TCP. Currently, UDP is only supported in the Windows native client.</p>"}))
    UpdateStackRequest.type = Types::UpdateStackRequest
    UpdateStackResult.add_member(:stack, Smithy::Schema::Shapes::ShapeRef.new(shape: Stack, location_name: 'Stack', traits: {"smithy.api#documentation" => "<p>Information about the stack.</p>"}))
    UpdateStackResult.type = Types::UpdateStackResult
    UpdateThemeForStackRequest.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack for the theme.</p>", "smithy.api#required" => {}}))
    UpdateThemeForStackRequest.add_member(:footer_links, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeFooterLinks, location_name: 'FooterLinks', traits: {"smithy.api#documentation" => "<p>The links that are displayed in the footer of the streaming application catalog page. These links are helpful resources for users, such as the organization's IT support and product marketing sites.</p>"}))
    UpdateThemeForStackRequest.add_member(:title_text, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeTitleText, location_name: 'TitleText', traits: {"smithy.api#documentation" => "<p>The title that is displayed at the top of the browser tab during users' application streaming sessions.</p>"}))
    UpdateThemeForStackRequest.add_member(:theme_styling, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeStyling, location_name: 'ThemeStyling', traits: {"smithy.api#documentation" => "<p>The color theme that is applied to website links, text, and buttons. These colors are also applied as accents in the background for the streaming application catalog page.</p>"}))
    UpdateThemeForStackRequest.add_member(:organization_logo_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'OrganizationLogoS3Location', traits: {"smithy.api#documentation" => "<p>The organization logo that appears on the streaming application catalog page.</p>"}))
    UpdateThemeForStackRequest.add_member(:favicon_s3_location, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'FaviconS3Location', traits: {"smithy.api#documentation" => "<p>The S3 location of the favicon. The favicon enables users to recognize their application streaming site in a browser full of tabs or bookmarks. It is displayed at the top of the browser tab for the application streaming site during users' streaming sessions.</p>"}))
    UpdateThemeForStackRequest.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>Specifies whether custom branding should be applied to catalog page or not.</p>"}))
    UpdateThemeForStackRequest.add_member(:attributes_to_delete, Smithy::Schema::Shapes::ShapeRef.new(shape: ThemeAttributes, location_name: 'AttributesToDelete', traits: {"smithy.api#documentation" => "<p>The attributes to delete.</p>"}))
    UpdateThemeForStackRequest.type = Types::UpdateThemeForStackRequest
    UpdateThemeForStackResult.add_member(:theme, Smithy::Schema::Shapes::ShapeRef.new(shape: Theme, location_name: 'Theme', traits: {"smithy.api#documentation" => "<p> The theme object that contains the metadata of the custom branding.</p>"}))
    UpdateThemeForStackResult.type = Types::UpdateThemeForStackResult
    UsageReportExecutionErrorCode.add_member(:resource_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RESOURCE_NOT_FOUND', traits: {"smithy.api#enumValue" => "RESOURCE_NOT_FOUND"}))
    UsageReportExecutionErrorCode.add_member(:access_denied, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACCESS_DENIED', traits: {"smithy.api#enumValue" => "ACCESS_DENIED"}))
    UsageReportExecutionErrorCode.add_member(:internal_service_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_SERVICE_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_SERVICE_ERROR"}))
    UsageReportSchedule.add_member(:daily, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DAILY', traits: {"smithy.api#enumValue" => "DAILY"}))
    UsageReportSubscription.add_member(:s3_bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3BucketName', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket where generated reports are stored.</p>\n         <p>If you enabled on-instance session scripts and Amazon S3 logging for your session script\n            configuration, AppStream 2.0 created an S3 bucket to store the script output. The bucket is\n            unique to your account and Region. When you enable usage reporting in this case, AppStream 2.0\n            uses the same bucket to store your usage reports. If you haven't already enabled on-instance session scripts, \n            when you enable usage reports, AppStream 2.0 creates a new S3 bucket.</p>"}))
    UsageReportSubscription.add_member(:schedule, Smithy::Schema::Shapes::ShapeRef.new(shape: UsageReportSchedule, location_name: 'Schedule', traits: {"smithy.api#documentation" => "<p>The schedule for generating usage reports.</p>"}))
    UsageReportSubscription.add_member(:last_generated_report_date, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'LastGeneratedReportDate', traits: {"smithy.api#documentation" => "<p>The time when the last usage report was generated.</p>"}))
    UsageReportSubscription.add_member(:subscription_errors, Smithy::Schema::Shapes::ShapeRef.new(shape: LastReportGenerationExecutionErrors, location_name: 'SubscriptionErrors', traits: {"smithy.api#documentation" => "<p>The errors that were returned if usage reports couldn't be generated.</p>"}))
    UsageReportSubscription.type = Types::UsageReportSubscription
    UsageReportSubscriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsageReportSubscription)
    UsbDeviceFilterStrings.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UsbDeviceFilterString)
    User.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN of the user.</p>"}))
    User.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#documentation" => "<p>The email address of the user.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive.</p>\n         </note>"}))
    User.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Enabled', traits: {"smithy.api#documentation" => "<p>Specifies whether the user in the user pool is enabled.</p>"}))
    User.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the user in the user pool. The status can be one of the following:</p>\n         <ul>\n            <li>\n               <p>UNCONFIRMED – The user is created but not confirmed.</p>\n            </li>\n            <li>\n               <p>CONFIRMED – The user is confirmed.</p>\n            </li>\n            <li>\n               <p>ARCHIVED – The user is no longer active.</p>\n            </li>\n            <li>\n               <p>COMPROMISED – The user is disabled because of a potential security threat.</p>\n            </li>\n            <li>\n               <p>UNKNOWN – The user status is not known.</p>\n            </li>\n         </ul>"}))
    User.add_member(:first_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: 'FirstName', traits: {"smithy.api#documentation" => "<p>The first name, or given name, of the user.</p>"}))
    User.add_member(:last_name, Smithy::Schema::Shapes::ShapeRef.new(shape: UserAttributeValue, location_name: 'LastName', traits: {"smithy.api#documentation" => "<p>The last name, or surname, of the user.</p>"}))
    User.add_member(:created_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedTime', traits: {"smithy.api#documentation" => "<p>The date and time the user was created in the user pool.</p>"}))
    User.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user.</p>", "smithy.api#required" => {}}))
    User.type = Types::User
    UserList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: User)
    UserSetting.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The action that is enabled or disabled.</p>", "smithy.api#required" => {}}))
    UserSetting.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'Permission', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>Indicates whether the action is enabled or disabled.</p>", "smithy.api#required" => {}}))
    UserSetting.add_member(:maximum_length, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'MaximumLength', traits: {"smithy.api#documentation" => "<p>Specifies the number of characters that can be copied by end users from the local device to the remote session, and to the local device from the remote session.</p>\n         <p>This can be specified only for the <code>CLIPBOARD_COPY_FROM_LOCAL_DEVICE</code> and <code>CLIPBOARD_COPY_TO_LOCAL_DEVICE</code> actions.</p>\n         <p>This defaults to 20,971,520 (20 MB) when unspecified and the permission is <code>ENABLED</code>. This can't be specified when the permission is <code>DISABLED</code>. </p>\n         <p>The value can be between 1 and 20,971,520 (20 MB).</p>"}))
    UserSetting.type = Types::UserSetting
    UserSettingList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserSetting)
    UserStackAssociation.add_member(:stack_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StackName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The name of the stack that is associated with the user.</p>", "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:user_name, Smithy::Schema::Shapes::ShapeRef.new(shape: Username, location_name: 'UserName', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The email address of the user who is associated with the stack.</p>\n         <note>\n            <p>Users' email addresses are case-sensitive.</p>\n         </note>", "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:authentication_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthenticationType, location_name: 'AuthenticationType', traits: {"smithy.api#clientOptional" => {}, "smithy.api#documentation" => "<p>The authentication type for the user.</p>", "smithy.api#required" => {}}))
    UserStackAssociation.add_member(:send_email_notification, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SendEmailNotification', traits: {"smithy.api#documentation" => "<p>Specifies whether a welcome email is sent to a user after the user is created in the user pool.</p>"}))
    UserStackAssociation.type = Types::UserStackAssociation
    UserStackAssociationError.add_member(:user_stack_association, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociation, location_name: 'UserStackAssociation', traits: {"smithy.api#documentation" => "<p>Information about the user and associated stack.</p>"}))
    UserStackAssociationError.add_member(:error_code, Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationErrorCode, location_name: 'ErrorCode', traits: {"smithy.api#documentation" => "<p>The error code for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>"}))
    UserStackAssociationError.add_member(:error_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ErrorMessage', traits: {"smithy.api#documentation" => "<p>The error message for the error that is returned when a user can’t be associated with or disassociated from a stack.</p>"}))
    UserStackAssociationError.type = Types::UserStackAssociationError
    UserStackAssociationErrorCode.add_member(:stack_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STACK_NOT_FOUND', traits: {"smithy.api#enumValue" => "STACK_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:user_name_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'USER_NAME_NOT_FOUND', traits: {"smithy.api#enumValue" => "USER_NAME_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:directory_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DIRECTORY_NOT_FOUND', traits: {"smithy.api#enumValue" => "DIRECTORY_NOT_FOUND"}))
    UserStackAssociationErrorCode.add_member(:internal_error, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'INTERNAL_ERROR', traits: {"smithy.api#enumValue" => "INTERNAL_ERROR"}))
    UserStackAssociationErrorList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociationError)
    UserStackAssociationList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UserStackAssociation)
    VisibilityType.add_member(:public, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PUBLIC', traits: {"smithy.api#enumValue" => "PUBLIC"}))
    VisibilityType.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PRIVATE', traits: {"smithy.api#enumValue" => "PRIVATE"}))
    VisibilityType.add_member(:shared, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SHARED', traits: {"smithy.api#enumValue" => "SHARED"}))
    VpcConfig.add_member(:subnet_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SubnetIdList, location_name: 'SubnetIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the subnets to which a network interface is attached from the fleet instance or image builder instance. Fleet instances use one or more subnets. Image builder instances use one subnet.</p>"}))
    VpcConfig.add_member(:security_group_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: 'SecurityGroupIds', traits: {"smithy.api#documentation" => "<p>The identifiers of the security groups for the fleet or image builder.</p>"}))
    VpcConfig.type = Types::VpcConfig

    PhotonAdminProxyService = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.appstream#PhotonAdminProxyService"
      service.name = "PhotonAdminProxyService"
      service.version = "2016-12-01"
      service.traits = {"aws.api#service" => {"sdkId" => "AppStream", "arnNamespace" => "appstream", "cloudFormationName" => "AppStream", "cloudTrailEventSource" => "appstream.amazonaws.com", "endpointPrefix" => "appstream2"}, "aws.auth#sigv4" => {"name" => "appstream"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon AppStream"}
      service.add_operation(:associate_app_block_builder_app_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateAppBlockBuilderAppBlock"
        operation.name = "AssociateAppBlockBuilderAppBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAppBlockBuilderAppBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateAppBlockBuilderAppBlockResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_application_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateApplicationFleet"
        operation.name = "AssociateApplicationFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_application_to_entitlement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateApplicationToEntitlement"
        operation.name = "AssociateApplicationToEntitlement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationToEntitlementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateApplicationToEntitlementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:associate_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#AssociateFleet"
        operation.name = "AssociateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociateFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:batch_associate_user_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#BatchAssociateUserStack"
        operation.name = "BatchAssociateUserStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateUserStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchAssociateUserStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:batch_disassociate_user_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#BatchDisassociateUserStack"
        operation.name = "BatchDisassociateUserStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateUserStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BatchDisassociateUserStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:copy_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CopyImage"
        operation.name = "CopyImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CopyImageResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_app_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlock"
        operation.name = "CreateAppBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:create_app_block_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlockBuilder"
        operation.name = "CreateAppBlockBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_app_block_builder_streaming_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateAppBlockBuilderStreamingURL"
        operation.name = "CreateAppBlockBuilderStreamingURL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockBuilderStreamingURLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateAppBlockBuilderStreamingURLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateApplication"
        operation.name = "CreateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_directory_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateDirectoryConfig"
        operation.name = "CreateDirectoryConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDirectoryConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_entitlement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateEntitlement"
        operation.name = "CreateEntitlement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntitlementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEntitlementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateFleet"
        operation.name = "CreateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_image_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateImageBuilder"
        operation.name = "CreateImageBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImageBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImageBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_image_builder_streaming_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateImageBuilderStreamingURL"
        operation.name = "CreateImageBuilderStreamingURL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateImageBuilderStreamingURLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateStack"
        operation.name = "CreateStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_streaming_url, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateStreamingURL"
        operation.name = "CreateStreamingURL"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingURLRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateStreamingURLResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_theme_for_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateThemeForStack"
        operation.name = "CreateThemeForStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateThemeForStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateThemeForStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_updated_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUpdatedImage"
        operation.name = "CreateUpdatedImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUpdatedImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUpdatedImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:create_usage_report_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUsageReportSubscription"
        operation.name = "CreateUsageReportSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageReportSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUsageReportSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.traits = {}
      end)
      service.add_operation(:create_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#CreateUser"
        operation.name = "CreateUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteAppBlock"
        operation.name = "DeleteAppBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBlockResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_app_block_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteAppBlockBuilder"
        operation.name = "DeleteAppBlockBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBlockBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAppBlockBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteApplication"
        operation.name = "DeleteApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_directory_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteDirectoryConfig"
        operation.name = "DeleteDirectoryConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDirectoryConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_entitlement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteEntitlement"
        operation.name = "DeleteEntitlement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntitlementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEntitlementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteFleet"
        operation.name = "DeleteFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_image, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImage"
        operation.name = "DeleteImage"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_image_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImageBuilder"
        operation.name = "DeleteImageBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImageBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_image_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteImagePermissions"
        operation.name = "DeleteImagePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImagePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteImagePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteStack"
        operation.name = "DeleteStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_theme_for_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteThemeForStack"
        operation.name = "DeleteThemeForStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteThemeForStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteThemeForStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_usage_report_subscription, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteUsageReportSubscription"
        operation.name = "DeleteUsageReportSubscription"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageReportSubscriptionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUsageReportSubscriptionResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:delete_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DeleteUser"
        operation.name = "DeleteUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_app_block_builder_app_block_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlockBuilderAppBlockAssociations"
        operation.name = "DescribeAppBlockBuilderAppBlockAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlockBuilderAppBlockAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlockBuilderAppBlockAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAppBlockBuilderAppBlockAssociations.new
      end)
      service.add_operation(:describe_app_block_builders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlockBuilders"
        operation.name = "DescribeAppBlockBuilders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlockBuildersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlockBuildersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeAppBlockBuilders.new
      end)
      service.add_operation(:describe_app_blocks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeAppBlocks"
        operation.name = "DescribeAppBlocks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlocksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAppBlocksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_application_fleet_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeApplicationFleetAssociations"
        operation.name = "DescribeApplicationFleetAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationFleetAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationFleetAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeApplications"
        operation.name = "DescribeApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeApplicationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_directory_configs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeDirectoryConfigs"
        operation.name = "DescribeDirectoryConfigs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDirectoryConfigsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_entitlements, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeEntitlements"
        operation.name = "DescribeEntitlements"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitlementsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeEntitlementsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_fleets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeFleets"
        operation.name = "DescribeFleets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeFleetsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_builders, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImageBuilders"
        operation.name = "DescribeImageBuilders"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageBuildersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImageBuildersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_image_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImagePermissions"
        operation.name = "DescribeImagePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImagePermissions.new
      end)
      service.add_operation(:describe_images, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeImages"
        operation.name = "DescribeImages"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeImagesResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
        operation[:paginator] = Paginators::DescribeImages.new
      end)
      service.add_operation(:describe_sessions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeSessions"
        operation.name = "DescribeSessions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSessionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSessionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_stacks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeStacks"
        operation.name = "DescribeStacks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeStacksResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeStacksSuccess", "params" => {}, "vendorParams" => {"region" => "us-west-2"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
      end)
      service.add_operation(:describe_theme_for_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeThemeForStack"
        operation.name = "DescribeThemeForStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeThemeForStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeThemeForStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_usage_report_subscriptions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUsageReportSubscriptions"
        operation.name = "DescribeUsageReportSubscriptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageReportSubscriptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsageReportSubscriptionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_user_stack_associations, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUserStackAssociations"
        operation.name = "DescribeUserStackAssociations"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserStackAssociationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUserStackAssociationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:describe_users, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DescribeUsers"
        operation.name = "DescribeUsers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeUsersResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disable_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisableUser"
        operation.name = "DisableUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisableUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_app_block_builder_app_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateAppBlockBuilderAppBlock"
        operation.name = "DisassociateAppBlockBuilderAppBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAppBlockBuilderAppBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateAppBlockBuilderAppBlockResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_application_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateApplicationFleet"
        operation.name = "DisassociateApplicationFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_application_from_entitlement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateApplicationFromEntitlement"
        operation.name = "DisassociateApplicationFromEntitlement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationFromEntitlementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateApplicationFromEntitlementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:disassociate_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#DisassociateFleet"
        operation.name = "DisassociateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DisassociateFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:enable_user, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#EnableUser"
        operation.name = "EnableUser"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableUserRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: EnableUserResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:expire_session, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ExpireSession"
        operation.name = "ExpireSession"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpireSessionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpireSessionResult)
        operation.traits = {}
      end)
      service.add_operation(:list_associated_fleets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListAssociatedFleets"
        operation.name = "ListAssociatedFleets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedFleetsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedFleetsResult)
        operation.traits = {}
      end)
      service.add_operation(:list_associated_stacks, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListAssociatedStacks"
        operation.name = "ListAssociatedStacks"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedStacksRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAssociatedStacksResult)
        operation.traits = {}
      end)
      service.add_operation(:list_entitled_applications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListEntitledApplications"
        operation.name = "ListEntitledApplications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitledApplicationsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEntitledApplicationsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_app_block_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartAppBlockBuilder"
        operation.name = "StartAppBlockBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppBlockBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAppBlockBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartFleet"
        operation.name = "StartFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:start_image_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StartImageBuilder"
        operation.name = "StartImageBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImageBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_app_block_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopAppBlockBuilder"
        operation.name = "StopAppBlockBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppBlockBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAppBlockBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopFleet"
        operation.name = "StopFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:stop_image_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#StopImageBuilder"
        operation.name = "StopImageBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopImageBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopImageBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_app_block_builder, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateAppBlockBuilder"
        operation.name = "UpdateAppBlockBuilder"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppBlockBuilderRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAppBlockBuilderResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_application, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateApplication"
        operation.name = "UpdateApplication"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_directory_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateDirectoryConfig"
        operation.name = "UpdateDirectoryConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectoryConfigRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDirectoryConfigResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_entitlement, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateEntitlement"
        operation.name = "UpdateEntitlement"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEntitlementRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEntitlementResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: EntitlementNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_fleet, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateFleet"
        operation.name = "UpdateFleet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateFleetResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_image_permissions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateImagePermissions"
        operation.name = "UpdateImagePermissions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImagePermissionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateImagePermissionsResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotAvailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateStack"
        operation.name = "UpdateStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: IncompatibleImageException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRoleException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:update_theme_for_stack, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.appstream#UpdateThemeForStack"
        operation.name = "UpdateThemeForStack"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThemeForStackRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateThemeForStackResult)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConcurrentModificationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidAccountStatusException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterCombinationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: OperationNotPermittedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
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
