# frozen_string_literal: true

# This is generated code!

module Aws::DataExchange
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptDataGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AcceptDataGrantRequest', name: 'AcceptDataGrantRequest')
    AcceptDataGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AcceptDataGrantResponse', name: 'AcceptDataGrantResponse')
    AcceptanceStateFilterValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#AcceptanceStateFilterValue', name: 'AcceptanceStateFilterValue', traits: {"smithy.api#enum" => [{"value" => "PENDING_RECEIVER_ACCEPTANCE", "name" => "PENDING_RECEIVER_ACCEPTANCE"}, {"value" => "ACCEPTED", "name" => "ACCEPTED"}]})
    AcceptanceStateFilterValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#AcceptanceStateFilterValues', name: 'AcceptanceStateFilterValues')
    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#Action', name: 'Action')
    ApiDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ApiDescription', name: 'ApiDescription')
    ApiGatewayApiAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ApiGatewayApiAsset', name: 'ApiGatewayApiAsset')
    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Arn', name: 'Arn')
    AssetDestinationEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AssetDestinationEntry', name: 'AssetDestinationEntry')
    AssetDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AssetDetails', name: 'AssetDetails')
    AssetEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AssetEntry', name: 'AssetEntry')
    AssetName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#AssetName', name: 'AssetName')
    AssetSourceEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AssetSourceEntry', name: 'AssetSourceEntry')
    AssetType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#AssetType', name: 'AssetType', traits: {"smithy.api#enum" => [{"value" => "S3_SNAPSHOT", "name" => "S3_SNAPSHOT"}, {"value" => "REDSHIFT_DATA_SHARE", "name" => "REDSHIFT_DATA_SHARE"}, {"value" => "API_GATEWAY_API", "name" => "API_GATEWAY_API"}, {"value" => "S3_DATA_ACCESS", "name" => "S3_DATA_ACCESS"}, {"value" => "LAKE_FORMATION_DATA_PERMISSION", "name" => "LAKE_FORMATION_DATA_PERMISSION"}]})
    AutoExportRevisionDestinationEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AutoExportRevisionDestinationEntry', name: 'AutoExportRevisionDestinationEntry')
    AutoExportRevisionToS3RequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#AutoExportRevisionToS3RequestDetails', name: 'AutoExportRevisionToS3RequestDetails')
    AwsAccountId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#AwsAccountId', name: 'AwsAccountId', traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "/^[\\d]{12}$/"})
    CancelJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CancelJobInput', name: 'CancelJobInput')
    ClientToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ClientToken', name: 'ClientToken', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]{1,64}$"})
    Code = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Code', name: 'Code', traits: {"smithy.api#enum" => [{"value" => "ACCESS_DENIED_EXCEPTION", "name" => "ACCESS_DENIED_EXCEPTION"}, {"value" => "INTERNAL_SERVER_EXCEPTION", "name" => "INTERNAL_SERVER_EXCEPTION"}, {"value" => "MALWARE_DETECTED", "name" => "MALWARE_DETECTED"}, {"value" => "RESOURCE_NOT_FOUND_EXCEPTION", "name" => "RESOURCE_NOT_FOUND_EXCEPTION"}, {"value" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "name" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION"}, {"value" => "VALIDATION_EXCEPTION", "name" => "VALIDATION_EXCEPTION"}, {"value" => "MALWARE_SCAN_ENCRYPTED_FILE", "name" => "MALWARE_SCAN_ENCRYPTED_FILE"}]})
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDataGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateDataGrantRequest', name: 'CreateDataGrantRequest')
    CreateDataGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateDataGrantResponse', name: 'CreateDataGrantResponse')
    CreateDataSetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateDataSetInput', name: 'CreateDataSetInput')
    CreateDataSetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateDataSetOutput', name: 'CreateDataSetOutput')
    CreateEventActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateEventActionInput', name: 'CreateEventActionInput')
    CreateEventActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateEventActionOutput', name: 'CreateEventActionOutput')
    CreateJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateJobInput', name: 'CreateJobInput')
    CreateJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateJobOutput', name: 'CreateJobOutput')
    CreateRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateRevisionInput', name: 'CreateRevisionInput')
    CreateRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateRevisionOutput', name: 'CreateRevisionOutput')
    CreateS3DataAccessFromS3BucketRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateS3DataAccessFromS3BucketRequestDetails', name: 'CreateS3DataAccessFromS3BucketRequestDetails')
    CreateS3DataAccessFromS3BucketResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#CreateS3DataAccessFromS3BucketResponseDetails', name: 'CreateS3DataAccessFromS3BucketResponseDetails')
    DataGrantAcceptanceState = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DataGrantAcceptanceState', name: 'DataGrantAcceptanceState', traits: {"smithy.api#enum" => [{"value" => "PENDING_RECEIVER_ACCEPTANCE", "name" => "PENDING_RECEIVER_ACCEPTANCE"}, {"value" => "ACCEPTED", "name" => "ACCEPTED"}]})
    DataGrantArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DataGrantArn', name: 'DataGrantArn', traits: {"smithy.api#pattern" => "^arn:aws:dataexchange:[\\-a-z0-9]*:(\\d{12}):data-grants\\/[a-zA-Z0-9]{30,40}$"})
    DataGrantDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DataGrantDescription', name: 'DataGrantDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    DataGrantId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DataGrantId', name: 'DataGrantId', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{30,40}$|^arn:aws:dataexchange:[\\-a-z0-9]*:(\\d{12}):data-grants\\/[a-zA-Z0-9]{30,40}$"})
    DataGrantName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DataGrantName', name: 'DataGrantName', traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DataGrantSummaryEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DataGrantSummaryEntry', name: 'DataGrantSummaryEntry')
    DataSetEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DataSetEntry', name: 'DataSetEntry')
    DataUpdateRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DataUpdateRequestDetails', name: 'DataUpdateRequestDetails')
    DatabaseLFTagPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DatabaseLFTagPolicy', name: 'DatabaseLFTagPolicy')
    DatabaseLFTagPolicyAndPermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DatabaseLFTagPolicyAndPermissions', name: 'DatabaseLFTagPolicyAndPermissions')
    DatabaseLFTagPolicyPermission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#DatabaseLFTagPolicyPermission', name: 'DatabaseLFTagPolicyPermission', traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}]})
    DeleteAssetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeleteAssetInput', name: 'DeleteAssetInput')
    DeleteDataGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeleteDataGrantRequest', name: 'DeleteDataGrantRequest')
    DeleteDataSetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeleteDataSetInput', name: 'DeleteDataSetInput')
    DeleteEventActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeleteEventActionInput', name: 'DeleteEventActionInput')
    DeleteRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeleteRevisionInput', name: 'DeleteRevisionInput')
    DeprecationRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#DeprecationRequestDetails', name: 'DeprecationRequestDetails')
    Description = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Description', name: 'Description')
    Details = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#Details', name: 'Details')
    Event = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#Event', name: 'Event')
    EventActionEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#EventActionEntry', name: 'EventActionEntry')
    ExceptionCause = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ExceptionCause', name: 'ExceptionCause', traits: {"smithy.api#enum" => [{"value" => "InsufficientS3BucketPolicy", "name" => "InsufficientS3BucketPolicy"}, {"value" => "S3AccessDenied", "name" => "S3AccessDenied"}]})
    ExportAssetToSignedUrlRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportAssetToSignedUrlRequestDetails', name: 'ExportAssetToSignedUrlRequestDetails')
    ExportAssetToSignedUrlResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportAssetToSignedUrlResponseDetails', name: 'ExportAssetToSignedUrlResponseDetails')
    ExportAssetsToS3RequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportAssetsToS3RequestDetails', name: 'ExportAssetsToS3RequestDetails')
    ExportAssetsToS3ResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportAssetsToS3ResponseDetails', name: 'ExportAssetsToS3ResponseDetails')
    ExportRevisionsToS3RequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportRevisionsToS3RequestDetails', name: 'ExportRevisionsToS3RequestDetails')
    ExportRevisionsToS3ResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportRevisionsToS3ResponseDetails', name: 'ExportRevisionsToS3ResponseDetails')
    ExportServerSideEncryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ExportServerSideEncryption', name: 'ExportServerSideEncryption')
    GetAssetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetAssetInput', name: 'GetAssetInput')
    GetAssetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetAssetOutput', name: 'GetAssetOutput')
    GetDataGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetDataGrantRequest', name: 'GetDataGrantRequest')
    GetDataGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetDataGrantResponse', name: 'GetDataGrantResponse')
    GetDataSetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetDataSetInput', name: 'GetDataSetInput')
    GetDataSetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetDataSetOutput', name: 'GetDataSetOutput')
    GetEventActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetEventActionInput', name: 'GetEventActionInput')
    GetEventActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetEventActionOutput', name: 'GetEventActionOutput')
    GetJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetJobInput', name: 'GetJobInput')
    GetJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetJobOutput', name: 'GetJobOutput')
    GetReceivedDataGrantRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetReceivedDataGrantRequest', name: 'GetReceivedDataGrantRequest')
    GetReceivedDataGrantResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetReceivedDataGrantResponse', name: 'GetReceivedDataGrantResponse')
    GetRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetRevisionInput', name: 'GetRevisionInput')
    GetRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#GetRevisionOutput', name: 'GetRevisionOutput')
    GrantDistributionScope = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#GrantDistributionScope', name: 'GrantDistributionScope', traits: {"smithy.api#enum" => [{"value" => "AWS_ORGANIZATION", "name" => "AWS_ORGANIZATION"}, {"value" => "NONE", "name" => "NONE"}]})
    Id = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Id', name: 'Id', traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{30,40}$"})
    ImportAssetFromApiGatewayApiRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetFromApiGatewayApiRequestDetails', name: 'ImportAssetFromApiGatewayApiRequestDetails')
    ImportAssetFromApiGatewayApiResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetFromApiGatewayApiResponseDetails', name: 'ImportAssetFromApiGatewayApiResponseDetails')
    ImportAssetFromSignedUrlJobErrorDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetFromSignedUrlJobErrorDetails', name: 'ImportAssetFromSignedUrlJobErrorDetails')
    ImportAssetFromSignedUrlRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetFromSignedUrlRequestDetails', name: 'ImportAssetFromSignedUrlRequestDetails')
    ImportAssetFromSignedUrlResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetFromSignedUrlResponseDetails', name: 'ImportAssetFromSignedUrlResponseDetails')
    ImportAssetsFromLakeFormationTagPolicyRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromLakeFormationTagPolicyRequestDetails', name: 'ImportAssetsFromLakeFormationTagPolicyRequestDetails')
    ImportAssetsFromLakeFormationTagPolicyResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromLakeFormationTagPolicyResponseDetails', name: 'ImportAssetsFromLakeFormationTagPolicyResponseDetails')
    ImportAssetsFromRedshiftDataSharesRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromRedshiftDataSharesRequestDetails', name: 'ImportAssetsFromRedshiftDataSharesRequestDetails')
    ImportAssetsFromRedshiftDataSharesResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromRedshiftDataSharesResponseDetails', name: 'ImportAssetsFromRedshiftDataSharesResponseDetails')
    ImportAssetsFromS3RequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromS3RequestDetails', name: 'ImportAssetsFromS3RequestDetails')
    ImportAssetsFromS3ResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ImportAssetsFromS3ResponseDetails', name: 'ImportAssetsFromS3ResponseDetails')
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#JobEntry', name: 'JobEntry')
    JobError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#JobError', name: 'JobError')
    JobErrorLimitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#JobErrorLimitName', name: 'JobErrorLimitName', traits: {"smithy.api#enum" => [{"value" => "Assets per revision", "name" => "Assets_per_revision"}, {"value" => "Asset size in GB", "name" => "Asset_size_in_GB"}, {"value" => "Amazon Redshift datashare assets per revision", "name" => "Amazon_Redshift_datashare_assets_per_revision"}, {"value" => "AWS Lake Formation data permission assets per revision", "name" => "AWS_Lake_Formation_data_permission_assets_per_revision"}, {"value" => "Amazon S3 data access assets per revision", "name" => "Amazon_S3_data_access_assets_per_revision"}]})
    JobErrorResourceTypes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#JobErrorResourceTypes', name: 'JobErrorResourceTypes', traits: {"smithy.api#enum" => [{"value" => "REVISION", "name" => "REVISION"}, {"value" => "ASSET", "name" => "ASSET"}, {"value" => "DATA_SET", "name" => "DATA_SET"}]})
    KmsKeyArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#KmsKeyArn', name: 'KmsKeyArn', traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyToGrant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#KmsKeyToGrant', name: 'KmsKeyToGrant')
    LFPermission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#LFPermission', name: 'LFPermission', traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}, {"value" => "SELECT", "name" => "SELECT"}]})
    LFResourceDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LFResourceDetails', name: 'LFResourceDetails')
    LFResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#LFResourceType', name: 'LFResourceType', traits: {"smithy.api#enum" => [{"value" => "TABLE", "name" => "TABLE"}, {"value" => "DATABASE", "name" => "DATABASE"}]})
    LFTag = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LFTag', name: 'LFTag')
    LFTagPolicyDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LFTagPolicyDetails', name: 'LFTagPolicyDetails')
    LakeFormationDataPermissionAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LakeFormationDataPermissionAsset', name: 'LakeFormationDataPermissionAsset')
    LakeFormationDataPermissionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LakeFormationDataPermissionDetails', name: 'LakeFormationDataPermissionDetails')
    LakeFormationDataPermissionType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#LakeFormationDataPermissionType', name: 'LakeFormationDataPermissionType', traits: {"smithy.api#enum" => [{"value" => "LFTagPolicy", "name" => "LFTagPolicy"}]})
    LakeFormationTagPolicyDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#LakeFormationTagPolicyDetails', name: 'LakeFormationTagPolicyDetails')
    LimitName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#LimitName', name: 'LimitName', traits: {"smithy.api#enum" => [{"value" => "Products per account", "name" => "Products_per_account"}, {"value" => "Data sets per account", "name" => "Data_sets_per_account"}, {"value" => "Data sets per product", "name" => "Data_sets_per_product"}, {"value" => "Revisions per data set", "name" => "Revisions_per_data_set"}, {"value" => "Assets per revision", "name" => "Assets_per_revision"}, {"value" => "Assets per import job from Amazon S3", "name" => "Assets_per_import_job_from_Amazon_S3"}, {"value" => "Asset per export job from Amazon S3", "name" => "Asset_per_export_job_from_Amazon_S3"}, {"value" => "Asset size in GB", "name" => "Asset_size_in_GB"}, {"value" => "Concurrent in progress jobs to export assets to Amazon S3", "name" => "Concurrent_in_progress_jobs_to_export_assets_to_Amazon_S3"}, {"value" => "Concurrent in progress jobs to export assets to a signed URL", "name" => "Concurrent_in_progress_jobs_to_export_assets_to_a_signed_URL"}, {"value" => "Concurrent in progress jobs to import assets from Amazon S3", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_Amazon_S3"}, {"value" => "Concurrent in progress jobs to import assets from a signed URL", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_a_signed_URL"}, {"value" => "Concurrent in progress jobs to export revisions to Amazon S3", "name" => "Concurrent_in_progress_jobs_to_export_revisions_to_Amazon_S3"}, {"value" => "Event actions per account", "name" => "Event_actions_per_account"}, {"value" => "Auto export event actions per data set", "name" => "Auto_export_event_actions_per_data_set"}, {"value" => "Amazon Redshift datashare assets per import job from Redshift", "name" => "Amazon_Redshift_datashare_assets_per_import_job_from_Redshift"}, {"value" => "Concurrent in progress jobs to import assets from Amazon Redshift datashares", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_Amazon_Redshift_datashares"}, {"value" => "Revisions per Amazon Redshift datashare data set", "name" => "Revisions_per_Amazon_Redshift_datashare_data_set"}, {"value" => "Amazon Redshift datashare assets per revision", "name" => "Amazon_Redshift_datashare_assets_per_revision"}, {"value" => "Concurrent in progress jobs to import assets from an API Gateway API", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_an_API_Gateway_API"}, {"value" => "Amazon API Gateway API assets per revision", "name" => "Amazon_API_Gateway_API_assets_per_revision"}, {"value" => "Revisions per Amazon API Gateway API data set", "name" => "Revisions_per_Amazon_API_Gateway_API_data_set"}, {"value" => "Concurrent in progress jobs to import assets from an AWS Lake Formation tag policy", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_an_AWS_Lake_Formation_tag_policy"}, {"value" => "AWS Lake Formation data permission assets per revision", "name" => "AWS_Lake_Formation_data_permission_assets_per_revision"}, {"value" => "Revisions per AWS Lake Formation data permission data set", "name" => "Revisions_per_AWS_Lake_Formation_data_permission_data_set"}, {"value" => "Revisions per Amazon S3 data access data set", "name" => "Revisions_per_Amazon_S3_data_access_data_set"}, {"value" => "Amazon S3 data access assets per revision", "name" => "Amazon_S3_data_access_assets_per_revision"}, {"value" => "Concurrent in progress jobs to create Amazon S3 data access assets from S3 buckets", "name" => "Concurrent_in_progress_jobs_to_create_Amazon_S3_data_access_assets_from_S3_buckets"}, {"value" => "Active and pending data grants", "name" => "Active_and_pending_data_grants"}, {"value" => "Pending data grants per consumer", "name" => "Pending_data_grants_per_consumer"}]})
    ListDataGrantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataGrantsRequest', name: 'ListDataGrantsRequest')
    ListDataGrantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataGrantsResponse', name: 'ListDataGrantsResponse')
    ListDataSetRevisionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataSetRevisionsInput', name: 'ListDataSetRevisionsInput')
    ListDataSetRevisionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataSetRevisionsOutput', name: 'ListDataSetRevisionsOutput')
    ListDataSetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataSetsInput', name: 'ListDataSetsInput')
    ListDataSetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListDataSetsOutput', name: 'ListDataSetsOutput')
    ListEventActionsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListEventActionsInput', name: 'ListEventActionsInput')
    ListEventActionsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListEventActionsOutput', name: 'ListEventActionsOutput')
    ListJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListJobsInput', name: 'ListJobsInput')
    ListJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListJobsOutput', name: 'ListJobsOutput')
    ListOfAssetDestinationEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfAssetDestinationEntry', name: 'ListOfAssetDestinationEntry')
    ListOfAssetEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfAssetEntry', name: 'ListOfAssetEntry')
    ListOfAssetSourceEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfAssetSourceEntry', name: 'ListOfAssetSourceEntry')
    ListOfDataGrantSummaryEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfDataGrantSummaryEntry', name: 'ListOfDataGrantSummaryEntry')
    ListOfDataSetEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfDataSetEntry', name: 'ListOfDataSetEntry')
    ListOfDatabaseLFTagPolicyPermissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfDatabaseLFTagPolicyPermissions', name: 'ListOfDatabaseLFTagPolicyPermissions')
    ListOfEventActionEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfEventActionEntry', name: 'ListOfEventActionEntry')
    ListOfJobEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfJobEntry', name: 'ListOfJobEntry')
    ListOfJobError = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfJobError', name: 'ListOfJobError')
    ListOfKmsKeysToGrant = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfKmsKeysToGrant', name: 'ListOfKmsKeysToGrant', traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ListOfLFPermissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfLFPermissions', name: 'ListOfLFPermissions')
    ListOfLFTagValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfLFTagValues', name: 'ListOfLFTagValues')
    ListOfLFTags = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfLFTags', name: 'ListOfLFTags')
    ListOfLakeFormationTagPolicies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfLakeFormationTagPolicies', name: 'ListOfLakeFormationTagPolicies')
    ListOfReceivedDataGrantSummariesEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfReceivedDataGrantSummariesEntry', name: 'ListOfReceivedDataGrantSummariesEntry')
    ListOfRedshiftDataShareAssetSourceEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfRedshiftDataShareAssetSourceEntry', name: 'ListOfRedshiftDataShareAssetSourceEntry')
    ListOfRedshiftDataShares = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfRedshiftDataShares', name: 'ListOfRedshiftDataShares')
    ListOfRevisionDestinationEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfRevisionDestinationEntry', name: 'ListOfRevisionDestinationEntry')
    ListOfRevisionEntry = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfRevisionEntry', name: 'ListOfRevisionEntry')
    ListOfS3DataAccesses = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfS3DataAccesses', name: 'ListOfS3DataAccesses')
    ListOfSchemaChangeDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfSchemaChangeDetails', name: 'ListOfSchemaChangeDetails')
    ListOfTableTagPolicyLFPermissions = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOfTableTagPolicyLFPermissions', name: 'ListOfTableTagPolicyLFPermissions')
    ListOfString = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.dataexchange#ListOf__string', name: 'ListOfString')
    ListReceivedDataGrantsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListReceivedDataGrantsRequest', name: 'ListReceivedDataGrantsRequest')
    ListReceivedDataGrantsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListReceivedDataGrantsResponse', name: 'ListReceivedDataGrantsResponse')
    ListRevisionAssetsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListRevisionAssetsInput', name: 'ListRevisionAssetsInput')
    ListRevisionAssetsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListRevisionAssetsOutput', name: 'ListRevisionAssetsOutput')
    ListTagsForResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListTagsForResourceInput', name: 'ListTagsForResourceInput')
    ListTagsForResourceOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ListTagsForResourceOutput', name: 'ListTagsForResourceOutput')
    MapOfString = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.dataexchange#MapOf__string', name: 'MapOfString')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.dataexchange#MaxResults', name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 200}})
    Name = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Name', name: 'Name')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#NextToken', name: 'NextToken')
    NotificationDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#NotificationDetails', name: 'NotificationDetails')
    NotificationType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#NotificationType', name: 'NotificationType', traits: {"smithy.api#enum" => [{"value" => "DATA_DELAY", "name" => "DATA_DELAY"}, {"value" => "DATA_UPDATE", "name" => "DATA_UPDATE"}, {"value" => "DEPRECATION", "name" => "DEPRECATION"}, {"value" => "SCHEMA_CHANGE", "name" => "SCHEMA_CHANGE"}]})
    Origin = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Origin', name: 'Origin', traits: {"smithy.api#enum" => [{"value" => "OWNED", "name" => "OWNED"}, {"value" => "ENTITLED", "name" => "ENTITLED"}]})
    OriginDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#OriginDetails', name: 'OriginDetails')
    ProtocolType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ProtocolType', name: 'ProtocolType', traits: {"smithy.api#enum" => [{"value" => "REST", "name" => "REST"}]})
    ReceivedDataGrantSummariesEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ReceivedDataGrantSummariesEntry', name: 'ReceivedDataGrantSummariesEntry')
    ReceiverPrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ReceiverPrincipal', name: 'ReceiverPrincipal', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    RedshiftDataShareAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RedshiftDataShareAsset', name: 'RedshiftDataShareAsset')
    RedshiftDataShareAssetSourceEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RedshiftDataShareAssetSourceEntry', name: 'RedshiftDataShareAssetSourceEntry')
    RedshiftDataShareDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RedshiftDataShareDetails', name: 'RedshiftDataShareDetails')
    RequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RequestDetails', name: 'RequestDetails')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ResourceType', name: 'ResourceType', traits: {"smithy.api#enum" => [{"value" => "DATA_SET", "name" => "DATA_SET"}, {"value" => "REVISION", "name" => "REVISION"}, {"value" => "ASSET", "name" => "ASSET"}, {"value" => "JOB", "name" => "JOB"}, {"value" => "EVENT_ACTION", "name" => "EVENT_ACTION"}, {"value" => "DATA_GRANT", "name" => "DATA_GRANT"}]})
    ResponseDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ResponseDetails', name: 'ResponseDetails')
    RevisionDestinationEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RevisionDestinationEntry', name: 'RevisionDestinationEntry')
    RevisionEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RevisionEntry', name: 'RevisionEntry')
    RevisionPublished = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RevisionPublished', name: 'RevisionPublished')
    RevokeRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RevokeRevisionInput', name: 'RevokeRevisionInput')
    RevokeRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#RevokeRevisionOutput', name: 'RevokeRevisionOutput')
    RoleArn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#RoleArn', name: 'RoleArn', traits: {"smithy.api#pattern" => "^arn:aws:iam::(\\d{12}):role\\/.+$"})
    S3DataAccessAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#S3DataAccessAsset', name: 'S3DataAccessAsset')
    S3DataAccessAssetSourceEntry = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#S3DataAccessAssetSourceEntry', name: 'S3DataAccessAssetSourceEntry')
    S3DataAccessDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#S3DataAccessDetails', name: 'S3DataAccessDetails')
    S3SnapshotAsset = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#S3SnapshotAsset', name: 'S3SnapshotAsset')
    SchemaChangeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SchemaChangeDetails', name: 'SchemaChangeDetails')
    SchemaChangeRequestDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SchemaChangeRequestDetails', name: 'SchemaChangeRequestDetails')
    SchemaChangeType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#SchemaChangeType', name: 'SchemaChangeType', traits: {"smithy.api#enum" => [{"value" => "ADD", "name" => "ADD"}, {"value" => "REMOVE", "name" => "REMOVE"}, {"value" => "MODIFY", "name" => "MODIFY"}]})
    ScopeDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ScopeDetails', name: 'ScopeDetails')
    SendApiAssetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SendApiAssetInput', name: 'SendApiAssetInput')
    SendApiAssetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SendApiAssetOutput', name: 'SendApiAssetOutput')
    SendDataSetNotificationRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SendDataSetNotificationRequest', name: 'SendDataSetNotificationRequest')
    SendDataSetNotificationResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#SendDataSetNotificationResponse', name: 'SendDataSetNotificationResponse')
    SenderPrincipal = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#SenderPrincipal', name: 'SenderPrincipal', traits: {"smithy.api#pattern" => "^\\d{12}$"})
    ServerSideEncryptionTypes = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#ServerSideEncryptionTypes', name: 'ServerSideEncryptionTypes', traits: {"smithy.api#enum" => [{"value" => "aws:kms", "name" => "aws_kms"}, {"value" => "AES256", "name" => "AES256"}]})
    ServiceLimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ServiceLimitExceededException', name: 'ServiceLimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#StartJobInput', name: 'StartJobInput')
    StartJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#StartJobOutput', name: 'StartJobOutput')
    State = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#State', name: 'State', traits: {"smithy.api#enum" => [{"value" => "WAITING", "name" => "WAITING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "TIMED_OUT", "name" => "TIMED_OUT"}]})
    TableLFTagPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#TableLFTagPolicy', name: 'TableLFTagPolicy')
    TableLFTagPolicyAndPermissions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#TableLFTagPolicyAndPermissions', name: 'TableLFTagPolicyAndPermissions')
    TableTagPolicyLFPermission = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#TableTagPolicyLFPermission', name: 'TableTagPolicyLFPermission', traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}, {"value" => "SELECT", "name" => "SELECT"}]})
    TagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#TagResourceInput', name: 'TagResourceInput')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.dataexchange#Timestamp', name: 'Timestamp', traits: {"smithy.api#timestampFormat" => "date-time"})
    Type = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#Type', name: 'Type', traits: {"smithy.api#enum" => [{"value" => "IMPORT_ASSETS_FROM_S3", "name" => "IMPORT_ASSETS_FROM_S3"}, {"value" => "IMPORT_ASSET_FROM_SIGNED_URL", "name" => "IMPORT_ASSET_FROM_SIGNED_URL"}, {"value" => "EXPORT_ASSETS_TO_S3", "name" => "EXPORT_ASSETS_TO_S3"}, {"value" => "EXPORT_ASSET_TO_SIGNED_URL", "name" => "EXPORT_ASSET_TO_SIGNED_URL"}, {"value" => "EXPORT_REVISIONS_TO_S3", "name" => "EXPORT_REVISIONS_TO_S3"}, {"value" => "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "name" => "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES"}, {"value" => "IMPORT_ASSET_FROM_API_GATEWAY_API", "name" => "IMPORT_ASSET_FROM_API_GATEWAY_API"}, {"value" => "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET", "name" => "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET"}, {"value" => "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY", "name" => "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY"}]})
    UntagResourceInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UntagResourceInput', name: 'UntagResourceInput')
    UpdateAssetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateAssetInput', name: 'UpdateAssetInput')
    UpdateAssetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateAssetOutput', name: 'UpdateAssetOutput')
    UpdateDataSetInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateDataSetInput', name: 'UpdateDataSetInput')
    UpdateDataSetOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateDataSetOutput', name: 'UpdateDataSetOutput')
    UpdateEventActionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateEventActionInput', name: 'UpdateEventActionInput')
    UpdateEventActionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateEventActionOutput', name: 'UpdateEventActionOutput')
    UpdateRevisionInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateRevisionInput', name: 'UpdateRevisionInput')
    UpdateRevisionOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#UpdateRevisionOutput', name: 'UpdateRevisionOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.dataexchange#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.dataexchange#__boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.dataexchange#__double', name: 'Double', traits: {"smithy.api#default" => 0})
    Doublemin0 = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.dataexchange#__doubleMin0', name: 'Doublemin0', traits: {"smithy.api#default" => 0})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#__string', name: 'String')
    Stringmin0max16384 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#__stringMin0Max16384', name: 'Stringmin0max16384', traits: {"smithy.api#length" => {"min" => 0, "max" => 16384}})
    Stringmin0max4096 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#__stringMin0Max4096', name: 'Stringmin0max4096', traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Stringmin10max512 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#__stringMin10Max512', name: 'Stringmin10max512', traits: {"smithy.api#length" => {"min" => 10, "max" => 512}})
    Stringmin24max24patternazaz094azaz092azaz093 = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.dataexchange#__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093', name: 'Stringmin24max24patternazaz094azaz092azaz093', traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})

    AcceptDataGrantRequest.add_member(:data_grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantArn, location_name: 'DataGrantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant to accept.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptDataGrantRequest.type = Types::AcceptDataGrantRequest
    AcceptDataGrantResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the accepted data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>"}))
    AcceptDataGrantResponse.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the accepted data grant.</p>"}))
    AcceptDataGrantResponse.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    AcceptDataGrantResponse.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    AcceptDataGrantResponse.add_member(:grant_distribution_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantDistributionScope, location_name: 'GrantDistributionScope', traits: {"smithy.api#documentation" => "<p>The distribution scope for the data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the accepted data grant.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    AcceptDataGrantResponse.type = Types::AcceptDataGrantResponse
    AcceptanceStateFilterValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptanceStateFilterValue)
    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>Access to the resource is denied.</p>", "smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:export_revision_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoExportRevisionToS3RequestDetails, location_name: 'ExportRevisionToS3', traits: {"smithy.api#documentation" => "<p>Details for the export revision to Amazon S3 action.</p>"}))
    Action.type = Types::Action
    ApiGatewayApiAsset.add_member(:api_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDescription, location_name: 'ApiDescription', traits: {"smithy.api#documentation" => "<p>The API description of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiEndpoint', traits: {"smithy.api#documentation" => "<p>The API endpoint of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiId', traits: {"smithy.api#documentation" => "<p>The unique identifier of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#documentation" => "<p>The API key of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiName', traits: {"smithy.api#documentation" => "<p>The API name of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_specification_download_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiSpecificationDownloadUrl', traits: {"smithy.api#documentation" => "<p>The download URL of the API specification of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:api_specification_download_url_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApiSpecificationDownloadUrlExpiresAt', traits: {"smithy.api#documentation" => "<p>The date and time that the upload URL expires, in ISO 8601 format.</p>"}))
    ApiGatewayApiAsset.add_member(:protocol_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'ProtocolType', traits: {"smithy.api#documentation" => "<p>The protocol type of the API asset.</p>"}))
    ApiGatewayApiAsset.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The stage of the API asset.</p>"}))
    ApiGatewayApiAsset.type = Types::ApiGatewayApiAsset
    AssetDestinationEntry.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset.</p>", "smithy.api#required" => {}}))
    AssetDestinationEntry.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that is the destination for the asset.</p>", "smithy.api#required" => {}}))
    AssetDestinationEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the object in Amazon S3 for the asset.</p>"}))
    AssetDestinationEntry.type = Types::AssetDestinationEntry
    AssetDetails.add_member(:s3_snapshot_asset, Smithy::Schema::Shapes::ShapeRef.new(shape: S3SnapshotAsset, location_name: 'S3SnapshotAsset', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object that is the asset.</p>"}))
    AssetDetails.add_member(:redshift_data_share_asset, Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataShareAsset, location_name: 'RedshiftDataShareAsset', traits: {"smithy.api#documentation" => "<p>The Amazon Redshift datashare that is the asset.</p>"}))
    AssetDetails.add_member(:api_gateway_api_asset, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiGatewayApiAsset, location_name: 'ApiGatewayApiAsset', traits: {"smithy.api#documentation" => "<p>Information about the API Gateway API asset.</p>"}))
    AssetDetails.add_member(:s3_data_access_asset, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataAccessAsset, location_name: 'S3DataAccessAsset', traits: {"smithy.api#documentation" => "<p>The Amazon S3 data access that is the asset.</p>"}))
    AssetDetails.add_member(:lake_formation_data_permission_asset, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationDataPermissionAsset, location_name: 'LakeFormationDataPermissionAsset', traits: {"smithy.api#documentation" => "<p>The AWS Lake Formation data permission that is the asset.</p>"}))
    AssetDetails.type = Types::AssetDetails
    AssetEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the asset.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:asset_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetDetails, location_name: 'AssetDetails', traits: {"smithy.api#documentation" => "<p>Details about the asset.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was created, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this asset.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used\n         as the asset name. When exporting to Amazon S3, the asset name is used as default target\n         Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as\n         the asset name. When importing from Amazon Redshift, the datashare name is used as the\n         asset name. When importing from AWS Lake Formation, the static values of \"Database(s)\n         included in LF-tag policy\" or \"Table(s) included in LF-tag policy\" are used as the asset\n         name.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this asset.</p>", "smithy.api#required" => {}}))
    AssetEntry.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This\n         parameter is returned when an asset owner is viewing the entitled copy of its owned\n         asset.</p>"}))
    AssetEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    AssetEntry.type = Types::AssetEntry
    AssetSourceEntry.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that's part of the source of the asset.</p>", "smithy.api#required" => {}}))
    AssetSourceEntry.add_member(:key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Key', traits: {"smithy.api#documentation" => "<p>The name of the object in Amazon S3 for the asset.</p>", "smithy.api#required" => {}}))
    AssetSourceEntry.type = Types::AssetSourceEntry
    AutoExportRevisionDestinationEntry.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that is the destination for the event action.</p>", "smithy.api#required" => {}}))
    AutoExportRevisionDestinationEntry.add_member(:key_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPattern', traits: {"smithy.api#documentation" => "<p>A string representing the pattern for generated names of the individual assets in the\n         revision. For more information about key patterns, see <a href=\"https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns\">Key patterns when exporting revisions</a>.</p>"}))
    AutoExportRevisionDestinationEntry.type = Types::AutoExportRevisionDestinationEntry
    AutoExportRevisionToS3RequestDetails.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Encryption configuration for the auto export job.</p>"}))
    AutoExportRevisionToS3RequestDetails.add_member(:revision_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AutoExportRevisionDestinationEntry, location_name: 'RevisionDestination', traits: {"smithy.api#documentation" => "<p>A revision destination is the Amazon S3 bucket folder destination to where the export\n         will be sent.</p>", "smithy.api#required" => {}}))
    AutoExportRevisionToS3RequestDetails.type = Types::AutoExportRevisionToS3RequestDetails
    CancelJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobInput.type = Types::CancelJobInput
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The request couldn't be completed because it conflicted with the current state of the\n         resource.</p>", "smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource with the conflict.</p>"}))
    ConflictException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of the resource with the conflict.</p>"}))
    ConflictException.type = Types::ConflictException
    CreateDataGrantRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:grant_distribution_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantDistributionScope, location_name: 'GrantDistributionScope', traits: {"smithy.api#documentation" => "<p>The distribution scope of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:source_data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceDataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set used to create the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    CreateDataGrantRequest.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the data grant.</p>"}))
    CreateDataGrantRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the data grant. A tag is a key-value pair.</p>"}))
    CreateDataGrantRequest.type = Types::CreateDataGrantRequest
    CreateDataGrantResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the data grant.</p>"}))
    CreateDataGrantResponse.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    CreateDataGrantResponse.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    CreateDataGrantResponse.add_member(:grant_distribution_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantDistributionScope, location_name: 'GrantDistributionScope', traits: {"smithy.api#documentation" => "<p>The distribution scope for the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:source_data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceDataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set used to create the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated to the data grant. A tag is a key-value pair.</p>"}))
    CreateDataGrantResponse.type = Types::CreateDataGrantResponse
    CreateDataSetInput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>", "smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>A description for the data set. This value can be up to 16,348 characters long.</p>", "smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>", "smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A data set tag is an optional label that you can assign to a data set when you create\n         it. Each tag consists of a key and an optional value, both of which you define. When you\n         use tagging, you can also use tag-based access control in IAM policies to control access to\n         these data sets and revisions.</p>"}))
    CreateDataSetInput.type = Types::CreateDataSetInput
    CreateDataSetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the data set.</p>"}))
    CreateDataSetOutput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>"}))
    CreateDataSetOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was created, in ISO 8601 format.</p>"}))
    CreateDataSetOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the data set.</p>"}))
    CreateDataSetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set.</p>"}))
    CreateDataSetOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>"}))
    CreateDataSetOutput.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED\n         to the account (for subscribers).</p>"}))
    CreateDataSetOutput.add_member(:origin_details, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginDetails, location_name: 'OriginDetails', traits: {"smithy.api#documentation" => "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS\n         Marketplace.</p>"}))
    CreateDataSetOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The data set ID of the owned data set corresponding to the entitled data set being\n         viewed. This parameter is returned when a data set owner is viewing the entitled copy of\n         its owned data set.</p>"}))
    CreateDataSetOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the data set.</p>"}))
    CreateDataSetOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"}))
    CreateDataSetOutput.type = Types::CreateDataSetOutput
    CreateEventActionInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>", "smithy.api#required" => {}}))
    CreateEventActionInput.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>What occurs to start an action.</p>", "smithy.api#required" => {}}))
    CreateEventActionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>Key-value pairs that you can associate with the event action.</p>"}))
    CreateEventActionInput.type = Types::CreateEventActionInput
    CreateEventActionOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>"}))
    CreateEventActionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the event action.</p>"}))
    CreateEventActionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was created, in ISO 8601 format.</p>"}))
    CreateEventActionOutput.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>What occurs to start an action.</p>"}))
    CreateEventActionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>"}))
    CreateEventActionOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the event action.</p>"}))
    CreateEventActionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"}))
    CreateEventActionOutput.type = Types::CreateEventActionOutput
    CreateJobInput.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: RequestDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>The details for the CreateJob request.</p>", "smithy.api#required" => {}}))
    CreateJobInput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of job to be created.</p>", "smithy.api#required" => {}}))
    CreateJobInput.type = Types::CreateJobInput
    CreateJobOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the job.</p>"}))
    CreateJobOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was created, in ISO 8601 format.</p>"}))
    CreateJobOutput.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Details about the job.</p>"}))
    CreateJobOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJobError, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>The errors associated with jobs.</p>"}))
    CreateJobOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>"}))
    CreateJobOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the job.</p>"}))
    CreateJobOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type.</p>"}))
    CreateJobOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was last updated, in ISO 8601 format.</p>"}))
    CreateJobOutput.type = Types::CreateJobOutput
    CreateRevisionInput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    CreateRevisionInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRevisionInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A revision tag is an optional label that you can assign to a revision when you create\n         it. Each tag consists of a key and an optional value, both of which you define. When you\n         use tagging, you can also use tag-based access control in IAM policies to control access to\n         these data sets and revisions.</p>"}))
    CreateRevisionInput.type = Types::CreateRevisionInput
    CreateRevisionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the revision.</p>"}))
    CreateRevisionOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    CreateRevisionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was created, in ISO 8601 format.</p>"}))
    CreateRevisionOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the data set revision.</p>"}))
    CreateRevisionOutput.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>To publish a revision to a data set in a product, the revision must first be finalized.\n         Finalizing a revision tells AWS Data Exchange that your changes to the assets in the\n         revision are complete. After it's in this read-only state, you can publish the revision to\n         your products. Finalized revisions can be published through the AWS Data Exchange console\n         or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API\n         action. When using the API, revisions are uniquely identified by their ARN.</p>"}))
    CreateRevisionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>"}))
    CreateRevisionOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The revision ID of the owned revision corresponding to the entitled revision being\n         viewed. This parameter is returned when a revision owner is viewing the entitled copy of\n         its owned revision.</p>"}))
    CreateRevisionOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the revision.</p>"}))
    CreateRevisionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"}))
    CreateRevisionOutput.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>"}))
    CreateRevisionOutput.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revoked', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A status indicating that subscribers' access to the revision was revoked.</p>"}))
    CreateRevisionOutput.add_member(:revoked_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RevokedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was revoked, in ISO 8601 format.</p>"}))
    CreateRevisionOutput.type = Types::CreateRevisionOutput
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:asset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataAccessAssetSourceEntry, location_name: 'AssetSource', traits: {"smithy.api#documentation" => "<p>Details about the S3 data access source asset.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the creation of this Amazon S3\n         data access.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.type = Types::CreateS3DataAccessFromS3BucketRequestDetails
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:asset_source, Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataAccessAssetSourceEntry, location_name: 'AssetSource', traits: {"smithy.api#documentation" => "<p>Details about the asset source from an Amazon S3 bucket.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for this data set.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>", "smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.type = Types::CreateS3DataAccessFromS3BucketResponseDetails
    DataGrantSummaryEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    DataGrantSummaryEntry.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    DataGrantSummaryEntry.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:source_data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceDataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set used to create the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    DataGrantSummaryEntry.type = Types::DataGrantSummaryEntry
    DataSetEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the data set.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was created, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the data set.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED\n         to the account (for subscribers).</p>", "smithy.api#required" => {}}))
    DataSetEntry.add_member(:origin_details, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginDetails, location_name: 'OriginDetails', traits: {"smithy.api#documentation" => "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS\n         Marketplace.</p>"}))
    DataSetEntry.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The data set ID of the owned data set corresponding to the entitled data set being\n         viewed. This parameter is returned when a data set owner is viewing the entitled copy of\n         its owned data set.</p>"}))
    DataSetEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    DataSetEntry.type = Types::DataSetEntry
    DataUpdateRequestDetails.add_member(:data_updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DataUpdatedAt', traits: {"smithy.api#documentation" => "<p>A\n         datetime in the past when the data was updated. This typically means that the underlying\n         resource supporting the data set was updated.</p>"}))
    DataUpdateRequestDetails.type = Types::DataUpdateRequestDetails
    DatabaseLFTagPolicy.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFTags, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of LF-tag conditions that apply to database resources.</p>", "smithy.api#required" => {}}))
    DatabaseLFTagPolicy.type = Types::DatabaseLFTagPolicy
    DatabaseLFTagPolicyAndPermissions.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFTags, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of LF-tag conditions that apply to database resources.</p>", "smithy.api#required" => {}}))
    DatabaseLFTagPolicyAndPermissions.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDatabaseLFTagPolicyPermissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions granted to subscribers on database resources.</p>", "smithy.api#required" => {}}))
    DatabaseLFTagPolicyAndPermissions.type = Types::DatabaseLFTagPolicyAndPermissions
    DeleteAssetInput.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for an asset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.type = Types::DeleteAssetInput
    DeleteDataGrantRequest.add_member(:data_grant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantId, location_name: 'DataGrantId', traits: {"smithy.api#documentation" => "<p>The ID of the data grant to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataGrantRequest.type = Types::DeleteDataGrantRequest
    DeleteDataSetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSetInput.type = Types::DeleteDataSetInput
    DeleteEventActionInput.add_member(:event_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventActionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventActionInput.type = Types::DeleteEventActionInput
    DeleteRevisionInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRevisionInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRevisionInput.type = Types::DeleteRevisionInput
    DeprecationRequestDetails.add_member(:deprecation_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'DeprecationAt', traits: {"smithy.api#documentation" => "<p>A\n         datetime in the future when the data set will be deprecated.</p>", "smithy.api#required" => {}}))
    DeprecationRequestDetails.type = Types::DeprecationRequestDetails
    Details.add_member(:import_asset_from_signed_url_job_error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlJobErrorDetails, location_name: 'ImportAssetFromSignedUrlJobErrorDetails', traits: {"smithy.api#documentation" => "<p>Information about the job error.</p>"}))
    Details.add_member(:import_assets_from_s3_job_error_details, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, location_name: 'ImportAssetsFromS3JobErrorDetails', traits: {"smithy.api#documentation" => "<p>Details about the job error.</p>"}))
    Details.type = Types::Details
    Event.add_member(:revision_published, Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionPublished, location_name: 'RevisionPublished', traits: {"smithy.api#documentation" => "<p>What occurs to start the revision publish action.</p>"}))
    Event.type = Types::Event
    EventActionEntry.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>", "smithy.api#required" => {}}))
    EventActionEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the event action.</p>", "smithy.api#required" => {}}))
    EventActionEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was created, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    EventActionEntry.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>What occurs to start an action.</p>", "smithy.api#required" => {}}))
    EventActionEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>", "smithy.api#required" => {}}))
    EventActionEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    EventActionEntry.type = Types::EventActionEntry
    ExportAssetToSignedUrlRequestDetails.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset that is exported to a signed URL.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this export request.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.type = Types::ExportAssetToSignedUrlRequestDetails
    ExportAssetToSignedUrlResponseDetails.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this export response.</p>", "smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignedUrl', traits: {"smithy.api#documentation" => "<p>The signed URL for the export request.</p>"}))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SignedUrlExpiresAt', traits: {"smithy.api#documentation" => "<p>The date and time that the signed URL expires, in ISO 8601 format.</p>"}))
    ExportAssetToSignedUrlResponseDetails.type = Types::ExportAssetToSignedUrlResponseDetails
    ExportAssetsToS3RequestDetails.add_member(:asset_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetDestinationEntry, location_name: 'AssetDestinations', traits: {"smithy.api#documentation" => "<p>The destination for the asset.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Encryption configuration for the export job.</p>"}))
    ExportAssetsToS3RequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this export request.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.type = Types::ExportAssetsToS3RequestDetails
    ExportAssetsToS3ResponseDetails.add_member(:asset_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetDestinationEntry, location_name: 'AssetDestinations', traits: {"smithy.api#documentation" => "<p>The destination in Amazon S3 where the asset is exported.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Encryption configuration of the export job.</p>"}))
    ExportAssetsToS3ResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this export response.</p>", "smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.type = Types::ExportAssetsToS3ResponseDetails
    ExportRevisionsToS3RequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportRevisionsToS3RequestDetails.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Encryption configuration for the export job.</p>"}))
    ExportRevisionsToS3RequestDetails.add_member(:revision_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRevisionDestinationEntry, location_name: 'RevisionDestinations', traits: {"smithy.api#documentation" => "<p>The destination for the revision.</p>", "smithy.api#required" => {}}))
    ExportRevisionsToS3RequestDetails.type = Types::ExportRevisionsToS3RequestDetails
    ExportRevisionsToS3ResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this export job.</p>", "smithy.api#required" => {}}))
    ExportRevisionsToS3ResponseDetails.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportServerSideEncryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Encryption configuration of the export job.</p>"}))
    ExportRevisionsToS3ResponseDetails.add_member(:revision_destinations, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRevisionDestinationEntry, location_name: 'RevisionDestinations', traits: {"smithy.api#documentation" => "<p>The destination in Amazon S3 where the revision is exported.</p>", "smithy.api#required" => {}}))
    ExportRevisionsToS3ResponseDetails.add_member(:event_action_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventActionArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the event action.</p>"}))
    ExportRevisionsToS3ResponseDetails.type = Types::ExportRevisionsToS3ResponseDetails
    ExportServerSideEncryption.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the AWS KMS key you want to use to encrypt the Amazon\n         S3 objects. This parameter is required if you choose aws:kms as an encryption type.</p>"}))
    ExportServerSideEncryption.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSideEncryptionTypes, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The type of server side encryption used for encrypting the objects in Amazon S3.</p>", "smithy.api#required" => {}}))
    ExportServerSideEncryption.type = Types::ExportServerSideEncryption
    GetAssetInput.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for an asset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.type = Types::GetAssetInput
    GetAssetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the asset.</p>"}))
    GetAssetOutput.add_member(:asset_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetDetails, location_name: 'AssetDetails', traits: {"smithy.api#documentation" => "<p>Details about the asset.</p>"}))
    GetAssetOutput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>"}))
    GetAssetOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was created, in ISO 8601 format.</p>"}))
    GetAssetOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this asset.</p>"}))
    GetAssetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset.</p>"}))
    GetAssetOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used\n         as the asset name. When exporting to Amazon S3, the asset name is used as default target\n         Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as\n         the asset name. When importing from Amazon Redshift, the datashare name is used as the\n         asset name. When importing from AWS Lake Formation, the static values of \"Database(s)\n         included in the LF-tag policy\" or \"Table(s) included in the LF-tag policy\" are used as the\n         asset name.</p>"}))
    GetAssetOutput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this asset.</p>"}))
    GetAssetOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This\n         parameter is returned when an asset owner is viewing the entitled copy of its owned\n         asset.</p>"}))
    GetAssetOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>"}))
    GetAssetOutput.type = Types::GetAssetOutput
    GetDataGrantRequest.add_member(:data_grant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantId, location_name: 'DataGrantId', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataGrantRequest.type = Types::GetDataGrantRequest
    GetDataGrantResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the data grant.</p>"}))
    GetDataGrantResponse.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    GetDataGrantResponse.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    GetDataGrantResponse.add_member(:grant_distribution_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantDistributionScope, location_name: 'GrantDistributionScope', traits: {"smithy.api#documentation" => "<p>The distribution scope for the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:source_data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceDataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set used to create the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags associated to the data grant. A tag is a key-value pair.</p>"}))
    GetDataGrantResponse.type = Types::GetDataGrantResponse
    GetDataSetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetInput.type = Types::GetDataSetInput
    GetDataSetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the data set.</p>"}))
    GetDataSetOutput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>"}))
    GetDataSetOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was created, in ISO 8601 format.</p>"}))
    GetDataSetOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the data set.</p>"}))
    GetDataSetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set.</p>"}))
    GetDataSetOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>"}))
    GetDataSetOutput.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED\n         to the account (for subscribers).</p>"}))
    GetDataSetOutput.add_member(:origin_details, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginDetails, location_name: 'OriginDetails', traits: {"smithy.api#documentation" => "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS\n         Marketplace.</p>"}))
    GetDataSetOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The data set ID of the owned data set corresponding to the entitled data set being\n         viewed. This parameter is returned when a data set owner is viewing the entitled copy of\n         its owned data set.</p>"}))
    GetDataSetOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the data set.</p>"}))
    GetDataSetOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"}))
    GetDataSetOutput.type = Types::GetDataSetOutput
    GetEventActionInput.add_member(:event_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventActionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventActionInput.type = Types::GetEventActionInput
    GetEventActionOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>"}))
    GetEventActionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the event action.</p>"}))
    GetEventActionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was created, in ISO 8601 format.</p>"}))
    GetEventActionOutput.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>What occurs to start an action.</p>"}))
    GetEventActionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>"}))
    GetEventActionOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the event action.</p>"}))
    GetEventActionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"}))
    GetEventActionOutput.type = Types::GetEventActionOutput
    GetJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobInput.type = Types::GetJobInput
    GetJobOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the job.</p>"}))
    GetJobOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was created, in ISO 8601 format.</p>"}))
    GetJobOutput.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Details about the job.</p>"}))
    GetJobOutput.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJobError, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>The errors associated with jobs.</p>"}))
    GetJobOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>"}))
    GetJobOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the job.</p>"}))
    GetJobOutput.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type.</p>"}))
    GetJobOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was last updated, in ISO 8601 format.</p>"}))
    GetJobOutput.type = Types::GetJobOutput
    GetReceivedDataGrantRequest.add_member(:data_grant_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantArn, location_name: 'DataGrantArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReceivedDataGrantRequest.type = Types::GetReceivedDataGrantRequest
    GetReceivedDataGrantResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>"}))
    GetReceivedDataGrantResponse.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantDescription, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description of the data grant.</p>"}))
    GetReceivedDataGrantResponse.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    GetReceivedDataGrantResponse.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    GetReceivedDataGrantResponse.add_member(:grant_distribution_scope, Smithy::Schema::Shapes::ShapeRef.new(shape: GrantDistributionScope, location_name: 'GrantDistributionScope', traits: {"smithy.api#documentation" => "<p>The distribution scope for the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.type = Types::GetReceivedDataGrantResponse
    GetRevisionInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionInput.type = Types::GetRevisionInput
    GetRevisionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the revision.</p>"}))
    GetRevisionOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    GetRevisionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was created, in ISO 8601 format.</p>"}))
    GetRevisionOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the data set revision.</p>"}))
    GetRevisionOutput.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>To publish a revision to a data set in a product, the revision must first be finalized.\n         Finalizing a revision tells AWS Data Exchange that your changes to the assets in the\n         revision are complete. After it's in this read-only state, you can publish the revision to\n         your products. Finalized revisions can be published through the AWS Data Exchange console\n         or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API\n         action. When using the API, revisions are uniquely identified by their ARN.</p>"}))
    GetRevisionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>"}))
    GetRevisionOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The revision ID of the owned revision corresponding to the entitled revision being\n         viewed. This parameter is returned when a revision owner is viewing the entitled copy of\n         its owned revision.</p>"}))
    GetRevisionOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags for the revision.</p>"}))
    GetRevisionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"}))
    GetRevisionOutput.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>"}))
    GetRevisionOutput.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revoked', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A status indicating that subscribers' access to the revision was revoked.</p>"}))
    GetRevisionOutput.add_member(:revoked_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RevokedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was revoked, in ISO 8601 format.</p>"}))
    GetRevisionOutput.type = Types::GetRevisionOutput
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDescription, location_name: 'ApiDescription', traits: {"smithy.api#documentation" => "<p>The API description. Markdown supported.</p>"}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiId', traits: {"smithy.api#documentation" => "<p>The API Gateway API ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#documentation" => "<p>The API Gateway API key.</p>"}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiName', traits: {"smithy.api#documentation" => "<p>The API name.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_specification_md5_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin24max24patternazaz094azaz092azaz093, location_name: 'ApiSpecificationMd5Hash', traits: {"smithy.api#documentation" => "<p>The Base64-encoded MD5 hash of the OpenAPI 3.0 JSON API specification file. It is used\n         to ensure the integrity of the file.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The data set ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:protocol_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'ProtocolType', traits: {"smithy.api#documentation" => "<p>The protocol type.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The API stage.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.type = Types::ImportAssetFromApiGatewayApiRequestDetails
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_description, Smithy::Schema::Shapes::ShapeRef.new(shape: ApiDescription, location_name: 'ApiDescription', traits: {"smithy.api#documentation" => "<p>The API description.</p>"}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiId', traits: {"smithy.api#documentation" => "<p>The API ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiKey', traits: {"smithy.api#documentation" => "<p>The API key.</p>"}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiName', traits: {"smithy.api#documentation" => "<p>The API name.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_md5_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin24max24patternazaz094azaz092azaz093, location_name: 'ApiSpecificationMd5Hash', traits: {"smithy.api#documentation" => "<p>The Base64-encoded Md5 hash for the API asset, used to ensure the integrity of the API\n         at that location.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ApiSpecificationUploadUrl', traits: {"smithy.api#documentation" => "<p>The upload URL of the API specification.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ApiSpecificationUploadUrlExpiresAt', traits: {"smithy.api#documentation" => "<p>The date and time that the upload URL expires, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The data set ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:protocol_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ProtocolType, location_name: 'ProtocolType', traits: {"smithy.api#documentation" => "<p>The protocol type.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The revision ID.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:stage, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Stage', traits: {"smithy.api#documentation" => "<p>The API stage.</p>", "smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.type = Types::ImportAssetFromApiGatewayApiResponseDetails
    ImportAssetFromSignedUrlJobErrorDetails.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'AssetName', traits: {"smithy.api#documentation" => "<p>Details about the job error.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlJobErrorDetails.type = Types::ImportAssetFromSignedUrlJobErrorDetails
    ImportAssetFromSignedUrlRequestDetails.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'AssetName', traits: {"smithy.api#documentation" => "<p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used\n         as the asset name.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:md5_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin24max24patternazaz094azaz092azaz093, location_name: 'Md5Hash', traits: {"smithy.api#documentation" => "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at\n         that location.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import request.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.type = Types::ImportAssetFromSignedUrlRequestDetails
    ImportAssetFromSignedUrlResponseDetails.add_member(:asset_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'AssetName', traits: {"smithy.api#documentation" => "<p>The name for the asset associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:md5_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin24max24patternazaz094azaz092azaz093, location_name: 'Md5Hash', traits: {"smithy.api#documentation" => "<p>The Base64-encoded Md5 hash for the asset, used to ensure the integrity of the file at\n         that location.</p>"}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import response.</p>", "smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SignedUrl', traits: {"smithy.api#documentation" => "<p>The signed URL.</p>"}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url_expires_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SignedUrlExpiresAt', traits: {"smithy.api#documentation" => "<p>The time and date at which the signed URL expires, in ISO 8601 format.</p>"}))
    ImportAssetFromSignedUrlResponseDetails.type = Types::ImportAssetFromSignedUrlResponseDetails
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the AWS Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseLFTagPolicyAndPermissions, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>A structure for the database object.</p>"}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableLFTagPolicyAndPermissions, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>A structure for the table object.</p>"}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke\n         permissions of subscribers to AWS Lake Formation data permissions.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.type = Types::ImportAssetsFromLakeFormationTagPolicyRequestDetails
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the AWS Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseLFTagPolicyAndPermissions, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>A structure for the database object.</p>"}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableLFTagPolicyAndPermissions, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>A structure for the table object.</p>"}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke\n         permissions to AWS Lake Formation data permissions.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.type = Types::ImportAssetsFromLakeFormationTagPolicyResponseDetails
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:asset_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRedshiftDataShareAssetSourceEntry, location_name: 'AssetSources', traits: {"smithy.api#documentation" => "<p>A list of Amazon Redshift datashare assets.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.type = Types::ImportAssetsFromRedshiftDataSharesRequestDetails
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:asset_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRedshiftDataShareAssetSourceEntry, location_name: 'AssetSources', traits: {"smithy.api#documentation" => "<p>A list of Amazon Redshift datashare asset sources.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.type = Types::ImportAssetsFromRedshiftDataSharesResponseDetails
    ImportAssetsFromS3RequestDetails.add_member(:asset_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, location_name: 'AssetSources', traits: {"smithy.api#documentation" => "<p>Is a list of Amazon S3 bucket and object key pairs.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import request.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.type = Types::ImportAssetsFromS3RequestDetails
    ImportAssetsFromS3ResponseDetails.add_member(:asset_sources, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetSourceEntry, location_name: 'AssetSources', traits: {"smithy.api#documentation" => "<p>Is a list of Amazon S3 bucket and object key pairs.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this import job.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this import response.</p>", "smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.type = Types::ImportAssetsFromS3ResponseDetails
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message identifying the service exception that occurred.</p>", "smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the job.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was created, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: ResponseDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Details of the operation to be performed by the job, such as export destination details\n         or import source details.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:errors, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJobError, location_name: 'Errors', traits: {"smithy.api#documentation" => "<p>Errors for jobs.</p>"}))
    JobEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the job.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: State, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the job.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type.</p>", "smithy.api#required" => {}}))
    JobEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the job was last updated, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    JobEntry.type = Types::JobEntry
    JobError.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: Code, location_name: 'Code', traits: {"smithy.api#documentation" => "<p>The code for the job error.</p>", "smithy.api#required" => {}}))
    JobError.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: Details, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>The details about the job error.</p>"}))
    JobError.add_member(:limit_name, Smithy::Schema::Shapes::ShapeRef.new(shape: JobErrorLimitName, location_name: 'LimitName', traits: {"smithy.api#documentation" => "<p>The name of the limit that was reached.</p>"}))
    JobError.add_member(:limit_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'LimitValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of the exceeded limit.</p>"}))
    JobError.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message related to the job error.</p>", "smithy.api#required" => {}}))
    JobError.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource related to the error.</p>"}))
    JobError.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: JobErrorResourceTypes, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource related to the error.</p>"}))
    JobError.type = Types::JobError
    KmsKeyToGrant.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyArn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The AWS KMS CMK (Key Management System Customer Managed Key) used to encrypt S3 objects\n         in the shared S3 Bucket. AWS Data exchange will create a KMS grant for each subscriber to\n         allow them to access and decrypt their entitled data that is encrypted using this KMS key\n         specified.</p>", "smithy.api#required" => {}}))
    KmsKeyToGrant.type = Types::KmsKeyToGrant
    LFResourceDetails.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseLFTagPolicy, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>Details about the database resource included in the AWS Lake Formation data\n         permission.</p>"}))
    LFResourceDetails.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: TableLFTagPolicy, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>Details about the table resource included in the AWS Lake Formation data\n         permission.</p>"}))
    LFResourceDetails.type = Types::LFResourceDetails
    LFTag.add_member(:tag_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'TagKey', traits: {"smithy.api#documentation" => "<p>The key name for the LF-tag.</p>", "smithy.api#required" => {}}))
    LFTag.add_member(:tag_values, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFTagValues, location_name: 'TagValues', traits: {"smithy.api#documentation" => "<p>A list of LF-tag values.</p>", "smithy.api#required" => {}}))
    LFTag.type = Types::LFTag
    LFTagPolicyDetails.add_member(:catalog_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsAccountId, location_name: 'CatalogId', traits: {"smithy.api#documentation" => "<p>The identifier for the AWS Glue Data Catalog.</p>", "smithy.api#required" => {}}))
    LFTagPolicyDetails.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LFResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The resource type for which the LF-tag policy applies.</p>", "smithy.api#required" => {}}))
    LFTagPolicyDetails.add_member(:resource_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LFResourceDetails, location_name: 'ResourceDetails', traits: {"smithy.api#documentation" => "<p>Details for the Lake Formation Resources included in the LF-tag policy.</p>", "smithy.api#required" => {}}))
    LFTagPolicyDetails.type = Types::LFTagPolicyDetails
    LakeFormationDataPermissionAsset.add_member(:lake_formation_data_permission_details, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationDataPermissionDetails, location_name: 'LakeFormationDataPermissionDetails', traits: {"smithy.api#documentation" => "<p>Details about the AWS Lake Formation data permission.</p>", "smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:lake_formation_data_permission_type, Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationDataPermissionType, location_name: 'LakeFormationDataPermissionType', traits: {"smithy.api#documentation" => "<p>The data permission type.</p>", "smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFPermissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions granted to the subscribers on the resource.</p>", "smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: RoleArn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The IAM role's ARN that allows AWS Data Exchange to assume the role and grant and revoke\n         permissions to AWS Lake Formation data permissions.</p>"}))
    LakeFormationDataPermissionAsset.type = Types::LakeFormationDataPermissionAsset
    LakeFormationDataPermissionDetails.add_member(:lf_tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: LFTagPolicyDetails, location_name: 'LFTagPolicy', traits: {"smithy.api#documentation" => "<p>Details about the LF-tag policy.</p>"}))
    LakeFormationDataPermissionDetails.type = Types::LakeFormationDataPermissionDetails
    LakeFormationTagPolicyDetails.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The\n         underlying Glue database that the notification is referring to.</p>"}))
    LakeFormationTagPolicyDetails.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>The\n         underlying Glue table that the notification is referring to.</p>"}))
    LakeFormationTagPolicyDetails.type = Types::LakeFormationTagPolicyDetails
    ListDataGrantsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataGrantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataGrantsRequest.type = Types::ListDataGrantsRequest
    ListDataGrantsResponse.add_member(:data_grant_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDataGrantSummaryEntry, location_name: 'DataGrantSummaries', traits: {"smithy.api#documentation" => "<p>An object that contains a list of data grant information.</p>"}))
    ListDataGrantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListDataGrantsResponse.type = Types::ListDataGrantsResponse
    ListDataSetRevisionsInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSetRevisionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results returned by a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetRevisionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataSetRevisionsInput.type = Types::ListDataSetRevisionsInput
    ListDataSetRevisionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>"}))
    ListDataSetRevisionsOutput.add_member(:revisions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRevisionEntry, location_name: 'Revisions', traits: {"smithy.api#documentation" => "<p>The asset objects listed by the request.</p>"}))
    ListDataSetRevisionsOutput.type = Types::ListDataSetRevisionsOutput
    ListDataSetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results returned by a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListDataSetsInput.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED\n         to the account (for subscribers).</p>", "smithy.api#httpQuery" => "origin"}))
    ListDataSetsInput.type = Types::ListDataSetsInput
    ListDataSetsOutput.add_member(:data_sets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfDataSetEntry, location_name: 'DataSets', traits: {"smithy.api#documentation" => "<p>The data set objects listed by the request.</p>"}))
    ListDataSetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>"}))
    ListDataSetsOutput.type = Types::ListDataSetsOutput
    ListEventActionsInput.add_member(:event_source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventSourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event source.</p>", "smithy.api#httpQuery" => "eventSourceId"}))
    ListEventActionsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results returned by a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListEventActionsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListEventActionsInput.type = Types::ListEventActionsInput
    ListEventActionsOutput.add_member(:event_actions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfEventActionEntry, location_name: 'EventActions', traits: {"smithy.api#documentation" => "<p>The event action objects listed by the request.</p>"}))
    ListEventActionsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>"}))
    ListEventActionsOutput.type = Types::ListEventActionsOutput
    ListJobsInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpQuery" => "dataSetId"}))
    ListJobsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results returned by a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListJobsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListJobsInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpQuery" => "revisionId"}))
    ListJobsInput.type = Types::ListJobsInput
    ListJobsOutput.add_member(:jobs, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfJobEntry, location_name: 'Jobs', traits: {"smithy.api#documentation" => "<p>The jobs listed by the request.</p>"}))
    ListJobsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>"}))
    ListJobsOutput.type = Types::ListJobsOutput
    ListOfAssetDestinationEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetDestinationEntry)
    ListOfAssetEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetEntry)
    ListOfAssetSourceEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssetSourceEntry)
    ListOfDataGrantSummaryEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantSummaryEntry)
    ListOfDataSetEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataSetEntry)
    ListOfDatabaseLFTagPolicyPermissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseLFTagPolicyPermission)
    ListOfEventActionEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: EventActionEntry)
    ListOfJobEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobEntry)
    ListOfJobError.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JobError)
    ListOfKmsKeysToGrant.member = Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKeyToGrant)
    ListOfLFPermissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFPermission)
    ListOfLFTagValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String)
    ListOfLFTags.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LFTag)
    ListOfLakeFormationTagPolicies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LakeFormationTagPolicyDetails)
    ListOfReceivedDataGrantSummariesEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ReceivedDataGrantSummariesEntry)
    ListOfRedshiftDataShareAssetSourceEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataShareAssetSourceEntry)
    ListOfRedshiftDataShares.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RedshiftDataShareDetails)
    ListOfRevisionDestinationEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionDestinationEntry)
    ListOfRevisionEntry.member = Smithy::Schema::Shapes::ShapeRef.new(shape: RevisionEntry)
    ListOfS3DataAccesses.member = Smithy::Schema::Shapes::ShapeRef.new(shape: S3DataAccessDetails)
    ListOfSchemaChangeDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaChangeDetails)
    ListOfTableTagPolicyLFPermissions.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TableTagPolicyLFPermission)
    ListOfString.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    ListReceivedDataGrantsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => nil, "smithy.api#documentation" => "<p>The maximum number of results to be included in the next page.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListReceivedDataGrantsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListReceivedDataGrantsRequest.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptanceStateFilterValues, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grants to list.</p>", "smithy.api#httpQuery" => "acceptanceState"}))
    ListReceivedDataGrantsRequest.type = Types::ListReceivedDataGrantsRequest
    ListReceivedDataGrantsResponse.add_member(:data_grant_summaries, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfReceivedDataGrantSummariesEntry, location_name: 'DataGrantSummaries', traits: {"smithy.api#documentation" => "<p>An object that contains a list of received data grant information.</p>"}))
    ListReceivedDataGrantsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The pagination token used to retrieve the next page of results for this\n         operation.</p>"}))
    ListReceivedDataGrantsResponse.type = Types::ListReceivedDataGrantsResponse
    ListRevisionAssetsInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRevisionAssetsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The maximum number of results returned by a single call.</p>", "smithy.api#httpQuery" => "maxResults"}))
    ListRevisionAssetsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>", "smithy.api#httpQuery" => "nextToken"}))
    ListRevisionAssetsInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRevisionAssetsInput.type = Types::ListRevisionAssetsInput
    ListRevisionAssetsOutput.add_member(:assets, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfAssetEntry, location_name: 'Assets', traits: {"smithy.api#documentation" => "<p>The asset objects listed by the request.</p>"}))
    ListRevisionAssetsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>The token value retrieved from a previous call to access the next page of\n         results.</p>"}))
    ListRevisionAssetsOutput.type = Types::ListRevisionAssetsOutput
    ListTagsForResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A label that consists of a customer-defined key and an optional value.</p>", "smithy.api#jsonName" => "tags"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MapOfString.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    MapOfString.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    NotificationDetails.add_member(:data_update, Smithy::Schema::Shapes::ShapeRef.new(shape: DataUpdateRequestDetails, location_name: 'DataUpdate', traits: {"smithy.api#documentation" => "<p>Extra\n         details specific to a data update type notification.</p>"}))
    NotificationDetails.add_member(:deprecation, Smithy::Schema::Shapes::ShapeRef.new(shape: DeprecationRequestDetails, location_name: 'Deprecation', traits: {"smithy.api#documentation" => "<p>Extra\n         details specific to a deprecation type notification.</p>"}))
    NotificationDetails.add_member(:schema_change, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaChangeRequestDetails, location_name: 'SchemaChange', traits: {"smithy.api#documentation" => "<p>Extra\n         details specific to a schema change type notification.</p>"}))
    NotificationDetails.type = Types::NotificationDetails
    OriginDetails.add_member(:product_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ProductId', traits: {"smithy.api#documentation" => "<p>The product ID of the origin of the data set.</p>"}))
    OriginDetails.add_member(:data_grant_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataGrantId', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>"}))
    OriginDetails.type = Types::OriginDetails
    ReceivedDataGrantSummariesEntry.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data grant.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:sender_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: SenderPrincipal, location_name: 'SenderPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant sender.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:receiver_principal, Smithy::Schema::Shapes::ShapeRef.new(shape: ReceiverPrincipal, location_name: 'ReceiverPrincipal', traits: {"smithy.api#documentation" => "<p>The Amazon Web Services account ID of the data grant receiver.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:acceptance_state, Smithy::Schema::Shapes::ShapeRef.new(shape: DataGrantAcceptanceState, location_name: 'AcceptanceState', traits: {"smithy.api#documentation" => "<p>The acceptance state of the data grant.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:accepted_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'AcceptedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was accepted.</p>"}))
    ReceivedDataGrantSummariesEntry.add_member(:ends_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'EndsAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when access to the associated data set ends.</p>"}))
    ReceivedDataGrantSummariesEntry.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The ID of the data set associated to the data grant.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The ID of the data grant.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the data grant.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was created.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The timestamp of when the data grant was last updated.</p>", "smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.type = Types::ReceivedDataGrantSummariesEntry
    RedshiftDataShareAsset.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare asset.</p>", "smithy.api#required" => {}}))
    RedshiftDataShareAsset.type = Types::RedshiftDataShareAsset
    RedshiftDataShareAssetSourceEntry.add_member(:data_share_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataShareArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the datashare asset.</p>", "smithy.api#required" => {}}))
    RedshiftDataShareAssetSourceEntry.type = Types::RedshiftDataShareAssetSourceEntry
    RedshiftDataShareDetails.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The\n         ARN of the underlying Redshift data share that is being affected by this\n         notification.</p>", "smithy.api#required" => {}}))
    RedshiftDataShareDetails.add_member(:database, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Database', traits: {"smithy.api#documentation" => "<p>The\n         database name in the Redshift data share that is being affected by this\n         notification.</p>", "smithy.api#required" => {}}))
    RedshiftDataShareDetails.add_member(:function, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Function', traits: {"smithy.api#documentation" => "<p>A\n         function name in the Redshift database that is being affected by this notification.</p>"}))
    RedshiftDataShareDetails.add_member(:table, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Table', traits: {"smithy.api#documentation" => "<p>A\n         table name in the Redshift database that is being affected by this notification.</p>"}))
    RedshiftDataShareDetails.add_member(:schema, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Schema', traits: {"smithy.api#documentation" => "<p>A\n         schema name in the Redshift database that is being affected by this notification.</p>"}))
    RedshiftDataShareDetails.add_member(:view, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'View', traits: {"smithy.api#documentation" => "<p>A\n         view name in the Redshift database that is being affected by this notification.</p>"}))
    RedshiftDataShareDetails.type = Types::RedshiftDataShareDetails
    RequestDetails.add_member(:export_asset_to_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAssetToSignedUrlRequestDetails, location_name: 'ExportAssetToSignedUrl', traits: {"smithy.api#documentation" => "<p>Details about the export to signed URL request.</p>"}))
    RequestDetails.add_member(:export_assets_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAssetsToS3RequestDetails, location_name: 'ExportAssetsToS3', traits: {"smithy.api#documentation" => "<p>Details about the export to Amazon S3 request.</p>"}))
    RequestDetails.add_member(:export_revisions_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportRevisionsToS3RequestDetails, location_name: 'ExportRevisionsToS3', traits: {"smithy.api#documentation" => "<p>Details about the export to Amazon S3 request.</p>"}))
    RequestDetails.add_member(:import_asset_from_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlRequestDetails, location_name: 'ImportAssetFromSignedUrl', traits: {"smithy.api#documentation" => "<p>Details about the import from Amazon S3 request.</p>"}))
    RequestDetails.add_member(:import_assets_from_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromS3RequestDetails, location_name: 'ImportAssetsFromS3', traits: {"smithy.api#documentation" => "<p>Details about the import asset from API Gateway API request.</p>"}))
    RequestDetails.add_member(:import_assets_from_redshift_data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromRedshiftDataSharesRequestDetails, location_name: 'ImportAssetsFromRedshiftDataShares', traits: {"smithy.api#documentation" => "<p>Details from an import from Amazon Redshift datashare request.</p>"}))
    RequestDetails.add_member(:import_asset_from_api_gateway_api, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetFromApiGatewayApiRequestDetails, location_name: 'ImportAssetFromApiGatewayApi', traits: {"smithy.api#documentation" => "<p>Details about the import from signed URL request.</p>"}))
    RequestDetails.add_member(:create_s3_data_access_from_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateS3DataAccessFromS3BucketRequestDetails, location_name: 'CreateS3DataAccessFromS3Bucket', traits: {"smithy.api#documentation" => "<p>Details of the request to create S3 data access from the Amazon S3 bucket.</p>"}))
    RequestDetails.add_member(:import_assets_from_lake_formation_tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromLakeFormationTagPolicyRequestDetails, location_name: 'ImportAssetsFromLakeFormationTagPolicy', traits: {"smithy.api#documentation" => "<p>Request details for the ImportAssetsFromLakeFormationTagPolicy job.</p>"}))
    RequestDetails.type = Types::RequestDetails
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The resource couldn't be found.</p>", "smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource that couldn't be found.</p>"}))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource that couldn't be found.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseDetails.add_member(:export_asset_to_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAssetToSignedUrlResponseDetails, location_name: 'ExportAssetToSignedUrl', traits: {"smithy.api#documentation" => "<p>Details for the export to signed URL response.</p>"}))
    ResponseDetails.add_member(:export_assets_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportAssetsToS3ResponseDetails, location_name: 'ExportAssetsToS3', traits: {"smithy.api#documentation" => "<p>Details for the export to Amazon S3 response.</p>"}))
    ResponseDetails.add_member(:export_revisions_to_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportRevisionsToS3ResponseDetails, location_name: 'ExportRevisionsToS3', traits: {"smithy.api#documentation" => "<p>Details for the export revisions to Amazon S3 response.</p>"}))
    ResponseDetails.add_member(:import_asset_from_signed_url, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetFromSignedUrlResponseDetails, location_name: 'ImportAssetFromSignedUrl', traits: {"smithy.api#documentation" => "<p>Details for the import from signed URL response.</p>"}))
    ResponseDetails.add_member(:import_assets_from_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromS3ResponseDetails, location_name: 'ImportAssetsFromS3', traits: {"smithy.api#documentation" => "<p>Details for the import from Amazon S3 response.</p>"}))
    ResponseDetails.add_member(:import_assets_from_redshift_data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromRedshiftDataSharesResponseDetails, location_name: 'ImportAssetsFromRedshiftDataShares', traits: {"smithy.api#documentation" => "<p>Details from an import from Amazon Redshift datashare response.</p>"}))
    ResponseDetails.add_member(:import_asset_from_api_gateway_api, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetFromApiGatewayApiResponseDetails, location_name: 'ImportAssetFromApiGatewayApi', traits: {"smithy.api#documentation" => "<p>The response details.</p>"}))
    ResponseDetails.add_member(:create_s3_data_access_from_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: CreateS3DataAccessFromS3BucketResponseDetails, location_name: 'CreateS3DataAccessFromS3Bucket', traits: {"smithy.api#documentation" => "<p>Response details from the CreateS3DataAccessFromS3Bucket job.</p>"}))
    ResponseDetails.add_member(:import_assets_from_lake_formation_tag_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportAssetsFromLakeFormationTagPolicyResponseDetails, location_name: 'ImportAssetsFromLakeFormationTagPolicy', traits: {"smithy.api#documentation" => "<p>Response details from the ImportAssetsFromLakeFormationTagPolicy job.</p>"}))
    ResponseDetails.type = Types::ResponseDetails
    RevisionDestinationEntry.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket that is the destination for the assets in the revision.</p>", "smithy.api#required" => {}}))
    RevisionDestinationEntry.add_member(:key_pattern, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KeyPattern', traits: {"smithy.api#documentation" => "<p>A string representing the pattern for generated names of the individual assets in the\n         revision. For more information about key patterns, see <a href=\"https://docs.aws.amazon.com/data-exchange/latest/userguide/jobs.html#revision-export-keypatterns\">Key patterns when exporting revisions</a>.</p>"}))
    RevisionDestinationEntry.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>", "smithy.api#required" => {}}))
    RevisionDestinationEntry.type = Types::RevisionDestinationEntry
    RevisionEntry.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the revision.</p>", "smithy.api#required" => {}}))
    RevisionEntry.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    RevisionEntry.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was created, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    RevisionEntry.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the data set revision.</p>", "smithy.api#required" => {}}))
    RevisionEntry.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>To publish a revision to a data set in a product, the revision must first be finalized.\n         Finalizing a revision tells AWS Data Exchange that your changes to the assets in the\n         revision are complete. After it's in this read-only state, you can publish the revision to\n         your products. Finalized revisions can be published through the AWS Data Exchange console\n         or the AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API\n         action. When using the API, revisions are uniquely identified by their ARN.</p>"}))
    RevisionEntry.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>", "smithy.api#required" => {}}))
    RevisionEntry.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The revision ID of the owned revision corresponding to the entitled revision being\n         viewed. This parameter is returned when a revision owner is viewing the entitled copy of\n         its owned revision.</p>"}))
    RevisionEntry.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>", "smithy.api#required" => {}}))
    RevisionEntry.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>"}))
    RevisionEntry.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revoked', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A status indicating that subscribers' access to the revision was revoked.</p>"}))
    RevisionEntry.add_member(:revoked_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RevokedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was revoked, in ISO 8601 format.</p>"}))
    RevisionEntry.type = Types::RevisionEntry
    RevisionPublished.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The data set ID of the published revision.</p>", "smithy.api#required" => {}}))
    RevisionPublished.type = Types::RevisionPublished
    RevokeRevisionInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRevisionInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRevisionInput.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>", "smithy.api#required" => {}}))
    RevokeRevisionInput.type = Types::RevokeRevisionInput
    RevokeRevisionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the revision.</p>"}))
    RevokeRevisionOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    RevokeRevisionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was created, in ISO 8601 format.</p>"}))
    RevokeRevisionOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the data set revision.</p>"}))
    RevokeRevisionOutput.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>To publish a revision to a data set in a product, the revision must first be finalized.\n         Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision\n         are complete. After it's in this read-only state, you can publish the revision to your\n         products. Finalized revisions can be published through the AWS Data Exchange console or the\n         AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action.\n         When using the API, revisions are uniquely identified by their ARN.</p>"}))
    RevokeRevisionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>"}))
    RevokeRevisionOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The revision ID of the owned revision corresponding to the entitled revision being\n         viewed. This parameter is returned when a revision owner is viewing the entitled copy of\n         its owned revision.</p>"}))
    RevokeRevisionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"}))
    RevokeRevisionOutput.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>"}))
    RevokeRevisionOutput.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revoked', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A status indicating that subscribers' access to the revision was revoked.</p>"}))
    RevokeRevisionOutput.add_member(:revoked_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RevokedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was revoked, in ISO 8601 format.</p>"}))
    RevokeRevisionOutput.type = Types::RevokeRevisionOutput
    S3DataAccessAsset.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket hosting data to be shared in the S3 data access.</p>", "smithy.api#required" => {}}))
    S3DataAccessAsset.add_member(:key_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'KeyPrefixes', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket used for hosting shared data in the Amazon S3 data access.</p>"}))
    S3DataAccessAsset.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>S3 keys made available using this asset.</p>"}))
    S3DataAccessAsset.add_member(:s3_access_point_alias, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3AccessPointAlias', traits: {"smithy.api#documentation" => "<p>The automatically-generated bucket-style alias for your Amazon S3 Access Point.\n         Customers can access their entitled data using the S3 Access Point alias.</p>"}))
    S3DataAccessAsset.add_member(:s3_access_point_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'S3AccessPointArn', traits: {"smithy.api#documentation" => "<p>The ARN for your Amazon S3 Access Point. Customers can also access their entitled data\n         using the S3 Access Point ARN.</p>"}))
    S3DataAccessAsset.add_member(:kms_keys_to_grant, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfKmsKeysToGrant, location_name: 'KmsKeysToGrant', traits: {"smithy.api#documentation" => "<p> List of AWS KMS CMKs (Key Management System Customer Managed Keys) and ARNs used to\n         encrypt S3 objects being shared in this S3 Data Access asset. Providers must include all\n         AWS KMS keys used to encrypt these shared S3 objects.</p>"}))
    S3DataAccessAsset.type = Types::S3DataAccessAsset
    S3DataAccessAssetSourceEntry.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket used for hosting shared data in the Amazon S3 data access.</p>", "smithy.api#required" => {}}))
    S3DataAccessAssetSourceEntry.add_member(:key_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'KeyPrefixes', traits: {"smithy.api#documentation" => "<p>Organizes Amazon S3 asset key prefixes stored in an Amazon S3 bucket.</p>"}))
    S3DataAccessAssetSourceEntry.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>The keys used to create the Amazon S3 data access.</p>"}))
    S3DataAccessAssetSourceEntry.add_member(:kms_keys_to_grant, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfKmsKeysToGrant, location_name: 'KmsKeysToGrant', traits: {"smithy.api#documentation" => "<p>List of AWS KMS CMKs (Key Management System Customer Managed Keys) and ARNs used to\n         encrypt S3 objects being shared in this S3 Data Access asset.</p>"}))
    S3DataAccessAssetSourceEntry.type = Types::S3DataAccessAssetSourceEntry
    S3DataAccessDetails.add_member(:key_prefixes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'KeyPrefixes', traits: {"smithy.api#documentation" => "<p>A\n         list of the key prefixes affected by this\n         notification. This\n         can have up to 50 entries.</p>"}))
    S3DataAccessDetails.add_member(:keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'Keys', traits: {"smithy.api#documentation" => "<p>A\n         list of the keys affected by this\n         notification. This\n         can have up to 50 entries.</p>"}))
    S3DataAccessDetails.type = Types::S3DataAccessDetails
    S3SnapshotAsset.add_member(:size, Smithy::Schema::Shapes::ShapeRef.new(shape: Doublemin0, location_name: 'Size', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The size of the Amazon S3 object that is the object.</p>", "smithy.api#required" => {}}))
    S3SnapshotAsset.type = Types::S3SnapshotAsset
    SchemaChangeDetails.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>Name\n         of the changing\n         field. This value\n         can be up to 255 characters long.</p>", "smithy.api#required" => {}}))
    SchemaChangeDetails.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: SchemaChangeType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Is\n         the field being added, removed, or modified?</p>", "smithy.api#required" => {}}))
    SchemaChangeDetails.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>Description\n         of what's changing about this\n         field. This value\n         can be up to 512 characters long.</p>"}))
    SchemaChangeDetails.type = Types::SchemaChangeDetails
    SchemaChangeRequestDetails.add_member(:changes, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfSchemaChangeDetails, location_name: 'Changes', traits: {"smithy.api#documentation" => "<p>List\n         of schema changes happening in the scope of this\n         notification. This\n         can have up to 100 entries.</p>"}))
    SchemaChangeRequestDetails.add_member(:schema_change_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'SchemaChangeAt', traits: {"smithy.api#documentation" => "<p>A\n         date in the future when the schema change is taking effect.</p>", "smithy.api#required" => {}}))
    SchemaChangeRequestDetails.type = Types::SchemaChangeRequestDetails
    ScopeDetails.add_member(:lake_formation_tag_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLakeFormationTagPolicies, location_name: 'LakeFormationTagPolicies', traits: {"smithy.api#documentation" => "<p>Underlying\n         LF resources that will be affected by this notification.</p>"}))
    ScopeDetails.add_member(:redshift_data_shares, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfRedshiftDataShares, location_name: 'RedshiftDataShares', traits: {"smithy.api#documentation" => "<p>Underlying\n         Redshift resources that will be affected by this notification.</p>"}))
    ScopeDetails.add_member(:s3_data_accesses, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfS3DataAccesses, location_name: 'S3DataAccesses', traits: {"smithy.api#documentation" => "<p>Underlying\n         S3 resources that will be affected by this notification.</p>"}))
    ScopeDetails.type = Types::ScopeDetails
    SendApiAssetInput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The request body.</p>", "smithy.api#httpPayload" => {}}))
    SendApiAssetInput.add_member(:query_string_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'QueryStringParameters', traits: {"smithy.api#documentation" => "<p>Attach query string parameters to the end of the URI (for example,\n         /v1/examplePath?exampleParam=exampleValue).</p>", "smithy.api#httpQueryParams" => {}}))
    SendApiAssetInput.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>Asset ID value for the API request.</p>", "smithy.api#httpHeader" => "x-amzn-dataexchange-asset-id", "smithy.api#required" => {}}))
    SendApiAssetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>Data set ID value for the API request.</p>", "smithy.api#httpHeader" => "x-amzn-dataexchange-data-set-id", "smithy.api#required" => {}}))
    SendApiAssetInput.add_member(:request_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'RequestHeaders', traits: {"smithy.api#documentation" => "<p>Any header value prefixed with x-amzn-dataexchange-header- will have that stripped\n         before sending the Asset API request. Use this when you want to override a header that AWS\n         Data Exchange uses. Alternatively, you can use the header without a prefix to the HTTP\n         request.</p>", "smithy.api#httpPrefixHeaders" => "x-amzn-dataexchange-header-"}))
    SendApiAssetInput.add_member(:method, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Method', traits: {"smithy.api#documentation" => "<p>HTTP method value for the API request. Alternatively, you can use the appropriate verb\n         in your request.</p>", "smithy.api#httpHeader" => "x-amzn-dataexchange-http-method"}))
    SendApiAssetInput.add_member(:path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Path', traits: {"smithy.api#documentation" => "<p>URI path value for the API request. Alternatively, you can set the URI path directly by\n         invoking /v1/{pathValue}.</p>", "smithy.api#httpHeader" => "x-amzn-dataexchange-path"}))
    SendApiAssetInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>Revision ID value for the API request.</p>", "smithy.api#httpHeader" => "x-amzn-dataexchange-revision-id", "smithy.api#required" => {}}))
    SendApiAssetInput[:http_payload] = :body
    SendApiAssetInput[:http_payload_member] = SendApiAssetInput.member(:body)
    SendApiAssetInput.type = Types::SendApiAssetInput
    SendApiAssetOutput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Body', traits: {"smithy.api#documentation" => "<p>The response body from the underlying API tracked by the API asset.</p>", "smithy.api#httpPayload" => {}}))
    SendApiAssetOutput.add_member(:response_headers, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'ResponseHeaders', traits: {"smithy.api#documentation" => "<p>The response headers from the underlying API tracked by the API asset.</p>", "smithy.api#httpPrefixHeaders" => ""}))
    SendApiAssetOutput[:http_payload] = :body
    SendApiAssetOutput[:http_payload_member] = SendApiAssetOutput.member(:body)
    SendApiAssetOutput.type = Types::SendApiAssetOutput
    SendDataSetNotificationRequest.add_member(:scope, Smithy::Schema::Shapes::ShapeRef.new(shape: ScopeDetails, location_name: 'Scope', traits: {"smithy.api#documentation" => "<p>Affected\n         scope of this notification such as the underlying resources affected by the notification\n         event.</p>"}))
    SendDataSetNotificationRequest.add_member(:client_token, Smithy::Schema::Shapes::ShapeRef.new(shape: ClientToken, location_name: 'ClientToken', traits: {"smithy.api#documentation" => "<p>Idempotency\n         key for the notification, this key allows us to deduplicate notifications that are sent in\n         quick succession erroneously.</p>", "smithy.api#idempotencyToken" => {}}))
    SendDataSetNotificationRequest.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max4096, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>Free-form\n         text field for providers to add information about their notifications.</p>"}))
    SendDataSetNotificationRequest.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>Affected\n         data set of the notification.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataSetNotificationRequest.add_member(:details, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationDetails, location_name: 'Details', traits: {"smithy.api#documentation" => "<p>Extra\n         details specific to this notification type.</p>"}))
    SendDataSetNotificationRequest.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationType, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The\n         type of the notification. Describing the kind of event the notification is alerting you\n         to.</p>", "smithy.api#required" => {}}))
    SendDataSetNotificationRequest.type = Types::SendDataSetNotificationRequest
    SendDataSetNotificationResponse.type = Types::SendDataSetNotificationResponse
    ServiceLimitExceededException.add_member(:limit_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LimitName, location_name: 'LimitName', traits: {"smithy.api#documentation" => "<p>The name of the limit that was reached.</p>"}))
    ServiceLimitExceededException.add_member(:limit_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'LimitValue', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The value of the exceeded limit.</p>"}))
    ServiceLimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The request has exceeded the quotas imposed by the service.</p>", "smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    StartJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a job.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobInput.type = Types::StartJobInput
    StartJobOutput.type = Types::StartJobOutput
    TableLFTagPolicy.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFTags, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of LF-tag conditions that apply to table resources.</p>", "smithy.api#required" => {}}))
    TableLFTagPolicy.type = Types::TableLFTagPolicy
    TableLFTagPolicyAndPermissions.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfLFTags, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>A list of LF-tag conditions that apply to table resources.</p>", "smithy.api#required" => {}}))
    TableLFTagPolicyAndPermissions.add_member(:permissions, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfTableTagPolicyLFPermissions, location_name: 'Permissions', traits: {"smithy.api#documentation" => "<p>The permissions granted to subscribers on table resources.</p>", "smithy.api#required" => {}}))
    TableLFTagPolicyAndPermissions.type = Types::TableLFTagPolicyAndPermissions
    TagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: MapOfString, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>A label that consists of a customer-defined key and an optional value.</p>", "smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The limit on the number of requests per second was exceeded.</p>", "smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>An Amazon Resource Name (ARN) that uniquely identifies an AWS resource.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: ListOfString, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The key tags.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateAssetInput.add_member(:asset_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'AssetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for an asset.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used\n         as the asset name. When exporting to Amazon S3, the asset name is used as default target\n         Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as\n         the asset name. When importing from Amazon Redshift, the datashare name is used as the\n         asset name. When importing from AWS Lake Formation, the static values of \"Database(s)\n         included in the LF-tag policy\" or \"Table(s) included in LF-tag policy\" are used as the\n         name.</p>", "smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.type = Types::UpdateAssetInput
    UpdateAssetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the asset.</p>"}))
    UpdateAssetOutput.add_member(:asset_details, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetDetails, location_name: 'AssetDetails', traits: {"smithy.api#documentation" => "<p>Details about the asset.</p>"}))
    UpdateAssetOutput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>"}))
    UpdateAssetOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was created, in ISO 8601 format.</p>"}))
    UpdateAssetOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with this asset.</p>"}))
    UpdateAssetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the asset.</p>"}))
    UpdateAssetOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the asset. When importing from Amazon S3, the Amazon S3 object key is used\n         as the asset name. When exporting to Amazon S3, the asset name is used as default target\n         Amazon S3 object key. When importing from Amazon API Gateway API, the API name is used as\n         the asset name. When importing from Amazon Redshift, the datashare name is used as the\n         asset name. When importing from AWS Lake Formation, the static values of \"Database(s)\n         included in the LF-tag policy\"- or \"Table(s) included in LF-tag policy\" are used as the\n         asset name.</p>"}))
    UpdateAssetOutput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision associated with this asset.</p>"}))
    UpdateAssetOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The asset ID of the owned asset corresponding to the entitled asset being viewed. This\n         parameter is returned when an asset owner is viewing the entitled copy of its owned\n         asset.</p>"}))
    UpdateAssetOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the asset was last updated, in ISO 8601 format.</p>"}))
    UpdateAssetOutput.type = Types::UpdateAssetOutput
    UpdateDataSetInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSetInput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the data set.</p>"}))
    UpdateDataSetInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>"}))
    UpdateDataSetInput.type = Types::UpdateDataSetInput
    UpdateDataSetOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the data set.</p>"}))
    UpdateDataSetOutput.add_member(:asset_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssetType, location_name: 'AssetType', traits: {"smithy.api#documentation" => "<p>The type of asset that is added to a data set.</p>"}))
    UpdateDataSetOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was created, in ISO 8601 format.</p>"}))
    UpdateDataSetOutput.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: Description, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The description for the data set.</p>"}))
    UpdateDataSetOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set.</p>"}))
    UpdateDataSetOutput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: Name, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the data set.</p>"}))
    UpdateDataSetOutput.add_member(:origin, Smithy::Schema::Shapes::ShapeRef.new(shape: Origin, location_name: 'Origin', traits: {"smithy.api#documentation" => "<p>A property that defines the data set as OWNED by the account (for providers) or ENTITLED\n         to the account (for subscribers).</p>"}))
    UpdateDataSetOutput.add_member(:origin_details, Smithy::Schema::Shapes::ShapeRef.new(shape: OriginDetails, location_name: 'OriginDetails', traits: {"smithy.api#documentation" => "<p>If the origin of this data set is ENTITLED, includes the details for the product on AWS\n         Marketplace.</p>"}))
    UpdateDataSetOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The data set ID of the owned data set corresponding to the entitled data set being\n         viewed. This parameter is returned when a data set owner is viewing the entitled copy of\n         its owned data set.</p>"}))
    UpdateDataSetOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the data set was last updated, in ISO 8601 format.</p>"}))
    UpdateDataSetOutput.type = Types::UpdateDataSetOutput
    UpdateEventActionInput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>"}))
    UpdateEventActionInput.add_member(:event_action_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EventActionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventActionInput.type = Types::UpdateEventActionInput
    UpdateEventActionOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: Action, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>What occurs after a certain event.</p>"}))
    UpdateEventActionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the event action.</p>"}))
    UpdateEventActionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was created, in ISO 8601 format.</p>"}))
    UpdateEventActionOutput.add_member(:event, Smithy::Schema::Shapes::ShapeRef.new(shape: Event, location_name: 'Event', traits: {"smithy.api#documentation" => "<p>What occurs to start an action.</p>"}))
    UpdateEventActionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the event action.</p>"}))
    UpdateEventActionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the event action was last updated, in ISO 8601 format.</p>"}))
    UpdateEventActionOutput.type = Types::UpdateEventActionOutput
    UpdateRevisionInput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    UpdateRevisionInput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a data set.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRevisionInput.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>Finalizing a revision tells AWS Data Exchange that your changes to the assets in the\n         revision are complete. After it's in this read-only state, you can publish the revision to\n         your products.</p>"}))
    UpdateRevisionInput.add_member(:revision_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'RevisionId', traits: {"smithy.api#documentation" => "<p>The unique identifier for a revision.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRevisionInput.type = Types::UpdateRevisionInput
    UpdateRevisionOutput.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The ARN for the revision.</p>"}))
    UpdateRevisionOutput.add_member(:comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin0max16384, location_name: 'Comment', traits: {"smithy.api#documentation" => "<p>An optional comment about the revision.</p>"}))
    UpdateRevisionOutput.add_member(:created_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was created, in ISO 8601 format.</p>"}))
    UpdateRevisionOutput.add_member(:data_set_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'DataSetId', traits: {"smithy.api#documentation" => "<p>The unique identifier for the data set associated with the data set revision.</p>"}))
    UpdateRevisionOutput.add_member(:finalized, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Finalized', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>To publish a revision to a data set in a product, the revision must first be finalized.\n         Finalizing a revision tells AWS Data Exchange that changes to the assets in the revision\n         are complete. After it's in this read-only state, you can publish the revision to your\n         products. Finalized revisions can be published through the AWS Data Exchange console or the\n         AWS Marketplace Catalog API, using the StartChangeSet AWS Marketplace Catalog API action.\n         When using the API, revisions are uniquely identified by their ARN.</p>"}))
    UpdateRevisionOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'Id', traits: {"smithy.api#documentation" => "<p>The unique identifier for the revision.</p>"}))
    UpdateRevisionOutput.add_member(:source_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Id, location_name: 'SourceId', traits: {"smithy.api#documentation" => "<p>The revision ID of the owned revision corresponding to the entitled revision being\n         viewed. This parameter is returned when a revision owner is viewing the entitled copy of\n         its owned revision.</p>"}))
    UpdateRevisionOutput.add_member(:updated_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'UpdatedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was last updated, in ISO 8601 format.</p>"}))
    UpdateRevisionOutput.add_member(:revocation_comment, Smithy::Schema::Shapes::ShapeRef.new(shape: Stringmin10max512, location_name: 'RevocationComment', traits: {"smithy.api#documentation" => "<p>A required comment to inform subscribers of the reason their access to the revision was\n         revoked.</p>"}))
    UpdateRevisionOutput.add_member(:revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Revoked', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>A status indicating that subscribers' access to the revision was revoked.</p>"}))
    UpdateRevisionOutput.add_member(:revoked_at, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'RevokedAt', traits: {"smithy.api#documentation" => "<p>The date and time that the revision was revoked, in ISO 8601 format.</p>"}))
    UpdateRevisionOutput.type = Types::UpdateRevisionOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Message', traits: {"smithy.api#documentation" => "<p>The message that informs you about what was invalid about the request.</p>", "smithy.api#required" => {}}))
    ValidationException.add_member(:exception_cause, Smithy::Schema::Shapes::ShapeRef.new(shape: ExceptionCause, location_name: 'ExceptionCause', traits: {"smithy.api#documentation" => "<p>The unique identifier for the resource that couldn't be found.</p>"}))
    ValidationException.type = Types::ValidationException

    DataExchange = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dataexchange#DataExchange"
      service.name = "DataExchange"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "DataExchange", "arnNamespace" => "dataexchange", "cloudTrailEventSource" => "dataexchange.amazonaws.com", "endpointPrefix" => "dataexchange"}, "aws.auth#sigv4" => {"name" => "dataexchange"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Data Exchange"}
      service.add_operation(:accept_data_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#AcceptDataGrant"
        operation.name = "AcceptDataGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptDataGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AcceptDataGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-grants/{DataGrantArn}/accept", "code" => 200}}
      end)
      service.add_operation(:cancel_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CancelJob"
        operation.name = "CancelJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/jobs/{JobId}", "code" => 204}}
      end)
      service.add_operation(:create_data_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateDataGrant"
        operation.name = "CreateDataGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-grants", "code" => 201}}
      end)
      service.add_operation(:create_data_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateDataSet"
        operation.name = "CreateDataSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDataSetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets", "code" => 201}}
      end)
      service.add_operation(:create_event_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateEventAction"
        operation.name = "CreateEventAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateEventActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/event-actions", "code" => 201}}
      end)
      service.add_operation(:create_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateJob"
        operation.name = "CreateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/jobs", "code" => 201}}
      end)
      service.add_operation(:create_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateRevision"
        operation.name = "CreateRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/revisions", "code" => 201}}
      end)
      service.add_operation(:delete_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAssetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 204}}
      end)
      service.add_operation(:delete_data_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteDataGrant"
        operation.name = "DeleteDataGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-grants/{DataGrantId}", "code" => 204}}
      end)
      service.add_operation(:delete_data_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteDataSet"
        operation.name = "DeleteDataSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDataSetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}", "code" => 204}}
      end)
      service.add_operation(:delete_event_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteEventAction"
        operation.name = "DeleteEventAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteEventActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/event-actions/{EventActionId}", "code" => 204}}
      end)
      service.add_operation(:delete_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteRevision"
        operation.name = "DeleteRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 204}}
      end)
      service.add_operation(:get_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetAsset"
        operation.name = "GetAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetDataGrant"
        operation.name = "GetDataGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-grants/{DataGrantId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetDataSet"
        operation.name = "GetDataSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataSetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_event_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetEventAction"
        operation.name = "GetEventAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetEventActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/event-actions/{EventActionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetJob"
        operation.name = "GetJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs/{JobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_received_data_grant, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetReceivedDataGrant"
        operation.name = "GetReceivedDataGrant"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReceivedDataGrantRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetReceivedDataGrantResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/received-data-grants/{DataGrantArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetRevision"
        operation.name = "GetRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataGrants"
        operation.name = "ListDataGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataGrantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataGrantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-grants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataGrants.new
      end)
      service.add_operation(:list_data_set_revisions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataSetRevisions"
        operation.name = "ListDataSetRevisions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetRevisionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetRevisionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSetRevisions.new
      end)
      service.add_operation(:list_data_sets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataSets"
        operation.name = "ListDataSets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDataSetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSets.new
      end)
      service.add_operation(:list_event_actions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListEventActions"
        operation.name = "ListEventActions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventActionsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListEventActionsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/event-actions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventActions.new
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_received_data_grants, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListReceivedDataGrants"
        operation.name = "ListReceivedDataGrants"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedDataGrantsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListReceivedDataGrantsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/received-data-grants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReceivedDataGrants.new
      end)
      service.add_operation(:list_revision_assets, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListRevisionAssets"
        operation.name = "ListRevisionAssets"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRevisionAssetsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListRevisionAssetsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRevisionAssets.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceOutput)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:revoke_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#RevokeRevision"
        operation.name = "RevokeRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: RevokeRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke", "code" => 200}}
      end)
      service.add_operation(:send_api_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#SendApiAsset"
        operation.name = "SendApiAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendApiAssetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendApiAssetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api-fulfill."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1", "code" => 200}}
      end)
      service.add_operation(:send_data_set_notification, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#SendDataSetNotification"
        operation.name = "SendDataSetNotification"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataSetNotificationRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: SendDataSetNotificationResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/notification", "code" => 202}}
      end)
      service.add_operation(:start_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#StartJob"
        operation.name = "StartJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/jobs/{JobId}", "code" => 202}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_asset, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateAsset"
        operation.name = "UpdateAsset"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAssetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 200}}
      end)
      service.add_operation(:update_data_set, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateDataSet"
        operation.name = "UpdateDataSet"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSetInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDataSetOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}", "code" => 200}}
      end)
      service.add_operation(:update_event_action, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateEventAction"
        operation.name = "UpdateEventAction"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventActionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateEventActionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/event-actions/{EventActionId}", "code" => 200}}
      end)
      service.add_operation(:update_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateRevision"
        operation.name = "UpdateRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevisionInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateRevisionOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 200}}
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
