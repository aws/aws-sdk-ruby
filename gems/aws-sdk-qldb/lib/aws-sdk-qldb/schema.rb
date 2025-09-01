# frozen_string_literal: true

# This is generated code!

module Aws::QLDB
  # This module contains a schema composed of shapes used by the client.
  module Schema

    Arn = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#Arn', name: 'Arn', traits: {"smithy.api#length" => {"min" => 20, "max" => 1600}})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.qldb#Boolean', name: 'Boolean')
    CancelJournalKinesisStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#CancelJournalKinesisStreamRequest', name: 'CancelJournalKinesisStreamRequest')
    CancelJournalKinesisStreamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#CancelJournalKinesisStreamResponse', name: 'CancelJournalKinesisStreamResponse')
    CreateLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#CreateLedgerRequest', name: 'CreateLedgerRequest')
    CreateLedgerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#CreateLedgerResponse', name: 'CreateLedgerResponse')
    DeleteLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DeleteLedgerRequest', name: 'DeleteLedgerRequest')
    DeletionProtection = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.qldb#DeletionProtection', name: 'DeletionProtection')
    DescribeJournalKinesisStreamRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeJournalKinesisStreamRequest', name: 'DescribeJournalKinesisStreamRequest')
    DescribeJournalKinesisStreamResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeJournalKinesisStreamResponse', name: 'DescribeJournalKinesisStreamResponse')
    DescribeJournalS3ExportRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeJournalS3ExportRequest', name: 'DescribeJournalS3ExportRequest')
    DescribeJournalS3ExportResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeJournalS3ExportResponse', name: 'DescribeJournalS3ExportResponse')
    DescribeLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeLedgerRequest', name: 'DescribeLedgerRequest')
    DescribeLedgerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#DescribeLedgerResponse', name: 'DescribeLedgerResponse')
    Digest = Smithy::Schema::Shapes::BlobShape.new(id: 'com.amazonaws.qldb#Digest', name: 'Digest', traits: {"smithy.api#length" => {"min" => 32, "max" => 32}})
    EncryptionStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#EncryptionStatus', name: 'EncryptionStatus')
    ErrorCause = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#ErrorCause', name: 'ErrorCause')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#ErrorMessage', name: 'ErrorMessage')
    ExportJournalToS3Request = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ExportJournalToS3Request', name: 'ExportJournalToS3Request')
    ExportJournalToS3Response = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ExportJournalToS3Response', name: 'ExportJournalToS3Response')
    ExportStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#ExportStatus', name: 'ExportStatus')
    GetBlockRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetBlockRequest', name: 'GetBlockRequest')
    GetBlockResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetBlockResponse', name: 'GetBlockResponse')
    GetDigestRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetDigestRequest', name: 'GetDigestRequest')
    GetDigestResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetDigestResponse', name: 'GetDigestResponse')
    GetRevisionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetRevisionRequest', name: 'GetRevisionRequest')
    GetRevisionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#GetRevisionResponse', name: 'GetRevisionResponse')
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    IonText = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#IonText', name: 'IonText', traits: {"smithy.api#length" => {"min" => 1, "max" => 1048576}, "smithy.api#sensitive" => {}})
    JournalKinesisStreamDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#JournalKinesisStreamDescription', name: 'JournalKinesisStreamDescription')
    JournalKinesisStreamDescriptionList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldb#JournalKinesisStreamDescriptionList', name: 'JournalKinesisStreamDescriptionList')
    JournalS3ExportDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#JournalS3ExportDescription', name: 'JournalS3ExportDescription')
    JournalS3ExportList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldb#JournalS3ExportList', name: 'JournalS3ExportList')
    KinesisConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#KinesisConfiguration', name: 'KinesisConfiguration')
    KmsKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#KmsKey', name: 'KmsKey', traits: {"smithy.api#length" => {"min" => 0, "max" => 1600}})
    LedgerEncryptionDescription = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#LedgerEncryptionDescription', name: 'LedgerEncryptionDescription')
    LedgerList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldb#LedgerList', name: 'LedgerList')
    LedgerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#LedgerName', name: 'LedgerName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"})
    LedgerState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#LedgerState', name: 'LedgerState')
    LedgerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#LedgerSummary', name: 'LedgerSummary')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#LimitExceededException', name: 'LimitExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ListJournalKinesisStreamsForLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalKinesisStreamsForLedgerRequest', name: 'ListJournalKinesisStreamsForLedgerRequest')
    ListJournalKinesisStreamsForLedgerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalKinesisStreamsForLedgerResponse', name: 'ListJournalKinesisStreamsForLedgerResponse')
    ListJournalS3ExportsForLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalS3ExportsForLedgerRequest', name: 'ListJournalS3ExportsForLedgerRequest')
    ListJournalS3ExportsForLedgerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalS3ExportsForLedgerResponse', name: 'ListJournalS3ExportsForLedgerResponse')
    ListJournalS3ExportsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalS3ExportsRequest', name: 'ListJournalS3ExportsRequest')
    ListJournalS3ExportsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListJournalS3ExportsResponse', name: 'ListJournalS3ExportsResponse')
    ListLedgersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListLedgersRequest', name: 'ListLedgersRequest')
    ListLedgersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListLedgersResponse', name: 'ListLedgersResponse')
    ListTagsForResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListTagsForResourceRequest', name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ListTagsForResourceResponse', name: 'ListTagsForResourceResponse')
    MaxResults = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.qldb#MaxResults', name: 'MaxResults', traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 4, "max" => 1024}, "smithy.api#pattern" => "^[A-Za-z-0-9+/=]+$"})
    OutputFormat = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#OutputFormat', name: 'OutputFormat')
    ParameterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#ParameterName', name: 'ParameterName')
    PermissionsMode = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#PermissionsMode', name: 'PermissionsMode')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceInUseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ResourceInUseException', name: 'ResourceInUseException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourcePreconditionNotMetException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ResourcePreconditionNotMetException', name: 'ResourcePreconditionNotMetException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 412})
    ResourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#ResourceType', name: 'ResourceType')
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 3, "max" => 255}, "smithy.api#pattern" => "^[A-Za-z-0-9-_.]+$"})
    S3EncryptionConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#S3EncryptionConfiguration', name: 'S3EncryptionConfiguration')
    S3ExportConfiguration = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#S3ExportConfiguration', name: 'S3ExportConfiguration')
    S3ObjectEncryptionType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#S3ObjectEncryptionType', name: 'S3ObjectEncryptionType')
    S3Prefix = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#S3Prefix', name: 'S3Prefix', traits: {"smithy.api#length" => {"min" => 0, "max" => 128}})
    StreamJournalToKinesisRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#StreamJournalToKinesisRequest', name: 'StreamJournalToKinesisRequest')
    StreamJournalToKinesisResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#StreamJournalToKinesisResponse', name: 'StreamJournalToKinesisResponse')
    StreamName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#StreamName', name: 'StreamName', traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(?!^.*--)(?!^[0-9]+$)(?!^-)(?!.*-$)^[A-Za-z0-9-]+$"})
    StreamStatus = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.qldb#StreamStatus', name: 'StreamStatus')
    TagKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#TagKey', name: 'TagKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}})
    TagKeyList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.qldb#TagKeyList', name: 'TagKeyList', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#TagResourceRequest', name: 'TagResourceRequest')
    TagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#TagResourceResponse', name: 'TagResourceResponse')
    TagValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#TagValue', name: 'TagValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    Tags = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.qldb#Tags', name: 'Tags', traits: {"smithy.api#length" => {"min" => 0, "max" => 200}, "smithy.api#sparse" => {}})
    Timestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.qldb#Timestamp', name: 'Timestamp')
    UniqueId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.qldb#UniqueId', name: 'UniqueId', traits: {"smithy.api#length" => {"min" => 22, "max" => 22}, "smithy.api#pattern" => "^[A-Za-z-0-9]+$"})
    UntagResourceRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UntagResourceRequest', name: 'UntagResourceRequest')
    UntagResourceResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UntagResourceResponse', name: 'UntagResourceResponse')
    UpdateLedgerPermissionsModeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UpdateLedgerPermissionsModeRequest', name: 'UpdateLedgerPermissionsModeRequest')
    UpdateLedgerPermissionsModeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UpdateLedgerPermissionsModeResponse', name: 'UpdateLedgerPermissionsModeResponse')
    UpdateLedgerRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UpdateLedgerRequest', name: 'UpdateLedgerRequest')
    UpdateLedgerResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#UpdateLedgerResponse', name: 'UpdateLedgerResponse')
    ValueHolder = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.qldb#ValueHolder', name: 'ValueHolder', traits: {"smithy.api#sensitive" => {}})

    CancelJournalKinesisStreamRequest.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJournalKinesisStreamRequest.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'StreamId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to be\n         canceled.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    CancelJournalKinesisStreamRequest.type = Types::CancelJournalKinesisStreamRequest
    CancelJournalKinesisStreamResponse.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'StreamId', traits: {"smithy.api#documentation" => "<p>The UUID (Base62-encoded text) of the canceled QLDB journal stream.</p>"}))
    CancelJournalKinesisStreamResponse.type = Types::CancelJournalKinesisStreamResponse
    CreateLedgerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger that you want to create. The name must be unique among all of the\n         ledgers in your Amazon Web Services account in the current Region.</p>\n         <p>Naming constraints for ledger names are defined in <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a>\n         in the <i>Amazon QLDB Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    CreateLedgerRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to add as tags to the ledger that you want to create. Tag keys are\n         case sensitive. Tag values are case sensitive and can be null.</p>"}))
    CreateLedgerRequest.add_member(:permissions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsMode, location_name: 'PermissionsMode', traits: {"smithy.api#documentation" => "<p>The permissions mode to assign to the ledger that you want to create. This parameter can\n         have one of the following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with\n               API-level granularity for ledgers.</p>\n               <p>This mode allows users who have the <code>SendCommand</code> API permission for\n               this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables\n               in the specified ledger. This mode disregards any table-level or command-level IAM\n               permissions policies that you create for the ledger.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that\n               enables access control with finer granularity for ledgers, tables, and PartiQL\n               commands.</p>\n               <p>By default, this mode denies all user requests to run any PartiQL commands on any\n               tables in this ledger. To allow PartiQL commands to run, you must create IAM\n               permissions policies for specific table resources and PartiQL actions, in addition to\n               the <code>SendCommand</code> API permission for the ledger. For information, see\n                  <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html\">Getting\n                  started with the standard permissions mode</a> in the <i>Amazon QLDB\n                  Developer Guide</i>.</p>\n            </li>\n         </ul>\n         <note>\n            <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize\n            the security of your ledger data.</p>\n         </note>", "smithy.api#required" => {}}))
    CreateLedgerRequest.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtection, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the ledger is protected from being deleted by any user. If not defined during\n      ledger creation, this feature is enabled (<code>true</code>) by default.</p>\n         <p>If deletion protection is enabled, you must first disable it before you can delete the\n      ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>"}))
    CreateLedgerRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For\n         more information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html\">Encryption at rest</a> in\n         the <i>Amazon QLDB Developer Guide</i>.</p>\n         <p>Use one of the following options to specify this parameter:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services\n               on your behalf.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Undefined</b>: By default, use an Amazon Web Services owned KMS\n               key.</p>\n            </li>\n            <li>\n               <p>\n                  <b>A valid symmetric customer managed KMS key</b>: Use\n               the specified symmetric encryption KMS key in your account that you create, own, and\n               manage.</p>\n               <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer\n                  Guide</i>.</p>\n            </li>\n         </ul>\n         <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name\n         (ARN), alias name, or alias ARN. When using an alias name, prefix it with\n            <code>\"alias/\"</code>. To specify a key in a different Amazon Web Services account, you must use the key\n         ARN or alias ARN.</p>\n         <p>For example:</p>\n         <ul>\n            <li>\n               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Key ARN:\n                  <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias name: <code>alias/ExampleAlias</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias ARN:\n               <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id\">Key identifiers (KeyId)</a> in\n         the <i>Key Management Service Developer Guide</i>.</p>"}))
    CreateLedgerRequest.type = Types::CreateLedgerRequest
    CreateLedgerResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>"}))
    CreateLedgerResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ledger.</p>"}))
    CreateLedgerResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the ledger.</p>"}))
    CreateLedgerResponse.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format\n         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"}))
    CreateLedgerResponse.add_member(:permissions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsMode, location_name: 'PermissionsMode', traits: {"smithy.api#documentation" => "<p>The permissions mode of the ledger that you created.</p>"}))
    CreateLedgerResponse.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtection, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the ledger is protected from being deleted by any user. If not defined during\n      ledger creation, this feature is enabled (<code>true</code>) by default.</p>\n         <p>If deletion protection is enabled, you must first disable it before you can delete the\n      ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>"}))
    CreateLedgerResponse.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The ARN of the customer managed KMS key that the ledger uses for encryption at rest. If\n         this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key for encryption.</p>"}))
    CreateLedgerResponse.type = Types::CreateLedgerResponse
    DeleteLedgerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger that you want to delete.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteLedgerRequest.type = Types::DeleteLedgerRequest
    DescribeJournalKinesisStreamRequest.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalKinesisStreamRequest.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'StreamId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the QLDB journal stream to\n         describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalKinesisStreamRequest.type = Types::DescribeJournalKinesisStreamRequest
    DescribeJournalKinesisStreamResponse.add_member(:stream, Smithy::Schema::Shapes::ShapeRef.new(shape: JournalKinesisStreamDescription, location_name: 'Stream', traits: {"smithy.api#documentation" => "<p>Information about the QLDB journal stream returned by a\n            <code>DescribeJournalS3Export</code> request.</p>"}))
    DescribeJournalKinesisStreamResponse.type = Types::DescribeJournalKinesisStreamResponse
    DescribeJournalS3ExportRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalS3ExportRequest.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the journal export job to\n         describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeJournalS3ExportRequest.type = Types::DescribeJournalS3ExportRequest
    DescribeJournalS3ExportResponse.add_member(:export_description, Smithy::Schema::Shapes::ShapeRef.new(shape: JournalS3ExportDescription, location_name: 'ExportDescription', traits: {"smithy.api#documentation" => "<p>Information about the journal export job returned by a\n            <code>DescribeJournalS3Export</code> request.</p>", "smithy.api#required" => {}}))
    DescribeJournalS3ExportResponse.type = Types::DescribeJournalS3ExportResponse
    DescribeLedgerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger that you want to describe.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeLedgerRequest.type = Types::DescribeLedgerRequest
    DescribeLedgerResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>"}))
    DescribeLedgerResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ledger.</p>"}))
    DescribeLedgerResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the ledger.</p>"}))
    DescribeLedgerResponse.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format\n         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"}))
    DescribeLedgerResponse.add_member(:permissions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsMode, location_name: 'PermissionsMode', traits: {"smithy.api#documentation" => "<p>The permissions mode of the ledger.</p>"}))
    DescribeLedgerResponse.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtection, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the ledger is protected from being deleted by any user. If not defined during\n      ledger creation, this feature is enabled (<code>true</code>) by default.</p>\n         <p>If deletion protection is enabled, you must first disable it before you can delete the\n      ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>"}))
    DescribeLedgerResponse.add_member(:encryption_description, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerEncryptionDescription, location_name: 'EncryptionDescription', traits: {"smithy.api#documentation" => "<p>Information about the encryption of data at rest in the ledger. This includes the\n         current status, the KMS key, and when the key became inaccessible (in the case of an\n         error). If this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key for encryption.</p>"}))
    DescribeLedgerResponse.type = Types::DescribeLedgerResponse
    EncryptionStatus.add_member(:enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ENABLED', traits: {"smithy.api#enumValue" => "ENABLED"}))
    EncryptionStatus.add_member(:updating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'UPDATING', traits: {"smithy.api#enumValue" => "UPDATING"}))
    EncryptionStatus.add_member(:kms_key_inaccessible, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KMS_KEY_INACCESSIBLE', traits: {"smithy.api#enumValue" => "KMS_KEY_INACCESSIBLE"}))
    ErrorCause.add_member(:kinesis_stream_not_found, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'KINESIS_STREAM_NOT_FOUND', traits: {"smithy.api#enumValue" => "KINESIS_STREAM_NOT_FOUND"}))
    ErrorCause.add_member(:iam_permission_revoked, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IAM_PERMISSION_REVOKED', traits: {"smithy.api#enumValue" => "IAM_PERMISSION_REVOKED"}))
    ExportJournalToS3Request.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:inclusive_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InclusiveStartTime', traits: {"smithy.api#documentation" => "<p>The inclusive start date and time for the range of journal contents to export.</p>\n         <p>The <code>InclusiveStartTime</code> must be in <code>ISO 8601</code> date and time\n         format and in Universal Coordinated Time (UTC). For example:\n            <code>2019-06-13T21:36:34Z</code>.</p>\n         <p>The <code>InclusiveStartTime</code> must be before <code>ExclusiveEndTime</code>.</p>\n         <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's\n            <code>CreationDateTime</code>, Amazon QLDB defaults it to the ledger's\n            <code>CreationDateTime</code>.</p>", "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:exclusive_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExclusiveEndTime', traits: {"smithy.api#documentation" => "<p>The exclusive end date and time for the range of journal contents to export.</p>\n         <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format\n         and in Universal Coordinated Time (UTC). For example:\n         <code>2019-06-13T21:36:34Z</code>.</p>\n         <p>The <code>ExclusiveEndTime</code> must be less than or equal to the current UTC date and\n         time.</p>", "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:s3_export_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExportConfiguration, location_name: 'S3ExportConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the Amazon S3 bucket destination for your export\n         request.</p>", "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a\n         journal export job to do the following:</p>\n         <ul>\n            <li>\n               <p>Write objects into your Amazon S3 bucket.</p>\n            </li>\n            <li>\n               <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side\n               encryption of your exported data.</p>\n            </li>\n         </ul>\n         <p>To pass a role to QLDB when requesting a journal export, you must have permissions to\n         perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for\n         all journal export requests.</p>", "smithy.api#required" => {}}))
    ExportJournalToS3Request.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'OutputFormat', traits: {"smithy.api#documentation" => "<p>The output format of your exported journal data. A journal export job can write the data\n         objects in either the text or binary representation of <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/ion.html\">Amazon Ion</a> format, or in <a href=\"https://jsonlines.org/\">JSON Lines</a> text format.</p>\n         <p>Default: <code>ION_TEXT</code>\n         </p>\n         <p>In JSON Lines format, each journal block in an exported data object is a valid JSON\n         object that is delimited by a newline. You can use this format to directly integrate JSON\n         exports with analytics tools such as Amazon Athena and Glue\n         because these services can parse newline-delimited JSON automatically.</p>"}))
    ExportJournalToS3Request.type = Types::ExportJournalToS3Request
    ExportJournalToS3Response.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) that QLDB assigns to each journal export\n         job.</p>\n         <p>To describe your export request and check the status of the job, you can use\n            <code>ExportId</code> to call <code>DescribeJournalS3Export</code>.</p>", "smithy.api#required" => {}}))
    ExportJournalToS3Response.type = Types::ExportJournalToS3Response
    ExportStatus.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IN_PROGRESS', traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    ExportStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    ExportStatus.add_member(:cancelled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELLED', traits: {"smithy.api#enumValue" => "CANCELLED"}))
    GetBlockRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetBlockRequest.add_member(:block_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'BlockAddress', traits: {"smithy.api#documentation" => "<p>The location of the block that you want to request. An address is an Amazon Ion\n         structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>\n         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code>.</p>", "smithy.api#required" => {}}))
    GetBlockRequest.add_member(:digest_tip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'DigestTipAddress', traits: {"smithy.api#documentation" => "<p>The latest block location covered by the digest for which to request a proof. An address\n         is an Amazon Ion structure that has two fields: <code>strandId</code> and\n            <code>sequenceNo</code>.</p>\n         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code>.</p>"}))
    GetBlockRequest.type = Types::GetBlockRequest
    GetBlockResponse.add_member(:block, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'Block', traits: {"smithy.api#documentation" => "<p>The block data object in Amazon Ion format.</p>", "smithy.api#required" => {}}))
    GetBlockResponse.add_member(:proof, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'Proof', traits: {"smithy.api#documentation" => "<p>The proof object in Amazon Ion format returned by a <code>GetBlock</code> request. A\n         proof contains the list of hash values required to recalculate the specified digest using a\n         Merkle tree, starting with the specified block.</p>"}))
    GetBlockResponse.type = Types::GetBlockResponse
    GetDigestRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetDigestRequest.type = Types::GetDigestRequest
    GetDigestResponse.add_member(:digest, Smithy::Schema::Shapes::ShapeRef.new(shape: Digest, location_name: 'Digest', traits: {"smithy.api#documentation" => "<p>The 256-bit hash value representing the digest returned by a <code>GetDigest</code>\n         request.</p>", "smithy.api#required" => {}}))
    GetDigestResponse.add_member(:digest_tip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'DigestTipAddress', traits: {"smithy.api#documentation" => "<p>The latest block location covered by the digest that you requested. An address is an\n         Amazon Ion structure that has two fields: <code>strandId</code> and\n         <code>sequenceNo</code>.</p>", "smithy.api#required" => {}}))
    GetDigestResponse.type = Types::GetDigestResponse
    GetRevisionRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:block_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'BlockAddress', traits: {"smithy.api#documentation" => "<p>The block location of the document revision to be verified. An address is an Amazon Ion\n         structure that has two fields: <code>strandId</code> and <code>sequenceNo</code>.</p>\n         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}</code>.</p>", "smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:document_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'DocumentId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the document to be verified.</p>", "smithy.api#required" => {}}))
    GetRevisionRequest.add_member(:digest_tip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'DigestTipAddress', traits: {"smithy.api#documentation" => "<p>The latest block location covered by the digest for which to request a proof. An address\n         is an Amazon Ion structure that has two fields: <code>strandId</code> and\n            <code>sequenceNo</code>.</p>\n         <p>For example: <code>{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}</code>.</p>"}))
    GetRevisionRequest.type = Types::GetRevisionRequest
    GetRevisionResponse.add_member(:proof, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'Proof', traits: {"smithy.api#documentation" => "<p>The proof object in Amazon Ion format returned by a <code>GetRevision</code> request. A\n         proof contains the list of hash values that are required to recalculate the specified\n         digest using a Merkle tree, starting with the specified document revision.</p>"}))
    GetRevisionResponse.add_member(:revision, Smithy::Schema::Shapes::ShapeRef.new(shape: ValueHolder, location_name: 'Revision', traits: {"smithy.api#documentation" => "<p>The document revision data object in Amazon Ion format.</p>", "smithy.api#required" => {}}))
    GetRevisionResponse.type = Types::GetRevisionResponse
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidParameterException.add_member(:parameter_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ParameterName, location_name: 'ParameterName', traits: {"smithy.api#documentation" => "<p>The name of the invalid parameter.</p>"}))
    InvalidParameterException.type = Types::InvalidParameterException
    JournalKinesisStreamDescription.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the QLDB journal stream was created.\n         (Epoch time format is the number of seconds elapsed since 12:00:00 AM January 1, 1970\n         UTC.)</p>"}))
    JournalKinesisStreamDescription.add_member(:inclusive_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InclusiveStartTime', traits: {"smithy.api#documentation" => "<p>The inclusive start date and time from which to start streaming journal data.</p>"}))
    JournalKinesisStreamDescription.add_member(:exclusive_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExclusiveEndTime', traits: {"smithy.api#documentation" => "<p>The exclusive date and time that specifies when the stream ends. If this parameter is\n         undefined, the stream runs indefinitely until you cancel it.</p>"}))
    JournalKinesisStreamDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a\n         journal stream to write data records to a Kinesis Data Streams resource.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'StreamId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the QLDB journal stream.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the QLDB journal stream.</p>"}))
    JournalKinesisStreamDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the QLDB journal stream.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:kinesis_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisConfiguration, location_name: 'KinesisConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the Amazon Kinesis Data Streams destination for a QLDB journal\n         stream.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.add_member(:error_cause, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCause, location_name: 'ErrorCause', traits: {"smithy.api#documentation" => "<p>The error message that describes the reason that a stream has a status of\n            <code>IMPAIRED</code> or <code>FAILED</code>. This is not applicable to streams that\n         have other status values.</p>"}))
    JournalKinesisStreamDescription.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The user-defined name of the QLDB journal stream.</p>", "smithy.api#required" => {}}))
    JournalKinesisStreamDescription.type = Types::JournalKinesisStreamDescription
    JournalKinesisStreamDescriptionList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JournalKinesisStreamDescription)
    JournalS3ExportDescription.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:export_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'ExportId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) of the journal export job.</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:export_creation_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExportCreationTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the export job was created. (Epoch time\n         format is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ExportStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The current state of the journal export job.</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:inclusive_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InclusiveStartTime', traits: {"smithy.api#documentation" => "<p>The inclusive start date and time for the range of journal contents that was specified\n         in the original export request.</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:exclusive_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExclusiveEndTime', traits: {"smithy.api#documentation" => "<p>The exclusive end date and time for the range of journal contents that was specified in\n         the original export request.</p>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:s3_export_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ExportConfiguration, location_name: 'S3ExportConfiguration', traits: {"smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a\n         journal export job to do the following:</p>\n         <ul>\n            <li>\n               <p>Write objects into your Amazon Simple Storage Service (Amazon S3) bucket.</p>\n            </li>\n            <li>\n               <p>(Optional) Use your customer managed key in Key Management Service (KMS) for server-side\n               encryption of your exported data.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    JournalS3ExportDescription.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'OutputFormat', traits: {"smithy.api#documentation" => "<p>The output format of the exported journal data.</p>"}))
    JournalS3ExportDescription.type = Types::JournalS3ExportDescription
    JournalS3ExportList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: JournalS3ExportDescription)
    KinesisConfiguration.add_member(:stream_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'StreamArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the Kinesis Data Streams resource.</p>", "smithy.api#required" => {}}))
    KinesisConfiguration.add_member(:aggregation_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'AggregationEnabled', traits: {"smithy.api#documentation" => "<p>Enables QLDB to publish multiple data records in a single Kinesis Data Streams record, increasing the\n         number of records sent per API call.</p>\n         <p>Default: <code>True</code>\n         </p>\n         <important>\n            <p>Record aggregation has important implications for processing records and requires\n            de-aggregation in your stream consumer. To learn more, see <a href=\"https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-concepts.html\">KPL Key Concepts</a> and\n               <a href=\"https://docs.aws.amazon.com/streams/latest/dev/kinesis-kpl-consumer-deaggregation.html\">Consumer\n               De-aggregation</a> in the <i>Amazon Kinesis Data Streams Developer Guide</i>.</p>\n         </important>"}))
    KinesisConfiguration.type = Types::KinesisConfiguration
    LedgerEncryptionDescription.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the customer managed KMS key that the ledger uses for\n         encryption at rest. If this parameter is undefined, the ledger uses an Amazon Web Services owned KMS key\n         for encryption. It will display <code>AWS_OWNED_KMS_KEY</code> when updating the ledger's encryption configuration to the Amazon Web Services owned KMS key.</p>", "smithy.api#required" => {}}))
    LedgerEncryptionDescription.add_member(:encryption_status, Smithy::Schema::Shapes::ShapeRef.new(shape: EncryptionStatus, location_name: 'EncryptionStatus', traits: {"smithy.api#documentation" => "<p>The current state of encryption at rest for the ledger. This can be one of the following\n         values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ENABLED</code>: Encryption is fully enabled using the specified key.</p>\n            </li>\n            <li>\n               <p>\n                  <code>UPDATING</code>: The ledger is actively processing the specified key\n               change.</p>\n               <p>Key changes in QLDB are asynchronous. The ledger is fully accessible without any\n               performance impact while the key change is being processed. The amount of time it\n               takes to update a key varies depending on the ledger size.</p>\n            </li>\n            <li>\n               <p>\n                  <code>KMS_KEY_INACCESSIBLE</code>: The specified customer managed KMS key is not\n               accessible, and the ledger is impaired. Either the key was disabled or deleted, or\n               the grants on the key were revoked. When a ledger is impaired, it is not accessible\n               and does not accept any read or write requests.</p>\n               <p>An impaired ledger automatically returns to an active state after you restore the\n               grants on the key, or re-enable the key that was disabled. However, deleting a\n               customer managed KMS key is irreversible. After a key is deleted, you can no longer\n               access the ledgers that are protected with that key, and the data becomes\n               unrecoverable permanently.</p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    LedgerEncryptionDescription.add_member(:inaccessible_kms_key_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InaccessibleKmsKeyDateTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the KMS key first became inaccessible,\n         in the case of an error. (Epoch time format is the number of seconds that have elapsed\n         since 12:00:00 AM January 1, 1970 UTC.)</p>\n         <p>This parameter is undefined if the KMS key is accessible.</p>"}))
    LedgerEncryptionDescription.type = Types::LedgerEncryptionDescription
    LedgerList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerSummary)
    LedgerState.add_member(:creating, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CREATING', traits: {"smithy.api#enumValue" => "CREATING"}))
    LedgerState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    LedgerState.add_member(:deleting, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETING', traits: {"smithy.api#enumValue" => "DELETING"}))
    LedgerState.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'DELETED', traits: {"smithy.api#enumValue" => "DELETED"}))
    LedgerSummary.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>"}))
    LedgerSummary.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the ledger.</p>"}))
    LedgerSummary.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format\n         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"}))
    LedgerSummary.type = Types::LedgerSummary
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    LimitExceededException.type = Types::LimitExceededException
    ListJournalKinesisStreamsForLedgerRequest.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single\n            <code>ListJournalKinesisStreamsForLedger</code> request. (The actual number of results\n         returned might be fewer.)</p>", "smithy.api#httpQuery" => "max_results"}))
    ListJournalKinesisStreamsForLedgerRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token, indicating that you want to retrieve the next page of results. If\n         you received a value for <code>NextToken</code> in the response from a previous\n            <code>ListJournalKinesisStreamsForLedger</code> call, you should use that value as input\n         here.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListJournalKinesisStreamsForLedgerRequest.type = Types::ListJournalKinesisStreamsForLedgerRequest
    ListJournalKinesisStreamsForLedgerResponse.add_member(:streams, Smithy::Schema::Shapes::ShapeRef.new(shape: JournalKinesisStreamDescriptionList, location_name: 'Streams', traits: {"smithy.api#documentation" => "<p>The QLDB journal streams that are currently associated with the given ledger.</p>"}))
    ListJournalKinesisStreamsForLedgerResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<ul>\n            <li>\n               <p>If <code>NextToken</code> is empty, the last page of results has been processed\n               and there are no more results to be retrieved.</p>\n            </li>\n            <li>\n               <p>If <code>NextToken</code> is <i>not</i> empty, more results are\n               available. To retrieve the next page of results, use the value of\n                  <code>NextToken</code> in a subsequent\n                  <code>ListJournalKinesisStreamsForLedger</code> call.</p>\n            </li>\n         </ul>"}))
    ListJournalKinesisStreamsForLedgerResponse.type = Types::ListJournalKinesisStreamsForLedgerResponse
    ListJournalS3ExportsForLedgerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListJournalS3ExportsForLedgerRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single\n            <code>ListJournalS3ExportsForLedger</code> request. (The actual number of results\n         returned might be fewer.)</p>", "smithy.api#httpQuery" => "max_results"}))
    ListJournalS3ExportsForLedgerRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token, indicating that you want to retrieve the next page of results. If\n         you received a value for <code>NextToken</code> in the response from a previous\n            <code>ListJournalS3ExportsForLedger</code> call, then you should use that value as input\n         here.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListJournalS3ExportsForLedgerRequest.type = Types::ListJournalS3ExportsForLedgerRequest
    ListJournalS3ExportsForLedgerResponse.add_member(:journal_s3_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: JournalS3ExportList, location_name: 'JournalS3Exports', traits: {"smithy.api#documentation" => "<p>The journal export jobs that are currently associated with the specified ledger.</p>"}))
    ListJournalS3ExportsForLedgerResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<ul>\n            <li>\n               <p>If <code>NextToken</code> is empty, then the last page of results has been\n               processed and there are no more results to be retrieved.</p>\n            </li>\n            <li>\n               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more\n               results available. To retrieve the next page of results, use the value of\n                  <code>NextToken</code> in a subsequent <code>ListJournalS3ExportsForLedger</code>\n               call.</p>\n            </li>\n         </ul>"}))
    ListJournalS3ExportsForLedgerResponse.type = Types::ListJournalS3ExportsForLedgerResponse
    ListJournalS3ExportsRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single <code>ListJournalS3Exports</code>\n         request. (The actual number of results returned might be fewer.)</p>", "smithy.api#httpQuery" => "max_results"}))
    ListJournalS3ExportsRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token, indicating that you want to retrieve the next page of results. If\n         you received a value for <code>NextToken</code> in the response from a previous\n            <code>ListJournalS3Exports</code> call, then you should use that value as input\n         here.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListJournalS3ExportsRequest.type = Types::ListJournalS3ExportsRequest
    ListJournalS3ExportsResponse.add_member(:journal_s3_exports, Smithy::Schema::Shapes::ShapeRef.new(shape: JournalS3ExportList, location_name: 'JournalS3Exports', traits: {"smithy.api#documentation" => "<p>The journal export jobs for all ledgers that are associated with the current\n         Amazon Web Services account and Region.</p>"}))
    ListJournalS3ExportsResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<ul>\n            <li>\n               <p>If <code>NextToken</code> is empty, then the last page of results has been\n               processed and there are no more results to be retrieved.</p>\n            </li>\n            <li>\n               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more\n               results available. To retrieve the next page of results, use the value of\n                  <code>NextToken</code> in a subsequent <code>ListJournalS3Exports</code>\n               call.</p>\n            </li>\n         </ul>"}))
    ListJournalS3ExportsResponse.type = Types::ListJournalS3ExportsResponse
    ListLedgersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: 'MaxResults', traits: {"smithy.api#documentation" => "<p>The maximum number of results to return in a single <code>ListLedgers</code> request.\n         (The actual number of results returned might be fewer.)</p>", "smithy.api#httpQuery" => "max_results"}))
    ListLedgersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token, indicating that you want to retrieve the next page of results. If\n         you received a value for <code>NextToken</code> in the response from a previous\n            <code>ListLedgers</code> call, then you should use that value as input here.</p>", "smithy.api#httpQuery" => "next_token"}))
    ListLedgersRequest.type = Types::ListLedgersRequest
    ListLedgersResponse.add_member(:ledgers, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerList, location_name: 'Ledgers', traits: {"smithy.api#documentation" => "<p>The ledgers that are associated with the current Amazon Web Services account and Region.</p>"}))
    ListLedgersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'NextToken', traits: {"smithy.api#documentation" => "<p>A pagination token, indicating whether there are more results available:</p>\n         <ul>\n            <li>\n               <p>If <code>NextToken</code> is empty, then the last page of results has been\n               processed and there are no more results to be retrieved.</p>\n            </li>\n            <li>\n               <p>If <code>NextToken</code> is <i>not</i> empty, then there are more\n               results available. To retrieve the next page of results, use the value of\n                  <code>NextToken</code> in a subsequent <code>ListLedgers</code> call.</p>\n            </li>\n         </ul>"}))
    ListLedgersResponse.type = Types::ListLedgersResponse
    ListTagsForResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for which to list the tags. For example:</p>\n         <p>\n            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The tags that are currently associated with the specified Amazon QLDB resource.</p>"}))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    OutputFormat.add_member(:ion_binary, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ION_BINARY', traits: {"smithy.api#enumValue" => "ION_BINARY"}))
    OutputFormat.add_member(:ion_text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ION_TEXT', traits: {"smithy.api#enumValue" => "ION_TEXT"}))
    OutputFormat.add_member(:json, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'JSON', traits: {"smithy.api#enumValue" => "JSON"}))
    PermissionsMode.add_member(:allow_all, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ALLOW_ALL', traits: {"smithy.api#enumValue" => "ALLOW_ALL"}))
    PermissionsMode.add_member(:standard, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'STANDARD', traits: {"smithy.api#enumValue" => "STANDARD"}))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceAlreadyExistsException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourceAlreadyExistsException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceInUseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceInUseException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourceInUseException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourceNotFoundException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ResourcePreconditionNotMetException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourcePreconditionNotMetException.add_member(:resource_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceType, location_name: 'ResourceType', traits: {"smithy.api#documentation" => "<p>The type of resource.</p>"}))
    ResourcePreconditionNotMetException.add_member(:resource_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'ResourceName', traits: {"smithy.api#documentation" => "<p>The name of the resource.</p>"}))
    ResourcePreconditionNotMetException.type = Types::ResourcePreconditionNotMetException
    S3EncryptionConfiguration.add_member(:object_encryption_type, Smithy::Schema::Shapes::ShapeRef.new(shape: S3ObjectEncryptionType, location_name: 'ObjectEncryptionType', traits: {"smithy.api#documentation" => "<p>The Amazon S3 object encryption type.</p>\n         <p>To learn more about server-side encryption options in Amazon S3, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/serv-side-encryption.html\">Protecting Data\n            Using Server-Side Encryption</a> in the <i>Amazon S3 Developer\n         Guide</i>.</p>", "smithy.api#required" => {}}))
    S3EncryptionConfiguration.add_member(:kms_key_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'KmsKeyArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of a symmetric encryption key in Key Management Service (KMS). Amazon S3\n         does not support asymmetric KMS keys.</p>\n         <p>You must provide a <code>KmsKeyArn</code> if you specify <code>SSE_KMS</code> as the\n            <code>ObjectEncryptionType</code>.</p>\n         <p>\n            <code>KmsKeyArn</code> is not required if you specify <code>SSE_S3</code> as the\n            <code>ObjectEncryptionType</code>.</p>"}))
    S3EncryptionConfiguration.type = Types::S3EncryptionConfiguration
    S3ExportConfiguration.add_member(:bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 'Bucket', traits: {"smithy.api#documentation" => "<p>The Amazon S3 bucket name in which a journal export job writes the journal contents.</p>\n         <p>The bucket name must comply with the Amazon S3 bucket naming conventions. For more\n         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html\">Bucket Restrictions and\n            Limitations</a> in the <i>Amazon S3 Developer Guide</i>.</p>", "smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:prefix, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Prefix, location_name: 'Prefix', traits: {"smithy.api#documentation" => "<p>The prefix for the Amazon S3 bucket in which a journal export job writes the journal\n         contents.</p>\n         <p>The prefix must comply with Amazon S3 key naming rules and restrictions. For more\n         information, see <a href=\"https://docs.aws.amazon.com/AmazonS3/latest/dev/UsingMetadata.html\">Object Key and Metadata</a> in the <i>Amazon S3 Developer\n         Guide</i>.</p>\n         <p>The following are examples of valid <code>Prefix</code> values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>JournalExports-ForMyLedger/Testing/</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>JournalExports</code>\n               </p>\n            </li>\n            <li>\n               <p>\n                  <code>My:Tests/</code>\n               </p>\n            </li>\n         </ul>", "smithy.api#required" => {}}))
    S3ExportConfiguration.add_member(:encryption_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: S3EncryptionConfiguration, location_name: 'EncryptionConfiguration', traits: {"smithy.api#documentation" => "<p>The encryption settings that are used by a journal export job to write data in an Amazon S3\n         bucket.</p>", "smithy.api#required" => {}}))
    S3ExportConfiguration.type = Types::S3ExportConfiguration
    S3ObjectEncryptionType.add_member(:sse_kms, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_KMS', traits: {"smithy.api#enumValue" => "SSE_KMS"}))
    S3ObjectEncryptionType.add_member(:sse_s3, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'SSE_S3', traits: {"smithy.api#enumValue" => "SSE_S3"}))
    S3ObjectEncryptionType.add_member(:no_encryption, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'NO_ENCRYPTION', traits: {"smithy.api#enumValue" => "NO_ENCRYPTION"}))
    StreamJournalToKinesisRequest.add_member(:ledger_name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'LedgerName', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:role_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'RoleArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the IAM role that grants QLDB permissions for a\n         journal stream to write data records to a Kinesis Data Streams resource.</p>\n         <p>To pass a role to QLDB when requesting a journal stream, you must have permissions to\n         perform the <code>iam:PassRole</code> action on the IAM role resource. This is required for\n         all journal stream requests.</p>", "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to add as tags to the stream that you want to create. Tag keys are\n         case sensitive. Tag values are case sensitive and can be null.</p>"}))
    StreamJournalToKinesisRequest.add_member(:inclusive_start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'InclusiveStartTime', traits: {"smithy.api#documentation" => "<p>The inclusive start date and time from which to start streaming journal data. This\n         parameter must be in <code>ISO 8601</code> date and time format and in Universal\n         Coordinated Time (UTC). For example: <code>2019-06-13T21:36:34Z</code>.</p>\n         <p>The <code>InclusiveStartTime</code> cannot be in the future and must be before\n            <code>ExclusiveEndTime</code>.</p>\n         <p>If you provide an <code>InclusiveStartTime</code> that is before the ledger's\n            <code>CreationDateTime</code>, QLDB effectively defaults it to the ledger's\n            <code>CreationDateTime</code>.</p>", "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:exclusive_end_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'ExclusiveEndTime', traits: {"smithy.api#documentation" => "<p>The exclusive date and time that specifies when the stream ends. If you don't define\n         this parameter, the stream runs indefinitely until you cancel it.</p>\n         <p>The <code>ExclusiveEndTime</code> must be in <code>ISO 8601</code> date and time format\n         and in Universal Coordinated Time (UTC). For example:\n         <code>2019-06-13T21:36:34Z</code>.</p>"}))
    StreamJournalToKinesisRequest.add_member(:kinesis_configuration, Smithy::Schema::Shapes::ShapeRef.new(shape: KinesisConfiguration, location_name: 'KinesisConfiguration', traits: {"smithy.api#documentation" => "<p>The configuration settings of the Kinesis Data Streams destination for your stream request.</p>", "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.add_member(:stream_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StreamName, location_name: 'StreamName', traits: {"smithy.api#documentation" => "<p>The name that you want to assign to the QLDB journal stream. User-defined names can\n         help identify and indicate the purpose of a stream.</p>\n         <p>Your stream name must be unique among other <i>active</i> streams for a\n         given ledger. Stream names have the same naming constraints as ledger names, as defined in\n            <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/limits.html#limits.naming\">Quotas in Amazon QLDB</a> in the <i>Amazon QLDB Developer\n         Guide</i>.</p>", "smithy.api#required" => {}}))
    StreamJournalToKinesisRequest.type = Types::StreamJournalToKinesisRequest
    StreamJournalToKinesisResponse.add_member(:stream_id, Smithy::Schema::Shapes::ShapeRef.new(shape: UniqueId, location_name: 'StreamId', traits: {"smithy.api#documentation" => "<p>The UUID (represented in Base62-encoded text) that QLDB assigns to each QLDB journal\n         stream.</p>"}))
    StreamJournalToKinesisResponse.type = Types::StreamJournalToKinesisResponse
    StreamStatus.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ACTIVE', traits: {"smithy.api#enumValue" => "ACTIVE"}))
    StreamStatus.add_member(:completed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'COMPLETED', traits: {"smithy.api#enumValue" => "COMPLETED"}))
    StreamStatus.add_member(:canceled, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'CANCELED', traits: {"smithy.api#enumValue" => "CANCELED"}))
    StreamStatus.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FAILED', traits: {"smithy.api#enumValue" => "FAILED"}))
    StreamStatus.add_member(:impaired, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'IMPAIRED', traits: {"smithy.api#enumValue" => "IMPAIRED"}))
    TagKeyList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    TagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) to which you want to add the tags. For example:</p>\n         <p>\n            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, Smithy::Schema::Shapes::ShapeRef.new(shape: Tags, location_name: 'Tags', traits: {"smithy.api#documentation" => "<p>The key-value pairs to add as tags to the specified QLDB resource. Tag keys are case\n         sensitive. If you specify a key that already exists for the resource, your request fails\n         and returns an error. Tag values are case sensitive and can be null.</p>", "smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    Tags.key = Smithy::Schema::Shapes::ShapeRef.new(shape: TagKey)
    Tags.value = Smithy::Schema::Shapes::ShapeRef.new(shape: TagValue)
    UntagResourceRequest.add_member(:resource_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'ResourceArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) from which to remove the tags. For example:</p>\n         <p>\n            <code>arn:aws:qldb:us-east-1:123456789012:ledger/exampleLedger</code>\n         </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: TagKeyList, location_name: 'TagKeys', traits: {"smithy.api#documentation" => "<p>The list of tag keys to remove.</p>", "smithy.api#httpQuery" => "tagKeys", "smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    UpdateLedgerPermissionsModeRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLedgerPermissionsModeRequest.add_member(:permissions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsMode, location_name: 'PermissionsMode', traits: {"smithy.api#documentation" => "<p>The permissions mode to assign to the ledger. This parameter can have one of the\n         following values:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>ALLOW_ALL</code>: A legacy permissions mode that enables access control with\n               API-level granularity for ledgers.</p>\n               <p>This mode allows users who have the <code>SendCommand</code> API permission for\n               this ledger to run all PartiQL commands (hence, <code>ALLOW_ALL</code>) on any tables\n               in the specified ledger. This mode disregards any table-level or command-level IAM\n               permissions policies that you create for the ledger.</p>\n            </li>\n            <li>\n               <p>\n                  <code>STANDARD</code>: (<i>Recommended</i>) A permissions mode that\n               enables access control with finer granularity for ledgers, tables, and PartiQL\n               commands.</p>\n               <p>By default, this mode denies all user requests to run any PartiQL commands on any\n               tables in this ledger. To allow PartiQL commands to run, you must create IAM\n               permissions policies for specific table resources and PartiQL actions, in addition to\n               the <code>SendCommand</code> API permission for the ledger. For information, see\n                  <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/getting-started-standard-mode.html\">Getting\n                  started with the standard permissions mode</a> in the <i>Amazon QLDB\n                  Developer Guide</i>.</p>\n            </li>\n         </ul>\n         <note>\n            <p>We strongly recommend using the <code>STANDARD</code> permissions mode to maximize\n            the security of your ledger data.</p>\n         </note>", "smithy.api#required" => {}}))
    UpdateLedgerPermissionsModeRequest.type = Types::UpdateLedgerPermissionsModeRequest
    UpdateLedgerPermissionsModeResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>"}))
    UpdateLedgerPermissionsModeResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ledger.</p>"}))
    UpdateLedgerPermissionsModeResponse.add_member(:permissions_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: PermissionsMode, location_name: 'PermissionsMode', traits: {"smithy.api#documentation" => "<p>The current permissions mode of the ledger.</p>"}))
    UpdateLedgerPermissionsModeResponse.type = Types::UpdateLedgerPermissionsModeResponse
    UpdateLedgerRequest.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    UpdateLedgerRequest.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtection, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the ledger is protected from being deleted by any user. If not defined during\n      ledger creation, this feature is enabled (<code>true</code>) by default.</p>\n         <p>If deletion protection is enabled, you must first disable it before you can delete the\n      ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>"}))
    UpdateLedgerRequest.add_member(:kms_key, Smithy::Schema::Shapes::ShapeRef.new(shape: KmsKey, location_name: 'KmsKey', traits: {"smithy.api#documentation" => "<p>The key in Key Management Service (KMS) to use for encryption of data at rest in the ledger. For\n         more information, see <a href=\"https://docs.aws.amazon.com/qldb/latest/developerguide/encryption-at-rest.html\">Encryption at rest</a> in\n         the <i>Amazon QLDB Developer Guide</i>.</p>\n         <p>Use one of the following options to specify this parameter:</p>\n         <ul>\n            <li>\n               <p>\n                  <code>AWS_OWNED_KMS_KEY</code>: Use an KMS key that is owned and managed by Amazon Web Services\n               on your behalf.</p>\n            </li>\n            <li>\n               <p>\n                  <b>Undefined</b>: Make no changes to the KMS key of the\n               ledger.</p>\n            </li>\n            <li>\n               <p>\n                  <b>A valid symmetric customer managed KMS key</b>: Use\n               the specified symmetric encryption KMS key in your account that you create, own, and\n               manage.</p>\n               <p>Amazon QLDB does not support asymmetric keys. For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/symmetric-asymmetric.html\">Using symmetric and asymmetric keys</a> in the <i>Key Management Service Developer\n                  Guide</i>.</p>\n            </li>\n         </ul>\n         <p>To specify a customer managed KMS key, you can use its key ID, Amazon Resource Name\n         (ARN), alias name, or alias ARN. When using an alias name, prefix it with\n            <code>\"alias/\"</code>. To specify a key in a different Amazon Web Services account, you must use the key\n         ARN or alias ARN.</p>\n         <p>For example:</p>\n         <ul>\n            <li>\n               <p>Key ID: <code>1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Key ARN:\n                  <code>arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias name: <code>alias/ExampleAlias</code>\n               </p>\n            </li>\n            <li>\n               <p>Alias ARN:\n               <code>arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias</code>\n               </p>\n            </li>\n         </ul>\n         <p>For more information, see <a href=\"https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#key-id\">Key identifiers (KeyId)</a> in\n         the <i>Key Management Service Developer Guide</i>.</p>"}))
    UpdateLedgerRequest.type = Types::UpdateLedgerRequest
    UpdateLedgerResponse.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerName, location_name: 'Name', traits: {"smithy.api#documentation" => "<p>The name of the ledger.</p>"}))
    UpdateLedgerResponse.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Arn, location_name: 'Arn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) for the ledger.</p>"}))
    UpdateLedgerResponse.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The current status of the ledger.</p>"}))
    UpdateLedgerResponse.add_member(:creation_date_time, Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: 'CreationDateTime', traits: {"smithy.api#documentation" => "<p>The date and time, in epoch time format, when the ledger was created. (Epoch time format\n         is the number of seconds elapsed since 12:00:00 AM January 1, 1970 UTC.)</p>"}))
    UpdateLedgerResponse.add_member(:deletion_protection, Smithy::Schema::Shapes::ShapeRef.new(shape: DeletionProtection, location_name: 'DeletionProtection', traits: {"smithy.api#documentation" => "<p>Specifies whether the ledger is protected from being deleted by any user. If not defined during\n      ledger creation, this feature is enabled (<code>true</code>) by default.</p>\n         <p>If deletion protection is enabled, you must first disable it before you can delete the\n      ledger. You can disable it by calling the <code>UpdateLedger</code> operation to set this parameter to <code>false</code>.</p>"}))
    UpdateLedgerResponse.add_member(:encryption_description, Smithy::Schema::Shapes::ShapeRef.new(shape: LedgerEncryptionDescription, location_name: 'EncryptionDescription', traits: {"smithy.api#documentation" => "<p>Information about the encryption of data at rest in the ledger. This includes the\n         current status, the KMS key, and when the key became inaccessible (in the case of an\n         error).</p>"}))
    UpdateLedgerResponse.type = Types::UpdateLedgerResponse
    ValueHolder.add_member(:ion_text, Smithy::Schema::Shapes::ShapeRef.new(shape: IonText, location_name: 'IonText', traits: {"smithy.api#documentation" => "<p>An Amazon Ion plaintext value contained in a <code>ValueHolder</code> structure.</p>"}))
    ValueHolder.type = Types::ValueHolder

    AmazonQLDB = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.qldb#AmazonQLDB"
      service.name = "AmazonQLDB"
      service.version = "2019-01-02"
      service.traits = {"aws.api#service" => {"sdkId" => "QLDB", "arnNamespace" => "qldb", "cloudFormationName" => "QLDB", "cloudTrailEventSource" => "qldb.amazonaws.com", "endpointPrefix" => "qldb"}, "aws.auth#sigv4" => {"name" => "qldb"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon QLDB", "smithy.api#xmlNamespace" => {"uri" => "http://ledger.amazonaws.com/doc/2019-01-02/"}}
      service.add_operation(:cancel_journal_kinesis_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#CancelJournalKinesisStream"
        operation.name = "CancelJournalKinesisStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJournalKinesisStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CancelJournalKinesisStreamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", "code" => 200}}
      end)
      service.add_operation(:create_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#CreateLedger"
        operation.name = "CreateLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateLedgerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers", "code" => 200}}
      end)
      service.add_operation(:delete_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DeleteLedger"
        operation.name = "DeleteLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceInUseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:describe_journal_kinesis_stream, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeJournalKinesisStream"
        operation.name = "DescribeJournalKinesisStream"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJournalKinesisStreamRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJournalKinesisStreamResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams/{StreamId}", "code" => 200}}
      end)
      service.add_operation(:describe_journal_s3_export, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeJournalS3Export"
        operation.name = "DescribeJournalS3Export"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJournalS3ExportRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeJournalS3ExportResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}/journal-s3-exports/{ExportId}", "code" => 200}}
      end)
      service.add_operation(:describe_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#DescribeLedger"
        operation.name = "DescribeLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeLedgerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:export_journal_to_s3, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ExportJournalToS3"
        operation.name = "ExportJournalToS3"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJournalToS3Request)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ExportJournalToS3Response)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/journal-s3-exports", "code" => 200}}
      end)
      service.add_operation(:get_block, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetBlock"
        operation.name = "GetBlock"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlockRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetBlockResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/block", "code" => 200}}
      end)
      service.add_operation(:get_digest, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetDigest"
        operation.name = "GetDigest"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDigestRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetDigestResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/digest", "code" => 200}}
      end)
      service.add_operation(:get_revision, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#GetRevision"
        operation.name = "GetRevision"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevisionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRevisionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{Name}/revision", "code" => 200}}
      end)
      service.add_operation(:list_journal_kinesis_streams_for_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalKinesisStreamsForLedger"
        operation.name = "ListJournalKinesisStreamsForLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalKinesisStreamsForLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalKinesisStreamsForLedgerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalKinesisStreamsForLedger.new
      end)
      service.add_operation(:list_journal_s3_exports, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalS3Exports"
        operation.name = "ListJournalS3Exports"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalS3ExportsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalS3ExportsResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/journal-s3-exports", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalS3Exports.new
      end)
      service.add_operation(:list_journal_s3_exports_for_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListJournalS3ExportsForLedger"
        operation.name = "ListJournalS3ExportsForLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalS3ExportsForLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListJournalS3ExportsForLedgerResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers/{Name}/journal-s3-exports", "code" => 200}}
        operation[:paginator] = Paginators::ListJournalS3ExportsForLedger.new
      end)
      service.add_operation(:list_ledgers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListLedgers"
        operation.name = "ListLedgers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLedgersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListLedgersResponse)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/ledgers", "code" => 200}}
        operation[:paginator] = Paginators::ListLedgers.new
      end)
      service.add_operation(:list_tags_for_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:stream_journal_to_kinesis, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#StreamJournalToKinesis"
        operation.name = "StreamJournalToKinesis"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamJournalToKinesisRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StreamJournalToKinesisResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourcePreconditionNotMetException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/ledgers/{LedgerName}/journal-kinesis-streams", "code" => 200}}
      end)
      service.add_operation(:tag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#TagResource"
        operation.name = "TagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: TagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:untag_resource, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UntagResource"
        operation.name = "UntagResource"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UntagResourceResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/tags/{ResourceArn}", "code" => 200}}
      end)
      service.add_operation(:update_ledger, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UpdateLedger"
        operation.name = "UpdateLedger"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLedgerRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLedgerResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ledgers/{Name}", "code" => 200}}
      end)
      service.add_operation(:update_ledger_permissions_mode, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.qldb#UpdateLedgerPermissionsMode"
        operation.name = "UpdateLedgerPermissionsMode"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLedgerPermissionsModeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateLedgerPermissionsModeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {"smithy.api#http" => {"method" => "PATCH", "uri" => "/ledgers/{Name}/permissions-mode", "code" => 200}}
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
