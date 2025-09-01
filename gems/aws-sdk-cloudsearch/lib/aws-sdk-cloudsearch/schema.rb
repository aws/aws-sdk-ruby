# frozen_string_literal: true

# This is generated code!

module Aws::CloudSearch
  # This module contains a schema composed of shapes used by the client.
  module Schema

    APIVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#APIVersion', name: 'APIVersion')
    ARN = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#ARN', name: 'ARN')
    AccessPoliciesStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#AccessPoliciesStatus', name: 'AccessPoliciesStatus')
    AlgorithmicStemming = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#AlgorithmicStemming', name: 'AlgorithmicStemming')
    AnalysisOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#AnalysisOptions', name: 'AnalysisOptions')
    AnalysisScheme = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#AnalysisScheme', name: 'AnalysisScheme')
    AnalysisSchemeLanguage = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#AnalysisSchemeLanguage', name: 'AnalysisSchemeLanguage')
    AnalysisSchemeStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#AnalysisSchemeStatus', name: 'AnalysisSchemeStatus')
    AnalysisSchemeStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#AnalysisSchemeStatusList', name: 'AnalysisSchemeStatusList')
    AvailabilityOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#AvailabilityOptionsStatus', name: 'AvailabilityOptionsStatus')
    BaseException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#BaseException', name: 'BaseException', traits: {"smithy.api#error" => "client"})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudsearch#Boolean', name: 'Boolean')
    BuildSuggestersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#BuildSuggestersRequest', name: 'BuildSuggestersRequest')
    BuildSuggestersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#BuildSuggestersResponse', name: 'BuildSuggestersResponse')
    CreateDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#CreateDomainRequest', name: 'CreateDomainRequest')
    CreateDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#CreateDomainResponse', name: 'CreateDomainResponse')
    DateArrayOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DateArrayOptions', name: 'DateArrayOptions')
    DateOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DateOptions', name: 'DateOptions')
    DefineAnalysisSchemeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineAnalysisSchemeRequest', name: 'DefineAnalysisSchemeRequest')
    DefineAnalysisSchemeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineAnalysisSchemeResponse', name: 'DefineAnalysisSchemeResponse')
    DefineExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineExpressionRequest', name: 'DefineExpressionRequest')
    DefineExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineExpressionResponse', name: 'DefineExpressionResponse')
    DefineIndexFieldRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineIndexFieldRequest', name: 'DefineIndexFieldRequest')
    DefineIndexFieldResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineIndexFieldResponse', name: 'DefineIndexFieldResponse')
    DefineSuggesterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineSuggesterRequest', name: 'DefineSuggesterRequest')
    DefineSuggesterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DefineSuggesterResponse', name: 'DefineSuggesterResponse')
    DeleteAnalysisSchemeRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteAnalysisSchemeRequest', name: 'DeleteAnalysisSchemeRequest')
    DeleteAnalysisSchemeResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteAnalysisSchemeResponse', name: 'DeleteAnalysisSchemeResponse')
    DeleteDomainRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteDomainRequest', name: 'DeleteDomainRequest')
    DeleteDomainResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteDomainResponse', name: 'DeleteDomainResponse')
    DeleteExpressionRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteExpressionRequest', name: 'DeleteExpressionRequest')
    DeleteExpressionResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteExpressionResponse', name: 'DeleteExpressionResponse')
    DeleteIndexFieldRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteIndexFieldRequest', name: 'DeleteIndexFieldRequest')
    DeleteIndexFieldResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteIndexFieldResponse', name: 'DeleteIndexFieldResponse')
    DeleteSuggesterRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteSuggesterRequest', name: 'DeleteSuggesterRequest')
    DeleteSuggesterResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DeleteSuggesterResponse', name: 'DeleteSuggesterResponse')
    DescribeAnalysisSchemesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeAnalysisSchemesRequest', name: 'DescribeAnalysisSchemesRequest')
    DescribeAnalysisSchemesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeAnalysisSchemesResponse', name: 'DescribeAnalysisSchemesResponse')
    DescribeAvailabilityOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeAvailabilityOptionsRequest', name: 'DescribeAvailabilityOptionsRequest')
    DescribeAvailabilityOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeAvailabilityOptionsResponse', name: 'DescribeAvailabilityOptionsResponse')
    DescribeDomainEndpointOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeDomainEndpointOptionsRequest', name: 'DescribeDomainEndpointOptionsRequest')
    DescribeDomainEndpointOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeDomainEndpointOptionsResponse', name: 'DescribeDomainEndpointOptionsResponse')
    DescribeDomainsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeDomainsRequest', name: 'DescribeDomainsRequest')
    DescribeDomainsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeDomainsResponse', name: 'DescribeDomainsResponse')
    DescribeExpressionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeExpressionsRequest', name: 'DescribeExpressionsRequest')
    DescribeExpressionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeExpressionsResponse', name: 'DescribeExpressionsResponse')
    DescribeIndexFieldsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeIndexFieldsRequest', name: 'DescribeIndexFieldsRequest')
    DescribeIndexFieldsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeIndexFieldsResponse', name: 'DescribeIndexFieldsResponse')
    DescribeScalingParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeScalingParametersRequest', name: 'DescribeScalingParametersRequest')
    DescribeScalingParametersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeScalingParametersResponse', name: 'DescribeScalingParametersResponse')
    DescribeServiceAccessPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeServiceAccessPoliciesRequest', name: 'DescribeServiceAccessPoliciesRequest')
    DescribeServiceAccessPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeServiceAccessPoliciesResponse', name: 'DescribeServiceAccessPoliciesResponse')
    DescribeSuggestersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeSuggestersRequest', name: 'DescribeSuggestersRequest')
    DescribeSuggestersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DescribeSuggestersResponse', name: 'DescribeSuggestersResponse')
    DisabledOperationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DisabledOperationException', name: 'DisabledOperationException', traits: {"aws.protocols#awsQueryError" => {"code" => "DisabledAction", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DocumentSuggesterOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DocumentSuggesterOptions', name: 'DocumentSuggesterOptions')
    DomainEndpointOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DomainEndpointOptions', name: 'DomainEndpointOptions')
    DomainEndpointOptionsStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DomainEndpointOptionsStatus', name: 'DomainEndpointOptionsStatus')
    DomainId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#DomainId', name: 'DomainId', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}})
    DomainName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#DomainName', name: 'DomainName', traits: {"smithy.api#length" => {"min" => 3, "max" => 28}, "smithy.api#pattern" => "^[a-z][a-z0-9\\-]+$"})
    DomainNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#DomainNameList', name: 'DomainNameList')
    DomainNameMap = Smithy::Schema::Shapes::MapShape.new(id: 'com.amazonaws.cloudsearch#DomainNameMap', name: 'DomainNameMap')
    DomainStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DomainStatus', name: 'DomainStatus')
    DomainStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#DomainStatusList', name: 'DomainStatusList')
    Double = Smithy::Schema::Shapes::FloatShape.new(id: 'com.amazonaws.cloudsearch#Double', name: 'Double')
    DoubleArrayOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DoubleArrayOptions', name: 'DoubleArrayOptions')
    DoubleOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#DoubleOptions', name: 'DoubleOptions')
    DynamicFieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#DynamicFieldName', name: 'DynamicFieldName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^([a-z][a-z0-9_]*\\*?|\\*[a-z0-9_]*)$"})
    DynamicFieldNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#DynamicFieldNameList', name: 'DynamicFieldNameList')
    ErrorCode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#ErrorCode', name: 'ErrorCode')
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#ErrorMessage', name: 'ErrorMessage')
    Expression = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#Expression', name: 'Expression')
    ExpressionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ExpressionStatus', name: 'ExpressionStatus')
    ExpressionStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#ExpressionStatusList', name: 'ExpressionStatusList')
    ExpressionValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#ExpressionValue', name: 'ExpressionValue', traits: {"smithy.api#length" => {"min" => 1, "max" => 10240}})
    FieldName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#FieldName', name: 'FieldName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    FieldNameCommaList = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#FieldNameCommaList', name: 'FieldNameCommaList', traits: {"smithy.api#pattern" => "^\\s*[a-z*][a-z0-9_]*\\*?\\s*(,\\s*[a-z*][a-z0-9_]*\\*?\\s*)*$"})
    FieldNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#FieldNameList', name: 'FieldNameList')
    FieldValue = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#FieldValue', name: 'FieldValue', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    IndexDocumentsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IndexDocumentsRequest', name: 'IndexDocumentsRequest')
    IndexDocumentsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IndexDocumentsResponse', name: 'IndexDocumentsResponse')
    IndexField = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IndexField', name: 'IndexField')
    IndexFieldStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IndexFieldStatus', name: 'IndexFieldStatus')
    IndexFieldStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#IndexFieldStatusList', name: 'IndexFieldStatusList')
    IndexFieldType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#IndexFieldType', name: 'IndexFieldType')
    InstanceCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#InstanceCount', name: 'InstanceCount', traits: {"smithy.api#range" => {"min" => 1}})
    IntArrayOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IntArrayOptions', name: 'IntArrayOptions')
    IntOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#IntOptions', name: 'IntOptions')
    InternalException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#InternalException', name: 'InternalException', traits: {"aws.protocols#awsQueryError" => {"code" => "InternalException", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidTypeException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#InvalidTypeException', name: 'InvalidTypeException', traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidType", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    LatLonOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#LatLonOptions', name: 'LatLonOptions')
    LimitExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#LimitExceededException', name: 'LimitExceededException', traits: {"aws.protocols#awsQueryError" => {"code" => "LimitExceeded", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    Limits = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#Limits', name: 'Limits')
    ListDomainNamesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ListDomainNamesResponse', name: 'ListDomainNamesResponse')
    LiteralArrayOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#LiteralArrayOptions', name: 'LiteralArrayOptions')
    LiteralOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#LiteralOptions', name: 'LiteralOptions')
    Long = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#Long', name: 'Long')
    MaximumPartitionCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#MaximumPartitionCount', name: 'MaximumPartitionCount', traits: {"smithy.api#range" => {"min" => 1}})
    MaximumReplicationCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#MaximumReplicationCount', name: 'MaximumReplicationCount', traits: {"smithy.api#range" => {"min" => 1}})
    MultiAZ = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.cloudsearch#MultiAZ', name: 'MultiAZ', traits: {"smithy.api#default" => false})
    OptionState = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#OptionState', name: 'OptionState')
    OptionStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#OptionStatus', name: 'OptionStatus')
    PartitionCount = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#PartitionCount', name: 'PartitionCount', traits: {"smithy.api#range" => {"min" => 1}})
    PartitionInstanceType = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#PartitionInstanceType', name: 'PartitionInstanceType')
    PolicyDocument = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#PolicyDocument', name: 'PolicyDocument')
    ResourceAlreadyExistsException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ResourceAlreadyExistsException', name: 'ResourceAlreadyExistsException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceAlreadyExists", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"aws.protocols#awsQueryError" => {"code" => "ResourceNotFound", "httpResponseCode" => 409}, "smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ScalingParameters = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ScalingParameters', name: 'ScalingParameters')
    ScalingParametersStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ScalingParametersStatus', name: 'ScalingParametersStatus')
    SearchInstanceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#SearchInstanceType', name: 'SearchInstanceType')
    ServiceEndpoint = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ServiceEndpoint', name: 'ServiceEndpoint')
    ServiceUrl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#ServiceUrl', name: 'ServiceUrl')
    StandardName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#StandardName', name: 'StandardName', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => "^[a-z][a-z0-9_]*$"})
    StandardNameList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#StandardNameList', name: 'StandardNameList')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#String', name: 'String')
    Suggester = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#Suggester', name: 'Suggester')
    SuggesterFuzzyMatching = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#SuggesterFuzzyMatching', name: 'SuggesterFuzzyMatching')
    SuggesterStatus = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#SuggesterStatus', name: 'SuggesterStatus')
    SuggesterStatusList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.cloudsearch#SuggesterStatusList', name: 'SuggesterStatusList')
    TLSSecurityPolicy = Smithy::Schema::Shapes::EnumShape.new(id: 'com.amazonaws.cloudsearch#TLSSecurityPolicy', name: 'TLSSecurityPolicy')
    TextArrayOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#TextArrayOptions', name: 'TextArrayOptions')
    TextOptions = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#TextOptions', name: 'TextOptions')
    UIntValue = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.cloudsearch#UIntValue', name: 'UIntValue', traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0}})
    UpdateAvailabilityOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateAvailabilityOptionsRequest', name: 'UpdateAvailabilityOptionsRequest')
    UpdateAvailabilityOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateAvailabilityOptionsResponse', name: 'UpdateAvailabilityOptionsResponse')
    UpdateDomainEndpointOptionsRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateDomainEndpointOptionsRequest', name: 'UpdateDomainEndpointOptionsRequest')
    UpdateDomainEndpointOptionsResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateDomainEndpointOptionsResponse', name: 'UpdateDomainEndpointOptionsResponse')
    UpdateScalingParametersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateScalingParametersRequest', name: 'UpdateScalingParametersRequest')
    UpdateScalingParametersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateScalingParametersResponse', name: 'UpdateScalingParametersResponse')
    UpdateServiceAccessPoliciesRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateServiceAccessPoliciesRequest', name: 'UpdateServiceAccessPoliciesRequest')
    UpdateServiceAccessPoliciesResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#UpdateServiceAccessPoliciesResponse', name: 'UpdateServiceAccessPoliciesResponse')
    UpdateTimestamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.cloudsearch#UpdateTimestamp', name: 'UpdateTimestamp')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.cloudsearch#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    Word = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.cloudsearch#Word', name: 'Word', traits: {"smithy.api#pattern" => "^[\\S]+$"})

    AccessPoliciesStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AccessPoliciesStatus.type = Types::AccessPoliciesStatus
    AlgorithmicStemming.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    AlgorithmicStemming.add_member(:minimal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'minimal', traits: {"smithy.api#enumValue" => "minimal"}))
    AlgorithmicStemming.add_member(:light, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'light', traits: {"smithy.api#enumValue" => "light"}))
    AlgorithmicStemming.add_member(:full, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'full', traits: {"smithy.api#enumValue" => "full"}))
    AnalysisOptions.add_member(:synonyms, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Synonyms', traits: {"smithy.api#documentation" => "<p>A JSON object that defines synonym groups and aliases. A synonym group is an array of arrays, where each sub-array is a group of terms where each term in the group is considered a synonym of every other term in the group. The aliases value is an object that contains a collection of string:value pairs where the string specifies a term and the array of values specifies each of the aliases for that term. An alias is considered a synonym of the specified term, but the term is not considered a synonym of the alias. For more information about specifying synonyms, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html#synonyms\">Synonyms</a> in the <i>Amazon CloudSearch Developer Guide</i>.</p>"}))
    AnalysisOptions.add_member(:stopwords, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'Stopwords', traits: {"smithy.api#documentation" => "<p>A  JSON array of terms to ignore during indexing and searching. For example, <code>[\"a\", \"an\", \"the\", \"of\"]</code>. The stopwords dictionary must explicitly list each word you want to ignore. Wildcards and regular expressions are not supported. </p>"}))
    AnalysisOptions.add_member(:stemming_dictionary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'StemmingDictionary', traits: {"smithy.api#documentation" => "<p>A JSON object that contains a collection of string:value pairs that each map a term to its stem. For example, <code>{\"term1\": \"stem1\", \"term2\": \"stem2\", \"term3\": \"stem3\"}</code>. The stemming dictionary is applied in addition to any algorithmic stemming. This enables you to override the results of the algorithmic stemming to correct specific cases of overstemming or understemming. The maximum size of a stemming dictionary is 500 KB.</p>"}))
    AnalysisOptions.add_member(:japanese_tokenization_dictionary, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'JapaneseTokenizationDictionary', traits: {"smithy.api#documentation" => "<p>A JSON array that contains a collection of terms, tokens, readings and part of speech for Japanese Tokenizaiton. The Japanese tokenization dictionary enables you to override the default tokenization for selected terms. This is only valid for Japanese language fields.</p>"}))
    AnalysisOptions.add_member(:algorithmic_stemming, Smithy::Schema::Shapes::ShapeRef.new(shape: AlgorithmicStemming, location_name: 'AlgorithmicStemming', traits: {"smithy.api#documentation" => "<p>The level of algorithmic stemming to perform: <code>none</code>, <code>minimal</code>, <code>light</code>, or <code>full</code>. The available levels vary depending on the language. For more information, see <a href=\"http://docs.aws.amazon.com/cloudsearch/latest/developerguide/text-processing.html#text-processing-settings\" target=\"_blank\">Language Specific Text Processing Settings</a> in the <i>Amazon CloudSearch Developer Guide</i> </p>"}))
    AnalysisOptions.type = Types::AnalysisOptions
    AnalysisScheme.add_member(:analysis_scheme_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'AnalysisSchemeName', traits: {"smithy.api#required" => {}}))
    AnalysisScheme.add_member(:analysis_scheme_language, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchemeLanguage, location_name: 'AnalysisSchemeLanguage', traits: {"smithy.api#required" => {}}))
    AnalysisScheme.add_member(:analysis_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisOptions, location_name: 'AnalysisOptions'))
    AnalysisScheme.type = Types::AnalysisScheme
    AnalysisSchemeLanguage.add_member(:ar, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ar', traits: {"smithy.api#enumValue" => "ar"}))
    AnalysisSchemeLanguage.add_member(:bg, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'bg', traits: {"smithy.api#enumValue" => "bg"}))
    AnalysisSchemeLanguage.add_member(:ca, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ca', traits: {"smithy.api#enumValue" => "ca"}))
    AnalysisSchemeLanguage.add_member(:cs, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'cs', traits: {"smithy.api#enumValue" => "cs"}))
    AnalysisSchemeLanguage.add_member(:da, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'da', traits: {"smithy.api#enumValue" => "da"}))
    AnalysisSchemeLanguage.add_member(:de, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'de', traits: {"smithy.api#enumValue" => "de"}))
    AnalysisSchemeLanguage.add_member(:el, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'el', traits: {"smithy.api#enumValue" => "el"}))
    AnalysisSchemeLanguage.add_member(:en, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'en', traits: {"smithy.api#enumValue" => "en"}))
    AnalysisSchemeLanguage.add_member(:es, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'es', traits: {"smithy.api#enumValue" => "es"}))
    AnalysisSchemeLanguage.add_member(:eu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'eu', traits: {"smithy.api#enumValue" => "eu"}))
    AnalysisSchemeLanguage.add_member(:fa, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fa', traits: {"smithy.api#enumValue" => "fa"}))
    AnalysisSchemeLanguage.add_member(:fi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fi', traits: {"smithy.api#enumValue" => "fi"}))
    AnalysisSchemeLanguage.add_member(:fr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'fr', traits: {"smithy.api#enumValue" => "fr"}))
    AnalysisSchemeLanguage.add_member(:ga, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ga', traits: {"smithy.api#enumValue" => "ga"}))
    AnalysisSchemeLanguage.add_member(:gl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'gl', traits: {"smithy.api#enumValue" => "gl"}))
    AnalysisSchemeLanguage.add_member(:he, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'he', traits: {"smithy.api#enumValue" => "he"}))
    AnalysisSchemeLanguage.add_member(:hi, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hi', traits: {"smithy.api#enumValue" => "hi"}))
    AnalysisSchemeLanguage.add_member(:hu, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hu', traits: {"smithy.api#enumValue" => "hu"}))
    AnalysisSchemeLanguage.add_member(:hy, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'hy', traits: {"smithy.api#enumValue" => "hy"}))
    AnalysisSchemeLanguage.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'id', traits: {"smithy.api#enumValue" => "id"}))
    AnalysisSchemeLanguage.add_member(:it, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'it', traits: {"smithy.api#enumValue" => "it"}))
    AnalysisSchemeLanguage.add_member(:ja, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ja', traits: {"smithy.api#enumValue" => "ja"}))
    AnalysisSchemeLanguage.add_member(:ko, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ko', traits: {"smithy.api#enumValue" => "ko"}))
    AnalysisSchemeLanguage.add_member(:lv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'lv', traits: {"smithy.api#enumValue" => "lv"}))
    AnalysisSchemeLanguage.add_member(:mul, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'mul', traits: {"smithy.api#enumValue" => "mul"}))
    AnalysisSchemeLanguage.add_member(:nl, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'nl', traits: {"smithy.api#enumValue" => "nl"}))
    AnalysisSchemeLanguage.add_member(:no, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'no', traits: {"smithy.api#enumValue" => "no"}))
    AnalysisSchemeLanguage.add_member(:pt, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'pt', traits: {"smithy.api#enumValue" => "pt"}))
    AnalysisSchemeLanguage.add_member(:ro, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ro', traits: {"smithy.api#enumValue" => "ro"}))
    AnalysisSchemeLanguage.add_member(:ru, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'ru', traits: {"smithy.api#enumValue" => "ru"}))
    AnalysisSchemeLanguage.add_member(:sv, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'sv', traits: {"smithy.api#enumValue" => "sv"}))
    AnalysisSchemeLanguage.add_member(:th, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'th', traits: {"smithy.api#enumValue" => "th"}))
    AnalysisSchemeLanguage.add_member(:tr, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'tr', traits: {"smithy.api#enumValue" => "tr"}))
    AnalysisSchemeLanguage.add_member(:zh_hans, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'zh_Hans', traits: {"smithy.api#enumValue" => "zh-Hans"}))
    AnalysisSchemeLanguage.add_member(:zh_hant, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'zh_Hant', traits: {"smithy.api#enumValue" => "zh-Hant"}))
    AnalysisSchemeStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisScheme, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    AnalysisSchemeStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AnalysisSchemeStatus.type = Types::AnalysisSchemeStatus
    AnalysisSchemeStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchemeStatus)
    AvailabilityOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: MultiAZ, location_name: 'Options', traits: {"smithy.api#default" => false, "smithy.api#documentation" => "<p>The availability options configured for the domain.</p>", "smithy.api#required" => {}}))
    AvailabilityOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    AvailabilityOptionsStatus.type = Types::AvailabilityOptionsStatus
    BaseException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    BaseException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    BaseException.type = Types::BaseException
    BuildSuggestersRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    BuildSuggestersRequest.type = Types::BuildSuggestersRequest
    BuildSuggestersResponse.add_member(:field_names, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameList, location_name: 'FieldNames'))
    BuildSuggestersResponse.type = Types::BuildSuggestersResponse
    CreateDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>A name for the domain you are creating. Allowed characters are a-z (lower-case letters), 0-9, and hyphen (-). Domain names must start with a letter or number and be at least 3 and no more than 28 characters long.</p>", "smithy.api#required" => {}}))
    CreateDomainRequest.type = Types::CreateDomainRequest
    CreateDomainResponse.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    CreateDomainResponse.type = Types::CreateDomainResponse
    DateArrayOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    DateArrayOptions.add_member(:source_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: 'SourceFields', traits: {"smithy.api#documentation" => "<p>A list of source fields to map to the field. </p>"}))
    DateArrayOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    DateArrayOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    DateArrayOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    DateArrayOptions.type = Types::DateArrayOptions
    DateOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    DateOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField'))
    DateOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    DateOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    DateOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    DateOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    DateOptions.type = Types::DateOptions
    DefineAnalysisSchemeRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeRequest.add_member(:analysis_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisScheme, location_name: 'AnalysisScheme', traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeRequest.type = Types::DefineAnalysisSchemeRequest
    DefineAnalysisSchemeResponse.add_member(:analysis_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchemeStatus, location_name: 'AnalysisScheme', traits: {"smithy.api#required" => {}}))
    DefineAnalysisSchemeResponse.type = Types::DefineAnalysisSchemeResponse
    DefineExpressionRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DefineExpressionRequest.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Expression', traits: {"smithy.api#required" => {}}))
    DefineExpressionRequest.type = Types::DefineExpressionRequest
    DefineExpressionResponse.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionStatus, location_name: 'Expression', traits: {"smithy.api#required" => {}}))
    DefineExpressionResponse.type = Types::DefineExpressionResponse
    DefineIndexFieldRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DefineIndexFieldRequest.add_member(:index_field, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexField, location_name: 'IndexField', traits: {"smithy.api#documentation" => "<p>The index field and field options you want to configure. </p>", "smithy.api#required" => {}}))
    DefineIndexFieldRequest.type = Types::DefineIndexFieldRequest
    DefineIndexFieldResponse.add_member(:index_field, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFieldStatus, location_name: 'IndexField', traits: {"smithy.api#required" => {}}))
    DefineIndexFieldResponse.type = Types::DefineIndexFieldResponse
    DefineSuggesterRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DefineSuggesterRequest.add_member(:suggester, Smithy::Schema::Shapes::ShapeRef.new(shape: Suggester, location_name: 'Suggester', traits: {"smithy.api#required" => {}}))
    DefineSuggesterRequest.type = Types::DefineSuggesterRequest
    DefineSuggesterResponse.add_member(:suggester, Smithy::Schema::Shapes::ShapeRef.new(shape: SuggesterStatus, location_name: 'Suggester', traits: {"smithy.api#required" => {}}))
    DefineSuggesterResponse.type = Types::DefineSuggesterResponse
    DeleteAnalysisSchemeRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeleteAnalysisSchemeRequest.add_member(:analysis_scheme_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'AnalysisSchemeName', traits: {"smithy.api#documentation" => "<p>The name of the analysis scheme you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteAnalysisSchemeRequest.type = Types::DeleteAnalysisSchemeRequest
    DeleteAnalysisSchemeResponse.add_member(:analysis_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchemeStatus, location_name: 'AnalysisScheme', traits: {"smithy.api#documentation" => "<p>The status of the analysis scheme being deleted.</p>", "smithy.api#required" => {}}))
    DeleteAnalysisSchemeResponse.type = Types::DeleteAnalysisSchemeResponse
    DeleteDomainRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to permanently delete.</p>", "smithy.api#required" => {}}))
    DeleteDomainRequest.type = Types::DeleteDomainRequest
    DeleteDomainResponse.add_member(:domain_status, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus, location_name: 'DomainStatus'))
    DeleteDomainResponse.type = Types::DeleteDomainResponse
    DeleteExpressionRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeleteExpressionRequest.add_member(:expression_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'ExpressionName', traits: {"smithy.api#documentation" => "<p>The name of the <code><a>Expression</a></code> to delete.</p>", "smithy.api#required" => {}}))
    DeleteExpressionRequest.type = Types::DeleteExpressionRequest
    DeleteExpressionResponse.add_member(:expression, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionStatus, location_name: 'Expression', traits: {"smithy.api#documentation" => "<p>The status of the expression being deleted.</p>", "smithy.api#required" => {}}))
    DeleteExpressionResponse.type = Types::DeleteExpressionResponse
    DeleteIndexFieldRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeleteIndexFieldRequest.add_member(:index_field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicFieldName, location_name: 'IndexFieldName', traits: {"smithy.api#documentation" => "<p>The name of the index field your want to remove from the domain's indexing options.</p>", "smithy.api#required" => {}}))
    DeleteIndexFieldRequest.type = Types::DeleteIndexFieldRequest
    DeleteIndexFieldResponse.add_member(:index_field, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFieldStatus, location_name: 'IndexField', traits: {"smithy.api#documentation" => "<p>The status of the index field being deleted.</p>", "smithy.api#required" => {}}))
    DeleteIndexFieldResponse.type = Types::DeleteIndexFieldResponse
    DeleteSuggesterRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DeleteSuggesterRequest.add_member(:suggester_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'SuggesterName', traits: {"smithy.api#documentation" => "<p>Specifies the name of the suggester you want to delete.</p>", "smithy.api#required" => {}}))
    DeleteSuggesterRequest.type = Types::DeleteSuggesterRequest
    DeleteSuggesterResponse.add_member(:suggester, Smithy::Schema::Shapes::ShapeRef.new(shape: SuggesterStatus, location_name: 'Suggester', traits: {"smithy.api#documentation" => "<p>The status of the suggester being deleted.</p>", "smithy.api#required" => {}}))
    DeleteSuggesterResponse.type = Types::DeleteSuggesterResponse
    DescribeAnalysisSchemesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeAnalysisSchemesRequest.add_member(:analysis_scheme_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardNameList, location_name: 'AnalysisSchemeNames', traits: {"smithy.api#documentation" => "<p>The analysis schemes you want to describe.</p>"}))
    DescribeAnalysisSchemesRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeAnalysisSchemesRequest.type = Types::DescribeAnalysisSchemesRequest
    DescribeAnalysisSchemesResponse.add_member(:analysis_schemes, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisSchemeStatusList, location_name: 'AnalysisSchemes', traits: {"smithy.api#documentation" => "<p>The analysis scheme descriptions.</p>", "smithy.api#required" => {}}))
    DescribeAnalysisSchemesResponse.type = Types::DescribeAnalysisSchemesResponse
    DescribeAvailabilityOptionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeAvailabilityOptionsRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeAvailabilityOptionsRequest.type = Types::DescribeAvailabilityOptionsRequest
    DescribeAvailabilityOptionsResponse.add_member(:availability_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityOptionsStatus, location_name: 'AvailabilityOptions', traits: {"smithy.api#documentation" => "<p>The availability options configured for the domain. Indicates whether Multi-AZ is enabled for the domain. </p>"}))
    DescribeAvailabilityOptionsResponse.type = Types::DescribeAvailabilityOptionsResponse
    DescribeDomainEndpointOptionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>A string that represents the name of a domain.</p>", "smithy.api#required" => {}}))
    DescribeDomainEndpointOptionsRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to retrieve the latest configuration (which might be in a Processing state) or the current, active configuration. Defaults to <code>false</code>.</p>"}))
    DescribeDomainEndpointOptionsRequest.type = Types::DescribeDomainEndpointOptionsRequest
    DescribeDomainEndpointOptionsResponse.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>The status and configuration of a search domain's endpoint options.</p>"}))
    DescribeDomainEndpointOptionsResponse.type = Types::DescribeDomainEndpointOptionsResponse
    DescribeDomainsRequest.add_member(:domain_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameList, location_name: 'DomainNames', traits: {"smithy.api#documentation" => "<p>The names of the domains you want to include in the response.</p>"}))
    DescribeDomainsRequest.type = Types::DescribeDomainsRequest
    DescribeDomainsResponse.add_member(:domain_status_list, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatusList, location_name: 'DomainStatusList', traits: {"smithy.api#required" => {}}))
    DescribeDomainsResponse.type = Types::DescribeDomainsResponse
    DescribeExpressionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeExpressionsRequest.add_member(:expression_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardNameList, location_name: 'ExpressionNames', traits: {"smithy.api#documentation" => "<p>Limits the <code><a>DescribeExpressions</a></code> response to the specified expressions. If not specified, all expressions are shown.</p>"}))
    DescribeExpressionsRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeExpressionsRequest.type = Types::DescribeExpressionsRequest
    DescribeExpressionsResponse.add_member(:expressions, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionStatusList, location_name: 'Expressions', traits: {"smithy.api#documentation" => "<p>The expressions configured for the domain.</p>", "smithy.api#required" => {}}))
    DescribeExpressionsResponse.type = Types::DescribeExpressionsResponse
    DescribeIndexFieldsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeIndexFieldsRequest.add_member(:field_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicFieldNameList, location_name: 'FieldNames', traits: {"smithy.api#documentation" => "<p>A list of the index fields you want to describe. If not specified, information is returned for all configured index fields.</p>"}))
    DescribeIndexFieldsRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeIndexFieldsRequest.type = Types::DescribeIndexFieldsRequest
    DescribeIndexFieldsResponse.add_member(:index_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFieldStatusList, location_name: 'IndexFields', traits: {"smithy.api#documentation" => "<p>The index fields configured for the domain.</p>", "smithy.api#required" => {}}))
    DescribeIndexFieldsResponse.type = Types::DescribeIndexFieldsResponse
    DescribeScalingParametersRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DescribeScalingParametersRequest.type = Types::DescribeScalingParametersRequest
    DescribeScalingParametersResponse.add_member(:scaling_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingParametersStatus, location_name: 'ScalingParameters', traits: {"smithy.api#required" => {}}))
    DescribeScalingParametersResponse.type = Types::DescribeScalingParametersResponse
    DescribeServiceAccessPoliciesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeServiceAccessPoliciesRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeServiceAccessPoliciesRequest.type = Types::DescribeServiceAccessPoliciesRequest
    DescribeServiceAccessPoliciesResponse.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>The access rules configured for the domain specified in the request.</p>", "smithy.api#required" => {}}))
    DescribeServiceAccessPoliciesResponse.type = Types::DescribeServiceAccessPoliciesResponse
    DescribeSuggestersRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>The name of the domain you want to describe.</p>", "smithy.api#required" => {}}))
    DescribeSuggestersRequest.add_member(:suggester_names, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardNameList, location_name: 'SuggesterNames', traits: {"smithy.api#documentation" => "<p>The suggesters you want to describe.</p>"}))
    DescribeSuggestersRequest.add_member(:deployed, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deployed', traits: {"smithy.api#documentation" => "<p>Whether to display the deployed configuration (<code>true</code>) or include any pending changes (<code>false</code>). Defaults to <code>false</code>.</p>"}))
    DescribeSuggestersRequest.type = Types::DescribeSuggestersRequest
    DescribeSuggestersResponse.add_member(:suggesters, Smithy::Schema::Shapes::ShapeRef.new(shape: SuggesterStatusList, location_name: 'Suggesters', traits: {"smithy.api#documentation" => "<p>The suggesters configured for the domain specified in the request.</p>", "smithy.api#required" => {}}))
    DescribeSuggestersResponse.type = Types::DescribeSuggestersResponse
    DisabledOperationException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    DisabledOperationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    DisabledOperationException.type = Types::DisabledOperationException
    DocumentSuggesterOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField', traits: {"smithy.api#documentation" => "<p>The name of the index field you want to use for suggestions.\n      </p>", "smithy.api#required" => {}}))
    DocumentSuggesterOptions.add_member(:fuzzy_matching, Smithy::Schema::Shapes::ShapeRef.new(shape: SuggesterFuzzyMatching, location_name: 'FuzzyMatching', traits: {"smithy.api#documentation" => "<p>The level of fuzziness allowed when suggesting matches for a string: <code>none</code>, <code>low</code>, or <code>high</code>. With none, the specified string is treated as an exact prefix. With low, suggestions must differ from the specified string by no more than one character. With high, suggestions can differ by up to two characters. The default is none. </p>"}))
    DocumentSuggesterOptions.add_member(:sort_expression, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'SortExpression', traits: {"smithy.api#documentation" => "<p>An expression that computes a score for each suggestion to control how they are sorted. The scores are rounded to the nearest\n        integer, with a floor of 0 and a ceiling of 2^31-1. A document's relevance score is not computed\n        for suggestions, so sort expressions cannot reference the <code>_score</code> value.\n        To sort suggestions using a numeric field or existing expression, simply specify\n        the name of the field or expression. If no expression is configured for the suggester, the\n        suggestions are sorted with the closest matches listed first.</p>"}))
    DocumentSuggesterOptions.type = Types::DocumentSuggesterOptions
    DomainEndpointOptions.add_member(:enforce_https, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'EnforceHTTPS', traits: {"smithy.api#documentation" => "<p>Whether the domain is HTTPS only enabled.</p>"}))
    DomainEndpointOptions.add_member(:tls_security_policy, Smithy::Schema::Shapes::ShapeRef.new(shape: TLSSecurityPolicy, location_name: 'TLSSecurityPolicy', traits: {"smithy.api#documentation" => "<p>The minimum required TLS version</p>"}))
    DomainEndpointOptions.type = Types::DomainEndpointOptions
    DomainEndpointOptionsStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The domain endpoint options configured for the domain.</p>", "smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#documentation" => "<p>The status of the configured domain endpoint options.</p>", "smithy.api#required" => {}}))
    DomainEndpointOptionsStatus.type = Types::DomainEndpointOptionsStatus
    DomainNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainNameMap.key = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName)
    DomainNameMap.value = Smithy::Schema::Shapes::ShapeRef.new(shape: APIVersion)
    DomainStatus.add_member(:domain_id, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainId, location_name: 'DomainId', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    DomainStatus.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: ARN, location_name: 'ARN'))
    DomainStatus.add_member(:created, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Created', traits: {"smithy.api#documentation" => "<p>True if the search domain is created. It can take several minutes to initialize a domain when <a>CreateDomain</a> is called. Newly created search domains are returned from <a>DescribeDomains</a> with a false value for Created until domain creation is complete.</p>"}))
    DomainStatus.add_member(:deleted, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Deleted', traits: {"smithy.api#documentation" => "<p>True if the search domain has been deleted.  The system must clean up resources dedicated to the search domain when <a>DeleteDomain</a> is called.  Newly deleted search domains are returned from <a>DescribeDomains</a> with a true value for IsDeleted for several minutes until resource cleanup is complete.</p>"}))
    DomainStatus.add_member(:doc_service, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpoint, location_name: 'DocService', traits: {"smithy.api#documentation" => "<p>The service endpoint for updating documents in a search domain.</p>"}))
    DomainStatus.add_member(:search_service, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceEndpoint, location_name: 'SearchService', traits: {"smithy.api#documentation" => "<p>The service endpoint for requesting search results from a search domain.</p>"}))
    DomainStatus.add_member(:requires_index_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'RequiresIndexDocuments', traits: {"smithy.api#documentation" => "<p>True if <a>IndexDocuments</a> needs to be called to activate the current domain configuration.</p>", "smithy.api#required" => {}}))
    DomainStatus.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'Processing', traits: {"smithy.api#documentation" => "<p>True if processing is being done to activate the current domain configuration.</p>"}))
    DomainStatus.add_member(:search_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: SearchInstanceType, location_name: 'SearchInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type that is being used to process search requests.</p>"}))
    DomainStatus.add_member(:search_partition_count, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionCount, location_name: 'SearchPartitionCount', traits: {"smithy.api#documentation" => "<p>The number of partitions across which the search index is spread.</p>"}))
    DomainStatus.add_member(:search_instance_count, Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceCount, location_name: 'SearchInstanceCount', traits: {"smithy.api#documentation" => "<p>The number of search instances that are available to process search requests.</p>"}))
    DomainStatus.add_member(:limits, Smithy::Schema::Shapes::ShapeRef.new(shape: Limits, location_name: 'Limits'))
    DomainStatus.type = Types::DomainStatus
    DomainStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DomainStatus)
    DoubleArrayOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    DoubleArrayOptions.add_member(:source_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: 'SourceFields', traits: {"smithy.api#documentation" => "<p>A list of source fields to map to the field. </p>"}))
    DoubleArrayOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    DoubleArrayOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    DoubleArrayOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    DoubleArrayOptions.type = Types::DoubleArrayOptions
    DoubleOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Double, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "<p>A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document.</p>"}))
    DoubleOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField', traits: {"smithy.api#documentation" => "<p>The name of the source field to map to the field. </p>"}))
    DoubleOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    DoubleOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    DoubleOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    DoubleOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    DoubleOptions.type = Types::DoubleOptions
    DynamicFieldNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicFieldName)
    Expression.add_member(:expression_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'ExpressionName', traits: {"smithy.api#required" => {}}))
    Expression.add_member(:expression_value, Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionValue, location_name: 'ExpressionValue', traits: {"smithy.api#required" => {}}))
    Expression.type = Types::Expression
    ExpressionStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Expression, location_name: 'Options', traits: {"smithy.api#documentation" => "<p>The expression that is evaluated for sorting while processing a search request.</p>", "smithy.api#required" => {}}))
    ExpressionStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ExpressionStatus.type = Types::ExpressionStatus
    ExpressionStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ExpressionStatus)
    FieldNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName)
    IndexDocumentsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    IndexDocumentsRequest.type = Types::IndexDocumentsRequest
    IndexDocumentsResponse.add_member(:field_names, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameList, location_name: 'FieldNames', traits: {"smithy.api#documentation" => "<p>The names of the fields that are currently being indexed.</p>"}))
    IndexDocumentsResponse.type = Types::IndexDocumentsResponse
    IndexField.add_member(:index_field_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DynamicFieldName, location_name: 'IndexFieldName', traits: {"smithy.api#documentation" => "<p>A string that represents the name of an index field. CloudSearch supports regular index fields as well as dynamic fields.\n      A dynamic field's name defines a pattern that begins or ends with a wildcard.\n      Any document fields that don't map to a regular index field but do match a\t\n      dynamic field's pattern are configured with the dynamic field's indexing options.\n    </p>\n    <p>Regular field names begin with a letter and can contain the following characters:\n      a-z (lowercase), 0-9, and _ (underscore).\n      Dynamic field names must begin or end with a wildcard (*).\n      The wildcard can also be the only character in a dynamic field name.\n      Multiple wildcards, and wildcards embedded within a string are not supported.\n    </p>\n    <p>The name <code>score</code> is reserved and cannot be used as a field name.\n      To reference a document's ID, you can use the name <code>_id</code>.\n    </p>", "smithy.api#required" => {}}))
    IndexField.add_member(:index_field_type, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFieldType, location_name: 'IndexFieldType', traits: {"smithy.api#required" => {}}))
    IndexField.add_member(:int_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IntOptions, location_name: 'IntOptions'))
    IndexField.add_member(:double_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleOptions, location_name: 'DoubleOptions'))
    IndexField.add_member(:literal_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LiteralOptions, location_name: 'LiteralOptions'))
    IndexField.add_member(:text_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TextOptions, location_name: 'TextOptions'))
    IndexField.add_member(:date_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DateOptions, location_name: 'DateOptions'))
    IndexField.add_member(:lat_lon_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LatLonOptions, location_name: 'LatLonOptions'))
    IndexField.add_member(:int_array_options, Smithy::Schema::Shapes::ShapeRef.new(shape: IntArrayOptions, location_name: 'IntArrayOptions'))
    IndexField.add_member(:double_array_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DoubleArrayOptions, location_name: 'DoubleArrayOptions'))
    IndexField.add_member(:literal_array_options, Smithy::Schema::Shapes::ShapeRef.new(shape: LiteralArrayOptions, location_name: 'LiteralArrayOptions'))
    IndexField.add_member(:text_array_options, Smithy::Schema::Shapes::ShapeRef.new(shape: TextArrayOptions, location_name: 'TextArrayOptions'))
    IndexField.add_member(:date_array_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DateArrayOptions, location_name: 'DateArrayOptions'))
    IndexField.type = Types::IndexField
    IndexFieldStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: IndexField, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    IndexFieldStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    IndexFieldStatus.type = Types::IndexFieldStatus
    IndexFieldStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexFieldStatus)
    IndexFieldType.add_member(:int, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'int', traits: {"smithy.api#enumValue" => "int"}))
    IndexFieldType.add_member(:double, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'double', traits: {"smithy.api#enumValue" => "double"}))
    IndexFieldType.add_member(:literal, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'literal', traits: {"smithy.api#enumValue" => "literal"}))
    IndexFieldType.add_member(:text, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'text', traits: {"smithy.api#enumValue" => "text"}))
    IndexFieldType.add_member(:date, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'date', traits: {"smithy.api#enumValue" => "date"}))
    IndexFieldType.add_member(:latlon, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'latlon', traits: {"smithy.api#enumValue" => "latlon"}))
    IndexFieldType.add_member(:int_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'int_array', traits: {"smithy.api#enumValue" => "int-array"}))
    IndexFieldType.add_member(:double_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'double_array', traits: {"smithy.api#enumValue" => "double-array"}))
    IndexFieldType.add_member(:literal_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'literal_array', traits: {"smithy.api#enumValue" => "literal-array"}))
    IndexFieldType.add_member(:text_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'text_array', traits: {"smithy.api#enumValue" => "text-array"}))
    IndexFieldType.add_member(:date_array, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'date_array', traits: {"smithy.api#enumValue" => "date-array"}))
    IntArrayOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    IntArrayOptions.add_member(:source_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: 'SourceFields', traits: {"smithy.api#documentation" => "<p>A list of source fields to map to the field. </p>"}))
    IntArrayOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    IntArrayOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    IntArrayOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    IntArrayOptions.type = Types::IntArrayOptions
    IntOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: Long, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document. This can be important if you are using the field in an expression and that field is not present in every document."}))
    IntOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField', traits: {"smithy.api#documentation" => "<p>The name of the source field to map to the field. </p>"}))
    IntOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    IntOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    IntOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    IntOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    IntOptions.type = Types::IntOptions
    InternalException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    InternalException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InternalException.type = Types::InternalException
    InvalidTypeException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    InvalidTypeException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    InvalidTypeException.type = Types::InvalidTypeException
    LatLonOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    LatLonOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField'))
    LatLonOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    LatLonOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    LatLonOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    LatLonOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    LatLonOptions.type = Types::LatLonOptions
    LimitExceededException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    LimitExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    LimitExceededException.type = Types::LimitExceededException
    Limits.add_member(:maximum_replication_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumReplicationCount, location_name: 'MaximumReplicationCount', traits: {"smithy.api#required" => {}}))
    Limits.add_member(:maximum_partition_count, Smithy::Schema::Shapes::ShapeRef.new(shape: MaximumPartitionCount, location_name: 'MaximumPartitionCount', traits: {"smithy.api#required" => {}}))
    Limits.type = Types::Limits
    ListDomainNamesResponse.add_member(:domain_names, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainNameMap, location_name: 'DomainNames', traits: {"smithy.api#documentation" => "<p>The names of the search domains owned by an account.</p>"}))
    ListDomainNamesResponse.type = Types::ListDomainNamesResponse
    LiteralArrayOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    LiteralArrayOptions.add_member(:source_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: 'SourceFields', traits: {"smithy.api#documentation" => "<p>A list of source fields to map to the field. </p>"}))
    LiteralArrayOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    LiteralArrayOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    LiteralArrayOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    LiteralArrayOptions.type = Types::LiteralArrayOptions
    LiteralOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    LiteralOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField'))
    LiteralOptions.add_member(:facet_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'FacetEnabled', traits: {"smithy.api#documentation" => "<p>Whether facet information can be returned for the field.</p>"}))
    LiteralOptions.add_member(:search_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SearchEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field are searchable.</p>"}))
    LiteralOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    LiteralOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    LiteralOptions.type = Types::LiteralOptions
    OptionState.add_member(:requires_index_documents, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'RequiresIndexDocuments', traits: {"smithy.api#enumValue" => "RequiresIndexDocuments"}))
    OptionState.add_member(:processing, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Processing', traits: {"smithy.api#enumValue" => "Processing"}))
    OptionState.add_member(:active, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'Active', traits: {"smithy.api#enumValue" => "Active"}))
    OptionState.add_member(:failed_to_validate, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'FailedToValidate', traits: {"smithy.api#enumValue" => "FailedToValidate"}))
    OptionStatus.add_member(:creation_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'CreationDate', traits: {"smithy.api#documentation" => "<p>A timestamp for when this option was created.</p>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:update_date, Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateTimestamp, location_name: 'UpdateDate', traits: {"smithy.api#documentation" => "<p>A timestamp for when this option was last updated.</p>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:update_version, Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'UpdateVersion', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>A unique integer that indicates when this option was last updated.</p>"}))
    OptionStatus.add_member(:state, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionState, location_name: 'State', traits: {"smithy.api#documentation" => "<p>The state of processing a change to an option.  Possible values:</p><ul>\n    <li><code>RequiresIndexDocuments</code>: the option's latest value will not be deployed until  <a>IndexDocuments</a> has been called and indexing is complete.</li>\n    <li><code>Processing</code>: the option's latest value is in the process of being activated.  </li>\n    <li><code>Active</code>: the option's latest value is completely deployed.</li>\n    <li><code>FailedToValidate</code>: the option value is not compatible with the domain's data and cannot be used to index the data. You must either modify the option value or update or remove the incompatible documents.</li>\n  </ul>", "smithy.api#required" => {}}))
    OptionStatus.add_member(:pending_deletion, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'PendingDeletion', traits: {"smithy.api#documentation" => "<p>Indicates that the option will be deleted once processing is complete.</p>"}))
    OptionStatus.type = Types::OptionStatus
    PartitionInstanceType.add_member(:search_m1_small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m1_small', traits: {"smithy.api#enumValue" => "search.m1.small"}))
    PartitionInstanceType.add_member(:search_m1_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m1_large', traits: {"smithy.api#enumValue" => "search.m1.large"}))
    PartitionInstanceType.add_member(:search_m2_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m2_xlarge', traits: {"smithy.api#enumValue" => "search.m2.xlarge"}))
    PartitionInstanceType.add_member(:search_m2_2xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m2_2xlarge', traits: {"smithy.api#enumValue" => "search.m2.2xlarge"}))
    PartitionInstanceType.add_member(:search_m3_medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m3_medium', traits: {"smithy.api#enumValue" => "search.m3.medium"}))
    PartitionInstanceType.add_member(:search_m3_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m3_large', traits: {"smithy.api#enumValue" => "search.m3.large"}))
    PartitionInstanceType.add_member(:search_m3_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m3_xlarge', traits: {"smithy.api#enumValue" => "search.m3.xlarge"}))
    PartitionInstanceType.add_member(:search_m3_2xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_m3_2xlarge', traits: {"smithy.api#enumValue" => "search.m3.2xlarge"}))
    PartitionInstanceType.add_member(:search_small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_small', traits: {"smithy.api#enumValue" => "search.small"}))
    PartitionInstanceType.add_member(:search_medium, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_medium', traits: {"smithy.api#enumValue" => "search.medium"}))
    PartitionInstanceType.add_member(:search_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_large', traits: {"smithy.api#enumValue" => "search.large"}))
    PartitionInstanceType.add_member(:search_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_xlarge', traits: {"smithy.api#enumValue" => "search.xlarge"}))
    PartitionInstanceType.add_member(:search_2xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_2xlarge', traits: {"smithy.api#enumValue" => "search.2xlarge"}))
    PartitionInstanceType.add_member(:search_previousgeneration_small, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_previousgeneration_small', traits: {"smithy.api#enumValue" => "search.previousgeneration.small"}))
    PartitionInstanceType.add_member(:search_previousgeneration_large, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_previousgeneration_large', traits: {"smithy.api#enumValue" => "search.previousgeneration.large"}))
    PartitionInstanceType.add_member(:search_previousgeneration_xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_previousgeneration_xlarge', traits: {"smithy.api#enumValue" => "search.previousgeneration.xlarge"}))
    PartitionInstanceType.add_member(:search_previousgeneration_2xlarge, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'search_previousgeneration_2xlarge', traits: {"smithy.api#enumValue" => "search.previousgeneration.2xlarge"}))
    ResourceAlreadyExistsException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceAlreadyExistsException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceAlreadyExistsException.type = Types::ResourceAlreadyExistsException
    ResourceNotFoundException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ScalingParameters.add_member(:desired_instance_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PartitionInstanceType, location_name: 'DesiredInstanceType', traits: {"smithy.api#documentation" => "<p>The instance type that you want to preconfigure for your domain. For example, <code>search.m1.small</code>.</p>"}))
    ScalingParameters.add_member(:desired_replication_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'DesiredReplicationCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of replicas you want to preconfigure for each index partition.</p>"}))
    ScalingParameters.add_member(:desired_partition_count, Smithy::Schema::Shapes::ShapeRef.new(shape: UIntValue, location_name: 'DesiredPartitionCount', traits: {"smithy.api#default" => 0, "smithy.api#documentation" => "<p>The number of partitions you want to preconfigure for your domain. Only valid when\n    you select <code>m2.2xlarge</code> as the desired instance type.</p>"}))
    ScalingParameters.type = Types::ScalingParameters
    ScalingParametersStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingParameters, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    ScalingParametersStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    ScalingParametersStatus.type = Types::ScalingParametersStatus
    ServiceEndpoint.add_member(:endpoint, Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUrl, location_name: 'Endpoint'))
    ServiceEndpoint.type = Types::ServiceEndpoint
    StandardNameList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName)
    Suggester.add_member(:suggester_name, Smithy::Schema::Shapes::ShapeRef.new(shape: StandardName, location_name: 'SuggesterName', traits: {"smithy.api#required" => {}}))
    Suggester.add_member(:document_suggester_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DocumentSuggesterOptions, location_name: 'DocumentSuggesterOptions', traits: {"smithy.api#required" => {}}))
    Suggester.type = Types::Suggester
    SuggesterFuzzyMatching.add_member(:none, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'none', traits: {"smithy.api#enumValue" => "none"}))
    SuggesterFuzzyMatching.add_member(:low, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'low', traits: {"smithy.api#enumValue" => "low"}))
    SuggesterFuzzyMatching.add_member(:high, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'high', traits: {"smithy.api#enumValue" => "high"}))
    SuggesterStatus.add_member(:options, Smithy::Schema::Shapes::ShapeRef.new(shape: Suggester, location_name: 'Options', traits: {"smithy.api#required" => {}}))
    SuggesterStatus.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: OptionStatus, location_name: 'Status', traits: {"smithy.api#required" => {}}))
    SuggesterStatus.type = Types::SuggesterStatus
    SuggesterStatusList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SuggesterStatus)
    TLSSecurityPolicy.add_member(:policy_min_tls_1_0_2019_07, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_0_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-0-2019-07"}))
    TLSSecurityPolicy.add_member(:policy_min_tls_1_2_2019_07, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit, location_name: 'POLICY_MIN_TLS_1_2_2019_07', traits: {"smithy.api#enumValue" => "Policy-Min-TLS-1-2-2019-07"}))
    TextArrayOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    TextArrayOptions.add_member(:source_fields, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: 'SourceFields', traits: {"smithy.api#documentation" => "<p>A list of source fields to map to the field. </p>"}))
    TextArrayOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    TextArrayOptions.add_member(:highlight_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HighlightEnabled', traits: {"smithy.api#documentation" => "<p>Whether highlights can be returned for the field.</p>"}))
    TextArrayOptions.add_member(:analysis_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: Word, location_name: 'AnalysisScheme', traits: {"smithy.api#documentation" => "<p>The name of an analysis scheme for a  <code>text-array</code> field.</p>"}))
    TextArrayOptions.type = Types::TextArrayOptions
    TextOptions.add_member(:default_value, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldValue, location_name: 'DefaultValue', traits: {"smithy.api#documentation" => "A value to use for the field if the field isn't specified for a document."}))
    TextOptions.add_member(:source_field, Smithy::Schema::Shapes::ShapeRef.new(shape: FieldName, location_name: 'SourceField'))
    TextOptions.add_member(:return_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'ReturnEnabled', traits: {"smithy.api#documentation" => "<p>Whether the contents of the field can be returned in the search results.</p>"}))
    TextOptions.add_member(:sort_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'SortEnabled', traits: {"smithy.api#documentation" => "<p>Whether the field can be used to sort the search results.</p>"}))
    TextOptions.add_member(:highlight_enabled, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'HighlightEnabled', traits: {"smithy.api#documentation" => "<p>Whether highlights can be returned for the field.</p>"}))
    TextOptions.add_member(:analysis_scheme, Smithy::Schema::Shapes::ShapeRef.new(shape: Word, location_name: 'AnalysisScheme', traits: {"smithy.api#documentation" => "<p>The name of an analysis scheme for a  <code>text</code> field.</p>"}))
    TextOptions.type = Types::TextOptions
    UpdateAvailabilityOptionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpdateAvailabilityOptionsRequest.add_member(:multi_az, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'MultiAZ', traits: {"smithy.api#documentation" => "<p>You expand an existing search domain to a second Availability Zone by setting the Multi-AZ option to true. Similarly, you can turn off the Multi-AZ option to downgrade the domain to a single Availability Zone by setting the Multi-AZ option to <code>false</code>. </p>", "smithy.api#required" => {}}))
    UpdateAvailabilityOptionsRequest.type = Types::UpdateAvailabilityOptionsRequest
    UpdateAvailabilityOptionsResponse.add_member(:availability_options, Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityOptionsStatus, location_name: 'AvailabilityOptions', traits: {"smithy.api#documentation" => "<p>The newly-configured availability options. Indicates whether Multi-AZ is enabled for the domain. </p>"}))
    UpdateAvailabilityOptionsResponse.type = Types::UpdateAvailabilityOptionsResponse
    UpdateDomainEndpointOptionsRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#documentation" => "<p>A string that represents the name of a domain.</p>", "smithy.api#required" => {}}))
    UpdateDomainEndpointOptionsRequest.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptions, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>Whether to require that all requests to the domain arrive over HTTPS. We recommend Policy-Min-TLS-1-2-2019-07 for TLSSecurityPolicy. For compatibility with older clients, the default is Policy-Min-TLS-1-0-2019-07. </p>", "smithy.api#required" => {}}))
    UpdateDomainEndpointOptionsRequest.type = Types::UpdateDomainEndpointOptionsRequest
    UpdateDomainEndpointOptionsResponse.add_member(:domain_endpoint_options, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainEndpointOptionsStatus, location_name: 'DomainEndpointOptions', traits: {"smithy.api#documentation" => "<p>The newly-configured domain endpoint options.</p>"}))
    UpdateDomainEndpointOptionsResponse.type = Types::UpdateDomainEndpointOptionsResponse
    UpdateScalingParametersRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersRequest.add_member(:scaling_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingParameters, location_name: 'ScalingParameters', traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersRequest.type = Types::UpdateScalingParametersRequest
    UpdateScalingParametersResponse.add_member(:scaling_parameters, Smithy::Schema::Shapes::ShapeRef.new(shape: ScalingParametersStatus, location_name: 'ScalingParameters', traits: {"smithy.api#required" => {}}))
    UpdateScalingParametersResponse.type = Types::UpdateScalingParametersResponse
    UpdateServiceAccessPoliciesRequest.add_member(:domain_name, Smithy::Schema::Shapes::ShapeRef.new(shape: DomainName, location_name: 'DomainName', traits: {"smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesRequest.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: PolicyDocument, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>The access rules you want to configure. These rules replace any existing rules. </p>", "smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesRequest.type = Types::UpdateServiceAccessPoliciesRequest
    UpdateServiceAccessPoliciesResponse.add_member(:access_policies, Smithy::Schema::Shapes::ShapeRef.new(shape: AccessPoliciesStatus, location_name: 'AccessPolicies', traits: {"smithy.api#documentation" => "<p>The access rules configured for the domain.</p>", "smithy.api#required" => {}}))
    UpdateServiceAccessPoliciesResponse.type = Types::UpdateServiceAccessPoliciesResponse
    ValidationException.add_member(:code, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorCode, location_name: 'Code'))
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'Message'))
    ValidationException.type = Types::ValidationException

    A9SearchCloudConfigService2013 = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.cloudsearch#A9SearchCloudConfigService2013"
      service.name = "A9SearchCloudConfigService2013"
      service.version = "2013-01-01"
      service.traits = {"aws.api#service" => {"sdkId" => "CloudSearch", "arnNamespace" => "cloudsearch", "cloudFormationName" => "CloudSearch", "cloudTrailEventSource" => "cloudsearch.amazonaws.com", "endpointPrefix" => "cloudsearch"}, "aws.auth#sigv4" => {"name" => "cloudsearch"}, "aws.protocols#awsQuery" => {}, "smithy.api#title" => "Amazon CloudSearch", "smithy.api#xmlNamespace" => {"uri" => "http://cloudsearch.amazonaws.com/doc/2013-01-01/"}}
      service.add_operation(:build_suggesters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#BuildSuggesters"
        operation.name = "BuildSuggesters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSuggestersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: BuildSuggestersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:create_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#CreateDomain"
        operation.name = "CreateDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: CreateDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceAlreadyExistsException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:define_analysis_scheme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineAnalysisScheme"
        operation.name = "DefineAnalysisScheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineAnalysisSchemeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineAnalysisSchemeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:define_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineExpression"
        operation.name = "DefineExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:define_index_field, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineIndexField"
        operation.name = "DefineIndexField"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineIndexFieldRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineIndexFieldResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:define_suggester, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DefineSuggester"
        operation.name = "DefineSuggester"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineSuggesterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DefineSuggesterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_analysis_scheme, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteAnalysisScheme"
        operation.name = "DeleteAnalysisScheme"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalysisSchemeRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteAnalysisSchemeResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_domain, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteDomain"
        operation.name = "DeleteDomain"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:delete_expression, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteExpression"
        operation.name = "DeleteExpression"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExpressionRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteExpressionResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_index_field, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteIndexField"
        operation.name = "DeleteIndexField"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexFieldRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteIndexFieldResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:delete_suggester, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DeleteSuggester"
        operation.name = "DeleteSuggester"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuggesterRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteSuggesterResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:describe_analysis_schemes, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeAnalysisSchemes"
        operation.name = "DescribeAnalysisSchemes"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnalysisSchemesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAnalysisSchemesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_availability_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeAvailabilityOptions"
        operation.name = "DescribeAvailabilityOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAvailabilityOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeAvailabilityOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_domain_endpoint_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeDomainEndpointOptions"
        operation.name = "DescribeDomainEndpointOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainEndpointOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainEndpointOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_domains, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeDomains"
        operation.name = "DescribeDomains"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeDomainsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.traits = {}
      end)
      service.add_operation(:describe_expressions, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeExpressions"
        operation.name = "DescribeExpressions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExpressionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeExpressionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_index_fields, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeIndexFields"
        operation.name = "DescribeIndexFields"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIndexFieldsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeIndexFieldsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_scaling_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeScalingParameters"
        operation.name = "DescribeScalingParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeScalingParametersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_service_access_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeServiceAccessPolicies"
        operation.name = "DescribeServiceAccessPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceAccessPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeServiceAccessPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:describe_suggesters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#DescribeSuggesters"
        operation.name = "DescribeSuggesters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSuggestersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeSuggestersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.traits = {}
      end)
      service.add_operation(:index_documents, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#IndexDocuments"
        operation.name = "IndexDocuments"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexDocumentsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: IndexDocumentsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:list_domain_names, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#ListDomainNames"
        operation.name = "ListDomainNames"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.traits = {}
      end)
      service.add_operation(:update_availability_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateAvailabilityOptions"
        operation.name = "UpdateAvailabilityOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateAvailabilityOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_domain_endpoint_options, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateDomainEndpointOptions"
        operation.name = "UpdateDomainEndpointOptions"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainEndpointOptionsRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateDomainEndpointOptionsResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DisabledOperationException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_scaling_parameters, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateScalingParameters"
        operation.name = "UpdateScalingParameters"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScalingParametersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateScalingParametersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {}
      end)
      service.add_operation(:update_service_access_policies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.cloudsearch#UpdateServiceAccessPolicies"
        operation.name = "UpdateServiceAccessPolicies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceAccessPoliciesRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServiceAccessPoliciesResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: BaseException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTypeException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: LimitExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
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
