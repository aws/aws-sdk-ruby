# frozen_string_literal: true

# This is generated code!

module Aws::Glacier
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortMultipartUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#AbortMultipartUploadInput", name: "AbortMultipartUploadInput")
    AbortVaultLockInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#AbortVaultLockInput", name: "AbortVaultLockInput")
    AccessControlPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#AccessControlPolicyList", name: "AccessControlPolicyList")
    ActionCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#ActionCode", name: "ActionCode")
    AddTagsToVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#AddTagsToVaultInput", name: "AddTagsToVaultInput")
    CSVInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CSVInput", name: "CSVInput")
    CSVOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CSVOutput", name: "CSVOutput")
    CannedACL = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#CannedACL", name: "CannedACL")
    CompleteMultipartUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CompleteMultipartUploadInput", name: "CompleteMultipartUploadInput")
    CompleteMultipartUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CompleteMultipartUploadOutput", name: "CompleteMultipartUploadOutput")
    CompleteVaultLockInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CompleteVaultLockInput", name: "CompleteVaultLockInput")
    CreateVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CreateVaultInput", name: "CreateVaultInput")
    CreateVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#CreateVaultOutput", name: "CreateVaultOutput")
    DataRetrievalPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DataRetrievalPolicy", name: "DataRetrievalPolicy")
    DataRetrievalRule = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DataRetrievalRule", name: "DataRetrievalRule")
    DataRetrievalRulesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#DataRetrievalRulesList", name: "DataRetrievalRulesList")
    DateTime = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.glacier#DateTime", name: "DateTime")
    DeleteArchiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DeleteArchiveInput", name: "DeleteArchiveInput")
    DeleteVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DeleteVaultAccessPolicyInput", name: "DeleteVaultAccessPolicyInput")
    DeleteVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DeleteVaultInput", name: "DeleteVaultInput")
    DeleteVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DeleteVaultNotificationsInput", name: "DeleteVaultNotificationsInput")
    DescribeJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DescribeJobInput", name: "DescribeJobInput")
    DescribeJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DescribeJobOutput", name: "DescribeJobOutput")
    DescribeVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DescribeVaultInput", name: "DescribeVaultInput")
    DescribeVaultOperationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DescribeVaultOperationOutput", name: "DescribeVaultOperationOutput")
    DescribeVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#DescribeVaultOutput", name: "DescribeVaultOutput")
    Encryption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#Encryption", name: "Encryption")
    EncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#EncryptionType", name: "EncryptionType")
    ExpressionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#ExpressionType", name: "ExpressionType")
    FileHeaderInfo = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#FileHeaderInfo", name: "FileHeaderInfo")
    GetDataRetrievalPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetDataRetrievalPolicyInput", name: "GetDataRetrievalPolicyInput")
    GetDataRetrievalPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetDataRetrievalPolicyOutput", name: "GetDataRetrievalPolicyOutput")
    GetJobOutputInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetJobOutputInput", name: "GetJobOutputInput")
    GetJobOutputOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetJobOutputOutput", name: "GetJobOutputOutput")
    GetVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultAccessPolicyInput", name: "GetVaultAccessPolicyInput")
    GetVaultAccessPolicyOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultAccessPolicyOutput", name: "GetVaultAccessPolicyOutput")
    GetVaultLockInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultLockInput", name: "GetVaultLockInput")
    GetVaultLockOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultLockOutput", name: "GetVaultLockOutput")
    GetVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultNotificationsInput", name: "GetVaultNotificationsInput")
    GetVaultNotificationsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GetVaultNotificationsOutput", name: "GetVaultNotificationsOutput")
    GlacierJobDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#GlacierJobDescription", name: "GlacierJobDescription")
    Grant = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#Grant", name: "Grant")
    Grantee = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#Grantee", name: "Grantee")
    InitiateJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateJobInput", name: "InitiateJobInput")
    InitiateJobOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateJobOutput", name: "InitiateJobOutput")
    InitiateMultipartUploadInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateMultipartUploadInput", name: "InitiateMultipartUploadInput")
    InitiateMultipartUploadOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateMultipartUploadOutput", name: "InitiateMultipartUploadOutput")
    InitiateVaultLockInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateVaultLockInput", name: "InitiateVaultLockInput")
    InitiateVaultLockOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InitiateVaultLockOutput", name: "InitiateVaultLockOutput")
    InputSerialization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InputSerialization", name: "InputSerialization")
    InsufficientCapacityException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InsufficientCapacityException", name: "InsufficientCapacityException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InvalidParameterValueException", name: "InvalidParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InventoryRetrievalJobDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InventoryRetrievalJobDescription", name: "InventoryRetrievalJobDescription")
    InventoryRetrievalJobInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#InventoryRetrievalJobInput", name: "InventoryRetrievalJobInput")
    JobList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#JobList", name: "JobList")
    JobParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#JobParameters", name: "JobParameters")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListJobsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListJobsInput", name: "ListJobsInput")
    ListJobsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListJobsOutput", name: "ListJobsOutput")
    ListMultipartUploadsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListMultipartUploadsInput", name: "ListMultipartUploadsInput")
    ListMultipartUploadsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListMultipartUploadsOutput", name: "ListMultipartUploadsOutput")
    ListPartsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListPartsInput", name: "ListPartsInput")
    ListPartsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListPartsOutput", name: "ListPartsOutput")
    ListProvisionedCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListProvisionedCapacityInput", name: "ListProvisionedCapacityInput")
    ListProvisionedCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListProvisionedCapacityOutput", name: "ListProvisionedCapacityOutput")
    ListTagsForVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListTagsForVaultInput", name: "ListTagsForVaultInput")
    ListTagsForVaultOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListTagsForVaultOutput", name: "ListTagsForVaultOutput")
    ListVaultsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListVaultsInput", name: "ListVaultsInput")
    ListVaultsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ListVaultsOutput", name: "ListVaultsOutput")
    MissingParameterValueException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#MissingParameterValueException", name: "MissingParameterValueException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotificationEventList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#NotificationEventList", name: "NotificationEventList")
    NullableLong = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.glacier#NullableLong", name: "NullableLong")
    OutputLocation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#OutputLocation", name: "OutputLocation")
    OutputSerialization = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#OutputSerialization", name: "OutputSerialization")
    PartList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#PartList", name: "PartList")
    PartListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#PartListElement", name: "PartListElement")
    Permission = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#Permission", name: "Permission")
    PolicyEnforcedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#PolicyEnforcedException", name: "PolicyEnforcedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ProvisionedCapacityDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ProvisionedCapacityDescription", name: "ProvisionedCapacityDescription")
    ProvisionedCapacityList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#ProvisionedCapacityList", name: "ProvisionedCapacityList")
    PurchaseProvisionedCapacityInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#PurchaseProvisionedCapacityInput", name: "PurchaseProvisionedCapacityInput")
    PurchaseProvisionedCapacityOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#PurchaseProvisionedCapacityOutput", name: "PurchaseProvisionedCapacityOutput")
    QuoteFields = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#QuoteFields", name: "QuoteFields")
    RemoveTagsFromVaultInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#RemoveTagsFromVaultInput", name: "RemoveTagsFromVaultInput")
    RequestTimeoutException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#RequestTimeoutException", name: "RequestTimeoutException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Location = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#S3Location", name: "S3Location")
    SelectParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#SelectParameters", name: "SelectParameters")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SetDataRetrievalPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#SetDataRetrievalPolicyInput", name: "SetDataRetrievalPolicyInput")
    SetVaultAccessPolicyInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#SetVaultAccessPolicyInput", name: "SetVaultAccessPolicyInput")
    SetVaultNotificationsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#SetVaultNotificationsInput", name: "SetVaultNotificationsInput")
    Size = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.glacier#Size", name: "Size")
    StatusCode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#StatusCode", name: "StatusCode")
    StorageClass = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#StorageClass", name: "StorageClass")
    Stream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.glacier#Stream", name: "Stream", traits: {"smithy.api#streaming" => {}})
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.glacier#TagKey", name: "TagKey")
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#TagKeyList", name: "TagKeyList")
    TagMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.glacier#TagMap", name: "TagMap")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.glacier#TagValue", name: "TagValue")
    Type = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.glacier#Type", name: "Type")
    UploadArchiveInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#UploadArchiveInput", name: "UploadArchiveInput")
    UploadArchiveOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#UploadArchiveOutput", name: "UploadArchiveOutput")
    UploadListElement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#UploadListElement", name: "UploadListElement")
    UploadMultipartPartInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#UploadMultipartPartInput", name: "UploadMultipartPartInput")
    UploadMultipartPartOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#UploadMultipartPartOutput", name: "UploadMultipartPartOutput")
    UploadsList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#UploadsList", name: "UploadsList")
    VaultAccessPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#VaultAccessPolicy", name: "VaultAccessPolicy")
    VaultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.glacier#VaultList", name: "VaultList")
    VaultLockPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#VaultLockPolicy", name: "VaultLockPolicy")
    VaultNotificationConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.glacier#VaultNotificationConfig", name: "VaultNotificationConfig")
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.glacier#boolean", name: "Boolean", traits: {"smithy.api#default" => false})
    Hashmap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.glacier#hashmap", name: "Hashmap")
    Httpstatus = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.glacier#httpstatus", name: "Httpstatus", traits: {"smithy.api#default" => 0})
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.glacier#long", name: "Long", traits: {"smithy.api#default" => 0})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.glacier#string", name: "String")

    AbortMultipartUploadInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.type = Types::AbortMultipartUploadInput
    AbortVaultLockInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortVaultLockInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortVaultLockInput.type = Types::AbortVaultLockInput
    AccessControlPolicyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: Grant, name: "member")
    ActionCode.add_member(:archive_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ArchiveRetrieval", traits: {"smithy.api#enumValue" => "ArchiveRetrieval"}))
    ActionCode.add_member(:inventory_retrieval, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InventoryRetrieval", traits: {"smithy.api#enumValue" => "InventoryRetrieval"}))
    ActionCode.add_member(:select, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Select", traits: {"smithy.api#enumValue" => "Select"}))
    AddTagsToVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddTagsToVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddTagsToVaultInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    AddTagsToVaultInput.type = Types::AddTagsToVaultInput
    CSVInput.add_member(:file_header_info, ::Smithy::Schema::Shapes::MemberShape.new(target: FileHeaderInfo, name: "FileHeaderInfo"))
    CSVInput.add_member(:comments, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Comments"))
    CSVInput.add_member(:quote_escape_character, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuoteEscapeCharacter"))
    CSVInput.add_member(:record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecordDelimiter"))
    CSVInput.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FieldDelimiter"))
    CSVInput.add_member(:quote_character, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuoteCharacter"))
    CSVInput.type = Types::CSVInput
    CSVOutput.add_member(:quote_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: QuoteFields, name: "QuoteFields"))
    CSVOutput.add_member(:quote_escape_character, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuoteEscapeCharacter"))
    CSVOutput.add_member(:record_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RecordDelimiter"))
    CSVOutput.add_member(:field_delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "FieldDelimiter"))
    CSVOutput.add_member(:quote_character, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "QuoteCharacter"))
    CSVOutput.type = Types::CSVOutput
    CannedACL.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Private", traits: {"smithy.api#enumValue" => "private"}))
    CannedACL.add_member(:public_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PublicRead", traits: {"smithy.api#enumValue" => "public-read"}))
    CannedACL.add_member(:public_read_write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PublicReadWrite", traits: {"smithy.api#enumValue" => "public-read-write"}))
    CannedACL.add_member(:aws_exec_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AwsExecRead", traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    CannedACL.add_member(:authenticated_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AuthenticatedRead", traits: {"smithy.api#enumValue" => "authenticated-read"}))
    CannedACL.add_member(:bucket_owner_read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketOwnerRead", traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    CannedACL.add_member(:bucket_owner_full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BucketOwnerFullControl", traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    CompleteMultipartUploadInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:archive_size, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveSize", traits: {"smithy.api#httpHeader" => "x-amz-archive-size"}))
    CompleteMultipartUploadInput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    CompleteMultipartUploadInput.type = Types::CompleteMultipartUploadInput
    CompleteMultipartUploadOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location", traits: {"smithy.api#httpHeader" => "Location"}))
    CompleteMultipartUploadOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    CompleteMultipartUploadOutput.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveId", traits: {"smithy.api#httpHeader" => "x-amz-archive-id"}))
    CompleteMultipartUploadOutput.type = Types::CompleteMultipartUploadOutput
    CompleteVaultLockInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.add_member(:lock_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lockId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.type = Types::CompleteVaultLockInput
    CreateVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVaultInput.type = Types::CreateVaultInput
    CreateVaultOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location", traits: {"smithy.api#httpHeader" => "Location"}))
    CreateVaultOutput.type = Types::CreateVaultOutput
    DataRetrievalPolicy.add_member(:rules, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetrievalRulesList, name: "Rules"))
    DataRetrievalPolicy.type = Types::DataRetrievalPolicy
    DataRetrievalRule.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Strategy"))
    DataRetrievalRule.add_member(:bytes_per_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: NullableLong, name: "BytesPerHour"))
    DataRetrievalRule.type = Types::DataRetrievalRule
    DataRetrievalRulesList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetrievalRule, name: "member")
    DeleteArchiveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.type = Types::DeleteArchiveInput
    DeleteVaultAccessPolicyInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultAccessPolicyInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultAccessPolicyInput.type = Types::DeleteVaultAccessPolicyInput
    DeleteVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultInput.type = Types::DeleteVaultInput
    DeleteVaultNotificationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultNotificationsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultNotificationsInput.type = Types::DeleteVaultNotificationsInput
    DescribeJobInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.type = Types::DescribeJobInput
    DescribeJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobId"))
    DescribeJobOutput.add_member(:job_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobDescription"))
    DescribeJobOutput.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCode, name: "Action"))
    DescribeJobOutput.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveId"))
    DescribeJobOutput.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    DescribeJobOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    DescribeJobOutput.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Completed", traits: {"smithy.api#default" => false}))
    DescribeJobOutput.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode"))
    DescribeJobOutput.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    DescribeJobOutput.add_member(:archive_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "ArchiveSizeInBytes"))
    DescribeJobOutput.add_member(:inventory_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "InventorySizeInBytes"))
    DescribeJobOutput.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SNSTopic"))
    DescribeJobOutput.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CompletionDate"))
    DescribeJobOutput.add_member(:sha256_tree_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SHA256TreeHash"))
    DescribeJobOutput.add_member(:archive_sha256_tree_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveSHA256TreeHash"))
    DescribeJobOutput.add_member(:retrieval_byte_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RetrievalByteRange"))
    DescribeJobOutput.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier"))
    DescribeJobOutput.add_member(:inventory_retrieval_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryRetrievalJobDescription, name: "InventoryRetrievalParameters"))
    DescribeJobOutput.add_member(:job_output_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobOutputPath"))
    DescribeJobOutput.add_member(:select_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectParameters, name: "SelectParameters"))
    DescribeJobOutput.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLocation, name: "OutputLocation"))
    DescribeJobOutput.type = Types::DescribeJobOutput
    DescribeVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVaultInput.type = Types::DescribeVaultInput
    DescribeVaultOperationOutput.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    DescribeVaultOperationOutput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultName"))
    DescribeVaultOperationOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    DescribeVaultOperationOutput.add_member(:last_inventory_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastInventoryDate"))
    DescribeVaultOperationOutput.add_member(:number_of_archives, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfArchives", traits: {"smithy.api#default" => 0}))
    DescribeVaultOperationOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SizeInBytes", traits: {"smithy.api#default" => 0}))
    DescribeVaultOperationOutput.type = Types::DescribeVaultOperationOutput
    DescribeVaultOutput.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    DescribeVaultOutput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultName"))
    DescribeVaultOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    DescribeVaultOutput.add_member(:last_inventory_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "LastInventoryDate"))
    DescribeVaultOutput.add_member(:number_of_archives, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "NumberOfArchives", traits: {"smithy.api#default" => 0}))
    DescribeVaultOutput.add_member(:size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "SizeInBytes", traits: {"smithy.api#default" => 0}))
    DescribeVaultOutput.type = Types::DescribeVaultOutput
    Encryption.add_member(:encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionType, name: "EncryptionType"))
    Encryption.add_member(:kms_key_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSKeyId"))
    Encryption.add_member(:kms_context, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "KMSContext"))
    Encryption.type = Types::Encryption
    EncryptionType.add_member(:kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS", traits: {"smithy.api#enumValue" => "aws:kms"}))
    EncryptionType.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "S3", traits: {"smithy.api#enumValue" => "AES256"}))
    ExpressionType.add_member(:sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SQL", traits: {"smithy.api#enumValue" => "SQL"}))
    FileHeaderInfo.add_member(:use, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Use", traits: {"smithy.api#enumValue" => "USE"}))
    FileHeaderInfo.add_member(:ignore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Ignore", traits: {"smithy.api#enumValue" => "IGNORE"}))
    FileHeaderInfo.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "None", traits: {"smithy.api#enumValue" => "NONE"}))
    GetDataRetrievalPolicyInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataRetrievalPolicyInput.type = Types::GetDataRetrievalPolicyInput
    GetDataRetrievalPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetrievalPolicy, name: "Policy"))
    GetDataRetrievalPolicyOutput.type = Types::GetDataRetrievalPolicyOutput
    GetJobOutputInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "range", traits: {"smithy.api#httpHeader" => "Range"}))
    GetJobOutputInput.type = Types::GetJobOutputInput
    GetJobOutputOutput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    GetJobOutputOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    GetJobOutputOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: Httpstatus, name: "status", traits: {"smithy.api#default" => 0, "smithy.api#httpResponseCode" => {}}))
    GetJobOutputOutput.add_member(:content_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentRange", traits: {"smithy.api#httpHeader" => "Content-Range"}))
    GetJobOutputOutput.add_member(:accept_ranges, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "acceptRanges", traits: {"smithy.api#httpHeader" => "Accept-Ranges"}))
    GetJobOutputOutput.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "contentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    GetJobOutputOutput.add_member(:archive_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveDescription", traits: {"smithy.api#httpHeader" => "x-amz-archive-description"}))
    GetJobOutputOutput[:http_payload] = :body
    GetJobOutputOutput[:http_payload_member] = GetJobOutputOutput.member(:body)
    GetJobOutputOutput.type = Types::GetJobOutputOutput
    GetVaultAccessPolicyInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultAccessPolicyInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultAccessPolicyInput.type = Types::GetVaultAccessPolicyInput
    GetVaultAccessPolicyOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultAccessPolicy, name: "policy", traits: {"smithy.api#httpPayload" => {}}))
    GetVaultAccessPolicyOutput[:http_payload] = :policy
    GetVaultAccessPolicyOutput[:http_payload_member] = GetVaultAccessPolicyOutput.member(:policy)
    GetVaultAccessPolicyOutput.type = Types::GetVaultAccessPolicyOutput
    GetVaultLockInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultLockInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultLockInput.type = Types::GetVaultLockInput
    GetVaultLockOutput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    GetVaultLockOutput.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "State"))
    GetVaultLockOutput.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpirationDate"))
    GetVaultLockOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    GetVaultLockOutput.type = Types::GetVaultLockOutput
    GetVaultNotificationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultNotificationsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultNotificationsInput.type = Types::GetVaultNotificationsInput
    GetVaultNotificationsOutput.add_member(:vault_notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultNotificationConfig, name: "vaultNotificationConfig", traits: {"smithy.api#httpPayload" => {}}))
    GetVaultNotificationsOutput[:http_payload] = :vault_notification_config
    GetVaultNotificationsOutput[:http_payload_member] = GetVaultNotificationsOutput.member(:vault_notification_config)
    GetVaultNotificationsOutput.type = Types::GetVaultNotificationsOutput
    GlacierJobDescription.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobId"))
    GlacierJobDescription.add_member(:job_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobDescription"))
    GlacierJobDescription.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ActionCode, name: "Action"))
    GlacierJobDescription.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveId"))
    GlacierJobDescription.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    GlacierJobDescription.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    GlacierJobDescription.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "Completed", traits: {"smithy.api#default" => false}))
    GlacierJobDescription.add_member(:status_code, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusCode, name: "StatusCode"))
    GlacierJobDescription.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StatusMessage"))
    GlacierJobDescription.add_member(:archive_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "ArchiveSizeInBytes"))
    GlacierJobDescription.add_member(:inventory_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Size, name: "InventorySizeInBytes"))
    GlacierJobDescription.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SNSTopic"))
    GlacierJobDescription.add_member(:completion_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CompletionDate"))
    GlacierJobDescription.add_member(:sha256_tree_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SHA256TreeHash"))
    GlacierJobDescription.add_member(:archive_sha256_tree_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveSHA256TreeHash"))
    GlacierJobDescription.add_member(:retrieval_byte_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RetrievalByteRange"))
    GlacierJobDescription.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier"))
    GlacierJobDescription.add_member(:inventory_retrieval_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryRetrievalJobDescription, name: "InventoryRetrievalParameters"))
    GlacierJobDescription.add_member(:job_output_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "JobOutputPath"))
    GlacierJobDescription.add_member(:select_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectParameters, name: "SelectParameters"))
    GlacierJobDescription.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLocation, name: "OutputLocation"))
    GlacierJobDescription.type = Types::GlacierJobDescription
    Grant.add_member(:grantee, ::Smithy::Schema::Shapes::MemberShape.new(target: Grantee, name: "Grantee"))
    Grant.add_member(:permission, ::Smithy::Schema::Shapes::MemberShape.new(target: Permission, name: "Permission"))
    Grant.type = Types::Grant
    Grantee.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: Type, name: "Type", traits: {"smithy.api#required" => {}}))
    Grantee.add_member(:display_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "DisplayName"))
    Grantee.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "URI"))
    Grantee.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ID"))
    Grantee.add_member(:email_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EmailAddress"))
    Grantee.type = Types::Grantee
    InitiateJobInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateJobInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateJobInput.add_member(:job_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: JobParameters, name: "jobParameters", traits: {"smithy.api#httpPayload" => {}}))
    InitiateJobInput[:http_payload] = :job_parameters
    InitiateJobInput[:http_payload_member] = InitiateJobInput.member(:job_parameters)
    InitiateJobInput.type = Types::InitiateJobInput
    InitiateJobOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location", traits: {"smithy.api#httpHeader" => "Location"}))
    InitiateJobOutput.add_member(:job_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobId", traits: {"smithy.api#httpHeader" => "x-amz-job-id"}))
    InitiateJobOutput.add_member(:job_output_path, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "jobOutputPath", traits: {"smithy.api#httpHeader" => "x-amz-job-output-path"}))
    InitiateJobOutput.type = Types::InitiateJobOutput
    InitiateMultipartUploadInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateMultipartUploadInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateMultipartUploadInput.add_member(:archive_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveDescription", traits: {"smithy.api#httpHeader" => "x-amz-archive-description"}))
    InitiateMultipartUploadInput.add_member(:part_size, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "partSize", traits: {"smithy.api#httpHeader" => "x-amz-part-size"}))
    InitiateMultipartUploadInput.type = Types::InitiateMultipartUploadInput
    InitiateMultipartUploadOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location", traits: {"smithy.api#httpHeader" => "Location"}))
    InitiateMultipartUploadOutput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uploadId", traits: {"smithy.api#httpHeader" => "x-amz-multipart-upload-id"}))
    InitiateMultipartUploadOutput.type = Types::InitiateMultipartUploadOutput
    InitiateVaultLockInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateVaultLockInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateVaultLockInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultLockPolicy, name: "policy", traits: {"smithy.api#httpPayload" => {}}))
    InitiateVaultLockInput[:http_payload] = :policy
    InitiateVaultLockInput[:http_payload_member] = InitiateVaultLockInput.member(:policy)
    InitiateVaultLockInput.type = Types::InitiateVaultLockInput
    InitiateVaultLockOutput.add_member(:lock_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lockId", traits: {"smithy.api#httpHeader" => "x-amz-lock-id"}))
    InitiateVaultLockOutput.type = Types::InitiateVaultLockOutput
    InputSerialization.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CSVInput, name: "csv"))
    InputSerialization.type = Types::InputSerialization
    InsufficientCapacityException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    InsufficientCapacityException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    InsufficientCapacityException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InvalidParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    InvalidParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    InvalidParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InventoryRetrievalJobDescription.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Format"))
    InventoryRetrievalJobDescription.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "StartDate"))
    InventoryRetrievalJobDescription.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: DateTime, name: "EndDate"))
    InventoryRetrievalJobDescription.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Limit"))
    InventoryRetrievalJobDescription.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    InventoryRetrievalJobDescription.type = Types::InventoryRetrievalJobDescription
    InventoryRetrievalJobInput.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartDate"))
    InventoryRetrievalJobInput.add_member(:end_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "EndDate"))
    InventoryRetrievalJobInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Limit"))
    InventoryRetrievalJobInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    InventoryRetrievalJobInput.type = Types::InventoryRetrievalJobInput
    JobList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: GlacierJobDescription, name: "member")
    JobParameters.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Format"))
    JobParameters.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Type"))
    JobParameters.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveId"))
    JobParameters.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Description"))
    JobParameters.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SNSTopic"))
    JobParameters.add_member(:retrieval_byte_range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RetrievalByteRange"))
    JobParameters.add_member(:tier, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Tier"))
    JobParameters.add_member(:inventory_retrieval_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: InventoryRetrievalJobInput, name: "InventoryRetrievalParameters"))
    JobParameters.add_member(:select_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: SelectParameters, name: "SelectParameters"))
    JobParameters.add_member(:output_location, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputLocation, name: "OutputLocation"))
    JobParameters.type = Types::JobParameters
    LimitExceededException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListJobsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListJobsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker", traits: {"smithy.api#httpQuery" => "marker"}))
    ListJobsInput.add_member(:statuscode, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "statuscode", traits: {"smithy.api#httpQuery" => "statuscode"}))
    ListJobsInput.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "completed", traits: {"smithy.api#httpQuery" => "completed"}))
    ListJobsInput.type = Types::ListJobsInput
    ListJobsOutput.add_member(:job_list, ::Smithy::Schema::Shapes::MemberShape.new(target: JobList, name: "JobList"))
    ListJobsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListJobsOutput.type = Types::ListJobsOutput
    ListMultipartUploadsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartUploadsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartUploadsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListMultipartUploadsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker", traits: {"smithy.api#httpQuery" => "marker"}))
    ListMultipartUploadsInput.type = Types::ListMultipartUploadsInput
    ListMultipartUploadsOutput.add_member(:uploads_list, ::Smithy::Schema::Shapes::MemberShape.new(target: UploadsList, name: "UploadsList"))
    ListMultipartUploadsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListMultipartUploadsOutput.type = Types::ListMultipartUploadsOutput
    ListPartsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker", traits: {"smithy.api#httpQuery" => "marker"}))
    ListPartsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListPartsInput.type = Types::ListPartsInput
    ListPartsOutput.add_member(:multipart_upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MultipartUploadId"))
    ListPartsOutput.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    ListPartsOutput.add_member(:archive_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveDescription"))
    ListPartsOutput.add_member(:part_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "PartSizeInBytes", traits: {"smithy.api#default" => 0}))
    ListPartsOutput.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    ListPartsOutput.add_member(:parts, ::Smithy::Schema::Shapes::MemberShape.new(target: PartList, name: "Parts"))
    ListPartsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListPartsOutput.type = Types::ListPartsOutput
    ListProvisionedCapacityInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProvisionedCapacityInput.type = Types::ListProvisionedCapacityInput
    ListProvisionedCapacityOutput.add_member(:provisioned_capacity_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedCapacityList, name: "ProvisionedCapacityList"))
    ListProvisionedCapacityOutput.type = Types::ListProvisionedCapacityOutput
    ListTagsForVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForVaultInput.type = Types::ListTagsForVaultInput
    ListTagsForVaultOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagMap, name: "Tags"))
    ListTagsForVaultOutput.type = Types::ListTagsForVaultOutput
    ListVaultsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVaultsInput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "marker", traits: {"smithy.api#httpQuery" => "marker"}))
    ListVaultsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Integer, name: "limit", traits: {"smithy.api#httpQuery" => "limit"}))
    ListVaultsInput.type = Types::ListVaultsInput
    ListVaultsOutput.add_member(:vault_list, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultList, name: "VaultList"))
    ListVaultsOutput.add_member(:marker, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Marker"))
    ListVaultsOutput.type = Types::ListVaultsOutput
    MissingParameterValueException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    MissingParameterValueException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    MissingParameterValueException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    MissingParameterValueException.type = Types::MissingParameterValueException
    NotificationEventList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    OutputLocation.add_member(:s3, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Location, name: "S3"))
    OutputLocation.type = Types::OutputLocation
    OutputSerialization.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: CSVOutput, name: "csv"))
    OutputSerialization.type = Types::OutputSerialization
    PartList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: PartListElement, name: "member")
    PartListElement.add_member(:range_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "RangeInBytes"))
    PartListElement.add_member(:sha256_tree_hash, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SHA256TreeHash"))
    PartListElement.type = Types::PartListElement
    Permission.add_member(:full_control, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FULL_CONTROL", traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    Permission.add_member(:write, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE", traits: {"smithy.api#enumValue" => "WRITE"}))
    Permission.add_member(:write_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "WRITE_ACP", traits: {"smithy.api#enumValue" => "WRITE_ACP"}))
    Permission.add_member(:read, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ", traits: {"smithy.api#enumValue" => "READ"}))
    Permission.add_member(:read_acp, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READ_ACP", traits: {"smithy.api#enumValue" => "READ_ACP"}))
    PolicyEnforcedException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    PolicyEnforcedException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    PolicyEnforcedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    PolicyEnforcedException.type = Types::PolicyEnforcedException
    ProvisionedCapacityDescription.add_member(:capacity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CapacityId"))
    ProvisionedCapacityDescription.add_member(:start_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "StartDate"))
    ProvisionedCapacityDescription.add_member(:expiration_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ExpirationDate"))
    ProvisionedCapacityDescription.type = Types::ProvisionedCapacityDescription
    ProvisionedCapacityList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ProvisionedCapacityDescription, name: "member")
    PurchaseProvisionedCapacityInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PurchaseProvisionedCapacityInput.type = Types::PurchaseProvisionedCapacityInput
    PurchaseProvisionedCapacityOutput.add_member(:capacity_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "capacityId", traits: {"smithy.api#httpHeader" => "x-amz-capacity-id"}))
    PurchaseProvisionedCapacityOutput.type = Types::PurchaseProvisionedCapacityOutput
    QuoteFields.add_member(:always, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Always", traits: {"smithy.api#enumValue" => "ALWAYS"}))
    QuoteFields.add_member(:as_needed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AsNeeded", traits: {"smithy.api#enumValue" => "ASNEEDED"}))
    RemoveTagsFromVaultInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromVaultInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromVaultInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys"))
    RemoveTagsFromVaultInput.type = Types::RemoveTagsFromVaultInput
    RequestTimeoutException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    RequestTimeoutException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    RequestTimeoutException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:bucket_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "BucketName"))
    S3Location.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Prefix"))
    S3Location.add_member(:encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: Encryption, name: "Encryption"))
    S3Location.add_member(:canned_acl, ::Smithy::Schema::Shapes::MemberShape.new(target: CannedACL, name: "CannedACL"))
    S3Location.add_member(:access_control_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessControlPolicyList, name: "AccessControlList"))
    S3Location.add_member(:tagging, ::Smithy::Schema::Shapes::MemberShape.new(target: Hashmap, name: "Tagging"))
    S3Location.add_member(:user_metadata, ::Smithy::Schema::Shapes::MemberShape.new(target: Hashmap, name: "UserMetadata"))
    S3Location.add_member(:storage_class, ::Smithy::Schema::Shapes::MemberShape.new(target: StorageClass, name: "StorageClass"))
    S3Location.type = Types::S3Location
    SelectParameters.add_member(:input_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: InputSerialization, name: "InputSerialization"))
    SelectParameters.add_member(:expression_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionType, name: "ExpressionType"))
    SelectParameters.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Expression"))
    SelectParameters.add_member(:output_serialization, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputSerialization, name: "OutputSerialization"))
    SelectParameters.type = Types::SelectParameters
    ServiceUnavailableException.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "type"))
    ServiceUnavailableException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "code"))
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetDataRetrievalPolicyInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetDataRetrievalPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: DataRetrievalPolicy, name: "Policy"))
    SetDataRetrievalPolicyInput.type = Types::SetDataRetrievalPolicyInput
    SetVaultAccessPolicyInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultAccessPolicyInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultAccessPolicyInput.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultAccessPolicy, name: "policy", traits: {"smithy.api#httpPayload" => {}}))
    SetVaultAccessPolicyInput[:http_payload] = :policy
    SetVaultAccessPolicyInput[:http_payload_member] = SetVaultAccessPolicyInput.member(:policy)
    SetVaultAccessPolicyInput.type = Types::SetVaultAccessPolicyInput
    SetVaultNotificationsInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultNotificationsInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultNotificationsInput.add_member(:vault_notification_config, ::Smithy::Schema::Shapes::MemberShape.new(target: VaultNotificationConfig, name: "vaultNotificationConfig", traits: {"smithy.api#httpPayload" => {}}))
    SetVaultNotificationsInput[:http_payload] = :vault_notification_config
    SetVaultNotificationsInput[:http_payload_member] = SetVaultNotificationsInput.member(:vault_notification_config)
    SetVaultNotificationsInput.type = Types::SetVaultNotificationsInput
    StatusCode.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "InProgress", traits: {"smithy.api#enumValue" => "InProgress"}))
    StatusCode.add_member(:succeeded, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Succeeded", traits: {"smithy.api#enumValue" => "Succeeded"}))
    StatusCode.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Failed", traits: {"smithy.api#enumValue" => "Failed"}))
    StorageClass.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Standard", traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:reduced_redundancy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ReducedRedundancy", traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    StorageClass.add_member(:standard_infrequent_access, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "StandardInfrequentAccess", traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    TagKeyList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member")
    TagMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key")
    TagMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value")
    Type.add_member(:amazon_customer_by_email, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AmazonCustomerByEmail", traits: {"smithy.api#enumValue" => "AmazonCustomerByEmail"}))
    Type.add_member(:canonical_user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CanonicalUser", traits: {"smithy.api#enumValue" => "CanonicalUser"}))
    Type.add_member(:group, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Group", traits: {"smithy.api#enumValue" => "Group"}))
    UploadArchiveInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadArchiveInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadArchiveInput.add_member(:archive_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveDescription", traits: {"smithy.api#httpHeader" => "x-amz-archive-description"}))
    UploadArchiveInput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadArchiveInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    UploadArchiveInput[:http_payload] = :body
    UploadArchiveInput[:http_payload_member] = UploadArchiveInput.member(:body)
    UploadArchiveInput.type = Types::UploadArchiveInput
    UploadArchiveOutput.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "location", traits: {"smithy.api#httpHeader" => "Location"}))
    UploadArchiveOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadArchiveOutput.add_member(:archive_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "archiveId", traits: {"smithy.api#httpHeader" => "x-amz-archive-id"}))
    UploadArchiveOutput.type = Types::UploadArchiveOutput
    UploadListElement.add_member(:multipart_upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "MultipartUploadId"))
    UploadListElement.add_member(:vault_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "VaultARN"))
    UploadListElement.add_member(:archive_description, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ArchiveDescription"))
    UploadListElement.add_member(:part_size_in_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, name: "PartSizeInBytes", traits: {"smithy.api#default" => 0}))
    UploadListElement.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "CreationDate"))
    UploadListElement.type = Types::UploadListElement
    UploadMultipartPartInput.add_member(:account_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "accountId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:vault_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vaultName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:upload_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "uploadId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadMultipartPartInput.add_member(:range, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "range", traits: {"smithy.api#httpHeader" => "Content-Range"}))
    UploadMultipartPartInput.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: Stream, name: "body", traits: {"smithy.api#default" => "", "smithy.api#httpPayload" => {}}))
    UploadMultipartPartInput[:http_payload] = :body
    UploadMultipartPartInput[:http_payload_member] = UploadMultipartPartInput.member(:body)
    UploadMultipartPartInput.type = Types::UploadMultipartPartInput
    UploadMultipartPartOutput.add_member(:checksum, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "checksum", traits: {"smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadMultipartPartOutput.type = Types::UploadMultipartPartOutput
    UploadsList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: UploadListElement, name: "member")
    VaultAccessPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    VaultAccessPolicy.type = Types::VaultAccessPolicy
    VaultList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeVaultOutput, name: "member")
    VaultLockPolicy.add_member(:policy, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "Policy"))
    VaultLockPolicy.type = Types::VaultLockPolicy
    VaultNotificationConfig.add_member(:sns_topic, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "SNSTopic"))
    VaultNotificationConfig.add_member(:events, ::Smithy::Schema::Shapes::MemberShape.new(target: NotificationEventList, name: "Events"))
    VaultNotificationConfig.type = Types::VaultNotificationConfig
    Hashmap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "key")
    Hashmap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value")

    Glacier = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.glacier#Glacier"
      service.name = "Glacier"
      service.version = "2012-06-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Glacier", "arnNamespace" => "glacier", "cloudFormationName" => "Glacier", "cloudTrailEventSource" => "glacier.amazonaws.com", "endpointPrefix" => "glacier"}, "aws.auth#sigv4" => {"name" => "glacier"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Glacier", "smithy.api#xmlNamespace" => {"uri" => "http://glacier.amazonaws.com/doc/2012-06-01/"}}
      service.add_operation(:abort_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AbortMultipartUpload"
        operation.name = "AbortMultipartUpload"
        operation.input = AbortMultipartUploadInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 204}}
      end)
      service.add_operation(:abort_vault_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AbortVaultLock"
        operation.name = "AbortVaultLock"
        operation.input = AbortVaultLockInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 204}}
      end)
      service.add_operation(:add_tags_to_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AddTagsToVault"
        operation.name = "AddTagsToVault"
        operation.input = AddTagsToVaultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/tags?operation=add", "code" => 204}}
      end)
      service.add_operation(:complete_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CompleteMultipartUpload"
        operation.name = "CompleteMultipartUpload"
        operation.input = CompleteMultipartUploadInput
        operation.output = CompleteMultipartUploadOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 201}}
      end)
      service.add_operation(:complete_vault_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CompleteVaultLock"
        operation.name = "CompleteVaultLock"
        operation.input = CompleteVaultLockInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}", "code" => 204}}
      end)
      service.add_operation(:create_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CreateVault"
        operation.name = "CreateVault"
        operation.input = CreateVaultInput
        operation.output = CreateVaultOutput
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 201}}
      end)
      service.add_operation(:delete_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = DeleteArchiveInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/archives/{archiveId}", "code" => 204}}
      end)
      service.add_operation(:delete_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVault"
        operation.name = "DeleteVault"
        operation.input = DeleteVaultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 204}}
      end)
      service.add_operation(:delete_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVaultAccessPolicy"
        operation.name = "DeleteVaultAccessPolicy"
        operation.input = DeleteVaultAccessPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 204}}
      end)
      service.add_operation(:delete_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVaultNotifications"
        operation.name = "DeleteVaultNotifications"
        operation.input = DeleteVaultNotificationsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 204}}
      end)
      service.add_operation(:describe_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = DescribeJobInput
        operation.output = DescribeJobOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DescribeVault"
        operation.name = "DescribeVault"
        operation.input = DescribeVaultInput
        operation.output = DescribeVaultOperationOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 200}}
      end)
      service.add_operation(:get_data_retrieval_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetDataRetrievalPolicy"
        operation.name = "GetDataRetrievalPolicy"
        operation.input = GetDataRetrievalPolicyInput
        operation.output = GetDataRetrievalPolicyOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/policies/data-retrieval", "code" => 200}}
      end)
      service.add_operation(:get_job_output, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetJobOutput"
        operation.name = "GetJobOutput"
        operation.input = GetJobOutputInput
        operation.output = GetJobOutputOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output", "code" => 200}}
      end)
      service.add_operation(:get_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultAccessPolicy"
        operation.name = "GetVaultAccessPolicy"
        operation.input = GetVaultAccessPolicyInput
        operation.output = GetVaultAccessPolicyOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 200}}
      end)
      service.add_operation(:get_vault_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultLock"
        operation.name = "GetVaultLock"
        operation.input = GetVaultLockInput
        operation.output = GetVaultLockOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 200}}
      end)
      service.add_operation(:get_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultNotifications"
        operation.name = "GetVaultNotifications"
        operation.input = GetVaultNotificationsInput
        operation.output = GetVaultNotificationsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 200}}
      end)
      service.add_operation(:initiate_job, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateJob"
        operation.name = "InitiateJob"
        operation.input = InitiateJobInput
        operation.output = InitiateJobOutput
        operation.errors << InsufficientCapacityException
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << PolicyEnforcedException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/jobs", "code" => 202}}
      end)
      service.add_operation(:initiate_multipart_upload, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateMultipartUpload"
        operation.name = "InitiateMultipartUpload"
        operation.input = InitiateMultipartUploadInput
        operation.output = InitiateMultipartUploadOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads", "code" => 201}}
      end)
      service.add_operation(:initiate_vault_lock, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateVaultLock"
        operation.name = "InitiateVaultLock"
        operation.input = InitiateVaultLockInput
        operation.output = InitiateVaultLockOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 201}}
      end)
      service.add_operation(:list_jobs, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListJobs"
        operation.name = "ListJobs"
        operation.input = ListJobsInput
        operation.output = ListJobsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_multipart_uploads, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListMultipartUploads"
        operation.name = "ListMultipartUploads"
        operation.input = ListMultipartUploadsInput
        operation.output = ListMultipartUploadsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads", "code" => 200}}
        operation[:paginator] = Paginators::ListMultipartUploads.new
      end)
      service.add_operation(:list_parts, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListParts"
        operation.name = "ListParts"
        operation.input = ListPartsInput
        operation.output = ListPartsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 200}}
        operation[:paginator] = Paginators::ListParts.new
      end)
      service.add_operation(:list_provisioned_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListProvisionedCapacity"
        operation.name = "ListProvisionedCapacity"
        operation.input = ListProvisionedCapacityInput
        operation.output = ListProvisionedCapacityOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/provisioned-capacity", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListTagsForVault"
        operation.name = "ListTagsForVault"
        operation.input = ListTagsForVaultInput
        operation.output = ListTagsForVaultOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/tags", "code" => 200}}
      end)
      service.add_operation(:list_vaults, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListVaults"
        operation.name = "ListVaults"
        operation.input = ListVaultsInput
        operation.output = ListVaultsOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults", "code" => 200}}
        operation[:paginator] = Paginators::ListVaults.new
      end)
      service.add_operation(:purchase_provisioned_capacity, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#PurchaseProvisionedCapacity"
        operation.name = "PurchaseProvisionedCapacity"
        operation.input = PurchaseProvisionedCapacityInput
        operation.output = PurchaseProvisionedCapacityOutput
        operation.errors << InvalidParameterValueException
        operation.errors << LimitExceededException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/provisioned-capacity", "code" => 201}}
      end)
      service.add_operation(:remove_tags_from_vault, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#RemoveTagsFromVault"
        operation.name = "RemoveTagsFromVault"
        operation.input = RemoveTagsFromVaultInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/tags?operation=remove", "code" => 204}}
      end)
      service.add_operation(:set_data_retrieval_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetDataRetrievalPolicy"
        operation.name = "SetDataRetrievalPolicy"
        operation.input = SetDataRetrievalPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/policies/data-retrieval", "code" => 204}}
      end)
      service.add_operation(:set_vault_access_policy, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetVaultAccessPolicy"
        operation.name = "SetVaultAccessPolicy"
        operation.input = SetVaultAccessPolicyInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 204}}
      end)
      service.add_operation(:set_vault_notifications, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetVaultNotifications"
        operation.name = "SetVaultNotifications"
        operation.input = SetVaultNotificationsInput
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 204}}
      end)
      service.add_operation(:upload_archive, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#UploadArchive"
        operation.name = "UploadArchive"
        operation.input = UploadArchiveInput
        operation.output = UploadArchiveOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/archives", "code" => 201}}
      end)
      service.add_operation(:upload_multipart_part, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#UploadMultipartPart"
        operation.name = "UploadMultipartPart"
        operation.input = UploadMultipartPartInput
        operation.output = UploadMultipartPartOutput
        operation.errors << InvalidParameterValueException
        operation.errors << MissingParameterValueException
        operation.errors << RequestTimeoutException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 204}}
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
