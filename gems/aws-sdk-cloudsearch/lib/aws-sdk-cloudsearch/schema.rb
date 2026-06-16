# frozen_string_literal: true

# This is generated code!

module Aws::CloudSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#APIVersion", name: "APIVersion")
    ARN = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#ARN", name: "ARN")
    AccessPoliciesStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#AccessPoliciesStatus", name: "AccessPoliciesStatus")
    AlgorithmicStemming = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#AlgorithmicStemming", name: "AlgorithmicStemming")
    AnalysisOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#AnalysisOptions", name: "AnalysisOptions")
    AnalysisScheme = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#AnalysisScheme", name: "AnalysisScheme")
    AnalysisSchemeLanguage = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#AnalysisSchemeLanguage", name: "AnalysisSchemeLanguage")
    AnalysisSchemeStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#AnalysisSchemeStatus", name: "AnalysisSchemeStatus")
    AnalysisSchemeStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#AnalysisSchemeStatusList", name: "AnalysisSchemeStatusList")
    AvailabilityOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#AvailabilityOptionsStatus", name: "AvailabilityOptionsStatus")
    BaseException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#BaseException", name: "BaseException", traits: {"smithy.api#error" => "client"})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudsearch#Boolean", name: "Boolean")
    BuildSuggestersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#BuildSuggestersRequest", name: "BuildSuggestersRequest")
    BuildSuggestersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#BuildSuggestersResponse", name: "BuildSuggestersResponse")
    CreateDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#CreateDomainRequest", name: "CreateDomainRequest")
    CreateDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#CreateDomainResponse", name: "CreateDomainResponse")
    DateArrayOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DateArrayOptions", name: "DateArrayOptions")
    DateOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DateOptions", name: "DateOptions")
    DefineAnalysisSchemeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineAnalysisSchemeRequest", name: "DefineAnalysisSchemeRequest")
    DefineAnalysisSchemeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineAnalysisSchemeResponse", name: "DefineAnalysisSchemeResponse")
    DefineExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineExpressionRequest", name: "DefineExpressionRequest")
    DefineExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineExpressionResponse", name: "DefineExpressionResponse")
    DefineIndexFieldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineIndexFieldRequest", name: "DefineIndexFieldRequest")
    DefineIndexFieldResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineIndexFieldResponse", name: "DefineIndexFieldResponse")
    DefineSuggesterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineSuggesterRequest", name: "DefineSuggesterRequest")
    DefineSuggesterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DefineSuggesterResponse", name: "DefineSuggesterResponse")
    DeleteAnalysisSchemeRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteAnalysisSchemeRequest", name: "DeleteAnalysisSchemeRequest")
    DeleteAnalysisSchemeResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteAnalysisSchemeResponse", name: "DeleteAnalysisSchemeResponse")
    DeleteDomainRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteDomainRequest", name: "DeleteDomainRequest")
    DeleteDomainResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteDomainResponse", name: "DeleteDomainResponse")
    DeleteExpressionRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteExpressionRequest", name: "DeleteExpressionRequest")
    DeleteExpressionResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteExpressionResponse", name: "DeleteExpressionResponse")
    DeleteIndexFieldRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteIndexFieldRequest", name: "DeleteIndexFieldRequest")
    DeleteIndexFieldResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteIndexFieldResponse", name: "DeleteIndexFieldResponse")
    DeleteSuggesterRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteSuggesterRequest", name: "DeleteSuggesterRequest")
    DeleteSuggesterResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DeleteSuggesterResponse", name: "DeleteSuggesterResponse")
    DescribeAnalysisSchemesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeAnalysisSchemesRequest", name: "DescribeAnalysisSchemesRequest")
    DescribeAnalysisSchemesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeAnalysisSchemesResponse", name: "DescribeAnalysisSchemesResponse")
    DescribeAvailabilityOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeAvailabilityOptionsRequest", name: "DescribeAvailabilityOptionsRequest")
    DescribeAvailabilityOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeAvailabilityOptionsResponse", name: "DescribeAvailabilityOptionsResponse")
    DescribeDomainEndpointOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeDomainEndpointOptionsRequest", name: "DescribeDomainEndpointOptionsRequest")
    DescribeDomainEndpointOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeDomainEndpointOptionsResponse", name: "DescribeDomainEndpointOptionsResponse")
    DescribeDomainsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeDomainsRequest", name: "DescribeDomainsRequest")
    DescribeDomainsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeDomainsResponse", name: "DescribeDomainsResponse")
    DescribeExpressionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeExpressionsRequest", name: "DescribeExpressionsRequest")
    DescribeExpressionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeExpressionsResponse", name: "DescribeExpressionsResponse")
    DescribeIndexFieldsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeIndexFieldsRequest", name: "DescribeIndexFieldsRequest")
    DescribeIndexFieldsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeIndexFieldsResponse", name: "DescribeIndexFieldsResponse")
    DescribeScalingParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeScalingParametersRequest", name: "DescribeScalingParametersRequest")
    DescribeScalingParametersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeScalingParametersResponse", name: "DescribeScalingParametersResponse")
    DescribeServiceAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeServiceAccessPoliciesRequest", name: "DescribeServiceAccessPoliciesRequest")
    DescribeServiceAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeServiceAccessPoliciesResponse", name: "DescribeServiceAccessPoliciesResponse")
    DescribeSuggestersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeSuggestersRequest", name: "DescribeSuggestersRequest")
    DescribeSuggestersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DescribeSuggestersResponse", name: "DescribeSuggestersResponse")
    DisabledOperationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DisabledOperationException", name: "DisabledOperationException", traits: {"aws.protocols#awsQueryError" => {"code" => "DisabledAction", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DocumentSuggesterOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DocumentSuggesterOptions", name: "DocumentSuggesterOptions")
    DomainEndpointOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DomainEndpointOptions", name: "DomainEndpointOptions")
    DomainEndpointOptionsStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DomainEndpointOptionsStatus", name: "DomainEndpointOptionsStatus")
    DomainId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#DomainId", name: "DomainId", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#DomainName", name: "DomainName", traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    DomainNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#DomainNameList", name: "DomainNameList")
    DomainNameMap = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.cloudsearch#DomainNameMap", name: "DomainNameMap")
    DomainStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DomainStatus", name: "DomainStatus")
    DomainStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#DomainStatusList", name: "DomainStatusList")
    Double = ::Smithy::Schema::Shapes::FloatShape.new(id: "com.amazonaws.cloudsearch#Double", name: "Double")
    DoubleArrayOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DoubleArrayOptions", name: "DoubleArrayOptions")
    DoubleOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#DoubleOptions", name: "DoubleOptions")
    DynamicFieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#DynamicFieldName", name: "DynamicFieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)$"})
    DynamicFieldNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#DynamicFieldNameList", name: "DynamicFieldNameList")
    ErrorCode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#ErrorCode", name: "ErrorCode")
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#ErrorMessage", name: "ErrorMessage")
    Expression = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#Expression", name: "Expression")
    ExpressionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ExpressionStatus", name: "ExpressionStatus")
    ExpressionStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#ExpressionStatusList", name: "ExpressionStatusList")
    ExpressionValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#ExpressionValue", name: "ExpressionValue", traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    FieldName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#FieldName", name: "FieldName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    FieldNameCommaList = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#FieldNameCommaList", name: "FieldNameCommaList", traits: {"smithy.api#pattern" => "^\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*$"})
    FieldNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#FieldNameList", name: "FieldNameList")
    FieldValue = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#FieldValue", name: "FieldValue", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    IndexDocumentsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IndexDocumentsRequest", name: "IndexDocumentsRequest")
    IndexDocumentsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IndexDocumentsResponse", name: "IndexDocumentsResponse")
    IndexField = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IndexField", name: "IndexField")
    IndexFieldStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IndexFieldStatus", name: "IndexFieldStatus")
    IndexFieldStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#IndexFieldStatusList", name: "IndexFieldStatusList")
    IndexFieldType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#IndexFieldType", name: "IndexFieldType")
    InstanceCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#InstanceCount", name: "InstanceCount", traits: {"smithy.api#range" => {"min" => 1}})
    IntArrayOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IntArrayOptions", name: "IntArrayOptions")
    IntOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#IntOptions", name: "IntOptions")
    InternalException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#InternalException", name: "InternalException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidTypeException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#InvalidTypeException", name: "InvalidTypeException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidType", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LatLonOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#LatLonOptions", name: "LatLonOptions")
    LimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#LimitExceededException", name: "LimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Limits = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#Limits", name: "Limits")
    ListDomainNamesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ListDomainNamesResponse", name: "ListDomainNamesResponse")
    LiteralArrayOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#LiteralArrayOptions", name: "LiteralArrayOptions")
    LiteralOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#LiteralOptions", name: "LiteralOptions")
    Long = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#Long", name: "Long")
    MaximumPartitionCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#MaximumPartitionCount", name: "MaximumPartitionCount", traits: {"smithy.api#range" => {"min" => 1}})
    MaximumReplicationCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#MaximumReplicationCount", name: "MaximumReplicationCount", traits: {"smithy.api#range" => {"min" => 1}})
    MultiAZ = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.cloudsearch#MultiAZ", name: "MultiAZ", traits: {"smithy.api#default" => false})
    OptionState = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#OptionState", name: "OptionState")
    OptionStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#OptionStatus", name: "OptionStatus")
    PartitionCount = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#PartitionCount", name: "PartitionCount", traits: {"smithy.api#range" => {"min" => 1}})
    PartitionInstanceType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#PartitionInstanceType", name: "PartitionInstanceType")
    PolicyDocument = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#PolicyDocument", name: "PolicyDocument")
    ResourceAlreadyExistsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ResourceAlreadyExistsException", name: "ResourceAlreadyExistsException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceAlreadyExists", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ScalingParameters = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ScalingParameters", name: "ScalingParameters")
    ScalingParametersStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ScalingParametersStatus", name: "ScalingParametersStatus")
    SearchInstanceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#SearchInstanceType", name: "SearchInstanceType")
    ServiceEndpoint = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ServiceEndpoint", name: "ServiceEndpoint")
    ServiceUrl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#ServiceUrl", name: "ServiceUrl")
    StandardName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#StandardName", name: "StandardName", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    StandardNameList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#StandardNameList", name: "StandardNameList")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#String", name: "String")
    Suggester = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#Suggester", name: "Suggester")
    SuggesterFuzzyMatching = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#SuggesterFuzzyMatching", name: "SuggesterFuzzyMatching")
    SuggesterStatus = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#SuggesterStatus", name: "SuggesterStatus")
    SuggesterStatusList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.cloudsearch#SuggesterStatusList", name: "SuggesterStatusList")
    TLSSecurityPolicy = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.cloudsearch#TLSSecurityPolicy", name: "TLSSecurityPolicy")
    TextArrayOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#TextArrayOptions", name: "TextArrayOptions")
    TextOptions = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#TextOptions", name: "TextOptions")
    UIntValue = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.cloudsearch#UIntValue", name: "UIntValue", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UpdateAvailabilityOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateAvailabilityOptionsRequest", name: "UpdateAvailabilityOptionsRequest")
    UpdateAvailabilityOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateAvailabilityOptionsResponse", name: "UpdateAvailabilityOptionsResponse")
    UpdateDomainEndpointOptionsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateDomainEndpointOptionsRequest", name: "UpdateDomainEndpointOptionsRequest")
    UpdateDomainEndpointOptionsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateDomainEndpointOptionsResponse", name: "UpdateDomainEndpointOptionsResponse")
    UpdateScalingParametersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateScalingParametersRequest", name: "UpdateScalingParametersRequest")
    UpdateScalingParametersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateScalingParametersResponse", name: "UpdateScalingParametersResponse")
    UpdateServiceAccessPoliciesRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateServiceAccessPoliciesRequest", name: "UpdateServiceAccessPoliciesRequest")
    UpdateServiceAccessPoliciesResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#UpdateServiceAccessPoliciesResponse", name: "UpdateServiceAccessPoliciesResponse")
    UpdateTimestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.cloudsearch#UpdateTimestamp", name: "UpdateTimestamp")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.cloudsearch#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Word = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.cloudsearch#Word", name: "Word", traits: {"smithy.api#pattern" => "^[\\S]+$"})

    AccessPoliciesStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "Options", traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.type = Types::AccessPoliciesStatus
    AlgorithmicStemming.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "none", traits: {"smithy.api#enumValue" => "none"}))
    AlgorithmicStemming.add_member(:minimal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "minimal", traits: {"smithy.api#enumValue" => "minimal"}))
    AlgorithmicStemming.add_member(:light, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "light", traits: {"smithy.api#enumValue" => "light"}))
    AlgorithmicStemming.add_member(:full, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "full", traits: {"smithy.api#enumValue" => "full"}))
    AnalysisOptions.add_member(:synonyms, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Synonyms"))
    AnalysisOptions.add_member(:stopwords, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "Stopwords"))
    AnalysisOptions.add_member(:stemming_dictionary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "StemmingDictionary"))
    AnalysisOptions.add_member(:japanese_tokenization_dictionary, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "JapaneseTokenizationDictionary"))
    AnalysisOptions.add_member(:algorithmic_stemming, ::Smithy::Schema::Shapes::MemberShape.new(target: AlgorithmicStemming, location_name: "AlgorithmicStemming"))
    AnalysisOptions.type = Types::AnalysisOptions
    AnalysisScheme.add_member(:analysis_scheme_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "AnalysisSchemeName", traits: {"smithy.api#required" => {}}))
    AnalysisScheme.add_member(:analysis_scheme_language, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchemeLanguage, location_name: "AnalysisSchemeLanguage", traits: {"smithy.api#required" => {}}))
    AnalysisScheme.add_member(:analysis_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisOptions, location_name: "AnalysisOptions"))
    AnalysisScheme.type = Types::AnalysisScheme
    AnalysisSchemeLanguage.add_member(:ar, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ar", traits: {"smithy.api#enumValue" => "ar"}))
    AnalysisSchemeLanguage.add_member(:bg, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "bg", traits: {"smithy.api#enumValue" => "bg"}))
    AnalysisSchemeLanguage.add_member(:ca, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ca", traits: {"smithy.api#enumValue" => "ca"}))
    AnalysisSchemeLanguage.add_member(:cs, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "cs", traits: {"smithy.api#enumValue" => "cs"}))
    AnalysisSchemeLanguage.add_member(:da, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "da", traits: {"smithy.api#enumValue" => "da"}))
    AnalysisSchemeLanguage.add_member(:de, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "de", traits: {"smithy.api#enumValue" => "de"}))
    AnalysisSchemeLanguage.add_member(:el, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "el", traits: {"smithy.api#enumValue" => "el"}))
    AnalysisSchemeLanguage.add_member(:en, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "en", traits: {"smithy.api#enumValue" => "en"}))
    AnalysisSchemeLanguage.add_member(:es, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "es", traits: {"smithy.api#enumValue" => "es"}))
    AnalysisSchemeLanguage.add_member(:eu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "eu", traits: {"smithy.api#enumValue" => "eu"}))
    AnalysisSchemeLanguage.add_member(:fa, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fa", traits: {"smithy.api#enumValue" => "fa"}))
    AnalysisSchemeLanguage.add_member(:fi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fi", traits: {"smithy.api#enumValue" => "fi"}))
    AnalysisSchemeLanguage.add_member(:fr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "fr", traits: {"smithy.api#enumValue" => "fr"}))
    AnalysisSchemeLanguage.add_member(:ga, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ga", traits: {"smithy.api#enumValue" => "ga"}))
    AnalysisSchemeLanguage.add_member(:gl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "gl", traits: {"smithy.api#enumValue" => "gl"}))
    AnalysisSchemeLanguage.add_member(:he, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "he", traits: {"smithy.api#enumValue" => "he"}))
    AnalysisSchemeLanguage.add_member(:hi, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "hi", traits: {"smithy.api#enumValue" => "hi"}))
    AnalysisSchemeLanguage.add_member(:hu, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "hu", traits: {"smithy.api#enumValue" => "hu"}))
    AnalysisSchemeLanguage.add_member(:hy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "hy", traits: {"smithy.api#enumValue" => "hy"}))
    AnalysisSchemeLanguage.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "id", traits: {"smithy.api#enumValue" => "id"}))
    AnalysisSchemeLanguage.add_member(:it, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "it", traits: {"smithy.api#enumValue" => "it"}))
    AnalysisSchemeLanguage.add_member(:ja, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ja", traits: {"smithy.api#enumValue" => "ja"}))
    AnalysisSchemeLanguage.add_member(:ko, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ko", traits: {"smithy.api#enumValue" => "ko"}))
    AnalysisSchemeLanguage.add_member(:lv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "lv", traits: {"smithy.api#enumValue" => "lv"}))
    AnalysisSchemeLanguage.add_member(:mul, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "mul", traits: {"smithy.api#enumValue" => "mul"}))
    AnalysisSchemeLanguage.add_member(:nl, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "nl", traits: {"smithy.api#enumValue" => "nl"}))
    AnalysisSchemeLanguage.add_member(:no, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "no", traits: {"smithy.api#enumValue" => "no"}))
    AnalysisSchemeLanguage.add_member(:pt, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "pt", traits: {"smithy.api#enumValue" => "pt"}))
    AnalysisSchemeLanguage.add_member(:ro, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ro", traits: {"smithy.api#enumValue" => "ro"}))
    AnalysisSchemeLanguage.add_member(:ru, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ru", traits: {"smithy.api#enumValue" => "ru"}))
    AnalysisSchemeLanguage.add_member(:sv, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "sv", traits: {"smithy.api#enumValue" => "sv"}))
    AnalysisSchemeLanguage.add_member(:th, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "th", traits: {"smithy.api#enumValue" => "th"}))
    AnalysisSchemeLanguage.add_member(:tr, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "tr", traits: {"smithy.api#enumValue" => "tr"}))
    AnalysisSchemeLanguage.add_member(:zh_hans, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "zh_Hans", traits: {"smithy.api#enumValue" => "zh-Hans"}))
    AnalysisSchemeLanguage.add_member(:zh_hant, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "zh_Hant", traits: {"smithy.api#enumValue" => "zh-Hant"}))
    AnalysisSchemeStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisScheme, location_name: "Options", traits: {"smithy.api#required" => {}}))
    AnalysisSchemeStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AnalysisSchemeStatus.type = Types::AnalysisSchemeStatus
    AnalysisSchemeStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchemeStatus)
    AvailabilityOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: MultiAZ, location_name: "Options", traits: {"smithy.api#default" => false, "smithy.api#required" => {}}))
    AvailabilityOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    AvailabilityOptionsStatus.type = Types::AvailabilityOptionsStatus
    BaseException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    BaseException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    BaseException.type = Types::BaseException
    BuildSuggestersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    BuildSuggestersRequest.type = Types::BuildSuggestersRequest
    BuildSuggestersResponse.add_member(:field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameList, location_name: "FieldNames"))
    BuildSuggestersResponse.type = Types::BuildSuggestersResponse
    CreateDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, location_name: "DomainStatus"))
    CreateDomainResponse.type = Types::CreateDomainResponse
    DateArrayOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    DateArrayOptions.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameCommaList, location_name: "SourceFields"))
    DateArrayOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    DateArrayOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    DateArrayOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    DateArrayOptions.type = Types::DateArrayOptions
    DateOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    DateOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    DateOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    DateOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    DateOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    DateOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    DateOptions.type = Types::DateOptions
    DefineAnalysisSchemeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeRequest.add_member(:analysis_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisScheme, location_name: "AnalysisScheme", traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeRequest.type = Types::DefineAnalysisSchemeRequest
    DefineAnalysisSchemeResponse.add_member(:analysis_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchemeStatus, location_name: "AnalysisScheme", traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeResponse.type = Types::DefineAnalysisSchemeResponse
    DefineExpressionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DefineExpressionRequest.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, location_name: "Expression", traits: {"smithy.api#required" => {}}))
    DefineExpressionRequest.type = Types::DefineExpressionRequest
    DefineExpressionResponse.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionStatus, location_name: "Expression", traits: {"smithy.api#required" => {}}))
    DefineExpressionResponse.type = Types::DefineExpressionResponse
    DefineIndexFieldRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DefineIndexFieldRequest.add_member(:index_field, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexField, location_name: "IndexField", traits: {"smithy.api#required" => {}}))
    DefineIndexFieldRequest.type = Types::DefineIndexFieldRequest
    DefineIndexFieldResponse.add_member(:index_field, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldStatus, location_name: "IndexField", traits: {"smithy.api#required" => {}}))
    DefineIndexFieldResponse.type = Types::DefineIndexFieldResponse
    DefineSuggesterRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DefineSuggesterRequest.add_member(:suggester, ::Smithy::Schema::Shapes::MemberShape.new(target: Suggester, location_name: "Suggester", traits: {"smithy.api#required" => {}}))
    DefineSuggesterRequest.type = Types::DefineSuggesterRequest
    DefineSuggesterResponse.add_member(:suggester, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggesterStatus, location_name: "Suggester", traits: {"smithy.api#required" => {}}))
    DefineSuggesterResponse.type = Types::DefineSuggesterResponse
    DeleteAnalysisSchemeRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteAnalysisSchemeRequest.add_member(:analysis_scheme_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "AnalysisSchemeName", traits: {"smithy.api#required" => {}}))
    DeleteAnalysisSchemeRequest.type = Types::DeleteAnalysisSchemeRequest
    DeleteAnalysisSchemeResponse.add_member(:analysis_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchemeStatus, location_name: "AnalysisScheme", traits: {"smithy.api#required" => {}}))
    DeleteAnalysisSchemeResponse.type = Types::DeleteAnalysisSchemeResponse
    DeleteDomainRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:domain_status, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus, location_name: "DomainStatus"))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteExpressionRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteExpressionRequest.add_member(:expression_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "ExpressionName", traits: {"smithy.api#required" => {}}))
    DeleteExpressionRequest.type = Types::DeleteExpressionRequest
    DeleteExpressionResponse.add_member(:expression, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionStatus, location_name: "Expression", traits: {"smithy.api#required" => {}}))
    DeleteExpressionResponse.type = Types::DeleteExpressionResponse
    DeleteIndexFieldRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteIndexFieldRequest.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicFieldName, location_name: "IndexFieldName", traits: {"smithy.api#required" => {}}))
    DeleteIndexFieldRequest.type = Types::DeleteIndexFieldRequest
    DeleteIndexFieldResponse.add_member(:index_field, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldStatus, location_name: "IndexField", traits: {"smithy.api#required" => {}}))
    DeleteIndexFieldResponse.type = Types::DeleteIndexFieldResponse
    DeleteSuggesterRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DeleteSuggesterRequest.add_member(:suggester_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "SuggesterName", traits: {"smithy.api#required" => {}}))
    DeleteSuggesterRequest.type = Types::DeleteSuggesterRequest
    DeleteSuggesterResponse.add_member(:suggester, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggesterStatus, location_name: "Suggester", traits: {"smithy.api#required" => {}}))
    DeleteSuggesterResponse.type = Types::DeleteSuggesterResponse
    DescribeAnalysisSchemesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeAnalysisSchemesRequest.add_member(:analysis_scheme_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardNameList, location_name: "AnalysisSchemeNames"))
    DescribeAnalysisSchemesRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeAnalysisSchemesRequest.type = Types::DescribeAnalysisSchemesRequest
    DescribeAnalysisSchemesResponse.add_member(:analysis_schemes, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisSchemeStatusList, location_name: "AnalysisSchemes", traits: {"smithy.api#required" => {}}))
    DescribeAnalysisSchemesResponse.type = Types::DescribeAnalysisSchemesResponse
    DescribeAvailabilityOptionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeAvailabilityOptionsRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeAvailabilityOptionsRequest.type = Types::DescribeAvailabilityOptionsRequest
    DescribeAvailabilityOptionsResponse.add_member(:availability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityOptionsStatus, location_name: "AvailabilityOptions"))
    DescribeAvailabilityOptionsResponse.type = Types::DescribeAvailabilityOptionsResponse
    DescribeDomainEndpointOptionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeDomainEndpointOptionsRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeDomainEndpointOptionsRequest.type = Types::DescribeDomainEndpointOptionsRequest
    DescribeDomainEndpointOptionsResponse.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    DescribeDomainEndpointOptionsResponse.type = Types::DescribeDomainEndpointOptionsResponse
    DescribeDomainsRequest.add_member(:domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameList, location_name: "DomainNames"))
    DescribeDomainsRequest.type = Types::DescribeDomainsRequest
    DescribeDomainsResponse.add_member(:domain_status_list, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatusList, location_name: "DomainStatusList", traits: {"smithy.api#required" => {}}))
    DescribeDomainsResponse.type = Types::DescribeDomainsResponse
    DescribeExpressionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeExpressionsRequest.add_member(:expression_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardNameList, location_name: "ExpressionNames"))
    DescribeExpressionsRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeExpressionsRequest.type = Types::DescribeExpressionsRequest
    DescribeExpressionsResponse.add_member(:expressions, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionStatusList, location_name: "Expressions", traits: {"smithy.api#required" => {}}))
    DescribeExpressionsResponse.type = Types::DescribeExpressionsResponse
    DescribeIndexFieldsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeIndexFieldsRequest.add_member(:field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicFieldNameList, location_name: "FieldNames"))
    DescribeIndexFieldsRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeIndexFieldsRequest.type = Types::DescribeIndexFieldsRequest
    DescribeIndexFieldsResponse.add_member(:index_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldStatusList, location_name: "IndexFields", traits: {"smithy.api#required" => {}}))
    DescribeIndexFieldsResponse.type = Types::DescribeIndexFieldsResponse
    DescribeScalingParametersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeScalingParametersRequest.type = Types::DescribeScalingParametersRequest
    DescribeScalingParametersResponse.add_member(:scaling_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingParametersStatus, location_name: "ScalingParameters", traits: {"smithy.api#required" => {}}))
    DescribeScalingParametersResponse.type = Types::DescribeScalingParametersResponse
    DescribeServiceAccessPoliciesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeServiceAccessPoliciesRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeServiceAccessPoliciesRequest.type = Types::DescribeServiceAccessPoliciesRequest
    DescribeServiceAccessPoliciesResponse.add_member(:access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoliciesStatus, location_name: "AccessPolicies", traits: {"smithy.api#required" => {}}))
    DescribeServiceAccessPoliciesResponse.type = Types::DescribeServiceAccessPoliciesResponse
    DescribeSuggestersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DescribeSuggestersRequest.add_member(:suggester_names, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardNameList, location_name: "SuggesterNames"))
    DescribeSuggestersRequest.add_member(:deployed, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deployed"))
    DescribeSuggestersRequest.type = Types::DescribeSuggestersRequest
    DescribeSuggestersResponse.add_member(:suggesters, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggesterStatusList, location_name: "Suggesters", traits: {"smithy.api#required" => {}}))
    DescribeSuggestersResponse.type = Types::DescribeSuggestersResponse
    DisabledOperationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    DisabledOperationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    DisabledOperationException.type = Types::DisabledOperationException
    DocumentSuggesterOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField", traits: {"smithy.api#required" => {}}))
    DocumentSuggesterOptions.add_member(:fuzzy_matching, ::Smithy::Schema::Shapes::MemberShape.new(target: SuggesterFuzzyMatching, location_name: "FuzzyMatching"))
    DocumentSuggesterOptions.add_member(:sort_expression, ::Smithy::Schema::Shapes::MemberShape.new(target: String, location_name: "SortExpression"))
    DocumentSuggesterOptions.type = Types::DocumentSuggesterOptions
    DomainEndpointOptions.add_member(:enforce_https, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "EnforceHTTPS"))
    DomainEndpointOptions.add_member(:tls_security_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: TLSSecurityPolicy, location_name: "TLSSecurityPolicy"))
    DomainEndpointOptions.type = Types::DomainEndpointOptions
    DomainEndpointOptionsStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEndpointOptions, location_name: "Options", traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.type = Types::DomainEndpointOptionsStatus
    DomainNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName)
    DomainNameMap.key = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName)
    DomainNameMap.value = ::Smithy::Schema::Shapes::MemberShape.new(target: APIVersion)
    DomainStatus.add_member(:domain_id, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainId, location_name: "DomainId", traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ARN, location_name: "ARN"))
    DomainStatus.add_member(:created, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Created"))
    DomainStatus.add_member(:deleted, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Deleted"))
    DomainStatus.add_member(:doc_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpoint, location_name: "DocService"))
    DomainStatus.add_member(:search_service, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceEndpoint, location_name: "SearchService"))
    DomainStatus.add_member(:requires_index_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "RequiresIndexDocuments", traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "Processing"))
    DomainStatus.add_member(:search_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: SearchInstanceType, location_name: "SearchInstanceType"))
    DomainStatus.add_member(:search_partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionCount, location_name: "SearchPartitionCount"))
    DomainStatus.add_member(:search_instance_count, ::Smithy::Schema::Shapes::MemberShape.new(target: InstanceCount, location_name: "SearchInstanceCount"))
    DomainStatus.add_member(:limits, ::Smithy::Schema::Shapes::MemberShape.new(target: Limits, location_name: "Limits"))
    DomainStatus.type = Types::DomainStatus
    DomainStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DomainStatus)
    DoubleArrayOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "DefaultValue"))
    DoubleArrayOptions.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameCommaList, location_name: "SourceFields"))
    DoubleArrayOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    DoubleArrayOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    DoubleArrayOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    DoubleArrayOptions.type = Types::DoubleArrayOptions
    DoubleOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Double, location_name: "DefaultValue"))
    DoubleOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    DoubleOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    DoubleOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    DoubleOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    DoubleOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    DoubleOptions.type = Types::DoubleOptions
    DynamicFieldNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicFieldName)
    Expression.add_member(:expression_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "ExpressionName", traits: {"smithy.api#required" => {}}))
    Expression.add_member(:expression_value, ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionValue, location_name: "ExpressionValue", traits: {"smithy.api#required" => {}}))
    Expression.type = Types::Expression
    ExpressionStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Expression, location_name: "Options", traits: {"smithy.api#required" => {}}))
    ExpressionStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ExpressionStatus.type = Types::ExpressionStatus
    ExpressionStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: ExpressionStatus)
    FieldNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName)
    IndexDocumentsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    IndexDocumentsRequest.type = Types::IndexDocumentsRequest
    IndexDocumentsResponse.add_member(:field_names, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameList, location_name: "FieldNames"))
    IndexDocumentsResponse.type = Types::IndexDocumentsResponse
    IndexField.add_member(:index_field_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DynamicFieldName, location_name: "IndexFieldName", traits: {"smithy.api#required" => {}}))
    IndexField.add_member(:index_field_type, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldType, location_name: "IndexFieldType", traits: {"smithy.api#required" => {}}))
    IndexField.add_member(:int_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IntOptions, location_name: "IntOptions"))
    IndexField.add_member(:double_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleOptions, location_name: "DoubleOptions"))
    IndexField.add_member(:literal_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LiteralOptions, location_name: "LiteralOptions"))
    IndexField.add_member(:text_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TextOptions, location_name: "TextOptions"))
    IndexField.add_member(:date_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DateOptions, location_name: "DateOptions"))
    IndexField.add_member(:lat_lon_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LatLonOptions, location_name: "LatLonOptions"))
    IndexField.add_member(:int_array_options, ::Smithy::Schema::Shapes::MemberShape.new(target: IntArrayOptions, location_name: "IntArrayOptions"))
    IndexField.add_member(:double_array_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleArrayOptions, location_name: "DoubleArrayOptions"))
    IndexField.add_member(:literal_array_options, ::Smithy::Schema::Shapes::MemberShape.new(target: LiteralArrayOptions, location_name: "LiteralArrayOptions"))
    IndexField.add_member(:text_array_options, ::Smithy::Schema::Shapes::MemberShape.new(target: TextArrayOptions, location_name: "TextArrayOptions"))
    IndexField.add_member(:date_array_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DateArrayOptions, location_name: "DateArrayOptions"))
    IndexField.type = Types::IndexField
    IndexFieldStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: IndexField, location_name: "Options", traits: {"smithy.api#required" => {}}))
    IndexFieldStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    IndexFieldStatus.type = Types::IndexFieldStatus
    IndexFieldStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: IndexFieldStatus)
    IndexFieldType.add_member(:int, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "int", traits: {"smithy.api#enumValue" => "int"}))
    IndexFieldType.add_member(:double, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "double", traits: {"smithy.api#enumValue" => "double"}))
    IndexFieldType.add_member(:literal, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "literal", traits: {"smithy.api#enumValue" => "literal"}))
    IndexFieldType.add_member(:text, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "text", traits: {"smithy.api#enumValue" => "text"}))
    IndexFieldType.add_member(:date, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "date", traits: {"smithy.api#enumValue" => "date"}))
    IndexFieldType.add_member(:latlon, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "latlon", traits: {"smithy.api#enumValue" => "latlon"}))
    IndexFieldType.add_member(:int_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "int_array", traits: {"smithy.api#enumValue" => "int-array"}))
    IndexFieldType.add_member(:double_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "double_array", traits: {"smithy.api#enumValue" => "double-array"}))
    IndexFieldType.add_member(:literal_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "literal_array", traits: {"smithy.api#enumValue" => "literal-array"}))
    IndexFieldType.add_member(:text_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "text_array", traits: {"smithy.api#enumValue" => "text-array"}))
    IndexFieldType.add_member(:date_array, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "date_array", traits: {"smithy.api#enumValue" => "date-array"}))
    IntArrayOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "DefaultValue"))
    IntArrayOptions.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameCommaList, location_name: "SourceFields"))
    IntArrayOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    IntArrayOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    IntArrayOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    IntArrayOptions.type = Types::IntArrayOptions
    IntOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: Long, location_name: "DefaultValue"))
    IntOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    IntOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    IntOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    IntOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    IntOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    IntOptions.type = Types::IntOptions
    InternalException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    InternalException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InternalException.type = Types::InternalException
    InvalidTypeException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    InvalidTypeException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    InvalidTypeException.type = Types::InvalidTypeException
    LatLonOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    LatLonOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    LatLonOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    LatLonOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    LatLonOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    LatLonOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    LatLonOptions.type = Types::LatLonOptions
    LimitExceededException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    LimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    LimitExceededException.type = Types::LimitExceededException
    Limits.add_member(:maximum_replication_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumReplicationCount, location_name: "MaximumReplicationCount", traits: {"smithy.api#required" => {}}))
    Limits.add_member(:maximum_partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: MaximumPartitionCount, location_name: "MaximumPartitionCount", traits: {"smithy.api#required" => {}}))
    Limits.type = Types::Limits
    ListDomainNamesResponse.add_member(:domain_names, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainNameMap, location_name: "DomainNames"))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    LiteralArrayOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    LiteralArrayOptions.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameCommaList, location_name: "SourceFields"))
    LiteralArrayOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    LiteralArrayOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    LiteralArrayOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    LiteralArrayOptions.type = Types::LiteralArrayOptions
    LiteralOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    LiteralOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    LiteralOptions.add_member(:facet_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "FacetEnabled"))
    LiteralOptions.add_member(:search_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SearchEnabled"))
    LiteralOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    LiteralOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    LiteralOptions.type = Types::LiteralOptions
    OptionState.add_member(:requires_index_documents, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "RequiresIndexDocuments", traits: {"smithy.api#enumValue" => "RequiresIndexDocuments"}))
    OptionState.add_member(:processing, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Processing", traits: {"smithy.api#enumValue" => "Processing"}))
    OptionState.add_member(:active, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "Active", traits: {"smithy.api#enumValue" => "Active"}))
    OptionState.add_member(:failed_to_validate, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FailedToValidate", traits: {"smithy.api#enumValue" => "FailedToValidate"}))
    OptionStatus.add_member(:creation_date, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTimestamp, location_name: "CreationDate", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_date, ::Smithy::Schema::Shapes::MemberShape.new(target: UpdateTimestamp, location_name: "UpdateDate", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:update_version, ::Smithy::Schema::Shapes::MemberShape.new(target: UIntValue, location_name: "UpdateVersion", traits: {"smithy.api#default" => 0}))
    OptionStatus.add_member(:state, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionState, location_name: "State", traits: {"smithy.api#required" => {}}))
    OptionStatus.add_member(:pending_deletion, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "PendingDeletion"))
    OptionStatus.type = Types::OptionStatus
    PartitionInstanceType.add_member(:search_m1_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m1_small", traits: {"smithy.api#enumValue" => "search.m1.small"}))
    PartitionInstanceType.add_member(:search_m1_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m1_large", traits: {"smithy.api#enumValue" => "search.m1.large"}))
    PartitionInstanceType.add_member(:search_m2_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m2_xlarge", traits: {"smithy.api#enumValue" => "search.m2.xlarge"}))
    PartitionInstanceType.add_member(:search_m2_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m2_2xlarge", traits: {"smithy.api#enumValue" => "search.m2.2xlarge"}))
    PartitionInstanceType.add_member(:search_m3_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m3_medium", traits: {"smithy.api#enumValue" => "search.m3.medium"}))
    PartitionInstanceType.add_member(:search_m3_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m3_large", traits: {"smithy.api#enumValue" => "search.m3.large"}))
    PartitionInstanceType.add_member(:search_m3_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m3_xlarge", traits: {"smithy.api#enumValue" => "search.m3.xlarge"}))
    PartitionInstanceType.add_member(:search_m3_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_m3_2xlarge", traits: {"smithy.api#enumValue" => "search.m3.2xlarge"}))
    PartitionInstanceType.add_member(:search_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_small", traits: {"smithy.api#enumValue" => "search.small"}))
    PartitionInstanceType.add_member(:search_medium, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_medium", traits: {"smithy.api#enumValue" => "search.medium"}))
    PartitionInstanceType.add_member(:search_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_large", traits: {"smithy.api#enumValue" => "search.large"}))
    PartitionInstanceType.add_member(:search_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_xlarge", traits: {"smithy.api#enumValue" => "search.xlarge"}))
    PartitionInstanceType.add_member(:search_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_2xlarge", traits: {"smithy.api#enumValue" => "search.2xlarge"}))
    PartitionInstanceType.add_member(:search_previousgeneration_small, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_previousgeneration_small", traits: {"smithy.api#enumValue" => "search.previousgeneration.small"}))
    PartitionInstanceType.add_member(:search_previousgeneration_large, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_previousgeneration_large", traits: {"smithy.api#enumValue" => "search.previousgeneration.large"}))
    PartitionInstanceType.add_member(:search_previousgeneration_xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_previousgeneration_xlarge", traits: {"smithy.api#enumValue" => "search.previousgeneration.xlarge"}))
    PartitionInstanceType.add_member(:search_previousgeneration_2xlarge, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "search_previousgeneration_2xlarge", traits: {"smithy.api#enumValue" => "search.previousgeneration.2xlarge"}))
    ResourceAlreadyExistsException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ResourceAlreadyExistsException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScalingParameters.add_member(:desired_instance_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PartitionInstanceType, location_name: "DesiredInstanceType"))
    ScalingParameters.add_member(:desired_replication_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UIntValue, location_name: "DesiredReplicationCount", traits: {"smithy.api#default" => 0}))
    ScalingParameters.add_member(:desired_partition_count, ::Smithy::Schema::Shapes::MemberShape.new(target: UIntValue, location_name: "DesiredPartitionCount", traits: {"smithy.api#default" => 0}))
    ScalingParameters.type = Types::ScalingParameters
    ScalingParametersStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingParameters, location_name: "Options", traits: {"smithy.api#required" => {}}))
    ScalingParametersStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    ScalingParametersStatus.type = Types::ScalingParametersStatus
    ServiceEndpoint.add_member(:endpoint, ::Smithy::Schema::Shapes::MemberShape.new(target: ServiceUrl, location_name: "Endpoint"))
    ServiceEndpoint.type = Types::ServiceEndpoint
    StandardNameList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName)
    Suggester.add_member(:suggester_name, ::Smithy::Schema::Shapes::MemberShape.new(target: StandardName, location_name: "SuggesterName", traits: {"smithy.api#required" => {}}))
    Suggester.add_member(:document_suggester_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DocumentSuggesterOptions, location_name: "DocumentSuggesterOptions", traits: {"smithy.api#required" => {}}))
    Suggester.type = Types::Suggester
    SuggesterFuzzyMatching.add_member(:none, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "none", traits: {"smithy.api#enumValue" => "none"}))
    SuggesterFuzzyMatching.add_member(:low, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "low", traits: {"smithy.api#enumValue" => "low"}))
    SuggesterFuzzyMatching.add_member(:high, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "high", traits: {"smithy.api#enumValue" => "high"}))
    SuggesterStatus.add_member(:options, ::Smithy::Schema::Shapes::MemberShape.new(target: Suggester, location_name: "Options", traits: {"smithy.api#required" => {}}))
    SuggesterStatus.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: OptionStatus, location_name: "Status", traits: {"smithy.api#required" => {}}))
    SuggesterStatus.type = Types::SuggesterStatus
    SuggesterStatusList.member = ::Smithy::Schema::Shapes::MemberShape.new(target: SuggesterStatus)
    TLSSecurityPolicy.add_member(:policy_min_tls_1_0_2019_07, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_MIN_TLS_1_0_2019_07", traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-0-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_2019_07, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "POLICY_MIN_TLS_1_2_2019_07", traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-2019-07"}))
    TextArrayOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    TextArrayOptions.add_member(:source_fields, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldNameCommaList, location_name: "SourceFields"))
    TextArrayOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    TextArrayOptions.add_member(:highlight_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "HighlightEnabled"))
    TextArrayOptions.add_member(:analysis_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: Word, location_name: "AnalysisScheme"))
    TextArrayOptions.type = Types::TextArrayOptions
    TextOptions.add_member(:default_value, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldValue, location_name: "DefaultValue"))
    TextOptions.add_member(:source_field, ::Smithy::Schema::Shapes::MemberShape.new(target: FieldName, location_name: "SourceField"))
    TextOptions.add_member(:return_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "ReturnEnabled"))
    TextOptions.add_member(:sort_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "SortEnabled"))
    TextOptions.add_member(:highlight_enabled, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "HighlightEnabled"))
    TextOptions.add_member(:analysis_scheme, ::Smithy::Schema::Shapes::MemberShape.new(target: Word, location_name: "AnalysisScheme"))
    TextOptions.type = Types::TextOptions
    UpdateAvailabilityOptionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateAvailabilityOptionsRequest.add_member(:multi_az, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, location_name: "MultiAZ", traits: {"smithy.api#required" => {}}))
    UpdateAvailabilityOptionsRequest.type = Types::UpdateAvailabilityOptionsRequest
    UpdateAvailabilityOptionsResponse.add_member(:availability_options, ::Smithy::Schema::Shapes::MemberShape.new(target: AvailabilityOptionsStatus, location_name: "AvailabilityOptions"))
    UpdateAvailabilityOptionsResponse.type = Types::UpdateAvailabilityOptionsResponse
    UpdateDomainEndpointOptionsRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateDomainEndpointOptionsRequest.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEndpointOptions, location_name: "DomainEndpointOptions", traits: {"smithy.api#required" => {}}))
    UpdateDomainEndpointOptionsRequest.type = Types::UpdateDomainEndpointOptionsRequest
    UpdateDomainEndpointOptionsResponse.add_member(:domain_endpoint_options, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainEndpointOptionsStatus, location_name: "DomainEndpointOptions"))
    UpdateDomainEndpointOptionsResponse.type = Types::UpdateDomainEndpointOptionsResponse
    UpdateScalingParametersRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersRequest.add_member(:scaling_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingParameters, location_name: "ScalingParameters", traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersRequest.type = Types::UpdateScalingParametersRequest
    UpdateScalingParametersResponse.add_member(:scaling_parameters, ::Smithy::Schema::Shapes::MemberShape.new(target: ScalingParametersStatus, location_name: "ScalingParameters", traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersResponse.type = Types::UpdateScalingParametersResponse
    UpdateServiceAccessPoliciesRequest.add_member(:domain_name, ::Smithy::Schema::Shapes::MemberShape.new(target: DomainName, location_name: "DomainName", traits: {"smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesRequest.add_member(:access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyDocument, location_name: "AccessPolicies", traits: {"smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesRequest.type = Types::UpdateServiceAccessPoliciesRequest
    UpdateServiceAccessPoliciesResponse.add_member(:access_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: AccessPoliciesStatus, location_name: "AccessPolicies", traits: {"smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesResponse.type = Types::UpdateServiceAccessPoliciesResponse
    ValidationException.add_member(:code, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorCode, location_name: "Code"))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    A9SearchCloudConfigService2013 = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudsearch#A9SearchCloudConfigService2013"
      service.name = "A9SearchCloudConfigService2013"
      service.version = "2013-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudSearch", "arnNamespace" => "cloudsearch", "cloudFormationName" => "CloudSearch", "cloudTrailEventSource" => "cloudsearch.amazonaws.com", "endpointPrefix" => "cloudsearch"}, "aws.auth#sigv4" => {"name" => "cloudsearch"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon CloudSearch", "smithy.api#xmlNamespace" => {"uri" => "http://cloudsearch.amazonaws.com/doc/2013-01-01/"}}
      service.add_operation(:build_suggesters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#BuildSuggesters"
        operation.name = "BuildSuggesters"
        operation.input = BuildSuggestersRequest
        operation.output = BuildSuggestersResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:create_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = CreateDomainRequest
        operation.output = CreateDomainResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceAlreadyExistsException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:define_analysis_scheme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineAnalysisScheme"
        operation.name = "DefineAnalysisScheme"
        operation.input = DefineAnalysisSchemeRequest
        operation.output = DefineAnalysisSchemeResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:define_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineExpression"
        operation.name = "DefineExpression"
        operation.input = DefineExpressionRequest
        operation.output = DefineExpressionResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:define_index_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineIndexField"
        operation.name = "DefineIndexField"
        operation.input = DefineIndexFieldRequest
        operation.output = DefineIndexFieldResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:define_suggester, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineSuggester"
        operation.name = "DefineSuggester"
        operation.input = DefineSuggesterRequest
        operation.output = DefineSuggesterResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_analysis_scheme, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteAnalysisScheme"
        operation.name = "DeleteAnalysisScheme"
        operation.input = DeleteAnalysisSchemeRequest
        operation.output = DeleteAnalysisSchemeResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_domain, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = DeleteDomainRequest
        operation.output = DeleteDomainResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:delete_expression, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteExpression"
        operation.name = "DeleteExpression"
        operation.input = DeleteExpressionRequest
        operation.output = DeleteExpressionResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_index_field, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteIndexField"
        operation.name = "DeleteIndexField"
        operation.input = DeleteIndexFieldRequest
        operation.output = DeleteIndexFieldResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:delete_suggester, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteSuggester"
        operation.name = "DeleteSuggester"
        operation.input = DeleteSuggesterRequest
        operation.output = DeleteSuggesterResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:describe_analysis_schemes, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeAnalysisSchemes"
        operation.name = "DescribeAnalysisSchemes"
        operation.input = DescribeAnalysisSchemesRequest
        operation.output = DescribeAnalysisSchemesResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_availability_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeAvailabilityOptions"
        operation.name = "DescribeAvailabilityOptions"
        operation.input = DescribeAvailabilityOptionsRequest
        operation.output = DescribeAvailabilityOptionsResponse
        operation.errors << BaseException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_domain_endpoint_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeDomainEndpointOptions"
        operation.name = "DescribeDomainEndpointOptions"
        operation.input = DescribeDomainEndpointOptionsRequest
        operation.output = DescribeDomainEndpointOptionsResponse
        operation.errors << BaseException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_domains, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeDomains"
        operation.name = "DescribeDomains"
        operation.input = DescribeDomainsRequest
        operation.output = DescribeDomainsResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.traits = {}
      end)
      service.add_operation(:describe_expressions, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeExpressions"
        operation.name = "DescribeExpressions"
        operation.input = DescribeExpressionsRequest
        operation.output = DescribeExpressionsResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_index_fields, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeIndexFields"
        operation.name = "DescribeIndexFields"
        operation.input = DescribeIndexFieldsRequest
        operation.output = DescribeIndexFieldsResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_scaling_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeScalingParameters"
        operation.name = "DescribeScalingParameters"
        operation.input = DescribeScalingParametersRequest
        operation.output = DescribeScalingParametersResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_service_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeServiceAccessPolicies"
        operation.name = "DescribeServiceAccessPolicies"
        operation.input = DescribeServiceAccessPoliciesRequest
        operation.output = DescribeServiceAccessPoliciesResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:describe_suggesters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeSuggesters"
        operation.name = "DescribeSuggesters"
        operation.input = DescribeSuggestersRequest
        operation.output = DescribeSuggestersResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.traits = {}
      end)
      service.add_operation(:index_documents, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#IndexDocuments"
        operation.name = "IndexDocuments"
        operation.input = IndexDocumentsRequest
        operation.output = IndexDocumentsResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:list_domain_names, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = ::Smithy::Schema::Shapes::Prelude::Unit
        operation.output = ListDomainNamesResponse
        operation.errors << BaseException
        operation.traits = {}
      end)
      service.add_operation(:update_availability_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateAvailabilityOptions"
        operation.name = "UpdateAvailabilityOptions"
        operation.input = UpdateAvailabilityOptionsRequest
        operation.output = UpdateAvailabilityOptionsResponse
        operation.errors << BaseException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_domain_endpoint_options, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateDomainEndpointOptions"
        operation.name = "UpdateDomainEndpointOptions"
        operation.input = UpdateDomainEndpointOptionsRequest
        operation.output = UpdateDomainEndpointOptionsResponse
        operation.errors << BaseException
        operation.errors << DisabledOperationException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_scaling_parameters, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateScalingParameters"
        operation.name = "UpdateScalingParameters"
        operation.input = UpdateScalingParametersRequest
        operation.output = UpdateScalingParametersResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {}
      end)
      service.add_operation(:update_service_access_policies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateServiceAccessPolicies"
        operation.name = "UpdateServiceAccessPolicies"
        operation.input = UpdateServiceAccessPoliciesRequest
        operation.output = UpdateServiceAccessPoliciesResponse
        operation.errors << BaseException
        operation.errors << InternalException
        operation.errors << InvalidTypeException
        operation.errors << LimitExceededException
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
