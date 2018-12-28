# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudSearch
  # @api private
  module ClientApi

    include Seahorse::Model

    APIVersion = Shapes::StringShape.new(name: 'APIVersion')
    ARN = Shapes::StringShape.new(name: 'ARN')
    AccessPoliciesStatus = Shapes::StructureShape.new(name: 'AccessPoliciesStatus')
    AlgorithmicStemming = Shapes::StringShape.new(name: 'AlgorithmicStemming')
    AnalysisOptions = Shapes::StructureShape.new(name: 'AnalysisOptions')
    AnalysisScheme = Shapes::StructureShape.new(name: 'AnalysisScheme')
    AnalysisSchemeLanguage = Shapes::StringShape.new(name: 'AnalysisSchemeLanguage')
    AnalysisSchemeStatus = Shapes::StructureShape.new(name: 'AnalysisSchemeStatus')
    AnalysisSchemeStatusList = Shapes::ListShape.new(name: 'AnalysisSchemeStatusList')
    AvailabilityOptionsStatus = Shapes::StructureShape.new(name: 'AvailabilityOptionsStatus')
    BaseException = Shapes::StructureShape.new(name: 'BaseException')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BuildSuggestersRequest = Shapes::StructureShape.new(name: 'BuildSuggestersRequest')
    BuildSuggestersResponse = Shapes::StructureShape.new(name: 'BuildSuggestersResponse')
    CreateDomainRequest = Shapes::StructureShape.new(name: 'CreateDomainRequest')
    CreateDomainResponse = Shapes::StructureShape.new(name: 'CreateDomainResponse')
    DateArrayOptions = Shapes::StructureShape.new(name: 'DateArrayOptions')
    DateOptions = Shapes::StructureShape.new(name: 'DateOptions')
    DefineAnalysisSchemeRequest = Shapes::StructureShape.new(name: 'DefineAnalysisSchemeRequest')
    DefineAnalysisSchemeResponse = Shapes::StructureShape.new(name: 'DefineAnalysisSchemeResponse')
    DefineExpressionRequest = Shapes::StructureShape.new(name: 'DefineExpressionRequest')
    DefineExpressionResponse = Shapes::StructureShape.new(name: 'DefineExpressionResponse')
    DefineIndexFieldRequest = Shapes::StructureShape.new(name: 'DefineIndexFieldRequest')
    DefineIndexFieldResponse = Shapes::StructureShape.new(name: 'DefineIndexFieldResponse')
    DefineSuggesterRequest = Shapes::StructureShape.new(name: 'DefineSuggesterRequest')
    DefineSuggesterResponse = Shapes::StructureShape.new(name: 'DefineSuggesterResponse')
    DeleteAnalysisSchemeRequest = Shapes::StructureShape.new(name: 'DeleteAnalysisSchemeRequest')
    DeleteAnalysisSchemeResponse = Shapes::StructureShape.new(name: 'DeleteAnalysisSchemeResponse')
    DeleteDomainRequest = Shapes::StructureShape.new(name: 'DeleteDomainRequest')
    DeleteDomainResponse = Shapes::StructureShape.new(name: 'DeleteDomainResponse')
    DeleteExpressionRequest = Shapes::StructureShape.new(name: 'DeleteExpressionRequest')
    DeleteExpressionResponse = Shapes::StructureShape.new(name: 'DeleteExpressionResponse')
    DeleteIndexFieldRequest = Shapes::StructureShape.new(name: 'DeleteIndexFieldRequest')
    DeleteIndexFieldResponse = Shapes::StructureShape.new(name: 'DeleteIndexFieldResponse')
    DeleteSuggesterRequest = Shapes::StructureShape.new(name: 'DeleteSuggesterRequest')
    DeleteSuggesterResponse = Shapes::StructureShape.new(name: 'DeleteSuggesterResponse')
    DescribeAnalysisSchemesRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisSchemesRequest')
    DescribeAnalysisSchemesResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisSchemesResponse')
    DescribeAvailabilityOptionsRequest = Shapes::StructureShape.new(name: 'DescribeAvailabilityOptionsRequest')
    DescribeAvailabilityOptionsResponse = Shapes::StructureShape.new(name: 'DescribeAvailabilityOptionsResponse')
    DescribeDomainsRequest = Shapes::StructureShape.new(name: 'DescribeDomainsRequest')
    DescribeDomainsResponse = Shapes::StructureShape.new(name: 'DescribeDomainsResponse')
    DescribeExpressionsRequest = Shapes::StructureShape.new(name: 'DescribeExpressionsRequest')
    DescribeExpressionsResponse = Shapes::StructureShape.new(name: 'DescribeExpressionsResponse')
    DescribeIndexFieldsRequest = Shapes::StructureShape.new(name: 'DescribeIndexFieldsRequest')
    DescribeIndexFieldsResponse = Shapes::StructureShape.new(name: 'DescribeIndexFieldsResponse')
    DescribeScalingParametersRequest = Shapes::StructureShape.new(name: 'DescribeScalingParametersRequest')
    DescribeScalingParametersResponse = Shapes::StructureShape.new(name: 'DescribeScalingParametersResponse')
    DescribeServiceAccessPoliciesRequest = Shapes::StructureShape.new(name: 'DescribeServiceAccessPoliciesRequest')
    DescribeServiceAccessPoliciesResponse = Shapes::StructureShape.new(name: 'DescribeServiceAccessPoliciesResponse')
    DescribeSuggestersRequest = Shapes::StructureShape.new(name: 'DescribeSuggestersRequest')
    DescribeSuggestersResponse = Shapes::StructureShape.new(name: 'DescribeSuggestersResponse')
    DisabledOperationException = Shapes::StructureShape.new(name: 'DisabledOperationException')
    DocumentSuggesterOptions = Shapes::StructureShape.new(name: 'DocumentSuggesterOptions')
    DomainId = Shapes::StringShape.new(name: 'DomainId')
    DomainName = Shapes::StringShape.new(name: 'DomainName')
    DomainNameList = Shapes::ListShape.new(name: 'DomainNameList')
    DomainNameMap = Shapes::MapShape.new(name: 'DomainNameMap')
    DomainStatus = Shapes::StructureShape.new(name: 'DomainStatus')
    DomainStatusList = Shapes::ListShape.new(name: 'DomainStatusList')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleArrayOptions = Shapes::StructureShape.new(name: 'DoubleArrayOptions')
    DoubleOptions = Shapes::StructureShape.new(name: 'DoubleOptions')
    DynamicFieldName = Shapes::StringShape.new(name: 'DynamicFieldName')
    DynamicFieldNameList = Shapes::ListShape.new(name: 'DynamicFieldNameList')
    ErrorCode = Shapes::StringShape.new(name: 'ErrorCode')
    ErrorMessage = Shapes::StringShape.new(name: 'ErrorMessage')
    Expression = Shapes::StructureShape.new(name: 'Expression')
    ExpressionStatus = Shapes::StructureShape.new(name: 'ExpressionStatus')
    ExpressionStatusList = Shapes::ListShape.new(name: 'ExpressionStatusList')
    ExpressionValue = Shapes::StringShape.new(name: 'ExpressionValue')
    FieldName = Shapes::StringShape.new(name: 'FieldName')
    FieldNameCommaList = Shapes::StringShape.new(name: 'FieldNameCommaList')
    FieldNameList = Shapes::ListShape.new(name: 'FieldNameList')
    FieldValue = Shapes::StringShape.new(name: 'FieldValue')
    IndexDocumentsRequest = Shapes::StructureShape.new(name: 'IndexDocumentsRequest')
    IndexDocumentsResponse = Shapes::StructureShape.new(name: 'IndexDocumentsResponse')
    IndexField = Shapes::StructureShape.new(name: 'IndexField')
    IndexFieldStatus = Shapes::StructureShape.new(name: 'IndexFieldStatus')
    IndexFieldStatusList = Shapes::ListShape.new(name: 'IndexFieldStatusList')
    IndexFieldType = Shapes::StringShape.new(name: 'IndexFieldType')
    InstanceCount = Shapes::IntegerShape.new(name: 'InstanceCount')
    IntArrayOptions = Shapes::StructureShape.new(name: 'IntArrayOptions')
    IntOptions = Shapes::StructureShape.new(name: 'IntOptions')
    InternalException = Shapes::StructureShape.new(name: 'InternalException')
    InvalidTypeException = Shapes::StructureShape.new(name: 'InvalidTypeException')
    LatLonOptions = Shapes::StructureShape.new(name: 'LatLonOptions')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    Limits = Shapes::StructureShape.new(name: 'Limits')
    ListDomainNamesResponse = Shapes::StructureShape.new(name: 'ListDomainNamesResponse')
    LiteralArrayOptions = Shapes::StructureShape.new(name: 'LiteralArrayOptions')
    LiteralOptions = Shapes::StructureShape.new(name: 'LiteralOptions')
    Long = Shapes::IntegerShape.new(name: 'Long')
    MaximumPartitionCount = Shapes::IntegerShape.new(name: 'MaximumPartitionCount')
    MaximumReplicationCount = Shapes::IntegerShape.new(name: 'MaximumReplicationCount')
    MultiAZ = Shapes::BooleanShape.new(name: 'MultiAZ')
    OptionState = Shapes::StringShape.new(name: 'OptionState')
    OptionStatus = Shapes::StructureShape.new(name: 'OptionStatus')
    PartitionCount = Shapes::IntegerShape.new(name: 'PartitionCount')
    PartitionInstanceType = Shapes::StringShape.new(name: 'PartitionInstanceType')
    PolicyDocument = Shapes::StringShape.new(name: 'PolicyDocument')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ScalingParameters = Shapes::StructureShape.new(name: 'ScalingParameters')
    ScalingParametersStatus = Shapes::StructureShape.new(name: 'ScalingParametersStatus')
    SearchInstanceType = Shapes::StringShape.new(name: 'SearchInstanceType')
    ServiceEndpoint = Shapes::StructureShape.new(name: 'ServiceEndpoint')
    ServiceUrl = Shapes::StringShape.new(name: 'ServiceUrl')
    StandardName = Shapes::StringShape.new(name: 'StandardName')
    StandardNameList = Shapes::ListShape.new(name: 'StandardNameList')
    String = Shapes::StringShape.new(name: 'String')
    Suggester = Shapes::StructureShape.new(name: 'Suggester')
    SuggesterFuzzyMatching = Shapes::StringShape.new(name: 'SuggesterFuzzyMatching')
    SuggesterStatus = Shapes::StructureShape.new(name: 'SuggesterStatus')
    SuggesterStatusList = Shapes::ListShape.new(name: 'SuggesterStatusList')
    TextArrayOptions = Shapes::StructureShape.new(name: 'TextArrayOptions')
    TextOptions = Shapes::StructureShape.new(name: 'TextOptions')
    UIntValue = Shapes::IntegerShape.new(name: 'UIntValue')
    UpdateAvailabilityOptionsRequest = Shapes::StructureShape.new(name: 'UpdateAvailabilityOptionsRequest')
    UpdateAvailabilityOptionsResponse = Shapes::StructureShape.new(name: 'UpdateAvailabilityOptionsResponse')
    UpdateScalingParametersRequest = Shapes::StructureShape.new(name: 'UpdateScalingParametersRequest')
    UpdateScalingParametersResponse = Shapes::StructureShape.new(name: 'UpdateScalingParametersResponse')
    UpdateServiceAccessPoliciesRequest = Shapes::StructureShape.new(name: 'UpdateServiceAccessPoliciesRequest')
    UpdateServiceAccessPoliciesResponse = Shapes::StructureShape.new(name: 'UpdateServiceAccessPoliciesResponse')
    UpdateTimestamp = Shapes::TimestampShape.new(name: 'UpdateTimestamp')
    Word = Shapes::StringShape.new(name: 'Word')

    AccessPoliciesStatus.add_member(:options, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "Options"))
    AccessPoliciesStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AccessPoliciesStatus.struct_class = Types::AccessPoliciesStatus

    AnalysisOptions.add_member(:synonyms, Shapes::ShapeRef.new(shape: String, location_name: "Synonyms"))
    AnalysisOptions.add_member(:stopwords, Shapes::ShapeRef.new(shape: String, location_name: "Stopwords"))
    AnalysisOptions.add_member(:stemming_dictionary, Shapes::ShapeRef.new(shape: String, location_name: "StemmingDictionary"))
    AnalysisOptions.add_member(:japanese_tokenization_dictionary, Shapes::ShapeRef.new(shape: String, location_name: "JapaneseTokenizationDictionary"))
    AnalysisOptions.add_member(:algorithmic_stemming, Shapes::ShapeRef.new(shape: AlgorithmicStemming, location_name: "AlgorithmicStemming"))
    AnalysisOptions.struct_class = Types::AnalysisOptions

    AnalysisScheme.add_member(:analysis_scheme_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "AnalysisSchemeName"))
    AnalysisScheme.add_member(:analysis_scheme_language, Shapes::ShapeRef.new(shape: AnalysisSchemeLanguage, required: true, location_name: "AnalysisSchemeLanguage"))
    AnalysisScheme.add_member(:analysis_options, Shapes::ShapeRef.new(shape: AnalysisOptions, location_name: "AnalysisOptions"))
    AnalysisScheme.struct_class = Types::AnalysisScheme

    AnalysisSchemeStatus.add_member(:options, Shapes::ShapeRef.new(shape: AnalysisScheme, required: true, location_name: "Options"))
    AnalysisSchemeStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AnalysisSchemeStatus.struct_class = Types::AnalysisSchemeStatus

    AnalysisSchemeStatusList.member = Shapes::ShapeRef.new(shape: AnalysisSchemeStatus)

    AvailabilityOptionsStatus.add_member(:options, Shapes::ShapeRef.new(shape: MultiAZ, required: true, location_name: "Options"))
    AvailabilityOptionsStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    AvailabilityOptionsStatus.struct_class = Types::AvailabilityOptionsStatus

    BuildSuggestersRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    BuildSuggestersRequest.struct_class = Types::BuildSuggestersRequest

    BuildSuggestersResponse.add_member(:field_names, Shapes::ShapeRef.new(shape: FieldNameList, location_name: "FieldNames"))
    BuildSuggestersResponse.struct_class = Types::BuildSuggestersResponse

    CreateDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    CreateDomainRequest.struct_class = Types::CreateDomainRequest

    CreateDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    CreateDomainResponse.struct_class = Types::CreateDomainResponse

    DateArrayOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    DateArrayOptions.add_member(:source_fields, Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: "SourceFields"))
    DateArrayOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    DateArrayOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    DateArrayOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    DateArrayOptions.struct_class = Types::DateArrayOptions

    DateOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    DateOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    DateOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    DateOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    DateOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    DateOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    DateOptions.struct_class = Types::DateOptions

    DefineAnalysisSchemeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DefineAnalysisSchemeRequest.add_member(:analysis_scheme, Shapes::ShapeRef.new(shape: AnalysisScheme, required: true, location_name: "AnalysisScheme"))
    DefineAnalysisSchemeRequest.struct_class = Types::DefineAnalysisSchemeRequest

    DefineAnalysisSchemeResponse.add_member(:analysis_scheme, Shapes::ShapeRef.new(shape: AnalysisSchemeStatus, required: true, location_name: "AnalysisScheme"))
    DefineAnalysisSchemeResponse.struct_class = Types::DefineAnalysisSchemeResponse

    DefineExpressionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DefineExpressionRequest.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    DefineExpressionRequest.struct_class = Types::DefineExpressionRequest

    DefineExpressionResponse.add_member(:expression, Shapes::ShapeRef.new(shape: ExpressionStatus, required: true, location_name: "Expression"))
    DefineExpressionResponse.struct_class = Types::DefineExpressionResponse

    DefineIndexFieldRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DefineIndexFieldRequest.add_member(:index_field, Shapes::ShapeRef.new(shape: IndexField, required: true, location_name: "IndexField"))
    DefineIndexFieldRequest.struct_class = Types::DefineIndexFieldRequest

    DefineIndexFieldResponse.add_member(:index_field, Shapes::ShapeRef.new(shape: IndexFieldStatus, required: true, location_name: "IndexField"))
    DefineIndexFieldResponse.struct_class = Types::DefineIndexFieldResponse

    DefineSuggesterRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DefineSuggesterRequest.add_member(:suggester, Shapes::ShapeRef.new(shape: Suggester, required: true, location_name: "Suggester"))
    DefineSuggesterRequest.struct_class = Types::DefineSuggesterRequest

    DefineSuggesterResponse.add_member(:suggester, Shapes::ShapeRef.new(shape: SuggesterStatus, required: true, location_name: "Suggester"))
    DefineSuggesterResponse.struct_class = Types::DefineSuggesterResponse

    DeleteAnalysisSchemeRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteAnalysisSchemeRequest.add_member(:analysis_scheme_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "AnalysisSchemeName"))
    DeleteAnalysisSchemeRequest.struct_class = Types::DeleteAnalysisSchemeRequest

    DeleteAnalysisSchemeResponse.add_member(:analysis_scheme, Shapes::ShapeRef.new(shape: AnalysisSchemeStatus, required: true, location_name: "AnalysisScheme"))
    DeleteAnalysisSchemeResponse.struct_class = Types::DeleteAnalysisSchemeResponse

    DeleteDomainRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteDomainRequest.struct_class = Types::DeleteDomainRequest

    DeleteDomainResponse.add_member(:domain_status, Shapes::ShapeRef.new(shape: DomainStatus, location_name: "DomainStatus"))
    DeleteDomainResponse.struct_class = Types::DeleteDomainResponse

    DeleteExpressionRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteExpressionRequest.add_member(:expression_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "ExpressionName"))
    DeleteExpressionRequest.struct_class = Types::DeleteExpressionRequest

    DeleteExpressionResponse.add_member(:expression, Shapes::ShapeRef.new(shape: ExpressionStatus, required: true, location_name: "Expression"))
    DeleteExpressionResponse.struct_class = Types::DeleteExpressionResponse

    DeleteIndexFieldRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteIndexFieldRequest.add_member(:index_field_name, Shapes::ShapeRef.new(shape: DynamicFieldName, required: true, location_name: "IndexFieldName"))
    DeleteIndexFieldRequest.struct_class = Types::DeleteIndexFieldRequest

    DeleteIndexFieldResponse.add_member(:index_field, Shapes::ShapeRef.new(shape: IndexFieldStatus, required: true, location_name: "IndexField"))
    DeleteIndexFieldResponse.struct_class = Types::DeleteIndexFieldResponse

    DeleteSuggesterRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DeleteSuggesterRequest.add_member(:suggester_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "SuggesterName"))
    DeleteSuggesterRequest.struct_class = Types::DeleteSuggesterRequest

    DeleteSuggesterResponse.add_member(:suggester, Shapes::ShapeRef.new(shape: SuggesterStatus, required: true, location_name: "Suggester"))
    DeleteSuggesterResponse.struct_class = Types::DeleteSuggesterResponse

    DescribeAnalysisSchemesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeAnalysisSchemesRequest.add_member(:analysis_scheme_names, Shapes::ShapeRef.new(shape: StandardNameList, location_name: "AnalysisSchemeNames"))
    DescribeAnalysisSchemesRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeAnalysisSchemesRequest.struct_class = Types::DescribeAnalysisSchemesRequest

    DescribeAnalysisSchemesResponse.add_member(:analysis_schemes, Shapes::ShapeRef.new(shape: AnalysisSchemeStatusList, required: true, location_name: "AnalysisSchemes"))
    DescribeAnalysisSchemesResponse.struct_class = Types::DescribeAnalysisSchemesResponse

    DescribeAvailabilityOptionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeAvailabilityOptionsRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeAvailabilityOptionsRequest.struct_class = Types::DescribeAvailabilityOptionsRequest

    DescribeAvailabilityOptionsResponse.add_member(:availability_options, Shapes::ShapeRef.new(shape: AvailabilityOptionsStatus, location_name: "AvailabilityOptions"))
    DescribeAvailabilityOptionsResponse.struct_class = Types::DescribeAvailabilityOptionsResponse

    DescribeDomainsRequest.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainNameList, location_name: "DomainNames"))
    DescribeDomainsRequest.struct_class = Types::DescribeDomainsRequest

    DescribeDomainsResponse.add_member(:domain_status_list, Shapes::ShapeRef.new(shape: DomainStatusList, required: true, location_name: "DomainStatusList"))
    DescribeDomainsResponse.struct_class = Types::DescribeDomainsResponse

    DescribeExpressionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeExpressionsRequest.add_member(:expression_names, Shapes::ShapeRef.new(shape: StandardNameList, location_name: "ExpressionNames"))
    DescribeExpressionsRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeExpressionsRequest.struct_class = Types::DescribeExpressionsRequest

    DescribeExpressionsResponse.add_member(:expressions, Shapes::ShapeRef.new(shape: ExpressionStatusList, required: true, location_name: "Expressions"))
    DescribeExpressionsResponse.struct_class = Types::DescribeExpressionsResponse

    DescribeIndexFieldsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeIndexFieldsRequest.add_member(:field_names, Shapes::ShapeRef.new(shape: DynamicFieldNameList, location_name: "FieldNames"))
    DescribeIndexFieldsRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeIndexFieldsRequest.struct_class = Types::DescribeIndexFieldsRequest

    DescribeIndexFieldsResponse.add_member(:index_fields, Shapes::ShapeRef.new(shape: IndexFieldStatusList, required: true, location_name: "IndexFields"))
    DescribeIndexFieldsResponse.struct_class = Types::DescribeIndexFieldsResponse

    DescribeScalingParametersRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeScalingParametersRequest.struct_class = Types::DescribeScalingParametersRequest

    DescribeScalingParametersResponse.add_member(:scaling_parameters, Shapes::ShapeRef.new(shape: ScalingParametersStatus, required: true, location_name: "ScalingParameters"))
    DescribeScalingParametersResponse.struct_class = Types::DescribeScalingParametersResponse

    DescribeServiceAccessPoliciesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeServiceAccessPoliciesRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeServiceAccessPoliciesRequest.struct_class = Types::DescribeServiceAccessPoliciesRequest

    DescribeServiceAccessPoliciesResponse.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesStatus, required: true, location_name: "AccessPolicies"))
    DescribeServiceAccessPoliciesResponse.struct_class = Types::DescribeServiceAccessPoliciesResponse

    DescribeSuggestersRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DescribeSuggestersRequest.add_member(:suggester_names, Shapes::ShapeRef.new(shape: StandardNameList, location_name: "SuggesterNames"))
    DescribeSuggestersRequest.add_member(:deployed, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deployed"))
    DescribeSuggestersRequest.struct_class = Types::DescribeSuggestersRequest

    DescribeSuggestersResponse.add_member(:suggesters, Shapes::ShapeRef.new(shape: SuggesterStatusList, required: true, location_name: "Suggesters"))
    DescribeSuggestersResponse.struct_class = Types::DescribeSuggestersResponse

    DocumentSuggesterOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, required: true, location_name: "SourceField"))
    DocumentSuggesterOptions.add_member(:fuzzy_matching, Shapes::ShapeRef.new(shape: SuggesterFuzzyMatching, location_name: "FuzzyMatching"))
    DocumentSuggesterOptions.add_member(:sort_expression, Shapes::ShapeRef.new(shape: String, location_name: "SortExpression"))
    DocumentSuggesterOptions.struct_class = Types::DocumentSuggesterOptions

    DomainNameList.member = Shapes::ShapeRef.new(shape: DomainName)

    DomainNameMap.key = Shapes::ShapeRef.new(shape: DomainName)
    DomainNameMap.value = Shapes::ShapeRef.new(shape: APIVersion)

    DomainStatus.add_member(:domain_id, Shapes::ShapeRef.new(shape: DomainId, required: true, location_name: "DomainId"))
    DomainStatus.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    DomainStatus.add_member(:arn, Shapes::ShapeRef.new(shape: ARN, location_name: "ARN"))
    DomainStatus.add_member(:created, Shapes::ShapeRef.new(shape: Boolean, location_name: "Created"))
    DomainStatus.add_member(:deleted, Shapes::ShapeRef.new(shape: Boolean, location_name: "Deleted"))
    DomainStatus.add_member(:doc_service, Shapes::ShapeRef.new(shape: ServiceEndpoint, location_name: "DocService"))
    DomainStatus.add_member(:search_service, Shapes::ShapeRef.new(shape: ServiceEndpoint, location_name: "SearchService"))
    DomainStatus.add_member(:requires_index_documents, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "RequiresIndexDocuments"))
    DomainStatus.add_member(:processing, Shapes::ShapeRef.new(shape: Boolean, location_name: "Processing"))
    DomainStatus.add_member(:search_instance_type, Shapes::ShapeRef.new(shape: SearchInstanceType, location_name: "SearchInstanceType"))
    DomainStatus.add_member(:search_partition_count, Shapes::ShapeRef.new(shape: PartitionCount, location_name: "SearchPartitionCount"))
    DomainStatus.add_member(:search_instance_count, Shapes::ShapeRef.new(shape: InstanceCount, location_name: "SearchInstanceCount"))
    DomainStatus.add_member(:limits, Shapes::ShapeRef.new(shape: Limits, location_name: "Limits"))
    DomainStatus.struct_class = Types::DomainStatus

    DomainStatusList.member = Shapes::ShapeRef.new(shape: DomainStatus)

    DoubleArrayOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: Double, location_name: "DefaultValue"))
    DoubleArrayOptions.add_member(:source_fields, Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: "SourceFields"))
    DoubleArrayOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    DoubleArrayOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    DoubleArrayOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    DoubleArrayOptions.struct_class = Types::DoubleArrayOptions

    DoubleOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: Double, location_name: "DefaultValue"))
    DoubleOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    DoubleOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    DoubleOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    DoubleOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    DoubleOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    DoubleOptions.struct_class = Types::DoubleOptions

    DynamicFieldNameList.member = Shapes::ShapeRef.new(shape: DynamicFieldName)

    Expression.add_member(:expression_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "ExpressionName"))
    Expression.add_member(:expression_value, Shapes::ShapeRef.new(shape: ExpressionValue, required: true, location_name: "ExpressionValue"))
    Expression.struct_class = Types::Expression

    ExpressionStatus.add_member(:options, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Options"))
    ExpressionStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    ExpressionStatus.struct_class = Types::ExpressionStatus

    ExpressionStatusList.member = Shapes::ShapeRef.new(shape: ExpressionStatus)

    FieldNameList.member = Shapes::ShapeRef.new(shape: FieldName)

    IndexDocumentsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    IndexDocumentsRequest.struct_class = Types::IndexDocumentsRequest

    IndexDocumentsResponse.add_member(:field_names, Shapes::ShapeRef.new(shape: FieldNameList, location_name: "FieldNames"))
    IndexDocumentsResponse.struct_class = Types::IndexDocumentsResponse

    IndexField.add_member(:index_field_name, Shapes::ShapeRef.new(shape: DynamicFieldName, required: true, location_name: "IndexFieldName"))
    IndexField.add_member(:index_field_type, Shapes::ShapeRef.new(shape: IndexFieldType, required: true, location_name: "IndexFieldType"))
    IndexField.add_member(:int_options, Shapes::ShapeRef.new(shape: IntOptions, location_name: "IntOptions"))
    IndexField.add_member(:double_options, Shapes::ShapeRef.new(shape: DoubleOptions, location_name: "DoubleOptions"))
    IndexField.add_member(:literal_options, Shapes::ShapeRef.new(shape: LiteralOptions, location_name: "LiteralOptions"))
    IndexField.add_member(:text_options, Shapes::ShapeRef.new(shape: TextOptions, location_name: "TextOptions"))
    IndexField.add_member(:date_options, Shapes::ShapeRef.new(shape: DateOptions, location_name: "DateOptions"))
    IndexField.add_member(:lat_lon_options, Shapes::ShapeRef.new(shape: LatLonOptions, location_name: "LatLonOptions"))
    IndexField.add_member(:int_array_options, Shapes::ShapeRef.new(shape: IntArrayOptions, location_name: "IntArrayOptions"))
    IndexField.add_member(:double_array_options, Shapes::ShapeRef.new(shape: DoubleArrayOptions, location_name: "DoubleArrayOptions"))
    IndexField.add_member(:literal_array_options, Shapes::ShapeRef.new(shape: LiteralArrayOptions, location_name: "LiteralArrayOptions"))
    IndexField.add_member(:text_array_options, Shapes::ShapeRef.new(shape: TextArrayOptions, location_name: "TextArrayOptions"))
    IndexField.add_member(:date_array_options, Shapes::ShapeRef.new(shape: DateArrayOptions, location_name: "DateArrayOptions"))
    IndexField.struct_class = Types::IndexField

    IndexFieldStatus.add_member(:options, Shapes::ShapeRef.new(shape: IndexField, required: true, location_name: "Options"))
    IndexFieldStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    IndexFieldStatus.struct_class = Types::IndexFieldStatus

    IndexFieldStatusList.member = Shapes::ShapeRef.new(shape: IndexFieldStatus)

    IntArrayOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: Long, location_name: "DefaultValue"))
    IntArrayOptions.add_member(:source_fields, Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: "SourceFields"))
    IntArrayOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    IntArrayOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    IntArrayOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    IntArrayOptions.struct_class = Types::IntArrayOptions

    IntOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: Long, location_name: "DefaultValue"))
    IntOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    IntOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    IntOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    IntOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    IntOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    IntOptions.struct_class = Types::IntOptions

    LatLonOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    LatLonOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    LatLonOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    LatLonOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    LatLonOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    LatLonOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    LatLonOptions.struct_class = Types::LatLonOptions

    Limits.add_member(:maximum_replication_count, Shapes::ShapeRef.new(shape: MaximumReplicationCount, required: true, location_name: "MaximumReplicationCount"))
    Limits.add_member(:maximum_partition_count, Shapes::ShapeRef.new(shape: MaximumPartitionCount, required: true, location_name: "MaximumPartitionCount"))
    Limits.struct_class = Types::Limits

    ListDomainNamesResponse.add_member(:domain_names, Shapes::ShapeRef.new(shape: DomainNameMap, location_name: "DomainNames"))
    ListDomainNamesResponse.struct_class = Types::ListDomainNamesResponse

    LiteralArrayOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    LiteralArrayOptions.add_member(:source_fields, Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: "SourceFields"))
    LiteralArrayOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    LiteralArrayOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    LiteralArrayOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    LiteralArrayOptions.struct_class = Types::LiteralArrayOptions

    LiteralOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    LiteralOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    LiteralOptions.add_member(:facet_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "FacetEnabled"))
    LiteralOptions.add_member(:search_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SearchEnabled"))
    LiteralOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    LiteralOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    LiteralOptions.struct_class = Types::LiteralOptions

    OptionStatus.add_member(:creation_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "CreationDate"))
    OptionStatus.add_member(:update_date, Shapes::ShapeRef.new(shape: UpdateTimestamp, required: true, location_name: "UpdateDate"))
    OptionStatus.add_member(:update_version, Shapes::ShapeRef.new(shape: UIntValue, location_name: "UpdateVersion"))
    OptionStatus.add_member(:state, Shapes::ShapeRef.new(shape: OptionState, required: true, location_name: "State"))
    OptionStatus.add_member(:pending_deletion, Shapes::ShapeRef.new(shape: Boolean, location_name: "PendingDeletion"))
    OptionStatus.struct_class = Types::OptionStatus

    ScalingParameters.add_member(:desired_instance_type, Shapes::ShapeRef.new(shape: PartitionInstanceType, location_name: "DesiredInstanceType"))
    ScalingParameters.add_member(:desired_replication_count, Shapes::ShapeRef.new(shape: UIntValue, location_name: "DesiredReplicationCount"))
    ScalingParameters.add_member(:desired_partition_count, Shapes::ShapeRef.new(shape: UIntValue, location_name: "DesiredPartitionCount"))
    ScalingParameters.struct_class = Types::ScalingParameters

    ScalingParametersStatus.add_member(:options, Shapes::ShapeRef.new(shape: ScalingParameters, required: true, location_name: "Options"))
    ScalingParametersStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    ScalingParametersStatus.struct_class = Types::ScalingParametersStatus

    ServiceEndpoint.add_member(:endpoint, Shapes::ShapeRef.new(shape: ServiceUrl, location_name: "Endpoint"))
    ServiceEndpoint.struct_class = Types::ServiceEndpoint

    StandardNameList.member = Shapes::ShapeRef.new(shape: StandardName)

    Suggester.add_member(:suggester_name, Shapes::ShapeRef.new(shape: StandardName, required: true, location_name: "SuggesterName"))
    Suggester.add_member(:document_suggester_options, Shapes::ShapeRef.new(shape: DocumentSuggesterOptions, required: true, location_name: "DocumentSuggesterOptions"))
    Suggester.struct_class = Types::Suggester

    SuggesterStatus.add_member(:options, Shapes::ShapeRef.new(shape: Suggester, required: true, location_name: "Options"))
    SuggesterStatus.add_member(:status, Shapes::ShapeRef.new(shape: OptionStatus, required: true, location_name: "Status"))
    SuggesterStatus.struct_class = Types::SuggesterStatus

    SuggesterStatusList.member = Shapes::ShapeRef.new(shape: SuggesterStatus)

    TextArrayOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    TextArrayOptions.add_member(:source_fields, Shapes::ShapeRef.new(shape: FieldNameCommaList, location_name: "SourceFields"))
    TextArrayOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    TextArrayOptions.add_member(:highlight_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "HighlightEnabled"))
    TextArrayOptions.add_member(:analysis_scheme, Shapes::ShapeRef.new(shape: Word, location_name: "AnalysisScheme"))
    TextArrayOptions.struct_class = Types::TextArrayOptions

    TextOptions.add_member(:default_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "DefaultValue"))
    TextOptions.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldName, location_name: "SourceField"))
    TextOptions.add_member(:return_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "ReturnEnabled"))
    TextOptions.add_member(:sort_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "SortEnabled"))
    TextOptions.add_member(:highlight_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "HighlightEnabled"))
    TextOptions.add_member(:analysis_scheme, Shapes::ShapeRef.new(shape: Word, location_name: "AnalysisScheme"))
    TextOptions.struct_class = Types::TextOptions

    UpdateAvailabilityOptionsRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateAvailabilityOptionsRequest.add_member(:multi_az, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "MultiAZ"))
    UpdateAvailabilityOptionsRequest.struct_class = Types::UpdateAvailabilityOptionsRequest

    UpdateAvailabilityOptionsResponse.add_member(:availability_options, Shapes::ShapeRef.new(shape: AvailabilityOptionsStatus, location_name: "AvailabilityOptions"))
    UpdateAvailabilityOptionsResponse.struct_class = Types::UpdateAvailabilityOptionsResponse

    UpdateScalingParametersRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateScalingParametersRequest.add_member(:scaling_parameters, Shapes::ShapeRef.new(shape: ScalingParameters, required: true, location_name: "ScalingParameters"))
    UpdateScalingParametersRequest.struct_class = Types::UpdateScalingParametersRequest

    UpdateScalingParametersResponse.add_member(:scaling_parameters, Shapes::ShapeRef.new(shape: ScalingParametersStatus, required: true, location_name: "ScalingParameters"))
    UpdateScalingParametersResponse.struct_class = Types::UpdateScalingParametersResponse

    UpdateServiceAccessPoliciesRequest.add_member(:domain_name, Shapes::ShapeRef.new(shape: DomainName, required: true, location_name: "DomainName"))
    UpdateServiceAccessPoliciesRequest.add_member(:access_policies, Shapes::ShapeRef.new(shape: PolicyDocument, required: true, location_name: "AccessPolicies"))
    UpdateServiceAccessPoliciesRequest.struct_class = Types::UpdateServiceAccessPoliciesRequest

    UpdateServiceAccessPoliciesResponse.add_member(:access_policies, Shapes::ShapeRef.new(shape: AccessPoliciesStatus, required: true, location_name: "AccessPolicies"))
    UpdateServiceAccessPoliciesResponse.struct_class = Types::UpdateServiceAccessPoliciesResponse


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2013-01-01"

      api.metadata = {
        "apiVersion" => "2013-01-01",
        "endpointPrefix" => "cloudsearch",
        "protocol" => "query",
        "serviceFullName" => "Amazon CloudSearch",
        "signatureVersion" => "v4",
        "uid" => "cloudsearch-2013-01-01",
        "xmlNamespace" => "http://cloudsearch.amazonaws.com/doc/2013-01-01/",
      }

      api.add_operation(:build_suggesters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "BuildSuggesters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: BuildSuggestersRequest)
        o.output = Shapes::ShapeRef.new(shape: BuildSuggestersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:create_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: CreateDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
      end)

      api.add_operation(:define_analysis_scheme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DefineAnalysisScheme"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DefineAnalysisSchemeRequest)
        o.output = Shapes::ShapeRef.new(shape: DefineAnalysisSchemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:define_expression, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DefineExpression"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DefineExpressionRequest)
        o.output = Shapes::ShapeRef.new(shape: DefineExpressionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:define_index_field, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DefineIndexField"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DefineIndexFieldRequest)
        o.output = Shapes::ShapeRef.new(shape: DefineIndexFieldResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:define_suggester, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DefineSuggester"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DefineSuggesterRequest)
        o.output = Shapes::ShapeRef.new(shape: DefineSuggesterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_analysis_scheme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnalysisScheme"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnalysisSchemeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnalysisSchemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_domain, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDomain"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteDomainRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDomainResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:delete_expression, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteExpression"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteExpressionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteExpressionResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_index_field, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIndexField"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteIndexFieldRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIndexFieldResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:delete_suggester, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteSuggester"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DeleteSuggesterRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteSuggesterResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_analysis_schemes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnalysisSchemes"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnalysisSchemesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnalysisSchemesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_availability_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAvailabilityOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeAvailabilityOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAvailabilityOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:describe_domains, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDomains"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeDomainsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDomainsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
      end)

      api.add_operation(:describe_expressions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeExpressions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeExpressionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeExpressionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_index_fields, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIndexFields"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeIndexFieldsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIndexFieldsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_scaling_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeScalingParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeScalingParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeScalingParametersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_service_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeServiceAccessPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeServiceAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeServiceAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_suggesters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeSuggesters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: DescribeSuggestersRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeSuggestersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:index_documents, Seahorse::Model::Operation.new.tap do |o|
        o.name = "IndexDocuments"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: IndexDocumentsRequest)
        o.output = Shapes::ShapeRef.new(shape: IndexDocumentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:list_domain_names, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDomainNames"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: Shapes::StructureShape.new(struct_class: Aws::EmptyStructure))
        o.output = Shapes::ShapeRef.new(shape: ListDomainNamesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
      end)

      api.add_operation(:update_availability_options, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAvailabilityOptions"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateAvailabilityOptionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAvailabilityOptionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: DisabledOperationException)
      end)

      api.add_operation(:update_scaling_parameters, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateScalingParameters"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateScalingParametersRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateScalingParametersResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)

      api.add_operation(:update_service_access_policies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServiceAccessPolicies"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServiceAccessPoliciesRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServiceAccessPoliciesResponse)
        o.errors << Shapes::ShapeRef.new(shape: BaseException)
        o.errors << Shapes::ShapeRef.new(shape: InternalException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTypeException)
      end)
    end

  end
end
