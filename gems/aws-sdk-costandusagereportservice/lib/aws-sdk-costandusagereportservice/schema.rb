# frozen_string_literal: true

# This is generated code!

module Aws::CostandUsageReportService
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AWSRegion = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#AWSRegion", name: "AWSRegion")
    AdditionalArtifact = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#AdditionalArtifact", name: "AdditionalArtifact")
    AdditionalArtifactList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costandusagereportservice#AdditionalArtifactList", name: "AdditionalArtifactList")
    BillingViewArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#BillingViewArn", name: "BillingViewArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 128}, "smithy.api#pattern" => "^(arn:aws(-cn)?:billing::[0-9]{12}:billingview/)?[a-zA-Z0-9_\\+=\\.\\-@].{1,30}$"})
    CompressionFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#CompressionFormat", name: "CompressionFormat")
    DeleteReportDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#DeleteReportDefinitionRequest", name: "DeleteReportDefinitionRequest")
    DeleteReportDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#DeleteReportDefinitionResponse", name: "DeleteReportDefinitionResponse")
    DeleteResponseMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#DeleteResponseMessage", name: "DeleteResponseMessage")
    DescribeReportDefinitionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#DescribeReportDefinitionsRequest", name: "DescribeReportDefinitionsRequest")
    DescribeReportDefinitionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#DescribeReportDefinitionsResponse", name: "DescribeReportDefinitionsResponse")
    DuplicateReportNameException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#DuplicateReportNameException", name: "DuplicateReportNameException", traits: {"smithy.api#error" => "client"})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#ErrorMessage", name: "ErrorMessage")
    GenericString = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#GenericString", name: "GenericString", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.\\-=]*$"})
    InternalErrorException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#InternalErrorException", name: "InternalErrorException", traits: {"smithy.api#error" => "server"})
    LastDelivery = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#LastDelivery", name: "LastDelivery", traits: {"smithy.api#length" => {"min" => 16, "max" => 20}, "smithy.api#pattern" => "^[0-9]{8}[T][0-9]{6}([Z]|[+-][0-9]{4})$"})
    LastStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#LastStatus", name: "LastStatus")
    ListTagsForResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ListTagsForResourceRequest", name: "ListTagsForResourceRequest")
    ListTagsForResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ListTagsForResourceResponse", name: "ListTagsForResourceResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.costandusagereportservice#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 5, "max" => 5}})
    ModifyReportDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ModifyReportDefinitionRequest", name: "ModifyReportDefinitionRequest")
    ModifyReportDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ModifyReportDefinitionResponse", name: "ModifyReportDefinitionResponse")
    PutReportDefinitionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#PutReportDefinitionRequest", name: "PutReportDefinitionRequest")
    PutReportDefinitionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#PutReportDefinitionResponse", name: "PutReportDefinitionResponse")
    RefreshClosedReports = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.costandusagereportservice#RefreshClosedReports", name: "RefreshClosedReports")
    ReportDefinition = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ReportDefinition", name: "ReportDefinition")
    ReportDefinitionList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costandusagereportservice#ReportDefinitionList", name: "ReportDefinitionList")
    ReportFormat = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#ReportFormat", name: "ReportFormat")
    ReportLimitReachedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ReportLimitReachedException", name: "ReportLimitReachedException", traits: {"smithy.api#error" => "client"})
    ReportName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#ReportName", name: "ReportName", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z!\\-_.*\\'()]+$"})
    ReportStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ReportStatus", name: "ReportStatus")
    ReportVersioning = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#ReportVersioning", name: "ReportVersioning")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client"})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[A-Za-z0-9_\\.\\-]+$"})
    S3Prefix = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#S3Prefix", name: "S3Prefix", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => "^[0-9A-Za-z!\\-_.*\\'()/]*$"})
    SchemaElement = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#SchemaElement", name: "SchemaElement")
    SchemaElementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costandusagereportservice#SchemaElementList", name: "SchemaElementList")
    Tag = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#Tag", name: "Tag")
    TagKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#TagKey", name: "TagKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*"})
    TagKeyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costandusagereportservice#TagKeyList", name: "TagKeyList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.costandusagereportservice#TagList", name: "TagList", traits: {"smithy.api#length" => {"min" => 0, "max" => 200}})
    TagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#TagResourceRequest", name: "TagResourceRequest")
    TagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#TagResourceResponse", name: "TagResourceResponse")
    TagValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.costandusagereportservice#TagValue", name: "TagValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}, "smithy.api#pattern" => ".*"})
    TimeUnit = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.costandusagereportservice#TimeUnit", name: "TimeUnit")
    UntagResourceRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#UntagResourceRequest", name: "UntagResourceRequest")
    UntagResourceResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#UntagResourceResponse", name: "UntagResourceResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.costandusagereportservice#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client"})

    AWSRegion.add_member(:cape_town, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CAPE_TOWN", traits: {"smithy.api#enumValue" => "af-south-1"}))
    AWSRegion.add_member(:hong_kong, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HONG_KONG", traits: {"smithy.api#enumValue" => "ap-east-1"}))
    AWSRegion.add_member(:mumbai, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MUMBAI", traits: {"smithy.api#enumValue" => "ap-south-1"}))
    AWSRegion.add_member(:hyderabad, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HYDERABAD", traits: {"smithy.api#enumValue" => "ap-south-2"}))
    AWSRegion.add_member(:singapore, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SINGAPORE", traits: {"smithy.api#enumValue" => "ap-southeast-1"}))
    AWSRegion.add_member(:sydney, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SYDNEY", traits: {"smithy.api#enumValue" => "ap-southeast-2"}))
    AWSRegion.add_member(:jakarta, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "JAKARTA", traits: {"smithy.api#enumValue" => "ap-southeast-3"}))
    AWSRegion.add_member(:tokyo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "TOKYO", traits: {"smithy.api#enumValue" => "ap-northeast-1"}))
    AWSRegion.add_member(:seoul, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SEOUL", traits: {"smithy.api#enumValue" => "ap-northeast-2"}))
    AWSRegion.add_member(:osaka, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OSAKA", traits: {"smithy.api#enumValue" => "ap-northeast-3"}))
    AWSRegion.add_member(:canada_central, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CANADA_CENTRAL", traits: {"smithy.api#enumValue" => "ca-central-1"}))
    AWSRegion.add_member(:frankfurt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FRANKFURT", traits: {"smithy.api#enumValue" => "eu-central-1"}))
    AWSRegion.add_member(:zurich, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZURICH", traits: {"smithy.api#enumValue" => "eu-central-2"}))
    AWSRegion.add_member(:ireland, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IRELAND", traits: {"smithy.api#enumValue" => "eu-west-1"}))
    AWSRegion.add_member(:london, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "LONDON", traits: {"smithy.api#enumValue" => "eu-west-2"}))
    AWSRegion.add_member(:paris, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PARIS", traits: {"smithy.api#enumValue" => "eu-west-3"}))
    AWSRegion.add_member(:stockholm, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "STOCKHOLM", traits: {"smithy.api#enumValue" => "eu-north-1"}))
    AWSRegion.add_member(:milano, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MILANO", traits: {"smithy.api#enumValue" => "eu-south-1"}))
    AWSRegion.add_member(:spain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPAIN", traits: {"smithy.api#enumValue" => "eu-south-2"}))
    AWSRegion.add_member(:uae, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "UAE", traits: {"smithy.api#enumValue" => "me-central-1"}))
    AWSRegion.add_member(:bahrain, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BAHRAIN", traits: {"smithy.api#enumValue" => "me-south-1"}))
    AWSRegion.add_member(:sao_paulo, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SAO_PAULO", traits: {"smithy.api#enumValue" => "sa-east-1"}))
    AWSRegion.add_member(:us_standard, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "US_STANDARD", traits: {"smithy.api#enumValue" => "us-east-1"}))
    AWSRegion.add_member(:ohio, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OHIO", traits: {"smithy.api#enumValue" => "us-east-2"}))
    AWSRegion.add_member(:northern_california, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NORTHERN_CALIFORNIA", traits: {"smithy.api#enumValue" => "us-west-1"}))
    AWSRegion.add_member(:oregon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OREGON", traits: {"smithy.api#enumValue" => "us-west-2"}))
    AWSRegion.add_member(:beijing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "BEIJING", traits: {"smithy.api#enumValue" => "cn-north-1"}))
    AWSRegion.add_member(:ningxia, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "NINGXIA", traits: {"smithy.api#enumValue" => "cn-northwest-1"}))
    AdditionalArtifact.add_member(:redshift, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "REDSHIFT", traits: {"smithy.api#enumValue" => "REDSHIFT"}))
    AdditionalArtifact.add_member(:quicksight, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "QUICKSIGHT", traits: {"smithy.api#enumValue" => "QUICKSIGHT"}))
    AdditionalArtifact.add_member(:athena, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ATHENA", traits: {"smithy.api#enumValue" => "ATHENA"}))
    AdditionalArtifactList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalArtifact, name: "member"))
    CompressionFormat.add_member(:zip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ZIP", traits: {"smithy.api#enumValue" => "ZIP"}))
    CompressionFormat.add_member(:gzip, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "GZIP", traits: {"smithy.api#enumValue" => "GZIP"}))
    CompressionFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Parquet", traits: {"smithy.api#enumValue" => "Parquet"}))
    DeleteReportDefinitionRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    DeleteReportDefinitionRequest.type = Types::DeleteReportDefinitionRequest
    DeleteReportDefinitionResponse.add_member(:response_message, ::Smithy::Schema::Shapes::MemberShape.new(target: DeleteResponseMessage, name: "ResponseMessage"))
    DeleteReportDefinitionResponse.type = Types::DeleteReportDefinitionResponse
    DescribeReportDefinitionsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResults, name: "MaxResults"))
    DescribeReportDefinitionsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "NextToken"))
    DescribeReportDefinitionsRequest.type = Types::DescribeReportDefinitionsRequest
    DescribeReportDefinitionsResponse.add_member(:report_definitions, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDefinitionList, name: "ReportDefinitions"))
    DescribeReportDefinitionsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: GenericString, name: "NextToken"))
    DescribeReportDefinitionsResponse.type = Types::DescribeReportDefinitionsResponse
    DuplicateReportNameException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    DuplicateReportNameException.type = Types::DuplicateReportNameException
    InternalErrorException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    InternalErrorException.type = Types::InternalErrorException
    LastStatus.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SUCCESS", traits: {"smithy.api#enumValue" => "SUCCESS"}))
    LastStatus.add_member(:error_permissions, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_PERMISSIONS", traits: {"smithy.api#enumValue" => "ERROR_PERMISSIONS"}))
    LastStatus.add_member(:error_no_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ERROR_NO_BUCKET", traits: {"smithy.api#enumValue" => "ERROR_NO_BUCKET"}))
    ListTagsForResourceRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    ListTagsForResourceRequest.type = Types::ListTagsForResourceRequest
    ListTagsForResourceResponse.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    ListTagsForResourceResponse.type = Types::ListTagsForResourceResponse
    ModifyReportDefinitionRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    ModifyReportDefinitionRequest.add_member(:report_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDefinition, name: "ReportDefinition", traits: {"smithy.api#required" => {}}))
    ModifyReportDefinitionRequest.type = Types::ModifyReportDefinitionRequest
    ModifyReportDefinitionResponse.type = Types::ModifyReportDefinitionResponse
    PutReportDefinitionRequest.add_member(:report_definition, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDefinition, name: "ReportDefinition", traits: {"smithy.api#required" => {}}))
    PutReportDefinitionRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags"))
    PutReportDefinitionRequest.type = Types::PutReportDefinitionRequest
    PutReportDefinitionResponse.type = Types::PutReportDefinitionResponse
    ReportDefinition.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:time_unit, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeUnit, name: "TimeUnit", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:format, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportFormat, name: "Format", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:compression, ::Smithy::Schema::Shapes::MemberShape.new(target: CompressionFormat, name: "Compression", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:additional_schema_elements, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaElementList, name: "AdditionalSchemaElements", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:s3_prefix, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Prefix, name: "S3Prefix", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:s3_region, ::Smithy::Schema::Shapes::MemberShape.new(target: AWSRegion, name: "S3Region", traits: {"smithy.api#required" => {}}))
    ReportDefinition.add_member(:additional_artifacts, ::Smithy::Schema::Shapes::MemberShape.new(target: AdditionalArtifactList, name: "AdditionalArtifacts"))
    ReportDefinition.add_member(:refresh_closed_reports, ::Smithy::Schema::Shapes::MemberShape.new(target: RefreshClosedReports, name: "RefreshClosedReports"))
    ReportDefinition.add_member(:report_versioning, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportVersioning, name: "ReportVersioning"))
    ReportDefinition.add_member(:billing_view_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: BillingViewArn, name: "BillingViewArn"))
    ReportDefinition.add_member(:report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportStatus, name: "ReportStatus"))
    ReportDefinition.type = Types::ReportDefinition
    ReportDefinitionList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportDefinition, name: "member"))
    ReportFormat.add_member(:csv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CSV", traits: {"smithy.api#enumValue" => "textORcsv"}))
    ReportFormat.add_member(:parquet, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "Parquet", traits: {"smithy.api#enumValue" => "Parquet"}))
    ReportLimitReachedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ReportLimitReachedException.type = Types::ReportLimitReachedException
    ReportStatus.add_member(:last_delivery, ::Smithy::Schema::Shapes::MemberShape.new(target: LastDelivery, name: "lastDelivery"))
    ReportStatus.add_member(:last_status, ::Smithy::Schema::Shapes::MemberShape.new(target: LastStatus, name: "lastStatus"))
    ReportStatus.type = Types::ReportStatus
    ReportVersioning.add_member(:create_new_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "CREATE_NEW_REPORT", traits: {"smithy.api#enumValue" => "CREATE_NEW_REPORT"}))
    ReportVersioning.add_member(:overwrite_report, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "OVERWRITE_REPORT", traits: {"smithy.api#enumValue" => "OVERWRITE_REPORT"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SchemaElement.add_member(:resources, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCES", traits: {"smithy.api#enumValue" => "RESOURCES"}))
    SchemaElement.add_member(:split_cost_allocation_data, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SPLIT_COST_ALLOCATION_DATA", traits: {"smithy.api#enumValue" => "SPLIT_COST_ALLOCATION_DATA"}))
    SchemaElement.add_member(:manual_discount_compatibility, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MANUAL_DISCOUNT_COMPATIBILITY", traits: {"smithy.api#enumValue" => "MANUAL_DISCOUNT_COMPATIBILITY"}))
    SchemaElementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SchemaElement, name: "member"))
    Tag.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "Key", traits: {"smithy.api#required" => {}}))
    Tag.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: TagValue, name: "Value", traits: {"smithy.api#required" => {}}))
    Tag.type = Types::Tag
    TagKeyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKey, name: "member"))
    TagList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Tag, name: "member"))
    TagResourceRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.add_member(:tags, ::Smithy::Schema::Shapes::MemberShape.new(target: TagList, name: "Tags", traits: {"smithy.api#required" => {}}))
    TagResourceRequest.type = Types::TagResourceRequest
    TagResourceResponse.type = Types::TagResourceResponse
    TimeUnit.add_member(:hourly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "HOURLY", traits: {"smithy.api#enumValue" => "HOURLY"}))
    TimeUnit.add_member(:daily, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DAILY", traits: {"smithy.api#enumValue" => "DAILY"}))
    TimeUnit.add_member(:monthly, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "MONTHLY", traits: {"smithy.api#enumValue" => "MONTHLY"}))
    UntagResourceRequest.add_member(:report_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ReportName, name: "ReportName", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.add_member(:tag_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: TagKeyList, name: "TagKeys", traits: {"smithy.api#required" => {}}))
    UntagResourceRequest.type = Types::UntagResourceRequest
    UntagResourceResponse.type = Types::UntagResourceResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "Message"))
    ValidationException.type = Types::ValidationException

    AWSOrigamiServiceGatewayService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.costandusagereportservice#AWSOrigamiServiceGatewayService"
      service.name = "AWSOrigamiServiceGatewayService"
      service.version = "2017-01-06"
      service.traits = {"aws.api#service" => {"sdkId" => "Cost and Usage Report Service", "arnNamespace" => "cur", "cloudFormationName" => "CostandUsageReportService", "cloudTrailEventSource" => "costandusagereportservice.amazonaws.com", "docId" => "cur-2017-01-06", "endpointPrefix" => "cur"}, "aws.auth#sigv4" => {"name" => "cur"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS Cost and Usage Report Service"}
      service.add_operation(:delete_report_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#DeleteReportDefinition"
        operation.name = "DeleteReportDefinition"
        operation.input = DeleteReportDefinitionRequest
        operation.output = DeleteReportDefinitionResponse
        operation.errors << InternalErrorException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_report_definitions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#DescribeReportDefinitions"
        operation.name = "DescribeReportDefinitions"
        operation.input = DescribeReportDefinitionsRequest
        operation.output = DescribeReportDefinitionsResponse
        operation.errors << InternalErrorException
        operation.traits = {"smithy.test#smokeTests" => [{"id" => "DescribeReportDefinitionsSuccess", "params" => {}, "vendorParams" => {"region" => "us-east-1"}, "vendorParamsShape" => "aws.test#AwsVendorParams", "expect" => {"success" => {}}}]}
        operation[:paginator] = Paginators::DescribeReportDefinitions.new
      end)
      service.add_operation(:list_tags_for_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#ListTagsForResource"
        operation.name = "ListTagsForResource"
        operation.input = ListTagsForResourceRequest
        operation.output = ListTagsForResourceResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:modify_report_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#ModifyReportDefinition"
        operation.name = "ModifyReportDefinition"
        operation.input = ModifyReportDefinitionRequest
        operation.output = ModifyReportDefinitionResponse
        operation.errors << InternalErrorException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:put_report_definition, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#PutReportDefinition"
        operation.name = "PutReportDefinition"
        operation.input = PutReportDefinitionRequest
        operation.output = PutReportDefinitionResponse
        operation.errors << DuplicateReportNameException
        operation.errors << InternalErrorException
        operation.errors << ReportLimitReachedException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:tag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#TagResource"
        operation.name = "TagResource"
        operation.input = TagResourceRequest
        operation.output = TagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:untag_resource, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.costandusagereportservice#UntagResource"
        operation.name = "UntagResource"
        operation.input = UntagResourceRequest
        operation.output = UntagResourceResponse
        operation.errors << InternalErrorException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
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
