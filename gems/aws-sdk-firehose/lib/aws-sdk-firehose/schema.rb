# frozen_string_literal: true

# This is generated code!

module Aws::Firehose
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSKMSKeyARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AWSKMSKeyARN", name: "AWSKMSKeyARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:kms:[a-zA-Z0-9\\-]+:\\d{12}:(key|alias)/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    AmazonOpenSearchServerlessBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessBufferingHints", name: "AmazonOpenSearchServerlessBufferingHints")
    AmazonOpenSearchServerlessBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessBufferingIntervalInSeconds", name: "AmazonOpenSearchServerlessBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    AmazonOpenSearchServerlessBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessBufferingSizeInMBs", name: "AmazonOpenSearchServerlessBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    AmazonOpenSearchServerlessCollectionEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessCollectionEndpoint", name: "AmazonOpenSearchServerlessCollectionEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https:"})
    AmazonOpenSearchServerlessDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessDestinationConfiguration", name: "AmazonOpenSearchServerlessDestinationConfiguration")
    AmazonOpenSearchServerlessDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessDestinationDescription", name: "AmazonOpenSearchServerlessDestinationDescription")
    AmazonOpenSearchServerlessDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessDestinationUpdate", name: "AmazonOpenSearchServerlessDestinationUpdate")
    AmazonOpenSearchServerlessIndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessIndexName", name: "AmazonOpenSearchServerlessIndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => ".*"})
    AmazonOpenSearchServerlessRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessRetryDurationInSeconds", name: "AmazonOpenSearchServerlessRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    AmazonOpenSearchServerlessRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessRetryOptions", name: "AmazonOpenSearchServerlessRetryOptions")
    AmazonOpenSearchServerlessS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#AmazonOpenSearchServerlessS3BackupMode", name: "AmazonOpenSearchServerlessS3BackupMode")
    AmazonopensearchserviceBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceBufferingHints", name: "AmazonopensearchserviceBufferingHints")
    AmazonopensearchserviceBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceBufferingIntervalInSeconds", name: "AmazonopensearchserviceBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    AmazonopensearchserviceBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceBufferingSizeInMBs", name: "AmazonopensearchserviceBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    AmazonopensearchserviceClusterEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceClusterEndpoint", name: "AmazonopensearchserviceClusterEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https:"})
    AmazonopensearchserviceDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceDestinationConfiguration", name: "AmazonopensearchserviceDestinationConfiguration")
    AmazonopensearchserviceDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceDestinationDescription", name: "AmazonopensearchserviceDestinationDescription")
    AmazonopensearchserviceDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceDestinationUpdate", name: "AmazonopensearchserviceDestinationUpdate")
    AmazonopensearchserviceDomainARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceDomainARN", name: "AmazonopensearchserviceDomainARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:es:[a-zA-Z0-9\\-]+:\\d{12}:domain/[a-z][-0-9a-z]{2,27}$"})
    AmazonopensearchserviceIndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceIndexName", name: "AmazonopensearchserviceIndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => ".*"})
    AmazonopensearchserviceIndexRotationPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceIndexRotationPeriod", name: "AmazonopensearchserviceIndexRotationPeriod")
    AmazonopensearchserviceRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceRetryDurationInSeconds", name: "AmazonopensearchserviceRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    AmazonopensearchserviceRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceRetryOptions", name: "AmazonopensearchserviceRetryOptions")
    AmazonopensearchserviceS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceS3BackupMode", name: "AmazonopensearchserviceS3BackupMode")
    AmazonopensearchserviceTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#AmazonopensearchserviceTypeName", name: "AmazonopensearchserviceTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => ".*"})
    AuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#AuthenticationConfiguration", name: "AuthenticationConfiguration")
    BlockSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#BlockSizeBytes", name: "BlockSizeBytes", traits: {"smithy.api#range" => {"min" => 67108864}})
    BooleanObject = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.firehose#BooleanObject", name: "BooleanObject")
    BucketARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#BucketARN", name: "BucketARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:s3:::[\\w\\.\\-]{1,255}$"})
    BufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#BufferingHints", name: "BufferingHints")
    CatalogConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#CatalogConfiguration", name: "CatalogConfiguration")
    CloudWatchLoggingOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#CloudWatchLoggingOptions", name: "CloudWatchLoggingOptions")
    ClusterJDBCURL = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ClusterJDBCURL", name: "ClusterJDBCURL", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^jdbc:(redshift|postgresql)://((?!-)[A-Za-z0-9-]{1,63}(?<!-)\\.)+(redshift(-serverless)?)\\.([a-zA-Z0-9\\.\\-]+):\\d{1,5}/[a-zA-Z0-9_$-]+$"})
    ColumnToJsonKeyMappings = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.firehose#ColumnToJsonKeyMappings", name: "ColumnToJsonKeyMappings")
    CompressionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#CompressionFormat", name: "CompressionFormat")
    ConcurrentModificationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ConcurrentModificationException", name: "ConcurrentModificationException", traits: {"smithy.api#error" => "client"})
    Connectivity = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#Connectivity", name: "Connectivity")
    ContentEncoding = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ContentEncoding", name: "ContentEncoding")
    CopyCommand = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#CopyCommand", name: "CopyCommand")
    CopyOptions = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#CopyOptions", name: "CopyOptions", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => ".*"})
    CreateDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#CreateDeliveryStreamInput", name: "CreateDeliveryStreamInput")
    CreateDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#CreateDeliveryStreamOutput", name: "CreateDeliveryStreamOutput")
    CustomTimeZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#CustomTimeZone", name: "CustomTimeZone", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}, "smithy.api#pattern" => "^$|[a-zA-Z/_]+$"})
    Data = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.firehose#Data", name: "Data", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024000}})
    DataFormatConversionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DataFormatConversionConfiguration", name: "DataFormatConversionConfiguration")
    DataTableColumns = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DataTableColumns", name: "DataTableColumns", traits: {"smithy.api#length" => {"min" => 0, "max" => 10240}, "smithy.api#pattern" => ".*"})
    DataTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DataTableName", name: "DataTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*"})
    DatabaseColumnIncludeOrExcludeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DatabaseColumnIncludeOrExcludeList", name: "DatabaseColumnIncludeOrExcludeList")
    DatabaseColumnList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseColumnList", name: "DatabaseColumnList")
    DatabaseColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DatabaseColumnName", name: "DatabaseColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 194}, "smithy.api#pattern" => "^[\\u0001-\\uFFFF]*$"})
    DatabaseEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DatabaseEndpoint", name: "DatabaseEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    DatabaseIncludeOrExcludeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DatabaseIncludeOrExcludeList", name: "DatabaseIncludeOrExcludeList")
    DatabaseList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseList", name: "DatabaseList")
    DatabaseName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DatabaseName", name: "DatabaseName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[\\u0001-\\uFFFF]*$"})
    DatabasePort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#DatabasePort", name: "DatabasePort", traits: {"smithy.api#range" => {"min" => 0, "max" => 65535}})
    DatabaseSnapshotInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseSnapshotInfo", name: "DatabaseSnapshotInfo")
    DatabaseSnapshotInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DatabaseSnapshotInfoList", name: "DatabaseSnapshotInfoList")
    DatabaseSourceAuthenticationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseSourceAuthenticationConfiguration", name: "DatabaseSourceAuthenticationConfiguration")
    DatabaseSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseSourceConfiguration", name: "DatabaseSourceConfiguration")
    DatabaseSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseSourceDescription", name: "DatabaseSourceDescription")
    DatabaseSourceVPCConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseSourceVPCConfiguration", name: "DatabaseSourceVPCConfiguration")
    DatabaseSurrogateKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DatabaseSurrogateKeyList", name: "DatabaseSurrogateKeyList")
    DatabaseTableIncludeOrExcludeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DatabaseTableIncludeOrExcludeList", name: "DatabaseTableIncludeOrExcludeList")
    DatabaseTableList = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DatabaseTableList", name: "DatabaseTableList")
    DatabaseTableName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DatabaseTableName", name: "DatabaseTableName", traits: {"smithy.api#length" => {"min" => 1, "max" => 129}, "smithy.api#pattern" => "^[\\u0001-\\uFFFF]*$"})
    DatabaseType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DatabaseType", name: "DatabaseType")
    DefaultDocumentIdFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DefaultDocumentIdFormat", name: "DefaultDocumentIdFormat")
    DeleteDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DeleteDeliveryStreamInput", name: "DeleteDeliveryStreamInput")
    DeleteDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DeleteDeliveryStreamOutput", name: "DeleteDeliveryStreamOutput")
    DeliveryStartTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.firehose#DeliveryStartTimestamp", name: "DeliveryStartTimestamp")
    DeliveryStreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DeliveryStreamARN", name: "DeliveryStreamARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:firehose:[a-zA-Z0-9\\-]+:\\d{12}:deliverystream/[a-zA-Z0-9._-]+$"})
    DeliveryStreamDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DeliveryStreamDescription", name: "DeliveryStreamDescription")
    DeliveryStreamEncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DeliveryStreamEncryptionConfiguration", name: "DeliveryStreamEncryptionConfiguration")
    DeliveryStreamEncryptionConfigurationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DeliveryStreamEncryptionConfigurationInput", name: "DeliveryStreamEncryptionConfigurationInput")
    DeliveryStreamEncryptionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DeliveryStreamEncryptionStatus", name: "DeliveryStreamEncryptionStatus")
    DeliveryStreamFailureType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DeliveryStreamFailureType", name: "DeliveryStreamFailureType")
    DeliveryStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DeliveryStreamName", name: "DeliveryStreamName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-zA-Z0-9_.-]+$"})
    DeliveryStreamNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DeliveryStreamNameList", name: "DeliveryStreamNameList")
    DeliveryStreamStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DeliveryStreamStatus", name: "DeliveryStreamStatus")
    DeliveryStreamType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#DeliveryStreamType", name: "DeliveryStreamType")
    DeliveryStreamVersionId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DeliveryStreamVersionId", name: "DeliveryStreamVersionId", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "^[0-9]+$"})
    DescribeDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DescribeDeliveryStreamInput", name: "DescribeDeliveryStreamInput")
    DescribeDeliveryStreamInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#DescribeDeliveryStreamInputLimit", name: "DescribeDeliveryStreamInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    DescribeDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DescribeDeliveryStreamOutput", name: "DescribeDeliveryStreamOutput")
    Deserializer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#Deserializer", name: "Deserializer")
    DestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DestinationDescription", name: "DestinationDescription")
    DestinationDescriptionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DestinationDescriptionList", name: "DestinationDescriptionList")
    DestinationId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#DestinationId", name: "DestinationId", traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[a-zA-Z0-9-]+$"})
    DestinationTableConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DestinationTableConfiguration", name: "DestinationTableConfiguration")
    DestinationTableConfigurationList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#DestinationTableConfigurationList", name: "DestinationTableConfigurationList")
    DirectPutSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DirectPutSourceConfiguration", name: "DirectPutSourceConfiguration")
    DirectPutSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DirectPutSourceDescription", name: "DirectPutSourceDescription")
    DocumentIdOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DocumentIdOptions", name: "DocumentIdOptions")
    DynamicPartitioningConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#DynamicPartitioningConfiguration", name: "DynamicPartitioningConfiguration")
    ElasticsearchBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ElasticsearchBufferingHints", name: "ElasticsearchBufferingHints")
    ElasticsearchBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ElasticsearchBufferingIntervalInSeconds", name: "ElasticsearchBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    ElasticsearchBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ElasticsearchBufferingSizeInMBs", name: "ElasticsearchBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    ElasticsearchClusterEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ElasticsearchClusterEndpoint", name: "ElasticsearchClusterEndpoint", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^https:"})
    ElasticsearchDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ElasticsearchDestinationConfiguration", name: "ElasticsearchDestinationConfiguration")
    ElasticsearchDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ElasticsearchDestinationDescription", name: "ElasticsearchDestinationDescription")
    ElasticsearchDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ElasticsearchDestinationUpdate", name: "ElasticsearchDestinationUpdate")
    ElasticsearchDomainARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ElasticsearchDomainARN", name: "ElasticsearchDomainARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:es:[a-zA-Z0-9\\-]+:\\d{12}:domain/[a-z][-0-9a-z]{2,27}$"})
    ElasticsearchIndexName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ElasticsearchIndexName", name: "ElasticsearchIndexName", traits: {"smithy.api#length" => {"min" => 1, "max" => 80}, "smithy.api#pattern" => ".*"})
    ElasticsearchIndexRotationPeriod = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ElasticsearchIndexRotationPeriod", name: "ElasticsearchIndexRotationPeriod")
    ElasticsearchRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ElasticsearchRetryDurationInSeconds", name: "ElasticsearchRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    ElasticsearchRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ElasticsearchRetryOptions", name: "ElasticsearchRetryOptions")
    ElasticsearchS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ElasticsearchS3BackupMode", name: "ElasticsearchS3BackupMode")
    ElasticsearchTypeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ElasticsearchTypeName", name: "ElasticsearchTypeName", traits: {"smithy.api#length" => {"min" => 0, "max" => 100}, "smithy.api#pattern" => ".*"})
    EncryptionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#EncryptionConfiguration", name: "EncryptionConfiguration")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ErrorMessage", name: "ErrorMessage")
    ErrorOutputPrefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ErrorOutputPrefix", name: "ErrorOutputPrefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ExtendedS3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ExtendedS3DestinationConfiguration", name: "ExtendedS3DestinationConfiguration")
    ExtendedS3DestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ExtendedS3DestinationDescription", name: "ExtendedS3DestinationDescription")
    ExtendedS3DestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ExtendedS3DestinationUpdate", name: "ExtendedS3DestinationUpdate")
    FailureDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#FailureDescription", name: "FailureDescription")
    FileExtension = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#FileExtension", name: "FileExtension", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^$|\\.[0-9a-z!\\-_.*'()]+$"})
    GlueDataCatalogARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#GlueDataCatalogARN", name: "GlueDataCatalogARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:glue:.*:\\d{12}:catalog(?:(/[a-z0-9_-]+){1,2})?$"})
    HECAcknowledgmentTimeoutInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#HECAcknowledgmentTimeoutInSeconds", name: "HECAcknowledgmentTimeoutInSeconds", traits: {"smithy.api#range" => {"min" => 180, "max" => 600}})
    HECEndpoint = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HECEndpoint", name: "HECEndpoint", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    HECEndpointType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#HECEndpointType", name: "HECEndpointType")
    HECToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HECToken", name: "HECToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*"})
    HiveJsonSerDe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HiveJsonSerDe", name: "HiveJsonSerDe")
    HttpEndpointAccessKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HttpEndpointAccessKey", name: "HttpEndpointAccessKey", traits: {"smithy.api#length" => {"min" => 0, "max" => 4096}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    HttpEndpointAttributeName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HttpEndpointAttributeName", name: "HttpEndpointAttributeName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!\\s*$).+$", "smithy.api#sensitive" => {}})
    HttpEndpointAttributeValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HttpEndpointAttributeValue", name: "HttpEndpointAttributeValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    HttpEndpointBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointBufferingHints", name: "HttpEndpointBufferingHints")
    HttpEndpointBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#HttpEndpointBufferingIntervalInSeconds", name: "HttpEndpointBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    HttpEndpointBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#HttpEndpointBufferingSizeInMBs", name: "HttpEndpointBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 64}})
    HttpEndpointCommonAttribute = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointCommonAttribute", name: "HttpEndpointCommonAttribute")
    HttpEndpointCommonAttributesList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#HttpEndpointCommonAttributesList", name: "HttpEndpointCommonAttributesList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    HttpEndpointConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointConfiguration", name: "HttpEndpointConfiguration")
    HttpEndpointDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointDescription", name: "HttpEndpointDescription")
    HttpEndpointDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointDestinationConfiguration", name: "HttpEndpointDestinationConfiguration")
    HttpEndpointDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointDestinationDescription", name: "HttpEndpointDestinationDescription")
    HttpEndpointDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointDestinationUpdate", name: "HttpEndpointDestinationUpdate")
    HttpEndpointName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HttpEndpointName", name: "HttpEndpointName", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    HttpEndpointRequestConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointRequestConfiguration", name: "HttpEndpointRequestConfiguration")
    HttpEndpointRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#HttpEndpointRetryDurationInSeconds", name: "HttpEndpointRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    HttpEndpointRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#HttpEndpointRetryOptions", name: "HttpEndpointRetryOptions")
    HttpEndpointS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#HttpEndpointS3BackupMode", name: "HttpEndpointS3BackupMode")
    HttpEndpointUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#HttpEndpointUrl", name: "HttpEndpointUrl", traits: {"smithy.api#length" => {"min" => 1, "max" => 1000}, "smithy.api#pattern" => "^https://", "smithy.api#sensitive" => {}})
    IcebergDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#IcebergDestinationConfiguration", name: "IcebergDestinationConfiguration")
    IcebergDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#IcebergDestinationDescription", name: "IcebergDestinationDescription")
    IcebergDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#IcebergDestinationUpdate", name: "IcebergDestinationUpdate")
    IcebergS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#IcebergS3BackupMode", name: "IcebergS3BackupMode")
    InputFormatConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#InputFormatConfiguration", name: "InputFormatConfiguration")
    IntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#IntervalInSeconds", name: "IntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    InvalidArgumentException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#InvalidArgumentException", name: "InvalidArgumentException", traits: {"smithy.api#error" => "client"})
    InvalidKMSResourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#InvalidKMSResourceException", name: "InvalidKMSResourceException", traits: {"smithy.api#error" => "client"})
    InvalidSourceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#InvalidSourceException", name: "InvalidSourceException", traits: {"smithy.api#error" => "client"})
    KMSEncryptionConfig = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#KMSEncryptionConfig", name: "KMSEncryptionConfig")
    KeyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#KeyType", name: "KeyType")
    KinesisStreamARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#KinesisStreamARN", name: "KinesisStreamARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:kinesis:[a-zA-Z0-9\\-]+:\\d{12}:stream/[a-zA-Z0-9_.-]+$"})
    KinesisStreamSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#KinesisStreamSourceConfiguration", name: "KinesisStreamSourceConfiguration")
    KinesisStreamSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#KinesisStreamSourceDescription", name: "KinesisStreamSourceDescription")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#LimitExceededException", name: "LimitExceededException", traits: {"smithy.api#error" => "client"})
    ListDeliveryStreamsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ListDeliveryStreamsInput", name: "ListDeliveryStreamsInput")
    ListDeliveryStreamsInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ListDeliveryStreamsInputLimit", name: "ListDeliveryStreamsInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 10000}})
    ListDeliveryStreamsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ListDeliveryStreamsOutput", name: "ListDeliveryStreamsOutput")
    ListOfNonEmptyStrings = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#ListOfNonEmptyStrings", name: "ListOfNonEmptyStrings")
    ListOfNonEmptyStringsWithoutWhitespace = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#ListOfNonEmptyStringsWithoutWhitespace", name: "ListOfNonEmptyStringsWithoutWhitespace")
    ListTagsForDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ListTagsForDeliveryStreamInput", name: "ListTagsForDeliveryStreamInput")
    ListTagsForDeliveryStreamInputLimit = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ListTagsForDeliveryStreamInputLimit", name: "ListTagsForDeliveryStreamInputLimit", traits: {"smithy.api#range" => {"min" => 1, "max" => 50}})
    ListTagsForDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ListTagsForDeliveryStreamOutput", name: "ListTagsForDeliveryStreamOutput")
    ListTagsForDeliveryStreamOutputTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#ListTagsForDeliveryStreamOutputTagList", name: "ListTagsForDeliveryStreamOutputTagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 50}})
    LogGroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#LogGroupName", name: "LogGroupName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[\\.\\-_/#A-Za-z0-9]*$"})
    LogStreamName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#LogStreamName", name: "LogStreamName", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => "^[^:*]*$"})
    MSKClusterARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#MSKClusterARN", name: "MSKClusterARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:"})
    MSKSourceConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#MSKSourceConfiguration", name: "MSKSourceConfiguration")
    MSKSourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#MSKSourceDescription", name: "MSKSourceDescription")
    NoEncryptionConfig = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#NoEncryptionConfig", name: "NoEncryptionConfig")
    NonEmptyString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#NonEmptyString", name: "NonEmptyString", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    NonEmptyStringWithoutWhitespace = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#NonEmptyStringWithoutWhitespace", name: "NonEmptyStringWithoutWhitespace", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => "^\\S+$"})
    NonNegativeIntegerObject = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#NonNegativeIntegerObject", name: "NonNegativeIntegerObject", traits: {"smithy.api#range" => {"min" => 0}})
    OpenXJsonSerDe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#OpenXJsonSerDe", name: "OpenXJsonSerDe")
    OrcCompression = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#OrcCompression", name: "OrcCompression")
    OrcFormatVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#OrcFormatVersion", name: "OrcFormatVersion")
    OrcRowIndexStride = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#OrcRowIndexStride", name: "OrcRowIndexStride", traits: {"smithy.api#range" => {"min" => 1000}})
    OrcSerDe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#OrcSerDe", name: "OrcSerDe")
    OrcStripeSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#OrcStripeSizeBytes", name: "OrcStripeSizeBytes", traits: {"smithy.api#range" => {"min" => 8388608}})
    OutputFormatConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#OutputFormatConfiguration", name: "OutputFormatConfiguration")
    ParquetCompression = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ParquetCompression", name: "ParquetCompression")
    ParquetPageSizeBytes = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ParquetPageSizeBytes", name: "ParquetPageSizeBytes", traits: {"smithy.api#range" => {"min" => 65536}})
    ParquetSerDe = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ParquetSerDe", name: "ParquetSerDe")
    ParquetWriterVersion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ParquetWriterVersion", name: "ParquetWriterVersion")
    PartitionField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PartitionField", name: "PartitionField")
    PartitionFields = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#PartitionFields", name: "PartitionFields")
    PartitionSpec = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PartitionSpec", name: "PartitionSpec")
    Password = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#Password", name: "Password", traits: {"smithy.api#length" => {"min" => 6, "max" => 512}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#Prefix", name: "Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    ProcessingConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ProcessingConfiguration", name: "ProcessingConfiguration")
    Processor = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#Processor", name: "Processor")
    ProcessorList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#ProcessorList", name: "ProcessorList")
    ProcessorParameter = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ProcessorParameter", name: "ProcessorParameter")
    ProcessorParameterList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#ProcessorParameterList", name: "ProcessorParameterList")
    ProcessorParameterName = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ProcessorParameterName", name: "ProcessorParameterName")
    ProcessorParameterValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#ProcessorParameterValue", name: "ProcessorParameterValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 5120}, "smithy.api#pattern" => "^(?!\\s*$).+$"})
    ProcessorType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#ProcessorType", name: "ProcessorType")
    Proportion = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.firehose#Proportion", name: "Proportion", traits: {"smithy.api#range" => {"min" => 0, "max" => 1}})
    PutRecordBatchInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PutRecordBatchInput", name: "PutRecordBatchInput")
    PutRecordBatchOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PutRecordBatchOutput", name: "PutRecordBatchOutput")
    PutRecordBatchRequestEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#PutRecordBatchRequestEntryList", name: "PutRecordBatchRequestEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutRecordBatchResponseEntry = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PutRecordBatchResponseEntry", name: "PutRecordBatchResponseEntry")
    PutRecordBatchResponseEntryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#PutRecordBatchResponseEntryList", name: "PutRecordBatchResponseEntryList", traits: {"smithy.api#length" => {"min" => 1, "max" => 500}})
    PutRecordInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PutRecordInput", name: "PutRecordInput")
    PutRecordOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#PutRecordOutput", name: "PutRecordOutput")
    PutResponseRecordId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#PutResponseRecordId", name: "PutResponseRecordId", traits: {"smithy.api#length" => {"min" => 1}})
    ReadFromTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.firehose#ReadFromTimestamp", name: "ReadFromTimestamp")
    Record = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#Record", name: "Record")
    RedshiftDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#RedshiftDestinationConfiguration", name: "RedshiftDestinationConfiguration")
    RedshiftDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#RedshiftDestinationDescription", name: "RedshiftDestinationDescription")
    RedshiftDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#RedshiftDestinationUpdate", name: "RedshiftDestinationUpdate")
    RedshiftRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#RedshiftRetryDurationInSeconds", name: "RedshiftRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    RedshiftRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#RedshiftRetryOptions", name: "RedshiftRetryOptions")
    RedshiftS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#RedshiftS3BackupMode", name: "RedshiftS3BackupMode")
    ResourceInUseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ResourceInUseException", name: "ResourceInUseException", traits: {"smithy.api#error" => "client"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    RetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#RetryDurationInSeconds", name: "RetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    RetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#RetryOptions", name: "RetryOptions")
    RoleARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#RoleARN", name: "RoleARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => "^arn:.*:iam::\\d{12}:role/[a-zA-Z_0-9+=,.@\\-_/]+$"})
    S3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#S3BackupMode", name: "S3BackupMode")
    S3DestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#S3DestinationConfiguration", name: "S3DestinationConfiguration")
    S3DestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#S3DestinationDescription", name: "S3DestinationDescription")
    S3DestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#S3DestinationUpdate", name: "S3DestinationUpdate")
    SSLMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SSLMode", name: "SSLMode")
    SchemaConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SchemaConfiguration", name: "SchemaConfiguration")
    SchemaEvolutionConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SchemaEvolutionConfiguration", name: "SchemaEvolutionConfiguration")
    SecretARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SecretARN", name: "SecretARN", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^arn:.*:secretsmanager:[a-zA-Z0-9\\-]+:\\d{12}:secret:[a-zA-Z0-9\\-/_+=.@!]+$"})
    SecretsManagerConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SecretsManagerConfiguration", name: "SecretsManagerConfiguration")
    SecurityGroupIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#SecurityGroupIdList", name: "SecurityGroupIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 5}})
    Serializer = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#Serializer", name: "Serializer")
    ServiceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#ServiceUnavailableException", name: "ServiceUnavailableException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    SizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SizeInMBs", name: "SizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}})
    SnapshotRequestedBy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SnapshotRequestedBy", name: "SnapshotRequestedBy")
    SnapshotStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SnapshotStatus", name: "SnapshotStatus")
    SnowflakeAccountUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeAccountUrl", name: "SnowflakeAccountUrl", traits: {"smithy.api#length" => {"min" => 24, "max" => 2048}, "smithy.api#pattern" => "^.+?\\.snowflakecomputing\\.com$", "smithy.api#sensitive" => {}})
    SnowflakeBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeBufferingHints", name: "SnowflakeBufferingHints")
    SnowflakeBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SnowflakeBufferingIntervalInSeconds", name: "SnowflakeBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 900}})
    SnowflakeBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SnowflakeBufferingSizeInMBs", name: "SnowflakeBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 128}})
    SnowflakeContentColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeContentColumnName", name: "SnowflakeContentColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeDataLoadingOption = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SnowflakeDataLoadingOption", name: "SnowflakeDataLoadingOption")
    SnowflakeDatabase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeDatabase", name: "SnowflakeDatabase", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeDestinationConfiguration", name: "SnowflakeDestinationConfiguration")
    SnowflakeDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeDestinationDescription", name: "SnowflakeDestinationDescription")
    SnowflakeDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeDestinationUpdate", name: "SnowflakeDestinationUpdate")
    SnowflakeKeyPassphrase = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeKeyPassphrase", name: "SnowflakeKeyPassphrase", traits: {"smithy.api#length" => {"min" => 7, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeMetaDataColumnName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeMetaDataColumnName", name: "SnowflakeMetaDataColumnName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakePrivateKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakePrivateKey", name: "SnowflakePrivateKey", traits: {"smithy.api#length" => {"min" => 256, "max" => 4096}, "smithy.api#pattern" => "^(?:[A-Za-z0-9+\\/]{4})*(?:[A-Za-z0-9+\\/]{2}==|[A-Za-z0-9+\\/]{3}=)?$", "smithy.api#sensitive" => {}})
    SnowflakePrivateLinkVpceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakePrivateLinkVpceId", name: "SnowflakePrivateLinkVpceId", traits: {"smithy.api#length" => {"min" => 47, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9\\-\\_]+\\.){2,3}vpce\\.[a-zA-Z0-9\\-]*\\.vpce-svc\\-[a-zA-Z0-9\\-]{17}$", "smithy.api#sensitive" => {}})
    SnowflakeRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SnowflakeRetryDurationInSeconds", name: "SnowflakeRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    SnowflakeRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeRetryOptions", name: "SnowflakeRetryOptions")
    SnowflakeRole = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeRole", name: "SnowflakeRole", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeRoleConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeRoleConfiguration", name: "SnowflakeRoleConfiguration")
    SnowflakeS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SnowflakeS3BackupMode", name: "SnowflakeS3BackupMode")
    SnowflakeSchema = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeSchema", name: "SnowflakeSchema", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeTable = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeTable", name: "SnowflakeTable", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#SnowflakeUser", name: "SnowflakeUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#sensitive" => {}})
    SnowflakeVpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SnowflakeVpcConfiguration", name: "SnowflakeVpcConfiguration")
    SourceDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SourceDescription", name: "SourceDescription")
    SplunkBufferingHints = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SplunkBufferingHints", name: "SplunkBufferingHints")
    SplunkBufferingIntervalInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SplunkBufferingIntervalInSeconds", name: "SplunkBufferingIntervalInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 60}})
    SplunkBufferingSizeInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SplunkBufferingSizeInMBs", name: "SplunkBufferingSizeInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    SplunkDestinationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SplunkDestinationConfiguration", name: "SplunkDestinationConfiguration")
    SplunkDestinationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SplunkDestinationDescription", name: "SplunkDestinationDescription")
    SplunkDestinationUpdate = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SplunkDestinationUpdate", name: "SplunkDestinationUpdate")
    SplunkRetryDurationInSeconds = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#SplunkRetryDurationInSeconds", name: "SplunkRetryDurationInSeconds", traits: {"smithy.api#range" => {"min" => 0, "max" => 7200}})
    SplunkRetryOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#SplunkRetryOptions", name: "SplunkRetryOptions")
    SplunkS3BackupMode = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.firehose#SplunkS3BackupMode", name: "SplunkS3BackupMode")
    StartDeliveryStreamEncryptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#StartDeliveryStreamEncryptionInput", name: "StartDeliveryStreamEncryptionInput")
    StartDeliveryStreamEncryptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#StartDeliveryStreamEncryptionOutput", name: "StartDeliveryStreamEncryptionOutput")
    StopDeliveryStreamEncryptionInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#StopDeliveryStreamEncryptionInput", name: "StopDeliveryStreamEncryptionInput")
    StopDeliveryStreamEncryptionOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#StopDeliveryStreamEncryptionOutput", name: "StopDeliveryStreamEncryptionOutput")
    StringWithLettersDigitsUnderscoresDots = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#StringWithLettersDigitsUnderscoresDots", name: "StringWithLettersDigitsUnderscoresDots", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\.\\_]+$"})
    SubnetIdList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#SubnetIdList", name: "SubnetIdList", traits: {"smithy.api#length" => {"min" => 1, "max" => 16}})
    TableCreationConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#TableCreationConfiguration", name: "TableCreationConfiguration")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#Tag", name: "Tag")
    TagDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#TagDeliveryStreamInput", name: "TagDeliveryStreamInput")
    TagDeliveryStreamInputTagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#TagDeliveryStreamInputTagList", name: "TagDeliveryStreamInputTagList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#TagDeliveryStreamOutput", name: "TagDeliveryStreamOutput")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => "^(?!aws:)[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*$"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.firehose#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}})
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[\\p{L}\\p{Z}\\p{N}_.:\\/=+\\-@%]*$"})
    ThroughputHintInMBs = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.firehose#ThroughputHintInMBs", name: "ThroughputHintInMBs", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.firehose#Timestamp", name: "Timestamp")
    TopicName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#TopicName", name: "TopicName", traits: {"smithy.api#length" => {"min" => 1, "max" => 255}, "smithy.api#pattern" => "^[a-zA-Z0-9\\\\._\\\\-]+$"})
    UntagDeliveryStreamInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#UntagDeliveryStreamInput", name: "UntagDeliveryStreamInput")
    UntagDeliveryStreamOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#UntagDeliveryStreamOutput", name: "UntagDeliveryStreamOutput")
    UpdateDestinationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#UpdateDestinationInput", name: "UpdateDestinationInput")
    UpdateDestinationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#UpdateDestinationOutput", name: "UpdateDestinationOutput")
    Username = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#Username", name: "Username", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    VpcConfiguration = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#VpcConfiguration", name: "VpcConfiguration")
    VpcConfigurationDescription = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.firehose#VpcConfigurationDescription", name: "VpcConfigurationDescription")
    VpcEndpointServiceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#VpcEndpointServiceName", name: "VpcEndpointServiceName", traits: {"smithy.api#length" => {"min" => 47, "max" => 255}, "smithy.api#pattern" => "^([a-zA-Z0-9\\-\\_]+\\.){2,3}vpce\\.[a-zA-Z0-9\\-]*\\.vpce-svc\\-[a-zA-Z0-9\\-]{17}$"})
    WarehouseLocation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.firehose#WarehouseLocation", name: "WarehouseLocation", traits: {"smithy.api#length" => {"min" => 1, "max" => 2048}, "smithy.api#pattern" => "^s3:\\/\\/"})

    AmazonOpenSearchServerlessBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    AmazonOpenSearchServerlessBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessBufferingSizeInMBs, name: "SizeInMBs"))
    AmazonOpenSearchServerlessBufferingHints.type = Types::AmazonOpenSearchServerlessBufferingHints
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessCollectionEndpoint, name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessIndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessBufferingHints, name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessRetryOptions, name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessS3BackupMode, name: "S3BackupMode"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    AmazonOpenSearchServerlessDestinationConfiguration.type = Types::AmazonOpenSearchServerlessDestinationConfiguration
    AmazonOpenSearchServerlessDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessCollectionEndpoint, name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessIndexName, name: "IndexName"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessBufferingHints, name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessRetryOptions, name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessS3BackupMode, name: "S3BackupMode"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationDescription.add_member(:vpc_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescription, name: "VpcConfigurationDescription"))
    AmazonOpenSearchServerlessDestinationDescription.type = Types::AmazonOpenSearchServerlessDestinationDescription
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:collection_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessCollectionEndpoint, name: "CollectionEndpoint"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessIndexName, name: "IndexName"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessBufferingHints, name: "BufferingHints"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessRetryOptions, name: "RetryOptions"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonOpenSearchServerlessDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonOpenSearchServerlessDestinationUpdate.type = Types::AmazonOpenSearchServerlessDestinationUpdate
    AmazonOpenSearchServerlessRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessRetryDurationInSeconds, name: "DurationInSeconds"))
    AmazonOpenSearchServerlessRetryOptions.type = Types::AmazonOpenSearchServerlessRetryOptions
    AmazonOpenSearchServerlessS3BackupMode.add_member(:failed_documents_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDocumentsOnly", traits: {"smithy.api#enumValue" => "FailedDocumentsOnly"}))
    AmazonOpenSearchServerlessS3BackupMode.add_member(:all_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllDocuments", traits: {"smithy.api#enumValue" => "AllDocuments"}))
    AmazonopensearchserviceBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    AmazonopensearchserviceBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceBufferingSizeInMBs, name: "SizeInMBs"))
    AmazonopensearchserviceBufferingHints.type = Types::AmazonopensearchserviceBufferingHints
    AmazonopensearchserviceDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    AmazonopensearchserviceDestinationConfiguration.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDomainARN, name: "DomainARN"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceClusterEndpoint, name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    AmazonopensearchserviceDestinationConfiguration.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceTypeName, name: "TypeName"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexRotationPeriod, name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceBufferingHints, name: "BufferingHints"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceRetryOptions, name: "RetryOptions"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceS3BackupMode, name: "S3BackupMode"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    AmazonopensearchserviceDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    AmazonopensearchserviceDestinationConfiguration.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationConfiguration.type = Types::AmazonopensearchserviceDestinationConfiguration
    AmazonopensearchserviceDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    AmazonopensearchserviceDestinationDescription.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDomainARN, name: "DomainARN"))
    AmazonopensearchserviceDestinationDescription.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceClusterEndpoint, name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexName, name: "IndexName"))
    AmazonopensearchserviceDestinationDescription.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceTypeName, name: "TypeName"))
    AmazonopensearchserviceDestinationDescription.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexRotationPeriod, name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceBufferingHints, name: "BufferingHints"))
    AmazonopensearchserviceDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceRetryOptions, name: "RetryOptions"))
    AmazonopensearchserviceDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceS3BackupMode, name: "S3BackupMode"))
    AmazonopensearchserviceDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    AmazonopensearchserviceDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationDescription.add_member(:vpc_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescription, name: "VpcConfigurationDescription"))
    AmazonopensearchserviceDestinationDescription.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationDescription.type = Types::AmazonopensearchserviceDestinationDescription
    AmazonopensearchserviceDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    AmazonopensearchserviceDestinationUpdate.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDomainARN, name: "DomainARN"))
    AmazonopensearchserviceDestinationUpdate.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceClusterEndpoint, name: "ClusterEndpoint"))
    AmazonopensearchserviceDestinationUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexName, name: "IndexName"))
    AmazonopensearchserviceDestinationUpdate.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceTypeName, name: "TypeName"))
    AmazonopensearchserviceDestinationUpdate.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceIndexRotationPeriod, name: "IndexRotationPeriod"))
    AmazonopensearchserviceDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceBufferingHints, name: "BufferingHints"))
    AmazonopensearchserviceDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceRetryOptions, name: "RetryOptions"))
    AmazonopensearchserviceDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    AmazonopensearchserviceDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    AmazonopensearchserviceDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    AmazonopensearchserviceDestinationUpdate.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    AmazonopensearchserviceDestinationUpdate.type = Types::AmazonopensearchserviceDestinationUpdate
    AmazonopensearchserviceIndexRotationPeriod.add_member(:no_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoRotation", traits: {"smithy.api#enumValue" => "NoRotation"}))
    AmazonopensearchserviceIndexRotationPeriod.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneHour", traits: {"smithy.api#enumValue" => "OneHour"}))
    AmazonopensearchserviceIndexRotationPeriod.add_member(:one_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneDay", traits: {"smithy.api#enumValue" => "OneDay"}))
    AmazonopensearchserviceIndexRotationPeriod.add_member(:one_week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneWeek", traits: {"smithy.api#enumValue" => "OneWeek"}))
    AmazonopensearchserviceIndexRotationPeriod.add_member(:one_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneMonth", traits: {"smithy.api#enumValue" => "OneMonth"}))
    AmazonopensearchserviceRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceRetryDurationInSeconds, name: "DurationInSeconds"))
    AmazonopensearchserviceRetryOptions.type = Types::AmazonopensearchserviceRetryOptions
    AmazonopensearchserviceS3BackupMode.add_member(:failed_documents_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDocumentsOnly", traits: {"smithy.api#enumValue" => "FailedDocumentsOnly"}))
    AmazonopensearchserviceS3BackupMode.add_member(:all_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllDocuments", traits: {"smithy.api#enumValue" => "AllDocuments"}))
    AuthenticationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    AuthenticationConfiguration.add_member(:connectivity, ::Smithy::Schema::Shapes::MemberShape.new(target: Connectivity, name: "Connectivity", traits: {"smithy.api#required" => {}}))
    AuthenticationConfiguration.type = Types::AuthenticationConfiguration
    BufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: SizeInMBs, name: "SizeInMBs"))
    BufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: IntervalInSeconds, name: "IntervalInSeconds"))
    BufferingHints.type = Types::BufferingHints
    CatalogConfiguration.add_member(:catalog_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: GlueDataCatalogARN, name: "CatalogARN"))
    CatalogConfiguration.add_member(:warehouse_location, ::Smithy::Schema::Shapes::MemberShape.new(target: WarehouseLocation, name: "WarehouseLocation"))
    CatalogConfiguration.type = Types::CatalogConfiguration
    CloudWatchLoggingOptions.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled"))
    CloudWatchLoggingOptions.add_member(:log_group_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogGroupName, name: "LogGroupName"))
    CloudWatchLoggingOptions.add_member(:log_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: LogStreamName, name: "LogStreamName"))
    CloudWatchLoggingOptions.type = Types::CloudWatchLoggingOptions
    ColumnToJsonKeyMappings.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "key"))
    ColumnToJsonKeyMappings.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "value"))
    CompressionFormat.add_member(:uncompressed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNCOMPRESSED", traits: {"smithy.api#enumValue" => "UNCOMPRESSED"}))
    CompressionFormat.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionFormat.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    CompressionFormat.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "Snappy"}))
    CompressionFormat.add_member(:hadoop_snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HADOOP_SNAPPY", traits: {"smithy.api#enumValue" => "HADOOP_SNAPPY"}))
    ConcurrentModificationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ConcurrentModificationException.type = Types::ConcurrentModificationException
    Connectivity.add_member(:public, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PUBLIC", traits: {"smithy.api#enumValue" => "PUBLIC"}))
    Connectivity.add_member(:private, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PRIVATE", traits: {"smithy.api#enumValue" => "PRIVATE"}))
    ContentEncoding.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    ContentEncoding.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CopyCommand.add_member(:data_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTableName, name: "DataTableName", traits: {"smithy.api#required" => {}}))
    CopyCommand.add_member(:data_table_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: DataTableColumns, name: "DataTableColumns"))
    CopyCommand.add_member(:copy_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyOptions, name: "CopyOptions"))
    CopyCommand.type = Types::CopyCommand
    CreateDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    CreateDeliveryStreamInput.add_member(:delivery_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamType, name: "DeliveryStreamType"))
    CreateDeliveryStreamInput.add_member(:direct_put_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectPutSourceConfiguration, name: "DirectPutSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:kinesis_stream_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamSourceConfiguration, name: "KinesisStreamSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:delivery_stream_encryption_configuration_input, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamEncryptionConfigurationInput, name: "DeliveryStreamEncryptionConfigurationInput"))
    CreateDeliveryStreamInput.add_member(:s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3DestinationConfiguration", traits: {"smithy.api#deprecated" => {}}))
    CreateDeliveryStreamInput.add_member(:extended_s3_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedS3DestinationConfiguration, name: "ExtendedS3DestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:redshift_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDestinationConfiguration, name: "RedshiftDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:elasticsearch_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDestinationConfiguration, name: "ElasticsearchDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:amazonopensearchservice_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDestinationConfiguration, name: "AmazonopensearchserviceDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:splunk_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkDestinationConfiguration, name: "SplunkDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:http_endpoint_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointDestinationConfiguration, name: "HttpEndpointDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDeliveryStreamInputTagList, name: "Tags"))
    CreateDeliveryStreamInput.add_member(:amazon_open_search_serverless_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessDestinationConfiguration, name: "AmazonOpenSearchServerlessDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:msk_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKSourceConfiguration, name: "MSKSourceConfiguration"))
    CreateDeliveryStreamInput.add_member(:snowflake_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDestinationConfiguration, name: "SnowflakeDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:iceberg_destination_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationConfiguration, name: "IcebergDestinationConfiguration"))
    CreateDeliveryStreamInput.add_member(:database_source_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceConfiguration, name: "DatabaseSourceConfiguration"))
    CreateDeliveryStreamInput.type = Types::CreateDeliveryStreamInput
    CreateDeliveryStreamOutput.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamARN, name: "DeliveryStreamARN"))
    CreateDeliveryStreamOutput.type = Types::CreateDeliveryStreamOutput
    DataFormatConversionConfiguration.add_member(:schema_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaConfiguration, name: "SchemaConfiguration"))
    DataFormatConversionConfiguration.add_member(:input_format_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: InputFormatConfiguration, name: "InputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:output_format_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormatConfiguration, name: "OutputFormatConfiguration"))
    DataFormatConversionConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled"))
    DataFormatConversionConfiguration.type = Types::DataFormatConversionConfiguration
    DatabaseColumnIncludeOrExcludeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnName, name: "member"))
    DatabaseColumnList.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnIncludeOrExcludeList, name: "Include"))
    DatabaseColumnList.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnIncludeOrExcludeList, name: "Exclude"))
    DatabaseColumnList.type = Types::DatabaseColumnList
    DatabaseIncludeOrExcludeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseName, name: "member"))
    DatabaseList.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseIncludeOrExcludeList, name: "Include"))
    DatabaseList.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseIncludeOrExcludeList, name: "Exclude"))
    DatabaseList.type = Types::DatabaseList
    DatabaseSnapshotInfo.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "Id", traits: {"smithy.api#required" => {}}))
    DatabaseSnapshotInfo.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, name: "Table", traits: {"smithy.api#required" => {}}))
    DatabaseSnapshotInfo.add_member(:request_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "RequestTimestamp", traits: {"smithy.api#required" => {}}))
    DatabaseSnapshotInfo.add_member(:requested_by, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotRequestedBy, name: "RequestedBy", traits: {"smithy.api#required" => {}}))
    DatabaseSnapshotInfo.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: SnapshotStatus, name: "Status", traits: {"smithy.api#required" => {}}))
    DatabaseSnapshotInfo.add_member(:failure_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDescription, name: "FailureDescription"))
    DatabaseSnapshotInfo.type = Types::DatabaseSnapshotInfo
    DatabaseSnapshotInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSnapshotInfo, name: "member"))
    DatabaseSourceAuthenticationConfiguration.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration", traits: {"smithy.api#required" => {}}))
    DatabaseSourceAuthenticationConfiguration.type = Types::DatabaseSourceAuthenticationConfiguration
    DatabaseSourceConfiguration.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "Type", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEndpoint, name: "Endpoint", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabasePort, name: "Port", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SSLMode, name: "SSLMode"))
    DatabaseSourceConfiguration.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "Databases", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableList, name: "Tables", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnList, name: "Columns"))
    DatabaseSourceConfiguration.add_member(:surrogate_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSurrogateKeyList, name: "SurrogateKeys"))
    DatabaseSourceConfiguration.add_member(:snapshot_watermark_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, name: "SnapshotWatermarkTable", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:database_source_authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceAuthenticationConfiguration, name: "DatabaseSourceAuthenticationConfiguration", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.add_member(:database_source_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceVPCConfiguration, name: "DatabaseSourceVPCConfiguration", traits: {"smithy.api#required" => {}}))
    DatabaseSourceConfiguration.type = Types::DatabaseSourceConfiguration
    DatabaseSourceDescription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseType, name: "Type"))
    DatabaseSourceDescription.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseEndpoint, name: "Endpoint"))
    DatabaseSourceDescription.add_member(:port, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabasePort, name: "Port"))
    DatabaseSourceDescription.add_member(:ssl_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SSLMode, name: "SSLMode"))
    DatabaseSourceDescription.add_member(:databases, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseList, name: "Databases"))
    DatabaseSourceDescription.add_member(:tables, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableList, name: "Tables"))
    DatabaseSourceDescription.add_member(:columns, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnList, name: "Columns"))
    DatabaseSourceDescription.add_member(:surrogate_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseColumnIncludeOrExcludeList, name: "SurrogateKeys"))
    DatabaseSourceDescription.add_member(:snapshot_watermark_table, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, name: "SnapshotWatermarkTable"))
    DatabaseSourceDescription.add_member(:snapshot_info, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSnapshotInfoList, name: "SnapshotInfo"))
    DatabaseSourceDescription.add_member(:database_source_authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceAuthenticationConfiguration, name: "DatabaseSourceAuthenticationConfiguration"))
    DatabaseSourceDescription.add_member(:database_source_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceVPCConfiguration, name: "DatabaseSourceVPCConfiguration"))
    DatabaseSourceDescription.type = Types::DatabaseSourceDescription
    DatabaseSourceVPCConfiguration.add_member(:vpc_endpoint_service_name, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcEndpointServiceName, name: "VpcEndpointServiceName", traits: {"smithy.api#required" => {}}))
    DatabaseSourceVPCConfiguration.type = Types::DatabaseSourceVPCConfiguration
    DatabaseSurrogateKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "member"))
    DatabaseTableIncludeOrExcludeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableName, name: "member"))
    DatabaseTableList.add_member(:include, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableIncludeOrExcludeList, name: "Include"))
    DatabaseTableList.add_member(:exclude, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseTableIncludeOrExcludeList, name: "Exclude"))
    DatabaseTableList.type = Types::DatabaseTableList
    DatabaseType.add_member(:my_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MySQL", traits: {"smithy.api#enumValue" => "MySQL"}))
    DatabaseType.add_member(:postgre_sql, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PostgreSQL", traits: {"smithy.api#enumValue" => "PostgreSQL"}))
    DefaultDocumentIdFormat.add_member(:firehose_default, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIREHOSE_DEFAULT", traits: {"smithy.api#enumValue" => "FIREHOSE_DEFAULT"}))
    DefaultDocumentIdFormat.add_member(:no_document_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NO_DOCUMENT_ID", traits: {"smithy.api#enumValue" => "NO_DOCUMENT_ID"}))
    DeleteDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    DeleteDeliveryStreamInput.add_member(:allow_force_delete, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AllowForceDelete"))
    DeleteDeliveryStreamInput.type = Types::DeleteDeliveryStreamInput
    DeleteDeliveryStreamOutput.type = Types::DeleteDeliveryStreamOutput
    DeliveryStreamDescription.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:delivery_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamARN, name: "DeliveryStreamARN", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:delivery_stream_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamStatus, name: "DeliveryStreamStatus", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:failure_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDescription, name: "FailureDescription"))
    DeliveryStreamDescription.add_member(:delivery_stream_encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamEncryptionConfiguration, name: "DeliveryStreamEncryptionConfiguration"))
    DeliveryStreamDescription.add_member(:delivery_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamType, name: "DeliveryStreamType", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamVersionId, name: "VersionId", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:create_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "CreateTimestamp"))
    DeliveryStreamDescription.add_member(:last_update_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: Timestamp, name: "LastUpdateTimestamp"))
    DeliveryStreamDescription.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceDescription, name: "Source"))
    DeliveryStreamDescription.add_member(:destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescriptionList, name: "Destinations", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.add_member(:has_more_destinations, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreDestinations", traits: {"smithy.api#required" => {}}))
    DeliveryStreamDescription.type = Types::DeliveryStreamDescription
    DeliveryStreamEncryptionConfiguration.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSKMSKeyARN, name: "KeyARN"))
    DeliveryStreamEncryptionConfiguration.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType"))
    DeliveryStreamEncryptionConfiguration.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamEncryptionStatus, name: "Status"))
    DeliveryStreamEncryptionConfiguration.add_member(:failure_description, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureDescription, name: "FailureDescription"))
    DeliveryStreamEncryptionConfiguration.type = Types::DeliveryStreamEncryptionConfiguration
    DeliveryStreamEncryptionConfigurationInput.add_member(:key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSKMSKeyARN, name: "KeyARN"))
    DeliveryStreamEncryptionConfigurationInput.add_member(:key_type, ::Smithy::Schema::Shapes::MemberShape.new(target: KeyType, name: "KeyType", traits: {"smithy.api#required" => {}}))
    DeliveryStreamEncryptionConfigurationInput.type = Types::DeliveryStreamEncryptionConfigurationInput
    DeliveryStreamEncryptionStatus.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLED", traits: {"smithy.api#enumValue" => "ENABLED"}))
    DeliveryStreamEncryptionStatus.add_member(:enabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING", traits: {"smithy.api#enumValue" => "ENABLING"}))
    DeliveryStreamEncryptionStatus.add_member(:enabling_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENABLING_FAILED", traits: {"smithy.api#enumValue" => "ENABLING_FAILED"}))
    DeliveryStreamEncryptionStatus.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED", traits: {"smithy.api#enumValue" => "DISABLED"}))
    DeliveryStreamEncryptionStatus.add_member(:disabling, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING", traits: {"smithy.api#enumValue" => "DISABLING"}))
    DeliveryStreamEncryptionStatus.add_member(:disabling_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLING_FAILED", traits: {"smithy.api#enumValue" => "DISABLING_FAILED"}))
    DeliveryStreamFailureType.add_member(:vpc_endpoint_service_name_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND", traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_SERVICE_NAME_NOT_FOUND"}))
    DeliveryStreamFailureType.add_member(:vpc_interface_endpoint_service_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "VPC_INTERFACE_ENDPOINT_SERVICE_ACCESS_DENIED"}))
    DeliveryStreamFailureType.add_member(:retire_kms_grant_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RETIRE_KMS_GRANT_FAILED", traits: {"smithy.api#enumValue" => "RETIRE_KMS_GRANT_FAILED"}))
    DeliveryStreamFailureType.add_member(:create_kms_grant_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_KMS_GRANT_FAILED", traits: {"smithy.api#enumValue" => "CREATE_KMS_GRANT_FAILED"}))
    DeliveryStreamFailureType.add_member(:kms_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "KMS_ACCESS_DENIED"}))
    DeliveryStreamFailureType.add_member(:disabled_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DISABLED_KMS_KEY", traits: {"smithy.api#enumValue" => "DISABLED_KMS_KEY"}))
    DeliveryStreamFailureType.add_member(:invalid_kms_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "INVALID_KMS_KEY", traits: {"smithy.api#enumValue" => "INVALID_KMS_KEY"}))
    DeliveryStreamFailureType.add_member(:kms_key_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_KEY_NOT_FOUND", traits: {"smithy.api#enumValue" => "KMS_KEY_NOT_FOUND"}))
    DeliveryStreamFailureType.add_member(:kms_opt_in_required, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KMS_OPT_IN_REQUIRED", traits: {"smithy.api#enumValue" => "KMS_OPT_IN_REQUIRED"}))
    DeliveryStreamFailureType.add_member(:create_eni_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_ENI_FAILED", traits: {"smithy.api#enumValue" => "CREATE_ENI_FAILED"}))
    DeliveryStreamFailureType.add_member(:delete_eni_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETE_ENI_FAILED", traits: {"smithy.api#enumValue" => "DELETE_ENI_FAILED"}))
    DeliveryStreamFailureType.add_member(:subnet_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_NOT_FOUND", traits: {"smithy.api#enumValue" => "SUBNET_NOT_FOUND"}))
    DeliveryStreamFailureType.add_member(:security_group_not_found, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUP_NOT_FOUND", traits: {"smithy.api#enumValue" => "SECURITY_GROUP_NOT_FOUND"}))
    DeliveryStreamFailureType.add_member(:eni_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ENI_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "ENI_ACCESS_DENIED"}))
    DeliveryStreamFailureType.add_member(:subnet_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUBNET_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "SUBNET_ACCESS_DENIED"}))
    DeliveryStreamFailureType.add_member(:security_group_access_denied, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SECURITY_GROUP_ACCESS_DENIED", traits: {"smithy.api#enumValue" => "SECURITY_GROUP_ACCESS_DENIED"}))
    DeliveryStreamFailureType.add_member(:unknown_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNKNOWN_ERROR", traits: {"smithy.api#enumValue" => "UNKNOWN_ERROR"}))
    DeliveryStreamNameList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "member"))
    DeliveryStreamStatus.add_member(:creating, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING", traits: {"smithy.api#enumValue" => "CREATING"}))
    DeliveryStreamStatus.add_member(:creating_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATING_FAILED", traits: {"smithy.api#enumValue" => "CREATING_FAILED"}))
    DeliveryStreamStatus.add_member(:deleting, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING", traits: {"smithy.api#enumValue" => "DELETING"}))
    DeliveryStreamStatus.add_member(:deleting_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DELETING_FAILED", traits: {"smithy.api#enumValue" => "DELETING_FAILED"}))
    DeliveryStreamStatus.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ACTIVE", traits: {"smithy.api#enumValue" => "ACTIVE"}))
    DeliveryStreamType.add_member(:direct_put, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DirectPut", traits: {"smithy.api#enumValue" => "DirectPut"}))
    DeliveryStreamType.add_member(:kinesis_stream_as_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "KinesisStreamAsSource", traits: {"smithy.api#enumValue" => "KinesisStreamAsSource"}))
    DeliveryStreamType.add_member(:msk_as_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MSKAsSource", traits: {"smithy.api#enumValue" => "MSKAsSource"}))
    DeliveryStreamType.add_member(:database_as_source, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DatabaseAsSource", traits: {"smithy.api#enumValue" => "DatabaseAsSource"}))
    DescribeDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    DescribeDeliveryStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: DescribeDeliveryStreamInputLimit, name: "Limit"))
    DescribeDeliveryStreamInput.add_member(:exclusive_start_destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationId, name: "ExclusiveStartDestinationId"))
    DescribeDeliveryStreamInput.type = Types::DescribeDeliveryStreamInput
    DescribeDeliveryStreamOutput.add_member(:delivery_stream_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamDescription, name: "DeliveryStreamDescription", traits: {"smithy.api#required" => {}}))
    DescribeDeliveryStreamOutput.type = Types::DescribeDeliveryStreamOutput
    Deserializer.add_member(:open_x_json_ser_de, ::Smithy::Schema::Shapes::MemberShape.new(target: OpenXJsonSerDe, name: "OpenXJsonSerDe"))
    Deserializer.add_member(:hive_json_ser_de, ::Smithy::Schema::Shapes::MemberShape.new(target: HiveJsonSerDe, name: "HiveJsonSerDe"))
    Deserializer.type = Types::Deserializer
    DestinationDescription.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationId, name: "DestinationId", traits: {"smithy.api#required" => {}}))
    DestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    DestinationDescription.add_member(:extended_s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedS3DestinationDescription, name: "ExtendedS3DestinationDescription"))
    DestinationDescription.add_member(:redshift_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDestinationDescription, name: "RedshiftDestinationDescription"))
    DestinationDescription.add_member(:elasticsearch_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDestinationDescription, name: "ElasticsearchDestinationDescription"))
    DestinationDescription.add_member(:amazonopensearchservice_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDestinationDescription, name: "AmazonopensearchserviceDestinationDescription"))
    DestinationDescription.add_member(:splunk_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkDestinationDescription, name: "SplunkDestinationDescription"))
    DestinationDescription.add_member(:http_endpoint_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointDestinationDescription, name: "HttpEndpointDestinationDescription"))
    DestinationDescription.add_member(:snowflake_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDestinationDescription, name: "SnowflakeDestinationDescription"))
    DestinationDescription.add_member(:amazon_open_search_serverless_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessDestinationDescription, name: "AmazonOpenSearchServerlessDestinationDescription"))
    DestinationDescription.add_member(:iceberg_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationDescription, name: "IcebergDestinationDescription"))
    DestinationDescription.type = Types::DestinationDescription
    DestinationDescriptionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationDescription, name: "member"))
    DestinationTableConfiguration.add_member(:destination_table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLettersDigitsUnderscoresDots, name: "DestinationTableName", traits: {"smithy.api#required" => {}}))
    DestinationTableConfiguration.add_member(:destination_database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StringWithLettersDigitsUnderscoresDots, name: "DestinationDatabaseName", traits: {"smithy.api#required" => {}}))
    DestinationTableConfiguration.add_member(:unique_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfNonEmptyStringsWithoutWhitespace, name: "UniqueKeys"))
    DestinationTableConfiguration.add_member(:partition_spec, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionSpec, name: "PartitionSpec"))
    DestinationTableConfiguration.add_member(:s3_error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "S3ErrorOutputPrefix"))
    DestinationTableConfiguration.type = Types::DestinationTableConfiguration
    DestinationTableConfigurationList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationTableConfiguration, name: "member"))
    DirectPutSourceConfiguration.add_member(:throughput_hint_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputHintInMBs, name: "ThroughputHintInMBs", traits: {"smithy.api#required" => {}}))
    DirectPutSourceConfiguration.type = Types::DirectPutSourceConfiguration
    DirectPutSourceDescription.add_member(:throughput_hint_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ThroughputHintInMBs, name: "ThroughputHintInMBs"))
    DirectPutSourceDescription.type = Types::DirectPutSourceDescription
    DocumentIdOptions.add_member(:default_document_id_format, ::Smithy::Schema::Shapes::MemberShape.new(target: DefaultDocumentIdFormat, name: "DefaultDocumentIdFormat", traits: {"smithy.api#required" => {}}))
    DocumentIdOptions.type = Types::DocumentIdOptions
    DynamicPartitioningConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryOptions, name: "RetryOptions"))
    DynamicPartitioningConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled"))
    DynamicPartitioningConfiguration.type = Types::DynamicPartitioningConfiguration
    ElasticsearchBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    ElasticsearchBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchBufferingSizeInMBs, name: "SizeInMBs"))
    ElasticsearchBufferingHints.type = Types::ElasticsearchBufferingHints
    ElasticsearchDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    ElasticsearchDestinationConfiguration.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDomainARN, name: "DomainARN"))
    ElasticsearchDestinationConfiguration.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchClusterEndpoint, name: "ClusterEndpoint"))
    ElasticsearchDestinationConfiguration.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexName, name: "IndexName", traits: {"smithy.api#required" => {}}))
    ElasticsearchDestinationConfiguration.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchTypeName, name: "TypeName"))
    ElasticsearchDestinationConfiguration.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexRotationPeriod, name: "IndexRotationPeriod"))
    ElasticsearchDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchBufferingHints, name: "BufferingHints"))
    ElasticsearchDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchRetryOptions, name: "RetryOptions"))
    ElasticsearchDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchS3BackupMode, name: "S3BackupMode"))
    ElasticsearchDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    ElasticsearchDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ElasticsearchDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationConfiguration.add_member(:vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfiguration, name: "VpcConfiguration"))
    ElasticsearchDestinationConfiguration.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    ElasticsearchDestinationConfiguration.type = Types::ElasticsearchDestinationConfiguration
    ElasticsearchDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    ElasticsearchDestinationDescription.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDomainARN, name: "DomainARN"))
    ElasticsearchDestinationDescription.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchClusterEndpoint, name: "ClusterEndpoint"))
    ElasticsearchDestinationDescription.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexName, name: "IndexName"))
    ElasticsearchDestinationDescription.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchTypeName, name: "TypeName"))
    ElasticsearchDestinationDescription.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexRotationPeriod, name: "IndexRotationPeriod"))
    ElasticsearchDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchBufferingHints, name: "BufferingHints"))
    ElasticsearchDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchRetryOptions, name: "RetryOptions"))
    ElasticsearchDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchS3BackupMode, name: "S3BackupMode"))
    ElasticsearchDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    ElasticsearchDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ElasticsearchDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationDescription.add_member(:vpc_configuration_description, ::Smithy::Schema::Shapes::MemberShape.new(target: VpcConfigurationDescription, name: "VpcConfigurationDescription"))
    ElasticsearchDestinationDescription.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    ElasticsearchDestinationDescription.type = Types::ElasticsearchDestinationDescription
    ElasticsearchDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    ElasticsearchDestinationUpdate.add_member(:domain_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDomainARN, name: "DomainARN"))
    ElasticsearchDestinationUpdate.add_member(:cluster_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchClusterEndpoint, name: "ClusterEndpoint"))
    ElasticsearchDestinationUpdate.add_member(:index_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexName, name: "IndexName"))
    ElasticsearchDestinationUpdate.add_member(:type_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchTypeName, name: "TypeName"))
    ElasticsearchDestinationUpdate.add_member(:index_rotation_period, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchIndexRotationPeriod, name: "IndexRotationPeriod"))
    ElasticsearchDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchBufferingHints, name: "BufferingHints"))
    ElasticsearchDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchRetryOptions, name: "RetryOptions"))
    ElasticsearchDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    ElasticsearchDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ElasticsearchDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ElasticsearchDestinationUpdate.add_member(:document_id_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentIdOptions, name: "DocumentIdOptions"))
    ElasticsearchDestinationUpdate.type = Types::ElasticsearchDestinationUpdate
    ElasticsearchIndexRotationPeriod.add_member(:no_rotation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoRotation", traits: {"smithy.api#enumValue" => "NoRotation"}))
    ElasticsearchIndexRotationPeriod.add_member(:one_hour, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneHour", traits: {"smithy.api#enumValue" => "OneHour"}))
    ElasticsearchIndexRotationPeriod.add_member(:one_day, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneDay", traits: {"smithy.api#enumValue" => "OneDay"}))
    ElasticsearchIndexRotationPeriod.add_member(:one_week, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneWeek", traits: {"smithy.api#enumValue" => "OneWeek"}))
    ElasticsearchIndexRotationPeriod.add_member(:one_month, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OneMonth", traits: {"smithy.api#enumValue" => "OneMonth"}))
    ElasticsearchRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchRetryDurationInSeconds, name: "DurationInSeconds"))
    ElasticsearchRetryOptions.type = Types::ElasticsearchRetryOptions
    ElasticsearchS3BackupMode.add_member(:failed_documents_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDocumentsOnly", traits: {"smithy.api#enumValue" => "FailedDocumentsOnly"}))
    ElasticsearchS3BackupMode.add_member(:all_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllDocuments", traits: {"smithy.api#enumValue" => "AllDocuments"}))
    EncryptionConfiguration.add_member(:no_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: NoEncryptionConfig, name: "NoEncryptionConfig"))
    EncryptionConfiguration.add_member(:kms_encryption_config, ::Smithy::Schema::Shapes::MemberShape.new(target: KMSEncryptionConfig, name: "KMSEncryptionConfig"))
    EncryptionConfiguration.type = Types::EncryptionConfiguration
    ExtendedS3DestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationConfiguration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ExtendedS3DestinationConfiguration.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    ExtendedS3DestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    ExtendedS3DestinationConfiguration.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat"))
    ExtendedS3DestinationConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BackupMode, name: "S3BackupMode"))
    ExtendedS3DestinationConfiguration.add_member(:s3_backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3BackupConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:data_format_conversion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormatConversionConfiguration, name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:dynamic_partitioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicPartitioningConfiguration, name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationConfiguration.add_member(:file_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: FileExtension, name: "FileExtension"))
    ExtendedS3DestinationConfiguration.add_member(:custom_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTimeZone, name: "CustomTimeZone"))
    ExtendedS3DestinationConfiguration.type = Types::ExtendedS3DestinationConfiguration
    ExtendedS3DestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationDescription.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ExtendedS3DestinationDescription.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    ExtendedS3DestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationDescription.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationDescription.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#required" => {}}))
    ExtendedS3DestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BackupMode, name: "S3BackupMode"))
    ExtendedS3DestinationDescription.add_member(:s3_backup_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3BackupDescription"))
    ExtendedS3DestinationDescription.add_member(:data_format_conversion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormatConversionConfiguration, name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationDescription.add_member(:dynamic_partitioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicPartitioningConfiguration, name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationDescription.add_member(:file_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: FileExtension, name: "FileExtension"))
    ExtendedS3DestinationDescription.add_member(:custom_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTimeZone, name: "CustomTimeZone"))
    ExtendedS3DestinationDescription.type = Types::ExtendedS3DestinationDescription
    ExtendedS3DestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    ExtendedS3DestinationUpdate.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN"))
    ExtendedS3DestinationUpdate.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    ExtendedS3DestinationUpdate.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    ExtendedS3DestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    ExtendedS3DestinationUpdate.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat"))
    ExtendedS3DestinationUpdate.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    ExtendedS3DestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: S3BackupMode, name: "S3BackupMode"))
    ExtendedS3DestinationUpdate.add_member(:s3_backup_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3BackupUpdate"))
    ExtendedS3DestinationUpdate.add_member(:data_format_conversion_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DataFormatConversionConfiguration, name: "DataFormatConversionConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:dynamic_partitioning_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicPartitioningConfiguration, name: "DynamicPartitioningConfiguration"))
    ExtendedS3DestinationUpdate.add_member(:file_extension, ::Smithy::Schema::Shapes::MemberShape.new(target: FileExtension, name: "FileExtension"))
    ExtendedS3DestinationUpdate.add_member(:custom_time_zone, ::Smithy::Schema::Shapes::MemberShape.new(target: CustomTimeZone, name: "CustomTimeZone"))
    ExtendedS3DestinationUpdate.type = Types::ExtendedS3DestinationUpdate
    FailureDescription.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamFailureType, name: "Type", traits: {"smithy.api#required" => {}}))
    FailureDescription.add_member(:details, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "Details", traits: {"smithy.api#required" => {}}))
    FailureDescription.type = Types::FailureDescription
    HECEndpointType.add_member(:raw, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Raw", traits: {"smithy.api#enumValue" => "Raw"}))
    HECEndpointType.add_member(:event, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Event", traits: {"smithy.api#enumValue" => "Event"}))
    HiveJsonSerDe.add_member(:timestamp_formats, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfNonEmptyStrings, name: "TimestampFormats"))
    HiveJsonSerDe.type = Types::HiveJsonSerDe
    HttpEndpointBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointBufferingSizeInMBs, name: "SizeInMBs"))
    HttpEndpointBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    HttpEndpointBufferingHints.type = Types::HttpEndpointBufferingHints
    HttpEndpointCommonAttribute.add_member(:attribute_name, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointAttributeName, name: "AttributeName", traits: {"smithy.api#required" => {}}))
    HttpEndpointCommonAttribute.add_member(:attribute_value, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointAttributeValue, name: "AttributeValue", traits: {"smithy.api#required" => {}}))
    HttpEndpointCommonAttribute.type = Types::HttpEndpointCommonAttribute
    HttpEndpointCommonAttributesList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointCommonAttribute, name: "member"))
    HttpEndpointConfiguration.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointUrl, name: "Url", traits: {"smithy.api#required" => {}}))
    HttpEndpointConfiguration.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointName, name: "Name"))
    HttpEndpointConfiguration.add_member(:access_key, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointAccessKey, name: "AccessKey"))
    HttpEndpointConfiguration.type = Types::HttpEndpointConfiguration
    HttpEndpointDescription.add_member(:url, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointUrl, name: "Url"))
    HttpEndpointDescription.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointName, name: "Name"))
    HttpEndpointDescription.type = Types::HttpEndpointDescription
    HttpEndpointDestinationConfiguration.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointConfiguration, name: "EndpointConfiguration", traits: {"smithy.api#required" => {}}))
    HttpEndpointDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointBufferingHints, name: "BufferingHints"))
    HttpEndpointDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationConfiguration.add_member(:request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRequestConfiguration, name: "RequestConfiguration"))
    HttpEndpointDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    HttpEndpointDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    HttpEndpointDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRetryOptions, name: "RetryOptions"))
    HttpEndpointDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointS3BackupMode, name: "S3BackupMode"))
    HttpEndpointDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    HttpEndpointDestinationConfiguration.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationConfiguration.type = Types::HttpEndpointDestinationConfiguration
    HttpEndpointDestinationDescription.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointDescription, name: "EndpointConfiguration"))
    HttpEndpointDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointBufferingHints, name: "BufferingHints"))
    HttpEndpointDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationDescription.add_member(:request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRequestConfiguration, name: "RequestConfiguration"))
    HttpEndpointDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    HttpEndpointDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    HttpEndpointDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRetryOptions, name: "RetryOptions"))
    HttpEndpointDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointS3BackupMode, name: "S3BackupMode"))
    HttpEndpointDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    HttpEndpointDestinationDescription.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationDescription.type = Types::HttpEndpointDestinationDescription
    HttpEndpointDestinationUpdate.add_member(:endpoint_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointConfiguration, name: "EndpointConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointBufferingHints, name: "BufferingHints"))
    HttpEndpointDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    HttpEndpointDestinationUpdate.add_member(:request_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRequestConfiguration, name: "RequestConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    HttpEndpointDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    HttpEndpointDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRetryOptions, name: "RetryOptions"))
    HttpEndpointDestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointS3BackupMode, name: "S3BackupMode"))
    HttpEndpointDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    HttpEndpointDestinationUpdate.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    HttpEndpointDestinationUpdate.type = Types::HttpEndpointDestinationUpdate
    HttpEndpointRequestConfiguration.add_member(:content_encoding, ::Smithy::Schema::Shapes::MemberShape.new(target: ContentEncoding, name: "ContentEncoding"))
    HttpEndpointRequestConfiguration.add_member(:common_attributes, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointCommonAttributesList, name: "CommonAttributes"))
    HttpEndpointRequestConfiguration.type = Types::HttpEndpointRequestConfiguration
    HttpEndpointRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointRetryDurationInSeconds, name: "DurationInSeconds"))
    HttpEndpointRetryOptions.type = Types::HttpEndpointRetryOptions
    HttpEndpointS3BackupMode.add_member(:failed_data_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDataOnly", traits: {"smithy.api#enumValue" => "FailedDataOnly"}))
    HttpEndpointS3BackupMode.add_member(:all_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllData", traits: {"smithy.api#enumValue" => "AllData"}))
    IcebergDestinationConfiguration.add_member(:destination_table_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationTableConfigurationList, name: "DestinationTableConfigurationList"))
    IcebergDestinationConfiguration.add_member(:schema_evolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaEvolutionConfiguration, name: "SchemaEvolutionConfiguration"))
    IcebergDestinationConfiguration.add_member(:table_creation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationConfiguration, name: "TableCreationConfiguration"))
    IcebergDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    IcebergDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    IcebergDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    IcebergDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergS3BackupMode, name: "S3BackupMode"))
    IcebergDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryOptions, name: "RetryOptions"))
    IcebergDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:append_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AppendOnly"))
    IcebergDestinationConfiguration.add_member(:catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfiguration, name: "CatalogConfiguration", traits: {"smithy.api#required" => {}}))
    IcebergDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    IcebergDestinationConfiguration.type = Types::IcebergDestinationConfiguration
    IcebergDestinationDescription.add_member(:destination_table_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationTableConfigurationList, name: "DestinationTableConfigurationList"))
    IcebergDestinationDescription.add_member(:schema_evolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaEvolutionConfiguration, name: "SchemaEvolutionConfiguration"))
    IcebergDestinationDescription.add_member(:table_creation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationConfiguration, name: "TableCreationConfiguration"))
    IcebergDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    IcebergDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    IcebergDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    IcebergDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergS3BackupMode, name: "S3BackupMode"))
    IcebergDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryOptions, name: "RetryOptions"))
    IcebergDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    IcebergDestinationDescription.add_member(:append_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AppendOnly"))
    IcebergDestinationDescription.add_member(:catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfiguration, name: "CatalogConfiguration"))
    IcebergDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    IcebergDestinationDescription.type = Types::IcebergDestinationDescription
    IcebergDestinationUpdate.add_member(:destination_table_configuration_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationTableConfigurationList, name: "DestinationTableConfigurationList"))
    IcebergDestinationUpdate.add_member(:schema_evolution_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaEvolutionConfiguration, name: "SchemaEvolutionConfiguration"))
    IcebergDestinationUpdate.add_member(:table_creation_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: TableCreationConfiguration, name: "TableCreationConfiguration"))
    IcebergDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    IcebergDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    IcebergDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    IcebergDestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergS3BackupMode, name: "S3BackupMode"))
    IcebergDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryOptions, name: "RetryOptions"))
    IcebergDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    IcebergDestinationUpdate.add_member(:append_only, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "AppendOnly"))
    IcebergDestinationUpdate.add_member(:catalog_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: CatalogConfiguration, name: "CatalogConfiguration"))
    IcebergDestinationUpdate.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration"))
    IcebergDestinationUpdate.type = Types::IcebergDestinationUpdate
    IcebergS3BackupMode.add_member(:failed_data_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDataOnly", traits: {"smithy.api#enumValue" => "FailedDataOnly"}))
    IcebergS3BackupMode.add_member(:all_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllData", traits: {"smithy.api#enumValue" => "AllData"}))
    InputFormatConfiguration.add_member(:deserializer, ::Smithy::Schema::Shapes::MemberShape.new(target: Deserializer, name: "Deserializer"))
    InputFormatConfiguration.type = Types::InputFormatConfiguration
    InvalidArgumentException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidArgumentException.type = Types::InvalidArgumentException
    InvalidKMSResourceException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    InvalidKMSResourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidKMSResourceException.type = Types::InvalidKMSResourceException
    InvalidSourceException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "code"))
    InvalidSourceException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InvalidSourceException.type = Types::InvalidSourceException
    KMSEncryptionConfig.add_member(:awskms_key_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSKMSKeyARN, name: "AWSKMSKeyARN", traits: {"smithy.api#required" => {}}))
    KMSEncryptionConfig.type = Types::KMSEncryptionConfig
    KeyType.add_member(:aws_owned_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AWS_OWNED_CMK", traits: {"smithy.api#enumValue" => "AWS_OWNED_CMK"}))
    KeyType.add_member(:customer_managed_cmk, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CUSTOMER_MANAGED_CMK", traits: {"smithy.api#enumValue" => "CUSTOMER_MANAGED_CMK"}))
    KinesisStreamSourceConfiguration.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamARN, name: "KinesisStreamARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamSourceConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    KinesisStreamSourceConfiguration.type = Types::KinesisStreamSourceConfiguration
    KinesisStreamSourceDescription.add_member(:kinesis_stream_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamARN, name: "KinesisStreamARN"))
    KinesisStreamSourceDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    KinesisStreamSourceDescription.add_member(:delivery_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStartTimestamp, name: "DeliveryStartTimestamp"))
    KinesisStreamSourceDescription.type = Types::KinesisStreamSourceDescription
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    LimitExceededException.type = Types::LimitExceededException
    ListDeliveryStreamsInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListDeliveryStreamsInputLimit, name: "Limit"))
    ListDeliveryStreamsInput.add_member(:delivery_stream_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamType, name: "DeliveryStreamType"))
    ListDeliveryStreamsInput.add_member(:exclusive_start_delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "ExclusiveStartDeliveryStreamName"))
    ListDeliveryStreamsInput.type = Types::ListDeliveryStreamsInput
    ListDeliveryStreamsOutput.add_member(:delivery_stream_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamNameList, name: "DeliveryStreamNames", traits: {"smithy.api#required" => {}}))
    ListDeliveryStreamsOutput.add_member(:has_more_delivery_streams, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreDeliveryStreams", traits: {"smithy.api#required" => {}}))
    ListDeliveryStreamsOutput.type = Types::ListDeliveryStreamsOutput
    ListOfNonEmptyStrings.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyString, name: "member"))
    ListOfNonEmptyStringsWithoutWhitespace.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "member"))
    ListTagsForDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    ListTagsForDeliveryStreamInput.add_member(:exclusive_start_tag_key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "ExclusiveStartTagKey"))
    ListTagsForDeliveryStreamInput.add_member(:limit, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagsForDeliveryStreamInputLimit, name: "Limit"))
    ListTagsForDeliveryStreamInput.type = Types::ListTagsForDeliveryStreamInput
    ListTagsForDeliveryStreamOutput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: ListTagsForDeliveryStreamOutputTagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    ListTagsForDeliveryStreamOutput.add_member(:has_more_tags, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "HasMoreTags", traits: {"smithy.api#required" => {}}))
    ListTagsForDeliveryStreamOutput.type = Types::ListTagsForDeliveryStreamOutput
    ListTagsForDeliveryStreamOutputTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    MSKSourceConfiguration.add_member(:msk_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKClusterARN, name: "MSKClusterARN", traits: {"smithy.api#required" => {}}))
    MSKSourceConfiguration.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName", traits: {"smithy.api#required" => {}}))
    MSKSourceConfiguration.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfiguration, name: "AuthenticationConfiguration", traits: {"smithy.api#required" => {}}))
    MSKSourceConfiguration.add_member(:read_from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadFromTimestamp, name: "ReadFromTimestamp"))
    MSKSourceConfiguration.type = Types::MSKSourceConfiguration
    MSKSourceDescription.add_member(:msk_cluster_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKClusterARN, name: "MSKClusterARN"))
    MSKSourceDescription.add_member(:topic_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TopicName, name: "TopicName"))
    MSKSourceDescription.add_member(:authentication_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthenticationConfiguration, name: "AuthenticationConfiguration"))
    MSKSourceDescription.add_member(:delivery_start_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStartTimestamp, name: "DeliveryStartTimestamp"))
    MSKSourceDescription.add_member(:read_from_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: ReadFromTimestamp, name: "ReadFromTimestamp"))
    MSKSourceDescription.type = Types::MSKSourceDescription
    NoEncryptionConfig.add_member(:no_encryption, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NoEncryption", traits: {"smithy.api#enumValue" => "NoEncryption"}))
    OpenXJsonSerDe.add_member(:convert_dots_in_json_keys_to_underscores, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "ConvertDotsInJsonKeysToUnderscores"))
    OpenXJsonSerDe.add_member(:case_insensitive, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "CaseInsensitive"))
    OpenXJsonSerDe.add_member(:column_to_json_key_mappings, ::Smithy::Schema::Shapes::MemberShape.new(target: ColumnToJsonKeyMappings, name: "ColumnToJsonKeyMappings"))
    OpenXJsonSerDe.type = Types::OpenXJsonSerDe
    OrcCompression.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NONE", traits: {"smithy.api#enumValue" => "NONE"}))
    OrcCompression.add_member(:zlib, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZLIB", traits: {"smithy.api#enumValue" => "ZLIB"}))
    OrcCompression.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    OrcFormatVersion.add_member(:v0_11, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V0_11", traits: {"smithy.api#enumValue" => "V0_11"}))
    OrcFormatVersion.add_member(:v0_12, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V0_12", traits: {"smithy.api#enumValue" => "V0_12"}))
    OrcSerDe.add_member(:stripe_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: OrcStripeSizeBytes, name: "StripeSizeBytes"))
    OrcSerDe.add_member(:block_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockSizeBytes, name: "BlockSizeBytes"))
    OrcSerDe.add_member(:row_index_stride, ::Smithy::Schema::Shapes::MemberShape.new(target: OrcRowIndexStride, name: "RowIndexStride"))
    OrcSerDe.add_member(:enable_padding, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnablePadding"))
    OrcSerDe.add_member(:padding_tolerance, ::Smithy::Schema::Shapes::MemberShape.new(target: Proportion, name: "PaddingTolerance"))
    OrcSerDe.add_member(:compression, ::Smithy::Schema::Shapes::MemberShape.new(target: OrcCompression, name: "Compression"))
    OrcSerDe.add_member(:bloom_filter_columns, ::Smithy::Schema::Shapes::MemberShape.new(target: ListOfNonEmptyStringsWithoutWhitespace, name: "BloomFilterColumns"))
    OrcSerDe.add_member(:bloom_filter_false_positive_probability, ::Smithy::Schema::Shapes::MemberShape.new(target: Proportion, name: "BloomFilterFalsePositiveProbability"))
    OrcSerDe.add_member(:dictionary_key_threshold, ::Smithy::Schema::Shapes::MemberShape.new(target: Proportion, name: "DictionaryKeyThreshold"))
    OrcSerDe.add_member(:format_version, ::Smithy::Schema::Shapes::MemberShape.new(target: OrcFormatVersion, name: "FormatVersion"))
    OrcSerDe.type = Types::OrcSerDe
    OutputFormatConfiguration.add_member(:serializer, ::Smithy::Schema::Shapes::MemberShape.new(target: Serializer, name: "Serializer"))
    OutputFormatConfiguration.type = Types::OutputFormatConfiguration
    ParquetCompression.add_member(:uncompressed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UNCOMPRESSED", traits: {"smithy.api#enumValue" => "UNCOMPRESSED"}))
    ParquetCompression.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    ParquetCompression.add_member(:snappy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SNAPPY", traits: {"smithy.api#enumValue" => "SNAPPY"}))
    ParquetSerDe.add_member(:block_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: BlockSizeBytes, name: "BlockSizeBytes"))
    ParquetSerDe.add_member(:page_size_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetPageSizeBytes, name: "PageSizeBytes"))
    ParquetSerDe.add_member(:compression, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetCompression, name: "Compression"))
    ParquetSerDe.add_member(:enable_dictionary_compression, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "EnableDictionaryCompression"))
    ParquetSerDe.add_member(:max_padding_bytes, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerObject, name: "MaxPaddingBytes"))
    ParquetSerDe.add_member(:writer_version, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetWriterVersion, name: "WriterVersion"))
    ParquetSerDe.type = Types::ParquetSerDe
    ParquetWriterVersion.add_member(:v1, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V1", traits: {"smithy.api#enumValue" => "V1"}))
    ParquetWriterVersion.add_member(:v2, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "V2", traits: {"smithy.api#enumValue" => "V2"}))
    PartitionField.add_member(:source_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "SourceName", traits: {"smithy.api#required" => {}}))
    PartitionField.type = Types::PartitionField
    PartitionFields.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionField, name: "member"))
    PartitionSpec.add_member(:identity, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionFields, name: "Identity"))
    PartitionSpec.type = Types::PartitionSpec
    ProcessingConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled"))
    ProcessingConfiguration.add_member(:processors, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorList, name: "Processors"))
    ProcessingConfiguration.type = Types::ProcessingConfiguration
    Processor.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorType, name: "Type", traits: {"smithy.api#required" => {}}))
    Processor.add_member(:parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorParameterList, name: "Parameters"))
    Processor.type = Types::Processor
    ProcessorList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Processor, name: "member"))
    ProcessorParameter.add_member(:parameter_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorParameterName, name: "ParameterName", traits: {"smithy.api#required" => {}}))
    ProcessorParameter.add_member(:parameter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorParameterValue, name: "ParameterValue", traits: {"smithy.api#required" => {}}))
    ProcessorParameter.type = Types::ProcessorParameter
    ProcessorParameterList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessorParameter, name: "member"))
    ProcessorParameterName.add_member(:lambda_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_ARN", traits: {"smithy.api#enumValue" => "LambdaArn"}))
    ProcessorParameterName.add_member(:lambda_number_of_retries, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LAMBDA_NUMBER_OF_RETRIES", traits: {"smithy.api#enumValue" => "NumberOfRetries"}))
    ProcessorParameterName.add_member(:metadata_extraction_query, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "METADATA_EXTRACTION_QUERY", traits: {"smithy.api#enumValue" => "MetadataExtractionQuery"}))
    ProcessorParameterName.add_member(:json_parsing_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_PARSING_ENGINE", traits: {"smithy.api#enumValue" => "JsonParsingEngine"}))
    ProcessorParameterName.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ROLE_ARN", traits: {"smithy.api#enumValue" => "RoleArn"}))
    ProcessorParameterName.add_member(:buffer_size_in_mb, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUFFER_SIZE_IN_MB", traits: {"smithy.api#enumValue" => "BufferSizeInMBs"}))
    ProcessorParameterName.add_member(:buffer_interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BUFFER_INTERVAL_IN_SECONDS", traits: {"smithy.api#enumValue" => "BufferIntervalInSeconds"}))
    ProcessorParameterName.add_member(:sub_record_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUB_RECORD_TYPE", traits: {"smithy.api#enumValue" => "SubRecordType"}))
    ProcessorParameterName.add_member(:delimiter, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Delimiter", traits: {"smithy.api#enumValue" => "Delimiter"}))
    ProcessorParameterName.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPRESSION_FORMAT", traits: {"smithy.api#enumValue" => "CompressionFormat"}))
    ProcessorParameterName.add_member(:data_message_extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DATA_MESSAGE_EXTRACTION", traits: {"smithy.api#enumValue" => "DataMessageExtraction"}))
    ProcessorType.add_member(:record_de_aggregation, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RecordDeAggregation", traits: {"smithy.api#enumValue" => "RecordDeAggregation"}))
    ProcessorType.add_member(:decompression, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Decompression", traits: {"smithy.api#enumValue" => "Decompression"}))
    ProcessorType.add_member(:cloud_watch_log_processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CloudWatchLogProcessing", traits: {"smithy.api#enumValue" => "CloudWatchLogProcessing"}))
    ProcessorType.add_member(:lambda, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Lambda", traits: {"smithy.api#enumValue" => "Lambda"}))
    ProcessorType.add_member(:metadata_extraction, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MetadataExtraction", traits: {"smithy.api#enumValue" => "MetadataExtraction"}))
    ProcessorType.add_member(:append_delimiter_to_record, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AppendDelimiterToRecord", traits: {"smithy.api#enumValue" => "AppendDelimiterToRecord"}))
    PutRecordBatchInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    PutRecordBatchInput.add_member(:records, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordBatchRequestEntryList, name: "Records", traits: {"smithy.api#required" => {}}))
    PutRecordBatchInput.type = Types::PutRecordBatchInput
    PutRecordBatchOutput.add_member(:failed_put_count, ::Smithy::Schema::Shapes::MemberShape.new(target: NonNegativeIntegerObject, name: "FailedPutCount", traits: {"smithy.api#required" => {}}))
    PutRecordBatchOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Encrypted"))
    PutRecordBatchOutput.add_member(:request_responses, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordBatchResponseEntryList, name: "RequestResponses", traits: {"smithy.api#required" => {}}))
    PutRecordBatchOutput.type = Types::PutRecordBatchOutput
    PutRecordBatchRequestEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "member"))
    PutRecordBatchResponseEntry.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PutResponseRecordId, name: "RecordId"))
    PutRecordBatchResponseEntry.add_member(:error_code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, name: "ErrorCode"))
    PutRecordBatchResponseEntry.add_member(:error_message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "ErrorMessage"))
    PutRecordBatchResponseEntry.type = Types::PutRecordBatchResponseEntry
    PutRecordBatchResponseEntryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PutRecordBatchResponseEntry, name: "member"))
    PutRecordInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    PutRecordInput.add_member(:record, ::Smithy::Schema::Shapes::MemberShape.new(target: Record, name: "Record", traits: {"smithy.api#required" => {}}))
    PutRecordInput.type = Types::PutRecordInput
    PutRecordOutput.add_member(:record_id, ::Smithy::Schema::Shapes::MemberShape.new(target: PutResponseRecordId, name: "RecordId", traits: {"smithy.api#required" => {}}))
    PutRecordOutput.add_member(:encrypted, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Encrypted"))
    PutRecordOutput.type = Types::PutRecordOutput
    Record.add_member(:data, ::Smithy::Schema::Shapes::MemberShape.new(target: Data, name: "Data", traits: {"smithy.api#required" => {}}))
    Record.type = Types::Record
    RedshiftDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationConfiguration.add_member(:cluster_jdbcurl, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterJDBCURL, name: "ClusterJDBCURL", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationConfiguration.add_member(:copy_command, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyCommand, name: "CopyCommand", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationConfiguration.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    RedshiftDestinationConfiguration.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    RedshiftDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftRetryOptions, name: "RetryOptions"))
    RedshiftDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftS3BackupMode, name: "S3BackupMode"))
    RedshiftDestinationConfiguration.add_member(:s3_backup_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3BackupConfiguration"))
    RedshiftDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    RedshiftDestinationConfiguration.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    RedshiftDestinationConfiguration.type = Types::RedshiftDestinationConfiguration
    RedshiftDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationDescription.add_member(:cluster_jdbcurl, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterJDBCURL, name: "ClusterJDBCURL", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationDescription.add_member(:copy_command, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyCommand, name: "CopyCommand", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationDescription.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    RedshiftDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftRetryOptions, name: "RetryOptions"))
    RedshiftDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription", traits: {"smithy.api#required" => {}}))
    RedshiftDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    RedshiftDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftS3BackupMode, name: "S3BackupMode"))
    RedshiftDestinationDescription.add_member(:s3_backup_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3BackupDescription"))
    RedshiftDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    RedshiftDestinationDescription.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    RedshiftDestinationDescription.type = Types::RedshiftDestinationDescription
    RedshiftDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    RedshiftDestinationUpdate.add_member(:cluster_jdbcurl, ::Smithy::Schema::Shapes::MemberShape.new(target: ClusterJDBCURL, name: "ClusterJDBCURL"))
    RedshiftDestinationUpdate.add_member(:copy_command, ::Smithy::Schema::Shapes::MemberShape.new(target: CopyCommand, name: "CopyCommand"))
    RedshiftDestinationUpdate.add_member(:username, ::Smithy::Schema::Shapes::MemberShape.new(target: Username, name: "Username"))
    RedshiftDestinationUpdate.add_member(:password, ::Smithy::Schema::Shapes::MemberShape.new(target: Password, name: "Password"))
    RedshiftDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftRetryOptions, name: "RetryOptions"))
    RedshiftDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    RedshiftDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    RedshiftDestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftS3BackupMode, name: "S3BackupMode"))
    RedshiftDestinationUpdate.add_member(:s3_backup_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3BackupUpdate"))
    RedshiftDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    RedshiftDestinationUpdate.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    RedshiftDestinationUpdate.type = Types::RedshiftDestinationUpdate
    RedshiftRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftRetryDurationInSeconds, name: "DurationInSeconds"))
    RedshiftRetryOptions.type = Types::RedshiftRetryOptions
    RedshiftS3BackupMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    RedshiftS3BackupMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    ResourceInUseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceInUseException.type = Types::ResourceInUseException
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    RetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: RetryDurationInSeconds, name: "DurationInSeconds"))
    RetryOptions.type = Types::RetryOptions
    S3BackupMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    S3BackupMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    S3DestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3DestinationConfiguration.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    S3DestinationConfiguration.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    S3DestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    S3DestinationConfiguration.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat"))
    S3DestinationConfiguration.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    S3DestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    S3DestinationConfiguration.type = Types::S3DestinationConfiguration
    S3DestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    S3DestinationDescription.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    S3DestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration", traits: {"smithy.api#required" => {}}))
    S3DestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    S3DestinationDescription.type = Types::S3DestinationDescription
    S3DestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    S3DestinationUpdate.add_member(:bucket_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BucketARN, name: "BucketARN"))
    S3DestinationUpdate.add_member(:prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: Prefix, name: "Prefix"))
    S3DestinationUpdate.add_member(:error_output_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorOutputPrefix, name: "ErrorOutputPrefix"))
    S3DestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: BufferingHints, name: "BufferingHints"))
    S3DestinationUpdate.add_member(:compression_format, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "CompressionFormat"))
    S3DestinationUpdate.add_member(:encryption_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: EncryptionConfiguration, name: "EncryptionConfiguration"))
    S3DestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    S3DestinationUpdate.type = Types::S3DestinationUpdate
    SSLMode.add_member(:disabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Disabled", traits: {"smithy.api#enumValue" => "Disabled"}))
    SSLMode.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Enabled", traits: {"smithy.api#enumValue" => "Enabled"}))
    SchemaConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "RoleARN"))
    SchemaConfiguration.add_member(:catalog_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "CatalogId"))
    SchemaConfiguration.add_member(:database_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "DatabaseName"))
    SchemaConfiguration.add_member(:table_name, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "TableName"))
    SchemaConfiguration.add_member(:region, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "Region"))
    SchemaConfiguration.add_member(:version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "VersionId"))
    SchemaConfiguration.type = Types::SchemaConfiguration
    SchemaEvolutionConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled", traits: {"smithy.api#required" => {}}))
    SchemaEvolutionConfiguration.type = Types::SchemaEvolutionConfiguration
    SecretsManagerConfiguration.add_member(:secret_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretARN, name: "SecretARN"))
    SecretsManagerConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    SecretsManagerConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled", traits: {"smithy.api#required" => {}}))
    SecretsManagerConfiguration.type = Types::SecretsManagerConfiguration
    SecurityGroupIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "member"))
    Serializer.add_member(:parquet_ser_de, ::Smithy::Schema::Shapes::MemberShape.new(target: ParquetSerDe, name: "ParquetSerDe"))
    Serializer.add_member(:orc_ser_de, ::Smithy::Schema::Shapes::MemberShape.new(target: OrcSerDe, name: "OrcSerDe"))
    Serializer.type = Types::Serializer
    ServiceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    SnapshotRequestedBy.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "USER", traits: {"smithy.api#enumValue" => "USER"}))
    SnapshotRequestedBy.add_member(:firehose, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FIREHOSE", traits: {"smithy.api#enumValue" => "FIREHOSE"}))
    SnapshotStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "IN_PROGRESS"}))
    SnapshotStatus.add_member(:complete, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "COMPLETE", traits: {"smithy.api#enumValue" => "COMPLETE"}))
    SnapshotStatus.add_member(:suspended, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUSPENDED", traits: {"smithy.api#enumValue" => "SUSPENDED"}))
    SnowflakeBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeBufferingSizeInMBs, name: "SizeInMBs"))
    SnowflakeBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    SnowflakeBufferingHints.type = Types::SnowflakeBufferingHints
    SnowflakeDataLoadingOption.add_member(:json_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JSON_MAPPING", traits: {"smithy.api#enumValue" => "JSON_MAPPING"}))
    SnowflakeDataLoadingOption.add_member(:variant_content_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARIANT_CONTENT_MAPPING", traits: {"smithy.api#enumValue" => "VARIANT_CONTENT_MAPPING"}))
    SnowflakeDataLoadingOption.add_member(:variant_content_and_metadata_mapping, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VARIANT_CONTENT_AND_METADATA_MAPPING", traits: {"smithy.api#enumValue" => "VARIANT_CONTENT_AND_METADATA_MAPPING"}))
    SnowflakeDestinationConfiguration.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeAccountUrl, name: "AccountUrl", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakePrivateKey, name: "PrivateKey"))
    SnowflakeDestinationConfiguration.add_member(:key_passphrase, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeKeyPassphrase, name: "KeyPassphrase"))
    SnowflakeDestinationConfiguration.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeUser, name: "User"))
    SnowflakeDestinationConfiguration.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDatabase, name: "Database", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeSchema, name: "Schema", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTable, name: "Table", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:snowflake_role_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRoleConfiguration, name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:data_loading_option, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDataLoadingOption, name: "DataLoadingOption"))
    SnowflakeDestinationConfiguration.add_member(:meta_data_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeMetaDataColumnName, name: "MetaDataColumnName"))
    SnowflakeDestinationConfiguration.add_member(:content_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeContentColumnName, name: "ContentColumnName"))
    SnowflakeDestinationConfiguration.add_member(:snowflake_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeVpcConfiguration, name: "SnowflakeVpcConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRetryOptions, name: "RetryOptions"))
    SnowflakeDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeS3BackupMode, name: "S3BackupMode"))
    SnowflakeDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    SnowflakeDestinationConfiguration.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SnowflakeDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeBufferingHints, name: "BufferingHints"))
    SnowflakeDestinationConfiguration.type = Types::SnowflakeDestinationConfiguration
    SnowflakeDestinationDescription.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeAccountUrl, name: "AccountUrl"))
    SnowflakeDestinationDescription.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeUser, name: "User"))
    SnowflakeDestinationDescription.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDatabase, name: "Database"))
    SnowflakeDestinationDescription.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeSchema, name: "Schema"))
    SnowflakeDestinationDescription.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTable, name: "Table"))
    SnowflakeDestinationDescription.add_member(:snowflake_role_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRoleConfiguration, name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationDescription.add_member(:data_loading_option, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDataLoadingOption, name: "DataLoadingOption"))
    SnowflakeDestinationDescription.add_member(:meta_data_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeMetaDataColumnName, name: "MetaDataColumnName"))
    SnowflakeDestinationDescription.add_member(:content_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeContentColumnName, name: "ContentColumnName"))
    SnowflakeDestinationDescription.add_member(:snowflake_vpc_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeVpcConfiguration, name: "SnowflakeVpcConfiguration"))
    SnowflakeDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SnowflakeDestinationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    SnowflakeDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRetryOptions, name: "RetryOptions"))
    SnowflakeDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeS3BackupMode, name: "S3BackupMode"))
    SnowflakeDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    SnowflakeDestinationDescription.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SnowflakeDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeBufferingHints, name: "BufferingHints"))
    SnowflakeDestinationDescription.type = Types::SnowflakeDestinationDescription
    SnowflakeDestinationUpdate.add_member(:account_url, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeAccountUrl, name: "AccountUrl"))
    SnowflakeDestinationUpdate.add_member(:private_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakePrivateKey, name: "PrivateKey"))
    SnowflakeDestinationUpdate.add_member(:key_passphrase, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeKeyPassphrase, name: "KeyPassphrase"))
    SnowflakeDestinationUpdate.add_member(:user, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeUser, name: "User"))
    SnowflakeDestinationUpdate.add_member(:database, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDatabase, name: "Database"))
    SnowflakeDestinationUpdate.add_member(:schema, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeSchema, name: "Schema"))
    SnowflakeDestinationUpdate.add_member(:table, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeTable, name: "Table"))
    SnowflakeDestinationUpdate.add_member(:snowflake_role_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRoleConfiguration, name: "SnowflakeRoleConfiguration"))
    SnowflakeDestinationUpdate.add_member(:data_loading_option, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDataLoadingOption, name: "DataLoadingOption"))
    SnowflakeDestinationUpdate.add_member(:meta_data_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeMetaDataColumnName, name: "MetaDataColumnName"))
    SnowflakeDestinationUpdate.add_member(:content_column_name, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeContentColumnName, name: "ContentColumnName"))
    SnowflakeDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SnowflakeDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SnowflakeDestinationUpdate.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN"))
    SnowflakeDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRetryOptions, name: "RetryOptions"))
    SnowflakeDestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeS3BackupMode, name: "S3BackupMode"))
    SnowflakeDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    SnowflakeDestinationUpdate.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SnowflakeDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeBufferingHints, name: "BufferingHints"))
    SnowflakeDestinationUpdate.type = Types::SnowflakeDestinationUpdate
    SnowflakeRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRetryDurationInSeconds, name: "DurationInSeconds"))
    SnowflakeRetryOptions.type = Types::SnowflakeRetryOptions
    SnowflakeRoleConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled"))
    SnowflakeRoleConfiguration.add_member(:snowflake_role, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeRole, name: "SnowflakeRole"))
    SnowflakeRoleConfiguration.type = Types::SnowflakeRoleConfiguration
    SnowflakeS3BackupMode.add_member(:failed_data_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedDataOnly", traits: {"smithy.api#enumValue" => "FailedDataOnly"}))
    SnowflakeS3BackupMode.add_member(:all_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllData", traits: {"smithy.api#enumValue" => "AllData"}))
    SnowflakeVpcConfiguration.add_member(:private_link_vpce_id, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakePrivateLinkVpceId, name: "PrivateLinkVpceId", traits: {"smithy.api#required" => {}}))
    SnowflakeVpcConfiguration.type = Types::SnowflakeVpcConfiguration
    SourceDescription.add_member(:direct_put_source_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DirectPutSourceDescription, name: "DirectPutSourceDescription"))
    SourceDescription.add_member(:kinesis_stream_source_description, ::Smithy::Schema::Shapes::MemberShape.new(target: KinesisStreamSourceDescription, name: "KinesisStreamSourceDescription"))
    SourceDescription.add_member(:msk_source_description, ::Smithy::Schema::Shapes::MemberShape.new(target: MSKSourceDescription, name: "MSKSourceDescription"))
    SourceDescription.add_member(:database_source_description, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseSourceDescription, name: "DatabaseSourceDescription"))
    SourceDescription.type = Types::SourceDescription
    SplunkBufferingHints.add_member(:interval_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkBufferingIntervalInSeconds, name: "IntervalInSeconds"))
    SplunkBufferingHints.add_member(:size_in_m_bs, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkBufferingSizeInMBs, name: "SizeInMBs"))
    SplunkBufferingHints.type = Types::SplunkBufferingHints
    SplunkDestinationConfiguration.add_member(:hec_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpoint, name: "HECEndpoint", traits: {"smithy.api#required" => {}}))
    SplunkDestinationConfiguration.add_member(:hec_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpointType, name: "HECEndpointType", traits: {"smithy.api#required" => {}}))
    SplunkDestinationConfiguration.add_member(:hec_token, ::Smithy::Schema::Shapes::MemberShape.new(target: HECToken, name: "HECToken"))
    SplunkDestinationConfiguration.add_member(:hec_acknowledgment_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HECAcknowledgmentTimeoutInSeconds, name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationConfiguration.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkRetryOptions, name: "RetryOptions"))
    SplunkDestinationConfiguration.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkS3BackupMode, name: "S3BackupMode"))
    SplunkDestinationConfiguration.add_member(:s3_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationConfiguration, name: "S3Configuration", traits: {"smithy.api#required" => {}}))
    SplunkDestinationConfiguration.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SplunkDestinationConfiguration.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SplunkDestinationConfiguration.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkBufferingHints, name: "BufferingHints"))
    SplunkDestinationConfiguration.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SplunkDestinationConfiguration.type = Types::SplunkDestinationConfiguration
    SplunkDestinationDescription.add_member(:hec_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpoint, name: "HECEndpoint"))
    SplunkDestinationDescription.add_member(:hec_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpointType, name: "HECEndpointType"))
    SplunkDestinationDescription.add_member(:hec_token, ::Smithy::Schema::Shapes::MemberShape.new(target: HECToken, name: "HECToken"))
    SplunkDestinationDescription.add_member(:hec_acknowledgment_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HECAcknowledgmentTimeoutInSeconds, name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationDescription.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkRetryOptions, name: "RetryOptions"))
    SplunkDestinationDescription.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkS3BackupMode, name: "S3BackupMode"))
    SplunkDestinationDescription.add_member(:s3_destination_description, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationDescription, name: "S3DestinationDescription"))
    SplunkDestinationDescription.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SplunkDestinationDescription.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SplunkDestinationDescription.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkBufferingHints, name: "BufferingHints"))
    SplunkDestinationDescription.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SplunkDestinationDescription.type = Types::SplunkDestinationDescription
    SplunkDestinationUpdate.add_member(:hec_endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpoint, name: "HECEndpoint"))
    SplunkDestinationUpdate.add_member(:hec_endpoint_type, ::Smithy::Schema::Shapes::MemberShape.new(target: HECEndpointType, name: "HECEndpointType"))
    SplunkDestinationUpdate.add_member(:hec_token, ::Smithy::Schema::Shapes::MemberShape.new(target: HECToken, name: "HECToken"))
    SplunkDestinationUpdate.add_member(:hec_acknowledgment_timeout_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: HECAcknowledgmentTimeoutInSeconds, name: "HECAcknowledgmentTimeoutInSeconds"))
    SplunkDestinationUpdate.add_member(:retry_options, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkRetryOptions, name: "RetryOptions"))
    SplunkDestinationUpdate.add_member(:s3_backup_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkS3BackupMode, name: "S3BackupMode"))
    SplunkDestinationUpdate.add_member(:s3_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3Update"))
    SplunkDestinationUpdate.add_member(:processing_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: ProcessingConfiguration, name: "ProcessingConfiguration"))
    SplunkDestinationUpdate.add_member(:cloud_watch_logging_options, ::Smithy::Schema::Shapes::MemberShape.new(target: CloudWatchLoggingOptions, name: "CloudWatchLoggingOptions"))
    SplunkDestinationUpdate.add_member(:buffering_hints, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkBufferingHints, name: "BufferingHints"))
    SplunkDestinationUpdate.add_member(:secrets_manager_configuration, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerConfiguration, name: "SecretsManagerConfiguration"))
    SplunkDestinationUpdate.type = Types::SplunkDestinationUpdate
    SplunkRetryOptions.add_member(:duration_in_seconds, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkRetryDurationInSeconds, name: "DurationInSeconds"))
    SplunkRetryOptions.type = Types::SplunkRetryOptions
    SplunkS3BackupMode.add_member(:failed_events_only, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FailedEventsOnly", traits: {"smithy.api#enumValue" => "FailedEventsOnly"}))
    SplunkS3BackupMode.add_member(:all_events, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "AllEvents", traits: {"smithy.api#enumValue" => "AllEvents"}))
    StartDeliveryStreamEncryptionInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    StartDeliveryStreamEncryptionInput.add_member(:delivery_stream_encryption_configuration_input, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamEncryptionConfigurationInput, name: "DeliveryStreamEncryptionConfigurationInput"))
    StartDeliveryStreamEncryptionInput.type = Types::StartDeliveryStreamEncryptionInput
    StartDeliveryStreamEncryptionOutput.type = Types::StartDeliveryStreamEncryptionOutput
    StopDeliveryStreamEncryptionInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    StopDeliveryStreamEncryptionInput.type = Types::StopDeliveryStreamEncryptionInput
    StopDeliveryStreamEncryptionOutput.type = Types::StopDeliveryStreamEncryptionOutput
    SubnetIdList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "member"))
    TableCreationConfiguration.add_member(:enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: BooleanObject, name: "Enabled", traits: {"smithy.api#required" => {}}))
    TableCreationConfiguration.type = Types::TableCreationConfiguration
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value"))
    Tag.type = Types::Tag
    TagDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    TagDeliveryStreamInput.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagDeliveryStreamInputTagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagDeliveryStreamInput.type = Types::TagDeliveryStreamInput
    TagDeliveryStreamInputTagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagDeliveryStreamOutput.type = Types::TagDeliveryStreamOutput
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    UntagDeliveryStreamInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    UntagDeliveryStreamInput.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagDeliveryStreamInput.type = Types::UntagDeliveryStreamInput
    UntagDeliveryStreamOutput.type = Types::UntagDeliveryStreamOutput
    UpdateDestinationInput.add_member(:delivery_stream_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamName, name: "DeliveryStreamName", traits: {"smithy.api#required" => {}}))
    UpdateDestinationInput.add_member(:current_delivery_stream_version_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DeliveryStreamVersionId, name: "CurrentDeliveryStreamVersionId", traits: {"smithy.api#required" => {}}))
    UpdateDestinationInput.add_member(:destination_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DestinationId, name: "DestinationId", traits: {"smithy.api#required" => {}}))
    UpdateDestinationInput.add_member(:s3_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: S3DestinationUpdate, name: "S3DestinationUpdate", traits: {"smithy.api#deprecated" => {}}))
    UpdateDestinationInput.add_member(:extended_s3_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ExtendedS3DestinationUpdate, name: "ExtendedS3DestinationUpdate"))
    UpdateDestinationInput.add_member(:redshift_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: RedshiftDestinationUpdate, name: "RedshiftDestinationUpdate"))
    UpdateDestinationInput.add_member(:elasticsearch_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: ElasticsearchDestinationUpdate, name: "ElasticsearchDestinationUpdate"))
    UpdateDestinationInput.add_member(:amazonopensearchservice_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonopensearchserviceDestinationUpdate, name: "AmazonopensearchserviceDestinationUpdate"))
    UpdateDestinationInput.add_member(:splunk_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SplunkDestinationUpdate, name: "SplunkDestinationUpdate"))
    UpdateDestinationInput.add_member(:http_endpoint_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: HttpEndpointDestinationUpdate, name: "HttpEndpointDestinationUpdate"))
    UpdateDestinationInput.add_member(:amazon_open_search_serverless_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: AmazonOpenSearchServerlessDestinationUpdate, name: "AmazonOpenSearchServerlessDestinationUpdate"))
    UpdateDestinationInput.add_member(:snowflake_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: SnowflakeDestinationUpdate, name: "SnowflakeDestinationUpdate"))
    UpdateDestinationInput.add_member(:iceberg_destination_update, ::Smithy::Schema::Shapes::MemberShape.new(target: IcebergDestinationUpdate, name: "IcebergDestinationUpdate"))
    UpdateDestinationInput.type = Types::UpdateDestinationInput
    UpdateDestinationOutput.type = Types::UpdateDestinationOutput
    VpcConfiguration.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfiguration.type = Types::VpcConfiguration
    VpcConfigurationDescription.add_member(:subnet_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SubnetIdList, name: "SubnetIds", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:role_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: RoleARN, name: "RoleARN", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:security_group_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: SecurityGroupIdList, name: "SecurityGroupIds", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.add_member(:vpc_id, ::Smithy::Schema::Shapes::MemberShape.new(target: NonEmptyStringWithoutWhitespace, name: "VpcId", traits: {"smithy.api#required" => {}}))
    VpcConfigurationDescription.type = Types::VpcConfigurationDescription

    Firehose20150804 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.firehose#Firehose_20150804"
      service.name = "Firehose20150804"
      service.version = "2015-08-04"
      service.traits = {"aws.api#service" => {"sdkId" => "Firehose", "arnNamespace" => "firehose", "cloudFormationName" => "KinesisFirehose", "cloudTrailEventSource" => "firehose.amazonaws.com", "endpointPrefix" => "firehose"}, "aws.auth#sigv4" => {"name" => "firehose"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "Amazon Kinesis Firehose", "smithy.api#xmlNamespace" => {"uri" => "http://firehose.amazonaws.com/doc/2015-08-04"}}
      service.add_operation(:create_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#CreateDeliveryStream"
        operation.name = "CreateDeliveryStream"
        operation.input = CreateDeliveryStreamInput
        operation.output = CreateDeliveryStreamOutput
        operation.errors << InvalidArgumentException
        operation.errors << InvalidKMSResourceException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.traits = {}
      end)
      service.add_operation(:delete_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#DeleteDeliveryStream"
        operation.name = "DeleteDeliveryStream"
        operation.input = DeleteDeliveryStreamInput
        operation.output = DeleteDeliveryStreamOutput
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#DescribeDeliveryStream"
        operation.name = "DescribeDeliveryStream"
        operation.input = DescribeDeliveryStreamInput
        operation.output = DescribeDeliveryStreamOutput
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:list_delivery_streams, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#ListDeliveryStreams"
        operation.name = "ListDeliveryStreams"
        operation.input = ListDeliveryStreamsInput
        operation.output = ListDeliveryStreamsOutput
        operation.traits = {}
      end)
      service.add_operation(:list_tags_for_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#ListTagsForDeliveryStream"
        operation.name = "ListTagsForDeliveryStream"
        operation.input = ListTagsForDeliveryStreamInput
        operation.output = ListTagsForDeliveryStreamOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:put_record, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#PutRecord"
        operation.name = "PutRecord"
        operation.input = PutRecordInput
        operation.output = PutRecordOutput
        operation.errors << InvalidArgumentException
        operation.errors << InvalidKMSResourceException
        operation.errors << InvalidSourceException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:put_record_batch, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#PutRecordBatch"
        operation.name = "PutRecordBatch"
        operation.input = PutRecordBatchInput
        operation.output = PutRecordBatchOutput
        operation.errors << InvalidArgumentException
        operation.errors << InvalidKMSResourceException
        operation.errors << InvalidSourceException
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceUnavailableException
        operation.traits = {}
      end)
      service.add_operation(:start_delivery_stream_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#StartDeliveryStreamEncryption"
        operation.name = "StartDeliveryStreamEncryption"
        operation.input = StartDeliveryStreamEncryptionInput
        operation.output = StartDeliveryStreamEncryptionOutput
        operation.errors << InvalidArgumentException
        operation.errors << InvalidKMSResourceException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:stop_delivery_stream_encryption, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#StopDeliveryStreamEncryption"
        operation.name = "StopDeliveryStreamEncryption"
        operation.input = StopDeliveryStreamEncryptionInput
        operation.output = StopDeliveryStreamEncryptionOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:tag_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#TagDeliveryStream"
        operation.name = "TagDeliveryStream"
        operation.input = TagDeliveryStreamInput
        operation.output = TagDeliveryStreamOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:untag_delivery_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#UntagDeliveryStream"
        operation.name = "UntagDeliveryStream"
        operation.input = UntagDeliveryStreamInput
        operation.output = UntagDeliveryStreamOutput
        operation.errors << InvalidArgumentException
        operation.errors << LimitExceededException
        operation.errors << ResourceInUseException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:update_destination, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.firehose#UpdateDestination"
        operation.name = "UpdateDestination"
        operation.input = UpdateDestinationInput
        operation.output = UpdateDestinationOutput
        operation.errors << ConcurrentModificationException
        operation.errors << InvalidArgumentException
        operation.errors << ResourceInUseException
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
