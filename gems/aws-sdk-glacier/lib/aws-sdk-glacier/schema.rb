# frozen_string_literal: true

# This is generated code!

module Aws::Glacier
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AbortMultipartUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#AbortMultipartUploadInput', name: 'AbortMultipartUploadInput')
    AbortVaultLockInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#AbortVaultLockInput', name: 'AbortVaultLockInput')
    AccessControlPolicyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#AccessControlPolicyList', name: 'AccessControlPolicyList')
    ActionCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#ActionCode', name: 'ActionCode')
    AddTagsToVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#AddTagsToVaultInput', name: 'AddTagsToVaultInput')
    CSVInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CSVInput', name: 'CSVInput')
    CSVOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CSVOutput', name: 'CSVOutput')
    CannedACL = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#CannedACL', name: 'CannedACL')
    CompleteMultipartUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CompleteMultipartUploadInput', name: 'CompleteMultipartUploadInput')
    CompleteMultipartUploadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CompleteMultipartUploadOutput', name: 'CompleteMultipartUploadOutput')
    CompleteVaultLockInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CompleteVaultLockInput', name: 'CompleteVaultLockInput')
    CreateVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CreateVaultInput', name: 'CreateVaultInput')
    CreateVaultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#CreateVaultOutput', name: 'CreateVaultOutput')
    DataRetrievalPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DataRetrievalPolicy', name: 'DataRetrievalPolicy')
    DataRetrievalRule = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DataRetrievalRule', name: 'DataRetrievalRule')
    DataRetrievalRulesList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#DataRetrievalRulesList', name: 'DataRetrievalRulesList')
    DateTime = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.glacier#DateTime', name: 'DateTime')
    DeleteArchiveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DeleteArchiveInput', name: 'DeleteArchiveInput')
    DeleteVaultAccessPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DeleteVaultAccessPolicyInput', name: 'DeleteVaultAccessPolicyInput')
    DeleteVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DeleteVaultInput', name: 'DeleteVaultInput')
    DeleteVaultNotificationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DeleteVaultNotificationsInput', name: 'DeleteVaultNotificationsInput')
    DescribeJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DescribeJobInput', name: 'DescribeJobInput')
    DescribeJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DescribeJobOutput', name: 'DescribeJobOutput')
    DescribeVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DescribeVaultInput', name: 'DescribeVaultInput')
    DescribeVaultOperationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DescribeVaultOperationOutput', name: 'DescribeVaultOperationOutput')
    DescribeVaultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#DescribeVaultOutput', name: 'DescribeVaultOutput')
    Encryption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#Encryption', name: 'Encryption')
    EncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#EncryptionType', name: 'EncryptionType')
    ExpressionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#ExpressionType', name: 'ExpressionType')
    FileHeaderInfo = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#FileHeaderInfo', name: 'FileHeaderInfo')
    GetDataRetrievalPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetDataRetrievalPolicyInput', name: 'GetDataRetrievalPolicyInput')
    GetDataRetrievalPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetDataRetrievalPolicyOutput', name: 'GetDataRetrievalPolicyOutput')
    GetJobOutputInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetJobOutputInput', name: 'GetJobOutputInput')
    GetJobOutputOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetJobOutputOutput', name: 'GetJobOutputOutput')
    GetVaultAccessPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultAccessPolicyInput', name: 'GetVaultAccessPolicyInput')
    GetVaultAccessPolicyOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultAccessPolicyOutput', name: 'GetVaultAccessPolicyOutput')
    GetVaultLockInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultLockInput', name: 'GetVaultLockInput')
    GetVaultLockOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultLockOutput', name: 'GetVaultLockOutput')
    GetVaultNotificationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultNotificationsInput', name: 'GetVaultNotificationsInput')
    GetVaultNotificationsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GetVaultNotificationsOutput', name: 'GetVaultNotificationsOutput')
    GlacierJobDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#GlacierJobDescription', name: 'GlacierJobDescription')
    Grant = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#Grant', name: 'Grant')
    Grantee = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#Grantee', name: 'Grantee')
    InitiateJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateJobInput', name: 'InitiateJobInput')
    InitiateJobOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateJobOutput', name: 'InitiateJobOutput')
    InitiateMultipartUploadInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateMultipartUploadInput', name: 'InitiateMultipartUploadInput')
    InitiateMultipartUploadOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateMultipartUploadOutput', name: 'InitiateMultipartUploadOutput')
    InitiateVaultLockInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateVaultLockInput', name: 'InitiateVaultLockInput')
    InitiateVaultLockOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InitiateVaultLockOutput', name: 'InitiateVaultLockOutput')
    InputSerialization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InputSerialization', name: 'InputSerialization')
    InsufficientCapacityException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InsufficientCapacityException', name: 'InsufficientCapacityException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InvalidParameterValueException', name: 'InvalidParameterValueException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InventoryRetrievalJobDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InventoryRetrievalJobDescription', name: 'InventoryRetrievalJobDescription')
    InventoryRetrievalJobInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#InventoryRetrievalJobInput', name: 'InventoryRetrievalJobInput')
    JobList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#JobList', name: 'JobList')
    JobParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#JobParameters', name: 'JobParameters')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListJobsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListJobsInput', name: 'ListJobsInput')
    ListJobsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListJobsOutput', name: 'ListJobsOutput')
    ListMultipartUploadsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListMultipartUploadsInput', name: 'ListMultipartUploadsInput')
    ListMultipartUploadsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListMultipartUploadsOutput', name: 'ListMultipartUploadsOutput')
    ListPartsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListPartsInput', name: 'ListPartsInput')
    ListPartsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListPartsOutput', name: 'ListPartsOutput')
    ListProvisionedCapacityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListProvisionedCapacityInput', name: 'ListProvisionedCapacityInput')
    ListProvisionedCapacityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListProvisionedCapacityOutput', name: 'ListProvisionedCapacityOutput')
    ListTagsForVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListTagsForVaultInput', name: 'ListTagsForVaultInput')
    ListTagsForVaultOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListTagsForVaultOutput', name: 'ListTagsForVaultOutput')
    ListVaultsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListVaultsInput', name: 'ListVaultsInput')
    ListVaultsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ListVaultsOutput', name: 'ListVaultsOutput')
    MissingParameterValueException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#MissingParameterValueException', name: 'MissingParameterValueException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    NotificationEventList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#NotificationEventList', name: 'NotificationEventList')
    NullableLong = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.glacier#NullableLong', name: 'NullableLong')
    OutputLocation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#OutputLocation', name: 'OutputLocation')
    OutputSerialization = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#OutputSerialization', name: 'OutputSerialization')
    PartList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#PartList', name: 'PartList')
    PartListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#PartListElement', name: 'PartListElement')
    Permission = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#Permission', name: 'Permission')
    PolicyEnforcedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#PolicyEnforcedException', name: 'PolicyEnforcedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ProvisionedCapacityDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ProvisionedCapacityDescription', name: 'ProvisionedCapacityDescription')
    ProvisionedCapacityList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#ProvisionedCapacityList', name: 'ProvisionedCapacityList')
    PurchaseProvisionedCapacityInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#PurchaseProvisionedCapacityInput', name: 'PurchaseProvisionedCapacityInput')
    PurchaseProvisionedCapacityOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#PurchaseProvisionedCapacityOutput', name: 'PurchaseProvisionedCapacityOutput')
    QuoteFields = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#QuoteFields', name: 'QuoteFields')
    RemoveTagsFromVaultInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#RemoveTagsFromVaultInput', name: 'RemoveTagsFromVaultInput')
    RequestTimeoutException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#RequestTimeoutException', name: 'RequestTimeoutException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 408})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    S3Location = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#S3Location', name: 'S3Location')
    SelectParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#SelectParameters', name: 'SelectParameters')
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SetDataRetrievalPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#SetDataRetrievalPolicyInput', name: 'SetDataRetrievalPolicyInput')
    SetVaultAccessPolicyInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#SetVaultAccessPolicyInput', name: 'SetVaultAccessPolicyInput')
    SetVaultNotificationsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#SetVaultNotificationsInput', name: 'SetVaultNotificationsInput')
    Size = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.glacier#Size', name: 'Size')
    StatusCode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#StatusCode', name: 'StatusCode')
    StorageClass = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#StorageClass', name: 'StorageClass')
    Stream = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.glacier#Stream', name: 'Stream', traits: {"smithy.api#streaming" => {}})
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.glacier#TagKey', name: 'TagKey')
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#TagKeyList', name: 'TagKeyList')
    TagMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.glacier#TagMap', name: 'TagMap')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.glacier#TagValue', name: 'TagValue')
    Type = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.glacier#Type', name: 'Type')
    UploadArchiveInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#UploadArchiveInput', name: 'UploadArchiveInput')
    UploadArchiveOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#UploadArchiveOutput', name: 'UploadArchiveOutput')
    UploadListElement = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#UploadListElement', name: 'UploadListElement')
    UploadMultipartPartInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#UploadMultipartPartInput', name: 'UploadMultipartPartInput')
    UploadMultipartPartOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#UploadMultipartPartOutput', name: 'UploadMultipartPartOutput')
    UploadsList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#UploadsList', name: 'UploadsList')
    VaultAccessPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#VaultAccessPolicy', name: 'VaultAccessPolicy')
    VaultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.glacier#VaultList', name: 'VaultList')
    VaultLockPolicy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#VaultLockPolicy', name: 'VaultLockPolicy')
    VaultNotificationConfig = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.glacier#VaultNotificationConfig', name: 'VaultNotificationConfig')
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.glacier#boolean', name: 'Boolean', traits: {"smithy.api#default" => false})
    Hashmap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.glacier#hashmap', name: 'Hashmap')
    Httpstatus = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.glacier#httpstatus', name: 'Httpstatus', traits: {"smithy.api#default" => 0})
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.glacier#long', name: 'Long', traits: {"smithy.api#default" => 0})
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.glacier#string', name: 'String')

    AbortMultipartUploadInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID of the multipart upload to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortMultipartUploadInput.type = Types::AbortMultipartUploadInput
    AbortVaultLockInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortVaultLockInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AbortVaultLockInput.type = Types::AbortVaultLockInput
    AccessControlPolicyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Grant)
    ActionCode.add_member(:archive_retrieval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ArchiveRetrieval', traits: {"smithy.api#enumValue" => "ArchiveRetrieval"}))
    ActionCode.add_member(:inventory_retrieval, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InventoryRetrieval', traits: {"smithy.api#enumValue" => "InventoryRetrieval"}))
    ActionCode.add_member(:select, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Select', traits: {"smithy.api#enumValue" => "Select"}))
    AddTagsToVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddTagsToVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AddTagsToVaultInput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags to add to the vault. Each tag is composed of a key and a value. The value\n         can be an empty string.</p>"}))
    AddTagsToVaultInput.type = Types::AddTagsToVaultInput
    CSVInput.add_member(:file_header_info, Smithy::Schema::Shapes::ShapeRef.new(shape: FileHeaderInfo, location_name: 'FileHeaderInfo', traits: {"smithy.api#documentation" => "<p>Describes the first line of input. Valid values are <code>None</code>,\n                <code>Ignore</code>, and <code>Use</code>.</p>"}))
    CSVInput.add_member(:comments, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Comments', traits: {"smithy.api#documentation" => "<p>A single character used to indicate that a row should be ignored when the character is\n            present at the start of that row.</p>"}))
    CSVInput.add_member(:quote_escape_character, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuoteEscapeCharacter', traits: {"smithy.api#documentation" => "<p>A single character used for escaping the quotation-mark character inside an already\n            escaped value.</p>"}))
    CSVInput.add_member(:record_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecordDelimiter', traits: {"smithy.api#documentation" => "<p>A value used to separate individual records from each other.</p>"}))
    CSVInput.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FieldDelimiter', traits: {"smithy.api#documentation" => "<p>A value used to separate individual fields from each other within a record.</p>"}))
    CSVInput.add_member(:quote_character, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuoteCharacter', traits: {"smithy.api#documentation" => "<p>A value used as an escape character where the field delimiter is part of the\n            value.</p>"}))
    CSVInput.type = Types::CSVInput
    CSVOutput.add_member(:quote_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: QuoteFields, location_name: 'QuoteFields', traits: {"smithy.api#documentation" => "<p>A value that indicates whether all output fields should be contained within quotation\n            marks.</p>"}))
    CSVOutput.add_member(:quote_escape_character, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuoteEscapeCharacter', traits: {"smithy.api#documentation" => "<p>A single character used for escaping the quotation-mark character inside an already\n            escaped value.</p>"}))
    CSVOutput.add_member(:record_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RecordDelimiter', traits: {"smithy.api#documentation" => "<p>A value used to separate individual records from each other.</p>"}))
    CSVOutput.add_member(:field_delimiter, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'FieldDelimiter', traits: {"smithy.api#documentation" => "<p>A value used to separate individual fields from each other within a record.</p>"}))
    CSVOutput.add_member(:quote_character, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'QuoteCharacter', traits: {"smithy.api#documentation" => "<p>A value used as an escape character where the field delimiter is part of the\n            value.</p>"}))
    CSVOutput.type = Types::CSVOutput
    CannedACL.add_member(:private, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Private', traits: {"smithy.api#enumValue" => "private"}))
    CannedACL.add_member(:public_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PublicRead', traits: {"smithy.api#enumValue" => "public-read"}))
    CannedACL.add_member(:public_read_write, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'PublicReadWrite', traits: {"smithy.api#enumValue" => "public-read-write"}))
    CannedACL.add_member(:aws_exec_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AwsExecRead', traits: {"smithy.api#enumValue" => "aws-exec-read"}))
    CannedACL.add_member(:authenticated_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AuthenticatedRead', traits: {"smithy.api#enumValue" => "authenticated-read"}))
    CannedACL.add_member(:bucket_owner_read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BucketOwnerRead', traits: {"smithy.api#enumValue" => "bucket-owner-read"}))
    CannedACL.add_member(:bucket_owner_full_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'BucketOwnerFullControl', traits: {"smithy.api#enumValue" => "bucket-owner-full-control"}))
    CompleteMultipartUploadInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID of the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteMultipartUploadInput.add_member(:archive_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveSize', traits: {"smithy.api#documentation" => "<p>The total size, in bytes, of the entire archive. This value should be the sum of all\n         the sizes of the individual parts that you uploaded.</p>", "smithy.api#httpHeader" => "x-amz-archive-size"}))
    CompleteMultipartUploadInput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash of the entire archive. It is the tree hash of SHA256 tree hash\n         of the individual parts. If the value you specify in the request does not match the SHA256\n         tree hash of the final assembled archive as computed by Amazon S3 Glacier (Glacier), \n         Glacier returns an error and the request fails.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    CompleteMultipartUploadInput.type = Types::CompleteMultipartUploadInput
    CompleteMultipartUploadOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The relative URI path of the newly added archive resource.</p>", "smithy.api#httpHeader" => "Location"}))
    CompleteMultipartUploadOutput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The checksum of the archive computed by Amazon S3 Glacier.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    CompleteMultipartUploadOutput.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveId', traits: {"smithy.api#documentation" => "<p>The ID of the archive. This value is also included as part of the location.</p>", "smithy.api#httpHeader" => "x-amz-archive-id"}))
    CompleteMultipartUploadOutput.type = Types::CompleteMultipartUploadOutput
    CompleteVaultLockInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.add_member(:lock_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lockId', traits: {"smithy.api#documentation" => "<p>The <code>lockId</code> value is the lock ID obtained from a <a>InitiateVaultLock</a> request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CompleteVaultLockInput.type = Types::CompleteVaultLockInput
    CreateVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon S3\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CreateVaultInput.type = Types::CreateVaultInput
    CreateVaultOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The URI of the vault that was created.</p>", "smithy.api#httpHeader" => "Location"}))
    CreateVaultOutput.type = Types::CreateVaultOutput
    DataRetrievalPolicy.add_member(:rules, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetrievalRulesList, location_name: 'Rules', traits: {"smithy.api#documentation" => "<p>The policy rule. Although this is a list type, currently there must be only one rule,\n         which contains a Strategy field and optionally a BytesPerHour field.</p>"}))
    DataRetrievalPolicy.type = Types::DataRetrievalPolicy
    DataRetrievalRule.add_member(:strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Strategy', traits: {"smithy.api#documentation" => "<p>The type of data retrieval policy to set.</p>\n         <p>Valid values: BytesPerHour|FreeTier|None</p>"}))
    DataRetrievalRule.add_member(:bytes_per_hour, Smithy::Schema::Shapes::ShapeRef.new(shape: NullableLong, location_name: 'BytesPerHour', traits: {"smithy.api#documentation" => "<p>The maximum number of bytes that can be retrieved in an hour.</p>\n         <p>This field is required only if the value of the Strategy field is\n            <code>BytesPerHour</code>. Your PUT operation will be rejected if the Strategy field is\n         not set to <code>BytesPerHour</code> and you set this field.</p>"}))
    DataRetrievalRule.type = Types::DataRetrievalRule
    DataRetrievalRulesList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetrievalRule)
    DeleteArchiveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveId', traits: {"smithy.api#documentation" => "<p>The ID of the archive to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteArchiveInput.type = Types::DeleteArchiveInput
    DeleteVaultAccessPolicyInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultAccessPolicyInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultAccessPolicyInput.type = Types::DeleteVaultAccessPolicyInput
    DeleteVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultInput.type = Types::DeleteVaultInput
    DeleteVaultNotificationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultNotificationsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteVaultNotificationsInput.type = Types::DeleteVaultNotificationsInput
    DescribeJobInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJobInput.type = Types::DescribeJobInput
    DescribeJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>An opaque string that identifies an Amazon S3 Glacier job.</p>"}))
    DescribeJobOutput.add_member(:job_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobDescription', traits: {"smithy.api#documentation" => "<p>The job description provided when initiating the job.</p>"}))
    DescribeJobOutput.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCode, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The job type. This value is either <code>ArchiveRetrieval</code>,\n                <code>InventoryRetrieval</code>, or\n            <code>Select</code>. </p>"}))
    DescribeJobOutput.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The archive ID requested for a select job or archive retrieval. Otherwise, this\n            field is null.</p>"}))
    DescribeJobOutput.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was\n            requested.</p>"}))
    DescribeJobOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The UTC date when the job was created. This value is a string representation of ISO\n            8601 date format, for example <code>\"2012-03-20T17:03:43.221Z\"</code>.</p>"}))
    DescribeJobOutput.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Completed', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job status. When a job is completed, you get the job's output using Get Job\n            Output (GET output).</p>"}))
    DescribeJobOutput.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or\n                <code>Failed</code>, and indicates the status of the job.</p>"}))
    DescribeJobOutput.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A friendly message that describes the job status.</p>"}))
    DescribeJobOutput.add_member(:archive_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'ArchiveSizeInBytes', traits: {"smithy.api#documentation" => "<p>For an archive retrieval job, this value is the size in bytes of the archive being\n            requested for download. For an inventory retrieval or select job, this value is\n            null.</p>"}))
    DescribeJobOutput.add_member(:inventory_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'InventorySizeInBytes', traits: {"smithy.api#documentation" => "<p>For an inventory retrieval job, this value is the size in bytes of the inventory\n            requested for download. For an archive retrieval or select job, this value is\n            null.</p>"}))
    DescribeJobOutput.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SNSTopic', traits: {"smithy.api#documentation" => "<p>An Amazon SNS topic that receives notification.</p>"}))
    DescribeJobOutput.add_member(:completion_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate', traits: {"smithy.api#documentation" => "<p>The UTC time that the job request completed. While the job is in progress, the\n            value is null.</p>"}))
    DescribeJobOutput.add_member(:sha256_tree_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SHA256TreeHash', traits: {"smithy.api#documentation" => "<p>For an archive retrieval job, this value is the checksum of the archive. Otherwise,\n            this value is null.</p>\n        <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash\n            aligned range, then this field returns a value.</p>\n        <p>If the whole archive is retrieved, this value is the same as the\n            ArchiveSHA256TreeHash value.</p>\n        <p>This field is null for the following:</p>\n        <ul>\n            <li>\n                <p>Archive retrieval jobs that specify a range that is not tree-hash\n                    aligned</p>\n            </li>\n         </ul>\n        <ul>\n            <li>\n                <p>Archival jobs that specify a range that is equal to the whole archive, when\n                    the job status is <code>InProgress</code>\n               </p>\n            </li>\n         </ul>\n        <ul>\n            <li>\n                <p>Inventory jobs</p>\n            </li>\n            <li>\n                <p>Select jobs</p>\n            </li>\n         </ul>"}))
    DescribeJobOutput.add_member(:archive_sha256_tree_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveSHA256TreeHash', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory\n            retrieval or select jobs, this field is null.</p>"}))
    DescribeJobOutput.add_member(:retrieval_byte_range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RetrievalByteRange', traits: {"smithy.api#documentation" => "<p>The retrieved byte range for archive retrieval jobs in the form\n                <i>StartByteValue</i>-<i>EndByteValue</i>. If no range\n            was specified in the archive retrieval, then the whole archive is retrieved. In this\n            case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i>\n            equals the size of the archive minus 1. For inventory retrieval or select jobs, this\n            field is null. </p>"}))
    DescribeJobOutput.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier to use for a select or an archive retrieval. Valid values are\n                <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.\n                <code>Standard</code> is the default.</p>"}))
    DescribeJobOutput.add_member(:inventory_retrieval_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryRetrievalJobDescription, location_name: 'InventoryRetrievalParameters', traits: {"smithy.api#documentation" => "<p>Parameters used for range inventory retrieval.</p>"}))
    DescribeJobOutput.add_member(:job_output_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobOutputPath', traits: {"smithy.api#documentation" => "<p>Contains the job output location.</p>"}))
    DescribeJobOutput.add_member(:select_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectParameters, location_name: 'SelectParameters', traits: {"smithy.api#documentation" => "<p>Contains the parameters used for a select.</p>"}))
    DescribeJobOutput.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>Contains the location where the data from the select job is stored.</p>"}))
    DescribeJobOutput.type = Types::DescribeJobOutput
    DescribeVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeVaultInput.type = Types::DescribeVaultInput
    DescribeVaultOperationOutput.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault.</p>"}))
    DescribeVaultOperationOutput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>"}))
    DescribeVaultOperationOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The Universal Coordinated Time (UTC) date when the vault was created. This value\n         should be a string in the ISO 8601 date format, for example\n            <code>2012-03-20T17:03:43.221Z</code>.</p>"}))
    DescribeVaultOperationOutput.add_member(:last_inventory_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastInventoryDate', traits: {"smithy.api#documentation" => "<p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last\n         vault inventory.  This value should be a string in the ISO 8601 date format, for example\n            <code>2012-03-20T17:03:43.221Z</code>.</p>"}))
    DescribeVaultOperationOutput.add_member(:number_of_archives, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'NumberOfArchives', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of archives in the vault as of the last inventory date. This field will\n         return <code>null</code> if an inventory has not yet run on the vault, for example if you\n         just created the vault.</p>"}))
    DescribeVaultOperationOutput.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total size, in bytes, of the archives in the vault as of the last inventory date.\n         This field will return null if an inventory has not yet run on the vault, for example if\n         you just created the vault.</p>"}))
    DescribeVaultOperationOutput.type = Types::DescribeVaultOperationOutput
    DescribeVaultOutput.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault.</p>"}))
    DescribeVaultOutput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>"}))
    DescribeVaultOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The Universal Coordinated Time (UTC) date when the vault was created. This value\n         should be a string in the ISO 8601 date format, for example\n            <code>2012-03-20T17:03:43.221Z</code>.</p>"}))
    DescribeVaultOutput.add_member(:last_inventory_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'LastInventoryDate', traits: {"smithy.api#documentation" => "<p>The Universal Coordinated Time (UTC) date when Amazon S3 Glacier completed the last\n         vault inventory.  This value should be a string in the ISO 8601 date format, for example\n            <code>2012-03-20T17:03:43.221Z</code>.</p>"}))
    DescribeVaultOutput.add_member(:number_of_archives, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'NumberOfArchives', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of archives in the vault as of the last inventory date. This field will\n         return <code>null</code> if an inventory has not yet run on the vault, for example if you\n         just created the vault.</p>"}))
    DescribeVaultOutput.add_member(:size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'SizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>Total size, in bytes, of the archives in the vault as of the last inventory date.\n         This field will return null if an inventory has not yet run on the vault, for example if\n         you just created the vault.</p>"}))
    DescribeVaultOutput.type = Types::DescribeVaultOutput
    Encryption.add_member(:encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionType, location_name: 'EncryptionType', traits: {"smithy.api#documentation" => "<p>The server-side encryption algorithm used when storing job results in Amazon S3, for\n            example <code>AES256</code> or <code>aws:kms</code>.</p>"}))
    Encryption.add_member(:kms_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSKeyId', traits: {"smithy.api#documentation" => "<p>The AWS KMS key ID to use for object encryption. All GET and PUT requests for an\n            object protected by AWS KMS fail if not made by using Secure Sockets Layer (SSL) or\n            Signature Version 4. </p>"}))
    Encryption.add_member(:kms_context, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'KMSContext', traits: {"smithy.api#documentation" => "<p>Optional. If the encryption type is <code>aws:kms</code>, you can use this value to\n            specify the encryption context for the job results.</p>"}))
    Encryption.type = Types::Encryption
    EncryptionType.add_member(:kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS', traits: {"smithy.api#enumValue" => "aws:kms"}))
    EncryptionType.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'S3', traits: {"smithy.api#enumValue" => "AES256"}))
    ExpressionType.add_member(:sql, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SQL', traits: {"smithy.api#enumValue" => "SQL"}))
    FileHeaderInfo.add_member(:use, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Use', traits: {"smithy.api#enumValue" => "USE"}))
    FileHeaderInfo.add_member(:ignore, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Ignore', traits: {"smithy.api#enumValue" => "IGNORE"}))
    FileHeaderInfo.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'None', traits: {"smithy.api#enumValue" => "NONE"}))
    GetDataRetrievalPolicyInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDataRetrievalPolicyInput.type = Types::GetDataRetrievalPolicyInput
    GetDataRetrievalPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetrievalPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>Contains the returned data retrieval policy in JSON format.</p>"}))
    GetDataRetrievalPolicyOutput.type = Types::GetDataRetrievalPolicyOutput
    GetJobOutputInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The job ID whose data is downloaded.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetJobOutputInput.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'range', traits: {"smithy.api#documentation" => "<p>The range of bytes to retrieve from the output. For example, if you want to download\n         the first 1,048,576 bytes, specify the range as <code>bytes=0-1048575</code>. By default, this operation\n         downloads the entire output.</p>\n      \n         <p>If the job output is large, then you can use a range to\n         retrieve a portion of the output. This allows you to download the entire output in smaller\n         chunks of bytes. For example, suppose you have 1 GB of job output you want to download and\n         you decide to download 128 MB chunks of data at a time, which is a total of eight Get Job\n         Output requests. You use the following process to download the job output:</p>\n     \n         <ol>\n            <li>\n               <p>Download a 128 MB chunk of output by specifying the appropriate byte range.\n                  Verify that all 128 MB of data was received.</p>\n            </li>\n            <li>\n               <p>Along with the data, the response includes a SHA256 tree hash of the payload.\n                  You compute the checksum of the payload on the client and compare it with the\n                  checksum you received in the response to ensure you received all the expected\n                  data.</p>\n            </li>\n            <li>\n               <p>Repeat steps 1 and 2 for all the eight 128 MB chunks of output data, each time\n                  specifying the appropriate byte range.</p>\n            </li>\n            <li>\n               <p>After downloading all the parts of the job output, you have a list of eight\n                  checksum values. Compute the tree hash of these values to find the checksum of the\n                  entire output. Using the <a>DescribeJob</a> API, obtain job information of\n                  the job that provided you the output. The response includes the checksum of the\n                  entire archive stored in Amazon S3 Glacier. You compare this value with the checksum you\n                  computed to ensure you have downloaded the entire archive content with no\n                  errors.</p>\n               <p></p>\n            </li>\n         </ol>", "smithy.api#httpHeader" => "Range"}))
    GetJobOutputInput.type = Types::GetJobOutputInput
    GetJobOutputOutput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: 'body', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The job data, either archive data or inventory data.</p>", "smithy.api#httpPayload" => {}}))
    GetJobOutputOutput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The checksum of the data in the response. This header is returned only when\n         retrieving the output for an archive retrieval job. Furthermore, this header appears only\n         under the following conditions:</p>\n         <ul>\n            <li>\n                <p>You get the entire range of the archive.</p>\n            </li>\n            <li>\n               <p>You request a range to return of the archive that starts and ends on a multiple\n               of 1 MB. For example, if you have an 3.1 MB archive and you specify a range to return\n               that starts at 1 MB and ends at 2 MB, then the x-amz-sha256-tree-hash is returned as\n               a response header.</p>\n            </li>\n            <li>\n               <p>You request a range of the archive to return that starts on a multiple of 1 MB\n               and goes to the end of the archive. For example, if you have a 3.1 MB archive and you\n               specify a range that starts at 2 MB and ends at 3.1 MB (the end of the archive), then\n               the x-amz-sha256-tree-hash is returned as a response header.</p>\n            </li>\n         </ul>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    GetJobOutputOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: Httpstatus, location_name: 'status', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The HTTP response code for a job output request. The value depends on whether a range\n         was specified in the request.</p>", "smithy.api#httpResponseCode" => {}}))
    GetJobOutputOutput.add_member(:content_range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentRange', traits: {"smithy.api#documentation" => "<p>The range of bytes returned by Amazon S3 Glacier. If only partial output is downloaded,\n         the response provides the range of bytes Amazon S3 Glacier returned. For example, bytes\n         0-1048575/8388608 returns the first 1 MB from 8 MB.</p>", "smithy.api#httpHeader" => "Content-Range"}))
    GetJobOutputOutput.add_member(:accept_ranges, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'acceptRanges', traits: {"smithy.api#documentation" => "<p>Indicates the range units accepted. For more information, see <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html\">RFC2616</a>. </p>", "smithy.api#httpHeader" => "Accept-Ranges"}))
    GetJobOutputOutput.add_member(:content_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'contentType', traits: {"smithy.api#documentation" => "<p>The Content-Type depends on whether the job output is an archive or a vault\n         inventory. For archive data, the Content-Type is application/octet-stream. For vault\n         inventory, if you requested CSV format when you initiated the job, the Content-Type is\n         text/csv. Otherwise, by default, vault inventory is returned as JSON, and the Content-Type\n         is application/json.</p>", "smithy.api#httpHeader" => "Content-Type"}))
    GetJobOutputOutput.add_member(:archive_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveDescription', traits: {"smithy.api#documentation" => "<p>The description of an archive.</p>", "smithy.api#httpHeader" => "x-amz-archive-description"}))
    GetJobOutputOutput[:http_payload] = :body
    GetJobOutputOutput[:http_payload_member] = GetJobOutputOutput.member(:body)
    GetJobOutputOutput.type = Types::GetJobOutputOutput
    GetVaultAccessPolicyInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultAccessPolicyInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultAccessPolicyInput.type = Types::GetVaultAccessPolicyInput
    GetVaultAccessPolicyOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultAccessPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>Contains the returned vault access policy as a JSON string.</p>", "smithy.api#httpPayload" => {}}))
    GetVaultAccessPolicyOutput[:http_payload] = :policy
    GetVaultAccessPolicyOutput[:http_payload_member] = GetVaultAccessPolicyOutput.member(:policy)
    GetVaultAccessPolicyOutput.type = Types::GetVaultAccessPolicyOutput
    GetVaultLockInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultLockInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultLockInput.type = Types::GetVaultLockInput
    GetVaultLockOutput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape\n         character.</p>"}))
    GetVaultLockOutput.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of the vault lock. <code>InProgress</code> or\n         <code>Locked</code>.</p>"}))
    GetVaultLockOutput.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>The UTC date and time at which the lock ID expires. This value can be\n            <code>null</code> if the vault lock is in a <code>Locked</code> state.</p>"}))
    GetVaultLockOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The UTC date and time at which the vault lock was put into the\n            <code>InProgress</code> state.</p>"}))
    GetVaultLockOutput.type = Types::GetVaultLockOutput
    GetVaultNotificationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultNotificationsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetVaultNotificationsInput.type = Types::GetVaultNotificationsInput
    GetVaultNotificationsOutput.add_member(:vault_notification_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultNotificationConfig, location_name: 'vaultNotificationConfig', traits: {"smithy.api#documentation" => "<p>Returns the notification configuration set on the vault.</p>", "smithy.api#httpPayload" => {}}))
    GetVaultNotificationsOutput[:http_payload] = :vault_notification_config
    GetVaultNotificationsOutput[:http_payload_member] = GetVaultNotificationsOutput.member(:vault_notification_config)
    GetVaultNotificationsOutput.type = Types::GetVaultNotificationsOutput
    GlacierJobDescription.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobId', traits: {"smithy.api#documentation" => "<p>An opaque string that identifies an Amazon S3 Glacier job.</p>"}))
    GlacierJobDescription.add_member(:job_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobDescription', traits: {"smithy.api#documentation" => "<p>The job description provided when initiating the job.</p>"}))
    GlacierJobDescription.add_member(:action, Smithy::Schema::Shapes::ShapeRef.new(shape: ActionCode, location_name: 'Action', traits: {"smithy.api#documentation" => "<p>The job type. This value is either <code>ArchiveRetrieval</code>,\n                <code>InventoryRetrieval</code>, or\n            <code>Select</code>. </p>"}))
    GlacierJobDescription.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The archive ID requested for a select job or archive retrieval. Otherwise, this\n            field is null.</p>"}))
    GlacierJobDescription.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault from which an archive retrieval was\n            requested.</p>"}))
    GlacierJobDescription.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The UTC date when the job was created. This value is a string representation of ISO\n            8601 date format, for example <code>\"2012-03-20T17:03:43.221Z\"</code>.</p>"}))
    GlacierJobDescription.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Completed', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The job status. When a job is completed, you get the job's output using Get Job\n            Output (GET output).</p>"}))
    GlacierJobDescription.add_member(:status_code, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusCode, location_name: 'StatusCode', traits: {"smithy.api#documentation" => "<p>The status code can be <code>InProgress</code>, <code>Succeeded</code>, or\n                <code>Failed</code>, and indicates the status of the job.</p>"}))
    GlacierJobDescription.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StatusMessage', traits: {"smithy.api#documentation" => "<p>A friendly message that describes the job status.</p>"}))
    GlacierJobDescription.add_member(:archive_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'ArchiveSizeInBytes', traits: {"smithy.api#documentation" => "<p>For an archive retrieval job, this value is the size in bytes of the archive being\n            requested for download. For an inventory retrieval or select job, this value is\n            null.</p>"}))
    GlacierJobDescription.add_member(:inventory_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Size, location_name: 'InventorySizeInBytes', traits: {"smithy.api#documentation" => "<p>For an inventory retrieval job, this value is the size in bytes of the inventory\n            requested for download. For an archive retrieval or select job, this value is\n            null.</p>"}))
    GlacierJobDescription.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SNSTopic', traits: {"smithy.api#documentation" => "<p>An Amazon SNS topic that receives notification.</p>"}))
    GlacierJobDescription.add_member(:completion_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CompletionDate', traits: {"smithy.api#documentation" => "<p>The UTC time that the job request completed. While the job is in progress, the\n            value is null.</p>"}))
    GlacierJobDescription.add_member(:sha256_tree_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SHA256TreeHash', traits: {"smithy.api#documentation" => "<p>For an archive retrieval job, this value is the checksum of the archive. Otherwise,\n            this value is null.</p>\n        <p>The SHA256 tree hash value for the requested range of an archive. If the <b>InitiateJob</b> request for an archive specified a tree-hash\n            aligned range, then this field returns a value.</p>\n        <p>If the whole archive is retrieved, this value is the same as the\n            ArchiveSHA256TreeHash value.</p>\n        <p>This field is null for the following:</p>\n        <ul>\n            <li>\n                <p>Archive retrieval jobs that specify a range that is not tree-hash\n                    aligned</p>\n            </li>\n         </ul>\n        <ul>\n            <li>\n                <p>Archival jobs that specify a range that is equal to the whole archive, when\n                    the job status is <code>InProgress</code>\n               </p>\n            </li>\n         </ul>\n        <ul>\n            <li>\n                <p>Inventory jobs</p>\n            </li>\n            <li>\n                <p>Select jobs</p>\n            </li>\n         </ul>"}))
    GlacierJobDescription.add_member(:archive_sha256_tree_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveSHA256TreeHash', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash of the entire archive for an archive retrieval. For inventory\n            retrieval or select jobs, this field is null.</p>"}))
    GlacierJobDescription.add_member(:retrieval_byte_range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RetrievalByteRange', traits: {"smithy.api#documentation" => "<p>The retrieved byte range for archive retrieval jobs in the form\n                <i>StartByteValue</i>-<i>EndByteValue</i>. If no range\n            was specified in the archive retrieval, then the whole archive is retrieved. In this\n            case, <i>StartByteValue</i> equals 0 and <i>EndByteValue</i>\n            equals the size of the archive minus 1. For inventory retrieval or select jobs, this\n            field is null. </p>"}))
    GlacierJobDescription.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier to use for a select or an archive retrieval. Valid values are\n                <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.\n                <code>Standard</code> is the default.</p>"}))
    GlacierJobDescription.add_member(:inventory_retrieval_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryRetrievalJobDescription, location_name: 'InventoryRetrievalParameters', traits: {"smithy.api#documentation" => "<p>Parameters used for range inventory retrieval.</p>"}))
    GlacierJobDescription.add_member(:job_output_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JobOutputPath', traits: {"smithy.api#documentation" => "<p>Contains the job output location.</p>"}))
    GlacierJobDescription.add_member(:select_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectParameters, location_name: 'SelectParameters', traits: {"smithy.api#documentation" => "<p>Contains the parameters used for a select.</p>"}))
    GlacierJobDescription.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>Contains the location where the data from the select job is stored.</p>"}))
    GlacierJobDescription.type = Types::GlacierJobDescription
    Grant.add_member(:grantee, Smithy::Schema::Shapes::ShapeRef.new(shape: Grantee, location_name: 'Grantee', traits: {"smithy.api#documentation" => "<p>The grantee.</p>"}))
    Grant.add_member(:permission, Smithy::Schema::Shapes::ShapeRef.new(shape: Permission, location_name: 'Permission', traits: {"smithy.api#documentation" => "<p>Specifies the permission given to the grantee. </p>"}))
    Grant.type = Types::Grant
    Grantee.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: Type, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>Type of grantee</p>", "smithy.api#required" => {}}))
    Grantee.add_member(:display_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'DisplayName', traits: {"smithy.api#documentation" => "<p>Screen name of the grantee.</p>"}))
    Grantee.add_member(:uri, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'URI', traits: {"smithy.api#documentation" => "<p>URI of the grantee group.</p>"}))
    Grantee.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ID', traits: {"smithy.api#documentation" => "<p>The canonical user ID of the grantee.</p>"}))
    Grantee.add_member(:email_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EmailAddress', traits: {"smithy.api#documentation" => "<p>Email address of the grantee.</p>"}))
    Grantee.type = Types::Grantee
    InitiateJobInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateJobInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateJobInput.add_member(:job_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: JobParameters, location_name: 'jobParameters', traits: {"smithy.api#documentation" => "<p>Provides options for specifying job information.</p>", "smithy.api#httpPayload" => {}}))
    InitiateJobInput[:http_payload] = :job_parameters
    InitiateJobInput[:http_payload_member] = InitiateJobInput.member(:job_parameters)
    InitiateJobInput.type = Types::InitiateJobInput
    InitiateJobOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The relative URI path of the job.</p>", "smithy.api#httpHeader" => "Location"}))
    InitiateJobOutput.add_member(:job_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobId', traits: {"smithy.api#documentation" => "<p>The ID of the job.</p>", "smithy.api#httpHeader" => "x-amz-job-id"}))
    InitiateJobOutput.add_member(:job_output_path, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'jobOutputPath', traits: {"smithy.api#documentation" => "<p>The path to the location of where the select results are stored.</p>", "smithy.api#httpHeader" => "x-amz-job-output-path"}))
    InitiateJobOutput.type = Types::InitiateJobOutput
    InitiateMultipartUploadInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateMultipartUploadInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateMultipartUploadInput.add_member(:archive_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveDescription', traits: {"smithy.api#documentation" => "<p>The archive description that you are uploading in parts.</p>\n         <p>The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example\n         1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum\n         allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).</p>", "smithy.api#httpHeader" => "x-amz-archive-description"}))
    InitiateMultipartUploadInput.add_member(:part_size, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'partSize', traits: {"smithy.api#documentation" => "<p>The size of each part except the last, in bytes. The last part can be smaller than\n         this part size.</p>", "smithy.api#httpHeader" => "x-amz-part-size"}))
    InitiateMultipartUploadInput.type = Types::InitiateMultipartUploadInput
    InitiateMultipartUploadOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The relative URI path of the multipart upload ID Amazon S3 Glacier created.</p>", "smithy.api#httpHeader" => "Location"}))
    InitiateMultipartUploadOutput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The ID of the multipart upload. This value is also included as part of the\n         location.</p>", "smithy.api#httpHeader" => "x-amz-multipart-upload-id"}))
    InitiateMultipartUploadOutput.type = Types::InitiateMultipartUploadOutput
    InitiateVaultLockInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateVaultLockInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    InitiateVaultLockInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultLockPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The vault lock policy as a JSON string, which uses \"\\\" as an escape\n         character.</p>", "smithy.api#httpPayload" => {}}))
    InitiateVaultLockInput[:http_payload] = :policy
    InitiateVaultLockInput[:http_payload_member] = InitiateVaultLockInput.member(:policy)
    InitiateVaultLockInput.type = Types::InitiateVaultLockInput
    InitiateVaultLockOutput.add_member(:lock_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lockId', traits: {"smithy.api#documentation" => "<p>The lock ID, which is used to complete the vault locking process.</p>", "smithy.api#httpHeader" => "x-amz-lock-id"}))
    InitiateVaultLockOutput.type = Types::InitiateVaultLockOutput
    InputSerialization.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: CSVInput, location_name: 'csv', traits: {"smithy.api#documentation" => "<p>Describes the serialization of a CSV-encoded object.</p>"}))
    InputSerialization.type = Types::InputSerialization
    InsufficientCapacityException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type'))
    InsufficientCapacityException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code'))
    InsufficientCapacityException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message'))
    InsufficientCapacityException.type = Types::InsufficientCapacityException
    InvalidParameterValueException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client</p>"}))
    InvalidParameterValueException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>400 Bad Request</p>"}))
    InvalidParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if a parameter of the request is incorrectly specified.</p>"}))
    InvalidParameterValueException.type = Types::InvalidParameterValueException
    InventoryRetrievalJobDescription.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>The output format for the vault inventory list, which is set by the <b>InitiateJob</b> request when initiating a job to retrieve a vault\n            inventory. Valid values are <code>CSV</code> and <code>JSON</code>.</p>"}))
    InventoryRetrievalJobDescription.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The start of the date range in Universal Coordinated Time (UTC) for vault inventory\n            retrieval that includes archives created on or after this date. This value should be a\n            string in the ISO 8601 date format, for example\n            <code>2013-03-20T17:03:43Z</code>.</p>"}))
    InventoryRetrievalJobDescription.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: DateTime, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The end of the date range in UTC for vault inventory retrieval that includes\n            archives created before this date. This value should be a string in the ISO 8601 date\n            format, for example <code>2013-03-20T17:03:43Z</code>.</p>"}))
    InventoryRetrievalJobDescription.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>The maximum number of inventory items returned per vault inventory retrieval\n            request. This limit is set when initiating the job with the a <b>InitiateJob</b> request. </p>"}))
    InventoryRetrievalJobDescription.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that represents where to continue pagination of the vault\n            inventory retrieval results. You use the marker in a new <b>InitiateJob</b> request to obtain additional inventory items. If there are\n            no more inventory items, this value is <code>null</code>. For more information, see\n                <a href=\"https://docs.aws.amazon.com/amazonglacier/latest/dev/api-initiate-job-post.html#api-initiate-job-post-vault-inventory-list-filtering\"> Range Inventory Retrieval</a>.</p>"}))
    InventoryRetrievalJobDescription.type = Types::InventoryRetrievalJobDescription
    InventoryRetrievalJobInput.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The start of the date range in UTC for vault inventory retrieval that includes\n         archives created on or after this date. This value should be a string in the ISO 8601 date\n         format, for example <code>2013-03-20T17:03:43Z</code>.</p>"}))
    InventoryRetrievalJobInput.add_member(:end_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'EndDate', traits: {"smithy.api#documentation" => "<p>The end of the date range in UTC for vault inventory retrieval that includes archives\n         created before this date. This value should be a string in the ISO 8601 date format, for\n         example <code>2013-03-20T17:03:43Z</code>.</p>"}))
    InventoryRetrievalJobInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Limit', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of inventory items returned per vault inventory\n         retrieval request. Valid values are greater than or equal to 1.</p>"}))
    InventoryRetrievalJobInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that represents where to continue pagination of the vault inventory\n         retrieval results. You use the marker in a new <b>InitiateJob</b>\n         request to obtain additional inventory items. If there are no more inventory items, this\n         value is <code>null</code>.</p>"}))
    InventoryRetrievalJobInput.type = Types::InventoryRetrievalJobInput
    JobList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: GlacierJobDescription)
    JobParameters.add_member(:format, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Format', traits: {"smithy.api#documentation" => "<p>When initiating a job to retrieve a vault inventory, you can optionally add this\n         parameter to your request to specify the output format. If you are initiating an inventory\n         job and do not specify a Format field, JSON is the default format. Valid values are \"CSV\"\n         and \"JSON\".</p>"}))
    JobParameters.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Type', traits: {"smithy.api#documentation" => "<p>The job type. You can initiate a job to perform a select query on an archive, \n         retrieve an archive, or get an inventory of a vault. \n         Valid values are \"select\", \"archive-retrieval\" and \"inventory-retrieval\".</p>"}))
    JobParameters.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveId', traits: {"smithy.api#documentation" => "<p>The ID of the archive that you want to retrieve. This field is required only if\n            <code>Type</code> is set to <code>select</code> or <code>archive-retrieval</code>code>. \n         An error occurs if you specify this\n         request parameter for an inventory retrieval job request. </p>"}))
    JobParameters.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Description', traits: {"smithy.api#documentation" => "<p>The optional description for the job. The description must be less than or equal to\n         1,024 bytes. The allowable characters are 7-bit ASCII without control codes-specifically,\n         ASCII values 32-126 decimal or 0x20-0x7E hexadecimal.</p>"}))
    JobParameters.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SNSTopic', traits: {"smithy.api#documentation" => "<p>The Amazon SNS topic ARN to which Amazon S3 Glacier sends a notification when the job is\n         completed and the output is ready for you to download. The specified topic publishes the\n         notification to its subscribers. The SNS topic must exist.</p>"}))
    JobParameters.add_member(:retrieval_byte_range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RetrievalByteRange', traits: {"smithy.api#documentation" => "<p>The byte range to retrieve for an archive retrieval. in the form\n            \"<i>StartByteValue</i>-<i>EndByteValue</i>\" If not\n         specified, the whole archive is retrieved. If specified, the byte range must be megabyte\n         (1024*1024) aligned which means that <i>StartByteValue</i> must be divisible\n         by 1 MB and <i>EndByteValue</i> plus 1 must be divisible by 1 MB or be the\n         end of the archive specified as the archive byte size value minus 1. If RetrievalByteRange\n         is not megabyte aligned, this operation returns a 400 response. </p>\n         <p>An error occurs if you specify this field for an inventory retrieval job\n         request.</p>"}))
    JobParameters.add_member(:tier, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Tier', traits: {"smithy.api#documentation" => "<p>The tier to use for a select or an archive retrieval job. Valid values are\n            <code>Expedited</code>, <code>Standard</code>, or <code>Bulk</code>.\n            <code>Standard</code> is the default.</p>"}))
    JobParameters.add_member(:inventory_retrieval_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: InventoryRetrievalJobInput, location_name: 'InventoryRetrievalParameters', traits: {"smithy.api#documentation" => "<p>Input parameters used for range inventory retrieval.</p>"}))
    JobParameters.add_member(:select_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: SelectParameters, location_name: 'SelectParameters', traits: {"smithy.api#documentation" => "<p>Contains the parameters that define a job.</p>"}))
    JobParameters.add_member(:output_location, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputLocation, location_name: 'OutputLocation', traits: {"smithy.api#documentation" => "<p>Contains information about the location where the select job results are stored.</p>"}))
    JobParameters.type = Types::JobParameters
    LimitExceededException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client</p>"}))
    LimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>400 Bad Request</p>"}))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if the request results in a vault limit or tags limit being exceeded.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListJobsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJobsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of jobs to be returned. The default limit is 50. The number of\n         jobs returned might be fewer than the specified limit, but the number of returned jobs\n         never exceeds the limit.</p>", "smithy.api#httpQuery" => "limit"}))
    ListJobsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>An opaque string used for pagination. This value specifies the job at which the\n         listing of jobs should begin. Get the marker value from a previous List Jobs response. You\n         only need to include the marker if you are continuing the pagination of results started in\n         a previous List Jobs request.</p>", "smithy.api#httpQuery" => "marker"}))
    ListJobsInput.add_member(:statuscode, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'statuscode', traits: {"smithy.api#documentation" => "<p>The type of job status to return. You can specify the following values:\n            <code>InProgress</code>, <code>Succeeded</code>, or <code>Failed</code>.</p>", "smithy.api#httpQuery" => "statuscode"}))
    ListJobsInput.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'completed', traits: {"smithy.api#documentation" => "<p>The state of the jobs to return. You can specify <code>true</code> or\n            <code>false</code>.</p>", "smithy.api#httpQuery" => "completed"}))
    ListJobsInput.type = Types::ListJobsInput
    ListJobsOutput.add_member(:job_list, Smithy::Schema::Shapes::ShapeRef.new(shape: JobList, location_name: 'JobList', traits: {"smithy.api#documentation" => "<p>A list of job objects. Each job object contains metadata describing the\n         job.</p>"}))
    ListJobsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>\t\n         An opaque string used for pagination that specifies the job at which the listing of jobs should begin. \n         You get the <code>marker</code> value from a previous List Jobs response.\n         You only need to include the marker if you are continuing the pagination of the results started in a \n         previous List Jobs request. </p>"}))
    ListJobsOutput.type = Types::ListJobsOutput
    ListMultipartUploadsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartUploadsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListMultipartUploadsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>Specifies the maximum number of uploads returned in the response body. If this value\n         is not specified, the List Uploads operation returns up to 50 uploads.</p>", "smithy.api#httpQuery" => "limit"}))
    ListMultipartUploadsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>An opaque string used for pagination. This value specifies the upload at which the\n         listing of uploads should begin. Get the marker value from a previous List Uploads\n         response. You need only include the marker if you are continuing the pagination of results\n         started in a previous List Uploads request.</p>", "smithy.api#httpQuery" => "marker"}))
    ListMultipartUploadsInput.type = Types::ListMultipartUploadsInput
    ListMultipartUploadsOutput.add_member(:uploads_list, Smithy::Schema::Shapes::ShapeRef.new(shape: UploadsList, location_name: 'UploadsList', traits: {"smithy.api#documentation" => "<p>A list of in-progress multipart uploads.</p>"}))
    ListMultipartUploadsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that represents where to continue pagination of the results. You use\n         the marker in a new List Multipart Uploads request to obtain more uploads in the list. If\n         there are no more uploads, this value is <code>null</code>.</p>"}))
    ListMultipartUploadsOutput.type = Types::ListMultipartUploadsOutput
    ListPartsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID of the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListPartsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>An opaque string used for pagination. This value specifies the part at which the\n         listing of parts should begin. Get the marker value from the response of a previous List\n         Parts response. You need only include the marker if you are continuing the pagination of\n         results started in a previous List Parts request.</p>", "smithy.api#httpQuery" => "marker"}))
    ListPartsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of parts to be returned. The default limit is 50. The number of\n         parts returned might be fewer than the specified limit, but the number of returned parts\n         never exceeds the limit.</p>", "smithy.api#httpQuery" => "limit"}))
    ListPartsInput.type = Types::ListPartsInput
    ListPartsOutput.add_member(:multipart_upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultipartUploadId', traits: {"smithy.api#documentation" => "<p>The ID of the upload to which the parts are associated.</p>"}))
    ListPartsOutput.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault to which the multipart upload was\n         initiated.</p>"}))
    ListPartsOutput.add_member(:archive_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveDescription', traits: {"smithy.api#documentation" => "<p>The description of the archive that was specified in the Initiate Multipart Upload\n         request.</p>"}))
    ListPartsOutput.add_member(:part_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PartSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The part size in bytes. This is the same value that you specified in the Initiate\n         Multipart Upload request.</p>"}))
    ListPartsOutput.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The UTC time at which the multipart upload was initiated.</p>"}))
    ListPartsOutput.add_member(:parts, Smithy::Schema::Shapes::ShapeRef.new(shape: PartList, location_name: 'Parts', traits: {"smithy.api#documentation" => "<p>A list of the part sizes of the multipart upload. Each object in the array contains a\n         <code>RangeBytes</code> and <code>sha256-tree-hash</code> name/value\n         pair.</p>"}))
    ListPartsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>An opaque string that represents where to continue pagination of the results. You use\n         the marker in a new List Parts request to obtain more jobs in the list. If there are no\n         more parts, this value is <code>null</code>.</p>"}))
    ListPartsOutput.type = Types::ListPartsOutput
    ListProvisionedCapacityInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID of the account that owns the vault. You can either specify an AWS\n         account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS\n         account ID associated with the credentials used to sign the request. If you use an account\n         ID, don't include any hyphens ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListProvisionedCapacityInput.type = Types::ListProvisionedCapacityInput
    ListProvisionedCapacityOutput.add_member(:provisioned_capacity_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityList, location_name: 'ProvisionedCapacityList', traits: {"smithy.api#documentation" => "<p>The response body contains the following JSON fields.</p>"}))
    ListProvisionedCapacityOutput.type = Types::ListProvisionedCapacityOutput
    ListTagsForVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForVaultInput.type = Types::ListTagsForVaultInput
    ListTagsForVaultOutput.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: TagMap, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags attached to the vault. Each tag is composed of a key and a value.</p>"}))
    ListTagsForVaultOutput.type = Types::ListTagsForVaultOutput
    ListVaultsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListVaultsInput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'marker', traits: {"smithy.api#documentation" => "<p>A string used for pagination. The marker specifies the vault ARN after which the\n         listing of vaults should begin.</p>", "smithy.api#httpQuery" => "marker"}))
    ListVaultsInput.add_member(:limit, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Integer, location_name: 'limit', traits: {"smithy.api#documentation" => "<p>The maximum number of vaults to be returned. The default limit is 10. The number of\n         vaults returned might be fewer than the specified limit, but the number of returned vaults\n         never exceeds the limit.</p>", "smithy.api#httpQuery" => "limit"}))
    ListVaultsInput.type = Types::ListVaultsInput
    ListVaultsOutput.add_member(:vault_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultList, location_name: 'VaultList', traits: {"smithy.api#documentation" => "<p>List of vaults.</p>"}))
    ListVaultsOutput.add_member(:marker, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Marker', traits: {"smithy.api#documentation" => "<p>The vault ARN at which to continue pagination of the results. You use the marker in\n         another List Vaults request to obtain more vaults in the list.</p>"}))
    ListVaultsOutput.type = Types::ListVaultsOutput
    MissingParameterValueException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client.</p>"}))
    MissingParameterValueException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>400 Bad Request</p>"}))
    MissingParameterValueException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if no authentication data is found for the request.</p>"}))
    MissingParameterValueException.type = Types::MissingParameterValueException
    NotificationEventList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    OutputLocation.add_member(:s3, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Location, location_name: 'S3', traits: {"smithy.api#documentation" => "<p>Describes an S3 location that will receive the results of the job request.</p>"}))
    OutputLocation.type = Types::OutputLocation
    OutputSerialization.add_member(:csv, Smithy::Schema::Shapes::ShapeRef.new(shape: CSVOutput, location_name: 'csv', traits: {"smithy.api#documentation" => "<p>Describes the serialization of CSV-encoded query results.</p>"}))
    OutputSerialization.type = Types::OutputSerialization
    PartList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PartListElement)
    PartListElement.add_member(:range_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'RangeInBytes', traits: {"smithy.api#documentation" => "<p>The byte range of a part, inclusive of the upper value of the range.</p>"}))
    PartListElement.add_member(:sha256_tree_hash, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SHA256TreeHash', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash value that Amazon S3 Glacier calculated for the part. This field is\n         never <code>null</code>.</p>"}))
    PartListElement.type = Types::PartListElement
    Permission.add_member(:full_control, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FULL_CONTROL', traits: {"smithy.api#enumValue" => "FULL_CONTROL"}))
    Permission.add_member(:write, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE', traits: {"smithy.api#enumValue" => "WRITE"}))
    Permission.add_member(:write_acp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'WRITE_ACP', traits: {"smithy.api#enumValue" => "WRITE_ACP"}))
    Permission.add_member(:read, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ', traits: {"smithy.api#enumValue" => "READ"}))
    Permission.add_member(:read_acp, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'READ_ACP', traits: {"smithy.api#enumValue" => "READ_ACP"}))
    PolicyEnforcedException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client</p>"}))
    PolicyEnforcedException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>PolicyEnforcedException</p>"}))
    PolicyEnforcedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>InitiateJob request denied by current data retrieval policy.</p>"}))
    PolicyEnforcedException.type = Types::PolicyEnforcedException
    ProvisionedCapacityDescription.add_member(:capacity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CapacityId', traits: {"smithy.api#documentation" => "<p>The ID that identifies the provisioned capacity unit.</p>"}))
    ProvisionedCapacityDescription.add_member(:start_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StartDate', traits: {"smithy.api#documentation" => "<p>The date that the provisioned capacity unit was purchased, in Universal Coordinated Time (UTC).</p>"}))
    ProvisionedCapacityDescription.add_member(:expiration_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ExpirationDate', traits: {"smithy.api#documentation" => "<p>The date that the provisioned capacity unit expires, in Universal Coordinated Time (UTC).</p>"}))
    ProvisionedCapacityDescription.type = Types::ProvisionedCapacityDescription
    ProvisionedCapacityList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ProvisionedCapacityDescription)
    PurchaseProvisionedCapacityInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The AWS account ID of the account that owns the vault. You can either specify an AWS\n         account ID or optionally a single '-' (hyphen), in which case Amazon S3 Glacier uses the AWS\n         account ID associated with the credentials used to sign the request. If you use an account\n         ID, don't include any hyphens ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    PurchaseProvisionedCapacityInput.type = Types::PurchaseProvisionedCapacityInput
    PurchaseProvisionedCapacityOutput.add_member(:capacity_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'capacityId', traits: {"smithy.api#documentation" => "<p>The ID that identifies the provisioned capacity unit.</p>", "smithy.api#httpHeader" => "x-amz-capacity-id"}))
    PurchaseProvisionedCapacityOutput.type = Types::PurchaseProvisionedCapacityOutput
    QuoteFields.add_member(:always, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Always', traits: {"smithy.api#enumValue" => "ALWAYS"}))
    QuoteFields.add_member(:as_needed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AsNeeded', traits: {"smithy.api#enumValue" => "ASNEEDED"}))
    RemoveTagsFromVaultInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromVaultInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    RemoveTagsFromVaultInput.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>A list of tag keys. Each corresponding tag is removed from the vault.</p>"}))
    RemoveTagsFromVaultInput.type = Types::RemoveTagsFromVaultInput
    RequestTimeoutException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client</p>"}))
    RequestTimeoutException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>408 Request Timeout</p>"}))
    RequestTimeoutException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the\n         upload.</p>"}))
    RequestTimeoutException.type = Types::RequestTimeoutException
    ResourceNotFoundException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Client</p>"}))
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>404 Not Found</p>"}))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't\n         exist.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    S3Location.add_member(:bucket_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'BucketName', traits: {"smithy.api#documentation" => "<p>The name of the Amazon S3 bucket where the job results are stored.</p>"}))
    S3Location.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The prefix that is prepended to the results for this request.</p>"}))
    S3Location.add_member(:encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Encryption, location_name: 'Encryption', traits: {"smithy.api#documentation" => "<p>Contains information about the encryption used to store the job results in Amazon S3.</p>"}))
    S3Location.add_member(:canned_acl, Smithy::Schema::Shapes::ShapeRef.new(shape: CannedACL, location_name: 'CannedACL', traits: {"smithy.api#documentation" => "<p>The canned access control list (ACL) to apply to the job results.</p>"}))
    S3Location.add_member(:access_control_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessControlPolicyList, location_name: 'AccessControlList', traits: {"smithy.api#documentation" => "<p>A list of grants that control access to the staged results.</p>"}))
    S3Location.add_member(:tagging, Smithy::Schema::Shapes::ShapeRef.new(shape: Hashmap, location_name: 'Tagging', traits: {"smithy.api#documentation" => "<p>The tag-set that is applied to the job results.</p>"}))
    S3Location.add_member(:user_metadata, Smithy::Schema::Shapes::ShapeRef.new(shape: Hashmap, location_name: 'UserMetadata', traits: {"smithy.api#documentation" => "<p>A map of metadata to store with the job results in Amazon S3.</p>"}))
    S3Location.add_member(:storage_class, Smithy::Schema::Shapes::ShapeRef.new(shape: StorageClass, location_name: 'StorageClass', traits: {"smithy.api#documentation" => "<p>The storage class used to store the job results.</p>"}))
    S3Location.type = Types::S3Location
    SelectParameters.add_member(:input_serialization, Smithy::Schema::Shapes::ShapeRef.new(shape: InputSerialization, location_name: 'InputSerialization', traits: {"smithy.api#documentation" => "<p>Describes the serialization format of the object.</p>"}))
    SelectParameters.add_member(:expression_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionType, location_name: 'ExpressionType', traits: {"smithy.api#documentation" => "<p>The type of the provided expression, for example <code>SQL</code>.</p>"}))
    SelectParameters.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>The expression that is used to select the object.</p>"}))
    SelectParameters.add_member(:output_serialization, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputSerialization, location_name: 'OutputSerialization', traits: {"smithy.api#documentation" => "<p>Describes how the results of the select job are serialized.</p>"}))
    SelectParameters.type = Types::SelectParameters
    ServiceUnavailableException.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'type', traits: {"smithy.api#documentation" => "<p>Server</p>"}))
    ServiceUnavailableException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'code', traits: {"smithy.api#documentation" => "<p>500 Internal Server Error</p>"}))
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#documentation" => "<p>Returned if the service cannot complete the request.</p>"}))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SetDataRetrievalPolicyInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID. This value must match the AWS\n         account ID associated with the credentials used to sign the request. You can either specify\n         an AWS account ID or optionally a single '<code>-</code>' (hyphen), in which case Amazon\n         Glacier uses the AWS account ID associated with the credentials used to sign the request.\n         If you specify your account ID, do not include any hyphens ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetDataRetrievalPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: DataRetrievalPolicy, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The data retrieval policy in JSON format.</p>"}))
    SetDataRetrievalPolicyInput.type = Types::SetDataRetrievalPolicyInput
    SetVaultAccessPolicyInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultAccessPolicyInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultAccessPolicyInput.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultAccessPolicy, location_name: 'policy', traits: {"smithy.api#documentation" => "<p>The vault access policy as a JSON string.</p>", "smithy.api#httpPayload" => {}}))
    SetVaultAccessPolicyInput[:http_payload] = :policy
    SetVaultAccessPolicyInput[:http_payload_member] = SetVaultAccessPolicyInput.member(:policy)
    SetVaultAccessPolicyInput.type = Types::SetVaultAccessPolicyInput
    SetVaultNotificationsInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultNotificationsInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    SetVaultNotificationsInput.add_member(:vault_notification_config, Smithy::Schema::Shapes::ShapeRef.new(shape: VaultNotificationConfig, location_name: 'vaultNotificationConfig', traits: {"smithy.api#documentation" => "<p>Provides options for specifying notification configuration.</p>", "smithy.api#httpPayload" => {}}))
    SetVaultNotificationsInput[:http_payload] = :vault_notification_config
    SetVaultNotificationsInput[:http_payload_member] = SetVaultNotificationsInput.member(:vault_notification_config)
    SetVaultNotificationsInput.type = Types::SetVaultNotificationsInput
    StatusCode.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'InProgress', traits: {"smithy.api#enumValue" => "InProgress"}))
    StatusCode.add_member(:succeeded, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Succeeded', traits: {"smithy.api#enumValue" => "Succeeded"}))
    StatusCode.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Failed', traits: {"smithy.api#enumValue" => "Failed"}))
    StorageClass.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Standard', traits: {"smithy.api#enumValue" => "STANDARD"}))
    StorageClass.add_member(:reduced_redundancy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ReducedRedundancy', traits: {"smithy.api#enumValue" => "REDUCED_REDUNDANCY"}))
    StorageClass.add_member(:standard_infrequent_access, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'StandardInfrequentAccess', traits: {"smithy.api#enumValue" => "STANDARD_IA"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    TagMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    Type.add_member(:amazon_customer_by_email, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'AmazonCustomerByEmail', traits: {"smithy.api#enumValue" => "AmazonCustomerByEmail"}))
    Type.add_member(:canonical_user, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CanonicalUser', traits: {"smithy.api#enumValue" => "CanonicalUser"}))
    Type.add_member(:group, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Group', traits: {"smithy.api#enumValue" => "Group"}))
    UploadArchiveInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadArchiveInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadArchiveInput.add_member(:archive_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveDescription', traits: {"smithy.api#documentation" => "<p>The optional description of the archive you are uploading.</p>", "smithy.api#httpHeader" => "x-amz-archive-description"}))
    UploadArchiveInput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash of the data being uploaded.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadArchiveInput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: 'body', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The data to upload.</p>", "smithy.api#httpPayload" => {}}))
    UploadArchiveInput[:http_payload] = :body
    UploadArchiveInput[:http_payload_member] = UploadArchiveInput.member(:body)
    UploadArchiveInput.type = Types::UploadArchiveInput
    UploadArchiveOutput.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'location', traits: {"smithy.api#documentation" => "<p>The relative URI path of the newly added archive resource.</p>", "smithy.api#httpHeader" => "Location"}))
    UploadArchiveOutput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The checksum of the archive computed by Amazon S3 Glacier.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadArchiveOutput.add_member(:archive_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'archiveId', traits: {"smithy.api#documentation" => "<p>The ID of the archive. This value is also included as part of the location.</p>", "smithy.api#httpHeader" => "x-amz-archive-id"}))
    UploadArchiveOutput.type = Types::UploadArchiveOutput
    UploadListElement.add_member(:multipart_upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'MultipartUploadId', traits: {"smithy.api#documentation" => "<p>The ID of a multipart upload.</p>"}))
    UploadListElement.add_member(:vault_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'VaultARN', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the vault that contains the archive.</p>"}))
    UploadListElement.add_member(:archive_description, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ArchiveDescription', traits: {"smithy.api#documentation" => "<p>The description of the archive that was specified in the Initiate Multipart Upload\n         request.</p>"}))
    UploadListElement.add_member(:part_size_in_bytes, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'PartSizeInBytes', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The part size, in bytes, specified in the Initiate Multipart Upload request. This is\n         the size of all the parts in the upload except the last part, which may be smaller than\n         this size.</p>"}))
    UploadListElement.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>The UTC time at which the multipart upload was initiated.</p>"}))
    UploadListElement.type = Types::UploadListElement
    UploadMultipartPartInput.add_member(:account_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'accountId', traits: {"smithy.api#documentation" => "<p>The <code>AccountId</code> value is the AWS account ID of the account that owns the\n         vault. You can either specify an AWS account ID or optionally a single '<code>-</code>'\n         (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the\n         credentials used to sign the request. If you use an account ID, do not include any hyphens\n         ('-') in the ID. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:vault_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vaultName', traits: {"smithy.api#documentation" => "<p>The name of the vault.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:upload_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'uploadId', traits: {"smithy.api#documentation" => "<p>The upload ID of the multipart upload.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UploadMultipartPartInput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash of the data being uploaded.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadMultipartPartInput.add_member(:range, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'range', traits: {"smithy.api#documentation" => "<p>Identifies the range of bytes in the assembled archive that will be uploaded in this\n         part. Amazon S3 Glacier uses this information to assemble the archive in the proper sequence.\n         The format of this header follows RFC 2616. An example header is Content-Range:bytes\n         0-4194303/*.</p>", "smithy.api#httpHeader" => "Content-Range"}))
    UploadMultipartPartInput.add_member(:body, Smithy::Schema::Shapes::ShapeRef.new(shape: Stream, location_name: 'body', traits: {"smithy.api#default" => "", "smithy.api#documentation" => "<p>The data to upload.</p>", "smithy.api#httpPayload" => {}}))
    UploadMultipartPartInput[:http_payload] = :body
    UploadMultipartPartInput[:http_payload_member] = UploadMultipartPartInput.member(:body)
    UploadMultipartPartInput.type = Types::UploadMultipartPartInput
    UploadMultipartPartOutput.add_member(:checksum, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'checksum', traits: {"smithy.api#documentation" => "<p>The SHA256 tree hash that Amazon S3 Glacier computed for the uploaded part.</p>", "smithy.api#httpHeader" => "x-amz-sha256-tree-hash"}))
    UploadMultipartPartOutput.type = Types::UploadMultipartPartOutput
    UploadsList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadListElement)
    VaultAccessPolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The vault access policy.</p>"}))
    VaultAccessPolicy.type = Types::VaultAccessPolicy
    VaultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVaultOutput)
    VaultLockPolicy.add_member(:policy, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Policy', traits: {"smithy.api#documentation" => "<p>The vault lock policy.</p>"}))
    VaultLockPolicy.type = Types::VaultLockPolicy
    VaultNotificationConfig.add_member(:sns_topic, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SNSTopic', traits: {"smithy.api#documentation" => "<p>The Amazon Simple Notification Service (Amazon SNS) topic Amazon Resource Name\n         (ARN).</p>"}))
    VaultNotificationConfig.add_member(:events, Smithy::Schema::Shapes::ShapeRef.new(shape: NotificationEventList, location_name: 'Events', traits: {"smithy.api#documentation" => "<p>A list of one or more events for which Amazon S3 Glacier will send a notification to the\n         specified Amazon SNS topic.</p>"}))
    VaultNotificationConfig.type = Types::VaultNotificationConfig
    Hashmap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    Hashmap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: String)

    Glacier = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.glacier#Glacier"
      service.name = "Glacier"
      service.version = "2012-06-01"
      service.traits = {"aws.api#service" => {"sdkId" => "Glacier", "arnNamespace" => "glacier", "cloudFormationName" => "Glacier", "cloudTrailEventSource" => "glacier.amazonaws.com", "endpointPrefix" => "glacier"}, "aws.auth#sigv4" => {"name" => "glacier"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Glacier", "smithy.api#xmlNamespace" => {"uri" => "http://glacier.amazonaws.com/doc/2012-06-01/"}}
      service.add_operation(:abort_multipart_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AbortMultipartUpload"
        operation.name = "AbortMultipartUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AbortMultipartUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 204}}
      end)
      service.add_operation(:abort_vault_lock, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AbortVaultLock"
        operation.name = "AbortVaultLock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AbortVaultLockInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 204}}
      end)
      service.add_operation(:add_tags_to_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#AddTagsToVault"
        operation.name = "AddTagsToVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AddTagsToVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/tags?operation=add", "code" => 204}}
      end)
      service.add_operation(:complete_multipart_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CompleteMultipartUpload"
        operation.name = "CompleteMultipartUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMultipartUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteMultipartUploadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 201}}
      end)
      service.add_operation(:complete_vault_lock, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CompleteVaultLock"
        operation.name = "CompleteVaultLock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CompleteVaultLockInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}", "code" => 204}}
      end)
      service.add_operation(:create_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#CreateVault"
        operation.name = "CreateVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateVaultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 201}}
      end)
      service.add_operation(:delete_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteArchive"
        operation.name = "DeleteArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteArchiveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/archives/{archiveId}", "code" => 204}}
      end)
      service.add_operation(:delete_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVault"
        operation.name = "DeleteVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 204}}
      end)
      service.add_operation(:delete_vault_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVaultAccessPolicy"
        operation.name = "DeleteVaultAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVaultAccessPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 204}}
      end)
      service.add_operation(:delete_vault_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DeleteVaultNotifications"
        operation.name = "DeleteVaultNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteVaultNotificationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 204}}
      end)
      service.add_operation(:describe_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DescribeJob"
        operation.name = "DescribeJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs/{jobId}", "code" => 200}}
      end)
      service.add_operation(:describe_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#DescribeVault"
        operation.name = "DescribeVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeVaultOperationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}", "code" => 200}}
      end)
      service.add_operation(:get_data_retrieval_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetDataRetrievalPolicy"
        operation.name = "GetDataRetrievalPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataRetrievalPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDataRetrievalPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/policies/data-retrieval", "code" => 200}}
      end)
      service.add_operation(:get_job_output, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetJobOutput"
        operation.name = "GetJobOutput"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobOutputInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetJobOutputOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output", "code" => 200}}
      end)
      service.add_operation(:get_vault_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultAccessPolicy"
        operation.name = "GetVaultAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultAccessPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultAccessPolicyOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 200}}
      end)
      service.add_operation(:get_vault_lock, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultLock"
        operation.name = "GetVaultLock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultLockInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultLockOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 200}}
      end)
      service.add_operation(:get_vault_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#GetVaultNotifications"
        operation.name = "GetVaultNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultNotificationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetVaultNotificationsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 200}}
      end)
      service.add_operation(:initiate_job, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateJob"
        operation.name = "InitiateJob"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateJobInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateJobOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InsufficientCapacityException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyEnforcedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/jobs", "code" => 202}}
      end)
      service.add_operation(:initiate_multipart_upload, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateMultipartUpload"
        operation.name = "InitiateMultipartUpload"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateMultipartUploadInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateMultipartUploadOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads", "code" => 201}}
      end)
      service.add_operation(:initiate_vault_lock, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#InitiateVaultLock"
        operation.name = "InitiateVaultLock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateVaultLockInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: InitiateVaultLockOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/lock-policy", "code" => 201}}
      end)
      service.add_operation(:list_jobs, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListJobs"
        operation.name = "ListJobs"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJobsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/jobs", "code" => 200}}
        operation[:paginator] = Paginators::ListJobs.new
      end)
      service.add_operation(:list_multipart_uploads, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListMultipartUploads"
        operation.name = "ListMultipartUploads"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultipartUploadsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListMultipartUploadsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads", "code" => 200}}
        operation[:paginator] = Paginators::ListMultipartUploads.new
      end)
      service.add_operation(:list_parts, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListParts"
        operation.name = "ListParts"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListPartsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 200}}
        operation[:paginator] = Paginators::ListParts.new
      end)
      service.add_operation(:list_provisioned_capacity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListProvisionedCapacity"
        operation.name = "ListProvisionedCapacity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedCapacityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListProvisionedCapacityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/provisioned-capacity", "code" => 200}}
      end)
      service.add_operation(:list_tags_for_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListTagsForVault"
        operation.name = "ListTagsForVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForVaultOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults/{vaultName}/tags", "code" => 200}}
      end)
      service.add_operation(:list_vaults, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#ListVaults"
        operation.name = "ListVaults"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVaultsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListVaultsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/{accountId}/vaults", "code" => 200}}
        operation[:paginator] = Paginators::ListVaults.new
      end)
      service.add_operation(:purchase_provisioned_capacity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#PurchaseProvisionedCapacity"
        operation.name = "PurchaseProvisionedCapacity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseProvisionedCapacityInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PurchaseProvisionedCapacityOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/provisioned-capacity", "code" => 201}}
      end)
      service.add_operation(:remove_tags_from_vault, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#RemoveTagsFromVault"
        operation.name = "RemoveTagsFromVault"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: RemoveTagsFromVaultInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/tags?operation=remove", "code" => 204}}
      end)
      service.add_operation(:set_data_retrieval_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetDataRetrievalPolicy"
        operation.name = "SetDataRetrievalPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetDataRetrievalPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/policies/data-retrieval", "code" => 204}}
      end)
      service.add_operation(:set_vault_access_policy, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetVaultAccessPolicy"
        operation.name = "SetVaultAccessPolicy"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetVaultAccessPolicyInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/access-policy", "code" => 204}}
      end)
      service.add_operation(:set_vault_notifications, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#SetVaultNotifications"
        operation.name = "SetVaultNotifications"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: SetVaultNotificationsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/notification-configuration", "code" => 204}}
      end)
      service.add_operation(:upload_archive, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#UploadArchive"
        operation.name = "UploadArchive"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadArchiveInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadArchiveOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/{accountId}/vaults/{vaultName}/archives", "code" => 201}}
      end)
      service.add_operation(:upload_multipart_part, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.glacier#UploadMultipartPart"
        operation.name = "UploadMultipartPart"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMultipartPartInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UploadMultipartPartOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: MissingParameterValueException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: RequestTimeoutException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.traits = {"smithy.api#http" => {"method" => "PUT", "uri" => "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}", "code" => 204}}
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
