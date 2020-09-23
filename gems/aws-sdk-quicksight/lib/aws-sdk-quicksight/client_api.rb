# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountCustomization = Shapes::StructureShape.new(name: 'AccountCustomization')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActiveIAMPolicyAssignment = Shapes::StructureShape.new(name: 'ActiveIAMPolicyAssignment')
    ActiveIAMPolicyAssignmentList = Shapes::ListShape.new(name: 'ActiveIAMPolicyAssignmentList')
    AdHocFilteringOption = Shapes::StructureShape.new(name: 'AdHocFilteringOption')
    AliasName = Shapes::StringShape.new(name: 'AliasName')
    AmazonElasticsearchParameters = Shapes::StructureShape.new(name: 'AmazonElasticsearchParameters')
    Analysis = Shapes::StructureShape.new(name: 'Analysis')
    AnalysisError = Shapes::StructureShape.new(name: 'AnalysisError')
    AnalysisErrorList = Shapes::ListShape.new(name: 'AnalysisErrorList')
    AnalysisErrorType = Shapes::StringShape.new(name: 'AnalysisErrorType')
    AnalysisFilterAttribute = Shapes::StringShape.new(name: 'AnalysisFilterAttribute')
    AnalysisName = Shapes::StringShape.new(name: 'AnalysisName')
    AnalysisSearchFilter = Shapes::StructureShape.new(name: 'AnalysisSearchFilter')
    AnalysisSearchFilterList = Shapes::ListShape.new(name: 'AnalysisSearchFilterList')
    AnalysisSourceEntity = Shapes::StructureShape.new(name: 'AnalysisSourceEntity')
    AnalysisSourceTemplate = Shapes::StructureShape.new(name: 'AnalysisSourceTemplate')
    AnalysisSummary = Shapes::StructureShape.new(name: 'AnalysisSummary')
    AnalysisSummaryList = Shapes::ListShape.new(name: 'AnalysisSummaryList')
    Arn = Shapes::StringShape.new(name: 'Arn')
    AssignmentStatus = Shapes::StringShape.new(name: 'AssignmentStatus')
    AthenaParameters = Shapes::StructureShape.new(name: 'AthenaParameters')
    AuroraParameters = Shapes::StructureShape.new(name: 'AuroraParameters')
    AuroraPostgreSqlParameters = Shapes::StructureShape.new(name: 'AuroraPostgreSqlParameters')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAndAccountId = Shapes::StringShape.new(name: 'AwsAndAccountId')
    AwsIotAnalyticsParameters = Shapes::StructureShape.new(name: 'AwsIotAnalyticsParameters')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BorderStyle = Shapes::StructureShape.new(name: 'BorderStyle')
    CalculatedColumn = Shapes::StructureShape.new(name: 'CalculatedColumn')
    CalculatedColumnList = Shapes::ListShape.new(name: 'CalculatedColumnList')
    CancelIngestionRequest = Shapes::StructureShape.new(name: 'CancelIngestionRequest')
    CancelIngestionResponse = Shapes::StructureShape.new(name: 'CancelIngestionResponse')
    CastColumnTypeOperation = Shapes::StructureShape.new(name: 'CastColumnTypeOperation')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ColorList = Shapes::ListShape.new(name: 'ColorList')
    ColumnDataType = Shapes::StringShape.new(name: 'ColumnDataType')
    ColumnGroup = Shapes::StructureShape.new(name: 'ColumnGroup')
    ColumnGroupColumnSchema = Shapes::StructureShape.new(name: 'ColumnGroupColumnSchema')
    ColumnGroupColumnSchemaList = Shapes::ListShape.new(name: 'ColumnGroupColumnSchemaList')
    ColumnGroupList = Shapes::ListShape.new(name: 'ColumnGroupList')
    ColumnGroupName = Shapes::StringShape.new(name: 'ColumnGroupName')
    ColumnGroupSchema = Shapes::StructureShape.new(name: 'ColumnGroupSchema')
    ColumnGroupSchemaList = Shapes::ListShape.new(name: 'ColumnGroupSchemaList')
    ColumnId = Shapes::StringShape.new(name: 'ColumnId')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnSchema = Shapes::StructureShape.new(name: 'ColumnSchema')
    ColumnSchemaList = Shapes::ListShape.new(name: 'ColumnSchemaList')
    ColumnTag = Shapes::StructureShape.new(name: 'ColumnTag')
    ColumnTagList = Shapes::ListShape.new(name: 'ColumnTagList')
    ConcurrentUpdatingException = Shapes::StructureShape.new(name: 'ConcurrentUpdatingException')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    CopySourceArn = Shapes::StringShape.new(name: 'CopySourceArn')
    CreateAccountCustomizationRequest = Shapes::StructureShape.new(name: 'CreateAccountCustomizationRequest')
    CreateAccountCustomizationResponse = Shapes::StructureShape.new(name: 'CreateAccountCustomizationResponse')
    CreateAnalysisRequest = Shapes::StructureShape.new(name: 'CreateAnalysisRequest')
    CreateAnalysisResponse = Shapes::StructureShape.new(name: 'CreateAnalysisResponse')
    CreateColumnsOperation = Shapes::StructureShape.new(name: 'CreateColumnsOperation')
    CreateDashboardRequest = Shapes::StructureShape.new(name: 'CreateDashboardRequest')
    CreateDashboardResponse = Shapes::StructureShape.new(name: 'CreateDashboardResponse')
    CreateDataSetRequest = Shapes::StructureShape.new(name: 'CreateDataSetRequest')
    CreateDataSetResponse = Shapes::StructureShape.new(name: 'CreateDataSetResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateGroupMembershipRequest = Shapes::StructureShape.new(name: 'CreateGroupMembershipRequest')
    CreateGroupMembershipResponse = Shapes::StructureShape.new(name: 'CreateGroupMembershipResponse')
    CreateGroupRequest = Shapes::StructureShape.new(name: 'CreateGroupRequest')
    CreateGroupResponse = Shapes::StructureShape.new(name: 'CreateGroupResponse')
    CreateIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'CreateIAMPolicyAssignmentRequest')
    CreateIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'CreateIAMPolicyAssignmentResponse')
    CreateIngestionRequest = Shapes::StructureShape.new(name: 'CreateIngestionRequest')
    CreateIngestionResponse = Shapes::StructureShape.new(name: 'CreateIngestionResponse')
    CreateNamespaceRequest = Shapes::StructureShape.new(name: 'CreateNamespaceRequest')
    CreateNamespaceResponse = Shapes::StructureShape.new(name: 'CreateNamespaceResponse')
    CreateTemplateAliasRequest = Shapes::StructureShape.new(name: 'CreateTemplateAliasRequest')
    CreateTemplateAliasResponse = Shapes::StructureShape.new(name: 'CreateTemplateAliasResponse')
    CreateTemplateRequest = Shapes::StructureShape.new(name: 'CreateTemplateRequest')
    CreateTemplateResponse = Shapes::StructureShape.new(name: 'CreateTemplateResponse')
    CreateThemeAliasRequest = Shapes::StructureShape.new(name: 'CreateThemeAliasRequest')
    CreateThemeAliasResponse = Shapes::StructureShape.new(name: 'CreateThemeAliasResponse')
    CreateThemeRequest = Shapes::StructureShape.new(name: 'CreateThemeRequest')
    CreateThemeResponse = Shapes::StructureShape.new(name: 'CreateThemeResponse')
    CredentialPair = Shapes::StructureShape.new(name: 'CredentialPair')
    CustomSql = Shapes::StructureShape.new(name: 'CustomSql')
    CustomSqlName = Shapes::StringShape.new(name: 'CustomSqlName')
    Dashboard = Shapes::StructureShape.new(name: 'Dashboard')
    DashboardBehavior = Shapes::StringShape.new(name: 'DashboardBehavior')
    DashboardError = Shapes::StructureShape.new(name: 'DashboardError')
    DashboardErrorList = Shapes::ListShape.new(name: 'DashboardErrorList')
    DashboardErrorType = Shapes::StringShape.new(name: 'DashboardErrorType')
    DashboardFilterAttribute = Shapes::StringShape.new(name: 'DashboardFilterAttribute')
    DashboardName = Shapes::StringShape.new(name: 'DashboardName')
    DashboardPublishOptions = Shapes::StructureShape.new(name: 'DashboardPublishOptions')
    DashboardSearchFilter = Shapes::StructureShape.new(name: 'DashboardSearchFilter')
    DashboardSearchFilterList = Shapes::ListShape.new(name: 'DashboardSearchFilterList')
    DashboardSourceEntity = Shapes::StructureShape.new(name: 'DashboardSourceEntity')
    DashboardSourceTemplate = Shapes::StructureShape.new(name: 'DashboardSourceTemplate')
    DashboardSummary = Shapes::StructureShape.new(name: 'DashboardSummary')
    DashboardSummaryList = Shapes::ListShape.new(name: 'DashboardSummaryList')
    DashboardUIState = Shapes::StringShape.new(name: 'DashboardUIState')
    DashboardVersion = Shapes::StructureShape.new(name: 'DashboardVersion')
    DashboardVersionSummary = Shapes::StructureShape.new(name: 'DashboardVersionSummary')
    DashboardVersionSummaryList = Shapes::ListShape.new(name: 'DashboardVersionSummaryList')
    DataColorPalette = Shapes::StructureShape.new(name: 'DataColorPalette')
    DataSet = Shapes::StructureShape.new(name: 'DataSet')
    DataSetArnsList = Shapes::ListShape.new(name: 'DataSetArnsList')
    DataSetConfiguration = Shapes::StructureShape.new(name: 'DataSetConfiguration')
    DataSetConfigurationList = Shapes::ListShape.new(name: 'DataSetConfigurationList')
    DataSetImportMode = Shapes::StringShape.new(name: 'DataSetImportMode')
    DataSetName = Shapes::StringShape.new(name: 'DataSetName')
    DataSetReference = Shapes::StructureShape.new(name: 'DataSetReference')
    DataSetReferenceList = Shapes::ListShape.new(name: 'DataSetReferenceList')
    DataSetSchema = Shapes::StructureShape.new(name: 'DataSetSchema')
    DataSetSummary = Shapes::StructureShape.new(name: 'DataSetSummary')
    DataSetSummaryList = Shapes::ListShape.new(name: 'DataSetSummaryList')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceCredentials = Shapes::StructureShape.new(name: 'DataSourceCredentials')
    DataSourceErrorInfo = Shapes::StructureShape.new(name: 'DataSourceErrorInfo')
    DataSourceErrorInfoType = Shapes::StringShape.new(name: 'DataSourceErrorInfoType')
    DataSourceList = Shapes::ListShape.new(name: 'DataSourceList')
    DataSourceParameters = Shapes::StructureShape.new(name: 'DataSourceParameters')
    DataSourceParametersList = Shapes::ListShape.new(name: 'DataSourceParametersList')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    Database = Shapes::StringShape.new(name: 'Database')
    DateTimeParameter = Shapes::StructureShape.new(name: 'DateTimeParameter')
    DateTimeParameterList = Shapes::ListShape.new(name: 'DateTimeParameterList')
    DecimalParameter = Shapes::StructureShape.new(name: 'DecimalParameter')
    DecimalParameterList = Shapes::ListShape.new(name: 'DecimalParameterList')
    DeleteAccountCustomizationRequest = Shapes::StructureShape.new(name: 'DeleteAccountCustomizationRequest')
    DeleteAccountCustomizationResponse = Shapes::StructureShape.new(name: 'DeleteAccountCustomizationResponse')
    DeleteAnalysisRequest = Shapes::StructureShape.new(name: 'DeleteAnalysisRequest')
    DeleteAnalysisResponse = Shapes::StructureShape.new(name: 'DeleteAnalysisResponse')
    DeleteDashboardRequest = Shapes::StructureShape.new(name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Shapes::StructureShape.new(name: 'DeleteDashboardResponse')
    DeleteDataSetRequest = Shapes::StructureShape.new(name: 'DeleteDataSetRequest')
    DeleteDataSetResponse = Shapes::StructureShape.new(name: 'DeleteDataSetResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteGroupMembershipRequest = Shapes::StructureShape.new(name: 'DeleteGroupMembershipRequest')
    DeleteGroupMembershipResponse = Shapes::StructureShape.new(name: 'DeleteGroupMembershipResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'DeleteIAMPolicyAssignmentRequest')
    DeleteIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'DeleteIAMPolicyAssignmentResponse')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteNamespaceResponse')
    DeleteTemplateAliasRequest = Shapes::StructureShape.new(name: 'DeleteTemplateAliasRequest')
    DeleteTemplateAliasResponse = Shapes::StructureShape.new(name: 'DeleteTemplateAliasResponse')
    DeleteTemplateRequest = Shapes::StructureShape.new(name: 'DeleteTemplateRequest')
    DeleteTemplateResponse = Shapes::StructureShape.new(name: 'DeleteTemplateResponse')
    DeleteThemeAliasRequest = Shapes::StructureShape.new(name: 'DeleteThemeAliasRequest')
    DeleteThemeAliasResponse = Shapes::StructureShape.new(name: 'DeleteThemeAliasResponse')
    DeleteThemeRequest = Shapes::StructureShape.new(name: 'DeleteThemeRequest')
    DeleteThemeResponse = Shapes::StructureShape.new(name: 'DeleteThemeResponse')
    DeleteUserByPrincipalIdRequest = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdRequest')
    DeleteUserByPrincipalIdResponse = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    Delimiter = Shapes::StringShape.new(name: 'Delimiter')
    DescribeAccountCustomizationRequest = Shapes::StructureShape.new(name: 'DescribeAccountCustomizationRequest')
    DescribeAccountCustomizationResponse = Shapes::StructureShape.new(name: 'DescribeAccountCustomizationResponse')
    DescribeAccountSettingsRequest = Shapes::StructureShape.new(name: 'DescribeAccountSettingsRequest')
    DescribeAccountSettingsResponse = Shapes::StructureShape.new(name: 'DescribeAccountSettingsResponse')
    DescribeAnalysisPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisPermissionsRequest')
    DescribeAnalysisPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisPermissionsResponse')
    DescribeAnalysisRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisRequest')
    DescribeAnalysisResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisResponse')
    DescribeDashboardPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDashboardPermissionsRequest')
    DescribeDashboardPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDashboardPermissionsResponse')
    DescribeDashboardRequest = Shapes::StructureShape.new(name: 'DescribeDashboardRequest')
    DescribeDashboardResponse = Shapes::StructureShape.new(name: 'DescribeDashboardResponse')
    DescribeDataSetPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDataSetPermissionsRequest')
    DescribeDataSetPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDataSetPermissionsResponse')
    DescribeDataSetRequest = Shapes::StructureShape.new(name: 'DescribeDataSetRequest')
    DescribeDataSetResponse = Shapes::StructureShape.new(name: 'DescribeDataSetResponse')
    DescribeDataSourcePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDataSourcePermissionsRequest')
    DescribeDataSourcePermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDataSourcePermissionsResponse')
    DescribeDataSourceRequest = Shapes::StructureShape.new(name: 'DescribeDataSourceRequest')
    DescribeDataSourceResponse = Shapes::StructureShape.new(name: 'DescribeDataSourceResponse')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'DescribeIAMPolicyAssignmentRequest')
    DescribeIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'DescribeIAMPolicyAssignmentResponse')
    DescribeIngestionRequest = Shapes::StructureShape.new(name: 'DescribeIngestionRequest')
    DescribeIngestionResponse = Shapes::StructureShape.new(name: 'DescribeIngestionResponse')
    DescribeNamespaceRequest = Shapes::StructureShape.new(name: 'DescribeNamespaceRequest')
    DescribeNamespaceResponse = Shapes::StructureShape.new(name: 'DescribeNamespaceResponse')
    DescribeTemplateAliasRequest = Shapes::StructureShape.new(name: 'DescribeTemplateAliasRequest')
    DescribeTemplateAliasResponse = Shapes::StructureShape.new(name: 'DescribeTemplateAliasResponse')
    DescribeTemplatePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeTemplatePermissionsRequest')
    DescribeTemplatePermissionsResponse = Shapes::StructureShape.new(name: 'DescribeTemplatePermissionsResponse')
    DescribeTemplateRequest = Shapes::StructureShape.new(name: 'DescribeTemplateRequest')
    DescribeTemplateResponse = Shapes::StructureShape.new(name: 'DescribeTemplateResponse')
    DescribeThemeAliasRequest = Shapes::StructureShape.new(name: 'DescribeThemeAliasRequest')
    DescribeThemeAliasResponse = Shapes::StructureShape.new(name: 'DescribeThemeAliasResponse')
    DescribeThemePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeThemePermissionsRequest')
    DescribeThemePermissionsResponse = Shapes::StructureShape.new(name: 'DescribeThemePermissionsResponse')
    DescribeThemeRequest = Shapes::StructureShape.new(name: 'DescribeThemeRequest')
    DescribeThemeResponse = Shapes::StructureShape.new(name: 'DescribeThemeResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainNotWhitelistedException = Shapes::StructureShape.new(name: 'DomainNotWhitelistedException')
    Double = Shapes::FloatShape.new(name: 'Double')
    DoubleList = Shapes::ListShape.new(name: 'DoubleList')
    Edition = Shapes::StringShape.new(name: 'Edition')
    EmbeddingUrl = Shapes::StringShape.new(name: 'EmbeddingUrl')
    EntryPoint = Shapes::StringShape.new(name: 'EntryPoint')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ExceptionResourceType = Shapes::StringShape.new(name: 'ExceptionResourceType')
    ExportToCSVOption = Shapes::StructureShape.new(name: 'ExportToCSVOption')
    Expression = Shapes::StringShape.new(name: 'Expression')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    FilterOperation = Shapes::StructureShape.new(name: 'FilterOperation')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    GeoSpatialColumnGroup = Shapes::StructureShape.new(name: 'GeoSpatialColumnGroup')
    GeoSpatialCountryCode = Shapes::StringShape.new(name: 'GeoSpatialCountryCode')
    GeoSpatialDataRole = Shapes::StringShape.new(name: 'GeoSpatialDataRole')
    GetDashboardEmbedUrlRequest = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlRequest')
    GetDashboardEmbedUrlResponse = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlResponse')
    GetSessionEmbedUrlRequest = Shapes::StructureShape.new(name: 'GetSessionEmbedUrlRequest')
    GetSessionEmbedUrlResponse = Shapes::StructureShape.new(name: 'GetSessionEmbedUrlResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDescription = Shapes::StringShape.new(name: 'GroupDescription')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupMember = Shapes::StructureShape.new(name: 'GroupMember')
    GroupMemberList = Shapes::ListShape.new(name: 'GroupMemberList')
    GroupMemberName = Shapes::StringShape.new(name: 'GroupMemberName')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GutterStyle = Shapes::StructureShape.new(name: 'GutterStyle')
    HexColor = Shapes::StringShape.new(name: 'HexColor')
    Host = Shapes::StringShape.new(name: 'Host')
    IAMPolicyAssignment = Shapes::StructureShape.new(name: 'IAMPolicyAssignment')
    IAMPolicyAssignmentName = Shapes::StringShape.new(name: 'IAMPolicyAssignmentName')
    IAMPolicyAssignmentSummary = Shapes::StructureShape.new(name: 'IAMPolicyAssignmentSummary')
    IAMPolicyAssignmentSummaryList = Shapes::ListShape.new(name: 'IAMPolicyAssignmentSummaryList')
    IdentityMap = Shapes::MapShape.new(name: 'IdentityMap')
    IdentityName = Shapes::StringShape.new(name: 'IdentityName')
    IdentityNameList = Shapes::ListShape.new(name: 'IdentityNameList')
    IdentityStore = Shapes::StringShape.new(name: 'IdentityStore')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    IdentityTypeNotSupportedException = Shapes::StructureShape.new(name: 'IdentityTypeNotSupportedException')
    Ingestion = Shapes::StructureShape.new(name: 'Ingestion')
    IngestionErrorType = Shapes::StringShape.new(name: 'IngestionErrorType')
    IngestionId = Shapes::StringShape.new(name: 'IngestionId')
    IngestionMaxResults = Shapes::IntegerShape.new(name: 'IngestionMaxResults')
    IngestionRequestSource = Shapes::StringShape.new(name: 'IngestionRequestSource')
    IngestionRequestType = Shapes::StringShape.new(name: 'IngestionRequestType')
    IngestionStatus = Shapes::StringShape.new(name: 'IngestionStatus')
    Ingestions = Shapes::ListShape.new(name: 'Ingestions')
    InputColumn = Shapes::StructureShape.new(name: 'InputColumn')
    InputColumnDataType = Shapes::StringShape.new(name: 'InputColumnDataType')
    InputColumnList = Shapes::ListShape.new(name: 'InputColumnList')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    IntegerParameter = Shapes::StructureShape.new(name: 'IntegerParameter')
    IntegerParameterList = Shapes::ListShape.new(name: 'IntegerParameterList')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    JiraParameters = Shapes::StructureShape.new(name: 'JiraParameters')
    JoinInstruction = Shapes::StructureShape.new(name: 'JoinInstruction')
    JoinType = Shapes::StringShape.new(name: 'JoinType')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    ListAnalysesRequest = Shapes::StructureShape.new(name: 'ListAnalysesRequest')
    ListAnalysesResponse = Shapes::StructureShape.new(name: 'ListAnalysesResponse')
    ListDashboardVersionsRequest = Shapes::StructureShape.new(name: 'ListDashboardVersionsRequest')
    ListDashboardVersionsResponse = Shapes::StructureShape.new(name: 'ListDashboardVersionsResponse')
    ListDashboardsRequest = Shapes::StructureShape.new(name: 'ListDashboardsRequest')
    ListDashboardsResponse = Shapes::StructureShape.new(name: 'ListDashboardsResponse')
    ListDataSetsRequest = Shapes::StructureShape.new(name: 'ListDataSetsRequest')
    ListDataSetsResponse = Shapes::StructureShape.new(name: 'ListDataSetsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListGroupMembershipsRequest = Shapes::StructureShape.new(name: 'ListGroupMembershipsRequest')
    ListGroupMembershipsResponse = Shapes::StructureShape.new(name: 'ListGroupMembershipsResponse')
    ListGroupsRequest = Shapes::StructureShape.new(name: 'ListGroupsRequest')
    ListGroupsResponse = Shapes::StructureShape.new(name: 'ListGroupsResponse')
    ListIAMPolicyAssignmentsForUserRequest = Shapes::StructureShape.new(name: 'ListIAMPolicyAssignmentsForUserRequest')
    ListIAMPolicyAssignmentsForUserResponse = Shapes::StructureShape.new(name: 'ListIAMPolicyAssignmentsForUserResponse')
    ListIAMPolicyAssignmentsRequest = Shapes::StructureShape.new(name: 'ListIAMPolicyAssignmentsRequest')
    ListIAMPolicyAssignmentsResponse = Shapes::StructureShape.new(name: 'ListIAMPolicyAssignmentsResponse')
    ListIngestionsRequest = Shapes::StructureShape.new(name: 'ListIngestionsRequest')
    ListIngestionsResponse = Shapes::StructureShape.new(name: 'ListIngestionsResponse')
    ListNamespacesRequest = Shapes::StructureShape.new(name: 'ListNamespacesRequest')
    ListNamespacesResponse = Shapes::StructureShape.new(name: 'ListNamespacesResponse')
    ListTagsForResourceRequest = Shapes::StructureShape.new(name: 'ListTagsForResourceRequest')
    ListTagsForResourceResponse = Shapes::StructureShape.new(name: 'ListTagsForResourceResponse')
    ListTemplateAliasesRequest = Shapes::StructureShape.new(name: 'ListTemplateAliasesRequest')
    ListTemplateAliasesResponse = Shapes::StructureShape.new(name: 'ListTemplateAliasesResponse')
    ListTemplateVersionsRequest = Shapes::StructureShape.new(name: 'ListTemplateVersionsRequest')
    ListTemplateVersionsResponse = Shapes::StructureShape.new(name: 'ListTemplateVersionsResponse')
    ListTemplatesRequest = Shapes::StructureShape.new(name: 'ListTemplatesRequest')
    ListTemplatesResponse = Shapes::StructureShape.new(name: 'ListTemplatesResponse')
    ListThemeAliasesRequest = Shapes::StructureShape.new(name: 'ListThemeAliasesRequest')
    ListThemeAliasesResponse = Shapes::StructureShape.new(name: 'ListThemeAliasesResponse')
    ListThemeVersionsRequest = Shapes::StructureShape.new(name: 'ListThemeVersionsRequest')
    ListThemeVersionsResponse = Shapes::StructureShape.new(name: 'ListThemeVersionsResponse')
    ListThemesRequest = Shapes::StructureShape.new(name: 'ListThemesRequest')
    ListThemesResponse = Shapes::StructureShape.new(name: 'ListThemesResponse')
    ListUserGroupsRequest = Shapes::StructureShape.new(name: 'ListUserGroupsRequest')
    ListUserGroupsResponse = Shapes::StructureShape.new(name: 'ListUserGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    LogicalTable = Shapes::StructureShape.new(name: 'LogicalTable')
    LogicalTableAlias = Shapes::StringShape.new(name: 'LogicalTableAlias')
    LogicalTableId = Shapes::StringShape.new(name: 'LogicalTableId')
    LogicalTableMap = Shapes::MapShape.new(name: 'LogicalTableMap')
    LogicalTableSource = Shapes::StructureShape.new(name: 'LogicalTableSource')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongList = Shapes::ListShape.new(name: 'LongList')
    ManifestFileLocation = Shapes::StructureShape.new(name: 'ManifestFileLocation')
    MarginStyle = Shapes::StructureShape.new(name: 'MarginStyle')
    MariaDbParameters = Shapes::StructureShape.new(name: 'MariaDbParameters')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MySqlParameters = Shapes::StructureShape.new(name: 'MySqlParameters')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespaceError = Shapes::StructureShape.new(name: 'NamespaceError')
    NamespaceErrorType = Shapes::StringShape.new(name: 'NamespaceErrorType')
    NamespaceInfoV2 = Shapes::StructureShape.new(name: 'NamespaceInfoV2')
    NamespaceStatus = Shapes::StringShape.new(name: 'NamespaceStatus')
    Namespaces = Shapes::ListShape.new(name: 'Namespaces')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    OnClause = Shapes::StringShape.new(name: 'OnClause')
    OptionalPort = Shapes::IntegerShape.new(name: 'OptionalPort')
    OutputColumn = Shapes::StructureShape.new(name: 'OutputColumn')
    OutputColumnList = Shapes::ListShape.new(name: 'OutputColumnList')
    Parameters = Shapes::StructureShape.new(name: 'Parameters')
    Password = Shapes::StringShape.new(name: 'Password')
    PhysicalTable = Shapes::StructureShape.new(name: 'PhysicalTable')
    PhysicalTableId = Shapes::StringShape.new(name: 'PhysicalTableId')
    PhysicalTableMap = Shapes::MapShape.new(name: 'PhysicalTableMap')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PostgreSqlParameters = Shapes::StructureShape.new(name: 'PostgreSqlParameters')
    PreconditionNotMetException = Shapes::StructureShape.new(name: 'PreconditionNotMetException')
    PrestoParameters = Shapes::StructureShape.new(name: 'PrestoParameters')
    Principal = Shapes::StringShape.new(name: 'Principal')
    ProjectOperation = Shapes::StructureShape.new(name: 'ProjectOperation')
    ProjectedColumnList = Shapes::ListShape.new(name: 'ProjectedColumnList')
    Query = Shapes::StringShape.new(name: 'Query')
    QueueInfo = Shapes::StructureShape.new(name: 'QueueInfo')
    QuickSightUserNotFoundException = Shapes::StructureShape.new(name: 'QuickSightUserNotFoundException')
    RdsParameters = Shapes::StructureShape.new(name: 'RdsParameters')
    RecoveryWindowInDays = Shapes::IntegerShape.new(name: 'RecoveryWindowInDays')
    RedshiftParameters = Shapes::StructureShape.new(name: 'RedshiftParameters')
    RegisterUserRequest = Shapes::StructureShape.new(name: 'RegisterUserRequest')
    RegisterUserResponse = Shapes::StructureShape.new(name: 'RegisterUserResponse')
    RelationalTable = Shapes::StructureShape.new(name: 'RelationalTable')
    RelationalTableName = Shapes::StringShape.new(name: 'RelationalTableName')
    RelationalTableSchema = Shapes::StringShape.new(name: 'RelationalTableSchema')
    RenameColumnOperation = Shapes::StructureShape.new(name: 'RenameColumnOperation')
    ResourceExistsException = Shapes::StructureShape.new(name: 'ResourceExistsException')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourcePermission = Shapes::StructureShape.new(name: 'ResourcePermission')
    ResourcePermissionList = Shapes::ListShape.new(name: 'ResourcePermissionList')
    ResourceStatus = Shapes::StringShape.new(name: 'ResourceStatus')
    ResourceUnavailableException = Shapes::StructureShape.new(name: 'ResourceUnavailableException')
    RestoreAnalysisRequest = Shapes::StructureShape.new(name: 'RestoreAnalysisRequest')
    RestoreAnalysisResponse = Shapes::StructureShape.new(name: 'RestoreAnalysisResponse')
    RestrictiveResourceId = Shapes::StringShape.new(name: 'RestrictiveResourceId')
    RoleName = Shapes::StringShape.new(name: 'RoleName')
    RoleSessionName = Shapes::StringShape.new(name: 'RoleSessionName')
    RowInfo = Shapes::StructureShape.new(name: 'RowInfo')
    RowLevelPermissionDataSet = Shapes::StructureShape.new(name: 'RowLevelPermissionDataSet')
    RowLevelPermissionPolicy = Shapes::StringShape.new(name: 'RowLevelPermissionPolicy')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Parameters = Shapes::StructureShape.new(name: 'S3Parameters')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    SearchAnalysesRequest = Shapes::StructureShape.new(name: 'SearchAnalysesRequest')
    SearchAnalysesResponse = Shapes::StructureShape.new(name: 'SearchAnalysesResponse')
    SearchDashboardsRequest = Shapes::StructureShape.new(name: 'SearchDashboardsRequest')
    SearchDashboardsResponse = Shapes::StructureShape.new(name: 'SearchDashboardsResponse')
    ServiceNowParameters = Shapes::StructureShape.new(name: 'ServiceNowParameters')
    SessionLifetimeInMinutes = Shapes::IntegerShape.new(name: 'SessionLifetimeInMinutes')
    SessionLifetimeInMinutesInvalidException = Shapes::StructureShape.new(name: 'SessionLifetimeInMinutesInvalidException')
    Sheet = Shapes::StructureShape.new(name: 'Sheet')
    SheetControlsOption = Shapes::StructureShape.new(name: 'SheetControlsOption')
    SheetList = Shapes::ListShape.new(name: 'SheetList')
    SheetStyle = Shapes::StructureShape.new(name: 'SheetStyle')
    SiteBaseUrl = Shapes::StringShape.new(name: 'SiteBaseUrl')
    SnowflakeParameters = Shapes::StructureShape.new(name: 'SnowflakeParameters')
    SparkParameters = Shapes::StructureShape.new(name: 'SparkParameters')
    SqlQuery = Shapes::StringShape.new(name: 'SqlQuery')
    SqlServerParameters = Shapes::StructureShape.new(name: 'SqlServerParameters')
    SslProperties = Shapes::StructureShape.new(name: 'SslProperties')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    String = Shapes::StringShape.new(name: 'String')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringParameter = Shapes::StructureShape.new(name: 'StringParameter')
    StringParameterList = Shapes::ListShape.new(name: 'StringParameterList')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagColumnOperation = Shapes::StructureShape.new(name: 'TagColumnOperation')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    Template = Shapes::StructureShape.new(name: 'Template')
    TemplateAlias = Shapes::StructureShape.new(name: 'TemplateAlias')
    TemplateAliasList = Shapes::ListShape.new(name: 'TemplateAliasList')
    TemplateError = Shapes::StructureShape.new(name: 'TemplateError')
    TemplateErrorList = Shapes::ListShape.new(name: 'TemplateErrorList')
    TemplateErrorType = Shapes::StringShape.new(name: 'TemplateErrorType')
    TemplateName = Shapes::StringShape.new(name: 'TemplateName')
    TemplateSourceAnalysis = Shapes::StructureShape.new(name: 'TemplateSourceAnalysis')
    TemplateSourceEntity = Shapes::StructureShape.new(name: 'TemplateSourceEntity')
    TemplateSourceTemplate = Shapes::StructureShape.new(name: 'TemplateSourceTemplate')
    TemplateSummary = Shapes::StructureShape.new(name: 'TemplateSummary')
    TemplateSummaryList = Shapes::ListShape.new(name: 'TemplateSummaryList')
    TemplateVersion = Shapes::StructureShape.new(name: 'TemplateVersion')
    TemplateVersionSummary = Shapes::StructureShape.new(name: 'TemplateVersionSummary')
    TemplateVersionSummaryList = Shapes::ListShape.new(name: 'TemplateVersionSummaryList')
    TeradataParameters = Shapes::StructureShape.new(name: 'TeradataParameters')
    TextQualifier = Shapes::StringShape.new(name: 'TextQualifier')
    Theme = Shapes::StructureShape.new(name: 'Theme')
    ThemeAlias = Shapes::StructureShape.new(name: 'ThemeAlias')
    ThemeAliasList = Shapes::ListShape.new(name: 'ThemeAliasList')
    ThemeConfiguration = Shapes::StructureShape.new(name: 'ThemeConfiguration')
    ThemeError = Shapes::StructureShape.new(name: 'ThemeError')
    ThemeErrorList = Shapes::ListShape.new(name: 'ThemeErrorList')
    ThemeErrorType = Shapes::StringShape.new(name: 'ThemeErrorType')
    ThemeName = Shapes::StringShape.new(name: 'ThemeName')
    ThemeSummary = Shapes::StructureShape.new(name: 'ThemeSummary')
    ThemeSummaryList = Shapes::ListShape.new(name: 'ThemeSummaryList')
    ThemeType = Shapes::StringShape.new(name: 'ThemeType')
    ThemeVersion = Shapes::StructureShape.new(name: 'ThemeVersion')
    ThemeVersionSummary = Shapes::StructureShape.new(name: 'ThemeVersionSummary')
    ThemeVersionSummaryList = Shapes::ListShape.new(name: 'ThemeVersionSummaryList')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TileLayoutStyle = Shapes::StructureShape.new(name: 'TileLayoutStyle')
    TileStyle = Shapes::StructureShape.new(name: 'TileStyle')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TimestampList = Shapes::ListShape.new(name: 'TimestampList')
    TransformOperation = Shapes::StructureShape.new(name: 'TransformOperation')
    TransformOperationList = Shapes::ListShape.new(name: 'TransformOperationList')
    TwitterParameters = Shapes::StructureShape.new(name: 'TwitterParameters')
    TypeCastFormat = Shapes::StringShape.new(name: 'TypeCastFormat')
    UIColorPalette = Shapes::StructureShape.new(name: 'UIColorPalette')
    UnsupportedUserEditionException = Shapes::StructureShape.new(name: 'UnsupportedUserEditionException')
    UntagResourceRequest = Shapes::StructureShape.new(name: 'UntagResourceRequest')
    UntagResourceResponse = Shapes::StructureShape.new(name: 'UntagResourceResponse')
    UpdateAccountCustomizationRequest = Shapes::StructureShape.new(name: 'UpdateAccountCustomizationRequest')
    UpdateAccountCustomizationResponse = Shapes::StructureShape.new(name: 'UpdateAccountCustomizationResponse')
    UpdateAccountSettingsRequest = Shapes::StructureShape.new(name: 'UpdateAccountSettingsRequest')
    UpdateAccountSettingsResponse = Shapes::StructureShape.new(name: 'UpdateAccountSettingsResponse')
    UpdateAnalysisPermissionsRequest = Shapes::StructureShape.new(name: 'UpdateAnalysisPermissionsRequest')
    UpdateAnalysisPermissionsResponse = Shapes::StructureShape.new(name: 'UpdateAnalysisPermissionsResponse')
    UpdateAnalysisRequest = Shapes::StructureShape.new(name: 'UpdateAnalysisRequest')
    UpdateAnalysisResponse = Shapes::StructureShape.new(name: 'UpdateAnalysisResponse')
    UpdateDashboardPermissionsRequest = Shapes::StructureShape.new(name: 'UpdateDashboardPermissionsRequest')
    UpdateDashboardPermissionsResponse = Shapes::StructureShape.new(name: 'UpdateDashboardPermissionsResponse')
    UpdateDashboardPublishedVersionRequest = Shapes::StructureShape.new(name: 'UpdateDashboardPublishedVersionRequest')
    UpdateDashboardPublishedVersionResponse = Shapes::StructureShape.new(name: 'UpdateDashboardPublishedVersionResponse')
    UpdateDashboardRequest = Shapes::StructureShape.new(name: 'UpdateDashboardRequest')
    UpdateDashboardResponse = Shapes::StructureShape.new(name: 'UpdateDashboardResponse')
    UpdateDataSetPermissionsRequest = Shapes::StructureShape.new(name: 'UpdateDataSetPermissionsRequest')
    UpdateDataSetPermissionsResponse = Shapes::StructureShape.new(name: 'UpdateDataSetPermissionsResponse')
    UpdateDataSetRequest = Shapes::StructureShape.new(name: 'UpdateDataSetRequest')
    UpdateDataSetResponse = Shapes::StructureShape.new(name: 'UpdateDataSetResponse')
    UpdateDataSourcePermissionsRequest = Shapes::StructureShape.new(name: 'UpdateDataSourcePermissionsRequest')
    UpdateDataSourcePermissionsResponse = Shapes::StructureShape.new(name: 'UpdateDataSourcePermissionsResponse')
    UpdateDataSourceRequest = Shapes::StructureShape.new(name: 'UpdateDataSourceRequest')
    UpdateDataSourceResponse = Shapes::StructureShape.new(name: 'UpdateDataSourceResponse')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'UpdateIAMPolicyAssignmentRequest')
    UpdateIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'UpdateIAMPolicyAssignmentResponse')
    UpdateResourcePermissionList = Shapes::ListShape.new(name: 'UpdateResourcePermissionList')
    UpdateTemplateAliasRequest = Shapes::StructureShape.new(name: 'UpdateTemplateAliasRequest')
    UpdateTemplateAliasResponse = Shapes::StructureShape.new(name: 'UpdateTemplateAliasResponse')
    UpdateTemplatePermissionsRequest = Shapes::StructureShape.new(name: 'UpdateTemplatePermissionsRequest')
    UpdateTemplatePermissionsResponse = Shapes::StructureShape.new(name: 'UpdateTemplatePermissionsResponse')
    UpdateTemplateRequest = Shapes::StructureShape.new(name: 'UpdateTemplateRequest')
    UpdateTemplateResponse = Shapes::StructureShape.new(name: 'UpdateTemplateResponse')
    UpdateThemeAliasRequest = Shapes::StructureShape.new(name: 'UpdateThemeAliasRequest')
    UpdateThemeAliasResponse = Shapes::StructureShape.new(name: 'UpdateThemeAliasResponse')
    UpdateThemePermissionsRequest = Shapes::StructureShape.new(name: 'UpdateThemePermissionsRequest')
    UpdateThemePermissionsResponse = Shapes::StructureShape.new(name: 'UpdateThemePermissionsResponse')
    UpdateThemeRequest = Shapes::StructureShape.new(name: 'UpdateThemeRequest')
    UpdateThemeResponse = Shapes::StructureShape.new(name: 'UpdateThemeResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UploadSettings = Shapes::StructureShape.new(name: 'UploadSettings')
    User = Shapes::StructureShape.new(name: 'User')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserRole = Shapes::StringShape.new(name: 'UserRole')
    Username = Shapes::StringShape.new(name: 'Username')
    VersionDescription = Shapes::StringShape.new(name: 'VersionDescription')
    VersionNumber = Shapes::IntegerShape.new(name: 'VersionNumber')
    VpcConnectionProperties = Shapes::StructureShape.new(name: 'VpcConnectionProperties')
    Warehouse = Shapes::StringShape.new(name: 'Warehouse')
    WorkGroup = Shapes::StringShape.new(name: 'WorkGroup')
    boolean = Shapes::BooleanShape.new(name: 'boolean')
    long = Shapes::IntegerShape.new(name: 'long')
    string = Shapes::StringShape.new(name: 'string')
    timestamp = Shapes::TimestampShape.new(name: 'timestamp')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountCustomization.add_member(:default_theme, Shapes::ShapeRef.new(shape: Arn, location_name: "DefaultTheme"))
    AccountCustomization.struct_class = Types::AccountCustomization

    AccountSettings.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountName"))
    AccountSettings.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, location_name: "Edition"))
    AccountSettings.add_member(:default_namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "DefaultNamespace"))
    AccountSettings.add_member(:notification_email, Shapes::ShapeRef.new(shape: String, location_name: "NotificationEmail"))
    AccountSettings.struct_class = Types::AccountSettings

    ActionList.member = Shapes::ShapeRef.new(shape: String)

    ActiveIAMPolicyAssignment.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    ActiveIAMPolicyAssignment.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    ActiveIAMPolicyAssignment.struct_class = Types::ActiveIAMPolicyAssignment

    ActiveIAMPolicyAssignmentList.member = Shapes::ShapeRef.new(shape: ActiveIAMPolicyAssignment)

    AdHocFilteringOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    AdHocFilteringOption.struct_class = Types::AdHocFilteringOption

    AmazonElasticsearchParameters.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    AmazonElasticsearchParameters.struct_class = Types::AmazonElasticsearchParameters

    Analysis.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    Analysis.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Analysis.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, location_name: "Name"))
    Analysis.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    Analysis.add_member(:errors, Shapes::ShapeRef.new(shape: AnalysisErrorList, location_name: "Errors"))
    Analysis.add_member(:data_set_arns, Shapes::ShapeRef.new(shape: DataSetArnsList, location_name: "DataSetArns"))
    Analysis.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    Analysis.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Analysis.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Analysis.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetList, location_name: "Sheets"))
    Analysis.struct_class = Types::Analysis

    AnalysisError.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisErrorType, location_name: "Type"))
    AnalysisError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AnalysisError.struct_class = Types::AnalysisError

    AnalysisErrorList.member = Shapes::ShapeRef.new(shape: AnalysisError)

    AnalysisSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, location_name: "Operator"))
    AnalysisSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisFilterAttribute, location_name: "Name"))
    AnalysisSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    AnalysisSearchFilter.struct_class = Types::AnalysisSearchFilter

    AnalysisSearchFilterList.member = Shapes::ShapeRef.new(shape: AnalysisSearchFilter)

    AnalysisSourceEntity.add_member(:source_template, Shapes::ShapeRef.new(shape: AnalysisSourceTemplate, location_name: "SourceTemplate"))
    AnalysisSourceEntity.struct_class = Types::AnalysisSourceEntity

    AnalysisSourceTemplate.add_member(:data_set_references, Shapes::ShapeRef.new(shape: DataSetReferenceList, required: true, location_name: "DataSetReferences"))
    AnalysisSourceTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    AnalysisSourceTemplate.struct_class = Types::AnalysisSourceTemplate

    AnalysisSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AnalysisSummary.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    AnalysisSummary.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, location_name: "Name"))
    AnalysisSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    AnalysisSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AnalysisSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    AnalysisSummary.struct_class = Types::AnalysisSummary

    AnalysisSummaryList.member = Shapes::ShapeRef.new(shape: AnalysisSummary)

    AthenaParameters.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroup, location_name: "WorkGroup"))
    AthenaParameters.struct_class = Types::AthenaParameters

    AuroraParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    AuroraParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    AuroraParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    AuroraParameters.struct_class = Types::AuroraParameters

    AuroraPostgreSqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    AuroraPostgreSqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    AuroraPostgreSqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    AuroraPostgreSqlParameters.struct_class = Types::AuroraPostgreSqlParameters

    AwsIotAnalyticsParameters.add_member(:data_set_name, Shapes::ShapeRef.new(shape: DataSetName, required: true, location_name: "DataSetName"))
    AwsIotAnalyticsParameters.struct_class = Types::AwsIotAnalyticsParameters

    BorderStyle.add_member(:show, Shapes::ShapeRef.new(shape: boolean, location_name: "Show", metadata: {"box"=>true}))
    BorderStyle.struct_class = Types::BorderStyle

    CalculatedColumn.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    CalculatedColumn.add_member(:column_id, Shapes::ShapeRef.new(shape: ColumnId, required: true, location_name: "ColumnId"))
    CalculatedColumn.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    CalculatedColumn.struct_class = Types::CalculatedColumn

    CalculatedColumnList.member = Shapes::ShapeRef.new(shape: CalculatedColumn)

    CancelIngestionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CancelIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DataSetId"))
    CancelIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    CancelIngestionRequest.struct_class = Types::CancelIngestionRequest

    CancelIngestionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CancelIngestionResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    CancelIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: string, location_name: "RequestId"))
    CancelIngestionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CancelIngestionResponse.struct_class = Types::CancelIngestionResponse

    CastColumnTypeOperation.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    CastColumnTypeOperation.add_member(:new_column_type, Shapes::ShapeRef.new(shape: ColumnDataType, required: true, location_name: "NewColumnType"))
    CastColumnTypeOperation.add_member(:format, Shapes::ShapeRef.new(shape: TypeCastFormat, location_name: "Format"))
    CastColumnTypeOperation.struct_class = Types::CastColumnTypeOperation

    ColorList.member = Shapes::ShapeRef.new(shape: HexColor)

    ColumnGroup.add_member(:geo_spatial_column_group, Shapes::ShapeRef.new(shape: GeoSpatialColumnGroup, location_name: "GeoSpatialColumnGroup"))
    ColumnGroup.struct_class = Types::ColumnGroup

    ColumnGroupColumnSchema.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnGroupColumnSchema.struct_class = Types::ColumnGroupColumnSchema

    ColumnGroupColumnSchemaList.member = Shapes::ShapeRef.new(shape: ColumnGroupColumnSchema)

    ColumnGroupList.member = Shapes::ShapeRef.new(shape: ColumnGroup)

    ColumnGroupSchema.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnGroupSchema.add_member(:column_group_column_schema_list, Shapes::ShapeRef.new(shape: ColumnGroupColumnSchemaList, location_name: "ColumnGroupColumnSchemaList"))
    ColumnGroupSchema.struct_class = Types::ColumnGroupSchema

    ColumnGroupSchemaList.member = Shapes::ShapeRef.new(shape: ColumnGroupSchema)

    ColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

    ColumnSchema.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnSchema.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    ColumnSchema.add_member(:geographic_role, Shapes::ShapeRef.new(shape: String, location_name: "GeographicRole"))
    ColumnSchema.struct_class = Types::ColumnSchema

    ColumnSchemaList.member = Shapes::ShapeRef.new(shape: ColumnSchema)

    ColumnTag.add_member(:column_geographic_role, Shapes::ShapeRef.new(shape: GeoSpatialDataRole, location_name: "ColumnGeographicRole"))
    ColumnTag.struct_class = Types::ColumnTag

    ColumnTagList.member = Shapes::ShapeRef.new(shape: ColumnTag)

    ConcurrentUpdatingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentUpdatingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConcurrentUpdatingException.struct_class = Types::ConcurrentUpdatingException

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConflictException.struct_class = Types::ConflictException

    CreateAccountCustomizationRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateAccountCustomizationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    CreateAccountCustomizationRequest.add_member(:account_customization, Shapes::ShapeRef.new(shape: AccountCustomization, required: true, location_name: "AccountCustomization"))
    CreateAccountCustomizationRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAccountCustomizationRequest.struct_class = Types::CreateAccountCustomizationRequest

    CreateAccountCustomizationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateAccountCustomizationResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    CreateAccountCustomizationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    CreateAccountCustomizationResponse.add_member(:account_customization, Shapes::ShapeRef.new(shape: AccountCustomization, location_name: "AccountCustomization"))
    CreateAccountCustomizationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateAccountCustomizationResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateAccountCustomizationResponse.struct_class = Types::CreateAccountCustomizationResponse

    CreateAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    CreateAnalysisRequest.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, required: true, location_name: "Name"))
    CreateAnalysisRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAnalysisRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateAnalysisRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: AnalysisSourceEntity, required: true, location_name: "SourceEntity"))
    CreateAnalysisRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    CreateAnalysisRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAnalysisRequest.struct_class = Types::CreateAnalysisRequest

    CreateAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    CreateAnalysisResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateAnalysisResponse.struct_class = Types::CreateAnalysisResponse

    CreateColumnsOperation.add_member(:columns, Shapes::ShapeRef.new(shape: CalculatedColumnList, required: true, location_name: "Columns"))
    CreateColumnsOperation.struct_class = Types::CreateColumnsOperation

    CreateDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    CreateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "Name"))
    CreateDashboardRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateDashboardRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateDashboardRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: DashboardSourceEntity, required: true, location_name: "SourceEntity"))
    CreateDashboardRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDashboardRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateDashboardRequest.add_member(:dashboard_publish_options, Shapes::ShapeRef.new(shape: DashboardPublishOptions, location_name: "DashboardPublishOptions"))
    CreateDashboardRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    CreateDashboardRequest.struct_class = Types::CreateDashboardRequest

    CreateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDashboardResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    CreateDashboardResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateDashboardResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateDashboardResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateDashboardResponse.struct_class = Types::CreateDashboardResponse

    CreateDataSetRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataSetId"))
    CreateDataSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateDataSetRequest.add_member(:physical_table_map, Shapes::ShapeRef.new(shape: PhysicalTableMap, required: true, location_name: "PhysicalTableMap"))
    CreateDataSetRequest.add_member(:logical_table_map, Shapes::ShapeRef.new(shape: LogicalTableMap, location_name: "LogicalTableMap"))
    CreateDataSetRequest.add_member(:import_mode, Shapes::ShapeRef.new(shape: DataSetImportMode, required: true, location_name: "ImportMode"))
    CreateDataSetRequest.add_member(:column_groups, Shapes::ShapeRef.new(shape: ColumnGroupList, location_name: "ColumnGroups"))
    CreateDataSetRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateDataSetRequest.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    CreateDataSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSetRequest.struct_class = Types::CreateDataSetRequest

    CreateDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDataSetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    CreateDataSetResponse.add_member(:ingestion_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IngestionArn"))
    CreateDataSetResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IngestionId"))
    CreateDataSetResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateDataSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateDataSetResponse.struct_class = Types::CreateDataSetResponse

    CreateDataSourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataSourceId"))
    CreateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateDataSourceRequest.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, required: true, location_name: "Type"))
    CreateDataSourceRequest.add_member(:data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParameters, location_name: "DataSourceParameters"))
    CreateDataSourceRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: DataSourceCredentials, location_name: "Credentials"))
    CreateDataSourceRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateDataSourceRequest.add_member(:vpc_connection_properties, Shapes::ShapeRef.new(shape: VpcConnectionProperties, location_name: "VpcConnectionProperties"))
    CreateDataSourceRequest.add_member(:ssl_properties, Shapes::ShapeRef.new(shape: SslProperties, location_name: "SslProperties"))
    CreateDataSourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSourceRequest.struct_class = Types::CreateDataSourceRequest

    CreateDataSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    CreateDataSourceResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateDataSourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateDataSourceResponse.struct_class = Types::CreateDataSourceResponse

    CreateGroupMembershipRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, required: true, location: "uri", location_name: "MemberName"))
    CreateGroupMembershipRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    CreateGroupMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateGroupMembershipRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    CreateGroupMembershipRequest.struct_class = Types::CreateGroupMembershipRequest

    CreateGroupMembershipResponse.add_member(:group_member, Shapes::ShapeRef.new(shape: GroupMember, location_name: "GroupMember"))
    CreateGroupMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateGroupMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateGroupMembershipResponse.struct_class = Types::CreateGroupMembershipResponse

    CreateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location_name: "GroupName"))
    CreateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    CreateGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    CreateGroupRequest.struct_class = Types::CreateGroupRequest

    CreateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    CreateGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateGroupResponse.struct_class = Types::CreateGroupResponse

    CreateIAMPolicyAssignmentRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateIAMPolicyAssignmentRequest.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, required: true, location_name: "AssignmentName"))
    CreateIAMPolicyAssignmentRequest.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, required: true, location_name: "AssignmentStatus"))
    CreateIAMPolicyAssignmentRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    CreateIAMPolicyAssignmentRequest.add_member(:identities, Shapes::ShapeRef.new(shape: IdentityMap, location_name: "Identities"))
    CreateIAMPolicyAssignmentRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    CreateIAMPolicyAssignmentRequest.struct_class = Types::CreateIAMPolicyAssignmentRequest

    CreateIAMPolicyAssignmentResponse.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    CreateIAMPolicyAssignmentResponse.add_member(:assignment_id, Shapes::ShapeRef.new(shape: String, location_name: "AssignmentId"))
    CreateIAMPolicyAssignmentResponse.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    CreateIAMPolicyAssignmentResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    CreateIAMPolicyAssignmentResponse.add_member(:identities, Shapes::ShapeRef.new(shape: IdentityMap, location_name: "Identities"))
    CreateIAMPolicyAssignmentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateIAMPolicyAssignmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateIAMPolicyAssignmentResponse.struct_class = Types::CreateIAMPolicyAssignmentResponse

    CreateIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DataSetId"))
    CreateIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    CreateIngestionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateIngestionRequest.struct_class = Types::CreateIngestionRequest

    CreateIngestionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateIngestionResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    CreateIngestionResponse.add_member(:ingestion_status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "IngestionStatus"))
    CreateIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: string, location_name: "RequestId"))
    CreateIngestionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateIngestionResponse.struct_class = Types::CreateIngestionResponse

    CreateNamespaceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    CreateNamespaceRequest.add_member(:identity_store, Shapes::ShapeRef.new(shape: IdentityStore, required: true, location_name: "IdentityStore"))
    CreateNamespaceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateNamespaceRequest.struct_class = Types::CreateNamespaceRequest

    CreateNamespaceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateNamespaceResponse.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, location_name: "Name"))
    CreateNamespaceResponse.add_member(:capacity_region, Shapes::ShapeRef.new(shape: String, location_name: "CapacityRegion"))
    CreateNamespaceResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: NamespaceStatus, location_name: "CreationStatus"))
    CreateNamespaceResponse.add_member(:identity_store, Shapes::ShapeRef.new(shape: IdentityStore, location_name: "IdentityStore"))
    CreateNamespaceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateNamespaceResponse.struct_class = Types::CreateNamespaceResponse

    CreateTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    CreateTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    CreateTemplateAliasRequest.add_member(:template_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "TemplateVersionNumber"))
    CreateTemplateAliasRequest.struct_class = Types::CreateTemplateAliasRequest

    CreateTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    CreateTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTemplateAliasResponse.struct_class = Types::CreateTemplateAliasResponse

    CreateTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    CreateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    CreateTemplateRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateTemplateRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: TemplateSourceEntity, required: true, location_name: "SourceEntity"))
    CreateTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTemplateRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateTemplateRequest.struct_class = Types::CreateTemplateRequest

    CreateTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateTemplateResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    CreateTemplateResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTemplateResponse.struct_class = Types::CreateTemplateResponse

    CreateThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    CreateThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    CreateThemeAliasRequest.add_member(:theme_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "ThemeVersionNumber"))
    CreateThemeAliasRequest.struct_class = Types::CreateThemeAliasRequest

    CreateThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    CreateThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateThemeAliasResponse.struct_class = Types::CreateThemeAliasResponse

    CreateThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    CreateThemeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "Name"))
    CreateThemeRequest.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location_name: "BaseThemeId"))
    CreateThemeRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateThemeRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ThemeConfiguration, required: true, location_name: "Configuration"))
    CreateThemeRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateThemeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateThemeRequest.struct_class = Types::CreateThemeRequest

    CreateThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateThemeResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    CreateThemeResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateThemeResponse.struct_class = Types::CreateThemeResponse

    CredentialPair.add_member(:username, Shapes::ShapeRef.new(shape: Username, required: true, location_name: "Username"))
    CredentialPair.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    CredentialPair.add_member(:alternate_data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParametersList, location_name: "AlternateDataSourceParameters"))
    CredentialPair.struct_class = Types::CredentialPair

    CustomSql.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    CustomSql.add_member(:name, Shapes::ShapeRef.new(shape: CustomSqlName, required: true, location_name: "Name"))
    CustomSql.add_member(:sql_query, Shapes::ShapeRef.new(shape: SqlQuery, required: true, location_name: "SqlQuery"))
    CustomSql.add_member(:columns, Shapes::ShapeRef.new(shape: InputColumnList, location_name: "Columns"))
    CustomSql.struct_class = Types::CustomSql

    Dashboard.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    Dashboard.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Dashboard.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "Name"))
    Dashboard.add_member(:version, Shapes::ShapeRef.new(shape: DashboardVersion, location_name: "Version"))
    Dashboard.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Dashboard.add_member(:last_published_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastPublishedTime"))
    Dashboard.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Dashboard.struct_class = Types::Dashboard

    DashboardError.add_member(:type, Shapes::ShapeRef.new(shape: DashboardErrorType, location_name: "Type"))
    DashboardError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    DashboardError.struct_class = Types::DashboardError

    DashboardErrorList.member = Shapes::ShapeRef.new(shape: DashboardError)

    DashboardPublishOptions.add_member(:ad_hoc_filtering_option, Shapes::ShapeRef.new(shape: AdHocFilteringOption, location_name: "AdHocFilteringOption"))
    DashboardPublishOptions.add_member(:export_to_csv_option, Shapes::ShapeRef.new(shape: ExportToCSVOption, location_name: "ExportToCSVOption"))
    DashboardPublishOptions.add_member(:sheet_controls_option, Shapes::ShapeRef.new(shape: SheetControlsOption, location_name: "SheetControlsOption"))
    DashboardPublishOptions.struct_class = Types::DashboardPublishOptions

    DashboardSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "Operator"))
    DashboardSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: DashboardFilterAttribute, location_name: "Name"))
    DashboardSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    DashboardSearchFilter.struct_class = Types::DashboardSearchFilter

    DashboardSearchFilterList.member = Shapes::ShapeRef.new(shape: DashboardSearchFilter)

    DashboardSourceEntity.add_member(:source_template, Shapes::ShapeRef.new(shape: DashboardSourceTemplate, location_name: "SourceTemplate"))
    DashboardSourceEntity.struct_class = Types::DashboardSourceEntity

    DashboardSourceTemplate.add_member(:data_set_references, Shapes::ShapeRef.new(shape: DataSetReferenceList, required: true, location_name: "DataSetReferences"))
    DashboardSourceTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    DashboardSourceTemplate.struct_class = Types::DashboardSourceTemplate

    DashboardSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DashboardSummary.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    DashboardSummary.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "Name"))
    DashboardSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DashboardSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DashboardSummary.add_member(:published_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "PublishedVersionNumber"))
    DashboardSummary.add_member(:last_published_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastPublishedTime"))
    DashboardSummary.struct_class = Types::DashboardSummary

    DashboardSummaryList.member = Shapes::ShapeRef.new(shape: DashboardSummary)

    DashboardVersion.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DashboardVersion.add_member(:errors, Shapes::ShapeRef.new(shape: DashboardErrorList, location_name: "Errors"))
    DashboardVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    DashboardVersion.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    DashboardVersion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DashboardVersion.add_member(:source_entity_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceEntityArn"))
    DashboardVersion.add_member(:data_set_arns, Shapes::ShapeRef.new(shape: DataSetArnsList, location_name: "DataSetArns"))
    DashboardVersion.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    DashboardVersion.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DashboardVersion.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetList, location_name: "Sheets"))
    DashboardVersion.struct_class = Types::DashboardVersion

    DashboardVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DashboardVersionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DashboardVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    DashboardVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    DashboardVersionSummary.add_member(:source_entity_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceEntityArn"))
    DashboardVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    DashboardVersionSummary.struct_class = Types::DashboardVersionSummary

    DashboardVersionSummaryList.member = Shapes::ShapeRef.new(shape: DashboardVersionSummary)

    DataColorPalette.add_member(:colors, Shapes::ShapeRef.new(shape: ColorList, location_name: "Colors"))
    DataColorPalette.add_member(:min_max_gradient, Shapes::ShapeRef.new(shape: ColorList, location_name: "MinMaxGradient"))
    DataColorPalette.add_member(:empty_fill_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "EmptyFillColor"))
    DataColorPalette.struct_class = Types::DataColorPalette

    DataSet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataSet.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    DataSet.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DataSet.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DataSet.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DataSet.add_member(:physical_table_map, Shapes::ShapeRef.new(shape: PhysicalTableMap, location_name: "PhysicalTableMap"))
    DataSet.add_member(:logical_table_map, Shapes::ShapeRef.new(shape: LogicalTableMap, location_name: "LogicalTableMap"))
    DataSet.add_member(:output_columns, Shapes::ShapeRef.new(shape: OutputColumnList, location_name: "OutputColumns"))
    DataSet.add_member(:import_mode, Shapes::ShapeRef.new(shape: DataSetImportMode, location_name: "ImportMode"))
    DataSet.add_member(:consumed_spice_capacity_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "ConsumedSpiceCapacityInBytes"))
    DataSet.add_member(:column_groups, Shapes::ShapeRef.new(shape: ColumnGroupList, location_name: "ColumnGroups"))
    DataSet.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    DataSet.struct_class = Types::DataSet

    DataSetArnsList.member = Shapes::ShapeRef.new(shape: Arn)

    DataSetConfiguration.add_member(:placeholder, Shapes::ShapeRef.new(shape: String, location_name: "Placeholder"))
    DataSetConfiguration.add_member(:data_set_schema, Shapes::ShapeRef.new(shape: DataSetSchema, location_name: "DataSetSchema"))
    DataSetConfiguration.add_member(:column_group_schema_list, Shapes::ShapeRef.new(shape: ColumnGroupSchemaList, location_name: "ColumnGroupSchemaList"))
    DataSetConfiguration.struct_class = Types::DataSetConfiguration

    DataSetConfigurationList.member = Shapes::ShapeRef.new(shape: DataSetConfiguration)

    DataSetReference.add_member(:data_set_placeholder, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "DataSetPlaceholder"))
    DataSetReference.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSetArn"))
    DataSetReference.struct_class = Types::DataSetReference

    DataSetReferenceList.member = Shapes::ShapeRef.new(shape: DataSetReference)

    DataSetSchema.add_member(:column_schema_list, Shapes::ShapeRef.new(shape: ColumnSchemaList, location_name: "ColumnSchemaList"))
    DataSetSchema.struct_class = Types::DataSetSchema

    DataSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataSetSummary.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    DataSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DataSetSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DataSetSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DataSetSummary.add_member(:import_mode, Shapes::ShapeRef.new(shape: DataSetImportMode, location_name: "ImportMode"))
    DataSetSummary.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    DataSetSummary.struct_class = Types::DataSetSummary

    DataSetSummaryList.member = Shapes::ShapeRef.new(shape: DataSetSummary)

    DataSource.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataSource.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    DataSource.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DataSource.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DataSource.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    DataSource.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DataSource.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DataSource.add_member(:data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParameters, location_name: "DataSourceParameters"))
    DataSource.add_member(:alternate_data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParametersList, location_name: "AlternateDataSourceParameters"))
    DataSource.add_member(:vpc_connection_properties, Shapes::ShapeRef.new(shape: VpcConnectionProperties, location_name: "VpcConnectionProperties"))
    DataSource.add_member(:ssl_properties, Shapes::ShapeRef.new(shape: SslProperties, location_name: "SslProperties"))
    DataSource.add_member(:error_info, Shapes::ShapeRef.new(shape: DataSourceErrorInfo, location_name: "ErrorInfo"))
    DataSource.struct_class = Types::DataSource

    DataSourceCredentials.add_member(:credential_pair, Shapes::ShapeRef.new(shape: CredentialPair, location_name: "CredentialPair"))
    DataSourceCredentials.add_member(:copy_source_arn, Shapes::ShapeRef.new(shape: CopySourceArn, location_name: "CopySourceArn"))
    DataSourceCredentials.struct_class = Types::DataSourceCredentials

    DataSourceErrorInfo.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceErrorInfoType, location_name: "Type"))
    DataSourceErrorInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DataSourceErrorInfo.struct_class = Types::DataSourceErrorInfo

    DataSourceList.member = Shapes::ShapeRef.new(shape: DataSource)

    DataSourceParameters.add_member(:amazon_elasticsearch_parameters, Shapes::ShapeRef.new(shape: AmazonElasticsearchParameters, location_name: "AmazonElasticsearchParameters"))
    DataSourceParameters.add_member(:athena_parameters, Shapes::ShapeRef.new(shape: AthenaParameters, location_name: "AthenaParameters"))
    DataSourceParameters.add_member(:aurora_parameters, Shapes::ShapeRef.new(shape: AuroraParameters, location_name: "AuroraParameters"))
    DataSourceParameters.add_member(:aurora_postgre_sql_parameters, Shapes::ShapeRef.new(shape: AuroraPostgreSqlParameters, location_name: "AuroraPostgreSqlParameters"))
    DataSourceParameters.add_member(:aws_iot_analytics_parameters, Shapes::ShapeRef.new(shape: AwsIotAnalyticsParameters, location_name: "AwsIotAnalyticsParameters"))
    DataSourceParameters.add_member(:jira_parameters, Shapes::ShapeRef.new(shape: JiraParameters, location_name: "JiraParameters"))
    DataSourceParameters.add_member(:maria_db_parameters, Shapes::ShapeRef.new(shape: MariaDbParameters, location_name: "MariaDbParameters"))
    DataSourceParameters.add_member(:my_sql_parameters, Shapes::ShapeRef.new(shape: MySqlParameters, location_name: "MySqlParameters"))
    DataSourceParameters.add_member(:postgre_sql_parameters, Shapes::ShapeRef.new(shape: PostgreSqlParameters, location_name: "PostgreSqlParameters"))
    DataSourceParameters.add_member(:presto_parameters, Shapes::ShapeRef.new(shape: PrestoParameters, location_name: "PrestoParameters"))
    DataSourceParameters.add_member(:rds_parameters, Shapes::ShapeRef.new(shape: RdsParameters, location_name: "RdsParameters"))
    DataSourceParameters.add_member(:redshift_parameters, Shapes::ShapeRef.new(shape: RedshiftParameters, location_name: "RedshiftParameters"))
    DataSourceParameters.add_member(:s3_parameters, Shapes::ShapeRef.new(shape: S3Parameters, location_name: "S3Parameters"))
    DataSourceParameters.add_member(:service_now_parameters, Shapes::ShapeRef.new(shape: ServiceNowParameters, location_name: "ServiceNowParameters"))
    DataSourceParameters.add_member(:snowflake_parameters, Shapes::ShapeRef.new(shape: SnowflakeParameters, location_name: "SnowflakeParameters"))
    DataSourceParameters.add_member(:spark_parameters, Shapes::ShapeRef.new(shape: SparkParameters, location_name: "SparkParameters"))
    DataSourceParameters.add_member(:sql_server_parameters, Shapes::ShapeRef.new(shape: SqlServerParameters, location_name: "SqlServerParameters"))
    DataSourceParameters.add_member(:teradata_parameters, Shapes::ShapeRef.new(shape: TeradataParameters, location_name: "TeradataParameters"))
    DataSourceParameters.add_member(:twitter_parameters, Shapes::ShapeRef.new(shape: TwitterParameters, location_name: "TwitterParameters"))
    DataSourceParameters.struct_class = Types::DataSourceParameters

    DataSourceParametersList.member = Shapes::ShapeRef.new(shape: DataSourceParameters)

    DateTimeParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    DateTimeParameter.add_member(:values, Shapes::ShapeRef.new(shape: TimestampList, required: true, location_name: "Values"))
    DateTimeParameter.struct_class = Types::DateTimeParameter

    DateTimeParameterList.member = Shapes::ShapeRef.new(shape: DateTimeParameter)

    DecimalParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    DecimalParameter.add_member(:values, Shapes::ShapeRef.new(shape: DoubleList, required: true, location_name: "Values"))
    DecimalParameter.struct_class = Types::DecimalParameter

    DecimalParameterList.member = Shapes::ShapeRef.new(shape: DecimalParameter)

    DeleteAccountCustomizationRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteAccountCustomizationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    DeleteAccountCustomizationRequest.struct_class = Types::DeleteAccountCustomizationRequest

    DeleteAccountCustomizationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteAccountCustomizationResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteAccountCustomizationResponse.struct_class = Types::DeleteAccountCustomizationResponse

    DeleteAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DeleteAnalysisRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: RecoveryWindowInDays, location: "querystring", location_name: "recovery-window-in-days"))
    DeleteAnalysisRequest.add_member(:force_delete_without_recovery, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "force-delete-without-recovery"))
    DeleteAnalysisRequest.struct_class = Types::DeleteAnalysisRequest

    DeleteAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    DeleteAnalysisResponse.add_member(:deletion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletionTime"))
    DeleteAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteAnalysisResponse.struct_class = Types::DeleteAnalysisResponse

    DeleteDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DeleteDashboardRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteDashboardRequest.struct_class = Types::DeleteDashboardRequest

    DeleteDashboardResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    DeleteDashboardResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteDashboardResponse.struct_class = Types::DeleteDashboardResponse

    DeleteDataSetRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DeleteDataSetRequest.struct_class = Types::DeleteDataSetRequest

    DeleteDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteDataSetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    DeleteDataSetResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteDataSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteDataSetResponse.struct_class = Types::DeleteDataSetResponse

    DeleteDataSourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSourceId"))
    DeleteDataSourceRequest.struct_class = Types::DeleteDataSourceRequest

    DeleteDataSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    DeleteDataSourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteDataSourceResponse.struct_class = Types::DeleteDataSourceResponse

    DeleteGroupMembershipRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, required: true, location: "uri", location_name: "MemberName"))
    DeleteGroupMembershipRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DeleteGroupMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteGroupMembershipRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteGroupMembershipRequest.struct_class = Types::DeleteGroupMembershipRequest

    DeleteGroupMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteGroupMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteGroupMembershipResponse.struct_class = Types::DeleteGroupMembershipResponse

    DeleteGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DeleteGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteGroupRequest.struct_class = Types::DeleteGroupRequest

    DeleteGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteGroupResponse.struct_class = Types::DeleteGroupResponse

    DeleteIAMPolicyAssignmentRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteIAMPolicyAssignmentRequest.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, required: true, location: "uri", location_name: "AssignmentName"))
    DeleteIAMPolicyAssignmentRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteIAMPolicyAssignmentRequest.struct_class = Types::DeleteIAMPolicyAssignmentRequest

    DeleteIAMPolicyAssignmentResponse.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    DeleteIAMPolicyAssignmentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteIAMPolicyAssignmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteIAMPolicyAssignmentResponse.struct_class = Types::DeleteIAMPolicyAssignmentResponse

    DeleteNamespaceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteNamespaceRequest.struct_class = Types::DeleteNamespaceRequest

    DeleteNamespaceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteNamespaceResponse.struct_class = Types::DeleteNamespaceResponse

    DeleteTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DeleteTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DeleteTemplateAliasRequest.struct_class = Types::DeleteTemplateAliasRequest

    DeleteTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTemplateAliasResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    DeleteTemplateAliasResponse.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    DeleteTemplateAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTemplateAliasResponse.struct_class = Types::DeleteTemplateAliasResponse

    DeleteTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DeleteTemplateRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteTemplateRequest.struct_class = Types::DeleteTemplateRequest

    DeleteTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    DeleteTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTemplateResponse.struct_class = Types::DeleteTemplateResponse

    DeleteThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DeleteThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DeleteThemeAliasRequest.struct_class = Types::DeleteThemeAliasRequest

    DeleteThemeAliasResponse.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    DeleteThemeAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteThemeAliasResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    DeleteThemeAliasResponse.struct_class = Types::DeleteThemeAliasResponse

    DeleteThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DeleteThemeRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteThemeRequest.struct_class = Types::DeleteThemeRequest

    DeleteThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    DeleteThemeResponse.struct_class = Types::DeleteThemeResponse

    DeleteUserByPrincipalIdRequest.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "PrincipalId"))
    DeleteUserByPrincipalIdRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteUserByPrincipalIdRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteUserByPrincipalIdRequest.struct_class = Types::DeleteUserByPrincipalIdRequest

    DeleteUserByPrincipalIdResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteUserByPrincipalIdResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteUserByPrincipalIdResponse.struct_class = Types::DeleteUserByPrincipalIdResponse

    DeleteUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    DeleteUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DeleteUserRequest.struct_class = Types::DeleteUserRequest

    DeleteUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteUserResponse.struct_class = Types::DeleteUserResponse

    DescribeAccountCustomizationRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAccountCustomizationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    DescribeAccountCustomizationRequest.add_member(:resolved, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "resolved"))
    DescribeAccountCustomizationRequest.struct_class = Types::DescribeAccountCustomizationRequest

    DescribeAccountCustomizationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeAccountCustomizationResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    DescribeAccountCustomizationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    DescribeAccountCustomizationResponse.add_member(:account_customization, Shapes::ShapeRef.new(shape: AccountCustomization, location_name: "AccountCustomization"))
    DescribeAccountCustomizationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAccountCustomizationResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAccountCustomizationResponse.struct_class = Types::DescribeAccountCustomizationResponse

    DescribeAccountSettingsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAccountSettingsRequest.struct_class = Types::DescribeAccountSettingsRequest

    DescribeAccountSettingsResponse.add_member(:account_settings, Shapes::ShapeRef.new(shape: AccountSettings, location_name: "AccountSettings"))
    DescribeAccountSettingsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAccountSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAccountSettingsResponse.struct_class = Types::DescribeAccountSettingsResponse

    DescribeAnalysisPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAnalysisPermissionsRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DescribeAnalysisPermissionsRequest.struct_class = Types::DescribeAnalysisPermissionsRequest

    DescribeAnalysisPermissionsResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    DescribeAnalysisPermissionsResponse.add_member(:analysis_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnalysisArn"))
    DescribeAnalysisPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeAnalysisPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAnalysisPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAnalysisPermissionsResponse.struct_class = Types::DescribeAnalysisPermissionsResponse

    DescribeAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DescribeAnalysisRequest.struct_class = Types::DescribeAnalysisRequest

    DescribeAnalysisResponse.add_member(:analysis, Shapes::ShapeRef.new(shape: Analysis, location_name: "Analysis"))
    DescribeAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAnalysisResponse.struct_class = Types::DescribeAnalysisResponse

    DescribeDashboardPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDashboardPermissionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DescribeDashboardPermissionsRequest.struct_class = Types::DescribeDashboardPermissionsRequest

    DescribeDashboardPermissionsResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    DescribeDashboardPermissionsResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    DescribeDashboardPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeDashboardPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDashboardPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDashboardPermissionsResponse.struct_class = Types::DescribeDashboardPermissionsResponse

    DescribeDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DescribeDashboardRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeDashboardRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeDashboardRequest.struct_class = Types::DescribeDashboardRequest

    DescribeDashboardResponse.add_member(:dashboard, Shapes::ShapeRef.new(shape: Dashboard, location_name: "Dashboard"))
    DescribeDashboardResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDashboardResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDashboardResponse.struct_class = Types::DescribeDashboardResponse

    DescribeDataSetPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDataSetPermissionsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DescribeDataSetPermissionsRequest.struct_class = Types::DescribeDataSetPermissionsRequest

    DescribeDataSetPermissionsResponse.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataSetArn"))
    DescribeDataSetPermissionsResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    DescribeDataSetPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeDataSetPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDataSetPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDataSetPermissionsResponse.struct_class = Types::DescribeDataSetPermissionsResponse

    DescribeDataSetRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DescribeDataSetRequest.struct_class = Types::DescribeDataSetRequest

    DescribeDataSetResponse.add_member(:data_set, Shapes::ShapeRef.new(shape: DataSet, location_name: "DataSet"))
    DescribeDataSetResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDataSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDataSetResponse.struct_class = Types::DescribeDataSetResponse

    DescribeDataSourcePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDataSourcePermissionsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSourceId"))
    DescribeDataSourcePermissionsRequest.struct_class = Types::DescribeDataSourcePermissionsRequest

    DescribeDataSourcePermissionsResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataSourceArn"))
    DescribeDataSourcePermissionsResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    DescribeDataSourcePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeDataSourcePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDataSourcePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDataSourcePermissionsResponse.struct_class = Types::DescribeDataSourcePermissionsResponse

    DescribeDataSourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSourceId"))
    DescribeDataSourceRequest.struct_class = Types::DescribeDataSourceRequest

    DescribeDataSourceResponse.add_member(:data_source, Shapes::ShapeRef.new(shape: DataSource, location_name: "DataSource"))
    DescribeDataSourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDataSourceResponse.struct_class = Types::DescribeDataSourceResponse

    DescribeGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DescribeGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeGroupRequest.struct_class = Types::DescribeGroupRequest

    DescribeGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    DescribeGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeGroupResponse.struct_class = Types::DescribeGroupResponse

    DescribeIAMPolicyAssignmentRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeIAMPolicyAssignmentRequest.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, required: true, location: "uri", location_name: "AssignmentName"))
    DescribeIAMPolicyAssignmentRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeIAMPolicyAssignmentRequest.struct_class = Types::DescribeIAMPolicyAssignmentRequest

    DescribeIAMPolicyAssignmentResponse.add_member(:iam_policy_assignment, Shapes::ShapeRef.new(shape: IAMPolicyAssignment, location_name: "IAMPolicyAssignment"))
    DescribeIAMPolicyAssignmentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeIAMPolicyAssignmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeIAMPolicyAssignmentResponse.struct_class = Types::DescribeIAMPolicyAssignmentResponse

    DescribeIngestionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DataSetId"))
    DescribeIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    DescribeIngestionRequest.struct_class = Types::DescribeIngestionRequest

    DescribeIngestionResponse.add_member(:ingestion, Shapes::ShapeRef.new(shape: Ingestion, location_name: "Ingestion"))
    DescribeIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: string, location_name: "RequestId"))
    DescribeIngestionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeIngestionResponse.struct_class = Types::DescribeIngestionResponse

    DescribeNamespaceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeNamespaceRequest.struct_class = Types::DescribeNamespaceRequest

    DescribeNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceInfoV2, location_name: "Namespace"))
    DescribeNamespaceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeNamespaceResponse.struct_class = Types::DescribeNamespaceResponse

    DescribeTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DescribeTemplateAliasRequest.struct_class = Types::DescribeTemplateAliasRequest

    DescribeTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    DescribeTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplateAliasResponse.struct_class = Types::DescribeTemplateAliasResponse

    DescribeTemplatePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplatePermissionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplatePermissionsRequest.struct_class = Types::DescribeTemplatePermissionsRequest

    DescribeTemplatePermissionsResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    DescribeTemplatePermissionsResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TemplateArn"))
    DescribeTemplatePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeTemplatePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplatePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplatePermissionsResponse.struct_class = Types::DescribeTemplatePermissionsResponse

    DescribeTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplateRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeTemplateRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeTemplateRequest.struct_class = Types::DescribeTemplateRequest

    DescribeTemplateResponse.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    DescribeTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplateResponse.struct_class = Types::DescribeTemplateResponse

    DescribeThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DescribeThemeAliasRequest.struct_class = Types::DescribeThemeAliasRequest

    DescribeThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    DescribeThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemeAliasResponse.struct_class = Types::DescribeThemeAliasResponse

    DescribeThemePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemePermissionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemePermissionsRequest.struct_class = Types::DescribeThemePermissionsRequest

    DescribeThemePermissionsResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    DescribeThemePermissionsResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DescribeThemePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeThemePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemePermissionsResponse.struct_class = Types::DescribeThemePermissionsResponse

    DescribeThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAndAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemeRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeThemeRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeThemeRequest.struct_class = Types::DescribeThemeRequest

    DescribeThemeResponse.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "Theme"))
    DescribeThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemeResponse.struct_class = Types::DescribeThemeResponse

    DescribeUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    DescribeUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    DescribeUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DomainNotWhitelistedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DomainNotWhitelistedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DomainNotWhitelistedException.struct_class = Types::DomainNotWhitelistedException

    DoubleList.member = Shapes::ShapeRef.new(shape: Double)

    ErrorInfo.add_member(:type, Shapes::ShapeRef.new(shape: IngestionErrorType, location_name: "Type"))
    ErrorInfo.add_member(:message, Shapes::ShapeRef.new(shape: string, location_name: "Message"))
    ErrorInfo.struct_class = Types::ErrorInfo

    ExportToCSVOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    ExportToCSVOption.struct_class = Types::ExportToCSVOption

    FilterOperation.add_member(:condition_expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "ConditionExpression"))
    FilterOperation.struct_class = Types::FilterOperation

    GeoSpatialColumnGroup.add_member(:name, Shapes::ShapeRef.new(shape: ColumnGroupName, required: true, location_name: "Name"))
    GeoSpatialColumnGroup.add_member(:country_code, Shapes::ShapeRef.new(shape: GeoSpatialCountryCode, required: true, location_name: "CountryCode"))
    GeoSpatialColumnGroup.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "Columns"))
    GeoSpatialColumnGroup.struct_class = Types::GeoSpatialColumnGroup

    GetDashboardEmbedUrlRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GetDashboardEmbedUrlRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    GetDashboardEmbedUrlRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location: "querystring", location_name: "creds-type"))
    GetDashboardEmbedUrlRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location: "querystring", location_name: "session-lifetime"))
    GetDashboardEmbedUrlRequest.add_member(:undo_redo_disabled, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "undo-redo-disabled"))
    GetDashboardEmbedUrlRequest.add_member(:reset_disabled, Shapes::ShapeRef.new(shape: boolean, location: "querystring", location_name: "reset-disabled"))
    GetDashboardEmbedUrlRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "user-arn"))
    GetDashboardEmbedUrlRequest.struct_class = Types::GetDashboardEmbedUrlRequest

    GetDashboardEmbedUrlResponse.add_member(:embed_url, Shapes::ShapeRef.new(shape: EmbeddingUrl, location_name: "EmbedUrl"))
    GetDashboardEmbedUrlResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    GetDashboardEmbedUrlResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    GetDashboardEmbedUrlResponse.struct_class = Types::GetDashboardEmbedUrlResponse

    GetSessionEmbedUrlRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GetSessionEmbedUrlRequest.add_member(:entry_point, Shapes::ShapeRef.new(shape: EntryPoint, location: "querystring", location_name: "entry-point"))
    GetSessionEmbedUrlRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location: "querystring", location_name: "session-lifetime"))
    GetSessionEmbedUrlRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "user-arn"))
    GetSessionEmbedUrlRequest.struct_class = Types::GetSessionEmbedUrlRequest

    GetSessionEmbedUrlResponse.add_member(:embed_url, Shapes::ShapeRef.new(shape: EmbeddingUrl, location_name: "EmbedUrl"))
    GetSessionEmbedUrlResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    GetSessionEmbedUrlResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    GetSessionEmbedUrlResponse.struct_class = Types::GetSessionEmbedUrlResponse

    Group.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Group.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, location_name: "GroupName"))
    Group.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    Group.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "PrincipalId"))
    Group.struct_class = Types::Group

    GroupList.member = Shapes::ShapeRef.new(shape: Group)

    GroupMember.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    GroupMember.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, location_name: "MemberName"))
    GroupMember.struct_class = Types::GroupMember

    GroupMemberList.member = Shapes::ShapeRef.new(shape: GroupMember)

    GutterStyle.add_member(:show, Shapes::ShapeRef.new(shape: boolean, location_name: "Show", metadata: {"box"=>true}))
    GutterStyle.struct_class = Types::GutterStyle

    IAMPolicyAssignment.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    IAMPolicyAssignment.add_member(:assignment_id, Shapes::ShapeRef.new(shape: String, location_name: "AssignmentId"))
    IAMPolicyAssignment.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    IAMPolicyAssignment.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    IAMPolicyAssignment.add_member(:identities, Shapes::ShapeRef.new(shape: IdentityMap, location_name: "Identities"))
    IAMPolicyAssignment.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    IAMPolicyAssignment.struct_class = Types::IAMPolicyAssignment

    IAMPolicyAssignmentSummary.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    IAMPolicyAssignmentSummary.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    IAMPolicyAssignmentSummary.struct_class = Types::IAMPolicyAssignmentSummary

    IAMPolicyAssignmentSummaryList.member = Shapes::ShapeRef.new(shape: IAMPolicyAssignmentSummary)

    IdentityMap.key = Shapes::ShapeRef.new(shape: String)
    IdentityMap.value = Shapes::ShapeRef.new(shape: IdentityNameList)

    IdentityNameList.member = Shapes::ShapeRef.new(shape: IdentityName)

    IdentityTypeNotSupportedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    IdentityTypeNotSupportedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    IdentityTypeNotSupportedException.struct_class = Types::IdentityTypeNotSupportedException

    Ingestion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Ingestion.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    Ingestion.add_member(:ingestion_status, Shapes::ShapeRef.new(shape: IngestionStatus, required: true, location_name: "IngestionStatus"))
    Ingestion.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "ErrorInfo"))
    Ingestion.add_member(:row_info, Shapes::ShapeRef.new(shape: RowInfo, location_name: "RowInfo"))
    Ingestion.add_member(:queue_info, Shapes::ShapeRef.new(shape: QueueInfo, location_name: "QueueInfo"))
    Ingestion.add_member(:created_time, Shapes::ShapeRef.new(shape: timestamp, required: true, location_name: "CreatedTime"))
    Ingestion.add_member(:ingestion_time_in_seconds, Shapes::ShapeRef.new(shape: long, location_name: "IngestionTimeInSeconds", metadata: {"box"=>true}))
    Ingestion.add_member(:ingestion_size_in_bytes, Shapes::ShapeRef.new(shape: long, location_name: "IngestionSizeInBytes", metadata: {"box"=>true}))
    Ingestion.add_member(:request_source, Shapes::ShapeRef.new(shape: IngestionRequestSource, location_name: "RequestSource"))
    Ingestion.add_member(:request_type, Shapes::ShapeRef.new(shape: IngestionRequestType, location_name: "RequestType"))
    Ingestion.struct_class = Types::Ingestion

    Ingestions.member = Shapes::ShapeRef.new(shape: Ingestion)

    InputColumn.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "Name"))
    InputColumn.add_member(:type, Shapes::ShapeRef.new(shape: InputColumnDataType, required: true, location_name: "Type"))
    InputColumn.struct_class = Types::InputColumn

    InputColumnList.member = Shapes::ShapeRef.new(shape: InputColumn)

    IntegerParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    IntegerParameter.add_member(:values, Shapes::ShapeRef.new(shape: LongList, required: true, location_name: "Values"))
    IntegerParameter.struct_class = Types::IntegerParameter

    IntegerParameterList.member = Shapes::ShapeRef.new(shape: IntegerParameter)

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    JiraParameters.add_member(:site_base_url, Shapes::ShapeRef.new(shape: SiteBaseUrl, required: true, location_name: "SiteBaseUrl"))
    JiraParameters.struct_class = Types::JiraParameters

    JoinInstruction.add_member(:left_operand, Shapes::ShapeRef.new(shape: LogicalTableId, required: true, location_name: "LeftOperand"))
    JoinInstruction.add_member(:right_operand, Shapes::ShapeRef.new(shape: LogicalTableId, required: true, location_name: "RightOperand"))
    JoinInstruction.add_member(:type, Shapes::ShapeRef.new(shape: JoinType, required: true, location_name: "Type"))
    JoinInstruction.add_member(:on_clause, Shapes::ShapeRef.new(shape: OnClause, required: true, location_name: "OnClause"))
    JoinInstruction.struct_class = Types::JoinInstruction

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    LimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    LimitExceededException.struct_class = Types::LimitExceededException

    ListAnalysesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListAnalysesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAnalysesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListAnalysesRequest.struct_class = Types::ListAnalysesRequest

    ListAnalysesResponse.add_member(:analysis_summary_list, Shapes::ShapeRef.new(shape: AnalysisSummaryList, location_name: "AnalysisSummaryList"))
    ListAnalysesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAnalysesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListAnalysesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListAnalysesResponse.struct_class = Types::ListAnalysesResponse

    ListDashboardVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListDashboardVersionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    ListDashboardVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListDashboardVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListDashboardVersionsRequest.struct_class = Types::ListDashboardVersionsRequest

    ListDashboardVersionsResponse.add_member(:dashboard_version_summary_list, Shapes::ShapeRef.new(shape: DashboardVersionSummaryList, location_name: "DashboardVersionSummaryList"))
    ListDashboardVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDashboardVersionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListDashboardVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListDashboardVersionsResponse.struct_class = Types::ListDashboardVersionsResponse

    ListDashboardsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListDashboardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListDashboardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListDashboardsRequest.struct_class = Types::ListDashboardsRequest

    ListDashboardsResponse.add_member(:dashboard_summary_list, Shapes::ShapeRef.new(shape: DashboardSummaryList, location_name: "DashboardSummaryList"))
    ListDashboardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDashboardsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListDashboardsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListDashboardsResponse.struct_class = Types::ListDashboardsResponse

    ListDataSetsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListDataSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListDataSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListDataSetsRequest.struct_class = Types::ListDataSetsRequest

    ListDataSetsResponse.add_member(:data_set_summaries, Shapes::ShapeRef.new(shape: DataSetSummaryList, location_name: "DataSetSummaries"))
    ListDataSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDataSetsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListDataSetsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListDataSetsResponse.struct_class = Types::ListDataSetsResponse

    ListDataSourcesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListDataSourcesRequest.struct_class = Types::ListDataSourcesRequest

    ListDataSourcesResponse.add_member(:data_sources, Shapes::ShapeRef.new(shape: DataSourceList, location_name: "DataSources"))
    ListDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListDataSourcesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListDataSourcesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListDataSourcesResponse.struct_class = Types::ListDataSourcesResponse

    ListGroupMembershipsRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    ListGroupMembershipsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListGroupMembershipsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListGroupMembershipsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListGroupMembershipsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListGroupMembershipsRequest.struct_class = Types::ListGroupMembershipsRequest

    ListGroupMembershipsResponse.add_member(:group_member_list, Shapes::ShapeRef.new(shape: GroupMemberList, location_name: "GroupMemberList"))
    ListGroupMembershipsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListGroupMembershipsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListGroupMembershipsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListGroupMembershipsResponse.struct_class = Types::ListGroupMembershipsResponse

    ListGroupsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListGroupsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListGroupsRequest.struct_class = Types::ListGroupsRequest

    ListGroupsResponse.add_member(:group_list, Shapes::ShapeRef.new(shape: GroupList, location_name: "GroupList"))
    ListGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListGroupsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListGroupsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListGroupsResponse.struct_class = Types::ListGroupsResponse

    ListIAMPolicyAssignmentsForUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListIAMPolicyAssignmentsForUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    ListIAMPolicyAssignmentsForUserRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListIAMPolicyAssignmentsForUserRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListIAMPolicyAssignmentsForUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListIAMPolicyAssignmentsForUserRequest.struct_class = Types::ListIAMPolicyAssignmentsForUserRequest

    ListIAMPolicyAssignmentsForUserResponse.add_member(:active_assignments, Shapes::ShapeRef.new(shape: ActiveIAMPolicyAssignmentList, location_name: "ActiveAssignments"))
    ListIAMPolicyAssignmentsForUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListIAMPolicyAssignmentsForUserResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIAMPolicyAssignmentsForUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListIAMPolicyAssignmentsForUserResponse.struct_class = Types::ListIAMPolicyAssignmentsForUserResponse

    ListIAMPolicyAssignmentsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListIAMPolicyAssignmentsRequest.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    ListIAMPolicyAssignmentsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListIAMPolicyAssignmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListIAMPolicyAssignmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListIAMPolicyAssignmentsRequest.struct_class = Types::ListIAMPolicyAssignmentsRequest

    ListIAMPolicyAssignmentsResponse.add_member(:iam_policy_assignments, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentSummaryList, location_name: "IAMPolicyAssignments"))
    ListIAMPolicyAssignmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIAMPolicyAssignmentsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListIAMPolicyAssignmentsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListIAMPolicyAssignmentsResponse.struct_class = Types::ListIAMPolicyAssignmentsResponse

    ListIngestionsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: string, required: true, location: "uri", location_name: "DataSetId"))
    ListIngestionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location: "querystring", location_name: "next-token"))
    ListIngestionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListIngestionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IngestionMaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListIngestionsRequest.struct_class = Types::ListIngestionsRequest

    ListIngestionsResponse.add_member(:ingestions, Shapes::ShapeRef.new(shape: Ingestions, location_name: "Ingestions"))
    ListIngestionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: string, location_name: "NextToken"))
    ListIngestionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: string, location_name: "RequestId"))
    ListIngestionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListIngestionsResponse.struct_class = Types::ListIngestionsResponse

    ListNamespacesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListNamespacesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListNamespacesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListNamespacesRequest.struct_class = Types::ListNamespacesRequest

    ListNamespacesResponse.add_member(:namespaces, Shapes::ShapeRef.new(shape: Namespaces, location_name: "Namespaces"))
    ListNamespacesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListNamespacesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListNamespacesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListNamespacesResponse.struct_class = Types::ListNamespacesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTagsForResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateAliasesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTemplateAliasesRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    ListTemplateAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListTemplateAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-result", metadata: {"box"=>true}))
    ListTemplateAliasesRequest.struct_class = Types::ListTemplateAliasesRequest

    ListTemplateAliasesResponse.add_member(:template_alias_list, Shapes::ShapeRef.new(shape: TemplateAliasList, location_name: "TemplateAliasList"))
    ListTemplateAliasesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTemplateAliasesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTemplateAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTemplateAliasesResponse.struct_class = Types::ListTemplateAliasesResponse

    ListTemplateVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTemplateVersionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    ListTemplateVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListTemplateVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListTemplateVersionsRequest.struct_class = Types::ListTemplateVersionsRequest

    ListTemplateVersionsResponse.add_member(:template_version_summary_list, Shapes::ShapeRef.new(shape: TemplateVersionSummaryList, location_name: "TemplateVersionSummaryList"))
    ListTemplateVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTemplateVersionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTemplateVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTemplateVersionsResponse.struct_class = Types::ListTemplateVersionsResponse

    ListTemplatesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTemplatesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListTemplatesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-result", metadata: {"box"=>true}))
    ListTemplatesRequest.struct_class = Types::ListTemplatesRequest

    ListTemplatesResponse.add_member(:template_summary_list, Shapes::ShapeRef.new(shape: TemplateSummaryList, location_name: "TemplateSummaryList"))
    ListTemplatesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTemplatesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTemplatesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTemplatesResponse.struct_class = Types::ListTemplatesResponse

    ListThemeAliasesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListThemeAliasesRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    ListThemeAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListThemeAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-result", metadata: {"box"=>true}))
    ListThemeAliasesRequest.struct_class = Types::ListThemeAliasesRequest

    ListThemeAliasesResponse.add_member(:theme_alias_list, Shapes::ShapeRef.new(shape: ThemeAliasList, location_name: "ThemeAliasList"))
    ListThemeAliasesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListThemeAliasesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListThemeAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListThemeAliasesResponse.struct_class = Types::ListThemeAliasesResponse

    ListThemeVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListThemeVersionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    ListThemeVersionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListThemeVersionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListThemeVersionsRequest.struct_class = Types::ListThemeVersionsRequest

    ListThemeVersionsResponse.add_member(:theme_version_summary_list, Shapes::ShapeRef.new(shape: ThemeVersionSummaryList, location_name: "ThemeVersionSummaryList"))
    ListThemeVersionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListThemeVersionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListThemeVersionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListThemeVersionsResponse.struct_class = Types::ListThemeVersionsResponse

    ListThemesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListThemesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListThemesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListThemesRequest.add_member(:type, Shapes::ShapeRef.new(shape: ThemeType, location: "querystring", location_name: "type"))
    ListThemesRequest.struct_class = Types::ListThemesRequest

    ListThemesResponse.add_member(:theme_summary_list, Shapes::ShapeRef.new(shape: ThemeSummaryList, location_name: "ThemeSummaryList"))
    ListThemesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListThemesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListThemesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListThemesResponse.struct_class = Types::ListThemesResponse

    ListUserGroupsRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    ListUserGroupsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListUserGroupsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListUserGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUserGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListUserGroupsRequest.struct_class = Types::ListUserGroupsRequest

    ListUserGroupsResponse.add_member(:group_list, Shapes::ShapeRef.new(shape: GroupList, location_name: "GroupList"))
    ListUserGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUserGroupsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListUserGroupsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListUserGroupsResponse.struct_class = Types::ListUserGroupsResponse

    ListUsersRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListUsersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListUsersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListUsersRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListUsersRequest.struct_class = Types::ListUsersRequest

    ListUsersResponse.add_member(:user_list, Shapes::ShapeRef.new(shape: UserList, location_name: "UserList"))
    ListUsersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListUsersResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListUsersResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListUsersResponse.struct_class = Types::ListUsersResponse

    LogicalTable.add_member(:alias, Shapes::ShapeRef.new(shape: LogicalTableAlias, required: true, location_name: "Alias"))
    LogicalTable.add_member(:data_transforms, Shapes::ShapeRef.new(shape: TransformOperationList, location_name: "DataTransforms"))
    LogicalTable.add_member(:source, Shapes::ShapeRef.new(shape: LogicalTableSource, required: true, location_name: "Source"))
    LogicalTable.struct_class = Types::LogicalTable

    LogicalTableMap.key = Shapes::ShapeRef.new(shape: LogicalTableId)
    LogicalTableMap.value = Shapes::ShapeRef.new(shape: LogicalTable)

    LogicalTableSource.add_member(:join_instruction, Shapes::ShapeRef.new(shape: JoinInstruction, location_name: "JoinInstruction"))
    LogicalTableSource.add_member(:physical_table_id, Shapes::ShapeRef.new(shape: PhysicalTableId, location_name: "PhysicalTableId"))
    LogicalTableSource.struct_class = Types::LogicalTableSource

    LongList.member = Shapes::ShapeRef.new(shape: Long)

    ManifestFileLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    ManifestFileLocation.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "Key"))
    ManifestFileLocation.struct_class = Types::ManifestFileLocation

    MarginStyle.add_member(:show, Shapes::ShapeRef.new(shape: boolean, location_name: "Show", metadata: {"box"=>true}))
    MarginStyle.struct_class = Types::MarginStyle

    MariaDbParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    MariaDbParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    MariaDbParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    MariaDbParameters.struct_class = Types::MariaDbParameters

    MySqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    MySqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    MySqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    MySqlParameters.struct_class = Types::MySqlParameters

    NamespaceError.add_member(:type, Shapes::ShapeRef.new(shape: NamespaceErrorType, location_name: "Type"))
    NamespaceError.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    NamespaceError.struct_class = Types::NamespaceError

    NamespaceInfoV2.add_member(:name, Shapes::ShapeRef.new(shape: Namespace, location_name: "Name"))
    NamespaceInfoV2.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    NamespaceInfoV2.add_member(:capacity_region, Shapes::ShapeRef.new(shape: String, location_name: "CapacityRegion"))
    NamespaceInfoV2.add_member(:creation_status, Shapes::ShapeRef.new(shape: NamespaceStatus, location_name: "CreationStatus"))
    NamespaceInfoV2.add_member(:identity_store, Shapes::ShapeRef.new(shape: IdentityStore, location_name: "IdentityStore"))
    NamespaceInfoV2.add_member(:namespace_error, Shapes::ShapeRef.new(shape: NamespaceError, location_name: "NamespaceError"))
    NamespaceInfoV2.struct_class = Types::NamespaceInfoV2

    Namespaces.member = Shapes::ShapeRef.new(shape: NamespaceInfoV2)

    OutputColumn.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "Name"))
    OutputColumn.add_member(:type, Shapes::ShapeRef.new(shape: ColumnDataType, location_name: "Type"))
    OutputColumn.struct_class = Types::OutputColumn

    OutputColumnList.member = Shapes::ShapeRef.new(shape: OutputColumn)

    Parameters.add_member(:string_parameters, Shapes::ShapeRef.new(shape: StringParameterList, location_name: "StringParameters"))
    Parameters.add_member(:integer_parameters, Shapes::ShapeRef.new(shape: IntegerParameterList, location_name: "IntegerParameters"))
    Parameters.add_member(:decimal_parameters, Shapes::ShapeRef.new(shape: DecimalParameterList, location_name: "DecimalParameters"))
    Parameters.add_member(:date_time_parameters, Shapes::ShapeRef.new(shape: DateTimeParameterList, location_name: "DateTimeParameters"))
    Parameters.struct_class = Types::Parameters

    PhysicalTable.add_member(:relational_table, Shapes::ShapeRef.new(shape: RelationalTable, location_name: "RelationalTable"))
    PhysicalTable.add_member(:custom_sql, Shapes::ShapeRef.new(shape: CustomSql, location_name: "CustomSql"))
    PhysicalTable.add_member(:s3_source, Shapes::ShapeRef.new(shape: S3Source, location_name: "S3Source"))
    PhysicalTable.struct_class = Types::PhysicalTable

    PhysicalTableMap.key = Shapes::ShapeRef.new(shape: PhysicalTableId)
    PhysicalTableMap.value = Shapes::ShapeRef.new(shape: PhysicalTable)

    PostgreSqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    PostgreSqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    PostgreSqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    PostgreSqlParameters.struct_class = Types::PostgreSqlParameters

    PreconditionNotMetException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PreconditionNotMetException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    PreconditionNotMetException.struct_class = Types::PreconditionNotMetException

    PrestoParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    PrestoParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    PrestoParameters.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PrestoParameters.struct_class = Types::PrestoParameters

    ProjectOperation.add_member(:projected_columns, Shapes::ShapeRef.new(shape: ProjectedColumnList, required: true, location_name: "ProjectedColumns"))
    ProjectOperation.struct_class = Types::ProjectOperation

    ProjectedColumnList.member = Shapes::ShapeRef.new(shape: String)

    QueueInfo.add_member(:waiting_on_ingestion, Shapes::ShapeRef.new(shape: string, required: true, location_name: "WaitingOnIngestion"))
    QueueInfo.add_member(:queued_ingestion, Shapes::ShapeRef.new(shape: string, required: true, location_name: "QueuedIngestion"))
    QueueInfo.struct_class = Types::QueueInfo

    QuickSightUserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    QuickSightUserNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    QuickSightUserNotFoundException.struct_class = Types::QuickSightUserNotFoundException

    RdsParameters.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    RdsParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    RdsParameters.struct_class = Types::RdsParameters

    RedshiftParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    RedshiftParameters.add_member(:port, Shapes::ShapeRef.new(shape: OptionalPort, location_name: "Port"))
    RedshiftParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    RedshiftParameters.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    RedshiftParameters.struct_class = Types::RedshiftParameters

    RegisterUserRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    RegisterUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    RegisterUserRequest.add_member(:user_role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "UserRole"))
    RegisterUserRequest.add_member(:iam_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamArn"))
    RegisterUserRequest.add_member(:session_name, Shapes::ShapeRef.new(shape: RoleSessionName, location_name: "SessionName"))
    RegisterUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    RegisterUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    RegisterUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    RegisterUserRequest.add_member(:custom_permissions_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "CustomPermissionsName"))
    RegisterUserRequest.struct_class = Types::RegisterUserRequest

    RegisterUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    RegisterUserResponse.add_member(:user_invitation_url, Shapes::ShapeRef.new(shape: String, location_name: "UserInvitationUrl"))
    RegisterUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    RegisterUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    RegisterUserResponse.struct_class = Types::RegisterUserResponse

    RelationalTable.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    RelationalTable.add_member(:schema, Shapes::ShapeRef.new(shape: RelationalTableSchema, location_name: "Schema"))
    RelationalTable.add_member(:name, Shapes::ShapeRef.new(shape: RelationalTableName, required: true, location_name: "Name"))
    RelationalTable.add_member(:input_columns, Shapes::ShapeRef.new(shape: InputColumnList, required: true, location_name: "InputColumns"))
    RelationalTable.struct_class = Types::RelationalTable

    RenameColumnOperation.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    RenameColumnOperation.add_member(:new_column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "NewColumnName"))
    RenameColumnOperation.struct_class = Types::RenameColumnOperation

    ResourceExistsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceExistsException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceExistsException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceExistsException.struct_class = Types::ResourceExistsException

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceNotFoundException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ResourcePermission.add_member(:principal, Shapes::ShapeRef.new(shape: Principal, required: true, location_name: "Principal"))
    ResourcePermission.add_member(:actions, Shapes::ShapeRef.new(shape: ActionList, required: true, location_name: "Actions"))
    ResourcePermission.struct_class = Types::ResourcePermission

    ResourcePermissionList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    ResourceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ResourceUnavailableException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    ResourceUnavailableException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ResourceUnavailableException.struct_class = Types::ResourceUnavailableException

    RestoreAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    RestoreAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    RestoreAnalysisRequest.struct_class = Types::RestoreAnalysisRequest

    RestoreAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    RestoreAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    RestoreAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    RestoreAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    RestoreAnalysisResponse.struct_class = Types::RestoreAnalysisResponse

    RowInfo.add_member(:rows_ingested, Shapes::ShapeRef.new(shape: long, location_name: "RowsIngested", metadata: {"box"=>true}))
    RowInfo.add_member(:rows_dropped, Shapes::ShapeRef.new(shape: long, location_name: "RowsDropped", metadata: {"box"=>true}))
    RowInfo.struct_class = Types::RowInfo

    RowLevelPermissionDataSet.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    RowLevelPermissionDataSet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    RowLevelPermissionDataSet.add_member(:permission_policy, Shapes::ShapeRef.new(shape: RowLevelPermissionPolicy, required: true, location_name: "PermissionPolicy"))
    RowLevelPermissionDataSet.struct_class = Types::RowLevelPermissionDataSet

    S3Parameters.add_member(:manifest_file_location, Shapes::ShapeRef.new(shape: ManifestFileLocation, required: true, location_name: "ManifestFileLocation"))
    S3Parameters.struct_class = Types::S3Parameters

    S3Source.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    S3Source.add_member(:upload_settings, Shapes::ShapeRef.new(shape: UploadSettings, location_name: "UploadSettings"))
    S3Source.add_member(:input_columns, Shapes::ShapeRef.new(shape: InputColumnList, required: true, location_name: "InputColumns"))
    S3Source.struct_class = Types::S3Source

    SearchAnalysesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchAnalysesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: AnalysisSearchFilterList, required: true, location_name: "Filters"))
    SearchAnalysesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchAnalysesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchAnalysesRequest.struct_class = Types::SearchAnalysesRequest

    SearchAnalysesResponse.add_member(:analysis_summary_list, Shapes::ShapeRef.new(shape: AnalysisSummaryList, location_name: "AnalysisSummaryList"))
    SearchAnalysesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchAnalysesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchAnalysesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchAnalysesResponse.struct_class = Types::SearchAnalysesResponse

    SearchDashboardsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchDashboardsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DashboardSearchFilterList, required: true, location_name: "Filters"))
    SearchDashboardsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDashboardsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchDashboardsRequest.struct_class = Types::SearchDashboardsRequest

    SearchDashboardsResponse.add_member(:dashboard_summary_list, Shapes::ShapeRef.new(shape: DashboardSummaryList, location_name: "DashboardSummaryList"))
    SearchDashboardsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDashboardsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchDashboardsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchDashboardsResponse.struct_class = Types::SearchDashboardsResponse

    ServiceNowParameters.add_member(:site_base_url, Shapes::ShapeRef.new(shape: SiteBaseUrl, required: true, location_name: "SiteBaseUrl"))
    ServiceNowParameters.struct_class = Types::ServiceNowParameters

    SessionLifetimeInMinutesInvalidException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SessionLifetimeInMinutesInvalidException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SessionLifetimeInMinutesInvalidException.struct_class = Types::SessionLifetimeInMinutesInvalidException

    Sheet.add_member(:sheet_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "SheetId"))
    Sheet.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Name"))
    Sheet.struct_class = Types::Sheet

    SheetControlsOption.add_member(:visibility_state, Shapes::ShapeRef.new(shape: DashboardUIState, location_name: "VisibilityState"))
    SheetControlsOption.struct_class = Types::SheetControlsOption

    SheetList.member = Shapes::ShapeRef.new(shape: Sheet)

    SheetStyle.add_member(:tile, Shapes::ShapeRef.new(shape: TileStyle, location_name: "Tile"))
    SheetStyle.add_member(:tile_layout, Shapes::ShapeRef.new(shape: TileLayoutStyle, location_name: "TileLayout"))
    SheetStyle.struct_class = Types::SheetStyle

    SnowflakeParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SnowflakeParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    SnowflakeParameters.add_member(:warehouse, Shapes::ShapeRef.new(shape: Warehouse, required: true, location_name: "Warehouse"))
    SnowflakeParameters.struct_class = Types::SnowflakeParameters

    SparkParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SparkParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    SparkParameters.struct_class = Types::SparkParameters

    SqlServerParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SqlServerParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    SqlServerParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    SqlServerParameters.struct_class = Types::SqlServerParameters

    SslProperties.add_member(:disable_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableSsl"))
    SslProperties.struct_class = Types::SslProperties

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    StringParameter.add_member(:values, Shapes::ShapeRef.new(shape: StringList, required: true, location_name: "Values"))
    StringParameter.struct_class = Types::StringParameter

    StringParameterList.member = Shapes::ShapeRef.new(shape: StringParameter)

    Tag.add_member(:key, Shapes::ShapeRef.new(shape: TagKey, required: true, location_name: "Key"))
    Tag.add_member(:value, Shapes::ShapeRef.new(shape: TagValue, required: true, location_name: "Value"))
    Tag.struct_class = Types::Tag

    TagColumnOperation.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    TagColumnOperation.add_member(:tags, Shapes::ShapeRef.new(shape: ColumnTagList, required: true, location_name: "Tags"))
    TagColumnOperation.struct_class = Types::TagColumnOperation

    TagKeyList.member = Shapes::ShapeRef.new(shape: TagKey)

    TagList.member = Shapes::ShapeRef.new(shape: Tag)

    TagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    TagResourceRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, required: true, location_name: "Tags"))
    TagResourceRequest.struct_class = Types::TagResourceRequest

    TagResourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    TagResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    TagResourceResponse.struct_class = Types::TagResourceResponse

    Template.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Template.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    Template.add_member(:version, Shapes::ShapeRef.new(shape: TemplateVersion, location_name: "Version"))
    Template.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    Template.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Template.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Template.struct_class = Types::Template

    TemplateAlias.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    TemplateAlias.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    TemplateAlias.add_member(:template_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "TemplateVersionNumber"))
    TemplateAlias.struct_class = Types::TemplateAlias

    TemplateAliasList.member = Shapes::ShapeRef.new(shape: TemplateAlias)

    TemplateError.add_member(:type, Shapes::ShapeRef.new(shape: TemplateErrorType, location_name: "Type"))
    TemplateError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    TemplateError.struct_class = Types::TemplateError

    TemplateErrorList.member = Shapes::ShapeRef.new(shape: TemplateError)

    TemplateSourceAnalysis.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TemplateSourceAnalysis.add_member(:data_set_references, Shapes::ShapeRef.new(shape: DataSetReferenceList, required: true, location_name: "DataSetReferences"))
    TemplateSourceAnalysis.struct_class = Types::TemplateSourceAnalysis

    TemplateSourceEntity.add_member(:source_analysis, Shapes::ShapeRef.new(shape: TemplateSourceAnalysis, location_name: "SourceAnalysis"))
    TemplateSourceEntity.add_member(:source_template, Shapes::ShapeRef.new(shape: TemplateSourceTemplate, location_name: "SourceTemplate"))
    TemplateSourceEntity.struct_class = Types::TemplateSourceEntity

    TemplateSourceTemplate.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    TemplateSourceTemplate.struct_class = Types::TemplateSourceTemplate

    TemplateSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    TemplateSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    TemplateSummary.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    TemplateSummary.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "LatestVersionNumber"))
    TemplateSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    TemplateSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    TemplateSummary.struct_class = Types::TemplateSummary

    TemplateSummaryList.member = Shapes::ShapeRef.new(shape: TemplateSummary)

    TemplateVersion.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    TemplateVersion.add_member(:errors, Shapes::ShapeRef.new(shape: TemplateErrorList, location_name: "Errors"))
    TemplateVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    TemplateVersion.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    TemplateVersion.add_member(:data_set_configurations, Shapes::ShapeRef.new(shape: DataSetConfigurationList, location_name: "DataSetConfigurations"))
    TemplateVersion.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    TemplateVersion.add_member(:source_entity_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceEntityArn"))
    TemplateVersion.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    TemplateVersion.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetList, location_name: "Sheets"))
    TemplateVersion.struct_class = Types::TemplateVersion

    TemplateVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    TemplateVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    TemplateVersionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    TemplateVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    TemplateVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    TemplateVersionSummary.struct_class = Types::TemplateVersionSummary

    TemplateVersionSummaryList.member = Shapes::ShapeRef.new(shape: TemplateVersionSummary)

    TeradataParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    TeradataParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    TeradataParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    TeradataParameters.struct_class = Types::TeradataParameters

    Theme.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Theme.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    Theme.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    Theme.add_member(:version, Shapes::ShapeRef.new(shape: ThemeVersion, location_name: "Version"))
    Theme.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Theme.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Theme.add_member(:type, Shapes::ShapeRef.new(shape: ThemeType, location_name: "Type"))
    Theme.struct_class = Types::Theme

    ThemeAlias.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeAlias.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    ThemeAlias.add_member(:theme_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "ThemeVersionNumber"))
    ThemeAlias.struct_class = Types::ThemeAlias

    ThemeAliasList.member = Shapes::ShapeRef.new(shape: ThemeAlias)

    ThemeConfiguration.add_member(:data_color_palette, Shapes::ShapeRef.new(shape: DataColorPalette, location_name: "DataColorPalette"))
    ThemeConfiguration.add_member(:ui_color_palette, Shapes::ShapeRef.new(shape: UIColorPalette, location_name: "UIColorPalette"))
    ThemeConfiguration.add_member(:sheet, Shapes::ShapeRef.new(shape: SheetStyle, location_name: "Sheet"))
    ThemeConfiguration.struct_class = Types::ThemeConfiguration

    ThemeError.add_member(:type, Shapes::ShapeRef.new(shape: ThemeErrorType, location_name: "Type"))
    ThemeError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ThemeError.struct_class = Types::ThemeError

    ThemeErrorList.member = Shapes::ShapeRef.new(shape: ThemeError)

    ThemeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    ThemeSummary.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    ThemeSummary.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "LatestVersionNumber"))
    ThemeSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ThemeSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ThemeSummary.struct_class = Types::ThemeSummary

    ThemeSummaryList.member = Shapes::ShapeRef.new(shape: ThemeSummary)

    ThemeVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    ThemeVersion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeVersion.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    ThemeVersion.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "BaseThemeId"))
    ThemeVersion.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ThemeVersion.add_member(:configuration, Shapes::ShapeRef.new(shape: ThemeConfiguration, location_name: "Configuration"))
    ThemeVersion.add_member(:errors, Shapes::ShapeRef.new(shape: ThemeErrorList, location_name: "Errors"))
    ThemeVersion.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    ThemeVersion.struct_class = Types::ThemeVersion

    ThemeVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    ThemeVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    ThemeVersionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ThemeVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    ThemeVersionSummary.struct_class = Types::ThemeVersionSummary

    ThemeVersionSummaryList.member = Shapes::ShapeRef.new(shape: ThemeVersionSummary)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TileLayoutStyle.add_member(:gutter, Shapes::ShapeRef.new(shape: GutterStyle, location_name: "Gutter"))
    TileLayoutStyle.add_member(:margin, Shapes::ShapeRef.new(shape: MarginStyle, location_name: "Margin"))
    TileLayoutStyle.struct_class = Types::TileLayoutStyle

    TileStyle.add_member(:border, Shapes::ShapeRef.new(shape: BorderStyle, location_name: "Border"))
    TileStyle.struct_class = Types::TileStyle

    TimestampList.member = Shapes::ShapeRef.new(shape: Timestamp)

    TransformOperation.add_member(:project_operation, Shapes::ShapeRef.new(shape: ProjectOperation, location_name: "ProjectOperation"))
    TransformOperation.add_member(:filter_operation, Shapes::ShapeRef.new(shape: FilterOperation, location_name: "FilterOperation"))
    TransformOperation.add_member(:create_columns_operation, Shapes::ShapeRef.new(shape: CreateColumnsOperation, location_name: "CreateColumnsOperation"))
    TransformOperation.add_member(:rename_column_operation, Shapes::ShapeRef.new(shape: RenameColumnOperation, location_name: "RenameColumnOperation"))
    TransformOperation.add_member(:cast_column_type_operation, Shapes::ShapeRef.new(shape: CastColumnTypeOperation, location_name: "CastColumnTypeOperation"))
    TransformOperation.add_member(:tag_column_operation, Shapes::ShapeRef.new(shape: TagColumnOperation, location_name: "TagColumnOperation"))
    TransformOperation.struct_class = Types::TransformOperation

    TransformOperationList.member = Shapes::ShapeRef.new(shape: TransformOperation)

    TwitterParameters.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location_name: "Query"))
    TwitterParameters.add_member(:max_rows, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "MaxRows"))
    TwitterParameters.struct_class = Types::TwitterParameters

    UIColorPalette.add_member(:primary_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "PrimaryForeground"))
    UIColorPalette.add_member(:primary_background, Shapes::ShapeRef.new(shape: HexColor, location_name: "PrimaryBackground"))
    UIColorPalette.add_member(:secondary_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "SecondaryForeground"))
    UIColorPalette.add_member(:secondary_background, Shapes::ShapeRef.new(shape: HexColor, location_name: "SecondaryBackground"))
    UIColorPalette.add_member(:accent, Shapes::ShapeRef.new(shape: HexColor, location_name: "Accent"))
    UIColorPalette.add_member(:accent_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "AccentForeground"))
    UIColorPalette.add_member(:danger, Shapes::ShapeRef.new(shape: HexColor, location_name: "Danger"))
    UIColorPalette.add_member(:danger_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "DangerForeground"))
    UIColorPalette.add_member(:warning, Shapes::ShapeRef.new(shape: HexColor, location_name: "Warning"))
    UIColorPalette.add_member(:warning_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "WarningForeground"))
    UIColorPalette.add_member(:success, Shapes::ShapeRef.new(shape: HexColor, location_name: "Success"))
    UIColorPalette.add_member(:success_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "SuccessForeground"))
    UIColorPalette.add_member(:dimension, Shapes::ShapeRef.new(shape: HexColor, location_name: "Dimension"))
    UIColorPalette.add_member(:dimension_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "DimensionForeground"))
    UIColorPalette.add_member(:measure, Shapes::ShapeRef.new(shape: HexColor, location_name: "Measure"))
    UIColorPalette.add_member(:measure_foreground, Shapes::ShapeRef.new(shape: HexColor, location_name: "MeasureForeground"))
    UIColorPalette.struct_class = Types::UIColorPalette

    UnsupportedUserEditionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedUserEditionException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnsupportedUserEditionException.struct_class = Types::UnsupportedUserEditionException

    UntagResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    UntagResourceRequest.add_member(:tag_keys, Shapes::ShapeRef.new(shape: TagKeyList, required: true, location: "querystring", location_name: "keys"))
    UntagResourceRequest.struct_class = Types::UntagResourceRequest

    UntagResourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UntagResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UntagResourceResponse.struct_class = Types::UntagResourceResponse

    UpdateAccountCustomizationRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAccountCustomizationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    UpdateAccountCustomizationRequest.add_member(:account_customization, Shapes::ShapeRef.new(shape: AccountCustomization, required: true, location_name: "AccountCustomization"))
    UpdateAccountCustomizationRequest.struct_class = Types::UpdateAccountCustomizationRequest

    UpdateAccountCustomizationResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateAccountCustomizationResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    UpdateAccountCustomizationResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    UpdateAccountCustomizationResponse.add_member(:account_customization, Shapes::ShapeRef.new(shape: AccountCustomization, location_name: "AccountCustomization"))
    UpdateAccountCustomizationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAccountCustomizationResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAccountCustomizationResponse.struct_class = Types::UpdateAccountCustomizationResponse

    UpdateAccountSettingsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAccountSettingsRequest.add_member(:default_namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "DefaultNamespace"))
    UpdateAccountSettingsRequest.add_member(:notification_email, Shapes::ShapeRef.new(shape: String, location_name: "NotificationEmail"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAccountSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateAnalysisPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAnalysisPermissionsRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    UpdateAnalysisPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateAnalysisPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateAnalysisPermissionsRequest.struct_class = Types::UpdateAnalysisPermissionsRequest

    UpdateAnalysisPermissionsResponse.add_member(:analysis_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnalysisArn"))
    UpdateAnalysisPermissionsResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    UpdateAnalysisPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateAnalysisPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAnalysisPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAnalysisPermissionsResponse.struct_class = Types::UpdateAnalysisPermissionsResponse

    UpdateAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    UpdateAnalysisRequest.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, required: true, location_name: "Name"))
    UpdateAnalysisRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateAnalysisRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: AnalysisSourceEntity, required: true, location_name: "SourceEntity"))
    UpdateAnalysisRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateAnalysisRequest.struct_class = Types::UpdateAnalysisRequest

    UpdateAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "AnalysisId"))
    UpdateAnalysisResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "UpdateStatus"))
    UpdateAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAnalysisResponse.struct_class = Types::UpdateAnalysisResponse

    UpdateDashboardPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardPermissionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateDashboardPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateDashboardPermissionsRequest.struct_class = Types::UpdateDashboardPermissionsRequest

    UpdateDashboardPermissionsResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    UpdateDashboardPermissionsResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    UpdateDashboardPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateDashboardPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDashboardPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDashboardPermissionsResponse.struct_class = Types::UpdateDashboardPermissionsResponse

    UpdateDashboardPublishedVersionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardPublishedVersionRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardPublishedVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    UpdateDashboardPublishedVersionRequest.struct_class = Types::UpdateDashboardPublishedVersionRequest

    UpdateDashboardPublishedVersionResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    UpdateDashboardPublishedVersionResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    UpdateDashboardPublishedVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDashboardPublishedVersionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDashboardPublishedVersionResponse.struct_class = Types::UpdateDashboardPublishedVersionResponse

    UpdateDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "Name"))
    UpdateDashboardRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: DashboardSourceEntity, required: true, location_name: "SourceEntity"))
    UpdateDashboardRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateDashboardRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateDashboardRequest.add_member(:dashboard_publish_options, Shapes::ShapeRef.new(shape: DashboardPublishOptions, location_name: "DashboardPublishOptions"))
    UpdateDashboardRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateDashboardRequest.struct_class = Types::UpdateDashboardRequest

    UpdateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateDashboardResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "DashboardId"))
    UpdateDashboardResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    UpdateDashboardResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location_name: "Status"))
    UpdateDashboardResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDashboardResponse.struct_class = Types::UpdateDashboardResponse

    UpdateDataSetPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDataSetPermissionsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    UpdateDataSetPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "GrantPermissions"))
    UpdateDataSetPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "RevokePermissions"))
    UpdateDataSetPermissionsRequest.struct_class = Types::UpdateDataSetPermissionsRequest

    UpdateDataSetPermissionsResponse.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataSetArn"))
    UpdateDataSetPermissionsResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    UpdateDataSetPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDataSetPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDataSetPermissionsResponse.struct_class = Types::UpdateDataSetPermissionsResponse

    UpdateDataSetRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDataSetRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    UpdateDataSetRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    UpdateDataSetRequest.add_member(:physical_table_map, Shapes::ShapeRef.new(shape: PhysicalTableMap, required: true, location_name: "PhysicalTableMap"))
    UpdateDataSetRequest.add_member(:logical_table_map, Shapes::ShapeRef.new(shape: LogicalTableMap, location_name: "LogicalTableMap"))
    UpdateDataSetRequest.add_member(:import_mode, Shapes::ShapeRef.new(shape: DataSetImportMode, required: true, location_name: "ImportMode"))
    UpdateDataSetRequest.add_member(:column_groups, Shapes::ShapeRef.new(shape: ColumnGroupList, location_name: "ColumnGroups"))
    UpdateDataSetRequest.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    UpdateDataSetRequest.struct_class = Types::UpdateDataSetRequest

    UpdateDataSetResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateDataSetResponse.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    UpdateDataSetResponse.add_member(:ingestion_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "IngestionArn"))
    UpdateDataSetResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "IngestionId"))
    UpdateDataSetResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDataSetResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDataSetResponse.struct_class = Types::UpdateDataSetResponse

    UpdateDataSourcePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDataSourcePermissionsRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSourceId"))
    UpdateDataSourcePermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "GrantPermissions"))
    UpdateDataSourcePermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "RevokePermissions"))
    UpdateDataSourcePermissionsRequest.struct_class = Types::UpdateDataSourcePermissionsRequest

    UpdateDataSourcePermissionsResponse.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataSourceArn"))
    UpdateDataSourcePermissionsResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    UpdateDataSourcePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDataSourcePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDataSourcePermissionsResponse.struct_class = Types::UpdateDataSourcePermissionsResponse

    UpdateDataSourceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDataSourceRequest.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSourceId"))
    UpdateDataSourceRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    UpdateDataSourceRequest.add_member(:data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParameters, location_name: "DataSourceParameters"))
    UpdateDataSourceRequest.add_member(:credentials, Shapes::ShapeRef.new(shape: DataSourceCredentials, location_name: "Credentials"))
    UpdateDataSourceRequest.add_member(:vpc_connection_properties, Shapes::ShapeRef.new(shape: VpcConnectionProperties, location_name: "VpcConnectionProperties"))
    UpdateDataSourceRequest.add_member(:ssl_properties, Shapes::ShapeRef.new(shape: SslProperties, location_name: "SslProperties"))
    UpdateDataSourceRequest.struct_class = Types::UpdateDataSourceRequest

    UpdateDataSourceResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateDataSourceResponse.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    UpdateDataSourceResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "UpdateStatus"))
    UpdateDataSourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDataSourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDataSourceResponse.struct_class = Types::UpdateDataSourceResponse

    UpdateGroupRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    UpdateGroupRequest.add_member(:description, Shapes::ShapeRef.new(shape: GroupDescription, location_name: "Description"))
    UpdateGroupRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateGroupRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateGroupRequest.struct_class = Types::UpdateGroupRequest

    UpdateGroupResponse.add_member(:group, Shapes::ShapeRef.new(shape: Group, location_name: "Group"))
    UpdateGroupResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateGroupResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateGroupResponse.struct_class = Types::UpdateGroupResponse

    UpdateIAMPolicyAssignmentRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateIAMPolicyAssignmentRequest.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, required: true, location: "uri", location_name: "AssignmentName"))
    UpdateIAMPolicyAssignmentRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateIAMPolicyAssignmentRequest.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    UpdateIAMPolicyAssignmentRequest.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    UpdateIAMPolicyAssignmentRequest.add_member(:identities, Shapes::ShapeRef.new(shape: IdentityMap, location_name: "Identities"))
    UpdateIAMPolicyAssignmentRequest.struct_class = Types::UpdateIAMPolicyAssignmentRequest

    UpdateIAMPolicyAssignmentResponse.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    UpdateIAMPolicyAssignmentResponse.add_member(:assignment_id, Shapes::ShapeRef.new(shape: String, location_name: "AssignmentId"))
    UpdateIAMPolicyAssignmentResponse.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    UpdateIAMPolicyAssignmentResponse.add_member(:identities, Shapes::ShapeRef.new(shape: IdentityMap, location_name: "Identities"))
    UpdateIAMPolicyAssignmentResponse.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location_name: "AssignmentStatus"))
    UpdateIAMPolicyAssignmentResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateIAMPolicyAssignmentResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateIAMPolicyAssignmentResponse.struct_class = Types::UpdateIAMPolicyAssignmentResponse

    UpdateResourcePermissionList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    UpdateTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    UpdateTemplateAliasRequest.add_member(:template_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "TemplateVersionNumber"))
    UpdateTemplateAliasRequest.struct_class = Types::UpdateTemplateAliasRequest

    UpdateTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    UpdateTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplateAliasResponse.struct_class = Types::UpdateTemplateAliasResponse

    UpdateTemplatePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplatePermissionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplatePermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateTemplatePermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateTemplatePermissionsRequest.struct_class = Types::UpdateTemplatePermissionsRequest

    UpdateTemplatePermissionsResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    UpdateTemplatePermissionsResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TemplateArn"))
    UpdateTemplatePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateTemplatePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplatePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplatePermissionsResponse.struct_class = Types::UpdateTemplatePermissionsResponse

    UpdateTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplateRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: TemplateSourceEntity, required: true, location_name: "SourceEntity"))
    UpdateTemplateRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    UpdateTemplateRequest.struct_class = Types::UpdateTemplateRequest

    UpdateTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "TemplateId"))
    UpdateTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateTemplateResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateTemplateResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    UpdateTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplateResponse.struct_class = Types::UpdateTemplateResponse

    UpdateThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    UpdateThemeAliasRequest.add_member(:theme_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "ThemeVersionNumber"))
    UpdateThemeAliasRequest.struct_class = Types::UpdateThemeAliasRequest

    UpdateThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    UpdateThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemeAliasResponse.struct_class = Types::UpdateThemeAliasResponse

    UpdateThemePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemePermissionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemePermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateThemePermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateThemePermissionsRequest.struct_class = Types::UpdateThemePermissionsRequest

    UpdateThemePermissionsResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    UpdateThemePermissionsResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateThemePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateThemePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemePermissionsResponse.struct_class = Types::UpdateThemePermissionsResponse

    UpdateThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    UpdateThemeRequest.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location_name: "BaseThemeId"))
    UpdateThemeRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateThemeRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ThemeConfiguration, location_name: "Configuration"))
    UpdateThemeRequest.struct_class = Types::UpdateThemeRequest

    UpdateThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "ThemeId"))
    UpdateThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateThemeResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateThemeResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    UpdateThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemeResponse.struct_class = Types::UpdateThemeResponse

    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    UpdateUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    UpdateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "Role"))
    UpdateUserRequest.add_member(:custom_permissions_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "CustomPermissionsName"))
    UpdateUserRequest.add_member(:unapply_custom_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "UnapplyCustomPermissions"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UploadSettings.add_member(:format, Shapes::ShapeRef.new(shape: FileFormat, location_name: "Format"))
    UploadSettings.add_member(:start_from_row, Shapes::ShapeRef.new(shape: PositiveInteger, location_name: "StartFromRow", metadata: {"box"=>true}))
    UploadSettings.add_member(:contains_header, Shapes::ShapeRef.new(shape: Boolean, location_name: "ContainsHeader", metadata: {"box"=>true}))
    UploadSettings.add_member(:text_qualifier, Shapes::ShapeRef.new(shape: TextQualifier, location_name: "TextQualifier"))
    UploadSettings.add_member(:delimiter, Shapes::ShapeRef.new(shape: Delimiter, location_name: "Delimiter"))
    UploadSettings.struct_class = Types::UploadSettings

    User.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    User.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    User.add_member(:email, Shapes::ShapeRef.new(shape: String, location_name: "Email"))
    User.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, location_name: "Role"))
    User.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, location_name: "IdentityType"))
    User.add_member(:active, Shapes::ShapeRef.new(shape: Boolean, location_name: "Active"))
    User.add_member(:principal_id, Shapes::ShapeRef.new(shape: String, location_name: "PrincipalId"))
    User.add_member(:custom_permissions_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "CustomPermissionsName"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)

    VpcConnectionProperties.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "VpcConnectionArn"))
    VpcConnectionProperties.struct_class = Types::VpcConnectionProperties


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-01"

      api.metadata = {
        "apiVersion" => "2018-04-01",
        "endpointPrefix" => "quicksight",
        "jsonVersion" => "1.0",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon QuickSight",
        "serviceId" => "QuickSight",
        "signatureVersion" => "v4",
        "uid" => "quicksight-2018-04-01",
      }

      api.add_operation(:cancel_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CancelIngestion"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
        o.input = Shapes::ShapeRef.new(shape: CancelIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: CancelIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_account_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountCustomization"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/customizations"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountCustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountCustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: CreateAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDashboard"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
        o.input = Shapes::ShapeRef.new(shape: CreateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSet"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateDataSource"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources"
        o.input = Shapes::ShapeRef.new(shape: CreateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroup"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateGroupMembership"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
        o.input = Shapes::ShapeRef.new(shape: CreateGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_iam_policy_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIAMPolicyAssignment"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/"
        o.input = Shapes::ShapeRef.new(shape: CreateIAMPolicyAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIAMPolicyAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdatingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateIngestion"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
        o.input = Shapes::ShapeRef.new(shape: CreateIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateNamespace"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}"
        o.input = Shapes::ShapeRef.new(shape: CreateNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplate"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_template_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTemplateAlias"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: CreateTemplateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTemplateAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTheme"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}"
        o.input = Shapes::ShapeRef.new(shape: CreateThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_theme_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateThemeAlias"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: CreateThemeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateThemeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_account_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountCustomization"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/customizations"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountCustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountCustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAnalysis"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDashboard"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSet"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSource"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroup"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteGroupMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteGroupMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_iam_policy_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteIAMPolicyAssignment"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespace/{Namespace}/iam-policy-assignments/{AssignmentName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteIAMPolicyAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteIAMPolicyAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdatingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteNamespace"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}"
        o.input = Shapes::ShapeRef.new(shape: DeleteNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplate"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_template_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTemplateAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTemplateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTemplateAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTheme"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_theme_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteThemeAlias"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteThemeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteThemeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUser"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_user_by_principal_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteUserByPrincipalId"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/user-principals/{PrincipalId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteUserByPrincipalIdRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteUserByPrincipalIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_account_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountCustomization"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/customizations"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountCustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountCustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountSettings"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnalysis"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_analysis_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnalysisPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnalysisPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnalysisPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDashboard"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_dashboard_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDashboardPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeDashboardPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDashboardPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSet"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_data_set_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSetPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSetPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSetPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSource"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_data_source_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSourcePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSourcePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSourcePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroup"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_iam_policy_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIAMPolicyAssignment"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeIAMPolicyAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIAMPolicyAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_ingestion, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIngestion"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions/{IngestionId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeIngestionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIngestionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_namespace, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeNamespace"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}"
        o.input = Shapes::ShapeRef.new(shape: DescribeNamespaceRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeNamespaceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:describe_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTemplate"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_template_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTemplateAlias"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTemplateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTemplateAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_template_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTemplatePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeTemplatePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTemplatePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTheme"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_theme_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThemeAlias"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeThemeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThemeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_theme_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeThemePermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeThemePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeThemePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeUserRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:get_dashboard_embed_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetDashboardEmbedUrl"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/embed-url"
        o.input = Shapes::ShapeRef.new(shape: GetDashboardEmbedUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetDashboardEmbedUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: DomainNotWhitelistedException)
        o.errors << Shapes::ShapeRef.new(shape: QuickSightUserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: IdentityTypeNotSupportedException)
        o.errors << Shapes::ShapeRef.new(shape: SessionLifetimeInMinutesInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:get_session_embed_url, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetSessionEmbedUrl"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/session-embed-url"
        o.input = Shapes::ShapeRef.new(shape: GetSessionEmbedUrlRequest)
        o.output = Shapes::ShapeRef.new(shape: GetSessionEmbedUrlResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: QuickSightUserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SessionLifetimeInMinutesInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_analyses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAnalyses"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses"
        o.input = Shapes::ShapeRef.new(shape: ListAnalysesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAnalysesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dashboard_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboardVersions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListDashboardVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDashboards"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards"
        o.input = Shapes::ShapeRef.new(shape: ListDashboardsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDashboardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSets"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets"
        o.input = Shapes::ShapeRef.new(shape: ListDataSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListDataSources"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources"
        o.input = Shapes::ShapeRef.new(shape: ListDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_group_memberships, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroupMemberships"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members"
        o.input = Shapes::ShapeRef.new(shape: ListGroupMembershipsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupMembershipsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListGroups"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_iam_policy_assignments, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIAMPolicyAssignments"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments"
        o.input = Shapes::ShapeRef.new(shape: ListIAMPolicyAssignmentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIAMPolicyAssignmentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_iam_policy_assignments_for_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIAMPolicyAssignmentsForUser"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/iam-policy-assignments"
        o.input = Shapes::ShapeRef.new(shape: ListIAMPolicyAssignmentsForUserRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIAMPolicyAssignmentsForUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdatingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_ingestions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListIngestions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/ingestions"
        o.input = Shapes::ShapeRef.new(shape: ListIngestionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListIngestionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_namespaces, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListNamespaces"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces"
        o.input = Shapes::ShapeRef.new(shape: ListNamespacesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListNamespacesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_tags_for_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTagsForResource"
        o.http_method = "GET"
        o.http_request_uri = "/resources/{ResourceArn}/tags"
        o.input = Shapes::ShapeRef.new(shape: ListTagsForResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTagsForResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_template_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateAliases"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_template_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplateVersions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListTemplateVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplateVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_templates, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTemplates"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates"
        o.input = Shapes::ShapeRef.new(shape: ListTemplatesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTemplatesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_theme_aliases, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThemeAliases"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases"
        o.input = Shapes::ShapeRef.new(shape: ListThemeAliasesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThemeAliasesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_theme_versions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThemeVersions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/versions"
        o.input = Shapes::ShapeRef.new(shape: ListThemeVersionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThemeVersionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_themes, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListThemes"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes"
        o.input = Shapes::ShapeRef.new(shape: ListThemesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListThemesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_user_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUserGroups"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}/groups"
        o.input = Shapes::ShapeRef.new(shape: ListUserGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUserGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:list_users, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListUsers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
        o.input = Shapes::ShapeRef.new(shape: ListUsersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListUsersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:register_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RegisterUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users"
        o.input = Shapes::ShapeRef.new(shape: RegisterUserRequest)
        o.output = Shapes::ShapeRef.new(shape: RegisterUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:restore_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "RestoreAnalysis"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/restore/analyses/{AnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: RestoreAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: RestoreAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:search_analyses, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchAnalyses"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/search/analyses"
        o.input = Shapes::ShapeRef.new(shape: SearchAnalysesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchAnalysesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_dashboards, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDashboards"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/search/dashboards"
        o.input = Shapes::ShapeRef.new(shape: SearchDashboardsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDashboardsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:tag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "TagResource"
        o.http_method = "POST"
        o.http_request_uri = "/resources/{ResourceArn}/tags"
        o.input = Shapes::ShapeRef.new(shape: TagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: TagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:untag_resource, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UntagResource"
        o.http_method = "DELETE"
        o.http_request_uri = "/resources/{ResourceArn}/tags"
        o.input = Shapes::ShapeRef.new(shape: UntagResourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UntagResourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_account_customization, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountCustomization"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/customizations"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountCustomizationRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountCustomizationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:update_account_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAccountSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/settings"
        o.input = Shapes::ShapeRef.new(shape: UpdateAccountSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAccountSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:update_analysis, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnalysis"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnalysisRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnalysisResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_analysis_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateAnalysisPermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateAnalysisPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateAnalysisPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_dashboard, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboard"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_dashboard_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboardPermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_dashboard_published_version, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDashboardPublishedVersion"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/versions/{VersionNumber}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDashboardPublishedVersionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDashboardPublishedVersionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_data_set, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSet"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSetRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSetResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_data_set_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSetPermissions"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSetPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSetPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_data_source, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSource"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourceRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourceResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_data_source_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateDataSourcePermissions"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sources/{DataSourceId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateDataSourcePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateDataSourcePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_group, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateGroup"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateGroupRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateGroupResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:update_iam_policy_assignment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIAMPolicyAssignment"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/iam-policy-assignments/{AssignmentName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateIAMPolicyAssignmentRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIAMPolicyAssignmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConcurrentUpdatingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_template, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplate"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_template_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplateAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplateAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplateAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_template_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTemplatePermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateTemplatePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTemplatePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_theme, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTheme"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThemeRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThemeResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_theme_alias, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThemeAlias"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/aliases/{AliasName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateThemeAliasRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThemeAliasResponse)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_theme_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateThemePermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/themes/{ThemeId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateThemePermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateThemePermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateUser"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/users/{UserName}"
        o.input = Shapes::ShapeRef.new(shape: UpdateUserRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)
    end

  end
end
