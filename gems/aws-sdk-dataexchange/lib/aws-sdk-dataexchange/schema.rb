# frozen_string_literal: true

# This is generated code!

module Aws::DataExchange
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AcceptDataGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AcceptDataGrantRequest", name: "AcceptDataGrantRequest")
    AcceptDataGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AcceptDataGrantResponse", name: "AcceptDataGrantResponse")
    AcceptanceStateFilterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#AcceptanceStateFilterValue", name: "AcceptanceStateFilterValue", traits: {"smithy.api#enum" => [{"value" => "PENDING_RECEIVER_ACCEPTANCE", "name" => "PENDING_RECEIVER_ACCEPTANCE"}, {"value" => "ACCEPTED", "name" => "ACCEPTED"}]})
    AcceptanceStateFilterValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#AcceptanceStateFilterValues", name: "AcceptanceStateFilterValues")
    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    Action = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#Action", name: "Action")
    ApiDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ApiDescription", name: "ApiDescription")
    ApiGatewayApiAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ApiGatewayApiAsset", name: "ApiGatewayApiAsset")
    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Arn", name: "Arn")
    AssetDestinationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AssetDestinationEntry", name: "AssetDestinationEntry")
    AssetDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AssetDetails", name: "AssetDetails")
    AssetEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AssetEntry", name: "AssetEntry")
    AssetName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#AssetName", name: "AssetName")
    AssetSourceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AssetSourceEntry", name: "AssetSourceEntry")
    AssetType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#AssetType", name: "AssetType", traits: {"smithy.api#enum" => [{"value" => "S3_SNAPSHOT", "name" => "S3_SNAPSHOT"}, {"value" => "REDSHIFT_DATA_SHARE", "name" => "REDSHIFT_DATA_SHARE"}, {"value" => "API_GATEWAY_API", "name" => "API_GATEWAY_API"}, {"value" => "S3_DATA_ACCESS", "name" => "S3_DATA_ACCESS"}, {"value" => "LAKE_FORMATION_DATA_PERMISSION", "name" => "LAKE_FORMATION_DATA_PERMISSION"}]})
    AutoExportRevisionDestinationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AutoExportRevisionDestinationEntry", name: "AutoExportRevisionDestinationEntry")
    AutoExportRevisionToS3RequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#AutoExportRevisionToS3RequestDetails", name: "AutoExportRevisionToS3RequestDetails")
    AwsAccountId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#AwsAccountId", name: "AwsAccountId", traits: {"smithy.api#length" => {"min" => 12, "max" => 12}, "smithy.api#pattern" => "/^[\\d]{12}$/"})
    CancelJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CancelJobInput", name: "CancelJobInput")
    ClientToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ClientToken", name: "ClientToken", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\x21-\\x7E]{1,64}$"})
    Code = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Code", name: "Code", traits: {"smithy.api#enum" => [{"value" => "ACCESS_DENIED_EXCEPTION", "name" => "ACCESS_DENIED_EXCEPTION"}, {"value" => "INTERNAL_SERVER_EXCEPTION", "name" => "INTERNAL_SERVER_EXCEPTION"}, {"value" => "MALWARE_DETECTED", "name" => "MALWARE_DETECTED"}, {"value" => "RESOURCE_NOT_FOUND_EXCEPTION", "name" => "RESOURCE_NOT_FOUND_EXCEPTION"}, {"value" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION", "name" => "SERVICE_QUOTA_EXCEEDED_EXCEPTION"}, {"value" => "VALIDATION_EXCEPTION", "name" => "VALIDATION_EXCEPTION"}, {"value" => "MALWARE_SCAN_ENCRYPTED_FILE", "name" => "MALWARE_SCAN_ENCRYPTED_FILE"}]})
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    CreateDataGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateDataGrantRequest", name: "CreateDataGrantRequest")
    CreateDataGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateDataGrantResponse", name: "CreateDataGrantResponse")
    CreateDataSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateDataSetInput", name: "CreateDataSetInput")
    CreateDataSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateDataSetOutput", name: "CreateDataSetOutput")
    CreateEventActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateEventActionInput", name: "CreateEventActionInput")
    CreateEventActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateEventActionOutput", name: "CreateEventActionOutput")
    CreateJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateJobInput", name: "CreateJobInput")
    CreateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateJobOutput", name: "CreateJobOutput")
    CreateRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateRevisionInput", name: "CreateRevisionInput")
    CreateRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateRevisionOutput", name: "CreateRevisionOutput")
    CreateS3DataAccessFromS3BucketRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateS3DataAccessFromS3BucketRequestDetails", name: "CreateS3DataAccessFromS3BucketRequestDetails")
    CreateS3DataAccessFromS3BucketResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#CreateS3DataAccessFromS3BucketResponseDetails", name: "CreateS3DataAccessFromS3BucketResponseDetails")
    DataGrantAcceptanceState = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DataGrantAcceptanceState", name: "DataGrantAcceptanceState", traits: {"smithy.api#enum" => [{"value" => "PENDING_RECEIVER_ACCEPTANCE", "name" => "PENDING_RECEIVER_ACCEPTANCE"}, {"value" => "ACCEPTED", "name" => "ACCEPTED"}]})
    DataGrantArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DataGrantArn", name: "DataGrantArn", traits: {"smithy.api#pattern" => "^arn:aws:dataexchange:[\\-a-z0-9]*:(\\d{12}):data-grants\\/[a-zA-Z0-9]{30,40}$"})
    DataGrantDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DataGrantDescription", name: "DataGrantDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 16384}})
    DataGrantId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DataGrantId", name: "DataGrantId", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{30,40}$|^arn:aws:dataexchange:[\\-a-z0-9]*:(\\d{12}):data-grants\\/[a-zA-Z0-9]{30,40}$"})
    DataGrantName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DataGrantName", name: "DataGrantName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    DataGrantSummaryEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DataGrantSummaryEntry", name: "DataGrantSummaryEntry")
    DataSetEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DataSetEntry", name: "DataSetEntry")
    DataUpdateRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DataUpdateRequestDetails", name: "DataUpdateRequestDetails")
    DatabaseLFTagPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DatabaseLFTagPolicy", name: "DatabaseLFTagPolicy")
    DatabaseLFTagPolicyAndPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DatabaseLFTagPolicyAndPermissions", name: "DatabaseLFTagPolicyAndPermissions")
    DatabaseLFTagPolicyPermission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#DatabaseLFTagPolicyPermission", name: "DatabaseLFTagPolicyPermission", traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}]})
    DeleteAssetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeleteAssetInput", name: "DeleteAssetInput")
    DeleteDataGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeleteDataGrantRequest", name: "DeleteDataGrantRequest")
    DeleteDataSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeleteDataSetInput", name: "DeleteDataSetInput")
    DeleteEventActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeleteEventActionInput", name: "DeleteEventActionInput")
    DeleteRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeleteRevisionInput", name: "DeleteRevisionInput")
    DeprecationRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#DeprecationRequestDetails", name: "DeprecationRequestDetails")
    Description = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Description", name: "Description")
    Details = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#Details", name: "Details")
    Event = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#Event", name: "Event")
    EventActionEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#EventActionEntry", name: "EventActionEntry")
    ExceptionCause = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ExceptionCause", name: "ExceptionCause", traits: {"smithy.api#enum" => [{"value" => "InsufficientS3BucketPolicy", "name" => "InsufficientS3BucketPolicy"}, {"value" => "S3AccessDenied", "name" => "S3AccessDenied"}]})
    ExportAssetToSignedUrlRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportAssetToSignedUrlRequestDetails", name: "ExportAssetToSignedUrlRequestDetails")
    ExportAssetToSignedUrlResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportAssetToSignedUrlResponseDetails", name: "ExportAssetToSignedUrlResponseDetails")
    ExportAssetsToS3RequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportAssetsToS3RequestDetails", name: "ExportAssetsToS3RequestDetails")
    ExportAssetsToS3ResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportAssetsToS3ResponseDetails", name: "ExportAssetsToS3ResponseDetails")
    ExportRevisionsToS3RequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportRevisionsToS3RequestDetails", name: "ExportRevisionsToS3RequestDetails")
    ExportRevisionsToS3ResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportRevisionsToS3ResponseDetails", name: "ExportRevisionsToS3ResponseDetails")
    ExportServerSideEncryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ExportServerSideEncryption", name: "ExportServerSideEncryption")
    GetAssetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetAssetInput", name: "GetAssetInput")
    GetAssetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetAssetOutput", name: "GetAssetOutput")
    GetDataGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetDataGrantRequest", name: "GetDataGrantRequest")
    GetDataGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetDataGrantResponse", name: "GetDataGrantResponse")
    GetDataSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetDataSetInput", name: "GetDataSetInput")
    GetDataSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetDataSetOutput", name: "GetDataSetOutput")
    GetEventActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetEventActionInput", name: "GetEventActionInput")
    GetEventActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetEventActionOutput", name: "GetEventActionOutput")
    GetJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetJobInput", name: "GetJobInput")
    GetJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetJobOutput", name: "GetJobOutput")
    GetReceivedDataGrantRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetReceivedDataGrantRequest", name: "GetReceivedDataGrantRequest")
    GetReceivedDataGrantResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetReceivedDataGrantResponse", name: "GetReceivedDataGrantResponse")
    GetRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetRevisionInput", name: "GetRevisionInput")
    GetRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#GetRevisionOutput", name: "GetRevisionOutput")
    GrantDistributionScope = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#GrantDistributionScope", name: "GrantDistributionScope", traits: {"smithy.api#enum" => [{"value" => "AWS_ORGANIZATION", "name" => "AWS_ORGANIZATION"}, {"value" => "NONE", "name" => "NONE"}]})
    Id = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Id", name: "Id", traits: {"smithy.api#pattern" => "^[a-zA-Z0-9]{30,40}$"})
    ImportAssetFromApiGatewayApiRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetFromApiGatewayApiRequestDetails", name: "ImportAssetFromApiGatewayApiRequestDetails")
    ImportAssetFromApiGatewayApiResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetFromApiGatewayApiResponseDetails", name: "ImportAssetFromApiGatewayApiResponseDetails")
    ImportAssetFromSignedUrlJobErrorDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetFromSignedUrlJobErrorDetails", name: "ImportAssetFromSignedUrlJobErrorDetails")
    ImportAssetFromSignedUrlRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetFromSignedUrlRequestDetails", name: "ImportAssetFromSignedUrlRequestDetails")
    ImportAssetFromSignedUrlResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetFromSignedUrlResponseDetails", name: "ImportAssetFromSignedUrlResponseDetails")
    ImportAssetsFromLakeFormationTagPolicyRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromLakeFormationTagPolicyRequestDetails", name: "ImportAssetsFromLakeFormationTagPolicyRequestDetails")
    ImportAssetsFromLakeFormationTagPolicyResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromLakeFormationTagPolicyResponseDetails", name: "ImportAssetsFromLakeFormationTagPolicyResponseDetails")
    ImportAssetsFromRedshiftDataSharesRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromRedshiftDataSharesRequestDetails", name: "ImportAssetsFromRedshiftDataSharesRequestDetails")
    ImportAssetsFromRedshiftDataSharesResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromRedshiftDataSharesResponseDetails", name: "ImportAssetsFromRedshiftDataSharesResponseDetails")
    ImportAssetsFromS3RequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromS3RequestDetails", name: "ImportAssetsFromS3RequestDetails")
    ImportAssetsFromS3ResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ImportAssetsFromS3ResponseDetails", name: "ImportAssetsFromS3ResponseDetails")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    JobEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#JobEntry", name: "JobEntry")
    JobError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#JobError", name: "JobError")
    JobErrorLimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#JobErrorLimitName", name: "JobErrorLimitName", traits: {"smithy.api#enum" => [{"value" => "Assets per revision", "name" => "Assets_per_revision"}, {"value" => "Asset size in GB", "name" => "Asset_size_in_GB"}, {"value" => "Amazon Redshift datashare assets per revision", "name" => "Amazon_Redshift_datashare_assets_per_revision"}, {"value" => "AWS Lake Formation data permission assets per revision", "name" => "AWS_Lake_Formation_data_permission_assets_per_revision"}, {"value" => "Amazon S3 data access assets per revision", "name" => "Amazon_S3_data_access_assets_per_revision"}]})
    JobErrorResourceTypes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#JobErrorResourceTypes", name: "JobErrorResourceTypes", traits: {"smithy.api#enum" => [{"value" => "REVISION", "name" => "REVISION"}, {"value" => "ASSET", "name" => "ASSET"}, {"value" => "DATA_SET", "name" => "DATA_SET"}]})
    KmsKeyArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#KmsKeyArn", name: "KmsKeyArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}})
    KmsKeyToGrant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#KmsKeyToGrant", name: "KmsKeyToGrant")
    LFPermission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#LFPermission", name: "LFPermission", traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}, {"value" => "SELECT", "name" => "SELECT"}]})
    LFResourceDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LFResourceDetails", name: "LFResourceDetails")
    LFResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#LFResourceType", name: "LFResourceType", traits: {"smithy.api#enum" => [{"value" => "TABLE", "name" => "TABLE"}, {"value" => "DATABASE", "name" => "DATABASE"}]})
    LFTag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LFTag", name: "LFTag")
    LFTagPolicyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LFTagPolicyDetails", name: "LFTagPolicyDetails")
    LakeFormationDataPermissionAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LakeFormationDataPermissionAsset", name: "LakeFormationDataPermissionAsset")
    LakeFormationDataPermissionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LakeFormationDataPermissionDetails", name: "LakeFormationDataPermissionDetails")
    LakeFormationDataPermissionType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#LakeFormationDataPermissionType", name: "LakeFormationDataPermissionType", traits: {"smithy.api#enum" => [{"value" => "LFTagPolicy", "name" => "LFTagPolicy"}]})
    LakeFormationTagPolicyDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#LakeFormationTagPolicyDetails", name: "LakeFormationTagPolicyDetails")
    LimitName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#LimitName", name: "LimitName", traits: {"smithy.api#enum" => [{"value" => "Products per account", "name" => "Products_per_account"}, {"value" => "Data sets per account", "name" => "Data_sets_per_account"}, {"value" => "Data sets per product", "name" => "Data_sets_per_product"}, {"value" => "Revisions per data set", "name" => "Revisions_per_data_set"}, {"value" => "Assets per revision", "name" => "Assets_per_revision"}, {"value" => "Assets per import job from Amazon S3", "name" => "Assets_per_import_job_from_Amazon_S3"}, {"value" => "Asset per export job from Amazon S3", "name" => "Asset_per_export_job_from_Amazon_S3"}, {"value" => "Asset size in GB", "name" => "Asset_size_in_GB"}, {"value" => "Concurrent in progress jobs to export assets to Amazon S3", "name" => "Concurrent_in_progress_jobs_to_export_assets_to_Amazon_S3"}, {"value" => "Concurrent in progress jobs to export assets to a signed URL", "name" => "Concurrent_in_progress_jobs_to_export_assets_to_a_signed_URL"}, {"value" => "Concurrent in progress jobs to import assets from Amazon S3", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_Amazon_S3"}, {"value" => "Concurrent in progress jobs to import assets from a signed URL", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_a_signed_URL"}, {"value" => "Concurrent in progress jobs to export revisions to Amazon S3", "name" => "Concurrent_in_progress_jobs_to_export_revisions_to_Amazon_S3"}, {"value" => "Event actions per account", "name" => "Event_actions_per_account"}, {"value" => "Auto export event actions per data set", "name" => "Auto_export_event_actions_per_data_set"}, {"value" => "Amazon Redshift datashare assets per import job from Redshift", "name" => "Amazon_Redshift_datashare_assets_per_import_job_from_Redshift"}, {"value" => "Concurrent in progress jobs to import assets from Amazon Redshift datashares", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_Amazon_Redshift_datashares"}, {"value" => "Revisions per Amazon Redshift datashare data set", "name" => "Revisions_per_Amazon_Redshift_datashare_data_set"}, {"value" => "Amazon Redshift datashare assets per revision", "name" => "Amazon_Redshift_datashare_assets_per_revision"}, {"value" => "Concurrent in progress jobs to import assets from an API Gateway API", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_an_API_Gateway_API"}, {"value" => "Amazon API Gateway API assets per revision", "name" => "Amazon_API_Gateway_API_assets_per_revision"}, {"value" => "Revisions per Amazon API Gateway API data set", "name" => "Revisions_per_Amazon_API_Gateway_API_data_set"}, {"value" => "Concurrent in progress jobs to import assets from an AWS Lake Formation tag policy", "name" => "Concurrent_in_progress_jobs_to_import_assets_from_an_AWS_Lake_Formation_tag_policy"}, {"value" => "AWS Lake Formation data permission assets per revision", "name" => "AWS_Lake_Formation_data_permission_assets_per_revision"}, {"value" => "Revisions per AWS Lake Formation data permission data set", "name" => "Revisions_per_AWS_Lake_Formation_data_permission_data_set"}, {"value" => "Revisions per Amazon S3 data access data set", "name" => "Revisions_per_Amazon_S3_data_access_data_set"}, {"value" => "Amazon S3 data access assets per revision", "name" => "Amazon_S3_data_access_assets_per_revision"}, {"value" => "Concurrent in progress jobs to create Amazon S3 data access assets from S3 buckets", "name" => "Concurrent_in_progress_jobs_to_create_Amazon_S3_data_access_assets_from_S3_buckets"}, {"value" => "Active and pending data grants", "name" => "Active_and_pending_data_grants"}, {"value" => "Pending data grants per consumer", "name" => "Pending_data_grants_per_consumer"}]})
    ListDataGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataGrantsRequest", name: "ListDataGrantsRequest")
    ListDataGrantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataGrantsResponse", name: "ListDataGrantsResponse")
    ListDataSetRevisionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataSetRevisionsInput", name: "ListDataSetRevisionsInput")
    ListDataSetRevisionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataSetRevisionsOutput", name: "ListDataSetRevisionsOutput")
    ListDataSetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataSetsInput", name: "ListDataSetsInput")
    ListDataSetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListDataSetsOutput", name: "ListDataSetsOutput")
    ListEventActionsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListEventActionsInput", name: "ListEventActionsInput")
    ListEventActionsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListEventActionsOutput", name: "ListEventActionsOutput")
    ListJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListJobsInput", name: "ListJobsInput")
    ListJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListJobsOutput", name: "ListJobsOutput")
    ListOfAssetDestinationEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfAssetDestinationEntry", name: "ListOfAssetDestinationEntry")
    ListOfAssetEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfAssetEntry", name: "ListOfAssetEntry")
    ListOfAssetSourceEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfAssetSourceEntry", name: "ListOfAssetSourceEntry")
    ListOfDataGrantSummaryEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfDataGrantSummaryEntry", name: "ListOfDataGrantSummaryEntry")
    ListOfDataSetEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfDataSetEntry", name: "ListOfDataSetEntry")
    ListOfDatabaseLFTagPolicyPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfDatabaseLFTagPolicyPermissions", name: "ListOfDatabaseLFTagPolicyPermissions")
    ListOfEventActionEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfEventActionEntry", name: "ListOfEventActionEntry")
    ListOfJobEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfJobEntry", name: "ListOfJobEntry")
    ListOfJobError = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfJobError", name: "ListOfJobError")
    ListOfKmsKeysToGrant = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfKmsKeysToGrant", name: "ListOfKmsKeysToGrant", traits: {"smithy.api#length" => {"min" => 1, "max" => 10}, "smithy.api#uniqueItems" => {}})
    ListOfLFPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfLFPermissions", name: "ListOfLFPermissions")
    ListOfLFTagValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfLFTagValues", name: "ListOfLFTagValues")
    ListOfLFTags = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfLFTags", name: "ListOfLFTags")
    ListOfLakeFormationTagPolicies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfLakeFormationTagPolicies", name: "ListOfLakeFormationTagPolicies")
    ListOfReceivedDataGrantSummariesEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfReceivedDataGrantSummariesEntry", name: "ListOfReceivedDataGrantSummariesEntry")
    ListOfRedshiftDataShareAssetSourceEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfRedshiftDataShareAssetSourceEntry", name: "ListOfRedshiftDataShareAssetSourceEntry")
    ListOfRedshiftDataShares = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfRedshiftDataShares", name: "ListOfRedshiftDataShares")
    ListOfRevisionDestinationEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfRevisionDestinationEntry", name: "ListOfRevisionDestinationEntry")
    ListOfRevisionEntry = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfRevisionEntry", name: "ListOfRevisionEntry")
    ListOfS3DataAccesses = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfS3DataAccesses", name: "ListOfS3DataAccesses")
    ListOfSchemaChangeDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfSchemaChangeDetails", name: "ListOfSchemaChangeDetails")
    ListOfTableTagPolicyLFPermissions = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOfTableTagPolicyLFPermissions", name: "ListOfTableTagPolicyLFPermissions")
    ListOfString = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.dataexchange#ListOf__string", name: "ListOfString")
    ListReceivedDataGrantsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListReceivedDataGrantsRequest", name: "ListReceivedDataGrantsRequest")
    ListReceivedDataGrantsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListReceivedDataGrantsResponse", name: "ListReceivedDataGrantsResponse")
    ListRevisionAssetsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListRevisionAssetsInput", name: "ListRevisionAssetsInput")
    ListRevisionAssetsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListRevisionAssetsOutput", name: "ListRevisionAssetsOutput")
    ListTagsForResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListTagsForResourceInput", name: "ListTagsForResourceInput")
    ListTagsForResourceOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ListTagsForResourceOutput", name: "ListTagsForResourceOutput")
    MapOfString = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.dataexchange#MapOf__string", name: "MapOfString")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.dataexchange#MaxResults", name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 1, "max" => 200}})
    Name = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Name", name: "Name")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#NextToken", name: "NextToken")
    NotificationDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#NotificationDetails", name: "NotificationDetails")
    NotificationType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#NotificationType", name: "NotificationType", traits: {"smithy.api#enum" => [{"value" => "DATA_DELAY", "name" => "DATA_DELAY"}, {"value" => "DATA_UPDATE", "name" => "DATA_UPDATE"}, {"value" => "DEPRECATION", "name" => "DEPRECATION"}, {"value" => "SCHEMA_CHANGE", "name" => "SCHEMA_CHANGE"}]})
    Origin = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Origin", name: "Origin", traits: {"smithy.api#enum" => [{"value" => "OWNED", "name" => "OWNED"}, {"value" => "ENTITLED", "name" => "ENTITLED"}]})
    OriginDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#OriginDetails", name: "OriginDetails")
    ProtocolType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ProtocolType", name: "ProtocolType", traits: {"smithy.api#enum" => [{"value" => "REST", "name" => "REST"}]})
    ReceivedDataGrantSummariesEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ReceivedDataGrantSummariesEntry", name: "ReceivedDataGrantSummariesEntry")
    ReceiverPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ReceiverPrincipal", name: "ReceiverPrincipal", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    RedshiftDataShareAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RedshiftDataShareAsset", name: "RedshiftDataShareAsset")
    RedshiftDataShareAssetSourceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RedshiftDataShareAssetSourceEntry", name: "RedshiftDataShareAssetSourceEntry")
    RedshiftDataShareDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RedshiftDataShareDetails", name: "RedshiftDataShareDetails")
    RequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RequestDetails", name: "RequestDetails")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ResourceType", name: "ResourceType", traits: {"smithy.api#enum" => [{"value" => "DATA_SET", "name" => "DATA_SET"}, {"value" => "REVISION", "name" => "REVISION"}, {"value" => "ASSET", "name" => "ASSET"}, {"value" => "JOB", "name" => "JOB"}, {"value" => "EVENT_ACTION", "name" => "EVENT_ACTION"}, {"value" => "DATA_GRANT", "name" => "DATA_GRANT"}]})
    ResponseDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ResponseDetails", name: "ResponseDetails")
    RevisionDestinationEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RevisionDestinationEntry", name: "RevisionDestinationEntry")
    RevisionEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RevisionEntry", name: "RevisionEntry")
    RevisionPublished = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RevisionPublished", name: "RevisionPublished")
    RevokeRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RevokeRevisionInput", name: "RevokeRevisionInput")
    RevokeRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#RevokeRevisionOutput", name: "RevokeRevisionOutput")
    RoleArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#RoleArn", name: "RoleArn", traits: {"smithy.api#pattern" => "^arn:aws:iam::(\\d{12}):role\\/.+$"})
    S3DataAccessAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#S3DataAccessAsset", name: "S3DataAccessAsset")
    S3DataAccessAssetSourceEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#S3DataAccessAssetSourceEntry", name: "S3DataAccessAssetSourceEntry")
    S3DataAccessDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#S3DataAccessDetails", name: "S3DataAccessDetails")
    S3SnapshotAsset = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#S3SnapshotAsset", name: "S3SnapshotAsset")
    SchemaChangeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SchemaChangeDetails", name: "SchemaChangeDetails")
    SchemaChangeRequestDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SchemaChangeRequestDetails", name: "SchemaChangeRequestDetails")
    SchemaChangeType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#SchemaChangeType", name: "SchemaChangeType", traits: {"smithy.api#enum" => [{"value" => "ADD", "name" => "ADD"}, {"value" => "REMOVE", "name" => "REMOVE"}, {"value" => "MODIFY", "name" => "MODIFY"}]})
    ScopeDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ScopeDetails", name: "ScopeDetails")
    SendApiAssetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SendApiAssetInput", name: "SendApiAssetInput")
    SendApiAssetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SendApiAssetOutput", name: "SendApiAssetOutput")
    SendDataSetNotificationRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SendDataSetNotificationRequest", name: "SendDataSetNotificationRequest")
    SendDataSetNotificationResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#SendDataSetNotificationResponse", name: "SendDataSetNotificationResponse")
    SenderPrincipal = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#SenderPrincipal", name: "SenderPrincipal", traits: {"smithy.api#pattern" => "^\\d{12}$"})
    ServerSideEncryptionTypes = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#ServerSideEncryptionTypes", name: "ServerSideEncryptionTypes", traits: {"smithy.api#enum" => [{"value" => "aws:kms", "name" => "aws_kms"}, {"value" => "AES256", "name" => "AES256"}]})
    ServiceLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ServiceLimitExceededException", name: "ServiceLimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    StartJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#StartJobInput", name: "StartJobInput")
    StartJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#StartJobOutput", name: "StartJobOutput")
    State = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#State", name: "State", traits: {"smithy.api#enum" => [{"value" => "WAITING", "name" => "WAITING"}, {"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "ERROR", "name" => "ERROR"}, {"value" => "COMPLETED", "name" => "COMPLETED"}, {"value" => "CANCELLED", "name" => "CANCELLED"}, {"value" => "TIMED_OUT", "name" => "TIMED_OUT"}]})
    TableLFTagPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#TableLFTagPolicy", name: "TableLFTagPolicy")
    TableLFTagPolicyAndPermissions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#TableLFTagPolicyAndPermissions", name: "TableLFTagPolicyAndPermissions")
    TableTagPolicyLFPermission = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#TableTagPolicyLFPermission", name: "TableTagPolicyLFPermission", traits: {"smithy.api#enum" => [{"value" => "DESCRIBE", "name" => "DESCRIBE"}, {"value" => "SELECT", "name" => "SELECT"}]})
    TagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#TagResourceInput", name: "TagResourceInput")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.dataexchange#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    Type = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#Type", name: "Type", traits: {"smithy.api#enum" => [{"value" => "IMPORT_ASSETS_FROM_S3", "name" => "IMPORT_ASSETS_FROM_S3"}, {"value" => "IMPORT_ASSET_FROM_SIGNED_URL", "name" => "IMPORT_ASSET_FROM_SIGNED_URL"}, {"value" => "EXPORT_ASSETS_TO_S3", "name" => "EXPORT_ASSETS_TO_S3"}, {"value" => "EXPORT_ASSET_TO_SIGNED_URL", "name" => "EXPORT_ASSET_TO_SIGNED_URL"}, {"value" => "EXPORT_REVISIONS_TO_S3", "name" => "EXPORT_REVISIONS_TO_S3"}, {"value" => "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES", "name" => "IMPORT_ASSETS_FROM_REDSHIFT_DATA_SHARES"}, {"value" => "IMPORT_ASSET_FROM_API_GATEWAY_API", "name" => "IMPORT_ASSET_FROM_API_GATEWAY_API"}, {"value" => "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET", "name" => "CREATE_S3_DATA_ACCESS_FROM_S3_BUCKET"}, {"value" => "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY", "name" => "IMPORT_ASSETS_FROM_LAKE_FORMATION_TAG_POLICY"}]})
    UntagResourceInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UntagResourceInput", name: "UntagResourceInput")
    UpdateAssetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateAssetInput", name: "UpdateAssetInput")
    UpdateAssetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateAssetOutput", name: "UpdateAssetOutput")
    UpdateDataSetInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateDataSetInput", name: "UpdateDataSetInput")
    UpdateDataSetOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateDataSetOutput", name: "UpdateDataSetOutput")
    UpdateEventActionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateEventActionInput", name: "UpdateEventActionInput")
    UpdateEventActionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateEventActionOutput", name: "UpdateEventActionOutput")
    UpdateRevisionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateRevisionInput", name: "UpdateRevisionInput")
    UpdateRevisionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#UpdateRevisionOutput", name: "UpdateRevisionOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.dataexchange#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.dataexchange#__boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dataexchange#__double", name: "Double", traits: {"smithy.api#default" => 0})
    Doublemin0 = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.dataexchange#__doubleMin0", name: "Doublemin0", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#__string", name: "String")
    Stringmin0max16384 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#__stringMin0Max16384", name: "Stringmin0max16384", traits: {"smithy.api#length" => {"min" => 0, "max" => 16384}})
    Stringmin0max4096 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#__stringMin0Max4096", name: "Stringmin0max4096", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}})
    Stringmin10max512 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#__stringMin10Max512", name: "Stringmin10max512", traits: {"smithy.api#length" => {"min" => 10, "max" => 512}})
    Stringmin24max24patternazaz094azaz092azaz093 = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.dataexchange#__stringMin24Max24PatternAZaZ094AZaZ092AZaZ093", name: "Stringmin24max24patternazaz094azaz092azaz093", traits: {"smithy.api#length" => {"min" => 24, "max" => 24}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?$"})

    AcceptDataGrantRequest.add_member(:data_grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantArn, name: "DataGrantArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AcceptDataGrantRequest.type = Types::AcceptDataGrantRequest
    AcceptDataGrantResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal"))
    AcceptDataGrantResponse.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantDescription, name: "Description"))
    AcceptDataGrantResponse.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    AcceptDataGrantResponse.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    AcceptDataGrantResponse.add_member(:grant_distribution_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantDistributionScope, name: "GrantDistributionScope", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    AcceptDataGrantResponse.type = Types::AcceptDataGrantResponse
    AcceptanceStateFilterValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptanceStateFilterValue, name: "member")
    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    Action.add_member(:export_revision_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoExportRevisionToS3RequestDetails, name: "ExportRevisionToS3"))
    Action.type = Types::Action
    ApiGatewayApiAsset.add_member(:api_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDescription, name: "ApiDescription"))
    ApiGatewayApiAsset.add_member(:api_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiEndpoint"))
    ApiGatewayApiAsset.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiId"))
    ApiGatewayApiAsset.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiKey"))
    ApiGatewayApiAsset.add_member(:api_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiName"))
    ApiGatewayApiAsset.add_member(:api_specification_download_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiSpecificationDownloadUrl"))
    ApiGatewayApiAsset.add_member(:api_specification_download_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApiSpecificationDownloadUrlExpiresAt"))
    ApiGatewayApiAsset.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "ProtocolType"))
    ApiGatewayApiAsset.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Stage"))
    ApiGatewayApiAsset.type = Types::ApiGatewayApiAsset
    AssetDestinationEntry.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#required" => {}}))
    AssetDestinationEntry.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    AssetDestinationEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key"))
    AssetDestinationEntry.type = Types::AssetDestinationEntry
    AssetDetails.add_member(:s3_snapshot_asset, ::Smithy::Schema::Shapes::MemberShape.new(target: S3SnapshotAsset, name: "S3SnapshotAsset"))
    AssetDetails.add_member(:redshift_data_share_asset, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataShareAsset, name: "RedshiftDataShareAsset"))
    AssetDetails.add_member(:api_gateway_api_asset, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiGatewayApiAsset, name: "ApiGatewayApiAsset"))
    AssetDetails.add_member(:s3_data_access_asset, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataAccessAsset, name: "S3DataAccessAsset"))
    AssetDetails.add_member(:lake_formation_data_permission_asset, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationDataPermissionAsset, name: "LakeFormationDataPermissionAsset"))
    AssetDetails.type = Types::AssetDetails
    AssetEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:asset_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetDetails, name: "AssetDetails", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "Name", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    AssetEntry.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    AssetEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    AssetEntry.type = Types::AssetEntry
    AssetSourceEntry.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    AssetSourceEntry.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Key", traits: {"smithy.api#required" => {}}))
    AssetSourceEntry.type = Types::AssetSourceEntry
    AutoExportRevisionDestinationEntry.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    AutoExportRevisionDestinationEntry.add_member(:key_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyPattern"))
    AutoExportRevisionDestinationEntry.type = Types::AutoExportRevisionDestinationEntry
    AutoExportRevisionToS3RequestDetails.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportServerSideEncryption, name: "Encryption"))
    AutoExportRevisionToS3RequestDetails.add_member(:revision_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: AutoExportRevisionDestinationEntry, name: "RevisionDestination", traits: {"smithy.api#required" => {}}))
    AutoExportRevisionToS3RequestDetails.type = Types::AutoExportRevisionToS3RequestDetails
    CancelJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJobInput.type = Types::CancelJobInput
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ConflictException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ConflictException.type = Types::ConflictException
    CreateDataGrantRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:grant_distribution_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantDistributionScope, name: "GrantDistributionScope", traits: {"smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:source_data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceDataSetId", traits: {"smithy.api#required" => {}}))
    CreateDataGrantRequest.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    CreateDataGrantRequest.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDataGrantRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateDataGrantRequest.type = Types::CreateDataGrantRequest
    CreateDataGrantResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantDescription, name: "Description"))
    CreateDataGrantResponse.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    CreateDataGrantResponse.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    CreateDataGrantResponse.add_member(:grant_distribution_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantDistributionScope, name: "GrantDistributionScope", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:source_data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceDataSetId", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    CreateDataGrantResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateDataGrantResponse.type = Types::CreateDataGrantResponse
    CreateDataSetInput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType", traits: {"smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateDataSetInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateDataSetInput.type = Types::CreateDataSetInput
    CreateDataSetOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateDataSetOutput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    CreateDataSetOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateDataSetOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    CreateDataSetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateDataSetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    CreateDataSetOutput.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "Origin"))
    CreateDataSetOutput.add_member(:origin_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginDetails, name: "OriginDetails"))
    CreateDataSetOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    CreateDataSetOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateDataSetOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CreateDataSetOutput.type = Types::CreateDataSetOutput
    CreateEventActionInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    CreateEventActionInput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event", traits: {"smithy.api#required" => {}}))
    CreateEventActionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateEventActionInput.type = Types::CreateEventActionInput
    CreateEventActionOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    CreateEventActionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateEventActionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateEventActionOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event"))
    CreateEventActionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateEventActionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateEventActionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CreateEventActionOutput.type = Types::CreateEventActionOutput
    CreateJobInput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: RequestDetails, name: "Details", traits: {"smithy.api#required" => {}}))
    CreateJobInput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    CreateJobInput.type = Types::CreateJobInput
    CreateJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateJobOutput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseDetails, name: "Details"))
    CreateJobOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfJobError, name: "Errors"))
    CreateJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    CreateJobOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    CreateJobOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CreateJobOutput.type = Types::CreateJobOutput
    CreateRevisionInput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    CreateRevisionInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateRevisionInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateRevisionInput.type = Types::CreateRevisionInput
    CreateRevisionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateRevisionOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    CreateRevisionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    CreateRevisionOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    CreateRevisionOutput.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    CreateRevisionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    CreateRevisionOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    CreateRevisionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    CreateRevisionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    CreateRevisionOutput.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment"))
    CreateRevisionOutput.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revoked", traits: {"smithy.api#default" => false}))
    CreateRevisionOutput.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RevokedAt"))
    CreateRevisionOutput.type = Types::CreateRevisionOutput
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:asset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataAccessAssetSourceEntry, name: "AssetSource", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketRequestDetails.type = Types::CreateS3DataAccessFromS3BucketRequestDetails
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:asset_source, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataAccessAssetSourceEntry, name: "AssetSource", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    CreateS3DataAccessFromS3BucketResponseDetails.type = Types::CreateS3DataAccessFromS3BucketResponseDetails
    DataGrantSummaryEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    DataGrantSummaryEntry.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    DataGrantSummaryEntry.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:source_data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceDataSetId", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    DataGrantSummaryEntry.type = Types::DataGrantSummaryEntry
    DataSetEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "Origin", traits: {"smithy.api#required" => {}}))
    DataSetEntry.add_member(:origin_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginDetails, name: "OriginDetails"))
    DataSetEntry.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    DataSetEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    DataSetEntry.type = Types::DataSetEntry
    DataUpdateRequestDetails.add_member(:data_updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DataUpdatedAt"))
    DataUpdateRequestDetails.type = Types::DataUpdateRequestDetails
    DatabaseLFTagPolicy.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFTags, name: "Expression", traits: {"smithy.api#required" => {}}))
    DatabaseLFTagPolicy.type = Types::DatabaseLFTagPolicy
    DatabaseLFTagPolicyAndPermissions.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFTags, name: "Expression", traits: {"smithy.api#required" => {}}))
    DatabaseLFTagPolicyAndPermissions.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDatabaseLFTagPolicyPermissions, name: "Permissions", traits: {"smithy.api#required" => {}}))
    DatabaseLFTagPolicyAndPermissions.type = Types::DatabaseLFTagPolicyAndPermissions
    DeleteAssetInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteAssetInput.type = Types::DeleteAssetInput
    DeleteDataGrantRequest.add_member(:data_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantId, name: "DataGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataGrantRequest.type = Types::DeleteDataGrantRequest
    DeleteDataSetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteDataSetInput.type = Types::DeleteDataSetInput
    DeleteEventActionInput.add_member(:event_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventActionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteEventActionInput.type = Types::DeleteEventActionInput
    DeleteRevisionInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRevisionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteRevisionInput.type = Types::DeleteRevisionInput
    DeprecationRequestDetails.add_member(:deprecation_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "DeprecationAt", traits: {"smithy.api#required" => {}}))
    DeprecationRequestDetails.type = Types::DeprecationRequestDetails
    Details.add_member(:import_asset_from_signed_url_job_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetFromSignedUrlJobErrorDetails, name: "ImportAssetFromSignedUrlJobErrorDetails"))
    Details.add_member(:import_assets_from_s3_job_error_details, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetSourceEntry, name: "ImportAssetsFromS3JobErrorDetails"))
    Details.type = Types::Details
    Event.add_member(:revision_published, ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionPublished, name: "RevisionPublished"))
    Event.type = Types::Event
    EventActionEntry.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action", traits: {"smithy.api#required" => {}}))
    EventActionEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    EventActionEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    EventActionEntry.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event", traits: {"smithy.api#required" => {}}))
    EventActionEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    EventActionEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    EventActionEntry.type = Types::EventActionEntry
    ExportAssetToSignedUrlRequestDetails.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlRequestDetails.type = Types::ExportAssetToSignedUrlRequestDetails
    ExportAssetToSignedUrlResponseDetails.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignedUrl"))
    ExportAssetToSignedUrlResponseDetails.add_member(:signed_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SignedUrlExpiresAt"))
    ExportAssetToSignedUrlResponseDetails.type = Types::ExportAssetToSignedUrlResponseDetails
    ExportAssetsToS3RequestDetails.add_member(:asset_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetDestinationEntry, name: "AssetDestinations", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportServerSideEncryption, name: "Encryption"))
    ExportAssetsToS3RequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3RequestDetails.type = Types::ExportAssetsToS3RequestDetails
    ExportAssetsToS3ResponseDetails.add_member(:asset_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetDestinationEntry, name: "AssetDestinations", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportServerSideEncryption, name: "Encryption"))
    ExportAssetsToS3ResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ExportAssetsToS3ResponseDetails.type = Types::ExportAssetsToS3ResponseDetails
    ExportRevisionsToS3RequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportRevisionsToS3RequestDetails.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportServerSideEncryption, name: "Encryption"))
    ExportRevisionsToS3RequestDetails.add_member(:revision_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRevisionDestinationEntry, name: "RevisionDestinations", traits: {"smithy.api#required" => {}}))
    ExportRevisionsToS3RequestDetails.type = Types::ExportRevisionsToS3RequestDetails
    ExportRevisionsToS3ResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ExportRevisionsToS3ResponseDetails.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportServerSideEncryption, name: "Encryption"))
    ExportRevisionsToS3ResponseDetails.add_member(:revision_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRevisionDestinationEntry, name: "RevisionDestinations", traits: {"smithy.api#required" => {}}))
    ExportRevisionsToS3ResponseDetails.add_member(:event_action_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventActionArn"))
    ExportRevisionsToS3ResponseDetails.type = Types::ExportRevisionsToS3ResponseDetails
    ExportServerSideEncryption.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KmsKeyArn"))
    ExportServerSideEncryption.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSideEncryptionTypes, name: "Type", traits: {"smithy.api#required" => {}}))
    ExportServerSideEncryption.type = Types::ExportServerSideEncryption
    GetAssetInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssetInput.type = Types::GetAssetInput
    GetAssetOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetAssetOutput.add_member(:asset_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetDetails, name: "AssetDetails"))
    GetAssetOutput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    GetAssetOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetAssetOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    GetAssetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetAssetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "Name"))
    GetAssetOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId"))
    GetAssetOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    GetAssetOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetAssetOutput.type = Types::GetAssetOutput
    GetDataGrantRequest.add_member(:data_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantId, name: "DataGrantId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataGrantRequest.type = Types::GetDataGrantRequest
    GetDataGrantResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantDescription, name: "Description"))
    GetDataGrantResponse.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    GetDataGrantResponse.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    GetDataGrantResponse.add_member(:grant_distribution_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantDistributionScope, name: "GrantDistributionScope", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:source_data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceDataSetId", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GetDataGrantResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    GetDataGrantResponse.type = Types::GetDataGrantResponse
    GetDataSetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataSetInput.type = Types::GetDataSetInput
    GetDataSetOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetDataSetOutput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    GetDataSetOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetDataSetOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    GetDataSetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetDataSetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    GetDataSetOutput.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "Origin"))
    GetDataSetOutput.add_member(:origin_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginDetails, name: "OriginDetails"))
    GetDataSetOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    GetDataSetOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    GetDataSetOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetDataSetOutput.type = Types::GetDataSetOutput
    GetEventActionInput.add_member(:event_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventActionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetEventActionInput.type = Types::GetEventActionInput
    GetEventActionOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    GetEventActionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetEventActionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetEventActionOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event"))
    GetEventActionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetEventActionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    GetEventActionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetEventActionOutput.type = Types::GetEventActionOutput
    GetJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobInput.type = Types::GetJobInput
    GetJobOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetJobOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetJobOutput.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseDetails, name: "Details"))
    GetJobOutput.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfJobError, name: "Errors"))
    GetJobOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetJobOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State"))
    GetJobOutput.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type"))
    GetJobOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetJobOutput.type = Types::GetJobOutput
    GetReceivedDataGrantRequest.add_member(:data_grant_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantArn, name: "DataGrantArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetReceivedDataGrantRequest.type = Types::GetReceivedDataGrantRequest
    GetReceivedDataGrantResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal"))
    GetReceivedDataGrantResponse.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantDescription, name: "Description"))
    GetReceivedDataGrantResponse.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    GetReceivedDataGrantResponse.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    GetReceivedDataGrantResponse.add_member(:grant_distribution_scope, ::Smithy::Schema::Shapes::MemberShape.new(target: GrantDistributionScope, name: "GrantDistributionScope", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    GetReceivedDataGrantResponse.type = Types::GetReceivedDataGrantResponse
    GetRevisionInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionInput.type = Types::GetRevisionInput
    GetRevisionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    GetRevisionOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    GetRevisionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    GetRevisionOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    GetRevisionOutput.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    GetRevisionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    GetRevisionOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    GetRevisionOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags"))
    GetRevisionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    GetRevisionOutput.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment"))
    GetRevisionOutput.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revoked", traits: {"smithy.api#default" => false}))
    GetRevisionOutput.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RevokedAt"))
    GetRevisionOutput.type = Types::GetRevisionOutput
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDescription, name: "ApiDescription"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiKey"))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiName", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:api_specification_md5_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin24max24patternazaz094azaz092azaz093, name: "ApiSpecificationMd5Hash", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "ProtocolType", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Stage", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiRequestDetails.type = Types::ImportAssetFromApiGatewayApiRequestDetails
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ApiDescription, name: "ApiDescription"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiKey"))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiName", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_md5_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin24max24patternazaz094azaz092azaz093, name: "ApiSpecificationMd5Hash", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ApiSpecificationUploadUrl", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:api_specification_upload_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ApiSpecificationUploadUrlExpiresAt", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:protocol_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProtocolType, name: "ProtocolType", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.add_member(:stage, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Stage", traits: {"smithy.api#required" => {}}))
    ImportAssetFromApiGatewayApiResponseDetails.type = Types::ImportAssetFromApiGatewayApiResponseDetails
    ImportAssetFromSignedUrlJobErrorDetails.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "AssetName", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlJobErrorDetails.type = Types::ImportAssetFromSignedUrlJobErrorDetails
    ImportAssetFromSignedUrlRequestDetails.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "AssetName", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:md5_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin24max24patternazaz094azaz092azaz093, name: "Md5Hash", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlRequestDetails.type = Types::ImportAssetFromSignedUrlRequestDetails
    ImportAssetFromSignedUrlResponseDetails.add_member(:asset_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "AssetName", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:md5_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin24max24patternazaz094azaz092azaz093, name: "Md5Hash"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SignedUrl"))
    ImportAssetFromSignedUrlResponseDetails.add_member(:signed_url_expires_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SignedUrlExpiresAt"))
    ImportAssetFromSignedUrlResponseDetails.type = Types::ImportAssetFromSignedUrlResponseDetails
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "CatalogId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseLFTagPolicyAndPermissions, name: "Database"))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableLFTagPolicyAndPermissions, name: "Table"))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyRequestDetails.type = Types::ImportAssetsFromLakeFormationTagPolicyRequestDetails
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "CatalogId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseLFTagPolicyAndPermissions, name: "Database"))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableLFTagPolicyAndPermissions, name: "Table"))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromLakeFormationTagPolicyResponseDetails.type = Types::ImportAssetsFromLakeFormationTagPolicyResponseDetails
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:asset_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRedshiftDataShareAssetSourceEntry, name: "AssetSources", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesRequestDetails.type = Types::ImportAssetsFromRedshiftDataSharesRequestDetails
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:asset_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRedshiftDataShareAssetSourceEntry, name: "AssetSources", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromRedshiftDataSharesResponseDetails.type = Types::ImportAssetsFromRedshiftDataSharesResponseDetails
    ImportAssetsFromS3RequestDetails.add_member(:asset_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetSourceEntry, name: "AssetSources", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3RequestDetails.type = Types::ImportAssetsFromS3RequestDetails
    ImportAssetsFromS3ResponseDetails.add_member(:asset_sources, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetSourceEntry, name: "AssetSources", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    ImportAssetsFromS3ResponseDetails.type = Types::ImportAssetsFromS3ResponseDetails
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    JobEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseDetails, name: "Details", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:errors, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfJobError, name: "Errors"))
    JobEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: State, name: "State", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    JobEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    JobEntry.type = Types::JobEntry
    JobError.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: Code, name: "Code", traits: {"smithy.api#required" => {}}))
    JobError.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: Details, name: "Details"))
    JobError.add_member(:limit_name, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorLimitName, name: "LimitName"))
    JobError.add_member(:limit_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "LimitValue", traits: {"smithy.api#default" => 0}))
    JobError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    JobError.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    JobError.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: JobErrorResourceTypes, name: "ResourceType"))
    JobError.type = Types::JobError
    KmsKeyToGrant.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyArn, name: "KmsKeyArn", traits: {"smithy.api#required" => {}}))
    KmsKeyToGrant.type = Types::KmsKeyToGrant
    LFResourceDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseLFTagPolicy, name: "Database"))
    LFResourceDetails.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: TableLFTagPolicy, name: "Table"))
    LFResourceDetails.type = Types::LFResourceDetails
    LFTag.add_member(:tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "TagKey", traits: {"smithy.api#required" => {}}))
    LFTag.add_member(:tag_values, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFTagValues, name: "TagValues", traits: {"smithy.api#required" => {}}))
    LFTag.type = Types::LFTag
    LFTagPolicyDetails.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsAccountId, name: "CatalogId", traits: {"smithy.api#required" => {}}))
    LFTagPolicyDetails.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LFResourceType, name: "ResourceType", traits: {"smithy.api#required" => {}}))
    LFTagPolicyDetails.add_member(:resource_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LFResourceDetails, name: "ResourceDetails", traits: {"smithy.api#required" => {}}))
    LFTagPolicyDetails.type = Types::LFTagPolicyDetails
    LakeFormationDataPermissionAsset.add_member(:lake_formation_data_permission_details, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationDataPermissionDetails, name: "LakeFormationDataPermissionDetails", traits: {"smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:lake_formation_data_permission_type, ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationDataPermissionType, name: "LakeFormationDataPermissionType", traits: {"smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFPermissions, name: "Permissions", traits: {"smithy.api#required" => {}}))
    LakeFormationDataPermissionAsset.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleArn, name: "RoleArn"))
    LakeFormationDataPermissionAsset.type = Types::LakeFormationDataPermissionAsset
    LakeFormationDataPermissionDetails.add_member(:lf_tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: LFTagPolicyDetails, name: "LFTagPolicy"))
    LakeFormationDataPermissionDetails.type = Types::LakeFormationDataPermissionDetails
    LakeFormationTagPolicyDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database"))
    LakeFormationTagPolicyDetails.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Table"))
    LakeFormationTagPolicyDetails.type = Types::LakeFormationTagPolicyDetails
    ListDataGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListDataGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataGrantsRequest.type = Types::ListDataGrantsRequest
    ListDataGrantsResponse.add_member(:data_grant_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDataGrantSummaryEntry, name: "DataGrantSummaries"))
    ListDataGrantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataGrantsResponse.type = Types::ListDataGrantsResponse
    ListDataSetRevisionsInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListDataSetRevisionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetRevisionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSetRevisionsInput.type = Types::ListDataSetRevisionsInput
    ListDataSetRevisionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSetRevisionsOutput.add_member(:revisions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRevisionEntry, name: "Revisions"))
    ListDataSetRevisionsOutput.type = Types::ListDataSetRevisionsOutput
    ListDataSetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListDataSetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListDataSetsInput.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Origin", traits: {"smithy.api#httpQuery" => "origin"}))
    ListDataSetsInput.type = Types::ListDataSetsInput
    ListDataSetsOutput.add_member(:data_sets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfDataSetEntry, name: "DataSets"))
    ListDataSetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListDataSetsOutput.type = Types::ListDataSetsOutput
    ListEventActionsInput.add_member(:event_source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventSourceId", traits: {"smithy.api#httpQuery" => "eventSourceId"}))
    ListEventActionsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListEventActionsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListEventActionsInput.type = Types::ListEventActionsInput
    ListEventActionsOutput.add_member(:event_actions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfEventActionEntry, name: "EventActions"))
    ListEventActionsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListEventActionsOutput.type = Types::ListEventActionsOutput
    ListJobsInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataSetId", traits: {"smithy.api#httpQuery" => "dataSetId"}))
    ListJobsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListJobsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListJobsInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpQuery" => "revisionId"}))
    ListJobsInput.type = Types::ListJobsInput
    ListJobsOutput.add_member(:jobs, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfJobEntry, name: "Jobs"))
    ListJobsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListJobsOutput.type = Types::ListJobsOutput
    ListOfAssetDestinationEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetDestinationEntry, name: "member")
    ListOfAssetEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetEntry, name: "member")
    ListOfAssetSourceEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AssetSourceEntry, name: "member")
    ListOfDataGrantSummaryEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantSummaryEntry, name: "member")
    ListOfDataSetEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataSetEntry, name: "member")
    ListOfDatabaseLFTagPolicyPermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseLFTagPolicyPermission, name: "member")
    ListOfEventActionEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: EventActionEntry, name: "member")
    ListOfJobEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobEntry, name: "member")
    ListOfJobError.member = ::Smithy::Schema::Shapes::MemberShape.new(target: JobError, name: "member")
    ListOfKmsKeysToGrant.member = ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKeyToGrant, name: "member")
    ListOfLFPermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LFPermission, name: "member")
    ListOfLFTagValues.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "member")
    ListOfLFTags.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LFTag, name: "member")
    ListOfLakeFormationTagPolicies.member = ::Smithy::Schema::Shapes::MemberShape.new(target: LakeFormationTagPolicyDetails, name: "member")
    ListOfReceivedDataGrantSummariesEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ReceivedDataGrantSummariesEntry, name: "member")
    ListOfRedshiftDataShareAssetSourceEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataShareAssetSourceEntry, name: "member")
    ListOfRedshiftDataShares.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDataShareDetails, name: "member")
    ListOfRevisionDestinationEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionDestinationEntry, name: "member")
    ListOfRevisionEntry.member = ::Smithy::Schema::Shapes::MemberShape.new(target: RevisionEntry, name: "member")
    ListOfS3DataAccesses.member = ::Smithy::Schema::Shapes::MemberShape.new(target: S3DataAccessDetails, name: "member")
    ListOfSchemaChangeDetails.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaChangeDetails, name: "member")
    ListOfTableTagPolicyLFPermissions.member = ::Smithy::Schema::Shapes::MemberShape.new(target: TableTagPolicyLFPermission, name: "member")
    ListOfString.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    ListReceivedDataGrantsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => nil, "smithy.api#httpQuery" => "maxResults"}))
    ListReceivedDataGrantsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListReceivedDataGrantsRequest.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: AcceptanceStateFilterValues, name: "AcceptanceState", traits: {"smithy.api#httpQuery" => "acceptanceState"}))
    ListReceivedDataGrantsRequest.type = Types::ListReceivedDataGrantsRequest
    ListReceivedDataGrantsResponse.add_member(:data_grant_summaries, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfReceivedDataGrantSummariesEntry, name: "DataGrantSummaries"))
    ListReceivedDataGrantsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListReceivedDataGrantsResponse.type = Types::ListReceivedDataGrantsResponse
    ListRevisionAssetsInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRevisionAssetsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#default" => 0, "smithy.api#httpQuery" => "maxResults"}))
    ListRevisionAssetsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "NextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListRevisionAssetsInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListRevisionAssetsInput.type = Types::ListRevisionAssetsInput
    ListRevisionAssetsOutput.add_member(:assets, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfAssetEntry, name: "Assets"))
    ListRevisionAssetsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListRevisionAssetsOutput.type = Types::ListRevisionAssetsOutput
    ListTagsForResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceInput.type = Types::ListTagsForResourceInput
    ListTagsForResourceOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags", traits: {"smithy.api#jsonName" => "tags"}))
    ListTagsForResourceOutput.type = Types::ListTagsForResourceOutput
    MapOfString.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    MapOfString.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")
    NotificationDetails.add_member(:data_update, ::Smithy::Schema::Shapes::MemberShape.new(target: DataUpdateRequestDetails, name: "DataUpdate"))
    NotificationDetails.add_member(:deprecation, ::Smithy::Schema::Shapes::MemberShape.new(target: DeprecationRequestDetails, name: "Deprecation"))
    NotificationDetails.add_member(:schema_change, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaChangeRequestDetails, name: "SchemaChange"))
    NotificationDetails.type = Types::NotificationDetails
    OriginDetails.add_member(:product_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ProductId"))
    OriginDetails.add_member(:data_grant_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataGrantId"))
    OriginDetails.type = Types::OriginDetails
    ReceivedDataGrantSummariesEntry.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantName, name: "Name", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:sender_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: SenderPrincipal, name: "SenderPrincipal", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:receiver_principal, ::Smithy::Schema::Shapes::MemberShape.new(target: ReceiverPrincipal, name: "ReceiverPrincipal", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:acceptance_state, ::Smithy::Schema::Shapes::MemberShape.new(target: DataGrantAcceptanceState, name: "AcceptanceState", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:accepted_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "AcceptedAt"))
    ReceivedDataGrantSummariesEntry.add_member(:ends_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "EndsAt"))
    ReceivedDataGrantSummariesEntry.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    ReceivedDataGrantSummariesEntry.type = Types::ReceivedDataGrantSummariesEntry
    RedshiftDataShareAsset.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    RedshiftDataShareAsset.type = Types::RedshiftDataShareAsset
    RedshiftDataShareAssetSourceEntry.add_member(:data_share_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataShareArn", traits: {"smithy.api#required" => {}}))
    RedshiftDataShareAssetSourceEntry.type = Types::RedshiftDataShareAssetSourceEntry
    RedshiftDataShareDetails.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Arn", traits: {"smithy.api#required" => {}}))
    RedshiftDataShareDetails.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Database", traits: {"smithy.api#required" => {}}))
    RedshiftDataShareDetails.add_member(:function, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Function"))
    RedshiftDataShareDetails.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Table"))
    RedshiftDataShareDetails.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Schema"))
    RedshiftDataShareDetails.add_member(:view, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "View"))
    RedshiftDataShareDetails.type = Types::RedshiftDataShareDetails
    RequestDetails.add_member(:export_asset_to_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAssetToSignedUrlRequestDetails, name: "ExportAssetToSignedUrl"))
    RequestDetails.add_member(:export_assets_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAssetsToS3RequestDetails, name: "ExportAssetsToS3"))
    RequestDetails.add_member(:export_revisions_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportRevisionsToS3RequestDetails, name: "ExportRevisionsToS3"))
    RequestDetails.add_member(:import_asset_from_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetFromSignedUrlRequestDetails, name: "ImportAssetFromSignedUrl"))
    RequestDetails.add_member(:import_assets_from_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromS3RequestDetails, name: "ImportAssetsFromS3"))
    RequestDetails.add_member(:import_assets_from_redshift_data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromRedshiftDataSharesRequestDetails, name: "ImportAssetsFromRedshiftDataShares"))
    RequestDetails.add_member(:import_asset_from_api_gateway_api, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetFromApiGatewayApiRequestDetails, name: "ImportAssetFromApiGatewayApi"))
    RequestDetails.add_member(:create_s3_data_access_from_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateS3DataAccessFromS3BucketRequestDetails, name: "CreateS3DataAccessFromS3Bucket"))
    RequestDetails.add_member(:import_assets_from_lake_formation_tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromLakeFormationTagPolicyRequestDetails, name: "ImportAssetsFromLakeFormationTagPolicy"))
    RequestDetails.type = Types::RequestDetails
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.add_member(:resource_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceId"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResponseDetails.add_member(:export_asset_to_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAssetToSignedUrlResponseDetails, name: "ExportAssetToSignedUrl"))
    ResponseDetails.add_member(:export_assets_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportAssetsToS3ResponseDetails, name: "ExportAssetsToS3"))
    ResponseDetails.add_member(:export_revisions_to_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportRevisionsToS3ResponseDetails, name: "ExportRevisionsToS3"))
    ResponseDetails.add_member(:import_asset_from_signed_url, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetFromSignedUrlResponseDetails, name: "ImportAssetFromSignedUrl"))
    ResponseDetails.add_member(:import_assets_from_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromS3ResponseDetails, name: "ImportAssetsFromS3"))
    ResponseDetails.add_member(:import_assets_from_redshift_data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromRedshiftDataSharesResponseDetails, name: "ImportAssetsFromRedshiftDataShares"))
    ResponseDetails.add_member(:import_asset_from_api_gateway_api, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetFromApiGatewayApiResponseDetails, name: "ImportAssetFromApiGatewayApi"))
    ResponseDetails.add_member(:create_s3_data_access_from_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: CreateS3DataAccessFromS3BucketResponseDetails, name: "CreateS3DataAccessFromS3Bucket"))
    ResponseDetails.add_member(:import_assets_from_lake_formation_tag_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportAssetsFromLakeFormationTagPolicyResponseDetails, name: "ImportAssetsFromLakeFormationTagPolicy"))
    ResponseDetails.type = Types::ResponseDetails
    RevisionDestinationEntry.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    RevisionDestinationEntry.add_member(:key_pattern, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KeyPattern"))
    RevisionDestinationEntry.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#required" => {}}))
    RevisionDestinationEntry.type = Types::RevisionDestinationEntry
    RevisionEntry.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn", traits: {"smithy.api#required" => {}}))
    RevisionEntry.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    RevisionEntry.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt", traits: {"smithy.api#required" => {}}))
    RevisionEntry.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    RevisionEntry.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    RevisionEntry.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id", traits: {"smithy.api#required" => {}}))
    RevisionEntry.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    RevisionEntry.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt", traits: {"smithy.api#required" => {}}))
    RevisionEntry.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment"))
    RevisionEntry.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revoked", traits: {"smithy.api#default" => false}))
    RevisionEntry.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RevokedAt"))
    RevisionEntry.type = Types::RevisionEntry
    RevisionPublished.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#required" => {}}))
    RevisionPublished.type = Types::RevisionPublished
    RevokeRevisionInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRevisionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RevokeRevisionInput.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment", traits: {"smithy.api#required" => {}}))
    RevokeRevisionInput.type = Types::RevokeRevisionInput
    RevokeRevisionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    RevokeRevisionOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    RevokeRevisionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    RevokeRevisionOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    RevokeRevisionOutput.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    RevokeRevisionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    RevokeRevisionOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    RevokeRevisionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    RevokeRevisionOutput.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment"))
    RevokeRevisionOutput.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revoked", traits: {"smithy.api#default" => false}))
    RevokeRevisionOutput.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RevokedAt"))
    RevokeRevisionOutput.type = Types::RevokeRevisionOutput
    S3DataAccessAsset.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3DataAccessAsset.add_member(:key_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "KeyPrefixes"))
    S3DataAccessAsset.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "Keys"))
    S3DataAccessAsset.add_member(:s3_access_point_alias, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessPointAlias"))
    S3DataAccessAsset.add_member(:s3_access_point_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "S3AccessPointArn"))
    S3DataAccessAsset.add_member(:kms_keys_to_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfKmsKeysToGrant, name: "KmsKeysToGrant"))
    S3DataAccessAsset.type = Types::S3DataAccessAsset
    S3DataAccessAssetSourceEntry.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3DataAccessAssetSourceEntry.add_member(:key_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "KeyPrefixes"))
    S3DataAccessAssetSourceEntry.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "Keys"))
    S3DataAccessAssetSourceEntry.add_member(:kms_keys_to_grant, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfKmsKeysToGrant, name: "KmsKeysToGrant"))
    S3DataAccessAssetSourceEntry.type = Types::S3DataAccessAssetSourceEntry
    S3DataAccessDetails.add_member(:key_prefixes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "KeyPrefixes"))
    S3DataAccessDetails.add_member(:keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "Keys"))
    S3DataAccessDetails.type = Types::S3DataAccessDetails
    S3SnapshotAsset.add_member(:size, ::Smithy::Schema::Shapes::MemberShape.new(target: Doublemin0, name: "Size", traits: {"smithy.api#default" => 0, "smithy.api#required" => {}}))
    S3SnapshotAsset.type = Types::S3SnapshotAsset
    SchemaChangeDetails.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Name", traits: {"smithy.api#required" => {}}))
    SchemaChangeDetails.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaChangeType, name: "Type", traits: {"smithy.api#required" => {}}))
    SchemaChangeDetails.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    SchemaChangeDetails.type = Types::SchemaChangeDetails
    SchemaChangeRequestDetails.add_member(:changes, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfSchemaChangeDetails, name: "Changes"))
    SchemaChangeRequestDetails.add_member(:schema_change_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "SchemaChangeAt", traits: {"smithy.api#required" => {}}))
    SchemaChangeRequestDetails.type = Types::SchemaChangeRequestDetails
    ScopeDetails.add_member(:lake_formation_tag_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLakeFormationTagPolicies, name: "LakeFormationTagPolicies"))
    ScopeDetails.add_member(:redshift_data_shares, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfRedshiftDataShares, name: "RedshiftDataShares"))
    ScopeDetails.add_member(:s3_data_accesses, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfS3DataAccesses, name: "S3DataAccesses"))
    ScopeDetails.type = Types::ScopeDetails
    SendApiAssetInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body", traits: {"smithy.api#httpPayload" => {}}))
    SendApiAssetInput.add_member(:query_string_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "QueryStringParameters", traits: {"smithy.api#httpQueryParams" => {}}))
    SendApiAssetInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "AssetId", traits: {"smithy.api#httpHeader" => "x-amzn-dataexchange-asset-id", "smithy.api#required" => {}}))
    SendApiAssetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DataSetId", traits: {"smithy.api#httpHeader" => "x-amzn-dataexchange-data-set-id", "smithy.api#required" => {}}))
    SendApiAssetInput.add_member(:request_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "RequestHeaders", traits: {"smithy.api#httpPrefixHeaders" => "x-amzn-dataexchange-header-"}))
    SendApiAssetInput.add_member(:method, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Method", traits: {"smithy.api#httpHeader" => "x-amzn-dataexchange-http-method"}))
    SendApiAssetInput.add_member(:path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Path", traits: {"smithy.api#httpHeader" => "x-amzn-dataexchange-path"}))
    SendApiAssetInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RevisionId", traits: {"smithy.api#httpHeader" => "x-amzn-dataexchange-revision-id", "smithy.api#required" => {}}))
    SendApiAssetInput[:http_payload] = :body
    SendApiAssetInput[:http_payload_member] = SendApiAssetInput.member(:body)
    SendApiAssetInput.type = Types::SendApiAssetInput
    SendApiAssetOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Body", traits: {"smithy.api#httpPayload" => {}}))
    SendApiAssetOutput.add_member(:response_headers, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "ResponseHeaders", traits: {"smithy.api#httpPrefixHeaders" => ""}))
    SendApiAssetOutput[:http_payload] = :body
    SendApiAssetOutput[:http_payload_member] = SendApiAssetOutput.member(:body)
    SendApiAssetOutput.type = Types::SendApiAssetOutput
    SendDataSetNotificationRequest.add_member(:scope, ::Smithy::Schema::Shapes::MemberShape.new(target: ScopeDetails, name: "Scope"))
    SendDataSetNotificationRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ClientToken, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    SendDataSetNotificationRequest.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max4096, name: "Comment"))
    SendDataSetNotificationRequest.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SendDataSetNotificationRequest.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationDetails, name: "Details"))
    SendDataSetNotificationRequest.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationType, name: "Type", traits: {"smithy.api#required" => {}}))
    SendDataSetNotificationRequest.type = Types::SendDataSetNotificationRequest
    SendDataSetNotificationResponse.type = Types::SendDataSetNotificationResponse
    ServiceLimitExceededException.add_member(:limit_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LimitName, name: "LimitName"))
    ServiceLimitExceededException.add_member(:limit_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, name: "LimitValue", traits: {"smithy.api#default" => 0}))
    ServiceLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceLimitExceededException.type = Types::ServiceLimitExceededException
    StartJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "JobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StartJobInput.type = Types::StartJobInput
    StartJobOutput.type = Types::StartJobOutput
    TableLFTagPolicy.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFTags, name: "Expression", traits: {"smithy.api#required" => {}}))
    TableLFTagPolicy.type = Types::TableLFTagPolicy
    TableLFTagPolicyAndPermissions.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfLFTags, name: "Expression", traits: {"smithy.api#required" => {}}))
    TableLFTagPolicyAndPermissions.add_member(:permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfTableTagPolicyLFPermissions, name: "Permissions", traits: {"smithy.api#required" => {}}))
    TableLFTagPolicyAndPermissions.type = Types::TableLFTagPolicyAndPermissions
    TagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: MapOfString, name: "Tags", traits: {"smithy.api#jsonName" => "tags", "smithy.api#required" => {}}))
    TagResourceInput.type = Types::TagResourceInput
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UntagResourceInput.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfString, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceInput.type = Types::UntagResourceInput
    UpdateAssetInput.add_member(:asset_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "AssetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "Name", traits: {"smithy.api#required" => {}}))
    UpdateAssetInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateAssetInput.type = Types::UpdateAssetInput
    UpdateAssetOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateAssetOutput.add_member(:asset_details, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetDetails, name: "AssetDetails"))
    UpdateAssetOutput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    UpdateAssetOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateAssetOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    UpdateAssetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateAssetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetName, name: "Name"))
    UpdateAssetOutput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId"))
    UpdateAssetOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    UpdateAssetOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    UpdateAssetOutput.type = Types::UpdateAssetOutput
    UpdateDataSetInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateDataSetInput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDataSetInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateDataSetInput.type = Types::UpdateDataSetInput
    UpdateDataSetOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateDataSetOutput.add_member(:asset_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssetType, name: "AssetType"))
    UpdateDataSetOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateDataSetOutput.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: Description, name: "Description"))
    UpdateDataSetOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateDataSetOutput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: Name, name: "Name"))
    UpdateDataSetOutput.add_member(:origin, ::Smithy::Schema::Shapes::MemberShape.new(target: Origin, name: "Origin"))
    UpdateDataSetOutput.add_member(:origin_details, ::Smithy::Schema::Shapes::MemberShape.new(target: OriginDetails, name: "OriginDetails"))
    UpdateDataSetOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    UpdateDataSetOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    UpdateDataSetOutput.type = Types::UpdateDataSetOutput
    UpdateEventActionInput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    UpdateEventActionInput.add_member(:event_action_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EventActionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateEventActionInput.type = Types::UpdateEventActionInput
    UpdateEventActionOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: Action, name: "Action"))
    UpdateEventActionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateEventActionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateEventActionOutput.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: Event, name: "Event"))
    UpdateEventActionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateEventActionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    UpdateEventActionOutput.type = Types::UpdateEventActionOutput
    UpdateRevisionInput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    UpdateRevisionInput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRevisionInput.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    UpdateRevisionInput.add_member(:revision_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "RevisionId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateRevisionInput.type = Types::UpdateRevisionInput
    UpdateRevisionOutput.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateRevisionOutput.add_member(:comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin0max16384, name: "Comment"))
    UpdateRevisionOutput.add_member(:created_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreatedAt"))
    UpdateRevisionOutput.add_member(:data_set_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "DataSetId"))
    UpdateRevisionOutput.add_member(:finalized, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Finalized", traits: {"smithy.api#default" => false}))
    UpdateRevisionOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "Id"))
    UpdateRevisionOutput.add_member(:source_id, ::Smithy::Schema::Shapes::MemberShape.new(target: Id, name: "SourceId"))
    UpdateRevisionOutput.add_member(:updated_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "UpdatedAt"))
    UpdateRevisionOutput.add_member(:revocation_comment, ::Smithy::Schema::Shapes::MemberShape.new(target: Stringmin10max512, name: "RevocationComment"))
    UpdateRevisionOutput.add_member(:revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Revoked", traits: {"smithy.api#default" => false}))
    UpdateRevisionOutput.add_member(:revoked_at, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RevokedAt"))
    UpdateRevisionOutput.type = Types::UpdateRevisionOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.add_member(:exception_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ExceptionCause, name: "ExceptionCause"))
    ValidationException.type = Types::ValidationException

    DataExchange = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.dataexchange#DataExchange"
      service.name = "DataExchange"
      service.version = "2017-07-25"
      service.traits = {"aws.api#service" => {"sdkId" => "DataExchange", "arnNamespace" => "dataexchange", "cloudTrailEventSource" => "dataexchange.amazonaws.com", "endpointPrefix" => "dataexchange"}, "aws.auth#sigv4" => {"name" => "dataexchange"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "AWS Data Exchange"}
      service.add_operation(:accept_data_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#AcceptDataGrant"
        operation.name = "AcceptDataGrant"
        operation.input = AcceptDataGrantRequest
        operation.output = AcceptDataGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-grants/{DataGrantArn}/accept", "code" => 200}}
      end)
      service.add_operation(:cancel_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CancelJob"
        operation.name = "CancelJob"
        operation.input = CancelJobInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/jobs/{JobId}", "code" => 204}}
      end)
      service.add_operation(:create_data_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateDataGrant"
        operation.name = "CreateDataGrant"
        operation.input = CreateDataGrantRequest
        operation.output = CreateDataGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-grants", "code" => 201}}
      end)
      service.add_operation(:create_data_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateDataSet"
        operation.name = "CreateDataSet"
        operation.input = CreateDataSetInput
        operation.output = CreateDataSetOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets", "code" => 201}}
      end)
      service.add_operation(:create_event_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateEventAction"
        operation.name = "CreateEventAction"
        operation.input = CreateEventActionInput
        operation.output = CreateEventActionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceLimitExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/event-actions", "code" => 201}}
      end)
      service.add_operation(:create_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateJob"
        operation.name = "CreateJob"
        operation.input = CreateJobInput
        operation.output = CreateJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/jobs", "code" => 201}}
      end)
      service.add_operation(:create_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#CreateRevision"
        operation.name = "CreateRevision"
        operation.input = CreateRevisionInput
        operation.output = CreateRevisionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/revisions", "code" => 201}}
      end)
      service.add_operation(:delete_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteAsset"
        operation.name = "DeleteAsset"
        operation.input = DeleteAssetInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 204}}
      end)
      service.add_operation(:delete_data_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteDataGrant"
        operation.name = "DeleteDataGrant"
        operation.input = DeleteDataGrantRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-grants/{DataGrantId}", "code" => 204}}
      end)
      service.add_operation(:delete_data_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteDataSet"
        operation.name = "DeleteDataSet"
        operation.input = DeleteDataSetInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}", "code" => 204}}
      end)
      service.add_operation(:delete_event_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteEventAction"
        operation.name = "DeleteEventAction"
        operation.input = DeleteEventActionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/event-actions/{EventActionId}", "code" => 204}}
      end)
      service.add_operation(:delete_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#DeleteRevision"
        operation.name = "DeleteRevision"
        operation.input = DeleteRevisionInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 204}}
      end)
      service.add_operation(:get_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetAsset"
        operation.name = "GetAsset"
        operation.input = GetAssetInput
        operation.output = GetAssetOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetDataGrant"
        operation.name = "GetDataGrant"
        operation.input = GetDataGrantRequest
        operation.output = GetDataGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-grants/{DataGrantId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_data_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetDataSet"
        operation.name = "GetDataSet"
        operation.input = GetDataSetInput
        operation.output = GetDataSetOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_event_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetEventAction"
        operation.name = "GetEventAction"
        operation.input = GetEventActionInput
        operation.output = GetEventActionOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/event-actions/{EventActionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetJob"
        operation.name = "GetJob"
        operation.input = GetJobInput
        operation.output = GetJobOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs/{JobId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_received_data_grant, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetReceivedDataGrant"
        operation.name = "GetReceivedDataGrant"
        operation.input = GetReceivedDataGrantRequest
        operation.output = GetReceivedDataGrantResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/received-data-grants/{DataGrantArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#GetRevision"
        operation.name = "GetRevision"
        operation.input = GetRevisionInput
        operation.output = GetRevisionOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_data_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataGrants"
        operation.name = "ListDataGrants"
        operation.input = ListDataGrantsRequest
        operation.output = ListDataGrantsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-grants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataGrants.new
      end)
      service.add_operation(:list_data_set_revisions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataSetRevisions"
        operation.name = "ListDataSetRevisions"
        operation.input = ListDataSetRevisionsInput
        operation.output = ListDataSetRevisionsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSetRevisions.new
      end)
      service.add_operation(:list_data_sets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListDataSets"
        operation.name = "ListDataSets"
        operation.input = ListDataSetsInput
        operation.output = ListDataSetsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListDataSets.new
      end)
      service.add_operation(:list_event_actions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListEventActions"
        operation.name = "ListEventActions"
        operation.input = ListEventActionsInput
        operation.output = ListEventActionsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/event-actions", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListEventActions.new
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsInput
        operation.output = ListJobsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/jobs", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_received_data_grants, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListReceivedDataGrants"
        operation.name = "ListReceivedDataGrants"
        operation.input = ListReceivedDataGrantsRequest
        operation.output = ListReceivedDataGrantsResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/received-data-grants", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListReceivedDataGrants.new
      end)
      service.add_operation(:list_revision_assets, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListRevisionAssets"
        operation.name = "ListRevisionAssets"
        operation.input = ListRevisionAssetsInput
        operation.output = ListRevisionAssetsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListRevisionAssets.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceInput
        operation.output = ListTagsForResourceOutput
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:revoke_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#RevokeRevision"
        operation.name = "RevokeRevision"
        operation.input = RevokeRevisionInput
        operation.output = RevokeRevisionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke", "code" => 200}}
      end)
      service.add_operation(:send_api_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#SendApiAsset"
        operation.name = "SendApiAsset"
        operation.input = SendApiAssetInput
        operation.output = SendApiAssetOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#endpoint" => {"hostPrefix" => "api-fulfill."}, "smithy.api#http" => {"method" => "POST", "uri" => "/v1", "code" => 200}}
      end)
      service.add_operation(:send_data_set_notification, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#SendDataSetNotification"
        operation.name = "SendDataSetNotification"
        operation.input = SendDataSetNotificationRequest
        operation.output = SendDataSetNotificationResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/v1/data-sets/{DataSetId}/notification", "code" => 202}}
      end)
      service.add_operation(:start_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#StartJob"
        operation.name = "StartJob"
        operation.input = StartJobInput
        operation.output = StartJobOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/jobs/{JobId}", "code" => 202}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 204}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 204}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:update_asset, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateAsset"
        operation.name = "UpdateAsset"
        operation.input = UpdateAssetInput
        operation.output = UpdateAssetOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}", "code" => 200}}
      end)
      service.add_operation(:update_data_set, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateDataSet"
        operation.name = "UpdateDataSet"
        operation.input = UpdateDataSetInput
        operation.output = UpdateDataSetOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}", "code" => 200}}
      end)
      service.add_operation(:update_event_action, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateEventAction"
        operation.name = "UpdateEventAction"
        operation.input = UpdateEventActionInput
        operation.output = UpdateEventActionOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/event-actions/{EventActionId}", "code" => 200}}
      end)
      service.add_operation(:update_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.dataexchange#UpdateRevision"
        operation.name = "UpdateRevision"
        operation.input = UpdateRevisionInput
        operation.output = UpdateRevisionOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/v1/data-sets/{DataSetId}/revisions/{RevisionId}", "code" => 200}}
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
