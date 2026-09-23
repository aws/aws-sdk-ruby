# frozen_string_literal: true

# This is generated code!

module Aws::QLDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#Arn", name: "Arn", traits: {"smithy.api#length" => {"min" => 20, "max" => 1600}})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.qldb#Boolean", name: "Boolean")
    CancelJournalKinesisStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#CancelJournalKinesisStreamRequest", name: "CancelJournalKinesisStreamRequest")
    CancelJournalKinesisStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#CancelJournalKinesisStreamResponse", name: "CancelJournalKinesisStreamResponse")
    CreateLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#CreateLedgerRequest", name: "CreateLedgerRequest")
    CreateLedgerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#CreateLedgerResponse", name: "CreateLedgerResponse")
    DeleteLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DeleteLedgerRequest", name: "DeleteLedgerRequest")
    DeletionProtection = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.qldb#DeletionProtection", name: "DeletionProtection")
    DescribeJournalKinesisStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeJournalKinesisStreamRequest", name: "DescribeJournalKinesisStreamRequest")
    DescribeJournalKinesisStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeJournalKinesisStreamResponse", name: "DescribeJournalKinesisStreamResponse")
    DescribeJournalS3ExportRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeJournalS3ExportRequest", name: "DescribeJournalS3ExportRequest")
    DescribeJournalS3ExportResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeJournalS3ExportResponse", name: "DescribeJournalS3ExportResponse")
    DescribeLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeLedgerRequest", name: "DescribeLedgerRequest")
    DescribeLedgerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#DescribeLedgerResponse", name: "DescribeLedgerResponse")
    Digest = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.qldb#Digest", name: "Digest", traits: {"smithy.api#length" => {"min" => 32, "max" => 32}})
    EncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#EncryptionStatus", name: "EncryptionStatus")
    ErrorCause = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#ErrorCause", name: "ErrorCause")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#ErrorMessage", name: "ErrorMessage")
    ExportJournalToS3Request = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ExportJournalToS3Request", name: "ExportJournalToS3Request")
    ExportJournalToS3Response = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ExportJournalToS3Response", name: "ExportJournalToS3Response")
    ExportStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#ExportStatus", name: "ExportStatus")
    GetBlockRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetBlockRequest", name: "GetBlockRequest")
    GetBlockResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetBlockResponse", name: "GetBlockResponse")
    GetDigestRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetDigestRequest", name: "GetDigestRequest")
    GetDigestResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetDigestResponse", name: "GetDigestResponse")
    GetRevisionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetRevisionRequest", name: "GetRevisionRequest")
    GetRevisionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#GetRevisionResponse", name: "GetRevisionResponse")
    InvalidParameterException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#InvalidParameterException", name: "InvalidParameterException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IonText = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#IonText", name: "IonText", traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    JournalKinesisStreamDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#JournalKinesisStreamDescription", name: "JournalKinesisStreamDescription")
    JournalKinesisStreamDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qldb#JournalKinesisStreamDescriptionList", name: "JournalKinesisStreamDescriptionList")
    JournalS3ExportDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#JournalS3ExportDescription", name: "JournalS3ExportDescription")
    JournalS3ExportList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qldb#JournalS3ExportList", name: "JournalS3ExportList")
    KinesisConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#KinesisConfiguration", name: "KinesisConfiguration")
    KmsKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#KmsKey", name: "KmsKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}})
    LedgerEncryptionDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#LedgerEncryptionDescription", name: "LedgerEncryptionDescription")
    LedgerList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qldb#LedgerList", name: "LedgerList")
    LedgerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#LedgerName", name: "LedgerName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"})
    LedgerState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#LedgerState", name: "LedgerState")
    LedgerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#LedgerSummary", name: "LedgerSummary")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListJournalKinesisStreamsForLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalKinesisStreamsForLedgerRequest", name: "ListJournalKinesisStreamsForLedgerRequest")
    ListJournalKinesisStreamsForLedgerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalKinesisStreamsForLedgerResponse", name: "ListJournalKinesisStreamsForLedgerResponse")
    ListJournalS3ExportsForLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalS3ExportsForLedgerRequest", name: "ListJournalS3ExportsForLedgerRequest")
    ListJournalS3ExportsForLedgerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalS3ExportsForLedgerResponse", name: "ListJournalS3ExportsForLedgerResponse")
    ListJournalS3ExportsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalS3ExportsRequest", name: "ListJournalS3ExportsRequest")
    ListJournalS3ExportsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListJournalS3ExportsResponse", name: "ListJournalS3ExportsResponse")
    ListLedgersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListLedgersRequest", name: "ListLedgersRequest")
    ListLedgersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListLedgersResponse", name: "ListLedgersResponse")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.qldb#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z-0-9+/=]+$"})
    OutputFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#OutputFormat", name: "OutputFormat")
    ParameterName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#ParameterName", name: "ParameterName")
    PermissionsMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#PermissionsMode", name: "PermissionsMode")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePreconditionNotMetException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ResourcePreconditionNotMetException", name: "ResourcePreconditionNotMetException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ResourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#ResourceType", name: "ResourceType")
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z-0-9-_.]+$"})
    S3EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#S3EncryptionConfiguration", name: "S3EncryptionConfiguration")
    S3ExportConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#S3ExportConfiguration", name: "S3ExportConfiguration")
    S3ObjectEncryptionType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#S3ObjectEncryptionType", name: "S3ObjectEncryptionType")
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    StreamJournalToKinesisRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#StreamJournalToKinesisRequest", name: "StreamJournalToKinesisRequest")
    StreamJournalToKinesisResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#StreamJournalToKinesisResponse", name: "StreamJournalToKinesisResponse")
    StreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#StreamName", name: "StreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"})
    StreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.qldb#StreamStatus", name: "StreamStatus")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.qldb#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.qldb#Tags", name: "Tags", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sparse" => {}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.qldb#Timestamp", name: "Timestamp")
    UniqueId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.qldb#UniqueId", name: "UniqueId", traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[A-Za-z-0-9]+$"})
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UntagResourceResponse", name: "UntagResourceResponse")
    UpdateLedgerPermissionsModeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UpdateLedgerPermissionsModeRequest", name: "UpdateLedgerPermissionsModeRequest")
    UpdateLedgerPermissionsModeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UpdateLedgerPermissionsModeResponse", name: "UpdateLedgerPermissionsModeResponse")
    UpdateLedgerRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UpdateLedgerRequest", name: "UpdateLedgerRequest")
    UpdateLedgerResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#UpdateLedgerResponse", name: "UpdateLedgerResponse")
    ValueHolder = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.qldb#ValueHolder", name: "ValueHolder", traits: {"smithy.api#sensitive" => {}})

    CancelJournalKinesisStreamRequest.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJournalKinesisStreamRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "StreamId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJournalKinesisStreamRequest.type = Types::CancelJournalKinesisStreamRequest
    CancelJournalKinesisStreamResponse.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "StreamId"))
    CancelJournalKinesisStreamResponse.type = Types::CancelJournalKinesisStreamResponse
    CreateLedgerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#required" => {}}))
    CreateLedgerRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    CreateLedgerRequest.add_member(:permissions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsMode, name: "PermissionsMode", traits: {"smithy.api#required" => {}}))
    CreateLedgerRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    CreateLedgerRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey"))
    CreateLedgerRequest.type = Types::CreateLedgerRequest
    CreateLedgerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name"))
    CreateLedgerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    CreateLedgerResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerState, name: "State"))
    CreateLedgerResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDateTime"))
    CreateLedgerResponse.add_member(:permissions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsMode, name: "PermissionsMode"))
    CreateLedgerResponse.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    CreateLedgerResponse.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    CreateLedgerResponse.type = Types::CreateLedgerResponse
    DeleteLedgerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLedgerRequest.type = Types::DeleteLedgerRequest
    DescribeJournalKinesisStreamRequest.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalKinesisStreamRequest.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "StreamId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalKinesisStreamRequest.type = Types::DescribeJournalKinesisStreamRequest
    DescribeJournalKinesisStreamResponse.add_member(:stream, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalKinesisStreamDescription, name: "Stream"))
    DescribeJournalKinesisStreamResponse.type = Types::DescribeJournalKinesisStreamResponse
    DescribeJournalS3ExportRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalS3ExportRequest.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "ExportId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalS3ExportRequest.type = Types::DescribeJournalS3ExportRequest
    DescribeJournalS3ExportResponse.add_member(:export_description, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalS3ExportDescription, name: "ExportDescription", traits: {"smithy.api#required" => {}}))
    DescribeJournalS3ExportResponse.type = Types::DescribeJournalS3ExportResponse
    DescribeLedgerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLedgerRequest.type = Types::DescribeLedgerRequest
    DescribeLedgerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name"))
    DescribeLedgerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    DescribeLedgerResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerState, name: "State"))
    DescribeLedgerResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDateTime"))
    DescribeLedgerResponse.add_member(:permissions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsMode, name: "PermissionsMode"))
    DescribeLedgerResponse.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    DescribeLedgerResponse.add_member(:encryption_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerEncryptionDescription, name: "EncryptionDescription"))
    DescribeLedgerResponse.type = Types::DescribeLedgerResponse
    EncryptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    EncryptionStatus.add_member(:updating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UPDATING", traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:kms_key_inaccessible, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_INACCESSIBLE", traits: {"smithy.api#enumValue" => "KMS_KEY_INACCESSIBLE"}))
    ErrorCause.add_member(:kinesis_stream_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KINESIS_STREAM_NOT_FOUND", traits: {"smithy.api#enumValue" => "KINESIS_STREAM_NOT_FOUND"}))
    ErrorCause.add_member(:iam_permission_revoked, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IAM_PERMISSION_REVOKED", traits: {"smithy.api#enumValue" => "IAM_PERMISSION_REVOKED"}))
    ExportJournalToS3Request.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:inclusive_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InclusiveStartTime", traits: {"smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:exclusive_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExclusiveEndTime", traits: {"smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:s3_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportConfiguration, name: "S3ExportConfiguration", traits: {"smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat"))
    ExportJournalToS3Request.type = Types::ExportJournalToS3Request
    ExportJournalToS3Response.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "ExportId", traits: {"smithy.api#required" => {}}))
    ExportJournalToS3Response.type = Types::ExportJournalToS3Response
    ExportStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportStatus.add_member(:cancelled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELLED", traits: {"smithy.api#enumValue" => "CANCELLED"}))
    GetBlockRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBlockRequest.add_member(:block_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "BlockAddress", traits: {"smithy.api#required" => {}}))
    GetBlockRequest.add_member(:digest_tip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "DigestTipAddress"))
    GetBlockRequest.type = Types::GetBlockRequest
    GetBlockResponse.add_member(:block, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "Block", traits: {"smithy.api#required" => {}}))
    GetBlockResponse.add_member(:proof, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "Proof"))
    GetBlockResponse.type = Types::GetBlockResponse
    GetDigestRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDigestRequest.type = Types::GetDigestRequest
    GetDigestResponse.add_member(:digest, ::Smithy::Schema::Shapes::MemberShape.new(target: Digest, name: "Digest", traits: {"smithy.api#required" => {}}))
    GetDigestResponse.add_member(:digest_tip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "DigestTipAddress", traits: {"smithy.api#required" => {}}))
    GetDigestResponse.type = Types::GetDigestResponse
    GetRevisionRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:block_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "BlockAddress", traits: {"smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "DocumentId", traits: {"smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:digest_tip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "DigestTipAddress"))
    GetRevisionRequest.type = Types::GetRevisionRequest
    GetRevisionResponse.add_member(:proof, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "Proof"))
    GetRevisionResponse.add_member(:revision, ::Smithy::Schema::Shapes::MemberShape.new(target: ValueHolder, name: "Revision", traits: {"smithy.api#required" => {}}))
    GetRevisionResponse.type = Types::GetRevisionResponse
    InvalidParameterException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InvalidParameterException.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ParameterName, name: "ParameterName"))
    InvalidParameterException.type = Types::InvalidParameterException
    JournalKinesisStreamDescription.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationTime"))
    JournalKinesisStreamDescription.add_member(:inclusive_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InclusiveStartTime"))
    JournalKinesisStreamDescription.add_member(:exclusive_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExclusiveEndTime"))
    JournalKinesisStreamDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "StreamId", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    JournalKinesisStreamDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:kinesis_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisConfiguration, name: "KinesisConfiguration", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:error_cause, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCause, name: "ErrorCause"))
    JournalKinesisStreamDescription.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    JournalKinesisStreamDescription.type = Types::JournalKinesisStreamDescription
    JournalKinesisStreamDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalKinesisStreamDescription, name: "member"))
    JournalS3ExportDescription.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:export_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "ExportId", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:export_creation_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExportCreationTime", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ExportStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:inclusive_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InclusiveStartTime", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:exclusive_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExclusiveEndTime", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:s3_export_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ExportConfiguration, name: "S3ExportConfiguration", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "OutputFormat"))
    JournalS3ExportDescription.type = Types::JournalS3ExportDescription
    JournalS3ExportList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalS3ExportDescription, name: "member"))
    KinesisConfiguration.add_member(:stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "StreamArn", traits: {"smithy.api#required" => {}}))
    KinesisConfiguration.add_member(:aggregation_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "AggregationEnabled"))
    KinesisConfiguration.type = Types::KinesisConfiguration
    LedgerEncryptionDescription.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn", traits: {"smithy.api#required" => {}}))
    LedgerEncryptionDescription.add_member(:encryption_status, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionStatus, name: "EncryptionStatus", traits: {"smithy.api#required" => {}}))
    LedgerEncryptionDescription.add_member(:inaccessible_kms_key_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InaccessibleKmsKeyDateTime"))
    LedgerEncryptionDescription.type = Types::LedgerEncryptionDescription
    LedgerList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerSummary, name: "member"))
    LedgerState.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    LedgerState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LedgerState.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    LedgerState.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETED", traits: {"smithy.api#enumValue" => "DELETED"}))
    LedgerSummary.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name"))
    LedgerSummary.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerState, name: "State"))
    LedgerSummary.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDateTime"))
    LedgerSummary.type = Types::LedgerSummary
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    LimitExceededException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    LimitExceededException.type = Types::LimitExceededException
    ListJournalKinesisStreamsForLedgerRequest.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListJournalKinesisStreamsForLedgerRequest.type = Types::ListJournalKinesisStreamsForLedgerRequest
    ListJournalKinesisStreamsForLedgerResponse.add_member(:streams, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalKinesisStreamDescriptionList, name: "Streams"))
    ListJournalKinesisStreamsForLedgerResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListJournalKinesisStreamsForLedgerResponse.type = Types::ListJournalKinesisStreamsForLedgerResponse
    ListJournalS3ExportsForLedgerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJournalS3ExportsForLedgerRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListJournalS3ExportsForLedgerRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListJournalS3ExportsForLedgerRequest.type = Types::ListJournalS3ExportsForLedgerRequest
    ListJournalS3ExportsForLedgerResponse.add_member(:journal_s3_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalS3ExportList, name: "JournalS3Exports"))
    ListJournalS3ExportsForLedgerResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListJournalS3ExportsForLedgerResponse.type = Types::ListJournalS3ExportsForLedgerResponse
    ListJournalS3ExportsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListJournalS3ExportsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListJournalS3ExportsRequest.type = Types::ListJournalS3ExportsRequest
    ListJournalS3ExportsResponse.add_member(:journal_s3_exports, ::Smithy::Schema::Shapes::MemberShape.new(target: JournalS3ExportList, name: "JournalS3Exports"))
    ListJournalS3ExportsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListJournalS3ExportsResponse.type = Types::ListJournalS3ExportsResponse
    ListLedgersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults", traits: {"smithy.api#httpQuery" => "max_results"}))
    ListLedgersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken", traits: {"smithy.api#httpQuery" => "next_token"}))
    ListLedgersRequest.type = Types::ListLedgersRequest
    ListLedgersResponse.add_member(:ledgers, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerList, name: "Ledgers"))
    ListLedgersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "NextToken"))
    ListLedgersResponse.type = Types::ListLedgersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OutputFormat.add_member(:ion_binary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ION_BINARY", traits: {"smithy.api#enumValue" => "ION_BINARY"}))
    OutputFormat.add_member(:ion_text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ION_TEXT", traits: {"smithy.api#enumValue" => "ION_TEXT"}))
    OutputFormat.add_member(:json, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON", traits: {"smithy.api#enumValue" => "JSON"}))
    PermissionsMode.add_member(:allow_all, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW_ALL", traits: {"smithy.api#enumValue" => "ALLOW_ALL"}))
    PermissionsMode.add_member(:standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STANDARD", traits: {"smithy.api#enumValue" => "STANDARD"}))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceAlreadyExistsException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceAlreadyExistsException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceInUseException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceInUseException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourceNotFoundException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePreconditionNotMetException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourcePreconditionNotMetException.add_member(:resource_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceType, name: "ResourceType"))
    ResourcePreconditionNotMetException.add_member(:resource_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "ResourceName"))
    ResourcePreconditionNotMetException.type = Types::ResourcePreconditionNotMetException
    S3EncryptionConfiguration.add_member(:object_encryption_type, ::Smithy::Schema::Shapes::MemberShape.new(target: S3ObjectEncryptionType, name: "ObjectEncryptionType", traits: {"smithy.api#required" => {}}))
    S3EncryptionConfiguration.add_member(:kms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "KmsKeyArn"))
    S3EncryptionConfiguration.type = Types::S3EncryptionConfiguration
    S3ExportConfiguration.add_member(:bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "Bucket", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "Prefix", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3EncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#required" => {}}))
    S3ExportConfiguration.type = Types::S3ExportConfiguration
    S3ObjectEncryptionType.add_member(:sse_kms, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_KMS", traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    S3ObjectEncryptionType.add_member(:sse_s3, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SSE_S3", traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3ObjectEncryptionType.add_member(:no_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_ENCRYPTION", traits: {"smithy.api#enumValue" => "NO_ENCRYPTION"}))
    StreamJournalToKinesisRequest.add_member(:ledger_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "LedgerName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "RoleArn", traits: {"smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags"))
    StreamJournalToKinesisRequest.add_member(:inclusive_start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "InclusiveStartTime", traits: {"smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:exclusive_end_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "ExclusiveEndTime"))
    StreamJournalToKinesisRequest.add_member(:kinesis_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisConfiguration, name: "KinesisConfiguration", traits: {"smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StreamName, name: "StreamName", traits: {"smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.type = Types::StreamJournalToKinesisRequest
    StreamJournalToKinesisResponse.add_member(:stream_id, ::Smithy::Schema::Shapes::MemberShape.new(target: UniqueId, name: "StreamId"))
    StreamJournalToKinesisResponse.type = Types::StreamJournalToKinesisResponse
    StreamStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamStatus.add_member(:completed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETED", traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StreamStatus.add_member(:canceled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANCELED", traits: {"smithy.api#enumValue" => "CANCELED"}))
    StreamStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamStatus.add_member(:impaired, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPAIRED", traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: Tags, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "key"))
    Tags.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "value"))
    UntagResourceRequest.add_member(:resource_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "ResourceArn", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLedgerPermissionsModeRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLedgerPermissionsModeRequest.add_member(:permissions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsMode, name: "PermissionsMode", traits: {"smithy.api#required" => {}}))
    UpdateLedgerPermissionsModeRequest.type = Types::UpdateLedgerPermissionsModeRequest
    UpdateLedgerPermissionsModeResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name"))
    UpdateLedgerPermissionsModeResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateLedgerPermissionsModeResponse.add_member(:permissions_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: PermissionsMode, name: "PermissionsMode"))
    UpdateLedgerPermissionsModeResponse.type = Types::UpdateLedgerPermissionsModeResponse
    UpdateLedgerRequest.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLedgerRequest.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    UpdateLedgerRequest.add_member(:kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: KmsKey, name: "KmsKey"))
    UpdateLedgerRequest.type = Types::UpdateLedgerRequest
    UpdateLedgerResponse.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerName, name: "Name"))
    UpdateLedgerResponse.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: Arn, name: "Arn"))
    UpdateLedgerResponse.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerState, name: "State"))
    UpdateLedgerResponse.add_member(:creation_date_time, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreationDateTime"))
    UpdateLedgerResponse.add_member(:deletion_protection, ::Smithy::Schema::Shapes::MemberShape.new(target: DeletionProtection, name: "DeletionProtection"))
    UpdateLedgerResponse.add_member(:encryption_description, ::Smithy::Schema::Shapes::MemberShape.new(target: LedgerEncryptionDescription, name: "EncryptionDescription"))
    UpdateLedgerResponse.type = Types::UpdateLedgerResponse
    ValueHolder.add_member(:ion_text, ::Smithy::Schema::Shapes::MemberShape.new(target: IonText, name: "IonText"))
    ValueHolder.type = Types::ValueHolder

    AmazonQLDB = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qldb#AmazonQLDB"
      service.name = "AmazonQLDB"
      service.version = "2019-01-02"
      service.traits = {"aws.api#service" => {"sdkId" => "QLDB", "arnNamespace" => "qldb", "cloudFormationName" => "QLDB", "cloudTrailEventSource" => "qldb.amazonaws.com", "endpointPrefix" => "qldb"}, "aws.auth#sigv4" => {"name" => "qldb"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon QLDB", "smithy.api#xmlNamespace" => {"uri" => "http://ledger.amazonaws.com/doc/2019-01-02/"}}
      service.add_operation(:cancel_journal_kinesis_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#CancelJournalKinesisStream"
        operation.name = "CancelJournalKinesisStream"
        operation.input = CancelJournalKinesisStreamRequest
        operation.output = CancelJournalKinesisStreamResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", "code" => 200}}
      end)
      service.add_operation(:create_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#CreateLedger"
        operation.name = "CreateLedger"
        operation.input = CreateLedgerRequest
        operation.output = CreateLedgerResponse
        operation.errors << InvalidParameterException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ResourceInUseException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers", "code" => 200}}
      end)
      service.add_operation(:delete_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DeleteLedger"
        operation.name = "DeleteLedger"
        operation.input = DeleteLedgerRequest
        operation.output = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.errors << InvalidParameterException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_journal_kinesis_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeJournalKinesisStream"
        operation.name = "DescribeJournalKinesisStream"
        operation.input = DescribeJournalKinesisStreamRequest
        operation.output = DescribeJournalKinesisStreamResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", "code" => 200}}
      end)
      service.add_operation(:describe_journal_s3_export, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeJournalS3Export"
        operation.name = "DescribeJournalS3Export"
        operation.input = DescribeJournalS3ExportRequest
        operation.output = DescribeJournalS3ExportResponse
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}/journal-s3-exports/{ExportId}", "code" => 200}}
      end)
      service.add_operation(:describe_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeLedger"
        operation.name = "DescribeLedger"
        operation.input = DescribeLedgerRequest
        operation.output = DescribeLedgerResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:export_journal_to_s3, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ExportJournalToS3"
        operation.name = "ExportJournalToS3"
        operation.input = ExportJournalToS3Request
        operation.output = ExportJournalToS3Response
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/journal-s3-exports", "code" => 200}}
      end)
      service.add_operation(:get_block, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetBlock"
        operation.name = "GetBlock"
        operation.input = GetBlockRequest
        operation.output = GetBlockResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/block", "code" => 200}}
      end)
      service.add_operation(:get_digest, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetDigest"
        operation.name = "GetDigest"
        operation.input = GetDigestRequest
        operation.output = GetDigestResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/digest", "code" => 200}}
      end)
      service.add_operation(:get_revision, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetRevision"
        operation.name = "GetRevision"
        operation.input = GetRevisionRequest
        operation.output = GetRevisionResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/revision", "code" => 200}}
      end)
      service.add_operation(:list_journal_kinesis_streams_for_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalKinesisStreamsForLedger"
        operation.name = "ListJournalKinesisStreamsForLedger"
        operation.input = ListJournalKinesisStreamsForLedgerRequest
        operation.output = ListJournalKinesisStreamsForLedgerResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalKinesisStreamsForLedger.new
      end)
      service.add_operation(:list_journal_s3_exports, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalS3Exports"
        operation.name = "ListJournalS3Exports"
        operation.input = ListJournalS3ExportsRequest
        operation.output = ListJournalS3ExportsResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/journal-s3-exports", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalS3Exports.new
      end)
      service.add_operation(:list_journal_s3_exports_for_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalS3ExportsForLedger"
        operation.name = "ListJournalS3ExportsForLedger"
        operation.input = ListJournalS3ExportsForLedgerRequest
        operation.output = ListJournalS3ExportsForLedgerResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}/journal-s3-exports", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalS3ExportsForLedger.new
      end)
      service.add_operation(:list_ledgers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListLedgers"
        operation.name = "ListLedgers"
        operation.input = ListLedgersRequest
        operation.output = ListLedgersResponse
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers", "code" => 200}}
        operation[:paginator] = Paginators::ListLedgers.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:stream_journal_to_kinesis, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#StreamJournalToKinesis"
        operation.name = "StreamJournalToKinesis"
        operation.input = StreamJournalToKinesisRequest
        operation.output = StreamJournalToKinesisResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.errors << ResourcePreconditionNotMetException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams", "code" => 200}}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_ledger, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UpdateLedger"
        operation.name = "UpdateLedger"
        operation.input = UpdateLedgerRequest
        operation.output = UpdateLedgerResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_ledger_permissions_mode, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UpdateLedgerPermissionsMode"
        operation.name = "UpdateLedgerPermissionsMode"
        operation.input = UpdateLedgerPermissionsModeRequest
        operation.output = UpdateLedgerPermissionsModeResponse
        operation.errors << InvalidParameterException
        operation.errors << ResourceNotFoundException
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ledgers/{Name}/permissions-mode", "code" => 200}}
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
